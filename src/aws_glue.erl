%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Glue
%%
%% Defines the public endpoint for the Glue service.
-module(aws_glue).

-export([batch_create_partition/2,
         batch_create_partition/3,
         batch_delete_connection/2,
         batch_delete_connection/3,
         batch_delete_partition/2,
         batch_delete_partition/3,
         batch_delete_table/2,
         batch_delete_table/3,
         batch_delete_table_version/2,
         batch_delete_table_version/3,
         batch_get_blueprints/2,
         batch_get_blueprints/3,
         batch_get_crawlers/2,
         batch_get_crawlers/3,
         batch_get_custom_entity_types/2,
         batch_get_custom_entity_types/3,
         batch_get_data_quality_result/2,
         batch_get_data_quality_result/3,
         batch_get_dev_endpoints/2,
         batch_get_dev_endpoints/3,
         batch_get_jobs/2,
         batch_get_jobs/3,
         batch_get_partition/2,
         batch_get_partition/3,
         batch_get_table_optimizer/2,
         batch_get_table_optimizer/3,
         batch_get_triggers/2,
         batch_get_triggers/3,
         batch_get_workflows/2,
         batch_get_workflows/3,
         batch_put_data_quality_statistic_annotation/2,
         batch_put_data_quality_statistic_annotation/3,
         batch_stop_job_run/2,
         batch_stop_job_run/3,
         batch_update_partition/2,
         batch_update_partition/3,
         cancel_data_quality_rule_recommendation_run/2,
         cancel_data_quality_rule_recommendation_run/3,
         cancel_data_quality_ruleset_evaluation_run/2,
         cancel_data_quality_ruleset_evaluation_run/3,
         cancel_ml_task_run/2,
         cancel_ml_task_run/3,
         cancel_statement/2,
         cancel_statement/3,
         check_schema_version_validity/2,
         check_schema_version_validity/3,
         create_blueprint/2,
         create_blueprint/3,
         create_catalog/2,
         create_catalog/3,
         create_classifier/2,
         create_classifier/3,
         create_column_statistics_task_settings/2,
         create_column_statistics_task_settings/3,
         create_connection/2,
         create_connection/3,
         create_crawler/2,
         create_crawler/3,
         create_custom_entity_type/2,
         create_custom_entity_type/3,
         create_data_quality_ruleset/2,
         create_data_quality_ruleset/3,
         create_database/2,
         create_database/3,
         create_dev_endpoint/2,
         create_dev_endpoint/3,
         create_glue_identity_center_configuration/2,
         create_glue_identity_center_configuration/3,
         create_integration/2,
         create_integration/3,
         create_integration_resource_property/2,
         create_integration_resource_property/3,
         create_integration_table_properties/2,
         create_integration_table_properties/3,
         create_job/2,
         create_job/3,
         create_ml_transform/2,
         create_ml_transform/3,
         create_partition/2,
         create_partition/3,
         create_partition_index/2,
         create_partition_index/3,
         create_registry/2,
         create_registry/3,
         create_schema/2,
         create_schema/3,
         create_script/2,
         create_script/3,
         create_security_configuration/2,
         create_security_configuration/3,
         create_session/2,
         create_session/3,
         create_table/2,
         create_table/3,
         create_table_optimizer/2,
         create_table_optimizer/3,
         create_trigger/2,
         create_trigger/3,
         create_usage_profile/2,
         create_usage_profile/3,
         create_user_defined_function/2,
         create_user_defined_function/3,
         create_workflow/2,
         create_workflow/3,
         delete_blueprint/2,
         delete_blueprint/3,
         delete_catalog/2,
         delete_catalog/3,
         delete_classifier/2,
         delete_classifier/3,
         delete_column_statistics_for_partition/2,
         delete_column_statistics_for_partition/3,
         delete_column_statistics_for_table/2,
         delete_column_statistics_for_table/3,
         delete_column_statistics_task_settings/2,
         delete_column_statistics_task_settings/3,
         delete_connection/2,
         delete_connection/3,
         delete_crawler/2,
         delete_crawler/3,
         delete_custom_entity_type/2,
         delete_custom_entity_type/3,
         delete_data_quality_ruleset/2,
         delete_data_quality_ruleset/3,
         delete_database/2,
         delete_database/3,
         delete_dev_endpoint/2,
         delete_dev_endpoint/3,
         delete_glue_identity_center_configuration/2,
         delete_glue_identity_center_configuration/3,
         delete_integration/2,
         delete_integration/3,
         delete_integration_table_properties/2,
         delete_integration_table_properties/3,
         delete_job/2,
         delete_job/3,
         delete_ml_transform/2,
         delete_ml_transform/3,
         delete_partition/2,
         delete_partition/3,
         delete_partition_index/2,
         delete_partition_index/3,
         delete_registry/2,
         delete_registry/3,
         delete_resource_policy/2,
         delete_resource_policy/3,
         delete_schema/2,
         delete_schema/3,
         delete_schema_versions/2,
         delete_schema_versions/3,
         delete_security_configuration/2,
         delete_security_configuration/3,
         delete_session/2,
         delete_session/3,
         delete_table/2,
         delete_table/3,
         delete_table_optimizer/2,
         delete_table_optimizer/3,
         delete_table_version/2,
         delete_table_version/3,
         delete_trigger/2,
         delete_trigger/3,
         delete_usage_profile/2,
         delete_usage_profile/3,
         delete_user_defined_function/2,
         delete_user_defined_function/3,
         delete_workflow/2,
         delete_workflow/3,
         describe_connection_type/2,
         describe_connection_type/3,
         describe_entity/2,
         describe_entity/3,
         describe_inbound_integrations/2,
         describe_inbound_integrations/3,
         describe_integrations/2,
         describe_integrations/3,
         get_blueprint/2,
         get_blueprint/3,
         get_blueprint_run/2,
         get_blueprint_run/3,
         get_blueprint_runs/2,
         get_blueprint_runs/3,
         get_catalog/2,
         get_catalog/3,
         get_catalog_import_status/2,
         get_catalog_import_status/3,
         get_catalogs/2,
         get_catalogs/3,
         get_classifier/2,
         get_classifier/3,
         get_classifiers/2,
         get_classifiers/3,
         get_column_statistics_for_partition/2,
         get_column_statistics_for_partition/3,
         get_column_statistics_for_table/2,
         get_column_statistics_for_table/3,
         get_column_statistics_task_run/2,
         get_column_statistics_task_run/3,
         get_column_statistics_task_runs/2,
         get_column_statistics_task_runs/3,
         get_column_statistics_task_settings/2,
         get_column_statistics_task_settings/3,
         get_connection/2,
         get_connection/3,
         get_connections/2,
         get_connections/3,
         get_crawler/2,
         get_crawler/3,
         get_crawler_metrics/2,
         get_crawler_metrics/3,
         get_crawlers/2,
         get_crawlers/3,
         get_custom_entity_type/2,
         get_custom_entity_type/3,
         get_data_catalog_encryption_settings/2,
         get_data_catalog_encryption_settings/3,
         get_data_quality_model/2,
         get_data_quality_model/3,
         get_data_quality_model_result/2,
         get_data_quality_model_result/3,
         get_data_quality_result/2,
         get_data_quality_result/3,
         get_data_quality_rule_recommendation_run/2,
         get_data_quality_rule_recommendation_run/3,
         get_data_quality_ruleset/2,
         get_data_quality_ruleset/3,
         get_data_quality_ruleset_evaluation_run/2,
         get_data_quality_ruleset_evaluation_run/3,
         get_database/2,
         get_database/3,
         get_databases/2,
         get_databases/3,
         get_dataflow_graph/2,
         get_dataflow_graph/3,
         get_dev_endpoint/2,
         get_dev_endpoint/3,
         get_dev_endpoints/2,
         get_dev_endpoints/3,
         get_entity_records/2,
         get_entity_records/3,
         get_glue_identity_center_configuration/2,
         get_glue_identity_center_configuration/3,
         get_integration_resource_property/2,
         get_integration_resource_property/3,
         get_integration_table_properties/2,
         get_integration_table_properties/3,
         get_job/2,
         get_job/3,
         get_job_bookmark/2,
         get_job_bookmark/3,
         get_job_run/2,
         get_job_run/3,
         get_job_runs/2,
         get_job_runs/3,
         get_jobs/2,
         get_jobs/3,
         get_mapping/2,
         get_mapping/3,
         get_ml_task_run/2,
         get_ml_task_run/3,
         get_ml_task_runs/2,
         get_ml_task_runs/3,
         get_ml_transform/2,
         get_ml_transform/3,
         get_ml_transforms/2,
         get_ml_transforms/3,
         get_partition/2,
         get_partition/3,
         get_partition_indexes/2,
         get_partition_indexes/3,
         get_partitions/2,
         get_partitions/3,
         get_plan/2,
         get_plan/3,
         get_registry/2,
         get_registry/3,
         get_resource_policies/2,
         get_resource_policies/3,
         get_resource_policy/2,
         get_resource_policy/3,
         get_schema/2,
         get_schema/3,
         get_schema_by_definition/2,
         get_schema_by_definition/3,
         get_schema_version/2,
         get_schema_version/3,
         get_schema_versions_diff/2,
         get_schema_versions_diff/3,
         get_security_configuration/2,
         get_security_configuration/3,
         get_security_configurations/2,
         get_security_configurations/3,
         get_session/2,
         get_session/3,
         get_statement/2,
         get_statement/3,
         get_table/2,
         get_table/3,
         get_table_optimizer/2,
         get_table_optimizer/3,
         get_table_version/2,
         get_table_version/3,
         get_table_versions/2,
         get_table_versions/3,
         get_tables/2,
         get_tables/3,
         get_tags/2,
         get_tags/3,
         get_trigger/2,
         get_trigger/3,
         get_triggers/2,
         get_triggers/3,
         get_unfiltered_partition_metadata/2,
         get_unfiltered_partition_metadata/3,
         get_unfiltered_partitions_metadata/2,
         get_unfiltered_partitions_metadata/3,
         get_unfiltered_table_metadata/2,
         get_unfiltered_table_metadata/3,
         get_usage_profile/2,
         get_usage_profile/3,
         get_user_defined_function/2,
         get_user_defined_function/3,
         get_user_defined_functions/2,
         get_user_defined_functions/3,
         get_workflow/2,
         get_workflow/3,
         get_workflow_run/2,
         get_workflow_run/3,
         get_workflow_run_properties/2,
         get_workflow_run_properties/3,
         get_workflow_runs/2,
         get_workflow_runs/3,
         import_catalog_to_glue/2,
         import_catalog_to_glue/3,
         list_blueprints/2,
         list_blueprints/3,
         list_column_statistics_task_runs/2,
         list_column_statistics_task_runs/3,
         list_connection_types/2,
         list_connection_types/3,
         list_crawlers/2,
         list_crawlers/3,
         list_crawls/2,
         list_crawls/3,
         list_custom_entity_types/2,
         list_custom_entity_types/3,
         list_data_quality_results/2,
         list_data_quality_results/3,
         list_data_quality_rule_recommendation_runs/2,
         list_data_quality_rule_recommendation_runs/3,
         list_data_quality_ruleset_evaluation_runs/2,
         list_data_quality_ruleset_evaluation_runs/3,
         list_data_quality_rulesets/2,
         list_data_quality_rulesets/3,
         list_data_quality_statistic_annotations/2,
         list_data_quality_statistic_annotations/3,
         list_data_quality_statistics/2,
         list_data_quality_statistics/3,
         list_dev_endpoints/2,
         list_dev_endpoints/3,
         list_entities/2,
         list_entities/3,
         list_jobs/2,
         list_jobs/3,
         list_ml_transforms/2,
         list_ml_transforms/3,
         list_registries/2,
         list_registries/3,
         list_schema_versions/2,
         list_schema_versions/3,
         list_schemas/2,
         list_schemas/3,
         list_sessions/2,
         list_sessions/3,
         list_statements/2,
         list_statements/3,
         list_table_optimizer_runs/2,
         list_table_optimizer_runs/3,
         list_triggers/2,
         list_triggers/3,
         list_usage_profiles/2,
         list_usage_profiles/3,
         list_workflows/2,
         list_workflows/3,
         modify_integration/2,
         modify_integration/3,
         put_data_catalog_encryption_settings/2,
         put_data_catalog_encryption_settings/3,
         put_data_quality_profile_annotation/2,
         put_data_quality_profile_annotation/3,
         put_resource_policy/2,
         put_resource_policy/3,
         put_schema_version_metadata/2,
         put_schema_version_metadata/3,
         put_workflow_run_properties/2,
         put_workflow_run_properties/3,
         query_schema_version_metadata/2,
         query_schema_version_metadata/3,
         register_schema_version/2,
         register_schema_version/3,
         remove_schema_version_metadata/2,
         remove_schema_version_metadata/3,
         reset_job_bookmark/2,
         reset_job_bookmark/3,
         resume_workflow_run/2,
         resume_workflow_run/3,
         run_statement/2,
         run_statement/3,
         search_tables/2,
         search_tables/3,
         start_blueprint_run/2,
         start_blueprint_run/3,
         start_column_statistics_task_run/2,
         start_column_statistics_task_run/3,
         start_column_statistics_task_run_schedule/2,
         start_column_statistics_task_run_schedule/3,
         start_crawler/2,
         start_crawler/3,
         start_crawler_schedule/2,
         start_crawler_schedule/3,
         start_data_quality_rule_recommendation_run/2,
         start_data_quality_rule_recommendation_run/3,
         start_data_quality_ruleset_evaluation_run/2,
         start_data_quality_ruleset_evaluation_run/3,
         start_export_labels_task_run/2,
         start_export_labels_task_run/3,
         start_import_labels_task_run/2,
         start_import_labels_task_run/3,
         start_job_run/2,
         start_job_run/3,
         start_ml_evaluation_task_run/2,
         start_ml_evaluation_task_run/3,
         start_ml_labeling_set_generation_task_run/2,
         start_ml_labeling_set_generation_task_run/3,
         start_trigger/2,
         start_trigger/3,
         start_workflow_run/2,
         start_workflow_run/3,
         stop_column_statistics_task_run/2,
         stop_column_statistics_task_run/3,
         stop_column_statistics_task_run_schedule/2,
         stop_column_statistics_task_run_schedule/3,
         stop_crawler/2,
         stop_crawler/3,
         stop_crawler_schedule/2,
         stop_crawler_schedule/3,
         stop_session/2,
         stop_session/3,
         stop_trigger/2,
         stop_trigger/3,
         stop_workflow_run/2,
         stop_workflow_run/3,
         tag_resource/2,
         tag_resource/3,
         test_connection/2,
         test_connection/3,
         untag_resource/2,
         untag_resource/3,
         update_blueprint/2,
         update_blueprint/3,
         update_catalog/2,
         update_catalog/3,
         update_classifier/2,
         update_classifier/3,
         update_column_statistics_for_partition/2,
         update_column_statistics_for_partition/3,
         update_column_statistics_for_table/2,
         update_column_statistics_for_table/3,
         update_column_statistics_task_settings/2,
         update_column_statistics_task_settings/3,
         update_connection/2,
         update_connection/3,
         update_crawler/2,
         update_crawler/3,
         update_crawler_schedule/2,
         update_crawler_schedule/3,
         update_data_quality_ruleset/2,
         update_data_quality_ruleset/3,
         update_database/2,
         update_database/3,
         update_dev_endpoint/2,
         update_dev_endpoint/3,
         update_glue_identity_center_configuration/2,
         update_glue_identity_center_configuration/3,
         update_integration_resource_property/2,
         update_integration_resource_property/3,
         update_integration_table_properties/2,
         update_integration_table_properties/3,
         update_job/2,
         update_job/3,
         update_job_from_source_control/2,
         update_job_from_source_control/3,
         update_ml_transform/2,
         update_ml_transform/3,
         update_partition/2,
         update_partition/3,
         update_registry/2,
         update_registry/3,
         update_schema/2,
         update_schema/3,
         update_source_control_from_job/2,
         update_source_control_from_job/3,
         update_table/2,
         update_table/3,
         update_table_optimizer/2,
         update_table_optimizer/3,
         update_trigger/2,
         update_trigger/3,
         update_usage_profile/2,
         update_usage_profile/3,
         update_user_defined_function/2,
         update_user_defined_function/3,
         update_workflow/2,
         update_workflow/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% decimal_number() :: #{
%%   <<"Scale">> => integer(),
%%   <<"UnscaledValue">> => binary()
%% }
-type decimal_number() :: #{binary() => any()}.

%% Example:
%% get_catalog_request() :: #{
%%   <<"CatalogId">> := string()
%% }
-type get_catalog_request() :: #{binary() => any()}.

%% Example:
%% update_ml_transform_response() :: #{
%%   <<"TransformId">> => string()
%% }
-type update_ml_transform_response() :: #{binary() => any()}.

%% Example:
%% start_crawler_request() :: #{
%%   <<"Name">> := string()
%% }
-type start_crawler_request() :: #{binary() => any()}.

%% Example:
%% delete_catalog_response() :: #{

%% }
-type delete_catalog_response() :: #{binary() => any()}.

%% Example:
%% evaluate_data_quality_multi_frame() :: #{
%%   <<"AdditionalDataSources">> => map(),
%%   <<"AdditionalOptions">> => map(),
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"PublishingOptions">> => d_q_results_publishing_options(),
%%   <<"Ruleset">> => string(),
%%   <<"StopJobOnFailureOptions">> => d_q_stop_job_on_failure_options()
%% }
-type evaluate_data_quality_multi_frame() :: #{binary() => any()}.

%% Example:
%% get_crawler_response() :: #{
%%   <<"Crawler">> => crawler()
%% }
-type get_crawler_response() :: #{binary() => any()}.

%% Example:
%% task_run_sort_criteria() :: #{
%%   <<"Column">> => list(any()),
%%   <<"SortDirection">> => list(any())
%% }
-type task_run_sort_criteria() :: #{binary() => any()}.

%% Example:
%% get_registry_input() :: #{
%%   <<"RegistryId">> := registry_id()
%% }
-type get_registry_input() :: #{binary() => any()}.

%% Example:
%% get_connection_request() :: #{
%%   <<"ApplyOverrideForComputeEnvironment">> => list(any()),
%%   <<"CatalogId">> => string(),
%%   <<"HidePassword">> => boolean(),
%%   <<"Name">> := string()
%% }
-type get_connection_request() :: #{binary() => any()}.

%% Example:
%% user_defined_function() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"ClassName">> => string(),
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"DatabaseName">> => string(),
%%   <<"FunctionName">> => string(),
%%   <<"OwnerName">> => string(),
%%   <<"OwnerType">> => list(any()),
%%   <<"ResourceUris">> => list(resource_uri())
%% }
-type user_defined_function() :: #{binary() => any()}.

%% Example:
%% catalog_schema_change_policy() :: #{
%%   <<"EnableUpdateCatalog">> => boolean(),
%%   <<"UpdateBehavior">> => list(any())
%% }
-type catalog_schema_change_policy() :: #{binary() => any()}.

%% Example:
%% integration_config() :: #{
%%   <<"ContinuousSync">> => boolean(),
%%   <<"RefreshInterval">> => string(),
%%   <<"SourceProperties">> => map()
%% }
-type integration_config() :: #{binary() => any()}.

%% Example:
%% get_custom_entity_type_response() :: #{
%%   <<"ContextWords">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"RegexString">> => string()
%% }
-type get_custom_entity_type_response() :: #{binary() => any()}.

%% Example:
%% create_integration_table_properties_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"SourceTableConfig">> => source_table_config(),
%%   <<"TableName">> := string(),
%%   <<"TargetTableConfig">> => target_table_config()
%% }
-type create_integration_table_properties_request() :: #{binary() => any()}.

%% Example:
%% statistic_summary() :: #{
%%   <<"ColumnsReferenced">> => list(string()),
%%   <<"DoubleValue">> => float(),
%%   <<"EvaluationLevel">> => list(any()),
%%   <<"InclusionAnnotation">> => timestamped_inclusion_annotation(),
%%   <<"ProfileId">> => string(),
%%   <<"RecordedOn">> => non_neg_integer(),
%%   <<"ReferencedDatasets">> => list(string()),
%%   <<"RunIdentifier">> => run_identifier(),
%%   <<"StatisticId">> => string(),
%%   <<"StatisticName">> => string(),
%%   <<"StatisticProperties">> => map()
%% }
-type statistic_summary() :: #{binary() => any()}.

%% Example:
%% list_data_quality_results_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Results">> => list(data_quality_result_description())
%% }
-type list_data_quality_results_response() :: #{binary() => any()}.

%% Example:
%% start_data_quality_rule_recommendation_run_response() :: #{
%%   <<"RunId">> => string()
%% }
-type start_data_quality_rule_recommendation_run_response() :: #{binary() => any()}.

%% Example:
%% s3_catalog_target() :: #{
%%   <<"AutoDataQuality">> => auto_data_quality(),
%%   <<"Database">> => string(),
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"PartitionKeys">> => list(list(string())()),
%%   <<"SchemaChangePolicy">> => catalog_schema_change_policy(),
%%   <<"Table">> => string()
%% }
-type s3_catalog_target() :: #{binary() => any()}.

%% Example:
%% update_catalog_request() :: #{
%%   <<"CatalogId">> := string(),
%%   <<"CatalogInput">> := catalog_input()
%% }
-type update_catalog_request() :: #{binary() => any()}.

%% Example:
%% get_integration_table_properties_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TableName">> := string()
%% }
-type get_integration_table_properties_request() :: #{binary() => any()}.

%% Example:
%% get_job_run_response() :: #{
%%   <<"JobRun">> => job_run()
%% }
-type get_job_run_response() :: #{binary() => any()}.

%% Example:
%% list_schemas_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"RegistryId">> => registry_id()
%% }
-type list_schemas_input() :: #{binary() => any()}.

%% Example:
%% update_iceberg_input() :: #{
%%   <<"UpdateIcebergTableInput">> => update_iceberg_table_input()
%% }
-type update_iceberg_input() :: #{binary() => any()}.

%% Example:
%% create_workflow_request() :: #{
%%   <<"DefaultRunProperties">> => map(),
%%   <<"Description">> => string(),
%%   <<"MaxConcurrentRuns">> => integer(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_workflow_request() :: #{binary() => any()}.

%% Example:
%% batch_get_crawlers_request() :: #{
%%   <<"CrawlerNames">> := list(string())
%% }
-type batch_get_crawlers_request() :: #{binary() => any()}.

%% Example:
%% put_schema_version_metadata_input() :: #{
%%   <<"MetadataKeyValue">> := metadata_key_value_pair(),
%%   <<"SchemaId">> => schema_id(),
%%   <<"SchemaVersionId">> => string(),
%%   <<"SchemaVersionNumber">> => schema_version_number()
%% }
-type put_schema_version_metadata_input() :: #{binary() => any()}.

%% Example:
%% get_schema_versions_diff_response() :: #{
%%   <<"Diff">> => string()
%% }
-type get_schema_versions_diff_response() :: #{binary() => any()}.

%% Example:
%% ser_de_info() :: #{
%%   <<"Name">> => string(),
%%   <<"Parameters">> => map(),
%%   <<"SerializationLibrary">> => string()
%% }
-type ser_de_info() :: #{binary() => any()}.

%% Example:
%% update_connection_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"ConnectionInput">> := connection_input(),
%%   <<"Name">> := string()
%% }
-type update_connection_request() :: #{binary() => any()}.

%% Example:
%% glue_policy() :: #{
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"PolicyHash">> => string(),
%%   <<"PolicyInJson">> => string(),
%%   <<"UpdateTime">> => non_neg_integer()
%% }
-type glue_policy() :: #{binary() => any()}.

%% Example:
%% retention_metrics() :: #{
%%   <<"IcebergMetrics">> => iceberg_retention_metrics()
%% }
-type retention_metrics() :: #{binary() => any()}.

%% Example:
%% cancel_statement_response() :: #{

%% }
-type cancel_statement_response() :: #{binary() => any()}.

%% Example:
%% data_quality_target_table() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"TableName">> => string()
%% }
-type data_quality_target_table() :: #{binary() => any()}.

%% Example:
%% update_column_statistics_for_partition_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"ColumnStatisticsList">> := list(column_statistics()),
%%   <<"DatabaseName">> := string(),
%%   <<"PartitionValues">> := list(string()),
%%   <<"TableName">> := string()
%% }
-type update_column_statistics_for_partition_request() :: #{binary() => any()}.

%% Example:
%% batch_get_triggers_response() :: #{
%%   <<"Triggers">> => list(trigger()),
%%   <<"TriggersNotFound">> => list(string())
%% }
-type batch_get_triggers_response() :: #{binary() => any()}.

%% Example:
%% list_entities_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"ConnectionName">> => string(),
%%   <<"DataStoreApiVersion">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"ParentEntityName">> => string()
%% }
-type list_entities_request() :: #{binary() => any()}.

%% Example:
%% recipe_reference() :: #{
%%   <<"RecipeArn">> => string(),
%%   <<"RecipeVersion">> => string()
%% }
-type recipe_reference() :: #{binary() => any()}.

%% Example:
%% target_processing_properties() :: #{
%%   <<"ConnectionName">> => string(),
%%   <<"EventBusArn">> => string(),
%%   <<"KmsArn">> => string(),
%%   <<"RoleArn">> => string()
%% }
-type target_processing_properties() :: #{binary() => any()}.

%% Example:
%% basic_catalog_target() :: #{
%%   <<"Database">> => string(),
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"PartitionKeys">> => list(list(string())()),
%%   <<"Table">> => string()
%% }
-type basic_catalog_target() :: #{binary() => any()}.

%% Example:
%% delete_column_statistics_task_settings_response() :: #{

%% }
-type delete_column_statistics_task_settings_response() :: #{binary() => any()}.

%% Example:
%% job_bookmarks_encryption() :: #{
%%   <<"JobBookmarksEncryptionMode">> => list(any()),
%%   <<"KmsKeyArn">> => string()
%% }
-type job_bookmarks_encryption() :: #{binary() => any()}.

%% Example:
%% delete_integration_response() :: #{
%%   <<"AdditionalEncryptionContext">> => map(),
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"DataFilter">> => string(),
%%   <<"Description">> => string(),
%%   <<"Errors">> => list(integration_error()),
%%   <<"IntegrationArn">> => string(),
%%   <<"IntegrationName">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"SourceArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => list(tag()),
%%   <<"TargetArn">> => string()
%% }
-type delete_integration_response() :: #{binary() => any()}.

%% Example:
%% view_definition_input() :: #{
%%   <<"Definer">> => string(),
%%   <<"IsProtected">> => boolean(),
%%   <<"Representations">> => list(view_representation_input()),
%%   <<"SubObjects">> => list(string())
%% }
-type view_definition_input() :: #{binary() => any()}.

%% Example:
%% encryption_configuration() :: #{
%%   <<"CloudWatchEncryption">> => cloud_watch_encryption(),
%%   <<"DataQualityEncryption">> => data_quality_encryption(),
%%   <<"JobBookmarksEncryption">> => job_bookmarks_encryption(),
%%   <<"S3Encryption">> => list(s3_encryption())
%% }
-type encryption_configuration() :: #{binary() => any()}.

%% Example:
%% delete_trigger_request() :: #{
%%   <<"Name">> := string()
%% }
-type delete_trigger_request() :: #{binary() => any()}.

%% Example:
%% spark_connector_target() :: #{
%%   <<"AdditionalOptions">> => map(),
%%   <<"ConnectionName">> => string(),
%%   <<"ConnectionType">> => string(),
%%   <<"ConnectorName">> => string(),
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"OutputSchemas">> => list(glue_schema())
%% }
-type spark_connector_target() :: #{binary() => any()}.

%% Example:
%% apply_mapping() :: #{
%%   <<"Inputs">> => list(string()),
%%   <<"Mapping">> => list(mapping()),
%%   <<"Name">> => string()
%% }
-type apply_mapping() :: #{binary() => any()}.

%% Example:
%% column_statistics() :: #{
%%   <<"AnalyzedTime">> => non_neg_integer(),
%%   <<"ColumnName">> => string(),
%%   <<"ColumnType">> => string(),
%%   <<"StatisticsData">> => column_statistics_data()
%% }
-type column_statistics() :: #{binary() => any()}.

%% Example:
%% get_blueprint_run_request() :: #{
%%   <<"BlueprintName">> := string(),
%%   <<"RunId">> := string()
%% }
-type get_blueprint_run_request() :: #{binary() => any()}.

%% Example:
%% list_blueprints_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => map()
%% }
-type list_blueprints_request() :: #{binary() => any()}.

%% Example:
%% create_integration_response() :: #{
%%   <<"AdditionalEncryptionContext">> => map(),
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"DataFilter">> => string(),
%%   <<"Description">> => string(),
%%   <<"Errors">> => list(integration_error()),
%%   <<"IntegrationArn">> => string(),
%%   <<"IntegrationConfig">> => integration_config(),
%%   <<"IntegrationName">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"SourceArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => list(tag()),
%%   <<"TargetArn">> => string()
%% }
-type create_integration_response() :: #{binary() => any()}.

%% Example:
%% iceberg_struct_field() :: #{
%%   <<"Doc">> => string(),
%%   <<"Id">> => integer(),
%%   <<"Name">> => string(),
%%   <<"Required">> => boolean(),
%%   <<"Type">> => any()
%% }
-type iceberg_struct_field() :: #{binary() => any()}.

%% Example:
%% supported_dialect() :: #{
%%   <<"Dialect">> => list(any()),
%%   <<"DialectVersion">> => string()
%% }
-type supported_dialect() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagsToAdd">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% column_statistics_task_stopping_exception() :: #{
%%   <<"Message">> => string()
%% }
-type column_statistics_task_stopping_exception() :: #{binary() => any()}.

%% Example:
%% data_quality_rule_recommendation_run_filter() :: #{
%%   <<"DataSource">> => data_source(),
%%   <<"StartedAfter">> => non_neg_integer(),
%%   <<"StartedBefore">> => non_neg_integer()
%% }
-type data_quality_rule_recommendation_run_filter() :: #{binary() => any()}.

%% Example:
%% oracle_s_q_l_catalog_source() :: #{
%%   <<"Database">> => string(),
%%   <<"Name">> => string(),
%%   <<"Table">> => string()
%% }
-type oracle_s_q_l_catalog_source() :: #{binary() => any()}.

%% Example:
%% start_crawler_schedule_request() :: #{
%%   <<"CrawlerName">> := string()
%% }
-type start_crawler_schedule_request() :: #{binary() => any()}.

%% Example:
%% schema_version_list_item() :: #{
%%   <<"CreatedTime">> => string(),
%%   <<"SchemaArn">> => string(),
%%   <<"SchemaVersionId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"VersionNumber">> => float()
%% }
-type schema_version_list_item() :: #{binary() => any()}.

%% Example:
%% update_data_quality_ruleset_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"Ruleset">> => string()
%% }
-type update_data_quality_ruleset_request() :: #{binary() => any()}.

%% Example:
%% timestamped_inclusion_annotation() :: #{
%%   <<"LastModifiedOn">> => non_neg_integer(),
%%   <<"Value">> => list(any())
%% }
-type timestamped_inclusion_annotation() :: #{binary() => any()}.

%% Example:
%% import_labels_task_run_properties() :: #{
%%   <<"InputS3Path">> => string(),
%%   <<"Replace">> => boolean()
%% }
-type import_labels_task_run_properties() :: #{binary() => any()}.

%% Example:
%% delete_schema_versions_input() :: #{
%%   <<"SchemaId">> := schema_id(),
%%   <<"Versions">> := string()
%% }
-type delete_schema_versions_input() :: #{binary() => any()}.

%% Example:
%% principal_permissions() :: #{
%%   <<"Permissions">> => list(list(any())()),
%%   <<"Principal">> => data_lake_principal()
%% }
-type principal_permissions() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_response() :: #{

%% }
-type delete_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% update_usage_profile_request() :: #{
%%   <<"Configuration">> := profile_configuration(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string()
%% }
-type update_usage_profile_request() :: #{binary() => any()}.

%% Example:
%% check_schema_version_validity_input() :: #{
%%   <<"DataFormat">> := list(any()),
%%   <<"SchemaDefinition">> := string()
%% }
-type check_schema_version_validity_input() :: #{binary() => any()}.

%% Example:
%% batch_get_blueprints_response() :: #{
%%   <<"Blueprints">> => list(blueprint()),
%%   <<"MissingBlueprints">> => list(string())
%% }
-type batch_get_blueprints_response() :: #{binary() => any()}.

%% Example:
%% get_ml_transform_request() :: #{
%%   <<"TransformId">> := string()
%% }
-type get_ml_transform_request() :: #{binary() => any()}.

%% Example:
%% j_db_c_connector_source() :: #{
%%   <<"AdditionalOptions">> => j_db_c_connector_options(),
%%   <<"ConnectionName">> => string(),
%%   <<"ConnectionTable">> => string(),
%%   <<"ConnectionType">> => string(),
%%   <<"ConnectorName">> => string(),
%%   <<"Name">> => string(),
%%   <<"OutputSchemas">> => list(glue_schema()),
%%   <<"Query">> => string()
%% }
-type j_db_c_connector_source() :: #{binary() => any()}.

%% Example:
%% scheduler_not_running_exception() :: #{
%%   <<"Message">> => string()
%% }
-type scheduler_not_running_exception() :: #{binary() => any()}.

%% Example:
%% database() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"CreateTableDefaultPermissions">> => list(principal_permissions()),
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"FederatedDatabase">> => federated_database(),
%%   <<"LocationUri">> => string(),
%%   <<"Name">> => string(),
%%   <<"Parameters">> => map(),
%%   <<"TargetDatabase">> => database_identifier()
%% }
-type database() :: #{binary() => any()}.

%% Example:
%% get_triggers_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Triggers">> => list(trigger())
%% }
-type get_triggers_response() :: #{binary() => any()}.

%% Example:
%% remove_schema_version_metadata_response() :: #{
%%   <<"LatestVersion">> => boolean(),
%%   <<"MetadataKey">> => string(),
%%   <<"MetadataValue">> => string(),
%%   <<"RegistryName">> => string(),
%%   <<"SchemaArn">> => string(),
%%   <<"SchemaName">> => string(),
%%   <<"SchemaVersionId">> => string(),
%%   <<"VersionNumber">> => float()
%% }
-type remove_schema_version_metadata_response() :: #{binary() => any()}.

%% Example:
%% iceberg_partition_spec() :: #{
%%   <<"Fields">> => list(iceberg_partition_field()),
%%   <<"SpecId">> => integer()
%% }
-type iceberg_partition_spec() :: #{binary() => any()}.

%% Example:
%% entity_not_found_exception() :: #{
%%   <<"FromFederationSource">> => boolean(),
%%   <<"Message">> => string()
%% }
-type entity_not_found_exception() :: #{binary() => any()}.

%% Example:
%% crawler_metrics() :: #{
%%   <<"CrawlerName">> => string(),
%%   <<"LastRuntimeSeconds">> => float(),
%%   <<"MedianRuntimeSeconds">> => float(),
%%   <<"StillEstimating">> => boolean(),
%%   <<"TablesCreated">> => integer(),
%%   <<"TablesDeleted">> => integer(),
%%   <<"TablesUpdated">> => integer(),
%%   <<"TimeLeftSeconds">> => float()
%% }
-type crawler_metrics() :: #{binary() => any()}.

%% Example:
%% boolean_column_statistics_data() :: #{
%%   <<"NumberOfFalses">> => float(),
%%   <<"NumberOfNulls">> => float(),
%%   <<"NumberOfTrues">> => float()
%% }
-type boolean_column_statistics_data() :: #{binary() => any()}.

%% Example:
%% operation_timeout_exception() :: #{
%%   <<"Message">> => string()
%% }
-type operation_timeout_exception() :: #{binary() => any()}.

%% Example:
%% get_statement_response() :: #{
%%   <<"Statement">> => statement()
%% }
-type get_statement_response() :: #{binary() => any()}.

%% Example:
%% list_data_quality_rulesets_request() :: #{
%%   <<"Filter">> => data_quality_ruleset_filter_criteria(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => map()
%% }
-type list_data_quality_rulesets_request() :: #{binary() => any()}.

%% Example:
%% run_identifier() :: #{
%%   <<"JobRunId">> => string(),
%%   <<"RunId">> => string()
%% }
-type run_identifier() :: #{binary() => any()}.

%% Example:
%% partition_index() :: #{
%%   <<"IndexName">> => string(),
%%   <<"Keys">> => list(string())
%% }
-type partition_index() :: #{binary() => any()}.

%% Example:
%% table_status() :: #{
%%   <<"Action">> => list(any()),
%%   <<"Details">> => status_details(),
%%   <<"Error">> => error_detail(),
%%   <<"RequestTime">> => non_neg_integer(),
%%   <<"RequestedBy">> => string(),
%%   <<"State">> => list(any()),
%%   <<"UpdateTime">> => non_neg_integer(),
%%   <<"UpdatedBy">> => string()
%% }
-type table_status() :: #{binary() => any()}.

%% Example:
%% delete_registry_input() :: #{
%%   <<"RegistryId">> := registry_id()
%% }
-type delete_registry_input() :: #{binary() => any()}.

%% Example:
%% get_session_response() :: #{
%%   <<"Session">> => session()
%% }
-type get_session_response() :: #{binary() => any()}.

%% Example:
%% data_lake_access_properties_output() :: #{
%%   <<"CatalogType">> => string(),
%%   <<"DataLakeAccess">> => boolean(),
%%   <<"DataTransferRole">> => string(),
%%   <<"KmsKey">> => string(),
%%   <<"ManagedWorkgroupName">> => string(),
%%   <<"ManagedWorkgroupStatus">> => string(),
%%   <<"RedshiftDatabaseName">> => string(),
%%   <<"StatusMessage">> => string()
%% }
-type data_lake_access_properties_output() :: #{binary() => any()}.

%% Example:
%% inbound_integration() :: #{
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"Errors">> => list(integration_error()),
%%   <<"IntegrationArn">> => string(),
%%   <<"IntegrationConfig">> => integration_config(),
%%   <<"SourceArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"TargetArn">> => string()
%% }
-type inbound_integration() :: #{binary() => any()}.

%% Example:
%% data_quality_result_description() :: #{
%%   <<"DataSource">> => data_source(),
%%   <<"JobName">> => string(),
%%   <<"JobRunId">> => string(),
%%   <<"ResultId">> => string(),
%%   <<"StartedOn">> => non_neg_integer()
%% }
-type data_quality_result_description() :: #{binary() => any()}.

%% Example:
%% blueprint_details() :: #{
%%   <<"BlueprintName">> => string(),
%%   <<"RunId">> => string()
%% }
-type blueprint_details() :: #{binary() => any()}.

%% Example:
%% batch_delete_partition_response() :: #{
%%   <<"Errors">> => list(partition_error())
%% }
-type batch_delete_partition_response() :: #{binary() => any()}.

%% Example:
%% get_job_run_request() :: #{
%%   <<"JobName">> := string(),
%%   <<"PredecessorsIncluded">> => boolean(),
%%   <<"RunId">> := string()
%% }
-type get_job_run_request() :: #{binary() => any()}.

%% Example:
%% get_user_defined_functions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"UserDefinedFunctions">> => list(user_defined_function())
%% }
-type get_user_defined_functions_response() :: #{binary() => any()}.

%% Example:
%% create_script_request() :: #{
%%   <<"DagEdges">> => list(code_gen_edge()),
%%   <<"DagNodes">> => list(code_gen_node()),
%%   <<"Language">> => list(any())
%% }
-type create_script_request() :: #{binary() => any()}.

%% Example:
%% partition_error() :: #{
%%   <<"ErrorDetail">> => error_detail(),
%%   <<"PartitionValues">> => list(string())
%% }
-type partition_error() :: #{binary() => any()}.

%% Example:
%% create_job_response() :: #{
%%   <<"Name">> => string()
%% }
-type create_job_response() :: #{binary() => any()}.

%% Example:
%% list_triggers_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TriggerNames">> => list(string())
%% }
-type list_triggers_response() :: #{binary() => any()}.

%% Example:
%% update_table_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> := string(),
%%   <<"Force">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"SkipArchive">> => boolean(),
%%   <<"TableInput">> => table_input(),
%%   <<"TransactionId">> => string(),
%%   <<"UpdateOpenTableFormatInput">> => update_open_table_format_input(),
%%   <<"VersionId">> => string(),
%%   <<"ViewUpdateAction">> => list(any())
%% }
-type update_table_request() :: #{binary() => any()}.

%% Example:
%% batch_delete_table_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> := string(),
%%   <<"TablesToDelete">> := list(string()),
%%   <<"TransactionId">> => string()
%% }
-type batch_delete_table_request() :: #{binary() => any()}.

%% Example:
%% delete_crawler_response() :: #{

%% }
-type delete_crawler_response() :: #{binary() => any()}.

%% Example:
%% get_ml_transforms_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Transforms">> => list(ml_transform())
%% }
-type get_ml_transforms_response() :: #{binary() => any()}.

%% Example:
%% get_job_runs_request() :: #{
%%   <<"JobName">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_job_runs_request() :: #{binary() => any()}.

%% Example:
%% query_session_context() :: #{
%%   <<"AdditionalContext">> => map(),
%%   <<"ClusterId">> => string(),
%%   <<"QueryAuthorizationId">> => string(),
%%   <<"QueryId">> => string(),
%%   <<"QueryStartTime">> => non_neg_integer()
%% }
-type query_session_context() :: #{binary() => any()}.

%% Example:
%% batch_get_table_optimizer_error() :: #{
%%   <<"catalogId">> => string(),
%%   <<"databaseName">> => string(),
%%   <<"error">> => error_detail(),
%%   <<"tableName">> => string(),
%%   <<"type">> => list(any())
%% }
-type batch_get_table_optimizer_error() :: #{binary() => any()}.

%% Example:
%% get_tables_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TableList">> => list(table())
%% }
-type get_tables_response() :: #{binary() => any()}.

%% Example:
%% trigger() :: #{
%%   <<"Actions">> => list(action()),
%%   <<"Description">> => string(),
%%   <<"EventBatchingCondition">> => event_batching_condition(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Predicate">> => predicate(),
%%   <<"Schedule">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Type">> => list(any()),
%%   <<"WorkflowName">> => string()
%% }
-type trigger() :: #{binary() => any()}.

%% Example:
%% get_tags_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type get_tags_request() :: #{binary() => any()}.

%% Example:
%% update_crawler_response() :: #{

%% }
-type update_crawler_response() :: #{binary() => any()}.

%% Example:
%% get_data_quality_result_response() :: #{
%%   <<"AggregatedMetrics">> => data_quality_aggregated_metrics(),
%%   <<"AnalyzerResults">> => list(data_quality_analyzer_result()),
%%   <<"CompletedOn">> => non_neg_integer(),
%%   <<"DataSource">> => data_source(),
%%   <<"EvaluationContext">> => string(),
%%   <<"JobName">> => string(),
%%   <<"JobRunId">> => string(),
%%   <<"Observations">> => list(data_quality_observation()),
%%   <<"ProfileId">> => string(),
%%   <<"ResultId">> => string(),
%%   <<"RuleResults">> => list(data_quality_rule_result()),
%%   <<"RulesetEvaluationRunId">> => string(),
%%   <<"RulesetName">> => string(),
%%   <<"Score">> => float(),
%%   <<"StartedOn">> => non_neg_integer()
%% }
-type get_data_quality_result_response() :: #{binary() => any()}.

%% Example:
%% batch_create_partition_response() :: #{
%%   <<"Errors">> => list(partition_error())
%% }
-type batch_create_partition_response() :: #{binary() => any()}.

%% Example:
%% null_value_field() :: #{
%%   <<"Datatype">> => datatype(),
%%   <<"Value">> => string()
%% }
-type null_value_field() :: #{binary() => any()}.

%% Example:
%% get_classifiers_response() :: #{
%%   <<"Classifiers">> => list(classifier()),
%%   <<"NextToken">> => string()
%% }
-type get_classifiers_response() :: #{binary() => any()}.

%% Example:
%% list_dev_endpoints_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => map()
%% }
-type list_dev_endpoints_request() :: #{binary() => any()}.

%% Example:
%% crawler_targets() :: #{
%%   <<"CatalogTargets">> => list(catalog_target()),
%%   <<"DeltaTargets">> => list(delta_target()),
%%   <<"DynamoDBTargets">> => list(dynamo_db_target()),
%%   <<"HudiTargets">> => list(hudi_target()),
%%   <<"IcebergTargets">> => list(iceberg_target()),
%%   <<"JdbcTargets">> => list(jdbc_target()),
%%   <<"MongoDBTargets">> => list(mongo_db_target()),
%%   <<"S3Targets">> => list(s3_target())
%% }
-type crawler_targets() :: #{binary() => any()}.

%% Example:
%% s3_catalog_hudi_source() :: #{
%%   <<"AdditionalHudiOptions">> => map(),
%%   <<"Database">> => string(),
%%   <<"Name">> => string(),
%%   <<"OutputSchemas">> => list(glue_schema()),
%%   <<"Table">> => string()
%% }
-type s3_catalog_hudi_source() :: #{binary() => any()}.

%% Example:
%% open_table_format_input() :: #{
%%   <<"IcebergInput">> => iceberg_input()
%% }
-type open_table_format_input() :: #{binary() => any()}.

%% Example:
%% table_optimizer_configuration() :: #{
%%   <<"compactionConfiguration">> => compaction_configuration(),
%%   <<"enabled">> => boolean(),
%%   <<"orphanFileDeletionConfiguration">> => orphan_file_deletion_configuration(),
%%   <<"retentionConfiguration">> => retention_configuration(),
%%   <<"roleArn">> => string(),
%%   <<"vpcConfiguration">> => list()
%% }
-type table_optimizer_configuration() :: #{binary() => any()}.

%% Example:
%% hudi_target() :: #{
%%   <<"ConnectionName">> => string(),
%%   <<"Exclusions">> => list(string()),
%%   <<"MaximumTraversalDepth">> => integer(),
%%   <<"Paths">> => list(string())
%% }
-type hudi_target() :: #{binary() => any()}.

%% Example:
%% get_workflow_runs_request() :: #{
%%   <<"IncludeGraph">> => boolean(),
%%   <<"MaxResults">> => integer(),
%%   <<"Name">> := string(),
%%   <<"NextToken">> => string()
%% }
-type get_workflow_runs_request() :: #{binary() => any()}.

%% Example:
%% create_table_optimizer_response() :: #{

%% }
-type create_table_optimizer_response() :: #{binary() => any()}.

%% Example:
%% usage_profile_definition() :: #{
%%   <<"CreatedOn">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"LastModifiedOn">> => non_neg_integer(),
%%   <<"Name">> => string()
%% }
-type usage_profile_definition() :: #{binary() => any()}.

%% Example:
%% amazon_redshift_advanced_option() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type amazon_redshift_advanced_option() :: #{binary() => any()}.

%% Example:
%% integration() :: #{
%%   <<"AdditionalEncryptionContext">> => map(),
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"DataFilter">> => string(),
%%   <<"Description">> => string(),
%%   <<"Errors">> => list(integration_error()),
%%   <<"IntegrationArn">> => string(),
%%   <<"IntegrationConfig">> => integration_config(),
%%   <<"IntegrationName">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"SourceArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => list(tag()),
%%   <<"TargetArn">> => string()
%% }
-type integration() :: #{binary() => any()}.

%% Example:
%% import_catalog_to_glue_request() :: #{
%%   <<"CatalogId">> => string()
%% }
-type import_catalog_to_glue_request() :: #{binary() => any()}.

%% Example:
%% federated_database() :: #{
%%   <<"ConnectionName">> => string(),
%%   <<"ConnectionType">> => string(),
%%   <<"Identifier">> => string()
%% }
-type federated_database() :: #{binary() => any()}.

%% Example:
%% direct_j_db_c_source() :: #{
%%   <<"ConnectionName">> => string(),
%%   <<"ConnectionType">> => list(any()),
%%   <<"Database">> => string(),
%%   <<"Name">> => string(),
%%   <<"OutputSchemas">> => list(glue_schema()),
%%   <<"RedshiftTmpDir">> => string(),
%%   <<"Table">> => string()
%% }
-type direct_j_db_c_source() :: #{binary() => any()}.

%% Example:
%% get_security_configurations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_security_configurations_request() :: #{binary() => any()}.

%% Example:
%% ml_transform() :: #{
%%   <<"CreatedOn">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"EvaluationMetrics">> => evaluation_metrics(),
%%   <<"GlueVersion">> => string(),
%%   <<"InputRecordTables">> => list(glue_table()),
%%   <<"LabelCount">> => integer(),
%%   <<"LastModifiedOn">> => non_neg_integer(),
%%   <<"MaxCapacity">> => float(),
%%   <<"MaxRetries">> => integer(),
%%   <<"Name">> => string(),
%%   <<"NumberOfWorkers">> => integer(),
%%   <<"Parameters">> => transform_parameters(),
%%   <<"Role">> => string(),
%%   <<"Schema">> => list(schema_column()),
%%   <<"Status">> => list(any()),
%%   <<"Timeout">> => integer(),
%%   <<"TransformEncryption">> => transform_encryption(),
%%   <<"TransformId">> => string(),
%%   <<"WorkerType">> => list(any())
%% }
-type ml_transform() :: #{binary() => any()}.

%% Example:
%% create_partition_response() :: #{

%% }
-type create_partition_response() :: #{binary() => any()}.

%% Example:
%% modify_integration_response() :: #{
%%   <<"AdditionalEncryptionContext">> => map(),
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"DataFilter">> => string(),
%%   <<"Description">> => string(),
%%   <<"Errors">> => list(integration_error()),
%%   <<"IntegrationArn">> => string(),
%%   <<"IntegrationConfig">> => integration_config(),
%%   <<"IntegrationName">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"SourceArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => list(tag()),
%%   <<"TargetArn">> => string()
%% }
-type modify_integration_response() :: #{binary() => any()}.

%% Example:
%% job_run() :: #{
%%   <<"AllocatedCapacity">> => integer(),
%%   <<"Arguments">> => map(),
%%   <<"Attempt">> => integer(),
%%   <<"CompletedOn">> => non_neg_integer(),
%%   <<"DPUSeconds">> => float(),
%%   <<"ErrorMessage">> => string(),
%%   <<"ExecutionClass">> => list(any()),
%%   <<"ExecutionRoleSessionPolicy">> => string(),
%%   <<"ExecutionTime">> => integer(),
%%   <<"GlueVersion">> => string(),
%%   <<"Id">> => string(),
%%   <<"JobMode">> => list(any()),
%%   <<"JobName">> => string(),
%%   <<"JobRunQueuingEnabled">> => boolean(),
%%   <<"JobRunState">> => list(any()),
%%   <<"LastModifiedOn">> => non_neg_integer(),
%%   <<"LogGroupName">> => string(),
%%   <<"MaintenanceWindow">> => string(),
%%   <<"MaxCapacity">> => float(),
%%   <<"NotificationProperty">> => notification_property(),
%%   <<"NumberOfWorkers">> => integer(),
%%   <<"PredecessorRuns">> => list(predecessor()),
%%   <<"PreviousRunId">> => string(),
%%   <<"ProfileName">> => string(),
%%   <<"SecurityConfiguration">> => string(),
%%   <<"StartedOn">> => non_neg_integer(),
%%   <<"StateDetail">> => string(),
%%   <<"Timeout">> => integer(),
%%   <<"TriggerName">> => string(),
%%   <<"WorkerType">> => list(any())
%% }
-type job_run() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% entity() :: #{
%%   <<"Category">> => string(),
%%   <<"CustomProperties">> => map(),
%%   <<"Description">> => string(),
%%   <<"EntityName">> => string(),
%%   <<"IsParentEntity">> => boolean(),
%%   <<"Label">> => string()
%% }
-type entity() :: #{binary() => any()}.

%% Example:
%% iceberg_orphan_file_deletion_configuration() :: #{
%%   <<"location">> => string(),
%%   <<"orphanFileRetentionPeriodInDays">> => integer(),
%%   <<"runRateInHours">> => integer()
%% }
-type iceberg_orphan_file_deletion_configuration() :: #{binary() => any()}.

%% Example:
%% batch_get_data_quality_result_response() :: #{
%%   <<"Results">> => list(data_quality_result()),
%%   <<"ResultsNotFound">> => list(string())
%% }
-type batch_get_data_quality_result_response() :: #{binary() => any()}.

%% Example:
%% get_connection_response() :: #{
%%   <<"Connection">> => connection()
%% }
-type get_connection_response() :: #{binary() => any()}.

%% Example:
%% code_gen_configuration_node() :: #{
%%   <<"S3HyperDirectTarget">> => s3_hyper_direct_target(),
%%   <<"DynamicTransform">> => dynamic_transform(),
%%   <<"S3CatalogIcebergSource">> => s3_catalog_iceberg_source(),
%%   <<"ConnectorDataSource">> => connector_data_source(),
%%   <<"AmazonRedshiftSource">> => amazon_redshift_source(),
%%   <<"Filter">> => filter(),
%%   <<"RenameField">> => rename_field(),
%%   <<"S3DeltaSource">> => s3_delta_source(),
%%   <<"MicrosoftSQLServerCatalogTarget">> => microsoft_s_q_l_server_catalog_target(),
%%   <<"S3ParquetSource">> => s3_parquet_source(),
%%   <<"S3CatalogTarget">> => s3_catalog_target(),
%%   <<"CatalogSource">> => catalog_source(),
%%   <<"EvaluateDataQualityMultiFrame">> => evaluate_data_quality_multi_frame(),
%%   <<"S3CsvSource">> => s3_csv_source(),
%%   <<"S3IcebergCatalogTarget">> => s3_iceberg_catalog_target(),
%%   <<"PostgreSQLCatalogSource">> => postgre_s_q_l_catalog_source(),
%%   <<"S3ExcelSource">> => s3_excel_source(),
%%   <<"JDBCConnectorTarget">> => j_db_c_connector_target(),
%%   <<"RelationalCatalogSource">> => relational_catalog_source(),
%%   <<"SelectFields">> => select_fields(),
%%   <<"AmazonRedshiftTarget">> => amazon_redshift_target(),
%%   <<"S3CatalogHudiSource">> => s3_catalog_hudi_source(),
%%   <<"S3CatalogSource">> => s3_catalog_source(),
%%   <<"Merge">> => merge(),
%%   <<"Aggregate">> => aggregate(),
%%   <<"MySQLCatalogTarget">> => my_s_q_l_catalog_target(),
%%   <<"S3HudiSource">> => s3_hudi_source(),
%%   <<"DynamoDBCatalogSource">> => dynamo_db_catalog_source(),
%%   <<"Recipe">> => recipe(),
%%   <<"RedshiftSource">> => redshift_source(),
%%   <<"SnowflakeTarget">> => snowflake_target(),
%%   <<"RedshiftTarget">> => redshift_target(),
%%   <<"AthenaConnectorSource">> => athena_connector_source(),
%%   <<"SplitFields">> => split_fields(),
%%   <<"OracleSQLCatalogTarget">> => oracle_s_q_l_catalog_target(),
%%   <<"SelectFromCollection">> => select_from_collection(),
%%   <<"CustomCode">> => custom_code(),
%%   <<"DirectKafkaSource">> => direct_kafka_source(),
%%   <<"DirectKinesisSource">> => direct_kinesis_source(),
%%   <<"CatalogIcebergSource">> => catalog_iceberg_source(),
%%   <<"ConnectorDataTarget">> => connector_data_target(),
%%   <<"DropNullFields">> => drop_null_fields(),
%%   <<"S3JsonSource">> => s3_json_source(),
%%   <<"CatalogDeltaSource">> => catalog_delta_source(),
%%   <<"S3HudiDirectTarget">> => s3_hudi_direct_target(),
%%   <<"S3GlueParquetTarget">> => s3_glue_parquet_target(),
%%   <<"ApplyMapping">> => apply_mapping(),
%%   <<"EvaluateDataQuality">> => evaluate_data_quality(),
%%   <<"GovernedCatalogTarget">> => governed_catalog_target(),
%%   <<"GovernedCatalogSource">> => governed_catalog_source(),
%%   <<"PIIDetection">> => p_i_idetection(),
%%   <<"FillMissingValues">> => fill_missing_values(),
%%   <<"Union">> => union(),
%%   <<"DirectJDBCSource">> => direct_j_db_c_source(),
%%   <<"S3CatalogDeltaSource">> => s3_catalog_delta_source(),
%%   <<"DropFields">> => drop_fields(),
%%   <<"CatalogHudiSource">> => catalog_hudi_source(),
%%   <<"OracleSQLCatalogSource">> => oracle_s_q_l_catalog_source(),
%%   <<"MicrosoftSQLServerCatalogSource">> => microsoft_s_q_l_server_catalog_source(),
%%   <<"CatalogKinesisSource">> => catalog_kinesis_source(),
%%   <<"Route">> => route(),
%%   <<"SparkConnectorTarget">> => spark_connector_target(),
%%   <<"SparkSQL">> => spark_s_q_l(),
%%   <<"Join">> => join(),
%%   <<"SnowflakeSource">> => snowflake_source(),
%%   <<"S3IcebergDirectTarget">> => s3_iceberg_direct_target(),
%%   <<"S3DeltaDirectTarget">> => s3_delta_direct_target(),
%%   <<"CatalogTarget">> => basic_catalog_target(),
%%   <<"S3HudiCatalogTarget">> => s3_hudi_catalog_target(),
%%   <<"JDBCConnectorSource">> => j_db_c_connector_source(),
%%   <<"S3DirectTarget">> => s3_direct_target(),
%%   <<"PostgreSQLCatalogTarget">> => postgre_s_q_l_catalog_target(),
%%   <<"DropDuplicates">> => drop_duplicates(),
%%   <<"SparkConnectorSource">> => spark_connector_source(),
%%   <<"Spigot">> => spigot(),
%%   <<"S3DeltaCatalogTarget">> => s3_delta_catalog_target(),
%%   <<"DynamoDBELTConnectorSource">> => dynamo_db_e_l_t_connector_source(),
%%   <<"CatalogKafkaSource">> => catalog_kafka_source(),
%%   <<"MySQLCatalogSource">> => my_s_q_l_catalog_source()
%% }
-type code_gen_configuration_node() :: #{binary() => any()}.

%% Example:
%% put_data_catalog_encryption_settings_response() :: #{

%% }
-type put_data_catalog_encryption_settings_response() :: #{binary() => any()}.

%% Example:
%% get_dev_endpoints_response() :: #{
%%   <<"DevEndpoints">> => list(dev_endpoint()),
%%   <<"NextToken">> => string()
%% }
-type get_dev_endpoints_response() :: #{binary() => any()}.

%% Example:
%% delete_workflow_request() :: #{
%%   <<"Name">> := string()
%% }
-type delete_workflow_request() :: #{binary() => any()}.

%% Example:
%% get_unfiltered_table_metadata_response() :: #{
%%   <<"AuthorizedColumns">> => list(string()),
%%   <<"CellFilters">> => list(column_row_filter()),
%%   <<"IsMultiDialectView">> => boolean(),
%%   <<"IsProtected">> => boolean(),
%%   <<"IsRegisteredWithLakeFormation">> => boolean(),
%%   <<"Permissions">> => list(list(any())()),
%%   <<"QueryAuthorizationId">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"RowFilter">> => string(),
%%   <<"Table">> => table()
%% }
-type get_unfiltered_table_metadata_response() :: #{binary() => any()}.

%% Example:
%% authentication_configuration_input() :: #{
%%   <<"AuthenticationType">> => list(any()),
%%   <<"BasicAuthenticationCredentials">> => basic_authentication_credentials(),
%%   <<"CustomAuthenticationCredentials">> => map(),
%%   <<"KmsKeyArn">> => string(),
%%   <<"OAuth2Properties">> => o_auth2_properties_input(),
%%   <<"SecretArn">> => string()
%% }
-type authentication_configuration_input() :: #{binary() => any()}.

%% Example:
%% task_run_filter_criteria() :: #{
%%   <<"StartedAfter">> => non_neg_integer(),
%%   <<"StartedBefore">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"TaskRunType">> => list(any())
%% }
-type task_run_filter_criteria() :: #{binary() => any()}.

%% Example:
%% delete_classifier_response() :: #{

%% }
-type delete_classifier_response() :: #{binary() => any()}.

%% Example:
%% update_blueprint_response() :: #{
%%   <<"Name">> => string()
%% }
-type update_blueprint_response() :: #{binary() => any()}.

%% Example:
%% batch_update_partition_failure_entry() :: #{
%%   <<"ErrorDetail">> => error_detail(),
%%   <<"PartitionValueList">> => list(string())
%% }
-type batch_update_partition_failure_entry() :: #{binary() => any()}.

%% Example:
%% get_data_quality_model_result_request() :: #{
%%   <<"ProfileId">> := string(),
%%   <<"StatisticId">> := string()
%% }
-type get_data_quality_model_result_request() :: #{binary() => any()}.

%% Example:
%% data_quality_rule_recommendation_run_description() :: #{
%%   <<"DataSource">> => data_source(),
%%   <<"RunId">> => string(),
%%   <<"StartedOn">> => non_neg_integer(),
%%   <<"Status">> => list(any())
%% }
-type data_quality_rule_recommendation_run_description() :: #{binary() => any()}.

%% Example:
%% list_usage_profiles_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Profiles">> => list(usage_profile_definition())
%% }
-type list_usage_profiles_response() :: #{binary() => any()}.

%% Example:
%% athena_connector_source() :: #{
%%   <<"ConnectionName">> => string(),
%%   <<"ConnectionTable">> => string(),
%%   <<"ConnectionType">> => string(),
%%   <<"ConnectorName">> => string(),
%%   <<"Name">> => string(),
%%   <<"OutputSchemas">> => list(glue_schema()),
%%   <<"SchemaName">> => string()
%% }
-type athena_connector_source() :: #{binary() => any()}.

%% Example:
%% list_jobs_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => map()
%% }
-type list_jobs_request() :: #{binary() => any()}.

%% Example:
%% get_workflow_run_properties_request() :: #{
%%   <<"Name">> := string(),
%%   <<"RunId">> := string()
%% }
-type get_workflow_run_properties_request() :: #{binary() => any()}.

%% Example:
%% delete_table_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> := string(),
%%   <<"Name">> := string(),
%%   <<"TransactionId">> => string()
%% }
-type delete_table_request() :: #{binary() => any()}.

%% Example:
%% table_optimizer_run() :: #{
%%   <<"compactionMetrics">> => compaction_metrics(),
%%   <<"compactionStrategy">> => list(any()),
%%   <<"endTimestamp">> => non_neg_integer(),
%%   <<"error">> => string(),
%%   <<"eventType">> => list(any()),
%%   <<"metrics">> => run_metrics(),
%%   <<"orphanFileDeletionMetrics">> => orphan_file_deletion_metrics(),
%%   <<"retentionMetrics">> => retention_metrics(),
%%   <<"startTimestamp">> => non_neg_integer()
%% }
-type table_optimizer_run() :: #{binary() => any()}.

%% Example:
%% authorization_code_properties() :: #{
%%   <<"AuthorizationCode">> => string(),
%%   <<"RedirectUri">> => string()
%% }
-type authorization_code_properties() :: #{binary() => any()}.

%% Example:
%% event_batching_condition() :: #{
%%   <<"BatchSize">> => integer(),
%%   <<"BatchWindow">> => integer()
%% }
-type event_batching_condition() :: #{binary() => any()}.

%% Example:
%% list_data_quality_rulesets_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Rulesets">> => list(data_quality_ruleset_list_details())
%% }
-type list_data_quality_rulesets_response() :: #{binary() => any()}.

%% Example:
%% data_catalog_encryption_settings() :: #{
%%   <<"ConnectionPasswordEncryption">> => connection_password_encryption(),
%%   <<"EncryptionAtRest">> => encryption_at_rest()
%% }
-type data_catalog_encryption_settings() :: #{binary() => any()}.

%% Example:
%% integration_filter() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(string())
%% }
-type integration_filter() :: #{binary() => any()}.

%% Example:
%% column() :: #{
%%   <<"Comment">> => string(),
%%   <<"Name">> => string(),
%%   <<"Parameters">> => map(),
%%   <<"Type">> => string()
%% }
-type column() :: #{binary() => any()}.

%% Example:
%% create_partition_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> := string(),
%%   <<"PartitionInput">> := partition_input(),
%%   <<"TableName">> := string()
%% }
-type create_partition_request() :: #{binary() => any()}.

%% Example:
%% crawl() :: #{
%%   <<"CompletedOn">> => non_neg_integer(),
%%   <<"ErrorMessage">> => string(),
%%   <<"LogGroup">> => string(),
%%   <<"LogStream">> => string(),
%%   <<"StartedOn">> => non_neg_integer(),
%%   <<"State">> => list(any())
%% }
-type crawl() :: #{binary() => any()}.

%% Example:
%% already_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type already_exists_exception() :: #{binary() => any()}.

%% Example:
%% delete_data_quality_ruleset_request() :: #{
%%   <<"Name">> := string()
%% }
-type delete_data_quality_ruleset_request() :: #{binary() => any()}.

%% Example:
%% reset_job_bookmark_request() :: #{
%%   <<"JobName">> := string(),
%%   <<"RunId">> => string()
%% }
-type reset_job_bookmark_request() :: #{binary() => any()}.

%% Example:
%% resume_workflow_run_request() :: #{
%%   <<"Name">> := string(),
%%   <<"NodeIds">> := list(string()),
%%   <<"RunId">> := string()
%% }
-type resume_workflow_run_request() :: #{binary() => any()}.

%% Example:
%% delete_table_optimizer_response() :: #{

%% }
-type delete_table_optimizer_response() :: #{binary() => any()}.

%% Example:
%% registry_id() :: #{
%%   <<"RegistryArn">> => string(),
%%   <<"RegistryName">> => string()
%% }
-type registry_id() :: #{binary() => any()}.

%% Example:
%% get_column_statistics_for_partition_response() :: #{
%%   <<"ColumnStatisticsList">> => list(column_statistics()),
%%   <<"Errors">> => list(column_error())
%% }
-type get_column_statistics_for_partition_response() :: #{binary() => any()}.

%% Example:
%% redshift_source() :: #{
%%   <<"Database">> => string(),
%%   <<"Name">> => string(),
%%   <<"RedshiftTmpDir">> => string(),
%%   <<"Table">> => string(),
%%   <<"TmpDirIAMRole">> => string()
%% }
-type redshift_source() :: #{binary() => any()}.

%% Example:
%% csv_classifier() :: #{
%%   <<"AllowSingleColumn">> => boolean(),
%%   <<"ContainsHeader">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"CustomDatatypeConfigured">> => boolean(),
%%   <<"CustomDatatypes">> => list(string()),
%%   <<"Delimiter">> => string(),
%%   <<"DisableValueTrimming">> => boolean(),
%%   <<"Header">> => list(string()),
%%   <<"LastUpdated">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"QuoteSymbol">> => string(),
%%   <<"Serde">> => list(any()),
%%   <<"Version">> => float()
%% }
-type csv_classifier() :: #{binary() => any()}.

%% Example:
%% list_schema_versions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Schemas">> => list(schema_version_list_item())
%% }
-type list_schema_versions_response() :: #{binary() => any()}.

%% Example:
%% version_mismatch_exception() :: #{
%%   <<"Message">> => string()
%% }
-type version_mismatch_exception() :: #{binary() => any()}.

%% Example:
%% create_crawler_response() :: #{

%% }
-type create_crawler_response() :: #{binary() => any()}.

%% Example:
%% create_registry_response() :: #{
%%   <<"Description">> => string(),
%%   <<"RegistryArn">> => string(),
%%   <<"RegistryName">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_registry_response() :: #{binary() => any()}.

%% Example:
%% oracle_s_q_l_catalog_target() :: #{
%%   <<"Database">> => string(),
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"Table">> => string()
%% }
-type oracle_s_q_l_catalog_target() :: #{binary() => any()}.

%% Example:
%% schema_list_item() :: #{
%%   <<"CreatedTime">> => string(),
%%   <<"Description">> => string(),
%%   <<"RegistryName">> => string(),
%%   <<"SchemaArn">> => string(),
%%   <<"SchemaName">> => string(),
%%   <<"SchemaStatus">> => list(any()),
%%   <<"UpdatedTime">> => string()
%% }
-type schema_list_item() :: #{binary() => any()}.

%% Example:
%% run_metrics() :: #{
%%   <<"JobDurationInHour">> => string(),
%%   <<"NumberOfBytesCompacted">> => string(),
%%   <<"NumberOfDpus">> => string(),
%%   <<"NumberOfFilesCompacted">> => string()
%% }
-type run_metrics() :: #{binary() => any()}.

%% Example:
%% column_statistics_data() :: #{
%%   <<"BinaryColumnStatisticsData">> => binary_column_statistics_data(),
%%   <<"BooleanColumnStatisticsData">> => boolean_column_statistics_data(),
%%   <<"DateColumnStatisticsData">> => date_column_statistics_data(),
%%   <<"DecimalColumnStatisticsData">> => decimal_column_statistics_data(),
%%   <<"DoubleColumnStatisticsData">> => double_column_statistics_data(),
%%   <<"LongColumnStatisticsData">> => long_column_statistics_data(),
%%   <<"StringColumnStatisticsData">> => string_column_statistics_data(),
%%   <<"Type">> => list(any())
%% }
-type column_statistics_data() :: #{binary() => any()}.

%% Example:
%% get_workflow_runs_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Runs">> => list(workflow_run())
%% }
-type get_workflow_runs_response() :: #{binary() => any()}.

%% Example:
%% get_table_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> := string(),
%%   <<"IncludeStatusDetails">> => boolean(),
%%   <<"Name">> := string(),
%%   <<"QueryAsOfTime">> => non_neg_integer(),
%%   <<"TransactionId">> => string()
%% }
-type get_table_request() :: #{binary() => any()}.

%% Example:
%% describe_inbound_integrations_response() :: #{
%%   <<"InboundIntegrations">> => list(inbound_integration()),
%%   <<"Marker">> => string()
%% }
-type describe_inbound_integrations_response() :: #{binary() => any()}.

%% Example:
%% delete_blueprint_response() :: #{
%%   <<"Name">> => string()
%% }
-type delete_blueprint_response() :: #{binary() => any()}.

%% Example:
%% create_custom_entity_type_response() :: #{
%%   <<"Name">> => string()
%% }
-type create_custom_entity_type_response() :: #{binary() => any()}.

%% Example:
%% iceberg_sort_order() :: #{
%%   <<"Fields">> => list(iceberg_sort_field()),
%%   <<"OrderId">> => integer()
%% }
-type iceberg_sort_order() :: #{binary() => any()}.

%% Example:
%% delete_glue_identity_center_configuration_request() :: #{

%% }
-type delete_glue_identity_center_configuration_request() :: #{binary() => any()}.

%% Example:
%% update_x_ml_classifier_request() :: #{
%%   <<"Classification">> => string(),
%%   <<"Name">> => string(),
%%   <<"RowTag">> => string()
%% }
-type update_x_ml_classifier_request() :: #{binary() => any()}.

%% Example:
%% catalog_kinesis_source() :: #{
%%   <<"DataPreviewOptions">> => streaming_data_preview_options(),
%%   <<"Database">> => string(),
%%   <<"DetectSchema">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"StreamingOptions">> => kinesis_streaming_source_options(),
%%   <<"Table">> => string(),
%%   <<"WindowSize">> => integer()
%% }
-type catalog_kinesis_source() :: #{binary() => any()}.

%% Example:
%% federated_catalog() :: #{
%%   <<"ConnectionName">> => string(),
%%   <<"ConnectionType">> => string(),
%%   <<"Identifier">> => string()
%% }
-type federated_catalog() :: #{binary() => any()}.

%% Example:
%% dynamic_transform() :: #{
%%   <<"FunctionName">> => string(),
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"OutputSchemas">> => list(glue_schema()),
%%   <<"Parameters">> => list(transform_config_parameter()),
%%   <<"Path">> => string(),
%%   <<"TransformName">> => string(),
%%   <<"Version">> => string()
%% }
-type dynamic_transform() :: #{binary() => any()}.

%% Example:
%% integration_error() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string()
%% }
-type integration_error() :: #{binary() => any()}.

%% Example:
%% concurrent_runs_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type concurrent_runs_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% s3_parquet_source() :: #{
%%   <<"AdditionalOptions">> => s3_direct_source_additional_options(),
%%   <<"CompressionType">> => list(any()),
%%   <<"Exclusions">> => list(string()),
%%   <<"GroupFiles">> => string(),
%%   <<"GroupSize">> => string(),
%%   <<"MaxBand">> => integer(),
%%   <<"MaxFilesInBand">> => integer(),
%%   <<"Name">> => string(),
%%   <<"OutputSchemas">> => list(glue_schema()),
%%   <<"Paths">> => list(string()),
%%   <<"Recurse">> => boolean()
%% }
-type s3_parquet_source() :: #{binary() => any()}.

%% Example:
%% cancel_statement_request() :: #{
%%   <<"Id">> := integer(),
%%   <<"RequestOrigin">> => string(),
%%   <<"SessionId">> := string()
%% }
-type cancel_statement_request() :: #{binary() => any()}.

%% Example:
%% illegal_session_state_exception() :: #{
%%   <<"Message">> => string()
%% }
-type illegal_session_state_exception() :: #{binary() => any()}.

%% Example:
%% stop_workflow_run_response() :: #{

%% }
-type stop_workflow_run_response() :: #{binary() => any()}.

%% Example:
%% batch_get_dev_endpoints_response() :: #{
%%   <<"DevEndpoints">> => list(dev_endpoint()),
%%   <<"DevEndpointsNotFound">> => list(string())
%% }
-type batch_get_dev_endpoints_response() :: #{binary() => any()}.

%% Example:
%% run_statement_response() :: #{
%%   <<"Id">> => integer()
%% }
-type run_statement_response() :: #{binary() => any()}.

%% Example:
%% notification_property() :: #{
%%   <<"NotifyDelayAfter">> => integer()
%% }
-type notification_property() :: #{binary() => any()}.

%% Example:
%% run_statement_request() :: #{
%%   <<"Code">> := string(),
%%   <<"RequestOrigin">> => string(),
%%   <<"SessionId">> := string()
%% }
-type run_statement_request() :: #{binary() => any()}.

%% Example:
%% get_connections_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"Filter">> => get_connections_filter(),
%%   <<"HidePassword">> => boolean(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_connections_request() :: #{binary() => any()}.

%% Example:
%% get_user_defined_function_response() :: #{
%%   <<"UserDefinedFunction">> => user_defined_function()
%% }
-type get_user_defined_function_response() :: #{binary() => any()}.

%% Example:
%% update_catalog_response() :: #{

%% }
-type update_catalog_response() :: #{binary() => any()}.

%% Example:
%% delete_ml_transform_response() :: #{
%%   <<"TransformId">> => string()
%% }
-type delete_ml_transform_response() :: #{binary() => any()}.

%% Example:
%% start_export_labels_task_run_response() :: #{
%%   <<"TaskRunId">> => string()
%% }
-type start_export_labels_task_run_response() :: #{binary() => any()}.

%% Example:
%% crawler_node_details() :: #{
%%   <<"Crawls">> => list(crawl())
%% }
-type crawler_node_details() :: #{binary() => any()}.

%% Example:
%% s3_direct_target() :: #{
%%   <<"AutoDataQuality">> => auto_data_quality(),
%%   <<"Compression">> => string(),
%%   <<"Format">> => list(any()),
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"NumberTargetPartitions">> => string(),
%%   <<"OutputSchemas">> => list(glue_schema()),
%%   <<"PartitionKeys">> => list(list(string())()),
%%   <<"Path">> => string(),
%%   <<"SchemaChangePolicy">> => direct_schema_change_policy()
%% }
-type s3_direct_target() :: #{binary() => any()}.

%% Example:
%% put_data_quality_profile_annotation_request() :: #{
%%   <<"InclusionAnnotation">> := list(any()),
%%   <<"ProfileId">> := string()
%% }
-type put_data_quality_profile_annotation_request() :: #{binary() => any()}.

%% Example:
%% get_entity_records_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Records">> => list(any())
%% }
-type get_entity_records_response() :: #{binary() => any()}.

%% Example:
%% get_ml_task_run_request() :: #{
%%   <<"TaskRunId">> := string(),
%%   <<"TransformId">> := string()
%% }
-type get_ml_task_run_request() :: #{binary() => any()}.

%% Example:
%% create_table_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> := string(),
%%   <<"Name">> => string(),
%%   <<"OpenTableFormatInput">> => open_table_format_input(),
%%   <<"PartitionIndexes">> => list(partition_index()),
%%   <<"TableInput">> => table_input(),
%%   <<"TransactionId">> => string()
%% }
-type create_table_request() :: #{binary() => any()}.

%% Example:
%% statistic_annotation() :: #{
%%   <<"InclusionAnnotation">> => timestamped_inclusion_annotation(),
%%   <<"ProfileId">> => string(),
%%   <<"StatisticId">> => string(),
%%   <<"StatisticRecordedOn">> => non_neg_integer()
%% }
-type statistic_annotation() :: #{binary() => any()}.

%% Example:
%% get_dev_endpoint_request() :: #{
%%   <<"EndpointName">> := string()
%% }
-type get_dev_endpoint_request() :: #{binary() => any()}.

%% Example:
%% get_database_response() :: #{
%%   <<"Database">> => database()
%% }
-type get_database_response() :: #{binary() => any()}.

%% Example:
%% get_entity_records_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"ConnectionName">> => string(),
%%   <<"ConnectionOptions">> => map(),
%%   <<"DataStoreApiVersion">> => string(),
%%   <<"EntityName">> := string(),
%%   <<"FilterPredicate">> => string(),
%%   <<"Limit">> := float(),
%%   <<"NextToken">> => string(),
%%   <<"OrderBy">> => [string()],
%%   <<"SelectedFields">> => list(string())
%% }
-type get_entity_records_request() :: #{binary() => any()}.

%% Example:
%% get_table_response() :: #{
%%   <<"Table">> => table()
%% }
-type get_table_response() :: #{binary() => any()}.

%% Example:
%% create_security_configuration_request() :: #{
%%   <<"EncryptionConfiguration">> := encryption_configuration(),
%%   <<"Name">> := string()
%% }
-type create_security_configuration_request() :: #{binary() => any()}.

%% Example:
%% list_data_quality_statistic_annotations_response() :: #{
%%   <<"Annotations">> => list(statistic_annotation()),
%%   <<"NextToken">> => string()
%% }
-type list_data_quality_statistic_annotations_response() :: #{binary() => any()}.

%% Example:
%% find_matches_parameters() :: #{
%%   <<"AccuracyCostTradeoff">> => float(),
%%   <<"EnforceProvidedLabels">> => boolean(),
%%   <<"PrecisionRecallTradeoff">> => float(),
%%   <<"PrimaryKeyColumnName">> => string()
%% }
-type find_matches_parameters() :: #{binary() => any()}.

%% Example:
%% create_ml_transform_request() :: #{
%%   <<"Description">> => string(),
%%   <<"GlueVersion">> => string(),
%%   <<"InputRecordTables">> := list(glue_table()),
%%   <<"MaxCapacity">> => float(),
%%   <<"MaxRetries">> => integer(),
%%   <<"Name">> := string(),
%%   <<"NumberOfWorkers">> => integer(),
%%   <<"Parameters">> := transform_parameters(),
%%   <<"Role">> := string(),
%%   <<"Tags">> => map(),
%%   <<"Timeout">> => integer(),
%%   <<"TransformEncryption">> => transform_encryption(),
%%   <<"WorkerType">> => list(any())
%% }
-type create_ml_transform_request() :: #{binary() => any()}.

%% Example:
%% list_connection_types_response() :: #{
%%   <<"ConnectionTypes">> => list(connection_type_brief()),
%%   <<"NextToken">> => string()
%% }
-type list_connection_types_response() :: #{binary() => any()}.

%% Example:
%% partition_index_descriptor() :: #{
%%   <<"BackfillErrors">> => list(backfill_error()),
%%   <<"IndexName">> => string(),
%%   <<"IndexStatus">> => list(any()),
%%   <<"Keys">> => list(key_schema_element())
%% }
-type partition_index_descriptor() :: #{binary() => any()}.

%% Example:
%% dev_endpoint() :: #{
%%   <<"Arguments">> => map(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"EndpointName">> => string(),
%%   <<"ExtraJarsS3Path">> => string(),
%%   <<"ExtraPythonLibsS3Path">> => string(),
%%   <<"FailureReason">> => string(),
%%   <<"GlueVersion">> => string(),
%%   <<"LastModifiedTimestamp">> => non_neg_integer(),
%%   <<"LastUpdateStatus">> => string(),
%%   <<"NumberOfNodes">> => integer(),
%%   <<"NumberOfWorkers">> => integer(),
%%   <<"PrivateAddress">> => string(),
%%   <<"PublicAddress">> => string(),
%%   <<"PublicKey">> => string(),
%%   <<"PublicKeys">> => list(string()),
%%   <<"RoleArn">> => string(),
%%   <<"SecurityConfiguration">> => string(),
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"Status">> => string(),
%%   <<"SubnetId">> => string(),
%%   <<"VpcId">> => string(),
%%   <<"WorkerType">> => list(any()),
%%   <<"YarnEndpointAddress">> => string(),
%%   <<"ZeppelinRemoteSparkInterpreterPort">> => integer()
%% }
-type dev_endpoint() :: #{binary() => any()}.

%% Example:
%% get_resource_policy_response() :: #{
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"PolicyHash">> => string(),
%%   <<"PolicyInJson">> => string(),
%%   <<"UpdateTime">> => non_neg_integer()
%% }
-type get_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% scheduler_running_exception() :: #{
%%   <<"Message">> => string()
%% }
-type scheduler_running_exception() :: #{binary() => any()}.

%% Example:
%% transform_filter_criteria() :: #{
%%   <<"CreatedAfter">> => non_neg_integer(),
%%   <<"CreatedBefore">> => non_neg_integer(),
%%   <<"GlueVersion">> => string(),
%%   <<"LastModifiedAfter">> => non_neg_integer(),
%%   <<"LastModifiedBefore">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Schema">> => list(schema_column()),
%%   <<"Status">> => list(any()),
%%   <<"TransformType">> => list(any())
%% }
-type transform_filter_criteria() :: #{binary() => any()}.

%% Example:
%% aggregate() :: #{
%%   <<"Aggs">> => list(aggregate_operation()),
%%   <<"Groups">> => list(list(string())()),
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string()
%% }
-type aggregate() :: #{binary() => any()}.

%% Example:
%% transform_sort_criteria() :: #{
%%   <<"Column">> => list(any()),
%%   <<"SortDirection">> => list(any())
%% }
-type transform_sort_criteria() :: #{binary() => any()}.

%% Example:
%% partition() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DatabaseName">> => string(),
%%   <<"LastAccessTime">> => non_neg_integer(),
%%   <<"LastAnalyzedTime">> => non_neg_integer(),
%%   <<"Parameters">> => map(),
%%   <<"StorageDescriptor">> => storage_descriptor(),
%%   <<"TableName">> => string(),
%%   <<"Values">> => list(string())
%% }
-type partition() :: #{binary() => any()}.

%% Example:
%% list_ml_transforms_request() :: #{
%%   <<"Filter">> => transform_filter_criteria(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Sort">> => transform_sort_criteria(),
%%   <<"Tags">> => map()
%% }
-type list_ml_transforms_request() :: #{binary() => any()}.

%% Example:
%% get_job_bookmark_request() :: #{
%%   <<"JobName">> := string(),
%%   <<"RunId">> => string()
%% }
-type get_job_bookmark_request() :: #{binary() => any()}.

%% Example:
%% delete_column_statistics_task_settings_request() :: #{
%%   <<"DatabaseName">> := string(),
%%   <<"TableName">> := string()
%% }
-type delete_column_statistics_task_settings_request() :: #{binary() => any()}.

%% Example:
%% batch_get_jobs_request() :: #{
%%   <<"JobNames">> := list(string())
%% }
-type batch_get_jobs_request() :: #{binary() => any()}.

%% Example:
%% s3_hudi_catalog_target() :: #{
%%   <<"AdditionalOptions">> => map(),
%%   <<"AutoDataQuality">> => auto_data_quality(),
%%   <<"Database">> => string(),
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"OutputSchemas">> => list(glue_schema()),
%%   <<"PartitionKeys">> => list(list(string())()),
%%   <<"SchemaChangePolicy">> => catalog_schema_change_policy(),
%%   <<"Table">> => string()
%% }
-type s3_hudi_catalog_target() :: #{binary() => any()}.

%% Example:
%% get_data_quality_ruleset_evaluation_run_response() :: #{
%%   <<"AdditionalDataSources">> => map(),
%%   <<"AdditionalRunOptions">> => data_quality_evaluation_run_additional_run_options(),
%%   <<"CompletedOn">> => non_neg_integer(),
%%   <<"DataSource">> => data_source(),
%%   <<"ErrorString">> => string(),
%%   <<"ExecutionTime">> => integer(),
%%   <<"LastModifiedOn">> => non_neg_integer(),
%%   <<"NumberOfWorkers">> => integer(),
%%   <<"ResultIds">> => list(string()),
%%   <<"Role">> => string(),
%%   <<"RulesetNames">> => list(string()),
%%   <<"RunId">> => string(),
%%   <<"StartedOn">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"Timeout">> => integer()
%% }
-type get_data_quality_ruleset_evaluation_run_response() :: #{binary() => any()}.

%% Example:
%% key_schema_element() :: #{
%%   <<"Name">> => string(),
%%   <<"Type">> => string()
%% }
-type key_schema_element() :: #{binary() => any()}.

%% Example:
%% last_crawl_info() :: #{
%%   <<"ErrorMessage">> => string(),
%%   <<"LogGroup">> => string(),
%%   <<"LogStream">> => string(),
%%   <<"MessagePrefix">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any())
%% }
-type last_crawl_info() :: #{binary() => any()}.

%% Example:
%% data_quality_aggregated_metrics() :: #{
%%   <<"TotalRowsFailed">> => float(),
%%   <<"TotalRowsPassed">> => float(),
%%   <<"TotalRowsProcessed">> => float(),
%%   <<"TotalRulesFailed">> => float(),
%%   <<"TotalRulesPassed">> => float(),
%%   <<"TotalRulesProcessed">> => float()
%% }
-type data_quality_aggregated_metrics() :: #{binary() => any()}.

%% Example:
%% code_gen_node() :: #{
%%   <<"Args">> => list(code_gen_node_arg()),
%%   <<"Id">> => string(),
%%   <<"LineNumber">> => integer(),
%%   <<"NodeType">> => string()
%% }
-type code_gen_node() :: #{binary() => any()}.

%% Example:
%% create_table_optimizer_request() :: #{
%%   <<"CatalogId">> := string(),
%%   <<"DatabaseName">> := string(),
%%   <<"TableName">> := string(),
%%   <<"TableOptimizerConfiguration">> := table_optimizer_configuration(),
%%   <<"Type">> := list(any())
%% }
-type create_table_optimizer_request() :: #{binary() => any()}.

%% Example:
%% batch_get_triggers_request() :: #{
%%   <<"TriggerNames">> := list(string())
%% }
-type batch_get_triggers_request() :: #{binary() => any()}.

%% Example:
%% delete_custom_entity_type_request() :: #{
%%   <<"Name">> := string()
%% }
-type delete_custom_entity_type_request() :: #{binary() => any()}.

%% Example:
%% query_schema_version_metadata_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"MetadataList">> => list(metadata_key_value_pair()),
%%   <<"NextToken">> => string(),
%%   <<"SchemaId">> => schema_id(),
%%   <<"SchemaVersionId">> => string(),
%%   <<"SchemaVersionNumber">> => schema_version_number()
%% }
-type query_schema_version_metadata_input() :: #{binary() => any()}.

%% Example:
%% update_integration_table_properties_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"SourceTableConfig">> => source_table_config(),
%%   <<"TableName">> := string(),
%%   <<"TargetTableConfig">> => target_table_config()
%% }
-type update_integration_table_properties_request() :: #{binary() => any()}.

%% Example:
%% get_data_quality_model_result_response() :: #{
%%   <<"CompletedOn">> => non_neg_integer(),
%%   <<"Model">> => list(statistic_model_result())
%% }
-type get_data_quality_model_result_response() :: #{binary() => any()}.

%% Example:
%% list_crawlers_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => map()
%% }
-type list_crawlers_request() :: #{binary() => any()}.

%% Example:
%% list_jobs_response() :: #{
%%   <<"JobNames">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type list_jobs_response() :: #{binary() => any()}.

%% Example:
%% auth_configuration() :: #{
%%   <<"AuthenticationType">> => property(),
%%   <<"BasicAuthenticationProperties">> => map(),
%%   <<"CustomAuthenticationProperties">> => map(),
%%   <<"OAuth2Properties">> => map(),
%%   <<"SecretArn">> => property()
%% }
-type auth_configuration() :: #{binary() => any()}.

%% Example:
%% update_data_quality_ruleset_response() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"Ruleset">> => string()
%% }
-type update_data_quality_ruleset_response() :: #{binary() => any()}.

%% Example:
%% create_job_request() :: #{
%%   <<"AllocatedCapacity">> => integer(),
%%   <<"CodeGenConfigurationNodes">> => map(),
%%   <<"Command">> := job_command(),
%%   <<"Connections">> => connections_list(),
%%   <<"DefaultArguments">> => map(),
%%   <<"Description">> => string(),
%%   <<"ExecutionClass">> => list(any()),
%%   <<"ExecutionProperty">> => execution_property(),
%%   <<"GlueVersion">> => string(),
%%   <<"JobMode">> => list(any()),
%%   <<"JobRunQueuingEnabled">> => boolean(),
%%   <<"LogUri">> => string(),
%%   <<"MaintenanceWindow">> => string(),
%%   <<"MaxCapacity">> => float(),
%%   <<"MaxRetries">> => integer(),
%%   <<"Name">> := string(),
%%   <<"NonOverridableArguments">> => map(),
%%   <<"NotificationProperty">> => notification_property(),
%%   <<"NumberOfWorkers">> => integer(),
%%   <<"Role">> := string(),
%%   <<"SecurityConfiguration">> => string(),
%%   <<"SourceControlDetails">> => source_control_details(),
%%   <<"Tags">> => map(),
%%   <<"Timeout">> => integer(),
%%   <<"WorkerType">> => list(any())
%% }
-type create_job_request() :: #{binary() => any()}.

%% Example:
%% statement() :: #{
%%   <<"Code">> => string(),
%%   <<"CompletedOn">> => float(),
%%   <<"Id">> => integer(),
%%   <<"Output">> => statement_output(),
%%   <<"Progress">> => float(),
%%   <<"StartedOn">> => float(),
%%   <<"State">> => list(any())
%% }
-type statement() :: #{binary() => any()}.

%% Example:
%% start_trigger_response() :: #{
%%   <<"Name">> => string()
%% }
-type start_trigger_response() :: #{binary() => any()}.

%% Example:
%% data_quality_metric_values() :: #{
%%   <<"ActualValue">> => float(),
%%   <<"ExpectedValue">> => float(),
%%   <<"LowerLimit">> => float(),
%%   <<"UpperLimit">> => float()
%% }
-type data_quality_metric_values() :: #{binary() => any()}.

%% Example:
%% get_table_version_response() :: #{
%%   <<"TableVersion">> => table_version()
%% }
-type get_table_version_response() :: #{binary() => any()}.

%% Example:
%% join_column() :: #{
%%   <<"From">> => string(),
%%   <<"Keys">> => list(list(string())())
%% }
-type join_column() :: #{binary() => any()}.

%% Example:
%% get_plan_request() :: #{
%%   <<"AdditionalPlanOptionsMap">> => map(),
%%   <<"Language">> => list(any()),
%%   <<"Location">> => location(),
%%   <<"Mapping">> := list(mapping_entry()),
%%   <<"Sinks">> => list(catalog_entry()),
%%   <<"Source">> := catalog_entry()
%% }
-type get_plan_request() :: #{binary() => any()}.

%% Example:
%% create_grok_classifier_request() :: #{
%%   <<"Classification">> => string(),
%%   <<"CustomPatterns">> => string(),
%%   <<"GrokPattern">> => string(),
%%   <<"Name">> => string()
%% }
-type create_grok_classifier_request() :: #{binary() => any()}.

%% Example:
%% update_workflow_request() :: #{
%%   <<"DefaultRunProperties">> => map(),
%%   <<"Description">> => string(),
%%   <<"MaxConcurrentRuns">> => integer(),
%%   <<"Name">> := string()
%% }
-type update_workflow_request() :: #{binary() => any()}.

%% Example:
%% ml_transform_not_ready_exception() :: #{
%%   <<"Message">> => string()
%% }
-type ml_transform_not_ready_exception() :: #{binary() => any()}.

%% Example:
%% get_connections_response() :: #{
%%   <<"ConnectionList">> => list(connection()),
%%   <<"NextToken">> => string()
%% }
-type get_connections_response() :: #{binary() => any()}.

%% Example:
%% update_schema_response() :: #{
%%   <<"RegistryName">> => string(),
%%   <<"SchemaArn">> => string(),
%%   <<"SchemaName">> => string()
%% }
-type update_schema_response() :: #{binary() => any()}.

%% Example:
%% direct_kinesis_source() :: #{
%%   <<"DataPreviewOptions">> => streaming_data_preview_options(),
%%   <<"DetectSchema">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"StreamingOptions">> => kinesis_streaming_source_options(),
%%   <<"WindowSize">> => integer()
%% }
-type direct_kinesis_source() :: #{binary() => any()}.

%% Example:
%% internal_service_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_service_exception() :: #{binary() => any()}.

%% Example:
%% task_run_properties() :: #{
%%   <<"ExportLabelsTaskRunProperties">> => export_labels_task_run_properties(),
%%   <<"FindMatchesTaskRunProperties">> => find_matches_task_run_properties(),
%%   <<"ImportLabelsTaskRunProperties">> => import_labels_task_run_properties(),
%%   <<"LabelingSetGenerationTaskRunProperties">> => labeling_set_generation_task_run_properties(),
%%   <<"TaskType">> => list(any())
%% }
-type task_run_properties() :: #{binary() => any()}.

%% Example:
%% get_blueprint_run_response() :: #{
%%   <<"BlueprintRun">> => blueprint_run()
%% }
-type get_blueprint_run_response() :: #{binary() => any()}.

%% Example:
%% microsoft_s_q_l_server_catalog_source() :: #{
%%   <<"Database">> => string(),
%%   <<"Name">> => string(),
%%   <<"Table">> => string()
%% }
-type microsoft_s_q_l_server_catalog_source() :: #{binary() => any()}.

%% Example:
%% transform_encryption() :: #{
%%   <<"MlUserDataEncryption">> => ml_user_data_encryption(),
%%   <<"TaskRunSecurityConfigurationName">> => string()
%% }
-type transform_encryption() :: #{binary() => any()}.

%% Example:
%% column_error() :: #{
%%   <<"ColumnName">> => string(),
%%   <<"Error">> => error_detail()
%% }
-type column_error() :: #{binary() => any()}.

%% Example:
%% describe_entity_response() :: #{
%%   <<"Fields">> => list(field()),
%%   <<"NextToken">> => string()
%% }
-type describe_entity_response() :: #{binary() => any()}.

%% Example:
%% code_gen_edge() :: #{
%%   <<"Source">> => string(),
%%   <<"Target">> => string(),
%%   <<"TargetParameter">> => string()
%% }
-type code_gen_edge() :: #{binary() => any()}.

%% Example:
%% create_schema_response() :: #{
%%   <<"Compatibility">> => list(any()),
%%   <<"DataFormat">> => list(any()),
%%   <<"Description">> => string(),
%%   <<"LatestSchemaVersion">> => float(),
%%   <<"NextSchemaVersion">> => float(),
%%   <<"RegistryArn">> => string(),
%%   <<"RegistryName">> => string(),
%%   <<"SchemaArn">> => string(),
%%   <<"SchemaCheckpoint">> => float(),
%%   <<"SchemaName">> => string(),
%%   <<"SchemaStatus">> => list(any()),
%%   <<"SchemaVersionId">> => string(),
%%   <<"SchemaVersionStatus">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type create_schema_response() :: #{binary() => any()}.

%% Example:
%% modify_integration_request() :: #{
%%   <<"DataFilter">> => string(),
%%   <<"Description">> => string(),
%%   <<"IntegrationConfig">> => integration_config(),
%%   <<"IntegrationIdentifier">> := string(),
%%   <<"IntegrationName">> => string()
%% }
-type modify_integration_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagsToRemove">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% target_resource_not_found() :: #{
%%   <<"Message">> => string()
%% }
-type target_resource_not_found() :: #{binary() => any()}.

%% Example:
%% get_tables_request() :: #{
%%   <<"AttributesToGet">> => list(list(any())()),
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> := string(),
%%   <<"Expression">> => string(),
%%   <<"IncludeStatusDetails">> => boolean(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"QueryAsOfTime">> => non_neg_integer(),
%%   <<"TransactionId">> => string()
%% }
-type get_tables_request() :: #{binary() => any()}.

%% Example:
%% get_column_statistics_task_run_request() :: #{
%%   <<"ColumnStatisticsTaskRunId">> := string()
%% }
-type get_column_statistics_task_run_request() :: #{binary() => any()}.

%% Example:
%% postgre_s_q_l_catalog_source() :: #{
%%   <<"Database">> => string(),
%%   <<"Name">> => string(),
%%   <<"Table">> => string()
%% }
-type postgre_s_q_l_catalog_source() :: #{binary() => any()}.

%% Example:
%% invalid_state_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_state_exception() :: #{binary() => any()}.

%% Example:
%% target_table_config() :: #{
%%   <<"PartitionSpec">> => list(integration_partition()),
%%   <<"TargetTableName">> => string(),
%%   <<"UnnestSpec">> => list(any())
%% }
-type target_table_config() :: #{binary() => any()}.

%% Example:
%% status_details() :: #{
%%   <<"RequestedChange">> => table(),
%%   <<"ViewValidations">> => list(view_validation())
%% }
-type status_details() :: #{binary() => any()}.

%% Example:
%% list_data_quality_ruleset_evaluation_runs_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Runs">> => list(data_quality_ruleset_evaluation_run_description())
%% }
-type list_data_quality_ruleset_evaluation_runs_response() :: #{binary() => any()}.

%% Example:
%% labeling_set_generation_task_run_properties() :: #{
%%   <<"OutputS3Path">> => string()
%% }
-type labeling_set_generation_task_run_properties() :: #{binary() => any()}.

%% Example:
%% amazon_redshift_node_data() :: #{
%%   <<"AccessType">> => string(),
%%   <<"Action">> => string(),
%%   <<"AdvancedOptions">> => list(amazon_redshift_advanced_option()),
%%   <<"CatalogDatabase">> => option(),
%%   <<"CatalogRedshiftSchema">> => string(),
%%   <<"CatalogRedshiftTable">> => string(),
%%   <<"CatalogTable">> => option(),
%%   <<"Connection">> => option(),
%%   <<"CrawlerConnection">> => string(),
%%   <<"IamRole">> => option(),
%%   <<"MergeAction">> => string(),
%%   <<"MergeClause">> => string(),
%%   <<"MergeWhenMatched">> => string(),
%%   <<"MergeWhenNotMatched">> => string(),
%%   <<"PostAction">> => string(),
%%   <<"PreAction">> => string(),
%%   <<"SampleQuery">> => string(),
%%   <<"Schema">> => option(),
%%   <<"SelectedColumns">> => list(option()),
%%   <<"SourceType">> => string(),
%%   <<"StagingTable">> => string(),
%%   <<"Table">> => option(),
%%   <<"TablePrefix">> => string(),
%%   <<"TableSchema">> => list(option()),
%%   <<"TempDir">> => string(),
%%   <<"Upsert">> => boolean()
%% }
-type amazon_redshift_node_data() :: #{binary() => any()}.

%% Example:
%% schema_reference() :: #{
%%   <<"SchemaId">> => schema_id(),
%%   <<"SchemaVersionId">> => string(),
%%   <<"SchemaVersionNumber">> => float()
%% }
-type schema_reference() :: #{binary() => any()}.

%% Example:
%% delete_classifier_request() :: #{
%%   <<"Name">> := string()
%% }
-type delete_classifier_request() :: #{binary() => any()}.

%% Example:
%% get_custom_entity_type_request() :: #{
%%   <<"Name">> := string()
%% }
-type get_custom_entity_type_request() :: #{binary() => any()}.

%% Example:
%% column_row_filter() :: #{
%%   <<"ColumnName">> => string(),
%%   <<"RowFilterExpression">> => string()
%% }
-type column_row_filter() :: #{binary() => any()}.

%% Example:
%% list_custom_entity_types_response() :: #{
%%   <<"CustomEntityTypes">> => list(custom_entity_type()),
%%   <<"NextToken">> => string()
%% }
-type list_custom_entity_types_response() :: #{binary() => any()}.

%% Example:
%% stop_column_statistics_task_run_request() :: #{
%%   <<"DatabaseName">> := string(),
%%   <<"TableName">> := string()
%% }
-type stop_column_statistics_task_run_request() :: #{binary() => any()}.

%% Example:
%% connection_type_brief() :: #{
%%   <<"Capabilities">> => capabilities(),
%%   <<"Categories">> => list([string()]()),
%%   <<"ConnectionType">> => list(any()),
%%   <<"ConnectionTypeVariants">> => list(connection_type_variant()),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"LogoUrl">> => string(),
%%   <<"Vendor">> => string()
%% }
-type connection_type_brief() :: #{binary() => any()}.

%% Example:
%% get_catalog_import_status_request() :: #{
%%   <<"CatalogId">> => string()
%% }
-type get_catalog_import_status_request() :: #{binary() => any()}.

%% Example:
%% update_json_classifier_request() :: #{
%%   <<"JsonPath">> => string(),
%%   <<"Name">> => string()
%% }
-type update_json_classifier_request() :: #{binary() => any()}.

%% Example:
%% get_session_request() :: #{
%%   <<"Id">> := string(),
%%   <<"RequestOrigin">> => string()
%% }
-type get_session_request() :: #{binary() => any()}.

%% Example:
%% get_jobs_response() :: #{
%%   <<"Jobs">> => list(job()),
%%   <<"NextToken">> => string()
%% }
-type get_jobs_response() :: #{binary() => any()}.

%% Example:
%% get_table_versions_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"TableName">> := string()
%% }
-type get_table_versions_request() :: #{binary() => any()}.

%% Example:
%% batch_put_data_quality_statistic_annotation_response() :: #{
%%   <<"FailedInclusionAnnotations">> => list(annotation_error())
%% }
-type batch_put_data_quality_statistic_annotation_response() :: #{binary() => any()}.

%% Example:
%% scheduler_transitioning_exception() :: #{
%%   <<"Message">> => string()
%% }
-type scheduler_transitioning_exception() :: #{binary() => any()}.

%% Example:
%% get_blueprint_runs_response() :: #{
%%   <<"BlueprintRuns">> => list(blueprint_run()),
%%   <<"NextToken">> => string()
%% }
-type get_blueprint_runs_response() :: #{binary() => any()}.

%% Example:
%% get_workflow_request() :: #{
%%   <<"IncludeGraph">> => boolean(),
%%   <<"Name">> := string()
%% }
-type get_workflow_request() :: #{binary() => any()}.

%% Example:
%% update_column_statistics_task_settings_response() :: #{

%% }
-type update_column_statistics_task_settings_response() :: #{binary() => any()}.

%% Example:
%% get_glue_identity_center_configuration_response() :: #{
%%   <<"ApplicationArn">> => string(),
%%   <<"InstanceArn">> => string(),
%%   <<"Scopes">> => list(string())
%% }
-type get_glue_identity_center_configuration_response() :: #{binary() => any()}.

%% Example:
%% resource_number_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_number_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% j_db_c_connector_options() :: #{
%%   <<"DataTypeMapping">> => map(),
%%   <<"FilterPredicate">> => string(),
%%   <<"JobBookmarkKeys">> => list(string()),
%%   <<"JobBookmarkKeysSortOrder">> => string(),
%%   <<"LowerBound">> => float(),
%%   <<"NumPartitions">> => float(),
%%   <<"PartitionColumn">> => string(),
%%   <<"UpperBound">> => float()
%% }
-type j_db_c_connector_options() :: #{binary() => any()}.

%% Example:
%% get_integration_resource_property_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type get_integration_resource_property_request() :: #{binary() => any()}.

%% Example:
%% segment() :: #{
%%   <<"SegmentNumber">> => integer(),
%%   <<"TotalSegments">> => integer()
%% }
-type segment() :: #{binary() => any()}.

%% Example:
%% select_fields() :: #{
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"Paths">> => list(list(string())())
%% }
-type select_fields() :: #{binary() => any()}.

%% Example:
%% delete_column_statistics_for_table_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"ColumnName">> := string(),
%%   <<"DatabaseName">> := string(),
%%   <<"TableName">> := string()
%% }
-type delete_column_statistics_for_table_request() :: #{binary() => any()}.

%% Example:
%% stop_column_statistics_task_run_response() :: #{

%% }
-type stop_column_statistics_task_run_response() :: #{binary() => any()}.

%% Example:
%% amazon_redshift_source() :: #{
%%   <<"Data">> => amazon_redshift_node_data(),
%%   <<"Name">> => string()
%% }
-type amazon_redshift_source() :: #{binary() => any()}.

%% Example:
%% batch_delete_connection_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"ConnectionNameList">> := list(string())
%% }
-type batch_delete_connection_request() :: #{binary() => any()}.

%% Example:
%% data_quality_ruleset_evaluation_run_filter() :: #{
%%   <<"DataSource">> => data_source(),
%%   <<"StartedAfter">> => non_neg_integer(),
%%   <<"StartedBefore">> => non_neg_integer()
%% }
-type data_quality_ruleset_evaluation_run_filter() :: #{binary() => any()}.

%% Example:
%% batch_get_workflows_response() :: #{
%%   <<"MissingWorkflows">> => list(string()),
%%   <<"Workflows">> => list(workflow())
%% }
-type batch_get_workflows_response() :: #{binary() => any()}.

%% Example:
%% get_schema_by_definition_input() :: #{
%%   <<"SchemaDefinition">> := string(),
%%   <<"SchemaId">> := schema_id()
%% }
-type get_schema_by_definition_input() :: #{binary() => any()}.

%% Example:
%% get_blueprint_request() :: #{
%%   <<"IncludeBlueprint">> => boolean(),
%%   <<"IncludeParameterSpec">> => boolean(),
%%   <<"Name">> := string()
%% }
-type get_blueprint_request() :: #{binary() => any()}.

%% Example:
%% get_databases_response() :: #{
%%   <<"DatabaseList">> => list(database()),
%%   <<"NextToken">> => string()
%% }
-type get_databases_response() :: #{binary() => any()}.

%% Example:
%% list_data_quality_statistic_annotations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ProfileId">> => string(),
%%   <<"StatisticId">> => string(),
%%   <<"TimestampFilter">> => timestamp_filter()
%% }
-type list_data_quality_statistic_annotations_request() :: #{binary() => any()}.

%% Example:
%% get_catalogs_request() :: #{
%%   <<"IncludeRoot">> => boolean(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ParentCatalogId">> => string(),
%%   <<"Recursive">> => boolean()
%% }
-type get_catalogs_request() :: #{binary() => any()}.

%% Example:
%% filter_value() :: #{
%%   <<"Type">> => list(any()),
%%   <<"Value">> => list(string())
%% }
-type filter_value() :: #{binary() => any()}.

%% Example:
%% import_catalog_to_glue_response() :: #{

%% }
-type import_catalog_to_glue_response() :: #{binary() => any()}.

%% Example:
%% batch_get_workflows_request() :: #{
%%   <<"IncludeGraph">> => boolean(),
%%   <<"Names">> := list(string())
%% }
-type batch_get_workflows_request() :: #{binary() => any()}.

%% Example:
%% stop_trigger_request() :: #{
%%   <<"Name">> := string()
%% }
-type stop_trigger_request() :: #{binary() => any()}.

%% Example:
%% schema_version_number() :: #{
%%   <<"LatestVersion">> => boolean(),
%%   <<"VersionNumber">> => float()
%% }
-type schema_version_number() :: #{binary() => any()}.

%% Example:
%% get_unfiltered_table_metadata_request() :: #{
%%   <<"AuditContext">> => audit_context(),
%%   <<"CatalogId">> := string(),
%%   <<"DatabaseName">> := string(),
%%   <<"Name">> := string(),
%%   <<"ParentResourceArn">> => string(),
%%   <<"Permissions">> => list(list(any())()),
%%   <<"QuerySessionContext">> => query_session_context(),
%%   <<"Region">> => string(),
%%   <<"RootResourceArn">> => string(),
%%   <<"SupportedDialect">> => supported_dialect(),
%%   <<"SupportedPermissionTypes">> := list(list(any())())
%% }
-type get_unfiltered_table_metadata_request() :: #{binary() => any()}.

%% Example:
%% list_data_quality_rule_recommendation_runs_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Runs">> => list(data_quality_rule_recommendation_run_description())
%% }
-type list_data_quality_rule_recommendation_runs_response() :: #{binary() => any()}.

%% Example:
%% get_column_statistics_task_runs_request() :: #{
%%   <<"DatabaseName">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"TableName">> := string()
%% }
-type get_column_statistics_task_runs_request() :: #{binary() => any()}.

%% Example:
%% get_usage_profile_response() :: #{
%%   <<"Configuration">> => profile_configuration(),
%%   <<"CreatedOn">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"LastModifiedOn">> => non_neg_integer(),
%%   <<"Name">> => string()
%% }
-type get_usage_profile_response() :: #{binary() => any()}.

%% Example:
%% delete_user_defined_function_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> := string(),
%%   <<"FunctionName">> := string()
%% }
-type delete_user_defined_function_request() :: #{binary() => any()}.

%% Example:
%% o_auth2_client_application() :: #{
%%   <<"AWSManagedClientApplicationReference">> => string(),
%%   <<"UserManagedClientApplicationClientId">> => string()
%% }
-type o_auth2_client_application() :: #{binary() => any()}.

%% Example:
%% register_schema_version_response() :: #{
%%   <<"SchemaVersionId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"VersionNumber">> => float()
%% }
-type register_schema_version_response() :: #{binary() => any()}.

%% Example:
%% create_integration_table_properties_response() :: #{

%% }
-type create_integration_table_properties_response() :: #{binary() => any()}.

%% Example:
%% stop_crawler_request() :: #{
%%   <<"Name">> := string()
%% }
-type stop_crawler_request() :: #{binary() => any()}.

%% Example:
%% create_custom_entity_type_request() :: #{
%%   <<"ContextWords">> => list(string()),
%%   <<"Name">> := string(),
%%   <<"RegexString">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_custom_entity_type_request() :: #{binary() => any()}.

%% Example:
%% create_usage_profile_response() :: #{
%%   <<"Name">> => string()
%% }
-type create_usage_profile_response() :: #{binary() => any()}.

%% Example:
%% get_unfiltered_partition_metadata_request() :: #{
%%   <<"AuditContext">> => audit_context(),
%%   <<"CatalogId">> := string(),
%%   <<"DatabaseName">> := string(),
%%   <<"PartitionValues">> := list(string()),
%%   <<"QuerySessionContext">> => query_session_context(),
%%   <<"Region">> => string(),
%%   <<"SupportedPermissionTypes">> := list(list(any())()),
%%   <<"TableName">> := string()
%% }
-type get_unfiltered_partition_metadata_request() :: #{binary() => any()}.

%% Example:
%% job_update() :: #{
%%   <<"AllocatedCapacity">> => integer(),
%%   <<"CodeGenConfigurationNodes">> => map(),
%%   <<"Command">> => job_command(),
%%   <<"Connections">> => connections_list(),
%%   <<"DefaultArguments">> => map(),
%%   <<"Description">> => string(),
%%   <<"ExecutionClass">> => list(any()),
%%   <<"ExecutionProperty">> => execution_property(),
%%   <<"GlueVersion">> => string(),
%%   <<"JobMode">> => list(any()),
%%   <<"JobRunQueuingEnabled">> => boolean(),
%%   <<"LogUri">> => string(),
%%   <<"MaintenanceWindow">> => string(),
%%   <<"MaxCapacity">> => float(),
%%   <<"MaxRetries">> => integer(),
%%   <<"NonOverridableArguments">> => map(),
%%   <<"NotificationProperty">> => notification_property(),
%%   <<"NumberOfWorkers">> => integer(),
%%   <<"Role">> => string(),
%%   <<"SecurityConfiguration">> => string(),
%%   <<"SourceControlDetails">> => source_control_details(),
%%   <<"Timeout">> => integer(),
%%   <<"WorkerType">> => list(any())
%% }
-type job_update() :: #{binary() => any()}.

%% Example:
%% find_matches_metrics() :: #{
%%   <<"AreaUnderPRCurve">> => float(),
%%   <<"ColumnImportances">> => list(column_importance()),
%%   <<"ConfusionMatrix">> => confusion_matrix(),
%%   <<"F1">> => float(),
%%   <<"Precision">> => float(),
%%   <<"Recall">> => float()
%% }
-type find_matches_metrics() :: #{binary() => any()}.

%% Example:
%% s3_json_source() :: #{
%%   <<"AdditionalOptions">> => s3_direct_source_additional_options(),
%%   <<"CompressionType">> => list(any()),
%%   <<"Exclusions">> => list(string()),
%%   <<"GroupFiles">> => string(),
%%   <<"GroupSize">> => string(),
%%   <<"JsonPath">> => string(),
%%   <<"MaxBand">> => integer(),
%%   <<"MaxFilesInBand">> => integer(),
%%   <<"Multiline">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"OutputSchemas">> => list(glue_schema()),
%%   <<"Paths">> => list(string()),
%%   <<"Recurse">> => boolean()
%% }
-type s3_json_source() :: #{binary() => any()}.

%% Example:
%% get_classifier_response() :: #{
%%   <<"Classifier">> => classifier()
%% }
-type get_classifier_response() :: #{binary() => any()}.

%% Example:
%% update_usage_profile_response() :: #{
%%   <<"Name">> => string()
%% }
-type update_usage_profile_response() :: #{binary() => any()}.

%% Example:
%% integration_conflict_operation_fault() :: #{
%%   <<"Message">> => string()
%% }
-type integration_conflict_operation_fault() :: #{binary() => any()}.

%% Example:
%% create_session_request() :: #{
%%   <<"Command">> := session_command(),
%%   <<"Connections">> => connections_list(),
%%   <<"DefaultArguments">> => map(),
%%   <<"Description">> => string(),
%%   <<"GlueVersion">> => string(),
%%   <<"Id">> := string(),
%%   <<"IdleTimeout">> => integer(),
%%   <<"MaxCapacity">> => float(),
%%   <<"NumberOfWorkers">> => integer(),
%%   <<"RequestOrigin">> => string(),
%%   <<"Role">> := string(),
%%   <<"SecurityConfiguration">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Timeout">> => integer(),
%%   <<"WorkerType">> => list(any())
%% }
-type create_session_request() :: #{binary() => any()}.

%% Example:
%% update_integration_table_properties_response() :: #{

%% }
-type update_integration_table_properties_response() :: #{binary() => any()}.

%% Example:
%% long_column_statistics_data() :: #{
%%   <<"MaximumValue">> => float(),
%%   <<"MinimumValue">> => float(),
%%   <<"NumberOfDistinctValues">> => float(),
%%   <<"NumberOfNulls">> => float()
%% }
-type long_column_statistics_data() :: #{binary() => any()}.

%% Example:
%% create_dev_endpoint_response() :: #{
%%   <<"Arguments">> => map(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"EndpointName">> => string(),
%%   <<"ExtraJarsS3Path">> => string(),
%%   <<"ExtraPythonLibsS3Path">> => string(),
%%   <<"FailureReason">> => string(),
%%   <<"GlueVersion">> => string(),
%%   <<"NumberOfNodes">> => integer(),
%%   <<"NumberOfWorkers">> => integer(),
%%   <<"RoleArn">> => string(),
%%   <<"SecurityConfiguration">> => string(),
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"Status">> => string(),
%%   <<"SubnetId">> => string(),
%%   <<"VpcId">> => string(),
%%   <<"WorkerType">> => list(any()),
%%   <<"YarnEndpointAddress">> => string(),
%%   <<"ZeppelinRemoteSparkInterpreterPort">> => integer()
%% }
-type create_dev_endpoint_response() :: #{binary() => any()}.

%% Example:
%% batch_get_custom_entity_types_response() :: #{
%%   <<"CustomEntityTypes">> => list(custom_entity_type()),
%%   <<"CustomEntityTypesNotFound">> => list(string())
%% }
-type batch_get_custom_entity_types_response() :: #{binary() => any()}.

%% Example:
%% data_lake_principal() :: #{
%%   <<"DataLakePrincipalIdentifier">> => string()
%% }
-type data_lake_principal() :: #{binary() => any()}.

%% Example:
%% list_statements_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Statements">> => list(statement())
%% }
-type list_statements_response() :: #{binary() => any()}.

%% Example:
%% table_error() :: #{
%%   <<"ErrorDetail">> => error_detail(),
%%   <<"TableName">> => string()
%% }
-type table_error() :: #{binary() => any()}.

%% Example:
%% ml_user_data_encryption() :: #{
%%   <<"KmsKeyId">> => string(),
%%   <<"MlUserDataEncryptionMode">> => list(any())
%% }
-type ml_user_data_encryption() :: #{binary() => any()}.

%% Example:
%% delete_user_defined_function_response() :: #{

%% }
-type delete_user_defined_function_response() :: #{binary() => any()}.

%% Example:
%% schema_column() :: #{
%%   <<"DataType">> => string(),
%%   <<"Name">> => string()
%% }
-type schema_column() :: #{binary() => any()}.

%% Example:
%% binary_column_statistics_data() :: #{
%%   <<"AverageLength">> => float(),
%%   <<"MaximumLength">> => float(),
%%   <<"NumberOfNulls">> => float()
%% }
-type binary_column_statistics_data() :: #{binary() => any()}.

%% Example:
%% get_partition_indexes_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PartitionIndexDescriptorList">> => list(partition_index_descriptor())
%% }
-type get_partition_indexes_response() :: #{binary() => any()}.

%% Example:
%% execution_attempt() :: #{
%%   <<"ColumnStatisticsTaskRunId">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"ExecutionTimestamp">> => non_neg_integer(),
%%   <<"Status">> => list(any())
%% }
-type execution_attempt() :: #{binary() => any()}.

%% Example:
%% create_user_defined_function_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> := string(),
%%   <<"FunctionInput">> := user_defined_function_input()
%% }
-type create_user_defined_function_request() :: #{binary() => any()}.

%% Example:
%% upsert_redshift_target_options() :: #{
%%   <<"ConnectionName">> => string(),
%%   <<"TableLocation">> => string(),
%%   <<"UpsertKeys">> => list(string())
%% }
-type upsert_redshift_target_options() :: #{binary() => any()}.

%% Example:
%% allowed_value() :: #{
%%   <<"Description">> => string(),
%%   <<"Value">> => string()
%% }
-type allowed_value() :: #{binary() => any()}.

%% Example:
%% delete_workflow_response() :: #{
%%   <<"Name">> => string()
%% }
-type delete_workflow_response() :: #{binary() => any()}.

%% Example:
%% s3_hudi_source() :: #{
%%   <<"AdditionalHudiOptions">> => map(),
%%   <<"AdditionalOptions">> => s3_direct_source_additional_options(),
%%   <<"Name">> => string(),
%%   <<"OutputSchemas">> => list(glue_schema()),
%%   <<"Paths">> => list(string())
%% }
-type s3_hudi_source() :: #{binary() => any()}.

%% Example:
%% stop_column_statistics_task_run_schedule_request() :: #{
%%   <<"DatabaseName">> := string(),
%%   <<"TableName">> := string()
%% }
-type stop_column_statistics_task_run_schedule_request() :: #{binary() => any()}.

%% Example:
%% put_workflow_run_properties_response() :: #{

%% }
-type put_workflow_run_properties_response() :: #{binary() => any()}.

%% Example:
%% s3_iceberg_direct_target() :: #{
%%   <<"AdditionalOptions">> => map(),
%%   <<"AutoDataQuality">> => auto_data_quality(),
%%   <<"Compression">> => list(any()),
%%   <<"Format">> => list(any()),
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"NumberTargetPartitions">> => string(),
%%   <<"OutputSchemas">> => list(glue_schema()),
%%   <<"PartitionKeys">> => list(list(string())()),
%%   <<"Path">> => string(),
%%   <<"SchemaChangePolicy">> => direct_schema_change_policy()
%% }
-type s3_iceberg_direct_target() :: #{binary() => any()}.

%% Example:
%% jdbc_target() :: #{
%%   <<"ConnectionName">> => string(),
%%   <<"EnableAdditionalMetadata">> => list(list(any())()),
%%   <<"Exclusions">> => list(string()),
%%   <<"Path">> => string()
%% }
-type jdbc_target() :: #{binary() => any()}.

%% Example:
%% batch_get_blueprints_request() :: #{
%%   <<"IncludeBlueprint">> => boolean(),
%%   <<"IncludeParameterSpec">> => boolean(),
%%   <<"Names">> := list(string())
%% }
-type batch_get_blueprints_request() :: #{binary() => any()}.

%% Example:
%% lineage_configuration() :: #{
%%   <<"CrawlerLineageSettings">> => list(any())
%% }
-type lineage_configuration() :: #{binary() => any()}.

%% Example:
%% fill_missing_values() :: #{
%%   <<"FilledPath">> => string(),
%%   <<"ImputedPath">> => string(),
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string()
%% }
-type fill_missing_values() :: #{binary() => any()}.

%% Example:
%% get_column_statistics_for_table_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"ColumnNames">> := list(string()),
%%   <<"DatabaseName">> := string(),
%%   <<"TableName">> := string()
%% }
-type get_column_statistics_for_table_request() :: #{binary() => any()}.

%% Example:
%% delete_catalog_request() :: #{
%%   <<"CatalogId">> := string()
%% }
-type delete_catalog_request() :: #{binary() => any()}.

%% Example:
%% update_trigger_request() :: #{
%%   <<"Name">> := string(),
%%   <<"TriggerUpdate">> := trigger_update()
%% }
-type update_trigger_request() :: #{binary() => any()}.

%% Example:
%% list_registries_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_registries_input() :: #{binary() => any()}.

%% Example:
%% list_sessions_response() :: #{
%%   <<"Ids">> => list(string()),
%%   <<"NextToken">> => string(),
%%   <<"Sessions">> => list(session())
%% }
-type list_sessions_response() :: #{binary() => any()}.

%% Example:
%% delete_usage_profile_response() :: #{

%% }
-type delete_usage_profile_response() :: #{binary() => any()}.

%% Example:
%% get_partition_response() :: #{
%%   <<"Partition">> => partition()
%% }
-type get_partition_response() :: #{binary() => any()}.

%% Example:
%% batch_get_custom_entity_types_request() :: #{
%%   <<"Names">> := list(string())
%% }
-type batch_get_custom_entity_types_request() :: #{binary() => any()}.

%% Example:
%% get_user_defined_function_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> := string(),
%%   <<"FunctionName">> := string()
%% }
-type get_user_defined_function_request() :: #{binary() => any()}.

%% Example:
%% kinesis_streaming_source_options() :: #{
%%   <<"AddIdleTimeBetweenReads">> => boolean(),
%%   <<"AddRecordTimestamp">> => string(),
%%   <<"AvoidEmptyBatches">> => boolean(),
%%   <<"Classification">> => string(),
%%   <<"Delimiter">> => string(),
%%   <<"DescribeShardInterval">> => float(),
%%   <<"EmitConsumerLagMetrics">> => string(),
%%   <<"EndpointUrl">> => string(),
%%   <<"FanoutConsumerARN">> => string(),
%%   <<"IdleTimeBetweenReadsInMs">> => float(),
%%   <<"MaxFetchRecordsPerShard">> => float(),
%%   <<"MaxFetchTimeInMs">> => float(),
%%   <<"MaxRecordPerRead">> => float(),
%%   <<"MaxRetryIntervalMs">> => float(),
%%   <<"NumRetries">> => integer(),
%%   <<"RetryIntervalMs">> => float(),
%%   <<"RoleArn">> => string(),
%%   <<"RoleSessionName">> => string(),
%%   <<"StartingPosition">> => list(any()),
%%   <<"StartingTimestamp">> => non_neg_integer(),
%%   <<"StreamArn">> => string(),
%%   <<"StreamName">> => string()
%% }
-type kinesis_streaming_source_options() :: #{binary() => any()}.

%% Example:
%% redshift_target() :: #{
%%   <<"Database">> => string(),
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"RedshiftTmpDir">> => string(),
%%   <<"Table">> => string(),
%%   <<"TmpDirIAMRole">> => string(),
%%   <<"UpsertRedshiftOptions">> => upsert_redshift_target_options()
%% }
-type redshift_target() :: #{binary() => any()}.

%% Example:
%% catalog_hudi_source() :: #{
%%   <<"AdditionalHudiOptions">> => map(),
%%   <<"Database">> => string(),
%%   <<"Name">> => string(),
%%   <<"OutputSchemas">> => list(glue_schema()),
%%   <<"Table">> => string()
%% }
-type catalog_hudi_source() :: #{binary() => any()}.

%% Example:
%% column_statistics_task_not_running_exception() :: #{
%%   <<"Message">> => string()
%% }
-type column_statistics_task_not_running_exception() :: #{binary() => any()}.

%% Example:
%% integration_quota_exceeded_fault() :: #{
%%   <<"Message">> => string()
%% }
-type integration_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% configuration_object() :: #{
%%   <<"AllowedValues">> => list(string()),
%%   <<"DefaultValue">> => string(),
%%   <<"MaxValue">> => string(),
%%   <<"MinValue">> => string()
%% }
-type configuration_object() :: #{binary() => any()}.

%% Example:
%% partition_value_list() :: #{
%%   <<"Values">> => list(string())
%% }
-type partition_value_list() :: #{binary() => any()}.

%% Example:
%% delete_crawler_request() :: #{
%%   <<"Name">> := string()
%% }
-type delete_crawler_request() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% backfill_error() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Partitions">> => list(partition_value_list())
%% }
-type backfill_error() :: #{binary() => any()}.

%% Example:
%% governed_catalog_target() :: #{
%%   <<"Database">> => string(),
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"PartitionKeys">> => list(list(string())()),
%%   <<"SchemaChangePolicy">> => catalog_schema_change_policy(),
%%   <<"Table">> => string()
%% }
-type governed_catalog_target() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% list_column_statistics_task_runs_response() :: #{
%%   <<"ColumnStatisticsTaskRunIds">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type list_column_statistics_task_runs_response() :: #{binary() => any()}.

%% Example:
%% get_triggers_request() :: #{
%%   <<"DependentJobName">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_triggers_request() :: #{binary() => any()}.

%% Example:
%% delete_integration_request() :: #{
%%   <<"IntegrationIdentifier">> := string()
%% }
-type delete_integration_request() :: #{binary() => any()}.

%% Example:
%% retention_configuration() :: #{
%%   <<"icebergConfiguration">> => iceberg_retention_configuration()
%% }
-type retention_configuration() :: #{binary() => any()}.

%% Example:
%% workflow_run() :: #{
%%   <<"CompletedOn">> => non_neg_integer(),
%%   <<"ErrorMessage">> => string(),
%%   <<"Graph">> => workflow_graph(),
%%   <<"Name">> => string(),
%%   <<"PreviousRunId">> => string(),
%%   <<"StartedOn">> => non_neg_integer(),
%%   <<"StartingEventBatchCondition">> => starting_event_batch_condition(),
%%   <<"Statistics">> => workflow_run_statistics(),
%%   <<"Status">> => list(any()),
%%   <<"WorkflowRunId">> => string(),
%%   <<"WorkflowRunProperties">> => map()
%% }
-type workflow_run() :: #{binary() => any()}.

%% Example:
%% batch_stop_job_run_request() :: #{
%%   <<"JobName">> := string(),
%%   <<"JobRunIds">> := list(string())
%% }
-type batch_stop_job_run_request() :: #{binary() => any()}.

%% Example:
%% batch_delete_connection_response() :: #{
%%   <<"Errors">> => map(),
%%   <<"Succeeded">> => list(string())
%% }
-type batch_delete_connection_response() :: #{binary() => any()}.

%% Example:
%% data_quality_rule_result() :: #{
%%   <<"Description">> => string(),
%%   <<"EvaluatedMetrics">> => map(),
%%   <<"EvaluatedRule">> => string(),
%%   <<"EvaluationMessage">> => string(),
%%   <<"Name">> => string(),
%%   <<"Result">> => list(any()),
%%   <<"RuleMetrics">> => map()
%% }
-type data_quality_rule_result() :: #{binary() => any()}.

%% Example:
%% update_registry_input() :: #{
%%   <<"Description">> := string(),
%%   <<"RegistryId">> := registry_id()
%% }
-type update_registry_input() :: #{binary() => any()}.

%% Example:
%% batch_put_data_quality_statistic_annotation_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"InclusionAnnotations">> := list(datapoint_inclusion_annotation())
%% }
-type batch_put_data_quality_statistic_annotation_request() :: #{binary() => any()}.

%% Example:
%% start_job_run_response() :: #{
%%   <<"JobRunId">> => string()
%% }
-type start_job_run_response() :: #{binary() => any()}.

%% Example:
%% delete_ml_transform_request() :: #{
%%   <<"TransformId">> := string()
%% }
-type delete_ml_transform_request() :: #{binary() => any()}.

%% Example:
%% start_blueprint_run_response() :: #{
%%   <<"RunId">> => string()
%% }
-type start_blueprint_run_response() :: #{binary() => any()}.

%% Example:
%% check_schema_version_validity_response() :: #{
%%   <<"Error">> => string(),
%%   <<"Valid">> => boolean()
%% }
-type check_schema_version_validity_response() :: #{binary() => any()}.

%% Example:
%% put_data_catalog_encryption_settings_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DataCatalogEncryptionSettings">> := data_catalog_encryption_settings()
%% }
-type put_data_catalog_encryption_settings_request() :: #{binary() => any()}.

%% Example:
%% create_schema_input() :: #{
%%   <<"Compatibility">> => list(any()),
%%   <<"DataFormat">> := list(any()),
%%   <<"Description">> => string(),
%%   <<"RegistryId">> => registry_id(),
%%   <<"SchemaDefinition">> => string(),
%%   <<"SchemaName">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_schema_input() :: #{binary() => any()}.

%% Example:
%% update_iceberg_table_input() :: #{
%%   <<"Updates">> => list(iceberg_table_update())
%% }
-type update_iceberg_table_input() :: #{binary() => any()}.

%% Example:
%% get_dev_endpoint_response() :: #{
%%   <<"DevEndpoint">> => dev_endpoint()
%% }
-type get_dev_endpoint_response() :: #{binary() => any()}.

%% Example:
%% put_data_quality_profile_annotation_response() :: #{

%% }
-type put_data_quality_profile_annotation_response() :: #{binary() => any()}.

%% Example:
%% delete_column_statistics_for_partition_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"ColumnName">> := string(),
%%   <<"DatabaseName">> := string(),
%%   <<"PartitionValues">> := list(string()),
%%   <<"TableName">> := string()
%% }
-type delete_column_statistics_for_partition_request() :: #{binary() => any()}.

%% Example:
%% create_trigger_response() :: #{
%%   <<"Name">> => string()
%% }
-type create_trigger_response() :: #{binary() => any()}.

%% Example:
%% delete_session_response() :: #{
%%   <<"Id">> => string()
%% }
-type delete_session_response() :: #{binary() => any()}.

%% Example:
%% get_dataflow_graph_request() :: #{
%%   <<"PythonScript">> => string()
%% }
-type get_dataflow_graph_request() :: #{binary() => any()}.

%% Example:
%% sql_alias() :: #{
%%   <<"Alias">> => string(),
%%   <<"From">> => string()
%% }
-type sql_alias() :: #{binary() => any()}.

%% Example:
%% get_jobs_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_jobs_request() :: #{binary() => any()}.

%% Example:
%% get_data_quality_rule_recommendation_run_response() :: #{
%%   <<"CompletedOn">> => non_neg_integer(),
%%   <<"CreatedRulesetName">> => string(),
%%   <<"DataQualitySecurityConfiguration">> => string(),
%%   <<"DataSource">> => data_source(),
%%   <<"ErrorString">> => string(),
%%   <<"ExecutionTime">> => integer(),
%%   <<"LastModifiedOn">> => non_neg_integer(),
%%   <<"NumberOfWorkers">> => integer(),
%%   <<"RecommendedRuleset">> => string(),
%%   <<"Role">> => string(),
%%   <<"RunId">> => string(),
%%   <<"StartedOn">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"Timeout">> => integer()
%% }
-type get_data_quality_rule_recommendation_run_response() :: #{binary() => any()}.

%% Example:
%% s3_catalog_iceberg_source() :: #{
%%   <<"AdditionalIcebergOptions">> => map(),
%%   <<"Database">> => string(),
%%   <<"Name">> => string(),
%%   <<"OutputSchemas">> => list(glue_schema()),
%%   <<"Table">> => string()
%% }
-type s3_catalog_iceberg_source() :: #{binary() => any()}.

%% Example:
%% describe_connection_type_response() :: #{
%%   <<"AthenaConnectionProperties">> => map(),
%%   <<"AuthenticationConfiguration">> => auth_configuration(),
%%   <<"Capabilities">> => capabilities(),
%%   <<"ComputeEnvironmentConfigurations">> => map(),
%%   <<"ConnectionOptions">> => map(),
%%   <<"ConnectionProperties">> => map(),
%%   <<"ConnectionType">> => string(),
%%   <<"Description">> => string(),
%%   <<"PhysicalConnectionRequirements">> => map(),
%%   <<"PythonConnectionProperties">> => map(),
%%   <<"SparkConnectionProperties">> => map()
%% }
-type describe_connection_type_response() :: #{binary() => any()}.

%% Example:
%% dynamo_db_target() :: #{
%%   <<"Path">> => string(),
%%   <<"scanAll">> => boolean(),
%%   <<"scanRate">> => float()
%% }
-type dynamo_db_target() :: #{binary() => any()}.

%% Example:
%% s3_delta_direct_target() :: #{
%%   <<"AdditionalOptions">> => map(),
%%   <<"AutoDataQuality">> => auto_data_quality(),
%%   <<"Compression">> => list(any()),
%%   <<"Format">> => list(any()),
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"NumberTargetPartitions">> => string(),
%%   <<"PartitionKeys">> => list(list(string())()),
%%   <<"Path">> => string(),
%%   <<"SchemaChangePolicy">> => direct_schema_change_policy()
%% }
-type s3_delta_direct_target() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% s3_encryption() :: #{
%%   <<"KmsKeyArn">> => string(),
%%   <<"S3EncryptionMode">> => list(any())
%% }
-type s3_encryption() :: #{binary() => any()}.

%% Example:
%% create_x_ml_classifier_request() :: #{
%%   <<"Classification">> => string(),
%%   <<"Name">> => string(),
%%   <<"RowTag">> => string()
%% }
-type create_x_ml_classifier_request() :: #{binary() => any()}.

%% Example:
%% iceberg_orphan_file_deletion_metrics() :: #{
%%   <<"DpuHours">> => float(),
%%   <<"JobDurationInHour">> => float(),
%%   <<"NumberOfDpus">> => integer(),
%%   <<"NumberOfOrphanFilesDeleted">> => float()
%% }
-type iceberg_orphan_file_deletion_metrics() :: #{binary() => any()}.

%% Example:
%% get_workflow_run_properties_response() :: #{
%%   <<"RunProperties">> => map()
%% }
-type get_workflow_run_properties_response() :: #{binary() => any()}.

%% Example:
%% orphan_file_deletion_metrics() :: #{
%%   <<"IcebergMetrics">> => iceberg_orphan_file_deletion_metrics()
%% }
-type orphan_file_deletion_metrics() :: #{binary() => any()}.

%% Example:
%% statistic_model_result() :: #{
%%   <<"ActualValue">> => float(),
%%   <<"Date">> => non_neg_integer(),
%%   <<"InclusionAnnotation">> => list(any()),
%%   <<"LowerBound">> => float(),
%%   <<"PredictedValue">> => float(),
%%   <<"UpperBound">> => float()
%% }
-type statistic_model_result() :: #{binary() => any()}.

%% Example:
%% update_job_request() :: #{
%%   <<"JobName">> := string(),
%%   <<"JobUpdate">> := job_update()
%% }
-type update_job_request() :: #{binary() => any()}.

%% Example:
%% batch_get_partition_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> := string(),
%%   <<"PartitionsToGet">> := list(partition_value_list()),
%%   <<"TableName">> := string()
%% }
-type batch_get_partition_request() :: #{binary() => any()}.

%% Example:
%% batch_get_partition_response() :: #{
%%   <<"Partitions">> => list(partition()),
%%   <<"UnprocessedKeys">> => list(partition_value_list())
%% }
-type batch_get_partition_response() :: #{binary() => any()}.

%% Example:
%% schema_version_error_item() :: #{
%%   <<"ErrorDetails">> => error_details(),
%%   <<"VersionNumber">> => float()
%% }
-type schema_version_error_item() :: #{binary() => any()}.

%% Example:
%% get_glue_identity_center_configuration_request() :: #{

%% }
-type get_glue_identity_center_configuration_request() :: #{binary() => any()}.

%% Example:
%% start_crawler_schedule_response() :: #{

%% }
-type start_crawler_schedule_response() :: #{binary() => any()}.

%% Example:
%% iceberg_retention_metrics() :: #{
%%   <<"DpuHours">> => float(),
%%   <<"JobDurationInHour">> => float(),
%%   <<"NumberOfDataFilesDeleted">> => float(),
%%   <<"NumberOfDpus">> => integer(),
%%   <<"NumberOfManifestFilesDeleted">> => float(),
%%   <<"NumberOfManifestListsDeleted">> => float()
%% }
-type iceberg_retention_metrics() :: #{binary() => any()}.

%% Example:
%% get_mapping_response() :: #{
%%   <<"Mapping">> => list(mapping_entry())
%% }
-type get_mapping_response() :: #{binary() => any()}.

%% Example:
%% get_dataflow_graph_response() :: #{
%%   <<"DagEdges">> => list(code_gen_edge()),
%%   <<"DagNodes">> => list(code_gen_node())
%% }
-type get_dataflow_graph_response() :: #{binary() => any()}.

%% Example:
%% create_table_response() :: #{

%% }
-type create_table_response() :: #{binary() => any()}.

%% Example:
%% metric_based_observation() :: #{
%%   <<"MetricName">> => string(),
%%   <<"MetricValues">> => data_quality_metric_values(),
%%   <<"NewRules">> => list(string()),
%%   <<"StatisticId">> => string()
%% }
-type metric_based_observation() :: #{binary() => any()}.

%% Example:
%% update_source_control_from_job_response() :: #{
%%   <<"JobName">> => string()
%% }
-type update_source_control_from_job_response() :: #{binary() => any()}.

%% Example:
%% get_ml_transforms_request() :: #{
%%   <<"Filter">> => transform_filter_criteria(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Sort">> => transform_sort_criteria()
%% }
-type get_ml_transforms_request() :: #{binary() => any()}.

%% Example:
%% connection() :: #{
%%   <<"AthenaProperties">> => map(),
%%   <<"AuthenticationConfiguration">> => authentication_configuration(),
%%   <<"CompatibleComputeEnvironments">> => list(list(any())()),
%%   <<"ConnectionProperties">> => map(),
%%   <<"ConnectionSchemaVersion">> => integer(),
%%   <<"ConnectionType">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"LastConnectionValidationTime">> => non_neg_integer(),
%%   <<"LastUpdatedBy">> => string(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"MatchCriteria">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"PhysicalConnectionRequirements">> => physical_connection_requirements(),
%%   <<"PythonProperties">> => map(),
%%   <<"SparkProperties">> => map(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => string()
%% }
-type connection() :: #{binary() => any()}.

%% Example:
%% update_table_optimizer_response() :: #{

%% }
-type update_table_optimizer_response() :: #{binary() => any()}.

%% Example:
%% get_schema_versions_diff_input() :: #{
%%   <<"FirstSchemaVersionNumber">> := schema_version_number(),
%%   <<"SchemaDiffType">> := list(any()),
%%   <<"SchemaId">> := schema_id(),
%%   <<"SecondSchemaVersionNumber">> := schema_version_number()
%% }
-type get_schema_versions_diff_input() :: #{binary() => any()}.

%% Example:
%% get_connections_filter() :: #{
%%   <<"ConnectionSchemaVersion">> => integer(),
%%   <<"ConnectionType">> => list(any()),
%%   <<"MatchCriteria">> => list(string())
%% }
-type get_connections_filter() :: #{binary() => any()}.

%% Example:
%% s3_target() :: #{
%%   <<"ConnectionName">> => string(),
%%   <<"DlqEventQueueArn">> => string(),
%%   <<"EventQueueArn">> => string(),
%%   <<"Exclusions">> => list(string()),
%%   <<"Path">> => string(),
%%   <<"SampleSize">> => integer()
%% }
-type s3_target() :: #{binary() => any()}.

%% Example:
%% start_import_labels_task_run_request() :: #{
%%   <<"InputS3Path">> := string(),
%%   <<"ReplaceAllLabels">> => boolean(),
%%   <<"TransformId">> := string()
%% }
-type start_import_labels_task_run_request() :: #{binary() => any()}.

%% Example:
%% catalog_import_status() :: #{
%%   <<"ImportCompleted">> => boolean(),
%%   <<"ImportTime">> => non_neg_integer(),
%%   <<"ImportedBy">> => string()
%% }
-type catalog_import_status() :: #{binary() => any()}.

%% Example:
%% update_schema_input() :: #{
%%   <<"Compatibility">> => list(any()),
%%   <<"Description">> => string(),
%%   <<"SchemaId">> := schema_id(),
%%   <<"SchemaVersionNumber">> => schema_version_number()
%% }
-type update_schema_input() :: #{binary() => any()}.

%% Example:
%% crawls_filter() :: #{
%%   <<"FieldName">> => list(any()),
%%   <<"FieldValue">> => string(),
%%   <<"FilterOperator">> => list(any())
%% }
-type crawls_filter() :: #{binary() => any()}.

%% Example:
%% delete_data_quality_ruleset_response() :: #{

%% }
-type delete_data_quality_ruleset_response() :: #{binary() => any()}.

%% Example:
%% workflow_graph() :: #{
%%   <<"Edges">> => list(edge()),
%%   <<"Nodes">> => list(node())
%% }
-type workflow_graph() :: #{binary() => any()}.

%% Example:
%% get_integration_resource_property_response() :: #{
%%   <<"ResourceArn">> => string(),
%%   <<"SourceProcessingProperties">> => source_processing_properties(),
%%   <<"TargetProcessingProperties">> => target_processing_properties()
%% }
-type get_integration_resource_property_response() :: #{binary() => any()}.

%% Example:
%% cancel_data_quality_rule_recommendation_run_response() :: #{

%% }
-type cancel_data_quality_rule_recommendation_run_response() :: #{binary() => any()}.

%% Example:
%% list_triggers_request() :: #{
%%   <<"DependentJobName">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => map()
%% }
-type list_triggers_request() :: #{binary() => any()}.

%% Example:
%% start_workflow_run_request() :: #{
%%   <<"Name">> := string(),
%%   <<"RunProperties">> => map()
%% }
-type start_workflow_run_request() :: #{binary() => any()}.

%% Example:
%% dynamo_db_e_l_t_connector_source() :: #{
%%   <<"ConnectionOptions">> => d_db_e_l_t_connection_options(),
%%   <<"Name">> => string(),
%%   <<"OutputSchemas">> => list(glue_schema())
%% }
-type dynamo_db_e_l_t_connector_source() :: #{binary() => any()}.

%% Example:
%% stop_crawler_schedule_response() :: #{

%% }
-type stop_crawler_schedule_response() :: #{binary() => any()}.

%% Example:
%% delete_partition_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> := string(),
%%   <<"PartitionValues">> := list(string()),
%%   <<"TableName">> := string()
%% }
-type delete_partition_request() :: #{binary() => any()}.

%% Example:
%% update_user_defined_function_response() :: #{

%% }
-type update_user_defined_function_response() :: #{binary() => any()}.

%% Example:
%% federated_table() :: #{
%%   <<"ConnectionName">> => string(),
%%   <<"ConnectionType">> => string(),
%%   <<"DatabaseIdentifier">> => string(),
%%   <<"Identifier">> => string()
%% }
-type federated_table() :: #{binary() => any()}.

%% Example:
%% get_column_statistics_for_partition_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"ColumnNames">> := list(string()),
%%   <<"DatabaseName">> := string(),
%%   <<"PartitionValues">> := list(string()),
%%   <<"TableName">> := string()
%% }
-type get_column_statistics_for_partition_request() :: #{binary() => any()}.

%% Example:
%% batch_get_dev_endpoints_request() :: #{
%%   <<"DevEndpointNames">> := list(string())
%% }
-type batch_get_dev_endpoints_request() :: #{binary() => any()}.

%% Example:
%% idempotent_parameter_mismatch_exception() :: #{
%%   <<"Message">> => string()
%% }
-type idempotent_parameter_mismatch_exception() :: #{binary() => any()}.

%% Example:
%% crawler_running_exception() :: #{
%%   <<"Message">> => string()
%% }
-type crawler_running_exception() :: #{binary() => any()}.

%% Example:
%% grok_classifier() :: #{
%%   <<"Classification">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"CustomPatterns">> => string(),
%%   <<"GrokPattern">> => string(),
%%   <<"LastUpdated">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Version">> => float()
%% }
-type grok_classifier() :: #{binary() => any()}.

%% Example:
%% stop_trigger_response() :: #{
%%   <<"Name">> => string()
%% }
-type stop_trigger_response() :: #{binary() => any()}.

%% Example:
%% join() :: #{
%%   <<"Columns">> => list(join_column()),
%%   <<"Inputs">> => list(string()),
%%   <<"JoinType">> => list(any()),
%%   <<"Name">> => string()
%% }
-type join() :: #{binary() => any()}.

%% Example:
%% metadata_info() :: #{
%%   <<"CreatedTime">> => string(),
%%   <<"MetadataValue">> => string(),
%%   <<"OtherMetadataValueList">> => list(other_metadata_value_list_item())
%% }
-type metadata_info() :: #{binary() => any()}.

%% Example:
%% recipe_action() :: #{
%%   <<"Operation">> => string(),
%%   <<"Parameters">> => map()
%% }
-type recipe_action() :: #{binary() => any()}.

%% Example:
%% find_matches_task_run_properties() :: #{
%%   <<"JobId">> => string(),
%%   <<"JobName">> => string(),
%%   <<"JobRunId">> => string()
%% }
-type find_matches_task_run_properties() :: #{binary() => any()}.

%% Example:
%% get_job_runs_response() :: #{
%%   <<"JobRuns">> => list(job_run()),
%%   <<"NextToken">> => string()
%% }
-type get_job_runs_response() :: #{binary() => any()}.

%% Example:
%% governed_catalog_source() :: #{
%%   <<"AdditionalOptions">> => s3_source_additional_options(),
%%   <<"Database">> => string(),
%%   <<"Name">> => string(),
%%   <<"PartitionPredicate">> => string(),
%%   <<"Table">> => string()
%% }
-type governed_catalog_source() :: #{binary() => any()}.

%% Example:
%% data_quality_ruleset_list_details() :: #{
%%   <<"CreatedOn">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"LastModifiedOn">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"RecommendationRunId">> => string(),
%%   <<"RuleCount">> => integer(),
%%   <<"TargetTable">> => data_quality_target_table()
%% }
-type data_quality_ruleset_list_details() :: #{binary() => any()}.

%% Example:
%% batch_update_partition_request_entry() :: #{
%%   <<"PartitionInput">> => partition_input(),
%%   <<"PartitionValueList">> => list(string())
%% }
-type batch_update_partition_request_entry() :: #{binary() => any()}.

%% Example:
%% source_control_details() :: #{
%%   <<"AuthStrategy">> => list(any()),
%%   <<"AuthToken">> => string(),
%%   <<"Branch">> => string(),
%%   <<"Folder">> => string(),
%%   <<"LastCommitId">> => string(),
%%   <<"Owner">> => string(),
%%   <<"Provider">> => list(any()),
%%   <<"Repository">> => string()
%% }
-type source_control_details() :: #{binary() => any()}.

%% Example:
%% update_grok_classifier_request() :: #{
%%   <<"Classification">> => string(),
%%   <<"CustomPatterns">> => string(),
%%   <<"GrokPattern">> => string(),
%%   <<"Name">> => string()
%% }
-type update_grok_classifier_request() :: #{binary() => any()}.

%% Example:
%% list_workflows_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_workflows_request() :: #{binary() => any()}.

%% Example:
%% no_schedule_exception() :: #{
%%   <<"Message">> => string()
%% }
-type no_schedule_exception() :: #{binary() => any()}.

%% Example:
%% s3_hyper_direct_target() :: #{
%%   <<"AutoDataQuality">> => auto_data_quality(),
%%   <<"Compression">> => list(any()),
%%   <<"Format">> => list(any()),
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"OutputSchemas">> => list(glue_schema()),
%%   <<"PartitionKeys">> => list(list(string())()),
%%   <<"Path">> => string(),
%%   <<"SchemaChangePolicy">> => direct_schema_change_policy()
%% }
-type s3_hyper_direct_target() :: #{binary() => any()}.

%% Example:
%% table_optimizer() :: #{
%%   <<"configuration">> => table_optimizer_configuration(),
%%   <<"configurationSource">> => list(any()),
%%   <<"lastRun">> => table_optimizer_run(),
%%   <<"type">> => list(any())
%% }
-type table_optimizer() :: #{binary() => any()}.

%% Example:
%% spark_connector_source() :: #{
%%   <<"AdditionalOptions">> => map(),
%%   <<"ConnectionName">> => string(),
%%   <<"ConnectionType">> => string(),
%%   <<"ConnectorName">> => string(),
%%   <<"Name">> => string(),
%%   <<"OutputSchemas">> => list(glue_schema())
%% }
-type spark_connector_source() :: #{binary() => any()}.

%% Example:
%% create_data_quality_ruleset_response() :: #{
%%   <<"Name">> => string()
%% }
-type create_data_quality_ruleset_response() :: #{binary() => any()}.

%% Example:
%% delete_schema_response() :: #{
%%   <<"SchemaArn">> => string(),
%%   <<"SchemaName">> => string(),
%%   <<"Status">> => list(any())
%% }
-type delete_schema_response() :: #{binary() => any()}.

%% Example:
%% delete_table_version_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> := string(),
%%   <<"TableName">> := string(),
%%   <<"VersionId">> := string()
%% }
-type delete_table_version_request() :: #{binary() => any()}.

%% Example:
%% d_db_e_l_t_connection_options() :: #{
%%   <<"DynamodbExport">> => list(any()),
%%   <<"DynamodbS3Bucket">> => string(),
%%   <<"DynamodbS3BucketOwner">> => string(),
%%   <<"DynamodbS3Prefix">> => string(),
%%   <<"DynamodbStsRoleArn">> => string(),
%%   <<"DynamodbTableArn">> => string(),
%%   <<"DynamodbUnnestDDBJson">> => boolean()
%% }
-type d_db_e_l_t_connection_options() :: #{binary() => any()}.

%% Example:
%% recipe() :: #{
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"RecipeReference">> => recipe_reference(),
%%   <<"RecipeSteps">> => list(recipe_step())
%% }
-type recipe() :: #{binary() => any()}.

%% Example:
%% get_blueprint_response() :: #{
%%   <<"Blueprint">> => blueprint()
%% }
-type get_blueprint_response() :: #{binary() => any()}.

%% Example:
%% get_blueprint_runs_request() :: #{
%%   <<"BlueprintName">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_blueprint_runs_request() :: #{binary() => any()}.

%% Example:
%% route() :: #{
%%   <<"GroupFiltersList">> => list(group_filters()),
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string()
%% }
-type route() :: #{binary() => any()}.

%% Example:
%% catalog_entry() :: #{
%%   <<"DatabaseName">> => string(),
%%   <<"TableName">> => string()
%% }
-type catalog_entry() :: #{binary() => any()}.

%% Example:
%% my_s_q_l_catalog_source() :: #{
%%   <<"Database">> => string(),
%%   <<"Name">> => string(),
%%   <<"Table">> => string()
%% }
-type my_s_q_l_catalog_source() :: #{binary() => any()}.

%% Example:
%% workflow() :: #{
%%   <<"BlueprintDetails">> => blueprint_details(),
%%   <<"CreatedOn">> => non_neg_integer(),
%%   <<"DefaultRunProperties">> => map(),
%%   <<"Description">> => string(),
%%   <<"Graph">> => workflow_graph(),
%%   <<"LastModifiedOn">> => non_neg_integer(),
%%   <<"LastRun">> => workflow_run(),
%%   <<"MaxConcurrentRuns">> => integer(),
%%   <<"Name">> => string()
%% }
-type workflow() :: #{binary() => any()}.

%% Example:
%% get_ml_task_runs_request() :: #{
%%   <<"Filter">> => task_run_filter_criteria(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Sort">> => task_run_sort_criteria(),
%%   <<"TransformId">> := string()
%% }
-type get_ml_task_runs_request() :: #{binary() => any()}.

%% Example:
%% view_validation() :: #{
%%   <<"Dialect">> => list(any()),
%%   <<"DialectVersion">> => string(),
%%   <<"Error">> => error_detail(),
%%   <<"State">> => list(any()),
%%   <<"UpdateTime">> => non_neg_integer(),
%%   <<"ViewValidationText">> => string()
%% }
-type view_validation() :: #{binary() => any()}.

%% Example:
%% field() :: #{
%%   <<"CustomProperties">> => map(),
%%   <<"Description">> => string(),
%%   <<"FieldName">> => string(),
%%   <<"FieldType">> => list(any()),
%%   <<"IsCreateable">> => boolean(),
%%   <<"IsDefaultOnCreate">> => boolean(),
%%   <<"IsFilterable">> => boolean(),
%%   <<"IsNullable">> => boolean(),
%%   <<"IsPartitionable">> => boolean(),
%%   <<"IsPrimaryKey">> => boolean(),
%%   <<"IsRetrievable">> => boolean(),
%%   <<"IsUpdateable">> => boolean(),
%%   <<"IsUpsertable">> => boolean(),
%%   <<"Label">> => string(),
%%   <<"NativeDataType">> => [string()],
%%   <<"ParentField">> => [string()],
%%   <<"SupportedFilterOperators">> => list(list(any())()),
%%   <<"SupportedValues">> => list([string()]())
%% }
-type field() :: #{binary() => any()}.

%% Example:
%% illegal_workflow_state_exception() :: #{
%%   <<"Message">> => string()
%% }
-type illegal_workflow_state_exception() :: #{binary() => any()}.

%% Example:
%% datapoint_inclusion_annotation() :: #{
%%   <<"InclusionAnnotation">> => list(any()),
%%   <<"ProfileId">> => string(),
%%   <<"StatisticId">> => string()
%% }
-type datapoint_inclusion_annotation() :: #{binary() => any()}.

%% Example:
%% sort_criterion() :: #{
%%   <<"FieldName">> => string(),
%%   <<"Sort">> => list(any())
%% }
-type sort_criterion() :: #{binary() => any()}.

%% Example:
%% glue_studio_schema_column() :: #{
%%   <<"GlueStudioType">> => string(),
%%   <<"Name">> => string(),
%%   <<"Type">> => string()
%% }
-type glue_studio_schema_column() :: #{binary() => any()}.

%% Example:
%% update_crawler_request() :: #{
%%   <<"Classifiers">> => list(string()),
%%   <<"Configuration">> => string(),
%%   <<"CrawlerSecurityConfiguration">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"Description">> => string(),
%%   <<"LakeFormationConfiguration">> => lake_formation_configuration(),
%%   <<"LineageConfiguration">> => lineage_configuration(),
%%   <<"Name">> := string(),
%%   <<"RecrawlPolicy">> => recrawl_policy(),
%%   <<"Role">> => string(),
%%   <<"Schedule">> => string(),
%%   <<"SchemaChangePolicy">> => schema_change_policy(),
%%   <<"TablePrefix">> => string(),
%%   <<"Targets">> => crawler_targets()
%% }
-type update_crawler_request() :: #{binary() => any()}.

%% Example:
%% create_classifier_request() :: #{
%%   <<"CsvClassifier">> => create_csv_classifier_request(),
%%   <<"GrokClassifier">> => create_grok_classifier_request(),
%%   <<"JsonClassifier">> => create_json_classifier_request(),
%%   <<"XMLClassifier">> => create_x_ml_classifier_request()
%% }
-type create_classifier_request() :: #{binary() => any()}.

%% Example:
%% get_security_configuration_request() :: #{
%%   <<"Name">> := string()
%% }
-type get_security_configuration_request() :: #{binary() => any()}.

%% Example:
%% get_tags_response() :: #{
%%   <<"Tags">> => map()
%% }
-type get_tags_response() :: #{binary() => any()}.

%% Example:
%% catalog_iceberg_source() :: #{
%%   <<"AdditionalIcebergOptions">> => map(),
%%   <<"Database">> => string(),
%%   <<"Name">> => string(),
%%   <<"OutputSchemas">> => list(glue_schema()),
%%   <<"Table">> => string()
%% }
-type catalog_iceberg_source() :: #{binary() => any()}.

%% Example:
%% get_data_quality_rule_recommendation_run_request() :: #{
%%   <<"RunId">> := string()
%% }
-type get_data_quality_rule_recommendation_run_request() :: #{binary() => any()}.

%% Example:
%% direct_schema_change_policy() :: #{
%%   <<"Database">> => string(),
%%   <<"EnableUpdateCatalog">> => boolean(),
%%   <<"Table">> => string(),
%%   <<"UpdateBehavior">> => list(any())
%% }
-type direct_schema_change_policy() :: #{binary() => any()}.

%% Example:
%% create_crawler_request() :: #{
%%   <<"Classifiers">> => list(string()),
%%   <<"Configuration">> => string(),
%%   <<"CrawlerSecurityConfiguration">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"Description">> => string(),
%%   <<"LakeFormationConfiguration">> => lake_formation_configuration(),
%%   <<"LineageConfiguration">> => lineage_configuration(),
%%   <<"Name">> := string(),
%%   <<"RecrawlPolicy">> => recrawl_policy(),
%%   <<"Role">> := string(),
%%   <<"Schedule">> => string(),
%%   <<"SchemaChangePolicy">> => schema_change_policy(),
%%   <<"TablePrefix">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Targets">> := crawler_targets()
%% }
-type create_crawler_request() :: #{binary() => any()}.

%% Example:
%% put_workflow_run_properties_request() :: #{
%%   <<"Name">> := string(),
%%   <<"RunId">> := string(),
%%   <<"RunProperties">> := map()
%% }
-type put_workflow_run_properties_request() :: #{binary() => any()}.

%% Example:
%% delete_schema_versions_response() :: #{
%%   <<"SchemaVersionErrors">> => list(schema_version_error_item())
%% }
-type delete_schema_versions_response() :: #{binary() => any()}.

%% Example:
%% direct_kafka_source() :: #{
%%   <<"DataPreviewOptions">> => streaming_data_preview_options(),
%%   <<"DetectSchema">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"StreamingOptions">> => kafka_streaming_source_options(),
%%   <<"WindowSize">> => integer()
%% }
-type direct_kafka_source() :: #{binary() => any()}.

%% Example:
%% select_from_collection() :: #{
%%   <<"Index">> => integer(),
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string()
%% }
-type select_from_collection() :: #{binary() => any()}.

%% Example:
%% delete_partition_response() :: #{

%% }
-type delete_partition_response() :: #{binary() => any()}.

%% Example:
%% s3_glue_parquet_target() :: #{
%%   <<"AutoDataQuality">> => auto_data_quality(),
%%   <<"Compression">> => list(any()),
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"NumberTargetPartitions">> => string(),
%%   <<"PartitionKeys">> => list(list(string())()),
%%   <<"Path">> => string(),
%%   <<"SchemaChangePolicy">> => direct_schema_change_policy()
%% }
-type s3_glue_parquet_target() :: #{binary() => any()}.

%% Example:
%% invalid_input_exception() :: #{
%%   <<"FromFederationSource">> => boolean(),
%%   <<"Message">> => string()
%% }
-type invalid_input_exception() :: #{binary() => any()}.

%% Example:
%% get_column_statistics_task_run_response() :: #{
%%   <<"ColumnStatisticsTaskRun">> => column_statistics_task_run()
%% }
-type get_column_statistics_task_run_response() :: #{binary() => any()}.

%% Example:
%% delete_integration_table_properties_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TableName">> := string()
%% }
-type delete_integration_table_properties_request() :: #{binary() => any()}.

%% Example:
%% storage_descriptor() :: #{
%%   <<"AdditionalLocations">> => list(string()),
%%   <<"BucketColumns">> => list(string()),
%%   <<"Columns">> => list(column()),
%%   <<"Compressed">> => boolean(),
%%   <<"InputFormat">> => string(),
%%   <<"Location">> => string(),
%%   <<"NumberOfBuckets">> => integer(),
%%   <<"OutputFormat">> => string(),
%%   <<"Parameters">> => map(),
%%   <<"SchemaReference">> => schema_reference(),
%%   <<"SerdeInfo">> => ser_de_info(),
%%   <<"SkewedInfo">> => skewed_info(),
%%   <<"SortColumns">> => list(order()),
%%   <<"StoredAsSubDirectories">> => boolean()
%% }
-type storage_descriptor() :: #{binary() => any()}.

%% Example:
%% compaction_metrics() :: #{
%%   <<"IcebergMetrics">> => iceberg_compaction_metrics()
%% }
-type compaction_metrics() :: #{binary() => any()}.

%% Example:
%% get_integration_table_properties_response() :: #{
%%   <<"ResourceArn">> => string(),
%%   <<"SourceTableConfig">> => source_table_config(),
%%   <<"TableName">> => string(),
%%   <<"TargetTableConfig">> => target_table_config()
%% }
-type get_integration_table_properties_response() :: #{binary() => any()}.

%% Example:
%% integration_partition() :: #{
%%   <<"ConversionSpec">> => string(),
%%   <<"FieldName">> => string(),
%%   <<"FunctionSpec">> => string()
%% }
-type integration_partition() :: #{binary() => any()}.

%% Example:
%% error_details() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string()
%% }
-type error_details() :: #{binary() => any()}.

%% Example:
%% target_redshift_catalog() :: #{
%%   <<"CatalogArn">> => string()
%% }
-type target_redshift_catalog() :: #{binary() => any()}.

%% Example:
%% delete_security_configuration_request() :: #{
%%   <<"Name">> := string()
%% }
-type delete_security_configuration_request() :: #{binary() => any()}.

%% Example:
%% unfiltered_partition() :: #{
%%   <<"AuthorizedColumns">> => list(string()),
%%   <<"IsRegisteredWithLakeFormation">> => boolean(),
%%   <<"Partition">> => partition()
%% }
-type unfiltered_partition() :: #{binary() => any()}.

%% Example:
%% delete_partition_index_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> := string(),
%%   <<"IndexName">> := string(),
%%   <<"TableName">> := string()
%% }
-type delete_partition_index_request() :: #{binary() => any()}.

%% Example:
%% get_data_quality_ruleset_evaluation_run_request() :: #{
%%   <<"RunId">> := string()
%% }
-type get_data_quality_ruleset_evaluation_run_request() :: #{binary() => any()}.

%% Example:
%% catalog_target() :: #{
%%   <<"ConnectionName">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"DlqEventQueueArn">> => string(),
%%   <<"EventQueueArn">> => string(),
%%   <<"Tables">> => list(string())
%% }
-type catalog_target() :: #{binary() => any()}.

%% Example:
%% create_script_response() :: #{
%%   <<"PythonScript">> => string(),
%%   <<"ScalaCode">> => string()
%% }
-type create_script_response() :: #{binary() => any()}.

%% Example:
%% last_active_definition() :: #{
%%   <<"BlueprintLocation">> => string(),
%%   <<"BlueprintServiceLocation">> => string(),
%%   <<"Description">> => string(),
%%   <<"LastModifiedOn">> => non_neg_integer(),
%%   <<"ParameterSpec">> => string()
%% }
-type last_active_definition() :: #{binary() => any()}.

%% Example:
%% create_partition_index_response() :: #{

%% }
-type create_partition_index_response() :: #{binary() => any()}.

%% Example:
%% get_mapping_request() :: #{
%%   <<"Location">> => location(),
%%   <<"Sinks">> => list(catalog_entry()),
%%   <<"Source">> := catalog_entry()
%% }
-type get_mapping_request() :: #{binary() => any()}.

%% Example:
%% update_trigger_response() :: #{
%%   <<"Trigger">> => trigger()
%% }
-type update_trigger_response() :: #{binary() => any()}.

%% Example:
%% get_data_quality_result_request() :: #{
%%   <<"ResultId">> := string()
%% }
-type get_data_quality_result_request() :: #{binary() => any()}.

%% Example:
%% get_catalog_import_status_response() :: #{
%%   <<"ImportStatus">> => catalog_import_status()
%% }
-type get_catalog_import_status_response() :: #{binary() => any()}.

%% Example:
%% catalog_input() :: #{
%%   <<"AllowFullTableExternalDataAccess">> => list(any()),
%%   <<"CatalogProperties">> => catalog_properties(),
%%   <<"CreateDatabaseDefaultPermissions">> => list(principal_permissions()),
%%   <<"CreateTableDefaultPermissions">> => list(principal_permissions()),
%%   <<"Description">> => string(),
%%   <<"FederatedCatalog">> => federated_catalog(),
%%   <<"Parameters">> => map(),
%%   <<"TargetRedshiftCatalog">> => target_redshift_catalog()
%% }
-type catalog_input() :: #{binary() => any()}.

%% Example:
%% source_table_config() :: #{
%%   <<"Fields">> => list(string()),
%%   <<"FilterPredicate">> => string(),
%%   <<"PrimaryKey">> => list(string()),
%%   <<"RecordUpdateField">> => string()
%% }
-type source_table_config() :: #{binary() => any()}.

%% Example:
%% delete_dev_endpoint_request() :: #{
%%   <<"EndpointName">> := string()
%% }
-type delete_dev_endpoint_request() :: #{binary() => any()}.

%% Example:
%% update_connection_response() :: #{

%% }
-type update_connection_response() :: #{binary() => any()}.

%% Example:
%% get_crawler_metrics_request() :: #{
%%   <<"CrawlerNameList">> => list(string()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_crawler_metrics_request() :: #{binary() => any()}.

%% Example:
%% data_lake_access_properties() :: #{
%%   <<"CatalogType">> => string(),
%%   <<"DataLakeAccess">> => boolean(),
%%   <<"DataTransferRole">> => string(),
%%   <<"KmsKey">> => string()
%% }
-type data_lake_access_properties() :: #{binary() => any()}.

%% Example:
%% list_sessions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"RequestOrigin">> => string(),
%%   <<"Tags">> => map()
%% }
-type list_sessions_request() :: #{binary() => any()}.

%% Example:
%% update_workflow_response() :: #{
%%   <<"Name">> => string()
%% }
-type update_workflow_response() :: #{binary() => any()}.

%% Example:
%% iceberg_compaction_configuration() :: #{
%%   <<"deleteFileThreshold">> => integer(),
%%   <<"minInputFiles">> => integer(),
%%   <<"strategy">> => list(any())
%% }
-type iceberg_compaction_configuration() :: #{binary() => any()}.

%% Example:
%% create_csv_classifier_request() :: #{
%%   <<"AllowSingleColumn">> => boolean(),
%%   <<"ContainsHeader">> => list(any()),
%%   <<"CustomDatatypeConfigured">> => boolean(),
%%   <<"CustomDatatypes">> => list(string()),
%%   <<"Delimiter">> => string(),
%%   <<"DisableValueTrimming">> => boolean(),
%%   <<"Header">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"QuoteSymbol">> => string(),
%%   <<"Serde">> => list(any())
%% }
-type create_csv_classifier_request() :: #{binary() => any()}.

%% Example:
%% blueprint() :: #{
%%   <<"BlueprintLocation">> => string(),
%%   <<"BlueprintServiceLocation">> => string(),
%%   <<"CreatedOn">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"LastActiveDefinition">> => last_active_definition(),
%%   <<"LastModifiedOn">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"ParameterSpec">> => string(),
%%   <<"Status">> => list(any())
%% }
-type blueprint() :: #{binary() => any()}.

%% Example:
%% annotation_error() :: #{
%%   <<"FailureReason">> => string(),
%%   <<"ProfileId">> => string(),
%%   <<"StatisticId">> => string()
%% }
-type annotation_error() :: #{binary() => any()}.

%% Example:
%% crawler_history() :: #{
%%   <<"CrawlId">> => string(),
%%   <<"DPUHour">> => float(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"ErrorMessage">> => string(),
%%   <<"LogGroup">> => string(),
%%   <<"LogStream">> => string(),
%%   <<"MessagePrefix">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"State">> => list(any()),
%%   <<"Summary">> => string()
%% }
-type crawler_history() :: #{binary() => any()}.

%% Example:
%% connections_list() :: #{
%%   <<"Connections">> => list(string())
%% }
-type connections_list() :: #{binary() => any()}.

%% Example:
%% create_security_configuration_response() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"Name">> => string()
%% }
-type create_security_configuration_response() :: #{binary() => any()}.

%% Example:
%% start_workflow_run_response() :: #{
%%   <<"RunId">> => string()
%% }
-type start_workflow_run_response() :: #{binary() => any()}.

%% Example:
%% iceberg_sort_field() :: #{
%%   <<"Direction">> => list(any()),
%%   <<"NullOrder">> => list(any()),
%%   <<"SourceId">> => integer(),
%%   <<"Transform">> => string()
%% }
-type iceberg_sort_field() :: #{binary() => any()}.

%% Example:
%% compute_environment_configuration() :: #{
%%   <<"ComputeEnvironment">> => list(any()),
%%   <<"ConnectionOptionNameOverrides">> => map(),
%%   <<"ConnectionOptions">> => map(),
%%   <<"ConnectionPropertiesRequiredOverrides">> => list([string()]()),
%%   <<"ConnectionPropertyNameOverrides">> => map(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"PhysicalConnectionPropertiesRequired">> => boolean(),
%%   <<"SupportedAuthenticationTypes">> => list(list(any())())
%% }
-type compute_environment_configuration() :: #{binary() => any()}.

%% Example:
%% update_csv_classifier_request() :: #{
%%   <<"AllowSingleColumn">> => boolean(),
%%   <<"ContainsHeader">> => list(any()),
%%   <<"CustomDatatypeConfigured">> => boolean(),
%%   <<"CustomDatatypes">> => list(string()),
%%   <<"Delimiter">> => string(),
%%   <<"DisableValueTrimming">> => boolean(),
%%   <<"Header">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"QuoteSymbol">> => string(),
%%   <<"Serde">> => list(any())
%% }
-type update_csv_classifier_request() :: #{binary() => any()}.

%% Example:
%% s3_catalog_delta_source() :: #{
%%   <<"AdditionalDeltaOptions">> => map(),
%%   <<"Database">> => string(),
%%   <<"Name">> => string(),
%%   <<"OutputSchemas">> => list(glue_schema()),
%%   <<"Table">> => string()
%% }
-type s3_catalog_delta_source() :: #{binary() => any()}.

%% Example:
%% condition() :: #{
%%   <<"CrawlState">> => list(any()),
%%   <<"CrawlerName">> => string(),
%%   <<"JobName">> => string(),
%%   <<"LogicalOperator">> => list(any()),
%%   <<"State">> => list(any())
%% }
-type condition() :: #{binary() => any()}.

%% Example:
%% get_data_quality_model_request() :: #{
%%   <<"ProfileId">> := string(),
%%   <<"StatisticId">> => string()
%% }
-type get_data_quality_model_request() :: #{binary() => any()}.

%% Example:
%% location() :: #{
%%   <<"DynamoDB">> => list(code_gen_node_arg()),
%%   <<"Jdbc">> => list(code_gen_node_arg()),
%%   <<"S3">> => list(code_gen_node_arg())
%% }
-type location() :: #{binary() => any()}.

%% Example:
%% classifier() :: #{
%%   <<"CsvClassifier">> => csv_classifier(),
%%   <<"GrokClassifier">> => grok_classifier(),
%%   <<"JsonClassifier">> => json_classifier(),
%%   <<"XMLClassifier">> => x_ml_classifier()
%% }
-type classifier() :: #{binary() => any()}.

%% Example:
%% filter_expression() :: #{
%%   <<"Negated">> => boolean(),
%%   <<"Operation">> => list(any()),
%%   <<"Values">> => list(filter_value())
%% }
-type filter_expression() :: #{binary() => any()}.

%% Example:
%% search_tables_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TableList">> => list(table())
%% }
-type search_tables_response() :: #{binary() => any()}.

%% Example:
%% start_ml_evaluation_task_run_request() :: #{
%%   <<"TransformId">> := string()
%% }
-type start_ml_evaluation_task_run_request() :: #{binary() => any()}.

%% Example:
%% create_trigger_request() :: #{
%%   <<"Actions">> := list(action()),
%%   <<"Description">> => string(),
%%   <<"EventBatchingCondition">> => event_batching_condition(),
%%   <<"Name">> := string(),
%%   <<"Predicate">> => predicate(),
%%   <<"Schedule">> => string(),
%%   <<"StartOnCreation">> => boolean(),
%%   <<"Tags">> => map(),
%%   <<"Type">> := list(any()),
%%   <<"WorkflowName">> => string()
%% }
-type create_trigger_request() :: #{binary() => any()}.

%% Example:
%% mongo_db_target() :: #{
%%   <<"ConnectionName">> => string(),
%%   <<"Path">> => string(),
%%   <<"ScanAll">> => boolean()
%% }
-type mongo_db_target() :: #{binary() => any()}.

%% Example:
%% data_quality_encryption() :: #{
%%   <<"DataQualityEncryptionMode">> => list(any()),
%%   <<"KmsKeyArn">> => string()
%% }
-type data_quality_encryption() :: #{binary() => any()}.

%% Example:
%% datatype() :: #{
%%   <<"Id">> => string(),
%%   <<"Label">> => string()
%% }
-type datatype() :: #{binary() => any()}.

%% Example:
%% glue_node() :: #{
%%   <<"CrawlerDetails">> => crawler_node_details(),
%%   <<"JobDetails">> => job_node_details(),
%%   <<"Name">> => string(),
%%   <<"TriggerDetails">> => trigger_node_details(),
%%   <<"Type">> => list(any()),
%%   <<"UniqueId">> => string()
%% }
-type glue_node() :: #{binary() => any()}.

%% Example:
%% connection_password_encryption() :: #{
%%   <<"AwsKmsKeyId">> => string(),
%%   <<"ReturnConnectionPasswordEncrypted">> => boolean()
%% }
-type connection_password_encryption() :: #{binary() => any()}.

%% Example:
%% database_identifier() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"Region">> => string()
%% }
-type database_identifier() :: #{binary() => any()}.

%% Example:
%% s3_iceberg_catalog_target() :: #{
%%   <<"AdditionalOptions">> => map(),
%%   <<"AutoDataQuality">> => auto_data_quality(),
%%   <<"Database">> => string(),
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"PartitionKeys">> => list(list(string())()),
%%   <<"SchemaChangePolicy">> => catalog_schema_change_policy(),
%%   <<"Table">> => string()
%% }
-type s3_iceberg_catalog_target() :: #{binary() => any()}.

%% Example:
%% batch_update_partition_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> := string(),
%%   <<"Entries">> := list(batch_update_partition_request_entry()),
%%   <<"TableName">> := string()
%% }
-type batch_update_partition_request() :: #{binary() => any()}.

%% Example:
%% get_resource_policy_request() :: #{
%%   <<"ResourceArn">> => string()
%% }
-type get_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% decimal_column_statistics_data() :: #{
%%   <<"MaximumValue">> => decimal_number(),
%%   <<"MinimumValue">> => decimal_number(),
%%   <<"NumberOfDistinctValues">> => float(),
%%   <<"NumberOfNulls">> => float()
%% }
-type decimal_column_statistics_data() :: #{binary() => any()}.

%% Example:
%% null_check_box_list() :: #{
%%   <<"IsEmpty">> => boolean(),
%%   <<"IsNegOne">> => boolean(),
%%   <<"IsNullString">> => boolean()
%% }
-type null_check_box_list() :: #{binary() => any()}.

%% Example:
%% session() :: #{
%%   <<"Command">> => session_command(),
%%   <<"CompletedOn">> => non_neg_integer(),
%%   <<"Connections">> => connections_list(),
%%   <<"CreatedOn">> => non_neg_integer(),
%%   <<"DPUSeconds">> => float(),
%%   <<"DefaultArguments">> => map(),
%%   <<"Description">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"ExecutionTime">> => float(),
%%   <<"GlueVersion">> => string(),
%%   <<"Id">> => string(),
%%   <<"IdleTimeout">> => integer(),
%%   <<"MaxCapacity">> => float(),
%%   <<"NumberOfWorkers">> => integer(),
%%   <<"ProfileName">> => string(),
%%   <<"Progress">> => float(),
%%   <<"Role">> => string(),
%%   <<"SecurityConfiguration">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"WorkerType">> => list(any())
%% }
-type session() :: #{binary() => any()}.

%% Example:
%% get_catalog_response() :: #{
%%   <<"Catalog">> => catalog()
%% }
-type get_catalog_response() :: #{binary() => any()}.

%% Example:
%% execution_property() :: #{
%%   <<"MaxConcurrentRuns">> => integer()
%% }
-type execution_property() :: #{binary() => any()}.

%% Example:
%% start_blueprint_run_request() :: #{
%%   <<"BlueprintName">> := string(),
%%   <<"Parameters">> => string(),
%%   <<"RoleArn">> := string()
%% }
-type start_blueprint_run_request() :: #{binary() => any()}.

%% Example:
%% get_resource_policies_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_resource_policies_request() :: #{binary() => any()}.

%% Example:
%% snowflake_node_data() :: #{
%%   <<"Action">> => string(),
%%   <<"AdditionalOptions">> => map(),
%%   <<"AutoPushdown">> => boolean(),
%%   <<"Connection">> => option(),
%%   <<"Database">> => string(),
%%   <<"IamRole">> => option(),
%%   <<"MergeAction">> => string(),
%%   <<"MergeClause">> => string(),
%%   <<"MergeWhenMatched">> => string(),
%%   <<"MergeWhenNotMatched">> => string(),
%%   <<"PostAction">> => string(),
%%   <<"PreAction">> => string(),
%%   <<"SampleQuery">> => string(),
%%   <<"Schema">> => string(),
%%   <<"SelectedColumns">> => list(option()),
%%   <<"SourceType">> => string(),
%%   <<"StagingTable">> => string(),
%%   <<"Table">> => string(),
%%   <<"TableSchema">> => list(option()),
%%   <<"TempDir">> => string(),
%%   <<"Upsert">> => boolean()
%% }
-type snowflake_node_data() :: #{binary() => any()}.

%% Example:
%% get_resource_policies_response() :: #{
%%   <<"GetResourcePoliciesResponseList">> => list(glue_policy()),
%%   <<"NextToken">> => string()
%% }
-type get_resource_policies_response() :: #{binary() => any()}.

%% Example:
%% view_definition() :: #{
%%   <<"Definer">> => string(),
%%   <<"IsProtected">> => boolean(),
%%   <<"Representations">> => list(view_representation()),
%%   <<"SubObjects">> => list(string())
%% }
-type view_definition() :: #{binary() => any()}.

%% Example:
%% get_crawlers_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_crawlers_request() :: #{binary() => any()}.

%% Example:
%% filter() :: #{
%%   <<"Filters">> => list(filter_expression()),
%%   <<"Inputs">> => list(string()),
%%   <<"LogicalOperator">> => list(any()),
%%   <<"Name">> => string()
%% }
-type filter() :: #{binary() => any()}.

%% Example:
%% predecessor() :: #{
%%   <<"JobName">> => string(),
%%   <<"RunId">> => string()
%% }
-type predecessor() :: #{binary() => any()}.

%% Example:
%% delete_column_statistics_for_partition_response() :: #{

%% }
-type delete_column_statistics_for_partition_response() :: #{binary() => any()}.

%% Example:
%% group_filters() :: #{
%%   <<"Filters">> => list(filter_expression()),
%%   <<"GroupName">> => string(),
%%   <<"LogicalOperator">> => list(any())
%% }
-type group_filters() :: #{binary() => any()}.

%% Example:
%% get_classifier_request() :: #{
%%   <<"Name">> := string()
%% }
-type get_classifier_request() :: #{binary() => any()}.

%% Example:
%% stop_session_response() :: #{
%%   <<"Id">> => string()
%% }
-type stop_session_response() :: #{binary() => any()}.

%% Example:
%% column_statistics_error() :: #{
%%   <<"ColumnStatistics">> => column_statistics(),
%%   <<"Error">> => error_detail()
%% }
-type column_statistics_error() :: #{binary() => any()}.

%% Example:
%% custom_code() :: #{
%%   <<"ClassName">> => string(),
%%   <<"Code">> => string(),
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"OutputSchemas">> => list(glue_schema())
%% }
-type custom_code() :: #{binary() => any()}.

%% Example:
%% start_data_quality_rule_recommendation_run_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"CreatedRulesetName">> => string(),
%%   <<"DataQualitySecurityConfiguration">> => string(),
%%   <<"DataSource">> := data_source(),
%%   <<"NumberOfWorkers">> => integer(),
%%   <<"Role">> := string(),
%%   <<"Timeout">> => integer()
%% }
-type start_data_quality_rule_recommendation_run_request() :: #{binary() => any()}.

%% Example:
%% stop_crawler_schedule_request() :: #{
%%   <<"CrawlerName">> := string()
%% }
-type stop_crawler_schedule_request() :: #{binary() => any()}.

%% Example:
%% create_blueprint_response() :: #{
%%   <<"Name">> => string()
%% }
-type create_blueprint_response() :: #{binary() => any()}.

%% Example:
%% create_partition_index_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> := string(),
%%   <<"PartitionIndex">> := partition_index(),
%%   <<"TableName">> := string()
%% }
-type create_partition_index_request() :: #{binary() => any()}.

%% Example:
%% get_usage_profile_request() :: #{
%%   <<"Name">> := string()
%% }
-type get_usage_profile_request() :: #{binary() => any()}.

%% Example:
%% iceberg_partition_field() :: #{
%%   <<"FieldId">> => integer(),
%%   <<"Name">> => string(),
%%   <<"SourceId">> => integer(),
%%   <<"Transform">> => string()
%% }
-type iceberg_partition_field() :: #{binary() => any()}.

%% Example:
%% create_classifier_response() :: #{

%% }
-type create_classifier_response() :: #{binary() => any()}.

%% Example:
%% catalog_delta_source() :: #{
%%   <<"AdditionalDeltaOptions">> => map(),
%%   <<"Database">> => string(),
%%   <<"Name">> => string(),
%%   <<"OutputSchemas">> => list(glue_schema()),
%%   <<"Table">> => string()
%% }
-type catalog_delta_source() :: #{binary() => any()}.

%% Example:
%% order() :: #{
%%   <<"Column">> => string(),
%%   <<"SortOrder">> => integer()
%% }
-type order() :: #{binary() => any()}.

%% Example:
%% column_statistics_task_run() :: #{
%%   <<"CatalogID">> => string(),
%%   <<"ColumnNameList">> => list(string()),
%%   <<"ColumnStatisticsTaskRunId">> => string(),
%%   <<"ComputationType">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"CustomerId">> => string(),
%%   <<"DPUSeconds">> => float(),
%%   <<"DatabaseName">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"ErrorMessage">> => string(),
%%   <<"LastUpdated">> => non_neg_integer(),
%%   <<"NumberOfWorkers">> => integer(),
%%   <<"Role">> => string(),
%%   <<"SampleSize">> => float(),
%%   <<"SecurityConfiguration">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"TableName">> => string(),
%%   <<"WorkerType">> => string()
%% }
-type column_statistics_task_run() :: #{binary() => any()}.

%% Example:
%% start_data_quality_ruleset_evaluation_run_request() :: #{
%%   <<"AdditionalDataSources">> => map(),
%%   <<"AdditionalRunOptions">> => data_quality_evaluation_run_additional_run_options(),
%%   <<"ClientToken">> => string(),
%%   <<"DataSource">> := data_source(),
%%   <<"NumberOfWorkers">> => integer(),
%%   <<"Role">> := string(),
%%   <<"RulesetNames">> := list(string()),
%%   <<"Timeout">> => integer()
%% }
-type start_data_quality_ruleset_evaluation_run_request() :: #{binary() => any()}.

%% Example:
%% integration_not_found_fault() :: #{
%%   <<"Message">> => string()
%% }
-type integration_not_found_fault() :: #{binary() => any()}.

%% Example:
%% list_ml_transforms_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TransformIds">> => list(string())
%% }
-type list_ml_transforms_response() :: #{binary() => any()}.

%% Example:
%% get_unfiltered_partitions_metadata_request() :: #{
%%   <<"AuditContext">> => audit_context(),
%%   <<"CatalogId">> := string(),
%%   <<"DatabaseName">> := string(),
%%   <<"Expression">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"QuerySessionContext">> => query_session_context(),
%%   <<"Region">> => string(),
%%   <<"Segment">> => segment(),
%%   <<"SupportedPermissionTypes">> := list(list(any())()),
%%   <<"TableName">> := string()
%% }
-type get_unfiltered_partitions_metadata_request() :: #{binary() => any()}.

%% Example:
%% schema_id() :: #{
%%   <<"RegistryName">> => string(),
%%   <<"SchemaArn">> => string(),
%%   <<"SchemaName">> => string()
%% }
-type schema_id() :: #{binary() => any()}.

%% Example:
%% update_blueprint_request() :: #{
%%   <<"BlueprintLocation">> := string(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string()
%% }
-type update_blueprint_request() :: #{binary() => any()}.

%% Example:
%% get_trigger_response() :: #{
%%   <<"Trigger">> => trigger()
%% }
-type get_trigger_response() :: #{binary() => any()}.

%% Example:
%% microsoft_s_q_l_server_catalog_target() :: #{
%%   <<"Database">> => string(),
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"Table">> => string()
%% }
-type microsoft_s_q_l_server_catalog_target() :: #{binary() => any()}.

%% Example:
%% get_data_quality_model_response() :: #{
%%   <<"CompletedOn">> => non_neg_integer(),
%%   <<"FailureReason">> => string(),
%%   <<"StartedOn">> => non_neg_integer(),
%%   <<"Status">> => list(any())
%% }
-type get_data_quality_model_response() :: #{binary() => any()}.

%% Example:
%% update_registry_response() :: #{
%%   <<"RegistryArn">> => string(),
%%   <<"RegistryName">> => string()
%% }
-type update_registry_response() :: #{binary() => any()}.

%% Example:
%% federation_source_exception() :: #{
%%   <<"FederationSourceErrorCode">> => list(any()),
%%   <<"Message">> => string()
%% }
-type federation_source_exception() :: #{binary() => any()}.

%% Example:
%% table_identifier() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"Name">> => string(),
%%   <<"Region">> => string()
%% }
-type table_identifier() :: #{binary() => any()}.

%% Example:
%% source_processing_properties() :: #{
%%   <<"RoleArn">> => string()
%% }
-type source_processing_properties() :: #{binary() => any()}.

%% Example:
%% update_job_response() :: #{
%%   <<"JobName">> => string()
%% }
-type update_job_response() :: #{binary() => any()}.

%% Example:
%% connection_input() :: #{
%%   <<"AthenaProperties">> => map(),
%%   <<"AuthenticationConfiguration">> => authentication_configuration_input(),
%%   <<"ConnectionProperties">> => map(),
%%   <<"ConnectionType">> => list(any()),
%%   <<"Description">> => string(),
%%   <<"MatchCriteria">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"PhysicalConnectionRequirements">> => physical_connection_requirements(),
%%   <<"PythonProperties">> => map(),
%%   <<"SparkProperties">> => map(),
%%   <<"ValidateCredentials">> => boolean(),
%%   <<"ValidateForComputeEnvironments">> => list(list(any())())
%% }
-type connection_input() :: #{binary() => any()}.

%% Example:
%% get_table_optimizer_response() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"TableName">> => string(),
%%   <<"TableOptimizer">> => table_optimizer()
%% }
-type get_table_optimizer_response() :: #{binary() => any()}.

%% Example:
%% session_command() :: #{
%%   <<"Name">> => string(),
%%   <<"PythonVersion">> => string()
%% }
-type session_command() :: #{binary() => any()}.

%% Example:
%% get_job_bookmark_response() :: #{
%%   <<"JobBookmarkEntry">> => job_bookmark_entry()
%% }
-type get_job_bookmark_response() :: #{binary() => any()}.

%% Example:
%% list_custom_entity_types_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => map()
%% }
-type list_custom_entity_types_request() :: #{binary() => any()}.

%% Example:
%% create_integration_request() :: #{
%%   <<"AdditionalEncryptionContext">> => map(),
%%   <<"DataFilter">> => string(),
%%   <<"Description">> => string(),
%%   <<"IntegrationConfig">> => integration_config(),
%%   <<"IntegrationName">> := string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"SourceArn">> := string(),
%%   <<"Tags">> => list(tag()),
%%   <<"TargetArn">> := string()
%% }
-type create_integration_request() :: #{binary() => any()}.

%% Example:
%% register_schema_version_input() :: #{
%%   <<"SchemaDefinition">> := string(),
%%   <<"SchemaId">> := schema_id()
%% }
-type register_schema_version_input() :: #{binary() => any()}.

%% Example:
%% update_ml_transform_request() :: #{
%%   <<"Description">> => string(),
%%   <<"GlueVersion">> => string(),
%%   <<"MaxCapacity">> => float(),
%%   <<"MaxRetries">> => integer(),
%%   <<"Name">> => string(),
%%   <<"NumberOfWorkers">> => integer(),
%%   <<"Parameters">> => transform_parameters(),
%%   <<"Role">> => string(),
%%   <<"Timeout">> => integer(),
%%   <<"TransformId">> := string(),
%%   <<"WorkerType">> => list(any())
%% }
-type update_ml_transform_request() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% test_connection_response() :: #{

%% }
-type test_connection_response() :: #{binary() => any()}.

%% Example:
%% get_ml_transform_response() :: #{
%%   <<"CreatedOn">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"EvaluationMetrics">> => evaluation_metrics(),
%%   <<"GlueVersion">> => string(),
%%   <<"InputRecordTables">> => list(glue_table()),
%%   <<"LabelCount">> => integer(),
%%   <<"LastModifiedOn">> => non_neg_integer(),
%%   <<"MaxCapacity">> => float(),
%%   <<"MaxRetries">> => integer(),
%%   <<"Name">> => string(),
%%   <<"NumberOfWorkers">> => integer(),
%%   <<"Parameters">> => transform_parameters(),
%%   <<"Role">> => string(),
%%   <<"Schema">> => list(schema_column()),
%%   <<"Status">> => list(any()),
%%   <<"Timeout">> => integer(),
%%   <<"TransformEncryption">> => transform_encryption(),
%%   <<"TransformId">> => string(),
%%   <<"WorkerType">> => list(any())
%% }
-type get_ml_transform_response() :: #{binary() => any()}.

%% Example:
%% schedule() :: #{
%%   <<"ScheduleExpression">> => string(),
%%   <<"State">> => list(any())
%% }
-type schedule() :: #{binary() => any()}.

%% Example:
%% get_security_configurations_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SecurityConfigurations">> => list(security_configuration())
%% }
-type get_security_configurations_response() :: #{binary() => any()}.

%% Example:
%% cancel_data_quality_ruleset_evaluation_run_response() :: #{

%% }
-type cancel_data_quality_ruleset_evaluation_run_response() :: #{binary() => any()}.

%% Example:
%% get_data_catalog_encryption_settings_request() :: #{
%%   <<"CatalogId">> => string()
%% }
-type get_data_catalog_encryption_settings_request() :: #{binary() => any()}.

%% Example:
%% trigger_update() :: #{
%%   <<"Actions">> => list(action()),
%%   <<"Description">> => string(),
%%   <<"EventBatchingCondition">> => event_batching_condition(),
%%   <<"Name">> => string(),
%%   <<"Predicate">> => predicate(),
%%   <<"Schedule">> => string()
%% }
-type trigger_update() :: #{binary() => any()}.

%% Example:
%% update_dev_endpoint_response() :: #{

%% }
-type update_dev_endpoint_response() :: #{binary() => any()}.

%% Example:
%% delete_column_statistics_for_table_response() :: #{

%% }
-type delete_column_statistics_for_table_response() :: #{binary() => any()}.

%% Example:
%% list_data_quality_statistics_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Statistics">> => list(statistic_summary())
%% }
-type list_data_quality_statistics_response() :: #{binary() => any()}.

%% Example:
%% timestamp_filter() :: #{
%%   <<"RecordedAfter">> => non_neg_integer(),
%%   <<"RecordedBefore">> => non_neg_integer()
%% }
-type timestamp_filter() :: #{binary() => any()}.

%% Example:
%% kms_key_not_accessible_fault() :: #{
%%   <<"Message">> => string()
%% }
-type kms_key_not_accessible_fault() :: #{binary() => any()}.

%% Example:
%% federated_resource_already_exists_exception() :: #{
%%   <<"AssociatedGlueResource">> => string(),
%%   <<"Message">> => string()
%% }
-type federated_resource_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% cancel_ml_task_run_response() :: #{
%%   <<"Status">> => list(any()),
%%   <<"TaskRunId">> => string(),
%%   <<"TransformId">> => string()
%% }
-type cancel_ml_task_run_response() :: #{binary() => any()}.

%% Example:
%% cancel_data_quality_rule_recommendation_run_request() :: #{
%%   <<"RunId">> := string()
%% }
-type cancel_data_quality_rule_recommendation_run_request() :: #{binary() => any()}.

%% Example:
%% start_job_run_request() :: #{
%%   <<"AllocatedCapacity">> => integer(),
%%   <<"Arguments">> => map(),
%%   <<"ExecutionClass">> => list(any()),
%%   <<"ExecutionRoleSessionPolicy">> => string(),
%%   <<"JobName">> := string(),
%%   <<"JobRunId">> => string(),
%%   <<"JobRunQueuingEnabled">> => boolean(),
%%   <<"MaxCapacity">> => float(),
%%   <<"NotificationProperty">> => notification_property(),
%%   <<"NumberOfWorkers">> => integer(),
%%   <<"SecurityConfiguration">> => string(),
%%   <<"Timeout">> => integer(),
%%   <<"WorkerType">> => list(any())
%% }
-type start_job_run_request() :: #{binary() => any()}.

%% Example:
%% connector_data_source() :: #{
%%   <<"ConnectionType">> => string(),
%%   <<"Data">> => map(),
%%   <<"Name">> => string(),
%%   <<"OutputSchemas">> => list(glue_schema())
%% }
-type connector_data_source() :: #{binary() => any()}.

%% Example:
%% trigger_node_details() :: #{
%%   <<"Trigger">> => trigger()
%% }
-type trigger_node_details() :: #{binary() => any()}.

%% Example:
%% export_labels_task_run_properties() :: #{
%%   <<"OutputS3Path">> => string()
%% }
-type export_labels_task_run_properties() :: #{binary() => any()}.

%% Example:
%% resource_uri() :: #{
%%   <<"ResourceType">> => list(any()),
%%   <<"Uri">> => string()
%% }
-type resource_uri() :: #{binary() => any()}.

%% Example:
%% s3_delta_catalog_target() :: #{
%%   <<"AdditionalOptions">> => map(),
%%   <<"AutoDataQuality">> => auto_data_quality(),
%%   <<"Database">> => string(),
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"OutputSchemas">> => list(glue_schema()),
%%   <<"PartitionKeys">> => list(list(string())()),
%%   <<"SchemaChangePolicy">> => catalog_schema_change_policy(),
%%   <<"Table">> => string()
%% }
-type s3_delta_catalog_target() :: #{binary() => any()}.

%% Example:
%% create_column_statistics_task_settings_response() :: #{

%% }
-type create_column_statistics_task_settings_response() :: #{binary() => any()}.

%% Example:
%% test_connection_input() :: #{
%%   <<"AuthenticationConfiguration">> => authentication_configuration_input(),
%%   <<"ConnectionProperties">> => map(),
%%   <<"ConnectionType">> => list(any())
%% }
-type test_connection_input() :: #{binary() => any()}.

%% Example:
%% o_auth2_credentials() :: #{
%%   <<"AccessToken">> => string(),
%%   <<"JwtToken">> => string(),
%%   <<"RefreshToken">> => string(),
%%   <<"UserManagedClientApplicationClientSecret">> => string()
%% }
-type o_auth2_credentials() :: #{binary() => any()}.

%% Example:
%% s3_source_additional_options() :: #{
%%   <<"BoundedFiles">> => float(),
%%   <<"BoundedSize">> => float()
%% }
-type s3_source_additional_options() :: #{binary() => any()}.

%% Example:
%% physical_connection_requirements() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"SecurityGroupIdList">> => list(string()),
%%   <<"SubnetId">> => string()
%% }
-type physical_connection_requirements() :: #{binary() => any()}.

%% Example:
%% table_version() :: #{
%%   <<"Table">> => table(),
%%   <<"VersionId">> => string()
%% }
-type table_version() :: #{binary() => any()}.

%% Example:
%% catalog_properties() :: #{
%%   <<"CustomProperties">> => map(),
%%   <<"DataLakeAccessProperties">> => data_lake_access_properties(),
%%   <<"IcebergOptimizationProperties">> => iceberg_optimization_properties()
%% }
-type catalog_properties() :: #{binary() => any()}.

%% Example:
%% describe_entity_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"ConnectionName">> := string(),
%%   <<"DataStoreApiVersion">> => string(),
%%   <<"EntityName">> := string(),
%%   <<"NextToken">> => string()
%% }
-type describe_entity_request() :: #{binary() => any()}.

%% Example:
%% get_column_statistics_task_settings_request() :: #{
%%   <<"DatabaseName">> := string(),
%%   <<"TableName">> := string()
%% }
-type get_column_statistics_task_settings_request() :: #{binary() => any()}.

%% Example:
%% action() :: #{
%%   <<"Arguments">> => map(),
%%   <<"CrawlerName">> => string(),
%%   <<"JobName">> => string(),
%%   <<"NotificationProperty">> => notification_property(),
%%   <<"SecurityConfiguration">> => string(),
%%   <<"Timeout">> => integer()
%% }
-type action() :: #{binary() => any()}.

%% Example:
%% code_gen_node_arg() :: #{
%%   <<"Name">> => string(),
%%   <<"Param">> => boolean(),
%%   <<"Value">> => string()
%% }
-type code_gen_node_arg() :: #{binary() => any()}.

%% Example:
%% user_defined_function_input() :: #{
%%   <<"ClassName">> => string(),
%%   <<"FunctionName">> => string(),
%%   <<"OwnerName">> => string(),
%%   <<"OwnerType">> => list(any()),
%%   <<"ResourceUris">> => list(resource_uri())
%% }
-type user_defined_function_input() :: #{binary() => any()}.

%% Example:
%% update_column_statistics_for_partition_response() :: #{
%%   <<"Errors">> => list(column_statistics_error())
%% }
-type update_column_statistics_for_partition_response() :: #{binary() => any()}.

%% Example:
%% profile_configuration() :: #{
%%   <<"JobConfiguration">> => map(),
%%   <<"SessionConfiguration">> => map()
%% }
-type profile_configuration() :: #{binary() => any()}.

%% Example:
%% get_classifiers_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_classifiers_request() :: #{binary() => any()}.

%% Example:
%% my_s_q_l_catalog_target() :: #{
%%   <<"Database">> => string(),
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"Table">> => string()
%% }
-type my_s_q_l_catalog_target() :: #{binary() => any()}.

%% Example:
%% start_column_statistics_task_run_response() :: #{
%%   <<"ColumnStatisticsTaskRunId">> => string()
%% }
-type start_column_statistics_task_run_response() :: #{binary() => any()}.

%% Example:
%% mapping_entry() :: #{
%%   <<"SourcePath">> => string(),
%%   <<"SourceTable">> => string(),
%%   <<"SourceType">> => string(),
%%   <<"TargetPath">> => string(),
%%   <<"TargetTable">> => string(),
%%   <<"TargetType">> => string()
%% }
-type mapping_entry() :: #{binary() => any()}.

%% Example:
%% encryption_at_rest() :: #{
%%   <<"CatalogEncryptionMode">> => list(any()),
%%   <<"CatalogEncryptionServiceRole">> => string(),
%%   <<"SseAwsKmsKeyId">> => string()
%% }
-type encryption_at_rest() :: #{binary() => any()}.

%% Example:
%% get_plan_response() :: #{
%%   <<"PythonScript">> => string(),
%%   <<"ScalaCode">> => string()
%% }
-type get_plan_response() :: #{binary() => any()}.

%% Example:
%% update_integration_resource_property_response() :: #{
%%   <<"ResourceArn">> => string(),
%%   <<"SourceProcessingProperties">> => source_processing_properties(),
%%   <<"TargetProcessingProperties">> => target_processing_properties()
%% }
-type update_integration_resource_property_response() :: #{binary() => any()}.

%% Example:
%% update_glue_identity_center_configuration_request() :: #{
%%   <<"Scopes">> => list(string())
%% }
-type update_glue_identity_center_configuration_request() :: #{binary() => any()}.

%% Example:
%% list_registries_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Registries">> => list(registry_list_item())
%% }
-type list_registries_response() :: #{binary() => any()}.

%% Example:
%% list_statements_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RequestOrigin">> => string(),
%%   <<"SessionId">> := string()
%% }
-type list_statements_request() :: #{binary() => any()}.

%% Example:
%% batch_get_jobs_response() :: #{
%%   <<"Jobs">> => list(job()),
%%   <<"JobsNotFound">> => list(string())
%% }
-type batch_get_jobs_response() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_request() :: #{
%%   <<"EnableHybrid">> => list(any()),
%%   <<"PolicyExistsCondition">> => list(any()),
%%   <<"PolicyHashCondition">> => string(),
%%   <<"PolicyInJson">> := string(),
%%   <<"ResourceArn">> => string()
%% }
-type put_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% schema_change_policy() :: #{
%%   <<"DeleteBehavior">> => list(any()),
%%   <<"UpdateBehavior">> => list(any())
%% }
-type schema_change_policy() :: #{binary() => any()}.

%% Example:
%% create_integration_resource_property_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"SourceProcessingProperties">> => source_processing_properties(),
%%   <<"TargetProcessingProperties">> => target_processing_properties()
%% }
-type create_integration_resource_property_request() :: #{binary() => any()}.

%% Example:
%% update_source_control_from_job_request() :: #{
%%   <<"AuthStrategy">> => list(any()),
%%   <<"AuthToken">> => string(),
%%   <<"BranchName">> => string(),
%%   <<"CommitId">> => string(),
%%   <<"Folder">> => string(),
%%   <<"JobName">> => string(),
%%   <<"Provider">> => list(any()),
%%   <<"RepositoryName">> => string(),
%%   <<"RepositoryOwner">> => string()
%% }
-type update_source_control_from_job_request() :: #{binary() => any()}.

%% Example:
%% recipe_step() :: #{
%%   <<"Action">> => recipe_action(),
%%   <<"ConditionExpressions">> => list(condition_expression())
%% }
-type recipe_step() :: #{binary() => any()}.

%% Example:
%% catalog() :: #{
%%   <<"AllowFullTableExternalDataAccess">> => list(any()),
%%   <<"CatalogId">> => string(),
%%   <<"CatalogProperties">> => catalog_properties_output(),
%%   <<"CreateDatabaseDefaultPermissions">> => list(principal_permissions()),
%%   <<"CreateTableDefaultPermissions">> => list(principal_permissions()),
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"FederatedCatalog">> => federated_catalog(),
%%   <<"Name">> => string(),
%%   <<"Parameters">> => map(),
%%   <<"ResourceArn">> => string(),
%%   <<"TargetRedshiftCatalog">> => target_redshift_catalog(),
%%   <<"UpdateTime">> => non_neg_integer()
%% }
-type catalog() :: #{binary() => any()}.

%% Example:
%% get_database_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"Name">> := string()
%% }
-type get_database_request() :: #{binary() => any()}.

%% Example:
%% invalid_integration_state_fault() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_integration_state_fault() :: #{binary() => any()}.

%% Example:
%% error_detail() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string()
%% }
-type error_detail() :: #{binary() => any()}.

%% Example:
%% job_node_details() :: #{
%%   <<"JobRuns">> => list(job_run())
%% }
-type job_node_details() :: #{binary() => any()}.

%% Example:
%% rename_field() :: #{
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"SourcePath">> => list(string()),
%%   <<"TargetPath">> => list(string())
%% }
-type rename_field() :: #{binary() => any()}.

%% Example:
%% start_trigger_request() :: #{
%%   <<"Name">> := string()
%% }
-type start_trigger_request() :: #{binary() => any()}.

%% Example:
%% list_data_quality_statistics_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ProfileId">> => string(),
%%   <<"StatisticId">> => string(),
%%   <<"TimestampFilter">> => timestamp_filter()
%% }
-type list_data_quality_statistics_request() :: #{binary() => any()}.

%% Example:
%% delete_table_response() :: #{

%% }
-type delete_table_response() :: #{binary() => any()}.

%% Example:
%% create_workflow_response() :: #{
%%   <<"Name">> => string()
%% }
-type create_workflow_response() :: #{binary() => any()}.

%% Example:
%% batch_delete_partition_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> := string(),
%%   <<"PartitionsToDelete">> := list(partition_value_list()),
%%   <<"TableName">> := string()
%% }
-type batch_delete_partition_request() :: #{binary() => any()}.

%% Example:
%% crawler_stopping_exception() :: #{
%%   <<"Message">> => string()
%% }
-type crawler_stopping_exception() :: #{binary() => any()}.

%% Example:
%% delete_glue_identity_center_configuration_response() :: #{

%% }
-type delete_glue_identity_center_configuration_response() :: #{binary() => any()}.

%% Example:
%% update_crawler_schedule_response() :: #{

%% }
-type update_crawler_schedule_response() :: #{binary() => any()}.

%% Example:
%% s3_delta_source() :: #{
%%   <<"AdditionalDeltaOptions">> => map(),
%%   <<"AdditionalOptions">> => s3_direct_source_additional_options(),
%%   <<"Name">> => string(),
%%   <<"OutputSchemas">> => list(glue_schema()),
%%   <<"Paths">> => list(string())
%% }
-type s3_delta_source() :: #{binary() => any()}.

%% Example:
%% get_column_statistics_task_runs_response() :: #{
%%   <<"ColumnStatisticsTaskRuns">> => list(column_statistics_task_run()),
%%   <<"NextToken">> => string()
%% }
-type get_column_statistics_task_runs_response() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% batch_table_optimizer() :: #{
%%   <<"catalogId">> => string(),
%%   <<"databaseName">> => string(),
%%   <<"tableName">> => string(),
%%   <<"tableOptimizer">> => table_optimizer()
%% }
-type batch_table_optimizer() :: #{binary() => any()}.

%% Example:
%% batch_delete_table_response() :: #{
%%   <<"Errors">> => list(table_error())
%% }
-type batch_delete_table_response() :: #{binary() => any()}.

%% Example:
%% d_q_results_publishing_options() :: #{
%%   <<"CloudWatchMetricsEnabled">> => boolean(),
%%   <<"EvaluationContext">> => string(),
%%   <<"ResultsPublishingEnabled">> => boolean(),
%%   <<"ResultsS3Prefix">> => string()
%% }
-type d_q_results_publishing_options() :: #{binary() => any()}.

%% Example:
%% table_input() :: #{
%%   <<"Description">> => string(),
%%   <<"LastAccessTime">> => non_neg_integer(),
%%   <<"LastAnalyzedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Owner">> => string(),
%%   <<"Parameters">> => map(),
%%   <<"PartitionKeys">> => list(column()),
%%   <<"Retention">> => integer(),
%%   <<"StorageDescriptor">> => storage_descriptor(),
%%   <<"TableType">> => string(),
%%   <<"TargetTable">> => table_identifier(),
%%   <<"ViewDefinition">> => view_definition_input(),
%%   <<"ViewExpandedText">> => string(),
%%   <<"ViewOriginalText">> => string()
%% }
-type table_input() :: #{binary() => any()}.

%% Example:
%% column_importance() :: #{
%%   <<"ColumnName">> => string(),
%%   <<"Importance">> => float()
%% }
-type column_importance() :: #{binary() => any()}.

%% Example:
%% create_column_statistics_task_settings_request() :: #{
%%   <<"CatalogID">> => string(),
%%   <<"ColumnNameList">> => list(string()),
%%   <<"DatabaseName">> := string(),
%%   <<"Role">> := string(),
%%   <<"SampleSize">> => float(),
%%   <<"Schedule">> => string(),
%%   <<"SecurityConfiguration">> => string(),
%%   <<"TableName">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_column_statistics_task_settings_request() :: #{binary() => any()}.

%% Example:
%% get_ml_task_runs_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TaskRuns">> => list(task_run())
%% }
-type get_ml_task_runs_response() :: #{binary() => any()}.

%% Example:
%% workflow_run_statistics() :: #{
%%   <<"ErroredActions">> => integer(),
%%   <<"FailedActions">> => integer(),
%%   <<"RunningActions">> => integer(),
%%   <<"StoppedActions">> => integer(),
%%   <<"SucceededActions">> => integer(),
%%   <<"TimeoutActions">> => integer(),
%%   <<"TotalActions">> => integer(),
%%   <<"WaitingActions">> => integer()
%% }
-type workflow_run_statistics() :: #{binary() => any()}.

%% Example:
%% delta_target() :: #{
%%   <<"ConnectionName">> => string(),
%%   <<"CreateNativeDeltaTable">> => boolean(),
%%   <<"DeltaTables">> => list(string()),
%%   <<"WriteManifest">> => boolean()
%% }
-type delta_target() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% transform_config_parameter() :: #{
%%   <<"IsOptional">> => boolean(),
%%   <<"ListType">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"ValidationMessage">> => string(),
%%   <<"ValidationRule">> => string(),
%%   <<"Value">> => list(string())
%% }
-type transform_config_parameter() :: #{binary() => any()}.

%% Example:
%% delete_table_optimizer_request() :: #{
%%   <<"CatalogId">> := string(),
%%   <<"DatabaseName">> := string(),
%%   <<"TableName">> := string(),
%%   <<"Type">> := list(any())
%% }
-type delete_table_optimizer_request() :: #{binary() => any()}.

%% Example:
%% update_table_optimizer_request() :: #{
%%   <<"CatalogId">> := string(),
%%   <<"DatabaseName">> := string(),
%%   <<"TableName">> := string(),
%%   <<"TableOptimizerConfiguration">> := table_optimizer_configuration(),
%%   <<"Type">> := list(any())
%% }
-type update_table_optimizer_request() :: #{binary() => any()}.

%% Example:
%% get_table_version_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> := string(),
%%   <<"TableName">> := string(),
%%   <<"VersionId">> => string()
%% }
-type get_table_version_request() :: #{binary() => any()}.

%% Example:
%% data_quality_ruleset_evaluation_run_description() :: #{
%%   <<"DataSource">> => data_source(),
%%   <<"RunId">> => string(),
%%   <<"StartedOn">> => non_neg_integer(),
%%   <<"Status">> => list(any())
%% }
-type data_quality_ruleset_evaluation_run_description() :: #{binary() => any()}.

%% Example:
%% create_ml_transform_response() :: #{
%%   <<"TransformId">> => string()
%% }
-type create_ml_transform_response() :: #{binary() => any()}.

%% Example:
%% get_security_configuration_response() :: #{
%%   <<"SecurityConfiguration">> => security_configuration()
%% }
-type get_security_configuration_response() :: #{binary() => any()}.

%% Example:
%% list_crawls_response() :: #{
%%   <<"Crawls">> => list(crawler_history()),
%%   <<"NextToken">> => string()
%% }
-type list_crawls_response() :: #{binary() => any()}.

%% Example:
%% delete_dev_endpoint_response() :: #{

%% }
-type delete_dev_endpoint_response() :: #{binary() => any()}.

%% Example:
%% get_dev_endpoints_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_dev_endpoints_request() :: #{binary() => any()}.

%% Example:
%% security_configuration() :: #{
%%   <<"CreatedTimeStamp">> => non_neg_integer(),
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"Name">> => string()
%% }
-type security_configuration() :: #{binary() => any()}.

%% Example:
%% partition_input() :: #{
%%   <<"LastAccessTime">> => non_neg_integer(),
%%   <<"LastAnalyzedTime">> => non_neg_integer(),
%%   <<"Parameters">> => map(),
%%   <<"StorageDescriptor">> => storage_descriptor(),
%%   <<"Values">> => list(string())
%% }
-type partition_input() :: #{binary() => any()}.

%% Example:
%% describe_integrations_request() :: #{
%%   <<"Filters">> => list(integration_filter()),
%%   <<"IntegrationIdentifier">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_integrations_request() :: #{binary() => any()}.

%% Example:
%% batch_update_partition_response() :: #{
%%   <<"Errors">> => list(batch_update_partition_failure_entry())
%% }
-type batch_update_partition_response() :: #{binary() => any()}.

%% Example:
%% describe_integrations_response() :: #{
%%   <<"Integrations">> => list(integration()),
%%   <<"Marker">> => string()
%% }
-type describe_integrations_response() :: #{binary() => any()}.

%% Example:
%% iceberg_table_update() :: #{
%%   <<"Location">> => string(),
%%   <<"PartitionSpec">> => iceberg_partition_spec(),
%%   <<"Properties">> => map(),
%%   <<"Schema">> => iceberg_schema(),
%%   <<"SortOrder">> => iceberg_sort_order()
%% }
-type iceberg_table_update() :: #{binary() => any()}.

%% Example:
%% delete_job_request() :: #{
%%   <<"JobName">> := string()
%% }
-type delete_job_request() :: #{binary() => any()}.

%% Example:
%% p_i_idetection() :: #{
%%   <<"DetectionParameters">> => string(),
%%   <<"DetectionSensitivity">> => string(),
%%   <<"EntityTypesToDetect">> => list(string()),
%%   <<"Inputs">> => list(string()),
%%   <<"MaskValue">> => string(),
%%   <<"MatchPattern">> => string(),
%%   <<"Name">> => string(),
%%   <<"NumLeftCharsToExclude">> => integer(),
%%   <<"NumRightCharsToExclude">> => integer(),
%%   <<"OutputColumnName">> => string(),
%%   <<"PiiType">> => list(any()),
%%   <<"RedactChar">> => string(),
%%   <<"RedactText">> => string(),
%%   <<"SampleFraction">> => float(),
%%   <<"ThresholdFraction">> => float()
%% }
-type p_i_idetection() :: #{binary() => any()}.

%% Example:
%% aggregate_operation() :: #{
%%   <<"AggFunc">> => list(any()),
%%   <<"Column">> => list(string())
%% }
-type aggregate_operation() :: #{binary() => any()}.

%% Example:
%% start_ml_evaluation_task_run_response() :: #{
%%   <<"TaskRunId">> => string()
%% }
-type start_ml_evaluation_task_run_response() :: #{binary() => any()}.

%% Example:
%% start_data_quality_ruleset_evaluation_run_response() :: #{
%%   <<"RunId">> => string()
%% }
-type start_data_quality_ruleset_evaluation_run_response() :: #{binary() => any()}.

%% Example:
%% data_quality_observation() :: #{
%%   <<"Description">> => string(),
%%   <<"MetricBasedObservation">> => metric_based_observation()
%% }
-type data_quality_observation() :: #{binary() => any()}.

%% Example:
%% concurrent_modification_exception() :: #{
%%   <<"Message">> => string()
%% }
-type concurrent_modification_exception() :: #{binary() => any()}.

%% Example:
%% batch_get_crawlers_response() :: #{
%%   <<"Crawlers">> => list(crawler()),
%%   <<"CrawlersNotFound">> => list(string())
%% }
-type batch_get_crawlers_response() :: #{binary() => any()}.

%% Example:
%% get_schema_input() :: #{
%%   <<"SchemaId">> := schema_id()
%% }
-type get_schema_input() :: #{binary() => any()}.

%% Example:
%% snowflake_source() :: #{
%%   <<"Data">> => snowflake_node_data(),
%%   <<"Name">> => string(),
%%   <<"OutputSchemas">> => list(glue_schema())
%% }
-type snowflake_source() :: #{binary() => any()}.

%% Example:
%% data_quality_result() :: #{
%%   <<"AggregatedMetrics">> => data_quality_aggregated_metrics(),
%%   <<"AnalyzerResults">> => list(data_quality_analyzer_result()),
%%   <<"CompletedOn">> => non_neg_integer(),
%%   <<"DataSource">> => data_source(),
%%   <<"EvaluationContext">> => string(),
%%   <<"JobName">> => string(),
%%   <<"JobRunId">> => string(),
%%   <<"Observations">> => list(data_quality_observation()),
%%   <<"ProfileId">> => string(),
%%   <<"ResultId">> => string(),
%%   <<"RuleResults">> => list(data_quality_rule_result()),
%%   <<"RulesetEvaluationRunId">> => string(),
%%   <<"RulesetName">> => string(),
%%   <<"Score">> => float(),
%%   <<"StartedOn">> => non_neg_integer()
%% }
-type data_quality_result() :: #{binary() => any()}.

%% Example:
%% drop_null_fields() :: #{
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"NullCheckBoxList">> => null_check_box_list(),
%%   <<"NullTextList">> => list(null_value_field())
%% }
-type drop_null_fields() :: #{binary() => any()}.

%% Example:
%% get_job_response() :: #{
%%   <<"Job">> => job()
%% }
-type get_job_response() :: #{binary() => any()}.

%% Example:
%% data_quality_evaluation_run_additional_run_options() :: #{
%%   <<"CloudWatchMetricsEnabled">> => boolean(),
%%   <<"CompositeRuleEvaluationMethod">> => list(any()),
%%   <<"ResultsS3Prefix">> => string()
%% }
-type data_quality_evaluation_run_additional_run_options() :: #{binary() => any()}.

%% Example:
%% d_q_stop_job_on_failure_options() :: #{
%%   <<"StopJobOnFailureTiming">> => list(any())
%% }
-type d_q_stop_job_on_failure_options() :: #{binary() => any()}.

%% Example:
%% get_catalogs_response() :: #{
%%   <<"CatalogList">> => list(catalog()),
%%   <<"NextToken">> => string()
%% }
-type get_catalogs_response() :: #{binary() => any()}.

%% Example:
%% delete_registry_response() :: #{
%%   <<"RegistryArn">> => string(),
%%   <<"RegistryName">> => string(),
%%   <<"Status">> => list(any())
%% }
-type delete_registry_response() :: #{binary() => any()}.

%% Example:
%% list_crawls_request() :: #{
%%   <<"CrawlerName">> := string(),
%%   <<"Filters">> => list(crawls_filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_crawls_request() :: #{binary() => any()}.

%% Example:
%% stop_session_request() :: #{
%%   <<"Id">> := string(),
%%   <<"RequestOrigin">> => string()
%% }
-type stop_session_request() :: #{binary() => any()}.

%% Example:
%% remove_schema_version_metadata_input() :: #{
%%   <<"MetadataKeyValue">> := metadata_key_value_pair(),
%%   <<"SchemaId">> => schema_id(),
%%   <<"SchemaVersionId">> => string(),
%%   <<"SchemaVersionNumber">> => schema_version_number()
%% }
-type remove_schema_version_metadata_input() :: #{binary() => any()}.

%% Example:
%% delete_connection_response() :: #{

%% }
-type delete_connection_response() :: #{binary() => any()}.

%% Example:
%% condition_check_failure_exception() :: #{
%%   <<"Message">> => string()
%% }
-type condition_check_failure_exception() :: #{binary() => any()}.

%% Example:
%% glue_table() :: #{
%%   <<"AdditionalOptions">> => map(),
%%   <<"CatalogId">> => string(),
%%   <<"ConnectionName">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"TableName">> => string()
%% }
-type glue_table() :: #{binary() => any()}.

%% Example:
%% audit_context() :: #{
%%   <<"AdditionalAuditContext">> => string(),
%%   <<"AllColumnsRequested">> => boolean(),
%%   <<"RequestedColumns">> => list(string())
%% }
-type audit_context() :: #{binary() => any()}.

%% Example:
%% x_ml_classifier() :: #{
%%   <<"Classification">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastUpdated">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"RowTag">> => string(),
%%   <<"Version">> => float()
%% }
-type x_ml_classifier() :: #{binary() => any()}.

%% Example:
%% start_export_labels_task_run_request() :: #{
%%   <<"OutputS3Path">> := string(),
%%   <<"TransformId">> := string()
%% }
-type start_export_labels_task_run_request() :: #{binary() => any()}.

%% Example:
%% catalog_source() :: #{
%%   <<"Database">> => string(),
%%   <<"Name">> => string(),
%%   <<"OutputSchemas">> => list(glue_schema()),
%%   <<"PartitionPredicate">> => string(),
%%   <<"Table">> => string()
%% }
-type catalog_source() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% get_data_catalog_encryption_settings_response() :: #{
%%   <<"DataCatalogEncryptionSettings">> => data_catalog_encryption_settings()
%% }
-type get_data_catalog_encryption_settings_response() :: #{binary() => any()}.

%% Example:
%% job() :: #{
%%   <<"AllocatedCapacity">> => integer(),
%%   <<"CodeGenConfigurationNodes">> => map(),
%%   <<"Command">> => job_command(),
%%   <<"Connections">> => connections_list(),
%%   <<"CreatedOn">> => non_neg_integer(),
%%   <<"DefaultArguments">> => map(),
%%   <<"Description">> => string(),
%%   <<"ExecutionClass">> => list(any()),
%%   <<"ExecutionProperty">> => execution_property(),
%%   <<"GlueVersion">> => string(),
%%   <<"JobMode">> => list(any()),
%%   <<"JobRunQueuingEnabled">> => boolean(),
%%   <<"LastModifiedOn">> => non_neg_integer(),
%%   <<"LogUri">> => string(),
%%   <<"MaintenanceWindow">> => string(),
%%   <<"MaxCapacity">> => float(),
%%   <<"MaxRetries">> => integer(),
%%   <<"Name">> => string(),
%%   <<"NonOverridableArguments">> => map(),
%%   <<"NotificationProperty">> => notification_property(),
%%   <<"NumberOfWorkers">> => integer(),
%%   <<"ProfileName">> => string(),
%%   <<"Role">> => string(),
%%   <<"SecurityConfiguration">> => string(),
%%   <<"SourceControlDetails">> => source_control_details(),
%%   <<"Timeout">> => integer(),
%%   <<"WorkerType">> => list(any())
%% }
-type job() :: #{binary() => any()}.

%% Example:
%% delete_trigger_response() :: #{
%%   <<"Name">> => string()
%% }
-type delete_trigger_response() :: #{binary() => any()}.

%% Example:
%% connector_data_target() :: #{
%%   <<"ConnectionType">> => string(),
%%   <<"Data">> => map(),
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string()
%% }
-type connector_data_target() :: #{binary() => any()}.

%% Example:
%% property() :: #{
%%   <<"AllowedValues">> => list(allowed_value()),
%%   <<"DataOperationScopes">> => list(list(any())()),
%%   <<"DefaultValue">> => [string()],
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"PropertyTypes">> => list(list(any())()),
%%   <<"Required">> => boolean()
%% }
-type property() :: #{binary() => any()}.

%% Example:
%% describe_connection_type_request() :: #{
%%   <<"ConnectionType">> := string()
%% }
-type describe_connection_type_request() :: #{binary() => any()}.

%% Example:
%% delete_usage_profile_request() :: #{
%%   <<"Name">> := string()
%% }
-type delete_usage_profile_request() :: #{binary() => any()}.

%% Example:
%% start_column_statistics_task_run_schedule_request() :: #{
%%   <<"DatabaseName">> := string(),
%%   <<"TableName">> := string()
%% }
-type start_column_statistics_task_run_schedule_request() :: #{binary() => any()}.

%% Example:
%% s3_catalog_source() :: #{
%%   <<"AdditionalOptions">> => s3_source_additional_options(),
%%   <<"Database">> => string(),
%%   <<"Name">> => string(),
%%   <<"PartitionPredicate">> => string(),
%%   <<"Table">> => string()
%% }
-type s3_catalog_source() :: #{binary() => any()}.

%% Example:
%% metadata_key_value_pair() :: #{
%%   <<"MetadataKey">> => string(),
%%   <<"MetadataValue">> => string()
%% }
-type metadata_key_value_pair() :: #{binary() => any()}.

%% Example:
%% iceberg_input() :: #{
%%   <<"CreateIcebergTableInput">> => create_iceberg_table_input(),
%%   <<"MetadataOperation">> => list(any()),
%%   <<"Version">> => string()
%% }
-type iceberg_input() :: #{binary() => any()}.

%% Example:
%% delete_integration_table_properties_response() :: #{

%% }
-type delete_integration_table_properties_response() :: #{binary() => any()}.

%% Example:
%% delete_blueprint_request() :: #{
%%   <<"Name">> := string()
%% }
-type delete_blueprint_request() :: #{binary() => any()}.

%% Example:
%% data_quality_result_filter_criteria() :: #{
%%   <<"DataSource">> => data_source(),
%%   <<"JobName">> => string(),
%%   <<"JobRunId">> => string(),
%%   <<"StartedAfter">> => non_neg_integer(),
%%   <<"StartedBefore">> => non_neg_integer()
%% }
-type data_quality_result_filter_criteria() :: #{binary() => any()}.

%% Example:
%% data_quality_analyzer_result() :: #{
%%   <<"Description">> => string(),
%%   <<"EvaluatedMetrics">> => map(),
%%   <<"EvaluationMessage">> => string(),
%%   <<"Name">> => string()
%% }
-type data_quality_analyzer_result() :: #{binary() => any()}.

%% Example:
%% permission_type_mismatch_exception() :: #{
%%   <<"Message">> => string()
%% }
-type permission_type_mismatch_exception() :: #{binary() => any()}.

%% Example:
%% evaluate_data_quality() :: #{
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"Output">> => list(any()),
%%   <<"PublishingOptions">> => d_q_results_publishing_options(),
%%   <<"Ruleset">> => string(),
%%   <<"StopJobOnFailureOptions">> => d_q_stop_job_on_failure_options()
%% }
-type evaluate_data_quality() :: #{binary() => any()}.

%% Example:
%% start_column_statistics_task_run_schedule_response() :: #{

%% }
-type start_column_statistics_task_run_schedule_response() :: #{binary() => any()}.

%% Example:
%% get_job_request() :: #{
%%   <<"JobName">> := string()
%% }
-type get_job_request() :: #{binary() => any()}.

%% Example:
%% create_dev_endpoint_request() :: #{
%%   <<"Arguments">> => map(),
%%   <<"EndpointName">> := string(),
%%   <<"ExtraJarsS3Path">> => string(),
%%   <<"ExtraPythonLibsS3Path">> => string(),
%%   <<"GlueVersion">> => string(),
%%   <<"NumberOfNodes">> => integer(),
%%   <<"NumberOfWorkers">> => integer(),
%%   <<"PublicKey">> => string(),
%%   <<"PublicKeys">> => list(string()),
%%   <<"RoleArn">> := string(),
%%   <<"SecurityConfiguration">> => string(),
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"SubnetId">> => string(),
%%   <<"Tags">> => map(),
%%   <<"WorkerType">> => list(any())
%% }
-type create_dev_endpoint_request() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% federation_source_retryable_exception() :: #{
%%   <<"Message">> => string()
%% }
-type federation_source_retryable_exception() :: #{binary() => any()}.

%% Example:
%% update_job_from_source_control_response() :: #{
%%   <<"JobName">> => string()
%% }
-type update_job_from_source_control_response() :: #{binary() => any()}.

%% Example:
%% get_table_versions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TableVersions">> => list(table_version())
%% }
-type get_table_versions_response() :: #{binary() => any()}.

%% Example:
%% iceberg_compaction_metrics() :: #{
%%   <<"DpuHours">> => float(),
%%   <<"JobDurationInHour">> => float(),
%%   <<"NumberOfBytesCompacted">> => float(),
%%   <<"NumberOfDpus">> => integer(),
%%   <<"NumberOfFilesCompacted">> => float()
%% }
-type iceberg_compaction_metrics() :: #{binary() => any()}.

%% Example:
%% delete_partition_index_response() :: #{

%% }
-type delete_partition_index_response() :: #{binary() => any()}.

%% Example:
%% predicate() :: #{
%%   <<"Conditions">> => list(condition()),
%%   <<"Logical">> => list(any())
%% }
-type predicate() :: #{binary() => any()}.

%% Example:
%% double_column_statistics_data() :: #{
%%   <<"MaximumValue">> => float(),
%%   <<"MinimumValue">> => float(),
%%   <<"NumberOfDistinctValues">> => float(),
%%   <<"NumberOfNulls">> => float()
%% }
-type double_column_statistics_data() :: #{binary() => any()}.

%% Example:
%% cloud_watch_encryption() :: #{
%%   <<"CloudWatchEncryptionMode">> => list(any()),
%%   <<"KmsKeyArn">> => string()
%% }
-type cloud_watch_encryption() :: #{binary() => any()}.

%% Example:
%% crawler_not_running_exception() :: #{
%%   <<"Message">> => string()
%% }
-type crawler_not_running_exception() :: #{binary() => any()}.

%% Example:
%% condition_expression() :: #{
%%   <<"Condition">> => string(),
%%   <<"TargetColumn">> => string(),
%%   <<"Value">> => string()
%% }
-type condition_expression() :: #{binary() => any()}.

%% Example:
%% resume_workflow_run_response() :: #{
%%   <<"NodeIds">> => list(string()),
%%   <<"RunId">> => string()
%% }
-type resume_workflow_run_response() :: #{binary() => any()}.

%% Example:
%% list_connection_types_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_connection_types_request() :: #{binary() => any()}.

%% Example:
%% option() :: #{
%%   <<"Description">> => string(),
%%   <<"Label">> => string(),
%%   <<"Value">> => string()
%% }
-type option() :: #{binary() => any()}.

%% Example:
%% list_schema_versions_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SchemaId">> := schema_id()
%% }
-type list_schema_versions_input() :: #{binary() => any()}.

%% Example:
%% compaction_configuration() :: #{
%%   <<"icebergConfiguration">> => iceberg_compaction_configuration()
%% }
-type compaction_configuration() :: #{binary() => any()}.

%% Example:
%% get_unfiltered_partitions_metadata_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"UnfilteredPartitions">> => list(unfiltered_partition())
%% }
-type get_unfiltered_partitions_metadata_response() :: #{binary() => any()}.

%% Example:
%% stop_column_statistics_task_run_schedule_response() :: #{

%% }
-type stop_column_statistics_task_run_schedule_response() :: #{binary() => any()}.

%% Example:
%% other_metadata_value_list_item() :: #{
%%   <<"CreatedTime">> => string(),
%%   <<"MetadataValue">> => string()
%% }
-type other_metadata_value_list_item() :: #{binary() => any()}.

%% Example:
%% create_blueprint_request() :: #{
%%   <<"BlueprintLocation">> := string(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_blueprint_request() :: #{binary() => any()}.

%% Example:
%% batch_get_data_quality_result_request() :: #{
%%   <<"ResultIds">> := list(string())
%% }
-type batch_get_data_quality_result_request() :: #{binary() => any()}.

%% Example:
%% json_classifier() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"JsonPath">> => string(),
%%   <<"LastUpdated">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Version">> => float()
%% }
-type json_classifier() :: #{binary() => any()}.

%% Example:
%% search_tables_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"Filters">> => list(property_predicate()),
%%   <<"IncludeStatusDetails">> => boolean(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceShareType">> => list(any()),
%%   <<"SearchText">> => string(),
%%   <<"SortCriteria">> => list(sort_criterion())
%% }
-type search_tables_request() :: #{binary() => any()}.

%% Example:
%% describe_inbound_integrations_request() :: #{
%%   <<"IntegrationArn">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"TargetArn">> => string()
%% }
-type describe_inbound_integrations_request() :: #{binary() => any()}.

%% Example:
%% update_crawler_schedule_request() :: #{
%%   <<"CrawlerName">> := string(),
%%   <<"Schedule">> => string()
%% }
-type update_crawler_schedule_request() :: #{binary() => any()}.

%% Example:
%% get_workflow_run_request() :: #{
%%   <<"IncludeGraph">> => boolean(),
%%   <<"Name">> := string(),
%%   <<"RunId">> := string()
%% }
-type get_workflow_run_request() :: #{binary() => any()}.

%% Example:
%% start_crawler_response() :: #{

%% }
-type start_crawler_response() :: #{binary() => any()}.

%% Example:
%% get_crawler_request() :: #{
%%   <<"Name">> := string()
%% }
-type get_crawler_request() :: #{binary() => any()}.

%% Example:
%% get_partitions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Partitions">> => list(partition())
%% }
-type get_partitions_response() :: #{binary() => any()}.

%% Example:
%% dynamo_db_catalog_source() :: #{
%%   <<"AdditionalOptions">> => d_db_e_l_t_catalog_additional_options(),
%%   <<"Database">> => string(),
%%   <<"Name">> => string(),
%%   <<"PitrEnabled">> => boolean(),
%%   <<"Table">> => string()
%% }
-type dynamo_db_catalog_source() :: #{binary() => any()}.

%% Example:
%% list_usage_profiles_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_usage_profiles_request() :: #{binary() => any()}.

%% Example:
%% list_blueprints_response() :: #{
%%   <<"Blueprints">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type list_blueprints_response() :: #{binary() => any()}.

%% Example:
%% delete_database_response() :: #{

%% }
-type delete_database_response() :: #{binary() => any()}.

%% Example:
%% stop_workflow_run_request() :: #{
%%   <<"Name">> := string(),
%%   <<"RunId">> := string()
%% }
-type stop_workflow_run_request() :: #{binary() => any()}.

%% Example:
%% get_registry_response() :: #{
%%   <<"CreatedTime">> => string(),
%%   <<"Description">> => string(),
%%   <<"RegistryArn">> => string(),
%%   <<"RegistryName">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedTime">> => string()
%% }
-type get_registry_response() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_response() :: #{
%%   <<"PolicyHash">> => string()
%% }
-type put_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% catalog_properties_output() :: #{
%%   <<"CustomProperties">> => map(),
%%   <<"DataLakeAccessProperties">> => data_lake_access_properties_output(),
%%   <<"IcebergOptimizationProperties">> => iceberg_optimization_properties_output()
%% }
-type catalog_properties_output() :: #{binary() => any()}.

%% Example:
%% create_data_quality_ruleset_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DataQualitySecurityConfiguration">> => string(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"Ruleset">> := string(),
%%   <<"Tags">> => map(),
%%   <<"TargetTable">> => data_quality_target_table()
%% }
-type create_data_quality_ruleset_request() :: #{binary() => any()}.

%% Example:
%% column_statistics_task_running_exception() :: #{
%%   <<"Message">> => string()
%% }
-type column_statistics_task_running_exception() :: #{binary() => any()}.

%% Example:
%% batch_stop_job_run_successful_submission() :: #{
%%   <<"JobName">> => string(),
%%   <<"JobRunId">> => string()
%% }
-type batch_stop_job_run_successful_submission() :: #{binary() => any()}.

%% Example:
%% s3_hudi_direct_target() :: #{
%%   <<"AdditionalOptions">> => map(),
%%   <<"AutoDataQuality">> => auto_data_quality(),
%%   <<"Compression">> => list(any()),
%%   <<"Format">> => list(any()),
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"NumberTargetPartitions">> => string(),
%%   <<"PartitionKeys">> => list(list(string())()),
%%   <<"Path">> => string(),
%%   <<"SchemaChangePolicy">> => direct_schema_change_policy()
%% }
-type s3_hudi_direct_target() :: #{binary() => any()}.

%% Example:
%% get_data_quality_ruleset_request() :: #{
%%   <<"Name">> := string()
%% }
-type get_data_quality_ruleset_request() :: #{binary() => any()}.

%% Example:
%% get_statement_request() :: #{
%%   <<"Id">> := integer(),
%%   <<"RequestOrigin">> => string(),
%%   <<"SessionId">> := string()
%% }
-type get_statement_request() :: #{binary() => any()}.

%% Example:
%% cancel_data_quality_ruleset_evaluation_run_request() :: #{
%%   <<"RunId">> := string()
%% }
-type cancel_data_quality_ruleset_evaluation_run_request() :: #{binary() => any()}.

%% Example:
%% iceberg_schema() :: #{
%%   <<"Fields">> => list(iceberg_struct_field()),
%%   <<"IdentifierFieldIds">> => list(integer()),
%%   <<"SchemaId">> => integer(),
%%   <<"Type">> => list(any())
%% }
-type iceberg_schema() :: #{binary() => any()}.

%% Example:
%% create_connection_response() :: #{
%%   <<"CreateConnectionStatus">> => list(any())
%% }
-type create_connection_response() :: #{binary() => any()}.

%% Example:
%% get_unfiltered_partition_metadata_response() :: #{
%%   <<"AuthorizedColumns">> => list(string()),
%%   <<"IsRegisteredWithLakeFormation">> => boolean(),
%%   <<"Partition">> => partition()
%% }
-type get_unfiltered_partition_metadata_response() :: #{binary() => any()}.

%% Example:
%% update_database_response() :: #{

%% }
-type update_database_response() :: #{binary() => any()}.

%% Example:
%% o_auth2_properties() :: #{
%%   <<"OAuth2ClientApplication">> => o_auth2_client_application(),
%%   <<"OAuth2GrantType">> => list(any()),
%%   <<"TokenUrl">> => string(),
%%   <<"TokenUrlParametersMap">> => map()
%% }
-type o_auth2_properties() :: #{binary() => any()}.

%% Example:
%% list_dev_endpoints_response() :: #{
%%   <<"DevEndpointNames">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type list_dev_endpoints_response() :: #{binary() => any()}.

%% Example:
%% database_input() :: #{
%%   <<"CreateTableDefaultPermissions">> => list(principal_permissions()),
%%   <<"Description">> => string(),
%%   <<"FederatedDatabase">> => federated_database(),
%%   <<"LocationUri">> => string(),
%%   <<"Name">> => string(),
%%   <<"Parameters">> => map(),
%%   <<"TargetDatabase">> => database_identifier()
%% }
-type database_input() :: #{binary() => any()}.

%% Example:
%% list_data_quality_ruleset_evaluation_runs_request() :: #{
%%   <<"Filter">> => data_quality_ruleset_evaluation_run_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_data_quality_ruleset_evaluation_runs_request() :: #{binary() => any()}.

%% Example:
%% relational_catalog_source() :: #{
%%   <<"Database">> => string(),
%%   <<"Name">> => string(),
%%   <<"Table">> => string()
%% }
-type relational_catalog_source() :: #{binary() => any()}.

%% Example:
%% delete_custom_entity_type_response() :: #{
%%   <<"Name">> => string()
%% }
-type delete_custom_entity_type_response() :: #{binary() => any()}.

%% Example:
%% spark_s_q_l() :: #{
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"OutputSchemas">> => list(glue_schema()),
%%   <<"SqlAliases">> => list(sql_alias()),
%%   <<"SqlQuery">> => string()
%% }
-type spark_s_q_l() :: #{binary() => any()}.

%% Example:
%% kafka_streaming_source_options() :: #{
%%   <<"AddRecordTimestamp">> => string(),
%%   <<"Assign">> => string(),
%%   <<"BootstrapServers">> => string(),
%%   <<"Classification">> => string(),
%%   <<"ConnectionName">> => string(),
%%   <<"Delimiter">> => string(),
%%   <<"EmitConsumerLagMetrics">> => string(),
%%   <<"EndingOffsets">> => string(),
%%   <<"IncludeHeaders">> => boolean(),
%%   <<"MaxOffsetsPerTrigger">> => float(),
%%   <<"MinPartitions">> => integer(),
%%   <<"NumRetries">> => integer(),
%%   <<"PollTimeoutMs">> => float(),
%%   <<"RetryIntervalMs">> => float(),
%%   <<"SecurityProtocol">> => string(),
%%   <<"StartingOffsets">> => string(),
%%   <<"StartingTimestamp">> => non_neg_integer(),
%%   <<"SubscribePattern">> => string(),
%%   <<"TopicName">> => string()
%% }
-type kafka_streaming_source_options() :: #{binary() => any()}.

%% Example:
%% table_version_error() :: #{
%%   <<"ErrorDetail">> => error_detail(),
%%   <<"TableName">> => string(),
%%   <<"VersionId">> => string()
%% }
-type table_version_error() :: #{binary() => any()}.

%% Example:
%% batch_delete_table_version_response() :: #{
%%   <<"Errors">> => list(table_version_error())
%% }
-type batch_delete_table_version_response() :: #{binary() => any()}.

%% Example:
%% get_databases_request() :: #{
%%   <<"AttributesToGet">> => list(list(any())()),
%%   <<"CatalogId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceShareType">> => list(any())
%% }
-type get_databases_request() :: #{binary() => any()}.

%% Example:
%% catalog_kafka_source() :: #{
%%   <<"DataPreviewOptions">> => streaming_data_preview_options(),
%%   <<"Database">> => string(),
%%   <<"DetectSchema">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"StreamingOptions">> => kafka_streaming_source_options(),
%%   <<"Table">> => string(),
%%   <<"WindowSize">> => integer()
%% }
-type catalog_kafka_source() :: #{binary() => any()}.

%% Example:
%% date_column_statistics_data() :: #{
%%   <<"MaximumValue">> => non_neg_integer(),
%%   <<"MinimumValue">> => non_neg_integer(),
%%   <<"NumberOfDistinctValues">> => float(),
%%   <<"NumberOfNulls">> => float()
%% }
-type date_column_statistics_data() :: #{binary() => any()}.

%% Example:
%% drop_fields() :: #{
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"Paths">> => list(list(string())())
%% }
-type drop_fields() :: #{binary() => any()}.

%% Example:
%% reset_job_bookmark_response() :: #{
%%   <<"JobBookmarkEntry">> => job_bookmark_entry()
%% }
-type reset_job_bookmark_response() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_request() :: #{
%%   <<"PolicyHashCondition">> => string(),
%%   <<"ResourceArn">> => string()
%% }
-type delete_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% get_crawler_metrics_response() :: #{
%%   <<"CrawlerMetricsList">> => list(crawler_metrics()),
%%   <<"NextToken">> => string()
%% }
-type get_crawler_metrics_response() :: #{binary() => any()}.

%% Example:
%% get_partitions_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> := string(),
%%   <<"ExcludeColumnSchema">> => boolean(),
%%   <<"Expression">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"QueryAsOfTime">> => non_neg_integer(),
%%   <<"Segment">> => segment(),
%%   <<"TableName">> := string(),
%%   <<"TransactionId">> => string()
%% }
-type get_partitions_request() :: #{binary() => any()}.

%% Example:
%% streaming_data_preview_options() :: #{
%%   <<"PollingTime">> => float(),
%%   <<"RecordPollingLimit">> => float()
%% }
-type streaming_data_preview_options() :: #{binary() => any()}.

%% Example:
%% create_json_classifier_request() :: #{
%%   <<"JsonPath">> => string(),
%%   <<"Name">> => string()
%% }
-type create_json_classifier_request() :: #{binary() => any()}.

%% Example:
%% batch_stop_job_run_response() :: #{
%%   <<"Errors">> => list(batch_stop_job_run_error()),
%%   <<"SuccessfulSubmissions">> => list(batch_stop_job_run_successful_submission())
%% }
-type batch_stop_job_run_response() :: #{binary() => any()}.

%% Example:
%% batch_stop_job_run_error() :: #{
%%   <<"ErrorDetail">> => error_detail(),
%%   <<"JobName">> => string(),
%%   <<"JobRunId">> => string()
%% }
-type batch_stop_job_run_error() :: #{binary() => any()}.

%% Example:
%% list_data_quality_results_request() :: #{
%%   <<"Filter">> => data_quality_result_filter_criteria(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_data_quality_results_request() :: #{binary() => any()}.

%% Example:
%% delete_schema_input() :: #{
%%   <<"SchemaId">> := schema_id()
%% }
-type delete_schema_input() :: #{binary() => any()}.

%% Example:
%% view_representation() :: #{
%%   <<"Dialect">> => list(any()),
%%   <<"DialectVersion">> => string(),
%%   <<"IsStale">> => boolean(),
%%   <<"ValidationConnection">> => string(),
%%   <<"ViewExpandedText">> => string(),
%%   <<"ViewOriginalText">> => string()
%% }
-type view_representation() :: #{binary() => any()}.

%% Example:
%% update_job_from_source_control_request() :: #{
%%   <<"AuthStrategy">> => list(any()),
%%   <<"AuthToken">> => string(),
%%   <<"BranchName">> => string(),
%%   <<"CommitId">> => string(),
%%   <<"Folder">> => string(),
%%   <<"JobName">> => string(),
%%   <<"Provider">> => list(any()),
%%   <<"RepositoryName">> => string(),
%%   <<"RepositoryOwner">> => string()
%% }
-type update_job_from_source_control_request() :: #{binary() => any()}.

%% Example:
%% update_user_defined_function_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> := string(),
%%   <<"FunctionInput">> := user_defined_function_input(),
%%   <<"FunctionName">> := string()
%% }
-type update_user_defined_function_request() :: #{binary() => any()}.

%% Example:
%% o_auth2_properties_input() :: #{
%%   <<"AuthorizationCodeProperties">> => authorization_code_properties(),
%%   <<"OAuth2ClientApplication">> => o_auth2_client_application(),
%%   <<"OAuth2Credentials">> => o_auth2_credentials(),
%%   <<"OAuth2GrantType">> => list(any()),
%%   <<"TokenUrl">> => string(),
%%   <<"TokenUrlParametersMap">> => map()
%% }
-type o_auth2_properties_input() :: #{binary() => any()}.

%% Example:
%% create_glue_identity_center_configuration_response() :: #{
%%   <<"ApplicationArn">> => string()
%% }
-type create_glue_identity_center_configuration_response() :: #{binary() => any()}.

%% Example:
%% authentication_configuration() :: #{
%%   <<"AuthenticationType">> => list(any()),
%%   <<"OAuth2Properties">> => o_auth2_properties(),
%%   <<"SecretArn">> => string()
%% }
-type authentication_configuration() :: #{binary() => any()}.

%% Example:
%% update_classifier_request() :: #{
%%   <<"CsvClassifier">> => update_csv_classifier_request(),
%%   <<"GrokClassifier">> => update_grok_classifier_request(),
%%   <<"JsonClassifier">> => update_json_classifier_request(),
%%   <<"XMLClassifier">> => update_x_ml_classifier_request()
%% }
-type update_classifier_request() :: #{binary() => any()}.

%% Example:
%% update_column_statistics_for_table_response() :: #{
%%   <<"Errors">> => list(column_statistics_error())
%% }
-type update_column_statistics_for_table_response() :: #{binary() => any()}.

%% Example:
%% get_trigger_request() :: #{
%%   <<"Name">> := string()
%% }
-type get_trigger_request() :: #{binary() => any()}.

%% Example:
%% glue_encryption_exception() :: #{
%%   <<"Message">> => string()
%% }
-type glue_encryption_exception() :: #{binary() => any()}.

%% Example:
%% mapping() :: #{
%%   <<"Children">> => list(mapping()),
%%   <<"Dropped">> => boolean(),
%%   <<"FromPath">> => list(string()),
%%   <<"FromType">> => string(),
%%   <<"ToKey">> => string(),
%%   <<"ToType">> => string()
%% }
-type mapping() :: #{binary() => any()}.

%% Example:
%% drop_duplicates() :: #{
%%   <<"Columns">> => list(list(string())()),
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string()
%% }
-type drop_duplicates() :: #{binary() => any()}.

%% Example:
%% update_classifier_response() :: #{

%% }
-type update_classifier_response() :: #{binary() => any()}.

%% Example:
%% get_ml_task_run_response() :: #{
%%   <<"CompletedOn">> => non_neg_integer(),
%%   <<"ErrorString">> => string(),
%%   <<"ExecutionTime">> => integer(),
%%   <<"LastModifiedOn">> => non_neg_integer(),
%%   <<"LogGroupName">> => string(),
%%   <<"Properties">> => task_run_properties(),
%%   <<"StartedOn">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"TaskRunId">> => string(),
%%   <<"TransformId">> => string()
%% }
-type get_ml_task_run_response() :: #{binary() => any()}.

%% Example:
%% create_user_defined_function_response() :: #{

%% }
-type create_user_defined_function_response() :: #{binary() => any()}.

%% Example:
%% property_predicate() :: #{
%%   <<"Comparator">> => list(any()),
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type property_predicate() :: #{binary() => any()}.

%% Example:
%% batch_get_table_optimizer_request() :: #{
%%   <<"Entries">> := list(batch_get_table_optimizer_entry())
%% }
-type batch_get_table_optimizer_request() :: #{binary() => any()}.

%% Example:
%% data_source() :: #{
%%   <<"GlueTable">> => glue_table()
%% }
-type data_source() :: #{binary() => any()}.

%% Example:
%% d_db_e_l_t_catalog_additional_options() :: #{
%%   <<"DynamodbExport">> => string(),
%%   <<"DynamodbUnnestDDBJson">> => boolean()
%% }
-type d_db_e_l_t_catalog_additional_options() :: #{binary() => any()}.

%% Example:
%% postgre_s_q_l_catalog_target() :: #{
%%   <<"Database">> => string(),
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"Table">> => string()
%% }
-type postgre_s_q_l_catalog_target() :: #{binary() => any()}.

%% Example:
%% snowflake_target() :: #{
%%   <<"Data">> => snowflake_node_data(),
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string()
%% }
-type snowflake_target() :: #{binary() => any()}.

%% Example:
%% create_catalog_request() :: #{
%%   <<"CatalogInput">> := catalog_input(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_catalog_request() :: #{binary() => any()}.

%% Example:
%% operation_not_supported_exception() :: #{
%%   <<"Message">> => string()
%% }
-type operation_not_supported_exception() :: #{binary() => any()}.

%% Example:
%% list_entities_response() :: #{
%%   <<"Entities">> => list(entity()),
%%   <<"NextToken">> => string()
%% }
-type list_entities_response() :: #{binary() => any()}.

%% Example:
%% edge() :: #{
%%   <<"DestinationId">> => string(),
%%   <<"SourceId">> => string()
%% }
-type edge() :: #{binary() => any()}.

%% Example:
%% list_crawlers_response() :: #{
%%   <<"CrawlerNames">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type list_crawlers_response() :: #{binary() => any()}.

%% Example:
%% list_data_quality_rule_recommendation_runs_request() :: #{
%%   <<"Filter">> => data_quality_rule_recommendation_run_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_data_quality_rule_recommendation_runs_request() :: #{binary() => any()}.

%% Example:
%% list_table_optimizer_runs_request() :: #{
%%   <<"CatalogId">> := string(),
%%   <<"DatabaseName">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"TableName">> := string(),
%%   <<"Type">> := list(any())
%% }
-type list_table_optimizer_runs_request() :: #{binary() => any()}.

%% Example:
%% create_usage_profile_request() :: #{
%%   <<"Configuration">> := profile_configuration(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_usage_profile_request() :: #{binary() => any()}.

%% Example:
%% delete_connection_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"ConnectionName">> := string()
%% }
-type delete_connection_request() :: #{binary() => any()}.

%% Example:
%% registry_list_item() :: #{
%%   <<"CreatedTime">> => string(),
%%   <<"Description">> => string(),
%%   <<"RegistryArn">> => string(),
%%   <<"RegistryName">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedTime">> => string()
%% }
-type registry_list_item() :: #{binary() => any()}.

%% Example:
%% get_table_optimizer_request() :: #{
%%   <<"CatalogId">> := string(),
%%   <<"DatabaseName">> := string(),
%%   <<"TableName">> := string(),
%%   <<"Type">> := list(any())
%% }
-type get_table_optimizer_request() :: #{binary() => any()}.

%% Example:
%% split_fields() :: #{
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"Paths">> => list(list(string())())
%% }
-type split_fields() :: #{binary() => any()}.

%% Example:
%% start_import_labels_task_run_response() :: #{
%%   <<"TaskRunId">> => string()
%% }
-type start_import_labels_task_run_response() :: #{binary() => any()}.

%% Example:
%% batch_create_partition_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> := string(),
%%   <<"PartitionInputList">> := list(partition_input()),
%%   <<"TableName">> := string()
%% }
-type batch_create_partition_request() :: #{binary() => any()}.

%% Example:
%% statement_output() :: #{
%%   <<"Data">> => statement_output_data(),
%%   <<"ErrorName">> => string(),
%%   <<"ErrorValue">> => string(),
%%   <<"ExecutionCount">> => integer(),
%%   <<"Status">> => list(any()),
%%   <<"Traceback">> => list(string())
%% }
-type statement_output() :: #{binary() => any()}.

%% Example:
%% get_partition_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> := string(),
%%   <<"PartitionValues">> := list(string()),
%%   <<"TableName">> := string()
%% }
-type get_partition_request() :: #{binary() => any()}.

%% Example:
%% get_schema_version_response() :: #{
%%   <<"CreatedTime">> => string(),
%%   <<"DataFormat">> => list(any()),
%%   <<"SchemaArn">> => string(),
%%   <<"SchemaDefinition">> => string(),
%%   <<"SchemaVersionId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"VersionNumber">> => float()
%% }
-type get_schema_version_response() :: #{binary() => any()}.

%% Example:
%% put_schema_version_metadata_response() :: #{
%%   <<"LatestVersion">> => boolean(),
%%   <<"MetadataKey">> => string(),
%%   <<"MetadataValue">> => string(),
%%   <<"RegistryName">> => string(),
%%   <<"SchemaArn">> => string(),
%%   <<"SchemaName">> => string(),
%%   <<"SchemaVersionId">> => string(),
%%   <<"VersionNumber">> => float()
%% }
-type put_schema_version_metadata_response() :: #{binary() => any()}.

%% Example:
%% s3_excel_source() :: #{
%%   <<"AdditionalOptions">> => s3_direct_source_additional_options(),
%%   <<"CompressionType">> => list(any()),
%%   <<"Exclusions">> => list(string()),
%%   <<"GroupFiles">> => string(),
%%   <<"GroupSize">> => string(),
%%   <<"MaxBand">> => integer(),
%%   <<"MaxFilesInBand">> => integer(),
%%   <<"Name">> => string(),
%%   <<"NumberRows">> => float(),
%%   <<"OutputSchemas">> => list(glue_schema()),
%%   <<"Paths">> => list(string()),
%%   <<"Recurse">> => boolean(),
%%   <<"SkipFooter">> => integer()
%% }
-type s3_excel_source() :: #{binary() => any()}.

%% Example:
%% iceberg_optimization_properties_output() :: #{
%%   <<"Compaction">> => map(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"OrphanFileDeletion">> => map(),
%%   <<"Retention">> => map(),
%%   <<"RoleArn">> => string()
%% }
-type iceberg_optimization_properties_output() :: #{binary() => any()}.

%% Example:
%% get_schema_by_definition_response() :: #{
%%   <<"CreatedTime">> => string(),
%%   <<"DataFormat">> => list(any()),
%%   <<"SchemaArn">> => string(),
%%   <<"SchemaVersionId">> => string(),
%%   <<"Status">> => list(any())
%% }
-type get_schema_by_definition_response() :: #{binary() => any()}.

%% Example:
%% update_table_response() :: #{

%% }
-type update_table_response() :: #{binary() => any()}.

%% Example:
%% orphan_file_deletion_configuration() :: #{
%%   <<"icebergConfiguration">> => iceberg_orphan_file_deletion_configuration()
%% }
-type orphan_file_deletion_configuration() :: #{binary() => any()}.

%% Example:
%% glue_schema() :: #{
%%   <<"Columns">> => list(glue_studio_schema_column())
%% }
-type glue_schema() :: #{binary() => any()}.

%% Example:
%% update_integration_resource_property_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"SourceProcessingProperties">> => source_processing_properties(),
%%   <<"TargetProcessingProperties">> => target_processing_properties()
%% }
-type update_integration_resource_property_request() :: #{binary() => any()}.

%% Example:
%% delete_job_response() :: #{
%%   <<"JobName">> => string()
%% }
-type delete_job_response() :: #{binary() => any()}.

%% Example:
%% s3_direct_source_additional_options() :: #{
%%   <<"BoundedFiles">> => float(),
%%   <<"BoundedSize">> => float(),
%%   <<"EnableSamplePath">> => boolean(),
%%   <<"SamplePath">> => string()
%% }
-type s3_direct_source_additional_options() :: #{binary() => any()}.

%% Example:
%% table() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"CreatedBy">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"Description">> => string(),
%%   <<"FederatedTable">> => federated_table(),
%%   <<"IsMultiDialectView">> => boolean(),
%%   <<"IsRegisteredWithLakeFormation">> => boolean(),
%%   <<"LastAccessTime">> => non_neg_integer(),
%%   <<"LastAnalyzedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Owner">> => string(),
%%   <<"Parameters">> => map(),
%%   <<"PartitionKeys">> => list(column()),
%%   <<"Retention">> => integer(),
%%   <<"Status">> => table_status(),
%%   <<"StorageDescriptor">> => storage_descriptor(),
%%   <<"TableType">> => string(),
%%   <<"TargetTable">> => table_identifier(),
%%   <<"UpdateTime">> => non_neg_integer(),
%%   <<"VersionId">> => string(),
%%   <<"ViewDefinition">> => view_definition(),
%%   <<"ViewExpandedText">> => string(),
%%   <<"ViewOriginalText">> => string()
%% }
-type table() :: #{binary() => any()}.

%% Example:
%% recrawl_policy() :: #{
%%   <<"RecrawlBehavior">> => list(any())
%% }
-type recrawl_policy() :: #{binary() => any()}.

%% Example:
%% dev_endpoint_custom_libraries() :: #{
%%   <<"ExtraJarsS3Path">> => string(),
%%   <<"ExtraPythonLibsS3Path">> => string()
%% }
-type dev_endpoint_custom_libraries() :: #{binary() => any()}.

%% Example:
%% get_column_statistics_for_table_response() :: #{
%%   <<"ColumnStatisticsList">> => list(column_statistics()),
%%   <<"Errors">> => list(column_error())
%% }
-type get_column_statistics_for_table_response() :: #{binary() => any()}.

%% Example:
%% list_workflows_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Workflows">> => list(string())
%% }
-type list_workflows_response() :: #{binary() => any()}.

%% Example:
%% query_schema_version_metadata_response() :: #{
%%   <<"MetadataInfoMap">> => map(),
%%   <<"NextToken">> => string(),
%%   <<"SchemaVersionId">> => string()
%% }
-type query_schema_version_metadata_response() :: #{binary() => any()}.

%% Example:
%% job_command() :: #{
%%   <<"Name">> => string(),
%%   <<"PythonVersion">> => string(),
%%   <<"Runtime">> => string(),
%%   <<"ScriptLocation">> => string()
%% }
-type job_command() :: #{binary() => any()}.

%% Example:
%% create_integration_resource_property_response() :: #{
%%   <<"ResourceArn">> => string(),
%%   <<"SourceProcessingProperties">> => source_processing_properties(),
%%   <<"TargetProcessingProperties">> => target_processing_properties()
%% }
-type create_integration_resource_property_response() :: #{binary() => any()}.

%% Example:
%% update_partition_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> := string(),
%%   <<"PartitionInput">> := partition_input(),
%%   <<"PartitionValueList">> := list(string()),
%%   <<"TableName">> := string()
%% }
-type update_partition_request() :: #{binary() => any()}.

%% Example:
%% list_schemas_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Schemas">> => list(schema_list_item())
%% }
-type list_schemas_response() :: #{binary() => any()}.

%% Example:
%% illegal_blueprint_state_exception() :: #{
%%   <<"Message">> => string()
%% }
-type illegal_blueprint_state_exception() :: #{binary() => any()}.

%% Example:
%% s3_csv_source() :: #{
%%   <<"AdditionalOptions">> => s3_direct_source_additional_options(),
%%   <<"CompressionType">> => list(any()),
%%   <<"Escaper">> => string(),
%%   <<"Exclusions">> => list(string()),
%%   <<"GroupFiles">> => string(),
%%   <<"GroupSize">> => string(),
%%   <<"MaxBand">> => integer(),
%%   <<"MaxFilesInBand">> => integer(),
%%   <<"Multiline">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"OptimizePerformance">> => boolean(),
%%   <<"OutputSchemas">> => list(glue_schema()),
%%   <<"Paths">> => list(string()),
%%   <<"QuoteChar">> => list(any()),
%%   <<"Recurse">> => boolean(),
%%   <<"Separator">> => list(any()),
%%   <<"SkipFirst">> => boolean(),
%%   <<"WithHeader">> => boolean(),
%%   <<"WriteHeader">> => boolean()
%% }
-type s3_csv_source() :: #{binary() => any()}.

%% Example:
%% statement_output_data() :: #{
%%   <<"TextPlain">> => string()
%% }
-type statement_output_data() :: #{binary() => any()}.

%% Example:
%% resource_not_ready_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_ready_exception() :: #{binary() => any()}.

%% Example:
%% update_open_table_format_input() :: #{
%%   <<"UpdateIcebergInput">> => update_iceberg_input()
%% }
-type update_open_table_format_input() :: #{binary() => any()}.

%% Example:
%% start_ml_labeling_set_generation_task_run_response() :: #{
%%   <<"TaskRunId">> => string()
%% }
-type start_ml_labeling_set_generation_task_run_response() :: #{binary() => any()}.

%% Example:
%% create_session_response() :: #{
%%   <<"Session">> => session()
%% }
-type create_session_response() :: #{binary() => any()}.

%% Example:
%% delete_session_request() :: #{
%%   <<"Id">> := string(),
%%   <<"RequestOrigin">> => string()
%% }
-type delete_session_request() :: #{binary() => any()}.

%% Example:
%% crawler() :: #{
%%   <<"Classifiers">> => list(string()),
%%   <<"Configuration">> => string(),
%%   <<"CrawlElapsedTime">> => float(),
%%   <<"CrawlerSecurityConfiguration">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DatabaseName">> => string(),
%%   <<"Description">> => string(),
%%   <<"LakeFormationConfiguration">> => lake_formation_configuration(),
%%   <<"LastCrawl">> => last_crawl_info(),
%%   <<"LastUpdated">> => non_neg_integer(),
%%   <<"LineageConfiguration">> => lineage_configuration(),
%%   <<"Name">> => string(),
%%   <<"RecrawlPolicy">> => recrawl_policy(),
%%   <<"Role">> => string(),
%%   <<"Schedule">> => schedule(),
%%   <<"SchemaChangePolicy">> => schema_change_policy(),
%%   <<"State">> => list(any()),
%%   <<"TablePrefix">> => string(),
%%   <<"Targets">> => crawler_targets(),
%%   <<"Version">> => float()
%% }
-type crawler() :: #{binary() => any()}.

%% Example:
%% amazon_redshift_target() :: #{
%%   <<"Data">> => amazon_redshift_node_data(),
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string()
%% }
-type amazon_redshift_target() :: #{binary() => any()}.

%% Example:
%% delete_security_configuration_response() :: #{

%% }
-type delete_security_configuration_response() :: #{binary() => any()}.

%% Example:
%% view_representation_input() :: #{
%%   <<"Dialect">> => list(any()),
%%   <<"DialectVersion">> => string(),
%%   <<"ValidationConnection">> => string(),
%%   <<"ViewExpandedText">> => string(),
%%   <<"ViewOriginalText">> => string()
%% }
-type view_representation_input() :: #{binary() => any()}.

%% Example:
%% batch_get_table_optimizer_response() :: #{
%%   <<"Failures">> => list(batch_get_table_optimizer_error()),
%%   <<"TableOptimizers">> => list(batch_table_optimizer())
%% }
-type batch_get_table_optimizer_response() :: #{binary() => any()}.

%% Example:
%% get_workflow_run_response() :: #{
%%   <<"Run">> => workflow_run()
%% }
-type get_workflow_run_response() :: #{binary() => any()}.

%% Example:
%% blueprint_run() :: #{
%%   <<"BlueprintName">> => string(),
%%   <<"CompletedOn">> => non_neg_integer(),
%%   <<"ErrorMessage">> => string(),
%%   <<"Parameters">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"RollbackErrorMessage">> => string(),
%%   <<"RunId">> => string(),
%%   <<"StartedOn">> => non_neg_integer(),
%%   <<"State">> => list(any()),
%%   <<"WorkflowName">> => string()
%% }
-type blueprint_run() :: #{binary() => any()}.

%% Example:
%% get_data_quality_ruleset_response() :: #{
%%   <<"CreatedOn">> => non_neg_integer(),
%%   <<"DataQualitySecurityConfiguration">> => string(),
%%   <<"Description">> => string(),
%%   <<"LastModifiedOn">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"RecommendationRunId">> => string(),
%%   <<"Ruleset">> => string(),
%%   <<"TargetTable">> => data_quality_target_table()
%% }
-type get_data_quality_ruleset_response() :: #{binary() => any()}.

%% Example:
%% create_database_response() :: #{

%% }
-type create_database_response() :: #{binary() => any()}.

%% Example:
%% confusion_matrix() :: #{
%%   <<"NumFalseNegatives">> => float(),
%%   <<"NumFalsePositives">> => float(),
%%   <<"NumTrueNegatives">> => float(),
%%   <<"NumTruePositives">> => float()
%% }
-type confusion_matrix() :: #{binary() => any()}.

%% Example:
%% auto_data_quality() :: #{
%%   <<"EvaluationContext">> => string(),
%%   <<"IsEnabled">> => boolean()
%% }
-type auto_data_quality() :: #{binary() => any()}.

%% Example:
%% update_glue_identity_center_configuration_response() :: #{

%% }
-type update_glue_identity_center_configuration_response() :: #{binary() => any()}.

%% Example:
%% evaluation_metrics() :: #{
%%   <<"FindMatchesMetrics">> => find_matches_metrics(),
%%   <<"TransformType">> => list(any())
%% }
-type evaluation_metrics() :: #{binary() => any()}.

%% Example:
%% column_statistics_task_settings() :: #{
%%   <<"CatalogID">> => string(),
%%   <<"ColumnNameList">> => list(string()),
%%   <<"DatabaseName">> => string(),
%%   <<"LastExecutionAttempt">> => execution_attempt(),
%%   <<"Role">> => string(),
%%   <<"SampleSize">> => float(),
%%   <<"Schedule">> => schedule(),
%%   <<"ScheduleType">> => list(any()),
%%   <<"SecurityConfiguration">> => string(),
%%   <<"SettingSource">> => list(any()),
%%   <<"TableName">> => string()
%% }
-type column_statistics_task_settings() :: #{binary() => any()}.

%% Example:
%% create_database_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseInput">> := database_input(),
%%   <<"Tags">> => map()
%% }
-type create_database_request() :: #{binary() => any()}.

%% Example:
%% create_connection_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"ConnectionInput">> := connection_input(),
%%   <<"Tags">> => map()
%% }
-type create_connection_request() :: #{binary() => any()}.

%% Example:
%% create_catalog_response() :: #{

%% }
-type create_catalog_response() :: #{binary() => any()}.

%% Example:
%% get_user_defined_functions_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Pattern">> := string()
%% }
-type get_user_defined_functions_request() :: #{binary() => any()}.

%% Example:
%% iceberg_target() :: #{
%%   <<"ConnectionName">> => string(),
%%   <<"Exclusions">> => list(string()),
%%   <<"MaximumTraversalDepth">> => integer(),
%%   <<"Paths">> => list(string())
%% }
-type iceberg_target() :: #{binary() => any()}.

%% Example:
%% update_dev_endpoint_request() :: #{
%%   <<"AddArguments">> => map(),
%%   <<"AddPublicKeys">> => list(string()),
%%   <<"CustomLibraries">> => dev_endpoint_custom_libraries(),
%%   <<"DeleteArguments">> => list(string()),
%%   <<"DeletePublicKeys">> => list(string()),
%%   <<"EndpointName">> := string(),
%%   <<"PublicKey">> => string(),
%%   <<"UpdateEtlLibraries">> => boolean()
%% }
-type update_dev_endpoint_request() :: #{binary() => any()}.

%% Example:
%% update_database_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseInput">> := database_input(),
%%   <<"Name">> := string()
%% }
-type update_database_request() :: #{binary() => any()}.

%% Example:
%% start_column_statistics_task_run_request() :: #{
%%   <<"CatalogID">> => string(),
%%   <<"ColumnNameList">> => list(string()),
%%   <<"DatabaseName">> := string(),
%%   <<"Role">> := string(),
%%   <<"SampleSize">> => float(),
%%   <<"SecurityConfiguration">> => string(),
%%   <<"TableName">> := string()
%% }
-type start_column_statistics_task_run_request() :: #{binary() => any()}.

%% Example:
%% custom_entity_type() :: #{
%%   <<"ContextWords">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"RegexString">> => string()
%% }
-type custom_entity_type() :: #{binary() => any()}.

%% Example:
%% get_schema_response() :: #{
%%   <<"Compatibility">> => list(any()),
%%   <<"CreatedTime">> => string(),
%%   <<"DataFormat">> => list(any()),
%%   <<"Description">> => string(),
%%   <<"LatestSchemaVersion">> => float(),
%%   <<"NextSchemaVersion">> => float(),
%%   <<"RegistryArn">> => string(),
%%   <<"RegistryName">> => string(),
%%   <<"SchemaArn">> => string(),
%%   <<"SchemaCheckpoint">> => float(),
%%   <<"SchemaName">> => string(),
%%   <<"SchemaStatus">> => list(any()),
%%   <<"UpdatedTime">> => string()
%% }
-type get_schema_response() :: #{binary() => any()}.

%% Example:
%% batch_get_table_optimizer_entry() :: #{
%%   <<"catalogId">> => string(),
%%   <<"databaseName">> => string(),
%%   <<"tableName">> => string(),
%%   <<"type">> => list(any())
%% }
-type batch_get_table_optimizer_entry() :: #{binary() => any()}.

%% Example:
%% merge() :: #{
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"PrimaryKeys">> => list(list(string())()),
%%   <<"Source">> => string()
%% }
-type merge() :: #{binary() => any()}.

%% Example:
%% data_quality_ruleset_filter_criteria() :: #{
%%   <<"CreatedAfter">> => non_neg_integer(),
%%   <<"CreatedBefore">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"LastModifiedAfter">> => non_neg_integer(),
%%   <<"LastModifiedBefore">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"TargetTable">> => data_quality_target_table()
%% }
-type data_quality_ruleset_filter_criteria() :: #{binary() => any()}.

%% Example:
%% batch_delete_table_version_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> := string(),
%%   <<"TableName">> := string(),
%%   <<"VersionIds">> := list(string())
%% }
-type batch_delete_table_version_request() :: #{binary() => any()}.

%% Example:
%% skewed_info() :: #{
%%   <<"SkewedColumnNames">> => list(string()),
%%   <<"SkewedColumnValueLocationMaps">> => map(),
%%   <<"SkewedColumnValues">> => list(string())
%% }
-type skewed_info() :: #{binary() => any()}.

%% Example:
%% get_schema_version_input() :: #{
%%   <<"SchemaId">> => schema_id(),
%%   <<"SchemaVersionId">> => string(),
%%   <<"SchemaVersionNumber">> => schema_version_number()
%% }
-type get_schema_version_input() :: #{binary() => any()}.

%% Example:
%% delete_table_version_response() :: #{

%% }
-type delete_table_version_response() :: #{binary() => any()}.

%% Example:
%% union() :: #{
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"UnionType">> => list(any())
%% }
-type union() :: #{binary() => any()}.

%% Example:
%% get_crawlers_response() :: #{
%%   <<"Crawlers">> => list(crawler()),
%%   <<"NextToken">> => string()
%% }
-type get_crawlers_response() :: #{binary() => any()}.

%% Example:
%% list_column_statistics_task_runs_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_column_statistics_task_runs_request() :: #{binary() => any()}.

%% Example:
%% capabilities() :: #{
%%   <<"SupportedAuthenticationTypes">> => list(list(any())()),
%%   <<"SupportedComputeEnvironments">> => list(list(any())()),
%%   <<"SupportedDataOperations">> => list(list(any())())
%% }
-type capabilities() :: #{binary() => any()}.

%% Example:
%% create_registry_input() :: #{
%%   <<"Description">> => string(),
%%   <<"RegistryName">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_registry_input() :: #{binary() => any()}.

%% Example:
%% test_connection_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"ConnectionName">> => string(),
%%   <<"TestConnectionInput">> => test_connection_input()
%% }
-type test_connection_request() :: #{binary() => any()}.

%% Example:
%% update_partition_response() :: #{

%% }
-type update_partition_response() :: #{binary() => any()}.

%% Example:
%% job_bookmark_entry() :: #{
%%   <<"Attempt">> => integer(),
%%   <<"JobBookmark">> => string(),
%%   <<"JobName">> => string(),
%%   <<"PreviousRunId">> => string(),
%%   <<"Run">> => integer(),
%%   <<"RunId">> => string(),
%%   <<"Version">> => integer()
%% }
-type job_bookmark_entry() :: #{binary() => any()}.

%% Example:
%% lake_formation_configuration() :: #{
%%   <<"AccountId">> => string(),
%%   <<"UseLakeFormationCredentials">> => boolean()
%% }
-type lake_formation_configuration() :: #{binary() => any()}.

%% Example:
%% list_table_optimizer_runs_response() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"TableName">> => string(),
%%   <<"TableOptimizerRuns">> => list(table_optimizer_run())
%% }
-type list_table_optimizer_runs_response() :: #{binary() => any()}.

%% Example:
%% update_column_statistics_task_settings_request() :: #{
%%   <<"CatalogID">> => string(),
%%   <<"ColumnNameList">> => list(string()),
%%   <<"DatabaseName">> := string(),
%%   <<"Role">> => string(),
%%   <<"SampleSize">> => float(),
%%   <<"Schedule">> => string(),
%%   <<"SecurityConfiguration">> => string(),
%%   <<"TableName">> := string()
%% }
-type update_column_statistics_task_settings_request() :: #{binary() => any()}.

%% Example:
%% start_ml_labeling_set_generation_task_run_request() :: #{
%%   <<"OutputS3Path">> := string(),
%%   <<"TransformId">> := string()
%% }
-type start_ml_labeling_set_generation_task_run_request() :: #{binary() => any()}.

%% Example:
%% connection_type_variant() :: #{
%%   <<"ConnectionTypeVariantName">> => string(),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"LogoUrl">> => string()
%% }
-type connection_type_variant() :: #{binary() => any()}.

%% Example:
%% cancel_ml_task_run_request() :: #{
%%   <<"TaskRunId">> := string(),
%%   <<"TransformId">> := string()
%% }
-type cancel_ml_task_run_request() :: #{binary() => any()}.

%% Example:
%% spigot() :: #{
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"Path">> => string(),
%%   <<"Prob">> => float(),
%%   <<"Topk">> => integer()
%% }
-type spigot() :: #{binary() => any()}.

%% Example:
%% iceberg_optimization_properties() :: #{
%%   <<"Compaction">> => map(),
%%   <<"OrphanFileDeletion">> => map(),
%%   <<"Retention">> => map(),
%%   <<"RoleArn">> => string()
%% }
-type iceberg_optimization_properties() :: #{binary() => any()}.

%% Example:
%% j_db_c_connector_target() :: #{
%%   <<"AdditionalOptions">> => map(),
%%   <<"ConnectionName">> => string(),
%%   <<"ConnectionTable">> => string(),
%%   <<"ConnectionType">> => string(),
%%   <<"ConnectorName">> => string(),
%%   <<"Inputs">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"OutputSchemas">> => list(glue_schema())
%% }
-type j_db_c_connector_target() :: #{binary() => any()}.

%% Example:
%% stop_crawler_response() :: #{

%% }
-type stop_crawler_response() :: #{binary() => any()}.

%% Example:
%% task_run() :: #{
%%   <<"CompletedOn">> => non_neg_integer(),
%%   <<"ErrorString">> => string(),
%%   <<"ExecutionTime">> => integer(),
%%   <<"LastModifiedOn">> => non_neg_integer(),
%%   <<"LogGroupName">> => string(),
%%   <<"Properties">> => task_run_properties(),
%%   <<"StartedOn">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"TaskRunId">> => string(),
%%   <<"TransformId">> => string()
%% }
-type task_run() :: #{binary() => any()}.

%% Example:
%% create_glue_identity_center_configuration_request() :: #{
%%   <<"InstanceArn">> := string(),
%%   <<"Scopes">> => list(string())
%% }
-type create_glue_identity_center_configuration_request() :: #{binary() => any()}.

%% Example:
%% get_column_statistics_task_settings_response() :: #{
%%   <<"ColumnStatisticsTaskSettings">> => column_statistics_task_settings()
%% }
-type get_column_statistics_task_settings_response() :: #{binary() => any()}.

%% Example:
%% string_column_statistics_data() :: #{
%%   <<"AverageLength">> => float(),
%%   <<"MaximumLength">> => float(),
%%   <<"NumberOfDistinctValues">> => float(),
%%   <<"NumberOfNulls">> => float()
%% }
-type string_column_statistics_data() :: #{binary() => any()}.

%% Example:
%% basic_authentication_credentials() :: #{
%%   <<"Password">> => string(),
%%   <<"Username">> => string()
%% }
-type basic_authentication_credentials() :: #{binary() => any()}.

%% Example:
%% create_iceberg_table_input() :: #{
%%   <<"Location">> => string(),
%%   <<"PartitionSpec">> => iceberg_partition_spec(),
%%   <<"Properties">> => map(),
%%   <<"Schema">> => iceberg_schema(),
%%   <<"WriteOrder">> => iceberg_sort_order()
%% }
-type create_iceberg_table_input() :: #{binary() => any()}.

%% Example:
%% iceberg_retention_configuration() :: #{
%%   <<"cleanExpiredFiles">> => boolean(),
%%   <<"numberOfSnapshotsToRetain">> => integer(),
%%   <<"runRateInHours">> => integer(),
%%   <<"snapshotRetentionPeriodInDays">> => integer()
%% }
-type iceberg_retention_configuration() :: #{binary() => any()}.

%% Example:
%% update_column_statistics_for_table_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"ColumnStatisticsList">> := list(column_statistics()),
%%   <<"DatabaseName">> := string(),
%%   <<"TableName">> := string()
%% }
-type update_column_statistics_for_table_request() :: #{binary() => any()}.

%% Example:
%% get_workflow_response() :: #{
%%   <<"Workflow">> => workflow()
%% }
-type get_workflow_response() :: #{binary() => any()}.

%% Example:
%% starting_event_batch_condition() :: #{
%%   <<"BatchSize">> => integer(),
%%   <<"BatchWindow">> => integer()
%% }
-type starting_event_batch_condition() :: #{binary() => any()}.

%% Example:
%% transform_parameters() :: #{
%%   <<"FindMatchesParameters">> => find_matches_parameters(),
%%   <<"TransformType">> => list(any())
%% }
-type transform_parameters() :: #{binary() => any()}.

%% Example:
%% delete_database_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"Name">> := string()
%% }
-type delete_database_request() :: #{binary() => any()}.

%% Example:
%% get_partition_indexes_request() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> := string(),
%%   <<"NextToken">> => string(),
%%   <<"TableName">> := string()
%% }
-type get_partition_indexes_request() :: #{binary() => any()}.

-type batch_create_partition_errors() ::
    glue_encryption_exception() | 
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    already_exists_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type batch_delete_connection_errors() ::
    internal_service_exception() | 
    operation_timeout_exception().

-type batch_delete_partition_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type batch_delete_table_errors() ::
    resource_not_ready_exception() | 
    glue_encryption_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type batch_delete_table_version_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type batch_get_blueprints_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type batch_get_crawlers_errors() ::
    invalid_input_exception() | 
    operation_timeout_exception().

-type batch_get_custom_entity_types_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type batch_get_data_quality_result_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type batch_get_dev_endpoints_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type batch_get_jobs_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type batch_get_partition_errors() ::
    glue_encryption_exception() | 
    federation_source_retryable_exception() | 
    federation_source_exception() | 
    invalid_input_exception() | 
    invalid_state_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type batch_get_table_optimizer_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    entity_not_found_exception().

-type batch_get_triggers_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type batch_get_workflows_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type batch_put_data_quality_statistic_annotation_errors() ::
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    entity_not_found_exception().

-type batch_stop_job_run_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type batch_update_partition_errors() ::
    glue_encryption_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type cancel_data_quality_rule_recommendation_run_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type cancel_data_quality_ruleset_evaluation_run_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type cancel_ml_task_run_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type cancel_statement_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    illegal_session_state_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type check_schema_version_validity_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception().

-type create_blueprint_errors() ::
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    already_exists_exception() | 
    operation_timeout_exception().

-type create_catalog_errors() ::
    glue_encryption_exception() | 
    concurrent_modification_exception() | 
    access_denied_exception() | 
    federated_resource_already_exists_exception() | 
    federation_source_exception() | 
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    already_exists_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type create_classifier_errors() ::
    invalid_input_exception() | 
    already_exists_exception() | 
    operation_timeout_exception().

-type create_column_statistics_task_settings_errors() ::
    column_statistics_task_running_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    already_exists_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type create_connection_errors() ::
    glue_encryption_exception() | 
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    already_exists_exception() | 
    operation_timeout_exception().

-type create_crawler_errors() ::
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    already_exists_exception() | 
    operation_timeout_exception().

-type create_custom_entity_type_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    idempotent_parameter_mismatch_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    already_exists_exception() | 
    operation_timeout_exception().

-type create_data_quality_ruleset_errors() ::
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    already_exists_exception() | 
    operation_timeout_exception().

-type create_database_errors() ::
    glue_encryption_exception() | 
    federation_source_retryable_exception() | 
    concurrent_modification_exception() | 
    federated_resource_already_exists_exception() | 
    federation_source_exception() | 
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    already_exists_exception() | 
    operation_timeout_exception().

-type create_dev_endpoint_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    idempotent_parameter_mismatch_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    already_exists_exception() | 
    operation_timeout_exception().

-type create_glue_identity_center_configuration_errors() ::
    concurrent_modification_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    already_exists_exception() | 
    operation_timeout_exception().

-type create_integration_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    kms_key_not_accessible_fault() | 
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    integration_quota_exceeded_fault() | 
    integration_conflict_operation_fault() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    entity_not_found_exception().

-type create_integration_resource_property_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_service_exception() | 
    entity_not_found_exception().

-type create_integration_table_properties_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    entity_not_found_exception().

-type create_job_errors() ::
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    idempotent_parameter_mismatch_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    already_exists_exception() | 
    operation_timeout_exception().

-type create_ml_transform_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    idempotent_parameter_mismatch_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    already_exists_exception() | 
    operation_timeout_exception().

-type create_partition_errors() ::
    glue_encryption_exception() | 
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    already_exists_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type create_partition_index_errors() ::
    glue_encryption_exception() | 
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    already_exists_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type create_registry_errors() ::
    concurrent_modification_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    already_exists_exception().

-type create_schema_errors() ::
    concurrent_modification_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    already_exists_exception() | 
    entity_not_found_exception().

-type create_script_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type create_security_configuration_errors() ::
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    already_exists_exception() | 
    operation_timeout_exception().

-type create_session_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    idempotent_parameter_mismatch_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    already_exists_exception() | 
    operation_timeout_exception().

-type create_table_errors() ::
    resource_not_ready_exception() | 
    glue_encryption_exception() | 
    federation_source_retryable_exception() | 
    concurrent_modification_exception() | 
    federation_source_exception() | 
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    already_exists_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type create_table_optimizer_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    already_exists_exception() | 
    entity_not_found_exception().

-type create_trigger_errors() ::
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    idempotent_parameter_mismatch_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    already_exists_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type create_usage_profile_errors() ::
    operation_not_supported_exception() | 
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    already_exists_exception() | 
    operation_timeout_exception().

-type create_user_defined_function_errors() ::
    glue_encryption_exception() | 
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    already_exists_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type create_workflow_errors() ::
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    already_exists_exception() | 
    operation_timeout_exception().

-type delete_blueprint_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type delete_catalog_errors() ::
    glue_encryption_exception() | 
    concurrent_modification_exception() | 
    access_denied_exception() | 
    federation_source_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type delete_classifier_errors() ::
    operation_timeout_exception() | 
    entity_not_found_exception().

-type delete_column_statistics_for_partition_errors() ::
    glue_encryption_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type delete_column_statistics_for_table_errors() ::
    glue_encryption_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type delete_column_statistics_task_settings_errors() ::
    invalid_input_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type delete_connection_errors() ::
    operation_timeout_exception() | 
    entity_not_found_exception().

-type delete_crawler_errors() ::
    crawler_running_exception() | 
    scheduler_transitioning_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type delete_custom_entity_type_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type delete_data_quality_ruleset_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type delete_database_errors() ::
    federation_source_retryable_exception() | 
    concurrent_modification_exception() | 
    federation_source_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type delete_dev_endpoint_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type delete_glue_identity_center_configuration_errors() ::
    concurrent_modification_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type delete_integration_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    invalid_integration_state_fault() | 
    internal_server_exception() | 
    integration_not_found_fault() | 
    invalid_input_exception() | 
    conflict_exception() | 
    integration_conflict_operation_fault() | 
    invalid_state_exception() | 
    internal_service_exception() | 
    entity_not_found_exception().

-type delete_integration_table_properties_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    entity_not_found_exception().

-type delete_job_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type delete_ml_transform_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type delete_partition_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type delete_partition_index_errors() ::
    glue_encryption_exception() | 
    invalid_input_exception() | 
    conflict_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type delete_registry_errors() ::
    concurrent_modification_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    entity_not_found_exception().

-type delete_resource_policy_errors() ::
    condition_check_failure_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type delete_schema_errors() ::
    concurrent_modification_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    entity_not_found_exception().

-type delete_schema_versions_errors() ::
    concurrent_modification_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    entity_not_found_exception().

-type delete_security_configuration_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type delete_session_errors() ::
    concurrent_modification_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    illegal_session_state_exception() | 
    operation_timeout_exception().

-type delete_table_errors() ::
    resource_not_ready_exception() | 
    federation_source_retryable_exception() | 
    concurrent_modification_exception() | 
    federation_source_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type delete_table_optimizer_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    entity_not_found_exception().

-type delete_table_version_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type delete_trigger_errors() ::
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type delete_usage_profile_errors() ::
    operation_not_supported_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type delete_user_defined_function_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type delete_workflow_errors() ::
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type describe_connection_type_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception().

-type describe_entity_errors() ::
    glue_encryption_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    federation_source_exception() | 
    invalid_input_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type describe_inbound_integrations_errors() ::
    operation_not_supported_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    integration_not_found_fault() | 
    invalid_input_exception() | 
    target_resource_not_found() | 
    internal_service_exception() | 
    entity_not_found_exception().

-type describe_integrations_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    integration_not_found_fault() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    entity_not_found_exception().

-type get_blueprint_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_blueprint_run_errors() ::
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_blueprint_runs_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_catalog_errors() ::
    glue_encryption_exception() | 
    federation_source_retryable_exception() | 
    access_denied_exception() | 
    federation_source_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_catalog_import_status_errors() ::
    internal_service_exception() | 
    operation_timeout_exception().

-type get_catalogs_errors() ::
    glue_encryption_exception() | 
    federation_source_retryable_exception() | 
    access_denied_exception() | 
    federation_source_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_classifier_errors() ::
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_classifiers_errors() ::
    operation_timeout_exception().

-type get_column_statistics_for_partition_errors() ::
    glue_encryption_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_column_statistics_for_table_errors() ::
    glue_encryption_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_column_statistics_task_run_errors() ::
    invalid_input_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_column_statistics_task_runs_errors() ::
    operation_timeout_exception().

-type get_column_statistics_task_settings_errors() ::
    invalid_input_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_connection_errors() ::
    glue_encryption_exception() | 
    invalid_input_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_connections_errors() ::
    glue_encryption_exception() | 
    invalid_input_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_crawler_errors() ::
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_crawler_metrics_errors() ::
    operation_timeout_exception().

-type get_crawlers_errors() ::
    operation_timeout_exception().

-type get_custom_entity_type_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_data_catalog_encryption_settings_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type get_data_quality_model_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_data_quality_model_result_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_data_quality_result_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_data_quality_rule_recommendation_run_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_data_quality_ruleset_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_data_quality_ruleset_evaluation_run_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_database_errors() ::
    glue_encryption_exception() | 
    federation_source_retryable_exception() | 
    federation_source_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_databases_errors() ::
    glue_encryption_exception() | 
    federation_source_retryable_exception() | 
    federation_source_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_dataflow_graph_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type get_dev_endpoint_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_dev_endpoints_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_entity_records_errors() ::
    glue_encryption_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    federation_source_exception() | 
    invalid_input_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_glue_identity_center_configuration_errors() ::
    concurrent_modification_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_integration_resource_property_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    entity_not_found_exception().

-type get_integration_table_properties_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    entity_not_found_exception().

-type get_job_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_job_bookmark_errors() ::
    validation_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_job_run_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_job_runs_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_jobs_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_mapping_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_ml_task_run_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_ml_task_runs_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_ml_transform_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_ml_transforms_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_partition_errors() ::
    glue_encryption_exception() | 
    federation_source_retryable_exception() | 
    federation_source_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_partition_indexes_errors() ::
    invalid_input_exception() | 
    conflict_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_partitions_errors() ::
    resource_not_ready_exception() | 
    glue_encryption_exception() | 
    federation_source_retryable_exception() | 
    federation_source_exception() | 
    invalid_input_exception() | 
    invalid_state_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_plan_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type get_registry_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    entity_not_found_exception().

-type get_resource_policies_errors() ::
    glue_encryption_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type get_resource_policy_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_schema_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    entity_not_found_exception().

-type get_schema_by_definition_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    entity_not_found_exception().

-type get_schema_version_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    entity_not_found_exception().

-type get_schema_versions_diff_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    entity_not_found_exception().

-type get_security_configuration_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_security_configurations_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_session_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_statement_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    illegal_session_state_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_table_errors() ::
    resource_not_ready_exception() | 
    glue_encryption_exception() | 
    federation_source_retryable_exception() | 
    federation_source_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_table_optimizer_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    entity_not_found_exception().

-type get_table_version_errors() ::
    glue_encryption_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_table_versions_errors() ::
    glue_encryption_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_tables_errors() ::
    glue_encryption_exception() | 
    federation_source_retryable_exception() | 
    federation_source_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_tags_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_trigger_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_triggers_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_unfiltered_partition_metadata_errors() ::
    glue_encryption_exception() | 
    federation_source_retryable_exception() | 
    permission_type_mismatch_exception() | 
    federation_source_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_unfiltered_partitions_metadata_errors() ::
    glue_encryption_exception() | 
    federation_source_retryable_exception() | 
    permission_type_mismatch_exception() | 
    federation_source_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_unfiltered_table_metadata_errors() ::
    glue_encryption_exception() | 
    federation_source_retryable_exception() | 
    permission_type_mismatch_exception() | 
    federation_source_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_usage_profile_errors() ::
    operation_not_supported_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_user_defined_function_errors() ::
    glue_encryption_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_user_defined_functions_errors() ::
    glue_encryption_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_workflow_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_workflow_run_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_workflow_run_properties_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type get_workflow_runs_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type import_catalog_to_glue_errors() ::
    internal_service_exception() | 
    operation_timeout_exception().

-type list_blueprints_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type list_column_statistics_task_runs_errors() ::
    operation_timeout_exception().

-type list_connection_types_errors() ::
    access_denied_exception() | 
    internal_service_exception().

-type list_crawlers_errors() ::
    operation_timeout_exception().

-type list_crawls_errors() ::
    invalid_input_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type list_custom_entity_types_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type list_data_quality_results_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type list_data_quality_rule_recommendation_runs_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type list_data_quality_ruleset_evaluation_runs_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type list_data_quality_rulesets_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type list_data_quality_statistic_annotations_errors() ::
    invalid_input_exception() | 
    internal_service_exception().

-type list_data_quality_statistics_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    entity_not_found_exception().

-type list_dev_endpoints_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type list_entities_errors() ::
    glue_encryption_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    federation_source_exception() | 
    invalid_input_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type list_jobs_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type list_ml_transforms_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type list_registries_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception().

-type list_schema_versions_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    entity_not_found_exception().

-type list_schemas_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    entity_not_found_exception().

-type list_sessions_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type list_statements_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    illegal_session_state_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type list_table_optimizer_runs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    entity_not_found_exception().

-type list_triggers_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type list_usage_profiles_errors() ::
    operation_not_supported_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type list_workflows_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type modify_integration_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    invalid_integration_state_fault() | 
    internal_server_exception() | 
    integration_not_found_fault() | 
    invalid_input_exception() | 
    conflict_exception() | 
    integration_conflict_operation_fault() | 
    invalid_state_exception() | 
    internal_service_exception() | 
    entity_not_found_exception().

-type put_data_catalog_encryption_settings_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type put_data_quality_profile_annotation_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    entity_not_found_exception().

-type put_resource_policy_errors() ::
    condition_check_failure_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type put_schema_version_metadata_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    already_exists_exception() | 
    entity_not_found_exception().

-type put_workflow_run_properties_errors() ::
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    already_exists_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type query_schema_version_metadata_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    entity_not_found_exception().

-type register_schema_version_errors() ::
    concurrent_modification_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    entity_not_found_exception().

-type remove_schema_version_metadata_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    entity_not_found_exception().

-type reset_job_bookmark_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type resume_workflow_run_errors() ::
    invalid_input_exception() | 
    illegal_workflow_state_exception() | 
    internal_service_exception() | 
    concurrent_runs_exceeded_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type run_statement_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    illegal_session_state_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type search_tables_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type start_blueprint_run_errors() ::
    illegal_blueprint_state_exception() | 
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type start_column_statistics_task_run_errors() ::
    column_statistics_task_running_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type start_column_statistics_task_run_schedule_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type start_crawler_errors() ::
    crawler_running_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type start_crawler_schedule_errors() ::
    no_schedule_exception() | 
    scheduler_transitioning_exception() | 
    scheduler_running_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type start_data_quality_rule_recommendation_run_errors() ::
    invalid_input_exception() | 
    conflict_exception() | 
    internal_service_exception() | 
    operation_timeout_exception().

-type start_data_quality_ruleset_evaluation_run_errors() ::
    invalid_input_exception() | 
    conflict_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type start_export_labels_task_run_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type start_import_labels_task_run_errors() ::
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type start_job_run_errors() ::
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    concurrent_runs_exceeded_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type start_ml_evaluation_task_run_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    ml_transform_not_ready_exception() | 
    concurrent_runs_exceeded_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type start_ml_labeling_set_generation_task_run_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    concurrent_runs_exceeded_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type start_trigger_errors() ::
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    concurrent_runs_exceeded_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type start_workflow_run_errors() ::
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    concurrent_runs_exceeded_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type stop_column_statistics_task_run_errors() ::
    column_statistics_task_not_running_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception() | 
    column_statistics_task_stopping_exception().

-type stop_column_statistics_task_run_schedule_errors() ::
    invalid_input_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type stop_crawler_errors() ::
    crawler_not_running_exception() | 
    crawler_stopping_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type stop_crawler_schedule_errors() ::
    scheduler_transitioning_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception() | 
    scheduler_not_running_exception().

-type stop_session_errors() ::
    concurrent_modification_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    illegal_session_state_exception() | 
    operation_timeout_exception().

-type stop_trigger_errors() ::
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type stop_workflow_run_errors() ::
    invalid_input_exception() | 
    illegal_workflow_state_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type tag_resource_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type test_connection_errors() ::
    glue_encryption_exception() | 
    access_denied_exception() | 
    federation_source_exception() | 
    invalid_input_exception() | 
    conflict_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type untag_resource_errors() ::
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type update_blueprint_errors() ::
    illegal_blueprint_state_exception() | 
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type update_catalog_errors() ::
    glue_encryption_exception() | 
    concurrent_modification_exception() | 
    access_denied_exception() | 
    federation_source_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type update_classifier_errors() ::
    invalid_input_exception() | 
    version_mismatch_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type update_column_statistics_for_partition_errors() ::
    glue_encryption_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type update_column_statistics_for_table_errors() ::
    glue_encryption_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type update_column_statistics_task_settings_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    version_mismatch_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type update_connection_errors() ::
    glue_encryption_exception() | 
    invalid_input_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type update_crawler_errors() ::
    invalid_input_exception() | 
    crawler_running_exception() | 
    version_mismatch_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type update_crawler_schedule_errors() ::
    invalid_input_exception() | 
    scheduler_transitioning_exception() | 
    version_mismatch_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type update_data_quality_ruleset_errors() ::
    invalid_input_exception() | 
    idempotent_parameter_mismatch_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    already_exists_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type update_database_errors() ::
    glue_encryption_exception() | 
    federation_source_retryable_exception() | 
    concurrent_modification_exception() | 
    federation_source_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    already_exists_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type update_dev_endpoint_errors() ::
    validation_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type update_glue_identity_center_configuration_errors() ::
    concurrent_modification_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type update_integration_resource_property_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    entity_not_found_exception().

-type update_integration_table_properties_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    entity_not_found_exception().

-type update_job_errors() ::
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type update_job_from_source_control_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    already_exists_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type update_ml_transform_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type update_partition_errors() ::
    glue_encryption_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type update_registry_errors() ::
    concurrent_modification_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    entity_not_found_exception().

-type update_schema_errors() ::
    concurrent_modification_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    entity_not_found_exception().

-type update_source_control_from_job_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    already_exists_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type update_table_errors() ::
    resource_not_ready_exception() | 
    glue_encryption_exception() | 
    federation_source_retryable_exception() | 
    concurrent_modification_exception() | 
    federation_source_exception() | 
    invalid_input_exception() | 
    resource_number_limit_exceeded_exception() | 
    internal_service_exception() | 
    already_exists_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type update_table_optimizer_errors() ::
    throttling_exception() | 
    validation_exception() | 
    concurrent_modification_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    entity_not_found_exception().

-type update_trigger_errors() ::
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type update_usage_profile_errors() ::
    operation_not_supported_exception() | 
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type update_user_defined_function_errors() ::
    glue_encryption_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

-type update_workflow_errors() ::
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    internal_service_exception() | 
    operation_timeout_exception() | 
    entity_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates one or more partitions in a batch operation.
-spec batch_create_partition(aws_client:aws_client(), batch_create_partition_request()) ->
    {ok, batch_create_partition_response(), tuple()} |
    {error, any()} |
    {error, batch_create_partition_errors(), tuple()}.
batch_create_partition(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_create_partition(Client, Input, []).

-spec batch_create_partition(aws_client:aws_client(), batch_create_partition_request(), proplists:proplist()) ->
    {ok, batch_create_partition_response(), tuple()} |
    {error, any()} |
    {error, batch_create_partition_errors(), tuple()}.
batch_create_partition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchCreatePartition">>, Input, Options).

%% @doc Deletes a list of connection definitions from the Data Catalog.
-spec batch_delete_connection(aws_client:aws_client(), batch_delete_connection_request()) ->
    {ok, batch_delete_connection_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_connection_errors(), tuple()}.
batch_delete_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_delete_connection(Client, Input, []).

-spec batch_delete_connection(aws_client:aws_client(), batch_delete_connection_request(), proplists:proplist()) ->
    {ok, batch_delete_connection_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_connection_errors(), tuple()}.
batch_delete_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDeleteConnection">>, Input, Options).

%% @doc Deletes one or more partitions in a batch operation.
-spec batch_delete_partition(aws_client:aws_client(), batch_delete_partition_request()) ->
    {ok, batch_delete_partition_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_partition_errors(), tuple()}.
batch_delete_partition(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_delete_partition(Client, Input, []).

-spec batch_delete_partition(aws_client:aws_client(), batch_delete_partition_request(), proplists:proplist()) ->
    {ok, batch_delete_partition_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_partition_errors(), tuple()}.
batch_delete_partition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDeletePartition">>, Input, Options).

%% @doc Deletes multiple tables at once.
%%
%% After completing this operation, you no longer have access to the table
%% versions and
%% partitions that belong to the deleted table. Glue deletes these
%% &quot;orphaned&quot; resources
%% asynchronously in a timely manner, at the discretion of the service.
%%
%% To ensure the immediate deletion of all related resources, before calling
%% `BatchDeleteTable', use `DeleteTableVersion' or
%% `BatchDeleteTableVersion', and `DeletePartition' or
%% `BatchDeletePartition', to delete any resources that belong to the
%% table.
-spec batch_delete_table(aws_client:aws_client(), batch_delete_table_request()) ->
    {ok, batch_delete_table_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_table_errors(), tuple()}.
batch_delete_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_delete_table(Client, Input, []).

-spec batch_delete_table(aws_client:aws_client(), batch_delete_table_request(), proplists:proplist()) ->
    {ok, batch_delete_table_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_table_errors(), tuple()}.
batch_delete_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDeleteTable">>, Input, Options).

%% @doc Deletes a specified batch of versions of a table.
-spec batch_delete_table_version(aws_client:aws_client(), batch_delete_table_version_request()) ->
    {ok, batch_delete_table_version_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_table_version_errors(), tuple()}.
batch_delete_table_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_delete_table_version(Client, Input, []).

-spec batch_delete_table_version(aws_client:aws_client(), batch_delete_table_version_request(), proplists:proplist()) ->
    {ok, batch_delete_table_version_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_table_version_errors(), tuple()}.
batch_delete_table_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDeleteTableVersion">>, Input, Options).

%% @doc Retrieves information about a list of blueprints.
-spec batch_get_blueprints(aws_client:aws_client(), batch_get_blueprints_request()) ->
    {ok, batch_get_blueprints_response(), tuple()} |
    {error, any()} |
    {error, batch_get_blueprints_errors(), tuple()}.
batch_get_blueprints(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_blueprints(Client, Input, []).

-spec batch_get_blueprints(aws_client:aws_client(), batch_get_blueprints_request(), proplists:proplist()) ->
    {ok, batch_get_blueprints_response(), tuple()} |
    {error, any()} |
    {error, batch_get_blueprints_errors(), tuple()}.
batch_get_blueprints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetBlueprints">>, Input, Options).

%% @doc Returns a list of resource metadata for a given list of crawler
%% names.
%%
%% After calling the `ListCrawlers' operation, you can call this
%% operation to access the data to which you have been granted permissions.
%% This operation supports all IAM permissions, including permission
%% conditions that uses tags.
-spec batch_get_crawlers(aws_client:aws_client(), batch_get_crawlers_request()) ->
    {ok, batch_get_crawlers_response(), tuple()} |
    {error, any()} |
    {error, batch_get_crawlers_errors(), tuple()}.
batch_get_crawlers(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_crawlers(Client, Input, []).

-spec batch_get_crawlers(aws_client:aws_client(), batch_get_crawlers_request(), proplists:proplist()) ->
    {ok, batch_get_crawlers_response(), tuple()} |
    {error, any()} |
    {error, batch_get_crawlers_errors(), tuple()}.
batch_get_crawlers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetCrawlers">>, Input, Options).

%% @doc Retrieves the details for the custom patterns specified by a list of
%% names.
-spec batch_get_custom_entity_types(aws_client:aws_client(), batch_get_custom_entity_types_request()) ->
    {ok, batch_get_custom_entity_types_response(), tuple()} |
    {error, any()} |
    {error, batch_get_custom_entity_types_errors(), tuple()}.
batch_get_custom_entity_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_custom_entity_types(Client, Input, []).

-spec batch_get_custom_entity_types(aws_client:aws_client(), batch_get_custom_entity_types_request(), proplists:proplist()) ->
    {ok, batch_get_custom_entity_types_response(), tuple()} |
    {error, any()} |
    {error, batch_get_custom_entity_types_errors(), tuple()}.
batch_get_custom_entity_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetCustomEntityTypes">>, Input, Options).

%% @doc Retrieves a list of data quality results for the specified result
%% IDs.
-spec batch_get_data_quality_result(aws_client:aws_client(), batch_get_data_quality_result_request()) ->
    {ok, batch_get_data_quality_result_response(), tuple()} |
    {error, any()} |
    {error, batch_get_data_quality_result_errors(), tuple()}.
batch_get_data_quality_result(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_data_quality_result(Client, Input, []).

-spec batch_get_data_quality_result(aws_client:aws_client(), batch_get_data_quality_result_request(), proplists:proplist()) ->
    {ok, batch_get_data_quality_result_response(), tuple()} |
    {error, any()} |
    {error, batch_get_data_quality_result_errors(), tuple()}.
batch_get_data_quality_result(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetDataQualityResult">>, Input, Options).

%% @doc Returns a list of resource metadata for a given list of development
%% endpoint names.
%%
%% After
%% calling the `ListDevEndpoints' operation, you can call this operation
%% to access the
%% data to which you have been granted permissions. This operation supports
%% all IAM permissions,
%% including permission conditions that uses tags.
-spec batch_get_dev_endpoints(aws_client:aws_client(), batch_get_dev_endpoints_request()) ->
    {ok, batch_get_dev_endpoints_response(), tuple()} |
    {error, any()} |
    {error, batch_get_dev_endpoints_errors(), tuple()}.
batch_get_dev_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_dev_endpoints(Client, Input, []).

-spec batch_get_dev_endpoints(aws_client:aws_client(), batch_get_dev_endpoints_request(), proplists:proplist()) ->
    {ok, batch_get_dev_endpoints_response(), tuple()} |
    {error, any()} |
    {error, batch_get_dev_endpoints_errors(), tuple()}.
batch_get_dev_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetDevEndpoints">>, Input, Options).

%% @doc Returns a list of resource metadata for a given list of job names.
%%
%% After calling the `ListJobs' operation, you can call this operation to
%% access the data to which you have been granted permissions. This operation
%% supports all IAM permissions, including permission conditions that uses
%% tags.
-spec batch_get_jobs(aws_client:aws_client(), batch_get_jobs_request()) ->
    {ok, batch_get_jobs_response(), tuple()} |
    {error, any()} |
    {error, batch_get_jobs_errors(), tuple()}.
batch_get_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_jobs(Client, Input, []).

-spec batch_get_jobs(aws_client:aws_client(), batch_get_jobs_request(), proplists:proplist()) ->
    {ok, batch_get_jobs_response(), tuple()} |
    {error, any()} |
    {error, batch_get_jobs_errors(), tuple()}.
batch_get_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetJobs">>, Input, Options).

%% @doc Retrieves partitions in a batch request.
-spec batch_get_partition(aws_client:aws_client(), batch_get_partition_request()) ->
    {ok, batch_get_partition_response(), tuple()} |
    {error, any()} |
    {error, batch_get_partition_errors(), tuple()}.
batch_get_partition(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_partition(Client, Input, []).

-spec batch_get_partition(aws_client:aws_client(), batch_get_partition_request(), proplists:proplist()) ->
    {ok, batch_get_partition_response(), tuple()} |
    {error, any()} |
    {error, batch_get_partition_errors(), tuple()}.
batch_get_partition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetPartition">>, Input, Options).

%% @doc Returns the configuration for the specified table optimizers.
-spec batch_get_table_optimizer(aws_client:aws_client(), batch_get_table_optimizer_request()) ->
    {ok, batch_get_table_optimizer_response(), tuple()} |
    {error, any()} |
    {error, batch_get_table_optimizer_errors(), tuple()}.
batch_get_table_optimizer(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_table_optimizer(Client, Input, []).

-spec batch_get_table_optimizer(aws_client:aws_client(), batch_get_table_optimizer_request(), proplists:proplist()) ->
    {ok, batch_get_table_optimizer_response(), tuple()} |
    {error, any()} |
    {error, batch_get_table_optimizer_errors(), tuple()}.
batch_get_table_optimizer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetTableOptimizer">>, Input, Options).

%% @doc Returns a list of resource metadata for a given list of trigger
%% names.
%%
%% After calling the `ListTriggers' operation, you can call this
%% operation to access the data to which you have been granted permissions.
%% This operation supports all IAM permissions, including permission
%% conditions that uses tags.
-spec batch_get_triggers(aws_client:aws_client(), batch_get_triggers_request()) ->
    {ok, batch_get_triggers_response(), tuple()} |
    {error, any()} |
    {error, batch_get_triggers_errors(), tuple()}.
batch_get_triggers(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_triggers(Client, Input, []).

-spec batch_get_triggers(aws_client:aws_client(), batch_get_triggers_request(), proplists:proplist()) ->
    {ok, batch_get_triggers_response(), tuple()} |
    {error, any()} |
    {error, batch_get_triggers_errors(), tuple()}.
batch_get_triggers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetTriggers">>, Input, Options).

%% @doc Returns a list of resource metadata for a given list of workflow
%% names.
%%
%% After calling the `ListWorkflows' operation, you can call this
%% operation to access the data to which you have been granted permissions.
%% This operation supports all IAM permissions, including permission
%% conditions that uses tags.
-spec batch_get_workflows(aws_client:aws_client(), batch_get_workflows_request()) ->
    {ok, batch_get_workflows_response(), tuple()} |
    {error, any()} |
    {error, batch_get_workflows_errors(), tuple()}.
batch_get_workflows(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_workflows(Client, Input, []).

-spec batch_get_workflows(aws_client:aws_client(), batch_get_workflows_request(), proplists:proplist()) ->
    {ok, batch_get_workflows_response(), tuple()} |
    {error, any()} |
    {error, batch_get_workflows_errors(), tuple()}.
batch_get_workflows(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetWorkflows">>, Input, Options).

%% @doc Annotate datapoints over time for a specific data quality statistic.
-spec batch_put_data_quality_statistic_annotation(aws_client:aws_client(), batch_put_data_quality_statistic_annotation_request()) ->
    {ok, batch_put_data_quality_statistic_annotation_response(), tuple()} |
    {error, any()} |
    {error, batch_put_data_quality_statistic_annotation_errors(), tuple()}.
batch_put_data_quality_statistic_annotation(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_put_data_quality_statistic_annotation(Client, Input, []).

-spec batch_put_data_quality_statistic_annotation(aws_client:aws_client(), batch_put_data_quality_statistic_annotation_request(), proplists:proplist()) ->
    {ok, batch_put_data_quality_statistic_annotation_response(), tuple()} |
    {error, any()} |
    {error, batch_put_data_quality_statistic_annotation_errors(), tuple()}.
batch_put_data_quality_statistic_annotation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchPutDataQualityStatisticAnnotation">>, Input, Options).

%% @doc Stops one or more job runs for a specified job definition.
-spec batch_stop_job_run(aws_client:aws_client(), batch_stop_job_run_request()) ->
    {ok, batch_stop_job_run_response(), tuple()} |
    {error, any()} |
    {error, batch_stop_job_run_errors(), tuple()}.
batch_stop_job_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_stop_job_run(Client, Input, []).

-spec batch_stop_job_run(aws_client:aws_client(), batch_stop_job_run_request(), proplists:proplist()) ->
    {ok, batch_stop_job_run_response(), tuple()} |
    {error, any()} |
    {error, batch_stop_job_run_errors(), tuple()}.
batch_stop_job_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchStopJobRun">>, Input, Options).

%% @doc Updates one or more partitions in a batch operation.
-spec batch_update_partition(aws_client:aws_client(), batch_update_partition_request()) ->
    {ok, batch_update_partition_response(), tuple()} |
    {error, any()} |
    {error, batch_update_partition_errors(), tuple()}.
batch_update_partition(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_update_partition(Client, Input, []).

-spec batch_update_partition(aws_client:aws_client(), batch_update_partition_request(), proplists:proplist()) ->
    {ok, batch_update_partition_response(), tuple()} |
    {error, any()} |
    {error, batch_update_partition_errors(), tuple()}.
batch_update_partition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchUpdatePartition">>, Input, Options).

%% @doc Cancels the specified recommendation run that was being used to
%% generate rules.
-spec cancel_data_quality_rule_recommendation_run(aws_client:aws_client(), cancel_data_quality_rule_recommendation_run_request()) ->
    {ok, cancel_data_quality_rule_recommendation_run_response(), tuple()} |
    {error, any()} |
    {error, cancel_data_quality_rule_recommendation_run_errors(), tuple()}.
cancel_data_quality_rule_recommendation_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_data_quality_rule_recommendation_run(Client, Input, []).

-spec cancel_data_quality_rule_recommendation_run(aws_client:aws_client(), cancel_data_quality_rule_recommendation_run_request(), proplists:proplist()) ->
    {ok, cancel_data_quality_rule_recommendation_run_response(), tuple()} |
    {error, any()} |
    {error, cancel_data_quality_rule_recommendation_run_errors(), tuple()}.
cancel_data_quality_rule_recommendation_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelDataQualityRuleRecommendationRun">>, Input, Options).

%% @doc Cancels a run where a ruleset is being evaluated against a data
%% source.
-spec cancel_data_quality_ruleset_evaluation_run(aws_client:aws_client(), cancel_data_quality_ruleset_evaluation_run_request()) ->
    {ok, cancel_data_quality_ruleset_evaluation_run_response(), tuple()} |
    {error, any()} |
    {error, cancel_data_quality_ruleset_evaluation_run_errors(), tuple()}.
cancel_data_quality_ruleset_evaluation_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_data_quality_ruleset_evaluation_run(Client, Input, []).

-spec cancel_data_quality_ruleset_evaluation_run(aws_client:aws_client(), cancel_data_quality_ruleset_evaluation_run_request(), proplists:proplist()) ->
    {ok, cancel_data_quality_ruleset_evaluation_run_response(), tuple()} |
    {error, any()} |
    {error, cancel_data_quality_ruleset_evaluation_run_errors(), tuple()}.
cancel_data_quality_ruleset_evaluation_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelDataQualityRulesetEvaluationRun">>, Input, Options).

%% @doc Cancels (stops) a task run.
%%
%% Machine learning task runs are asynchronous tasks that Glue runs on your
%% behalf as part of various machine learning workflows. You can cancel a
%% machine learning task run at any time by calling `CancelMLTaskRun'
%% with a task
%% run's parent transform's `TransformID' and the task run's
%% `TaskRunId'.
-spec cancel_ml_task_run(aws_client:aws_client(), cancel_ml_task_run_request()) ->
    {ok, cancel_ml_task_run_response(), tuple()} |
    {error, any()} |
    {error, cancel_ml_task_run_errors(), tuple()}.
cancel_ml_task_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_ml_task_run(Client, Input, []).

-spec cancel_ml_task_run(aws_client:aws_client(), cancel_ml_task_run_request(), proplists:proplist()) ->
    {ok, cancel_ml_task_run_response(), tuple()} |
    {error, any()} |
    {error, cancel_ml_task_run_errors(), tuple()}.
cancel_ml_task_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelMLTaskRun">>, Input, Options).

%% @doc Cancels the statement.
-spec cancel_statement(aws_client:aws_client(), cancel_statement_request()) ->
    {ok, cancel_statement_response(), tuple()} |
    {error, any()} |
    {error, cancel_statement_errors(), tuple()}.
cancel_statement(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_statement(Client, Input, []).

-spec cancel_statement(aws_client:aws_client(), cancel_statement_request(), proplists:proplist()) ->
    {ok, cancel_statement_response(), tuple()} |
    {error, any()} |
    {error, cancel_statement_errors(), tuple()}.
cancel_statement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelStatement">>, Input, Options).

%% @doc Validates the supplied schema.
%%
%% This call has no side effects, it simply validates using the supplied
%% schema using `DataFormat' as the format. Since it does not take a
%% schema set name, no compatibility checks are performed.
-spec check_schema_version_validity(aws_client:aws_client(), check_schema_version_validity_input()) ->
    {ok, check_schema_version_validity_response(), tuple()} |
    {error, any()} |
    {error, check_schema_version_validity_errors(), tuple()}.
check_schema_version_validity(Client, Input)
  when is_map(Client), is_map(Input) ->
    check_schema_version_validity(Client, Input, []).

-spec check_schema_version_validity(aws_client:aws_client(), check_schema_version_validity_input(), proplists:proplist()) ->
    {ok, check_schema_version_validity_response(), tuple()} |
    {error, any()} |
    {error, check_schema_version_validity_errors(), tuple()}.
check_schema_version_validity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CheckSchemaVersionValidity">>, Input, Options).

%% @doc Registers a blueprint with Glue.
-spec create_blueprint(aws_client:aws_client(), create_blueprint_request()) ->
    {ok, create_blueprint_response(), tuple()} |
    {error, any()} |
    {error, create_blueprint_errors(), tuple()}.
create_blueprint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_blueprint(Client, Input, []).

-spec create_blueprint(aws_client:aws_client(), create_blueprint_request(), proplists:proplist()) ->
    {ok, create_blueprint_response(), tuple()} |
    {error, any()} |
    {error, create_blueprint_errors(), tuple()}.
create_blueprint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBlueprint">>, Input, Options).

%% @doc Creates a new catalog in the Glue Data Catalog.
-spec create_catalog(aws_client:aws_client(), create_catalog_request()) ->
    {ok, create_catalog_response(), tuple()} |
    {error, any()} |
    {error, create_catalog_errors(), tuple()}.
create_catalog(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_catalog(Client, Input, []).

-spec create_catalog(aws_client:aws_client(), create_catalog_request(), proplists:proplist()) ->
    {ok, create_catalog_response(), tuple()} |
    {error, any()} |
    {error, create_catalog_errors(), tuple()}.
create_catalog(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCatalog">>, Input, Options).

%% @doc Creates a classifier in the user's account.
%%
%% This can be a `GrokClassifier', an
%% `XMLClassifier', a `JsonClassifier', or a `CsvClassifier',
%% depending on which field of the request is present.
-spec create_classifier(aws_client:aws_client(), create_classifier_request()) ->
    {ok, create_classifier_response(), tuple()} |
    {error, any()} |
    {error, create_classifier_errors(), tuple()}.
create_classifier(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_classifier(Client, Input, []).

-spec create_classifier(aws_client:aws_client(), create_classifier_request(), proplists:proplist()) ->
    {ok, create_classifier_response(), tuple()} |
    {error, any()} |
    {error, create_classifier_errors(), tuple()}.
create_classifier(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateClassifier">>, Input, Options).

%% @doc Creates settings for a column statistics task.
-spec create_column_statistics_task_settings(aws_client:aws_client(), create_column_statistics_task_settings_request()) ->
    {ok, create_column_statistics_task_settings_response(), tuple()} |
    {error, any()} |
    {error, create_column_statistics_task_settings_errors(), tuple()}.
create_column_statistics_task_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_column_statistics_task_settings(Client, Input, []).

-spec create_column_statistics_task_settings(aws_client:aws_client(), create_column_statistics_task_settings_request(), proplists:proplist()) ->
    {ok, create_column_statistics_task_settings_response(), tuple()} |
    {error, any()} |
    {error, create_column_statistics_task_settings_errors(), tuple()}.
create_column_statistics_task_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateColumnStatisticsTaskSettings">>, Input, Options).

%% @doc Creates a connection definition in the Data Catalog.
%%
%% Connections used for creating federated resources require the IAM
%% `glue:PassConnection' permission.
-spec create_connection(aws_client:aws_client(), create_connection_request()) ->
    {ok, create_connection_response(), tuple()} |
    {error, any()} |
    {error, create_connection_errors(), tuple()}.
create_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_connection(Client, Input, []).

-spec create_connection(aws_client:aws_client(), create_connection_request(), proplists:proplist()) ->
    {ok, create_connection_response(), tuple()} |
    {error, any()} |
    {error, create_connection_errors(), tuple()}.
create_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConnection">>, Input, Options).

%% @doc Creates a new crawler with specified targets, role, configuration,
%% and optional schedule.
%%
%% At least one crawl target must be specified, in the `s3Targets' field,
%% the
%% `jdbcTargets' field, or the `DynamoDBTargets' field.
-spec create_crawler(aws_client:aws_client(), create_crawler_request()) ->
    {ok, create_crawler_response(), tuple()} |
    {error, any()} |
    {error, create_crawler_errors(), tuple()}.
create_crawler(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_crawler(Client, Input, []).

-spec create_crawler(aws_client:aws_client(), create_crawler_request(), proplists:proplist()) ->
    {ok, create_crawler_response(), tuple()} |
    {error, any()} |
    {error, create_crawler_errors(), tuple()}.
create_crawler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCrawler">>, Input, Options).

%% @doc Creates a custom pattern that is used to detect sensitive data across
%% the columns and rows of your structured data.
%%
%% Each custom pattern you create specifies a regular expression and an
%% optional list of context words. If no context words are passed only a
%% regular expression is checked.
-spec create_custom_entity_type(aws_client:aws_client(), create_custom_entity_type_request()) ->
    {ok, create_custom_entity_type_response(), tuple()} |
    {error, any()} |
    {error, create_custom_entity_type_errors(), tuple()}.
create_custom_entity_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_custom_entity_type(Client, Input, []).

-spec create_custom_entity_type(aws_client:aws_client(), create_custom_entity_type_request(), proplists:proplist()) ->
    {ok, create_custom_entity_type_response(), tuple()} |
    {error, any()} |
    {error, create_custom_entity_type_errors(), tuple()}.
create_custom_entity_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCustomEntityType">>, Input, Options).

%% @doc Creates a data quality ruleset with DQDL rules applied to a specified
%% Glue table.
%%
%% You create the ruleset using the Data Quality Definition Language (DQDL).
%% For more information, see the Glue developer guide.
-spec create_data_quality_ruleset(aws_client:aws_client(), create_data_quality_ruleset_request()) ->
    {ok, create_data_quality_ruleset_response(), tuple()} |
    {error, any()} |
    {error, create_data_quality_ruleset_errors(), tuple()}.
create_data_quality_ruleset(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_data_quality_ruleset(Client, Input, []).

-spec create_data_quality_ruleset(aws_client:aws_client(), create_data_quality_ruleset_request(), proplists:proplist()) ->
    {ok, create_data_quality_ruleset_response(), tuple()} |
    {error, any()} |
    {error, create_data_quality_ruleset_errors(), tuple()}.
create_data_quality_ruleset(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataQualityRuleset">>, Input, Options).

%% @doc Creates a new database in a Data Catalog.
-spec create_database(aws_client:aws_client(), create_database_request()) ->
    {ok, create_database_response(), tuple()} |
    {error, any()} |
    {error, create_database_errors(), tuple()}.
create_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_database(Client, Input, []).

-spec create_database(aws_client:aws_client(), create_database_request(), proplists:proplist()) ->
    {ok, create_database_response(), tuple()} |
    {error, any()} |
    {error, create_database_errors(), tuple()}.
create_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDatabase">>, Input, Options).

%% @doc Creates a new development endpoint.
-spec create_dev_endpoint(aws_client:aws_client(), create_dev_endpoint_request()) ->
    {ok, create_dev_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_dev_endpoint_errors(), tuple()}.
create_dev_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_dev_endpoint(Client, Input, []).

-spec create_dev_endpoint(aws_client:aws_client(), create_dev_endpoint_request(), proplists:proplist()) ->
    {ok, create_dev_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_dev_endpoint_errors(), tuple()}.
create_dev_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDevEndpoint">>, Input, Options).

%% @doc Creates a new Glue Identity Center configuration to enable
%% integration between Glue and Amazon Web Services IAM
%% Identity Center for authentication and authorization.
-spec create_glue_identity_center_configuration(aws_client:aws_client(), create_glue_identity_center_configuration_request()) ->
    {ok, create_glue_identity_center_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_glue_identity_center_configuration_errors(), tuple()}.
create_glue_identity_center_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_glue_identity_center_configuration(Client, Input, []).

-spec create_glue_identity_center_configuration(aws_client:aws_client(), create_glue_identity_center_configuration_request(), proplists:proplist()) ->
    {ok, create_glue_identity_center_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_glue_identity_center_configuration_errors(), tuple()}.
create_glue_identity_center_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGlueIdentityCenterConfiguration">>, Input, Options).

%% @doc Creates a Zero-ETL integration in the caller's account between
%% two resources with Amazon Resource Names (ARNs): the `SourceArn' and
%% `TargetArn'.
-spec create_integration(aws_client:aws_client(), create_integration_request()) ->
    {ok, create_integration_response(), tuple()} |
    {error, any()} |
    {error, create_integration_errors(), tuple()}.
create_integration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_integration(Client, Input, []).

-spec create_integration(aws_client:aws_client(), create_integration_request(), proplists:proplist()) ->
    {ok, create_integration_response(), tuple()} |
    {error, any()} |
    {error, create_integration_errors(), tuple()}.
create_integration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateIntegration">>, Input, Options).

%% @doc This API can be used for setting up the `ResourceProperty' of the
%% Glue connection (for the source) or Glue database ARN (for the target).
%%
%% These properties can include the role to access the connection or
%% database. To set both source and target properties the same API needs to
%% be invoked with the Glue connection ARN as `ResourceArn' with
%% `SourceProcessingProperties' and the Glue database ARN as
%% `ResourceArn' with `TargetProcessingProperties' respectively.
-spec create_integration_resource_property(aws_client:aws_client(), create_integration_resource_property_request()) ->
    {ok, create_integration_resource_property_response(), tuple()} |
    {error, any()} |
    {error, create_integration_resource_property_errors(), tuple()}.
create_integration_resource_property(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_integration_resource_property(Client, Input, []).

-spec create_integration_resource_property(aws_client:aws_client(), create_integration_resource_property_request(), proplists:proplist()) ->
    {ok, create_integration_resource_property_response(), tuple()} |
    {error, any()} |
    {error, create_integration_resource_property_errors(), tuple()}.
create_integration_resource_property(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateIntegrationResourceProperty">>, Input, Options).

%% @doc This API is used to provide optional override properties for the the
%% tables that need to be replicated.
%%
%% These properties can include properties for filtering and partitioning for
%% the source and target tables. To set both source and target properties the
%% same API need to be invoked with the Glue connection ARN as
%% `ResourceArn' with `SourceTableConfig', and the Glue database ARN
%% as `ResourceArn' with `TargetTableConfig' respectively.
-spec create_integration_table_properties(aws_client:aws_client(), create_integration_table_properties_request()) ->
    {ok, create_integration_table_properties_response(), tuple()} |
    {error, any()} |
    {error, create_integration_table_properties_errors(), tuple()}.
create_integration_table_properties(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_integration_table_properties(Client, Input, []).

-spec create_integration_table_properties(aws_client:aws_client(), create_integration_table_properties_request(), proplists:proplist()) ->
    {ok, create_integration_table_properties_response(), tuple()} |
    {error, any()} |
    {error, create_integration_table_properties_errors(), tuple()}.
create_integration_table_properties(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateIntegrationTableProperties">>, Input, Options).

%% @doc Creates a new job definition.
-spec create_job(aws_client:aws_client(), create_job_request()) ->
    {ok, create_job_response(), tuple()} |
    {error, any()} |
    {error, create_job_errors(), tuple()}.
create_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_job(Client, Input, []).

-spec create_job(aws_client:aws_client(), create_job_request(), proplists:proplist()) ->
    {ok, create_job_response(), tuple()} |
    {error, any()} |
    {error, create_job_errors(), tuple()}.
create_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateJob">>, Input, Options).

%% @doc Creates an Glue machine learning transform.
%%
%% This operation creates the transform and
%% all the necessary parameters to train it.
%%
%% Call this operation as the first step in the process of using a machine
%% learning transform
%% (such as the `FindMatches' transform) for deduplicating data. You can
%% provide an
%% optional `Description', in addition to the parameters that you want to
%% use for your
%% algorithm.
%%
%% You must also specify certain parameters for the tasks that Glue runs on
%% your
%% behalf as part of learning from your data and creating a high-quality
%% machine learning
%% transform. These parameters include `Role', and optionally,
%% `AllocatedCapacity', `Timeout', and `MaxRetries'. For more
%% information, see Jobs:
%% https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-jobs-job.html.
-spec create_ml_transform(aws_client:aws_client(), create_ml_transform_request()) ->
    {ok, create_ml_transform_response(), tuple()} |
    {error, any()} |
    {error, create_ml_transform_errors(), tuple()}.
create_ml_transform(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_ml_transform(Client, Input, []).

-spec create_ml_transform(aws_client:aws_client(), create_ml_transform_request(), proplists:proplist()) ->
    {ok, create_ml_transform_response(), tuple()} |
    {error, any()} |
    {error, create_ml_transform_errors(), tuple()}.
create_ml_transform(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateMLTransform">>, Input, Options).

%% @doc Creates a new partition.
-spec create_partition(aws_client:aws_client(), create_partition_request()) ->
    {ok, create_partition_response(), tuple()} |
    {error, any()} |
    {error, create_partition_errors(), tuple()}.
create_partition(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_partition(Client, Input, []).

-spec create_partition(aws_client:aws_client(), create_partition_request(), proplists:proplist()) ->
    {ok, create_partition_response(), tuple()} |
    {error, any()} |
    {error, create_partition_errors(), tuple()}.
create_partition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePartition">>, Input, Options).

%% @doc Creates a specified partition index in an existing table.
-spec create_partition_index(aws_client:aws_client(), create_partition_index_request()) ->
    {ok, create_partition_index_response(), tuple()} |
    {error, any()} |
    {error, create_partition_index_errors(), tuple()}.
create_partition_index(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_partition_index(Client, Input, []).

-spec create_partition_index(aws_client:aws_client(), create_partition_index_request(), proplists:proplist()) ->
    {ok, create_partition_index_response(), tuple()} |
    {error, any()} |
    {error, create_partition_index_errors(), tuple()}.
create_partition_index(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePartitionIndex">>, Input, Options).

%% @doc Creates a new registry which may be used to hold a collection of
%% schemas.
-spec create_registry(aws_client:aws_client(), create_registry_input()) ->
    {ok, create_registry_response(), tuple()} |
    {error, any()} |
    {error, create_registry_errors(), tuple()}.
create_registry(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_registry(Client, Input, []).

-spec create_registry(aws_client:aws_client(), create_registry_input(), proplists:proplist()) ->
    {ok, create_registry_response(), tuple()} |
    {error, any()} |
    {error, create_registry_errors(), tuple()}.
create_registry(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRegistry">>, Input, Options).

%% @doc Creates a new schema set and registers the schema definition.
%%
%% Returns an error if the schema set already exists without actually
%% registering the version.
%%
%% When the schema set is created, a version checkpoint will be set to the
%% first version. Compatibility mode &quot;DISABLED&quot; restricts any
%% additional schema versions from being added after the first schema
%% version. For all other compatibility modes, validation of compatibility
%% settings will be applied only from the second version onwards when the
%% `RegisterSchemaVersion' API is used.
%%
%% When this API is called without a `RegistryId', this will create an
%% entry for a &quot;default-registry&quot; in the registry database tables,
%% if it is not already present.
-spec create_schema(aws_client:aws_client(), create_schema_input()) ->
    {ok, create_schema_response(), tuple()} |
    {error, any()} |
    {error, create_schema_errors(), tuple()}.
create_schema(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_schema(Client, Input, []).

-spec create_schema(aws_client:aws_client(), create_schema_input(), proplists:proplist()) ->
    {ok, create_schema_response(), tuple()} |
    {error, any()} |
    {error, create_schema_errors(), tuple()}.
create_schema(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSchema">>, Input, Options).

%% @doc Transforms a directed acyclic graph (DAG) into code.
-spec create_script(aws_client:aws_client(), create_script_request()) ->
    {ok, create_script_response(), tuple()} |
    {error, any()} |
    {error, create_script_errors(), tuple()}.
create_script(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_script(Client, Input, []).

-spec create_script(aws_client:aws_client(), create_script_request(), proplists:proplist()) ->
    {ok, create_script_response(), tuple()} |
    {error, any()} |
    {error, create_script_errors(), tuple()}.
create_script(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateScript">>, Input, Options).

%% @doc Creates a new security configuration.
%%
%% A security configuration is a set of security properties that can be used
%% by Glue. You can use a security configuration to encrypt data at rest. For
%% information about using security configurations in Glue, see Encrypting
%% Data Written by Crawlers, Jobs, and Development Endpoints:
%% https://docs.aws.amazon.com/glue/latest/dg/encryption-security-configuration.html.
-spec create_security_configuration(aws_client:aws_client(), create_security_configuration_request()) ->
    {ok, create_security_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_security_configuration_errors(), tuple()}.
create_security_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_security_configuration(Client, Input, []).

-spec create_security_configuration(aws_client:aws_client(), create_security_configuration_request(), proplists:proplist()) ->
    {ok, create_security_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_security_configuration_errors(), tuple()}.
create_security_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSecurityConfiguration">>, Input, Options).

%% @doc Creates a new session.
-spec create_session(aws_client:aws_client(), create_session_request()) ->
    {ok, create_session_response(), tuple()} |
    {error, any()} |
    {error, create_session_errors(), tuple()}.
create_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_session(Client, Input, []).

-spec create_session(aws_client:aws_client(), create_session_request(), proplists:proplist()) ->
    {ok, create_session_response(), tuple()} |
    {error, any()} |
    {error, create_session_errors(), tuple()}.
create_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSession">>, Input, Options).

%% @doc Creates a new table definition in the Data Catalog.
-spec create_table(aws_client:aws_client(), create_table_request()) ->
    {ok, create_table_response(), tuple()} |
    {error, any()} |
    {error, create_table_errors(), tuple()}.
create_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_table(Client, Input, []).

-spec create_table(aws_client:aws_client(), create_table_request(), proplists:proplist()) ->
    {ok, create_table_response(), tuple()} |
    {error, any()} |
    {error, create_table_errors(), tuple()}.
create_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTable">>, Input, Options).

%% @doc Creates a new table optimizer for a specific function.
-spec create_table_optimizer(aws_client:aws_client(), create_table_optimizer_request()) ->
    {ok, create_table_optimizer_response(), tuple()} |
    {error, any()} |
    {error, create_table_optimizer_errors(), tuple()}.
create_table_optimizer(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_table_optimizer(Client, Input, []).

-spec create_table_optimizer(aws_client:aws_client(), create_table_optimizer_request(), proplists:proplist()) ->
    {ok, create_table_optimizer_response(), tuple()} |
    {error, any()} |
    {error, create_table_optimizer_errors(), tuple()}.
create_table_optimizer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTableOptimizer">>, Input, Options).

%% @doc Creates a new trigger.
%%
%% Job arguments may be logged. Do not pass plaintext secrets as arguments.
%% Retrieve secrets from a Glue Connection, Amazon Web Services Secrets
%% Manager or other secret management mechanism if you intend to keep them
%% within the Job.
-spec create_trigger(aws_client:aws_client(), create_trigger_request()) ->
    {ok, create_trigger_response(), tuple()} |
    {error, any()} |
    {error, create_trigger_errors(), tuple()}.
create_trigger(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_trigger(Client, Input, []).

-spec create_trigger(aws_client:aws_client(), create_trigger_request(), proplists:proplist()) ->
    {ok, create_trigger_response(), tuple()} |
    {error, any()} |
    {error, create_trigger_errors(), tuple()}.
create_trigger(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTrigger">>, Input, Options).

%% @doc Creates an Glue usage profile.
-spec create_usage_profile(aws_client:aws_client(), create_usage_profile_request()) ->
    {ok, create_usage_profile_response(), tuple()} |
    {error, any()} |
    {error, create_usage_profile_errors(), tuple()}.
create_usage_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_usage_profile(Client, Input, []).

-spec create_usage_profile(aws_client:aws_client(), create_usage_profile_request(), proplists:proplist()) ->
    {ok, create_usage_profile_response(), tuple()} |
    {error, any()} |
    {error, create_usage_profile_errors(), tuple()}.
create_usage_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUsageProfile">>, Input, Options).

%% @doc Creates a new function definition in the Data Catalog.
-spec create_user_defined_function(aws_client:aws_client(), create_user_defined_function_request()) ->
    {ok, create_user_defined_function_response(), tuple()} |
    {error, any()} |
    {error, create_user_defined_function_errors(), tuple()}.
create_user_defined_function(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user_defined_function(Client, Input, []).

-spec create_user_defined_function(aws_client:aws_client(), create_user_defined_function_request(), proplists:proplist()) ->
    {ok, create_user_defined_function_response(), tuple()} |
    {error, any()} |
    {error, create_user_defined_function_errors(), tuple()}.
create_user_defined_function(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUserDefinedFunction">>, Input, Options).

%% @doc Creates a new workflow.
-spec create_workflow(aws_client:aws_client(), create_workflow_request()) ->
    {ok, create_workflow_response(), tuple()} |
    {error, any()} |
    {error, create_workflow_errors(), tuple()}.
create_workflow(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_workflow(Client, Input, []).

-spec create_workflow(aws_client:aws_client(), create_workflow_request(), proplists:proplist()) ->
    {ok, create_workflow_response(), tuple()} |
    {error, any()} |
    {error, create_workflow_errors(), tuple()}.
create_workflow(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWorkflow">>, Input, Options).

%% @doc Deletes an existing blueprint.
-spec delete_blueprint(aws_client:aws_client(), delete_blueprint_request()) ->
    {ok, delete_blueprint_response(), tuple()} |
    {error, any()} |
    {error, delete_blueprint_errors(), tuple()}.
delete_blueprint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_blueprint(Client, Input, []).

-spec delete_blueprint(aws_client:aws_client(), delete_blueprint_request(), proplists:proplist()) ->
    {ok, delete_blueprint_response(), tuple()} |
    {error, any()} |
    {error, delete_blueprint_errors(), tuple()}.
delete_blueprint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBlueprint">>, Input, Options).

%% @doc Removes the specified catalog from the Glue Data Catalog.
%%
%% After completing this operation, you no longer have access to the
%% databases, tables (and all table versions and partitions that might belong
%% to the tables) and the user-defined functions in the deleted catalog. Glue
%% deletes these &quot;orphaned&quot; resources asynchronously in a timely
%% manner, at the discretion of the service.
%%
%% To ensure the immediate deletion of all related resources before calling
%% the `DeleteCatalog' operation, use `DeleteTableVersion' (or
%% `BatchDeleteTableVersion'), `DeletePartition' (or
%% `BatchDeletePartition'), `DeleteTable' (or
%% `BatchDeleteTable'), `DeleteUserDefinedFunction' and
%% `DeleteDatabase' to delete any resources that belong to the catalog.
-spec delete_catalog(aws_client:aws_client(), delete_catalog_request()) ->
    {ok, delete_catalog_response(), tuple()} |
    {error, any()} |
    {error, delete_catalog_errors(), tuple()}.
delete_catalog(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_catalog(Client, Input, []).

-spec delete_catalog(aws_client:aws_client(), delete_catalog_request(), proplists:proplist()) ->
    {ok, delete_catalog_response(), tuple()} |
    {error, any()} |
    {error, delete_catalog_errors(), tuple()}.
delete_catalog(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCatalog">>, Input, Options).

%% @doc Removes a classifier from the Data Catalog.
-spec delete_classifier(aws_client:aws_client(), delete_classifier_request()) ->
    {ok, delete_classifier_response(), tuple()} |
    {error, any()} |
    {error, delete_classifier_errors(), tuple()}.
delete_classifier(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_classifier(Client, Input, []).

-spec delete_classifier(aws_client:aws_client(), delete_classifier_request(), proplists:proplist()) ->
    {ok, delete_classifier_response(), tuple()} |
    {error, any()} |
    {error, delete_classifier_errors(), tuple()}.
delete_classifier(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteClassifier">>, Input, Options).

%% @doc Delete the partition column statistics of a column.
%%
%% The Identity and Access Management (IAM) permission required for this
%% operation is `DeletePartition'.
-spec delete_column_statistics_for_partition(aws_client:aws_client(), delete_column_statistics_for_partition_request()) ->
    {ok, delete_column_statistics_for_partition_response(), tuple()} |
    {error, any()} |
    {error, delete_column_statistics_for_partition_errors(), tuple()}.
delete_column_statistics_for_partition(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_column_statistics_for_partition(Client, Input, []).

-spec delete_column_statistics_for_partition(aws_client:aws_client(), delete_column_statistics_for_partition_request(), proplists:proplist()) ->
    {ok, delete_column_statistics_for_partition_response(), tuple()} |
    {error, any()} |
    {error, delete_column_statistics_for_partition_errors(), tuple()}.
delete_column_statistics_for_partition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteColumnStatisticsForPartition">>, Input, Options).

%% @doc Retrieves table statistics of columns.
%%
%% The Identity and Access Management (IAM) permission required for this
%% operation is `DeleteTable'.
-spec delete_column_statistics_for_table(aws_client:aws_client(), delete_column_statistics_for_table_request()) ->
    {ok, delete_column_statistics_for_table_response(), tuple()} |
    {error, any()} |
    {error, delete_column_statistics_for_table_errors(), tuple()}.
delete_column_statistics_for_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_column_statistics_for_table(Client, Input, []).

-spec delete_column_statistics_for_table(aws_client:aws_client(), delete_column_statistics_for_table_request(), proplists:proplist()) ->
    {ok, delete_column_statistics_for_table_response(), tuple()} |
    {error, any()} |
    {error, delete_column_statistics_for_table_errors(), tuple()}.
delete_column_statistics_for_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteColumnStatisticsForTable">>, Input, Options).

%% @doc Deletes settings for a column statistics task.
-spec delete_column_statistics_task_settings(aws_client:aws_client(), delete_column_statistics_task_settings_request()) ->
    {ok, delete_column_statistics_task_settings_response(), tuple()} |
    {error, any()} |
    {error, delete_column_statistics_task_settings_errors(), tuple()}.
delete_column_statistics_task_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_column_statistics_task_settings(Client, Input, []).

-spec delete_column_statistics_task_settings(aws_client:aws_client(), delete_column_statistics_task_settings_request(), proplists:proplist()) ->
    {ok, delete_column_statistics_task_settings_response(), tuple()} |
    {error, any()} |
    {error, delete_column_statistics_task_settings_errors(), tuple()}.
delete_column_statistics_task_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteColumnStatisticsTaskSettings">>, Input, Options).

%% @doc Deletes a connection from the Data Catalog.
-spec delete_connection(aws_client:aws_client(), delete_connection_request()) ->
    {ok, delete_connection_response(), tuple()} |
    {error, any()} |
    {error, delete_connection_errors(), tuple()}.
delete_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_connection(Client, Input, []).

-spec delete_connection(aws_client:aws_client(), delete_connection_request(), proplists:proplist()) ->
    {ok, delete_connection_response(), tuple()} |
    {error, any()} |
    {error, delete_connection_errors(), tuple()}.
delete_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConnection">>, Input, Options).

%% @doc Removes a specified crawler from the Glue Data Catalog, unless the
%% crawler state is
%% `RUNNING'.
-spec delete_crawler(aws_client:aws_client(), delete_crawler_request()) ->
    {ok, delete_crawler_response(), tuple()} |
    {error, any()} |
    {error, delete_crawler_errors(), tuple()}.
delete_crawler(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_crawler(Client, Input, []).

-spec delete_crawler(aws_client:aws_client(), delete_crawler_request(), proplists:proplist()) ->
    {ok, delete_crawler_response(), tuple()} |
    {error, any()} |
    {error, delete_crawler_errors(), tuple()}.
delete_crawler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCrawler">>, Input, Options).

%% @doc Deletes a custom pattern by specifying its name.
-spec delete_custom_entity_type(aws_client:aws_client(), delete_custom_entity_type_request()) ->
    {ok, delete_custom_entity_type_response(), tuple()} |
    {error, any()} |
    {error, delete_custom_entity_type_errors(), tuple()}.
delete_custom_entity_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_custom_entity_type(Client, Input, []).

-spec delete_custom_entity_type(aws_client:aws_client(), delete_custom_entity_type_request(), proplists:proplist()) ->
    {ok, delete_custom_entity_type_response(), tuple()} |
    {error, any()} |
    {error, delete_custom_entity_type_errors(), tuple()}.
delete_custom_entity_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCustomEntityType">>, Input, Options).

%% @doc Deletes a data quality ruleset.
-spec delete_data_quality_ruleset(aws_client:aws_client(), delete_data_quality_ruleset_request()) ->
    {ok, delete_data_quality_ruleset_response(), tuple()} |
    {error, any()} |
    {error, delete_data_quality_ruleset_errors(), tuple()}.
delete_data_quality_ruleset(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_data_quality_ruleset(Client, Input, []).

-spec delete_data_quality_ruleset(aws_client:aws_client(), delete_data_quality_ruleset_request(), proplists:proplist()) ->
    {ok, delete_data_quality_ruleset_response(), tuple()} |
    {error, any()} |
    {error, delete_data_quality_ruleset_errors(), tuple()}.
delete_data_quality_ruleset(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDataQualityRuleset">>, Input, Options).

%% @doc Removes a specified database from a Data Catalog.
%%
%% After completing this operation, you no longer have access to the tables
%% (and all table
%% versions and partitions that might belong to the tables) and the
%% user-defined functions in
%% the deleted database. Glue deletes these &quot;orphaned&quot; resources
%% asynchronously in a timely
%% manner, at the discretion of the service.
%%
%% To ensure the immediate deletion of all related resources, before calling
%% `DeleteDatabase', use `DeleteTableVersion' or
%% `BatchDeleteTableVersion', `DeletePartition' or
%% `BatchDeletePartition', `DeleteUserDefinedFunction', and
%% `DeleteTable' or `BatchDeleteTable', to delete any resources that
%% belong to the database.
-spec delete_database(aws_client:aws_client(), delete_database_request()) ->
    {ok, delete_database_response(), tuple()} |
    {error, any()} |
    {error, delete_database_errors(), tuple()}.
delete_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_database(Client, Input, []).

-spec delete_database(aws_client:aws_client(), delete_database_request(), proplists:proplist()) ->
    {ok, delete_database_response(), tuple()} |
    {error, any()} |
    {error, delete_database_errors(), tuple()}.
delete_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDatabase">>, Input, Options).

%% @doc Deletes a specified development endpoint.
-spec delete_dev_endpoint(aws_client:aws_client(), delete_dev_endpoint_request()) ->
    {ok, delete_dev_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_dev_endpoint_errors(), tuple()}.
delete_dev_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_dev_endpoint(Client, Input, []).

-spec delete_dev_endpoint(aws_client:aws_client(), delete_dev_endpoint_request(), proplists:proplist()) ->
    {ok, delete_dev_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_dev_endpoint_errors(), tuple()}.
delete_dev_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDevEndpoint">>, Input, Options).

%% @doc Deletes the existing Glue Identity Center configuration, removing the
%% integration between Glue and
%% Amazon Web Services IAM Identity Center.
-spec delete_glue_identity_center_configuration(aws_client:aws_client(), delete_glue_identity_center_configuration_request()) ->
    {ok, delete_glue_identity_center_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_glue_identity_center_configuration_errors(), tuple()}.
delete_glue_identity_center_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_glue_identity_center_configuration(Client, Input, []).

-spec delete_glue_identity_center_configuration(aws_client:aws_client(), delete_glue_identity_center_configuration_request(), proplists:proplist()) ->
    {ok, delete_glue_identity_center_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_glue_identity_center_configuration_errors(), tuple()}.
delete_glue_identity_center_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGlueIdentityCenterConfiguration">>, Input, Options).

%% @doc Deletes the specified Zero-ETL integration.
-spec delete_integration(aws_client:aws_client(), delete_integration_request()) ->
    {ok, delete_integration_response(), tuple()} |
    {error, any()} |
    {error, delete_integration_errors(), tuple()}.
delete_integration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_integration(Client, Input, []).

-spec delete_integration(aws_client:aws_client(), delete_integration_request(), proplists:proplist()) ->
    {ok, delete_integration_response(), tuple()} |
    {error, any()} |
    {error, delete_integration_errors(), tuple()}.
delete_integration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIntegration">>, Input, Options).

%% @doc Deletes the table properties that have been created for the tables
%% that need to be replicated.
-spec delete_integration_table_properties(aws_client:aws_client(), delete_integration_table_properties_request()) ->
    {ok, delete_integration_table_properties_response(), tuple()} |
    {error, any()} |
    {error, delete_integration_table_properties_errors(), tuple()}.
delete_integration_table_properties(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_integration_table_properties(Client, Input, []).

-spec delete_integration_table_properties(aws_client:aws_client(), delete_integration_table_properties_request(), proplists:proplist()) ->
    {ok, delete_integration_table_properties_response(), tuple()} |
    {error, any()} |
    {error, delete_integration_table_properties_errors(), tuple()}.
delete_integration_table_properties(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIntegrationTableProperties">>, Input, Options).

%% @doc Deletes a specified job definition.
%%
%% If the job definition
%% is not found, no exception is thrown.
-spec delete_job(aws_client:aws_client(), delete_job_request()) ->
    {ok, delete_job_response(), tuple()} |
    {error, any()} |
    {error, delete_job_errors(), tuple()}.
delete_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_job(Client, Input, []).

-spec delete_job(aws_client:aws_client(), delete_job_request(), proplists:proplist()) ->
    {ok, delete_job_response(), tuple()} |
    {error, any()} |
    {error, delete_job_errors(), tuple()}.
delete_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteJob">>, Input, Options).

%% @doc Deletes an Glue machine learning transform.
%%
%% Machine learning transforms are a special
%% type of transform that use machine learning to learn the details of the
%% transformation to be
%% performed by learning from examples provided by humans. These
%% transformations are then saved
%% by Glue. If you no longer need a transform, you can delete it by calling
%% `DeleteMLTransforms'. However, any Glue jobs that still reference the
%% deleted
%% transform will no longer succeed.
-spec delete_ml_transform(aws_client:aws_client(), delete_ml_transform_request()) ->
    {ok, delete_ml_transform_response(), tuple()} |
    {error, any()} |
    {error, delete_ml_transform_errors(), tuple()}.
delete_ml_transform(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_ml_transform(Client, Input, []).

-spec delete_ml_transform(aws_client:aws_client(), delete_ml_transform_request(), proplists:proplist()) ->
    {ok, delete_ml_transform_response(), tuple()} |
    {error, any()} |
    {error, delete_ml_transform_errors(), tuple()}.
delete_ml_transform(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMLTransform">>, Input, Options).

%% @doc Deletes a specified partition.
-spec delete_partition(aws_client:aws_client(), delete_partition_request()) ->
    {ok, delete_partition_response(), tuple()} |
    {error, any()} |
    {error, delete_partition_errors(), tuple()}.
delete_partition(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_partition(Client, Input, []).

-spec delete_partition(aws_client:aws_client(), delete_partition_request(), proplists:proplist()) ->
    {ok, delete_partition_response(), tuple()} |
    {error, any()} |
    {error, delete_partition_errors(), tuple()}.
delete_partition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePartition">>, Input, Options).

%% @doc Deletes a specified partition index from an existing table.
-spec delete_partition_index(aws_client:aws_client(), delete_partition_index_request()) ->
    {ok, delete_partition_index_response(), tuple()} |
    {error, any()} |
    {error, delete_partition_index_errors(), tuple()}.
delete_partition_index(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_partition_index(Client, Input, []).

-spec delete_partition_index(aws_client:aws_client(), delete_partition_index_request(), proplists:proplist()) ->
    {ok, delete_partition_index_response(), tuple()} |
    {error, any()} |
    {error, delete_partition_index_errors(), tuple()}.
delete_partition_index(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePartitionIndex">>, Input, Options).

%% @doc Delete the entire registry including schema and all of its versions.
%%
%% To get the status of the delete operation, you can call the
%% `GetRegistry' API after the asynchronous call. Deleting a registry
%% will deactivate all online operations for the registry such as the
%% `UpdateRegistry', `CreateSchema', `UpdateSchema', and
%% `RegisterSchemaVersion' APIs.
-spec delete_registry(aws_client:aws_client(), delete_registry_input()) ->
    {ok, delete_registry_response(), tuple()} |
    {error, any()} |
    {error, delete_registry_errors(), tuple()}.
delete_registry(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_registry(Client, Input, []).

-spec delete_registry(aws_client:aws_client(), delete_registry_input(), proplists:proplist()) ->
    {ok, delete_registry_response(), tuple()} |
    {error, any()} |
    {error, delete_registry_errors(), tuple()}.
delete_registry(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRegistry">>, Input, Options).

%% @doc Deletes a specified policy.
-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_request()) ->
    {ok, delete_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_policy(Client, Input, []).

-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_request(), proplists:proplist()) ->
    {ok, delete_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourcePolicy">>, Input, Options).

%% @doc Deletes the entire schema set, including the schema set and all of
%% its versions.
%%
%% To get the status of the delete operation, you can call `GetSchema'
%% API after the asynchronous call. Deleting a registry will deactivate all
%% online operations for the schema, such as the `GetSchemaByDefinition',
%% and `RegisterSchemaVersion' APIs.
-spec delete_schema(aws_client:aws_client(), delete_schema_input()) ->
    {ok, delete_schema_response(), tuple()} |
    {error, any()} |
    {error, delete_schema_errors(), tuple()}.
delete_schema(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_schema(Client, Input, []).

-spec delete_schema(aws_client:aws_client(), delete_schema_input(), proplists:proplist()) ->
    {ok, delete_schema_response(), tuple()} |
    {error, any()} |
    {error, delete_schema_errors(), tuple()}.
delete_schema(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSchema">>, Input, Options).

%% @doc Remove versions from the specified schema.
%%
%% A version number or range may be supplied. If the compatibility mode
%% forbids deleting of a version that is necessary, such as BACKWARDS_FULL,
%% an error is returned. Calling the `GetSchemaVersions' API after this
%% call will list the status of the deleted versions.
%%
%% When the range of version numbers contain check pointed version, the API
%% will return a 409 conflict and will not proceed with the deletion. You
%% have to remove the checkpoint first using the `DeleteSchemaCheckpoint'
%% API before using this API.
%%
%% You cannot use the `DeleteSchemaVersions' API to delete the first
%% schema version in the schema set. The first schema version can only be
%% deleted by the `DeleteSchema' API. This operation will also delete the
%% attached `SchemaVersionMetadata' under the schema versions. Hard
%% deletes will be enforced on the database.
%%
%% If the compatibility mode forbids deleting of a version that is necessary,
%% such as BACKWARDS_FULL, an error is returned.
-spec delete_schema_versions(aws_client:aws_client(), delete_schema_versions_input()) ->
    {ok, delete_schema_versions_response(), tuple()} |
    {error, any()} |
    {error, delete_schema_versions_errors(), tuple()}.
delete_schema_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_schema_versions(Client, Input, []).

-spec delete_schema_versions(aws_client:aws_client(), delete_schema_versions_input(), proplists:proplist()) ->
    {ok, delete_schema_versions_response(), tuple()} |
    {error, any()} |
    {error, delete_schema_versions_errors(), tuple()}.
delete_schema_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSchemaVersions">>, Input, Options).

%% @doc Deletes a specified security configuration.
-spec delete_security_configuration(aws_client:aws_client(), delete_security_configuration_request()) ->
    {ok, delete_security_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_security_configuration_errors(), tuple()}.
delete_security_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_security_configuration(Client, Input, []).

-spec delete_security_configuration(aws_client:aws_client(), delete_security_configuration_request(), proplists:proplist()) ->
    {ok, delete_security_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_security_configuration_errors(), tuple()}.
delete_security_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSecurityConfiguration">>, Input, Options).

%% @doc Deletes the session.
-spec delete_session(aws_client:aws_client(), delete_session_request()) ->
    {ok, delete_session_response(), tuple()} |
    {error, any()} |
    {error, delete_session_errors(), tuple()}.
delete_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_session(Client, Input, []).

-spec delete_session(aws_client:aws_client(), delete_session_request(), proplists:proplist()) ->
    {ok, delete_session_response(), tuple()} |
    {error, any()} |
    {error, delete_session_errors(), tuple()}.
delete_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSession">>, Input, Options).

%% @doc Removes a table definition from the Data Catalog.
%%
%% After completing this operation, you no longer have access to the table
%% versions and
%% partitions that belong to the deleted table. Glue deletes these
%% &quot;orphaned&quot; resources
%% asynchronously in a timely manner, at the discretion of the service.
%%
%% To ensure the immediate deletion of all related resources, before calling
%% `DeleteTable', use `DeleteTableVersion' or
%% `BatchDeleteTableVersion', and `DeletePartition' or
%% `BatchDeletePartition', to delete any resources that belong to the
%% table.
-spec delete_table(aws_client:aws_client(), delete_table_request()) ->
    {ok, delete_table_response(), tuple()} |
    {error, any()} |
    {error, delete_table_errors(), tuple()}.
delete_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_table(Client, Input, []).

-spec delete_table(aws_client:aws_client(), delete_table_request(), proplists:proplist()) ->
    {ok, delete_table_response(), tuple()} |
    {error, any()} |
    {error, delete_table_errors(), tuple()}.
delete_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTable">>, Input, Options).

%% @doc Deletes an optimizer and all associated metadata for a table.
%%
%% The optimization will no longer be performed on the table.
-spec delete_table_optimizer(aws_client:aws_client(), delete_table_optimizer_request()) ->
    {ok, delete_table_optimizer_response(), tuple()} |
    {error, any()} |
    {error, delete_table_optimizer_errors(), tuple()}.
delete_table_optimizer(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_table_optimizer(Client, Input, []).

-spec delete_table_optimizer(aws_client:aws_client(), delete_table_optimizer_request(), proplists:proplist()) ->
    {ok, delete_table_optimizer_response(), tuple()} |
    {error, any()} |
    {error, delete_table_optimizer_errors(), tuple()}.
delete_table_optimizer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTableOptimizer">>, Input, Options).

%% @doc Deletes a specified version of a table.
-spec delete_table_version(aws_client:aws_client(), delete_table_version_request()) ->
    {ok, delete_table_version_response(), tuple()} |
    {error, any()} |
    {error, delete_table_version_errors(), tuple()}.
delete_table_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_table_version(Client, Input, []).

-spec delete_table_version(aws_client:aws_client(), delete_table_version_request(), proplists:proplist()) ->
    {ok, delete_table_version_response(), tuple()} |
    {error, any()} |
    {error, delete_table_version_errors(), tuple()}.
delete_table_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTableVersion">>, Input, Options).

%% @doc Deletes a specified trigger.
%%
%% If the trigger is not found, no
%% exception is thrown.
-spec delete_trigger(aws_client:aws_client(), delete_trigger_request()) ->
    {ok, delete_trigger_response(), tuple()} |
    {error, any()} |
    {error, delete_trigger_errors(), tuple()}.
delete_trigger(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_trigger(Client, Input, []).

-spec delete_trigger(aws_client:aws_client(), delete_trigger_request(), proplists:proplist()) ->
    {ok, delete_trigger_response(), tuple()} |
    {error, any()} |
    {error, delete_trigger_errors(), tuple()}.
delete_trigger(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTrigger">>, Input, Options).

%% @doc Deletes the Glue specified usage profile.
-spec delete_usage_profile(aws_client:aws_client(), delete_usage_profile_request()) ->
    {ok, delete_usage_profile_response(), tuple()} |
    {error, any()} |
    {error, delete_usage_profile_errors(), tuple()}.
delete_usage_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_usage_profile(Client, Input, []).

-spec delete_usage_profile(aws_client:aws_client(), delete_usage_profile_request(), proplists:proplist()) ->
    {ok, delete_usage_profile_response(), tuple()} |
    {error, any()} |
    {error, delete_usage_profile_errors(), tuple()}.
delete_usage_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUsageProfile">>, Input, Options).

%% @doc Deletes an existing function definition from the Data Catalog.
-spec delete_user_defined_function(aws_client:aws_client(), delete_user_defined_function_request()) ->
    {ok, delete_user_defined_function_response(), tuple()} |
    {error, any()} |
    {error, delete_user_defined_function_errors(), tuple()}.
delete_user_defined_function(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user_defined_function(Client, Input, []).

-spec delete_user_defined_function(aws_client:aws_client(), delete_user_defined_function_request(), proplists:proplist()) ->
    {ok, delete_user_defined_function_response(), tuple()} |
    {error, any()} |
    {error, delete_user_defined_function_errors(), tuple()}.
delete_user_defined_function(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUserDefinedFunction">>, Input, Options).

%% @doc Deletes a workflow.
-spec delete_workflow(aws_client:aws_client(), delete_workflow_request()) ->
    {ok, delete_workflow_response(), tuple()} |
    {error, any()} |
    {error, delete_workflow_errors(), tuple()}.
delete_workflow(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_workflow(Client, Input, []).

-spec delete_workflow(aws_client:aws_client(), delete_workflow_request(), proplists:proplist()) ->
    {ok, delete_workflow_response(), tuple()} |
    {error, any()} |
    {error, delete_workflow_errors(), tuple()}.
delete_workflow(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWorkflow">>, Input, Options).

%% @doc The `DescribeConnectionType' API provides full details of the
%% supported options for a given connection type in Glue.
-spec describe_connection_type(aws_client:aws_client(), describe_connection_type_request()) ->
    {ok, describe_connection_type_response(), tuple()} |
    {error, any()} |
    {error, describe_connection_type_errors(), tuple()}.
describe_connection_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_connection_type(Client, Input, []).

-spec describe_connection_type(aws_client:aws_client(), describe_connection_type_request(), proplists:proplist()) ->
    {ok, describe_connection_type_response(), tuple()} |
    {error, any()} |
    {error, describe_connection_type_errors(), tuple()}.
describe_connection_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConnectionType">>, Input, Options).

%% @doc Provides details regarding the entity used with the connection type,
%% with a description of the data model for each field in the selected
%% entity.
%%
%% The response includes all the fields which make up the entity.
-spec describe_entity(aws_client:aws_client(), describe_entity_request()) ->
    {ok, describe_entity_response(), tuple()} |
    {error, any()} |
    {error, describe_entity_errors(), tuple()}.
describe_entity(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_entity(Client, Input, []).

-spec describe_entity(aws_client:aws_client(), describe_entity_request(), proplists:proplist()) ->
    {ok, describe_entity_response(), tuple()} |
    {error, any()} |
    {error, describe_entity_errors(), tuple()}.
describe_entity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEntity">>, Input, Options).

%% @doc Returns a list of inbound integrations for the specified integration.
-spec describe_inbound_integrations(aws_client:aws_client(), describe_inbound_integrations_request()) ->
    {ok, describe_inbound_integrations_response(), tuple()} |
    {error, any()} |
    {error, describe_inbound_integrations_errors(), tuple()}.
describe_inbound_integrations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_inbound_integrations(Client, Input, []).

-spec describe_inbound_integrations(aws_client:aws_client(), describe_inbound_integrations_request(), proplists:proplist()) ->
    {ok, describe_inbound_integrations_response(), tuple()} |
    {error, any()} |
    {error, describe_inbound_integrations_errors(), tuple()}.
describe_inbound_integrations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInboundIntegrations">>, Input, Options).

%% @doc The API is used to retrieve a list of integrations.
-spec describe_integrations(aws_client:aws_client(), describe_integrations_request()) ->
    {ok, describe_integrations_response(), tuple()} |
    {error, any()} |
    {error, describe_integrations_errors(), tuple()}.
describe_integrations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_integrations(Client, Input, []).

-spec describe_integrations(aws_client:aws_client(), describe_integrations_request(), proplists:proplist()) ->
    {ok, describe_integrations_response(), tuple()} |
    {error, any()} |
    {error, describe_integrations_errors(), tuple()}.
describe_integrations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeIntegrations">>, Input, Options).

%% @doc Retrieves the details of a blueprint.
-spec get_blueprint(aws_client:aws_client(), get_blueprint_request()) ->
    {ok, get_blueprint_response(), tuple()} |
    {error, any()} |
    {error, get_blueprint_errors(), tuple()}.
get_blueprint(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_blueprint(Client, Input, []).

-spec get_blueprint(aws_client:aws_client(), get_blueprint_request(), proplists:proplist()) ->
    {ok, get_blueprint_response(), tuple()} |
    {error, any()} |
    {error, get_blueprint_errors(), tuple()}.
get_blueprint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBlueprint">>, Input, Options).

%% @doc Retrieves the details of a blueprint run.
-spec get_blueprint_run(aws_client:aws_client(), get_blueprint_run_request()) ->
    {ok, get_blueprint_run_response(), tuple()} |
    {error, any()} |
    {error, get_blueprint_run_errors(), tuple()}.
get_blueprint_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_blueprint_run(Client, Input, []).

-spec get_blueprint_run(aws_client:aws_client(), get_blueprint_run_request(), proplists:proplist()) ->
    {ok, get_blueprint_run_response(), tuple()} |
    {error, any()} |
    {error, get_blueprint_run_errors(), tuple()}.
get_blueprint_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBlueprintRun">>, Input, Options).

%% @doc Retrieves the details of blueprint runs for a specified blueprint.
-spec get_blueprint_runs(aws_client:aws_client(), get_blueprint_runs_request()) ->
    {ok, get_blueprint_runs_response(), tuple()} |
    {error, any()} |
    {error, get_blueprint_runs_errors(), tuple()}.
get_blueprint_runs(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_blueprint_runs(Client, Input, []).

-spec get_blueprint_runs(aws_client:aws_client(), get_blueprint_runs_request(), proplists:proplist()) ->
    {ok, get_blueprint_runs_response(), tuple()} |
    {error, any()} |
    {error, get_blueprint_runs_errors(), tuple()}.
get_blueprint_runs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBlueprintRuns">>, Input, Options).

%% @doc The name of the Catalog to retrieve.
%%
%% This should be all lowercase.
-spec get_catalog(aws_client:aws_client(), get_catalog_request()) ->
    {ok, get_catalog_response(), tuple()} |
    {error, any()} |
    {error, get_catalog_errors(), tuple()}.
get_catalog(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_catalog(Client, Input, []).

-spec get_catalog(aws_client:aws_client(), get_catalog_request(), proplists:proplist()) ->
    {ok, get_catalog_response(), tuple()} |
    {error, any()} |
    {error, get_catalog_errors(), tuple()}.
get_catalog(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCatalog">>, Input, Options).

%% @doc Retrieves the status of a migration operation.
-spec get_catalog_import_status(aws_client:aws_client(), get_catalog_import_status_request()) ->
    {ok, get_catalog_import_status_response(), tuple()} |
    {error, any()} |
    {error, get_catalog_import_status_errors(), tuple()}.
get_catalog_import_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_catalog_import_status(Client, Input, []).

-spec get_catalog_import_status(aws_client:aws_client(), get_catalog_import_status_request(), proplists:proplist()) ->
    {ok, get_catalog_import_status_response(), tuple()} |
    {error, any()} |
    {error, get_catalog_import_status_errors(), tuple()}.
get_catalog_import_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCatalogImportStatus">>, Input, Options).

%% @doc Retrieves all catalogs defined in a catalog in the Glue Data Catalog.
%%
%% For a Redshift-federated catalog use case, this operation returns the list
%% of catalogs mapped to Redshift databases in the Redshift namespace
%% catalog.
-spec get_catalogs(aws_client:aws_client(), get_catalogs_request()) ->
    {ok, get_catalogs_response(), tuple()} |
    {error, any()} |
    {error, get_catalogs_errors(), tuple()}.
get_catalogs(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_catalogs(Client, Input, []).

-spec get_catalogs(aws_client:aws_client(), get_catalogs_request(), proplists:proplist()) ->
    {ok, get_catalogs_response(), tuple()} |
    {error, any()} |
    {error, get_catalogs_errors(), tuple()}.
get_catalogs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCatalogs">>, Input, Options).

%% @doc Retrieve a classifier by name.
-spec get_classifier(aws_client:aws_client(), get_classifier_request()) ->
    {ok, get_classifier_response(), tuple()} |
    {error, any()} |
    {error, get_classifier_errors(), tuple()}.
get_classifier(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_classifier(Client, Input, []).

-spec get_classifier(aws_client:aws_client(), get_classifier_request(), proplists:proplist()) ->
    {ok, get_classifier_response(), tuple()} |
    {error, any()} |
    {error, get_classifier_errors(), tuple()}.
get_classifier(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetClassifier">>, Input, Options).

%% @doc Lists all classifier objects in the Data Catalog.
-spec get_classifiers(aws_client:aws_client(), get_classifiers_request()) ->
    {ok, get_classifiers_response(), tuple()} |
    {error, any()} |
    {error, get_classifiers_errors(), tuple()}.
get_classifiers(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_classifiers(Client, Input, []).

-spec get_classifiers(aws_client:aws_client(), get_classifiers_request(), proplists:proplist()) ->
    {ok, get_classifiers_response(), tuple()} |
    {error, any()} |
    {error, get_classifiers_errors(), tuple()}.
get_classifiers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetClassifiers">>, Input, Options).

%% @doc Retrieves partition statistics of columns.
%%
%% The Identity and Access Management (IAM) permission required for this
%% operation is `GetPartition'.
-spec get_column_statistics_for_partition(aws_client:aws_client(), get_column_statistics_for_partition_request()) ->
    {ok, get_column_statistics_for_partition_response(), tuple()} |
    {error, any()} |
    {error, get_column_statistics_for_partition_errors(), tuple()}.
get_column_statistics_for_partition(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_column_statistics_for_partition(Client, Input, []).

-spec get_column_statistics_for_partition(aws_client:aws_client(), get_column_statistics_for_partition_request(), proplists:proplist()) ->
    {ok, get_column_statistics_for_partition_response(), tuple()} |
    {error, any()} |
    {error, get_column_statistics_for_partition_errors(), tuple()}.
get_column_statistics_for_partition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetColumnStatisticsForPartition">>, Input, Options).

%% @doc Retrieves table statistics of columns.
%%
%% The Identity and Access Management (IAM) permission required for this
%% operation is `GetTable'.
-spec get_column_statistics_for_table(aws_client:aws_client(), get_column_statistics_for_table_request()) ->
    {ok, get_column_statistics_for_table_response(), tuple()} |
    {error, any()} |
    {error, get_column_statistics_for_table_errors(), tuple()}.
get_column_statistics_for_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_column_statistics_for_table(Client, Input, []).

-spec get_column_statistics_for_table(aws_client:aws_client(), get_column_statistics_for_table_request(), proplists:proplist()) ->
    {ok, get_column_statistics_for_table_response(), tuple()} |
    {error, any()} |
    {error, get_column_statistics_for_table_errors(), tuple()}.
get_column_statistics_for_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetColumnStatisticsForTable">>, Input, Options).

%% @doc Get the associated metadata/information for a task run, given a task
%% run ID.
-spec get_column_statistics_task_run(aws_client:aws_client(), get_column_statistics_task_run_request()) ->
    {ok, get_column_statistics_task_run_response(), tuple()} |
    {error, any()} |
    {error, get_column_statistics_task_run_errors(), tuple()}.
get_column_statistics_task_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_column_statistics_task_run(Client, Input, []).

-spec get_column_statistics_task_run(aws_client:aws_client(), get_column_statistics_task_run_request(), proplists:proplist()) ->
    {ok, get_column_statistics_task_run_response(), tuple()} |
    {error, any()} |
    {error, get_column_statistics_task_run_errors(), tuple()}.
get_column_statistics_task_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetColumnStatisticsTaskRun">>, Input, Options).

%% @doc Retrieves information about all runs associated with the specified
%% table.
-spec get_column_statistics_task_runs(aws_client:aws_client(), get_column_statistics_task_runs_request()) ->
    {ok, get_column_statistics_task_runs_response(), tuple()} |
    {error, any()} |
    {error, get_column_statistics_task_runs_errors(), tuple()}.
get_column_statistics_task_runs(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_column_statistics_task_runs(Client, Input, []).

-spec get_column_statistics_task_runs(aws_client:aws_client(), get_column_statistics_task_runs_request(), proplists:proplist()) ->
    {ok, get_column_statistics_task_runs_response(), tuple()} |
    {error, any()} |
    {error, get_column_statistics_task_runs_errors(), tuple()}.
get_column_statistics_task_runs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetColumnStatisticsTaskRuns">>, Input, Options).

%% @doc Gets settings for a column statistics task.
-spec get_column_statistics_task_settings(aws_client:aws_client(), get_column_statistics_task_settings_request()) ->
    {ok, get_column_statistics_task_settings_response(), tuple()} |
    {error, any()} |
    {error, get_column_statistics_task_settings_errors(), tuple()}.
get_column_statistics_task_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_column_statistics_task_settings(Client, Input, []).

-spec get_column_statistics_task_settings(aws_client:aws_client(), get_column_statistics_task_settings_request(), proplists:proplist()) ->
    {ok, get_column_statistics_task_settings_response(), tuple()} |
    {error, any()} |
    {error, get_column_statistics_task_settings_errors(), tuple()}.
get_column_statistics_task_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetColumnStatisticsTaskSettings">>, Input, Options).

%% @doc Retrieves a connection definition from the Data Catalog.
-spec get_connection(aws_client:aws_client(), get_connection_request()) ->
    {ok, get_connection_response(), tuple()} |
    {error, any()} |
    {error, get_connection_errors(), tuple()}.
get_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_connection(Client, Input, []).

-spec get_connection(aws_client:aws_client(), get_connection_request(), proplists:proplist()) ->
    {ok, get_connection_response(), tuple()} |
    {error, any()} |
    {error, get_connection_errors(), tuple()}.
get_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetConnection">>, Input, Options).

%% @doc Retrieves a list of connection definitions from the Data Catalog.
-spec get_connections(aws_client:aws_client(), get_connections_request()) ->
    {ok, get_connections_response(), tuple()} |
    {error, any()} |
    {error, get_connections_errors(), tuple()}.
get_connections(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_connections(Client, Input, []).

-spec get_connections(aws_client:aws_client(), get_connections_request(), proplists:proplist()) ->
    {ok, get_connections_response(), tuple()} |
    {error, any()} |
    {error, get_connections_errors(), tuple()}.
get_connections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetConnections">>, Input, Options).

%% @doc Retrieves metadata for a specified crawler.
-spec get_crawler(aws_client:aws_client(), get_crawler_request()) ->
    {ok, get_crawler_response(), tuple()} |
    {error, any()} |
    {error, get_crawler_errors(), tuple()}.
get_crawler(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_crawler(Client, Input, []).

-spec get_crawler(aws_client:aws_client(), get_crawler_request(), proplists:proplist()) ->
    {ok, get_crawler_response(), tuple()} |
    {error, any()} |
    {error, get_crawler_errors(), tuple()}.
get_crawler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCrawler">>, Input, Options).

%% @doc Retrieves metrics about specified crawlers.
-spec get_crawler_metrics(aws_client:aws_client(), get_crawler_metrics_request()) ->
    {ok, get_crawler_metrics_response(), tuple()} |
    {error, any()} |
    {error, get_crawler_metrics_errors(), tuple()}.
get_crawler_metrics(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_crawler_metrics(Client, Input, []).

-spec get_crawler_metrics(aws_client:aws_client(), get_crawler_metrics_request(), proplists:proplist()) ->
    {ok, get_crawler_metrics_response(), tuple()} |
    {error, any()} |
    {error, get_crawler_metrics_errors(), tuple()}.
get_crawler_metrics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCrawlerMetrics">>, Input, Options).

%% @doc Retrieves metadata for all crawlers defined in the customer
%% account.
-spec get_crawlers(aws_client:aws_client(), get_crawlers_request()) ->
    {ok, get_crawlers_response(), tuple()} |
    {error, any()} |
    {error, get_crawlers_errors(), tuple()}.
get_crawlers(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_crawlers(Client, Input, []).

-spec get_crawlers(aws_client:aws_client(), get_crawlers_request(), proplists:proplist()) ->
    {ok, get_crawlers_response(), tuple()} |
    {error, any()} |
    {error, get_crawlers_errors(), tuple()}.
get_crawlers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCrawlers">>, Input, Options).

%% @doc Retrieves the details of a custom pattern by specifying its name.
-spec get_custom_entity_type(aws_client:aws_client(), get_custom_entity_type_request()) ->
    {ok, get_custom_entity_type_response(), tuple()} |
    {error, any()} |
    {error, get_custom_entity_type_errors(), tuple()}.
get_custom_entity_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_custom_entity_type(Client, Input, []).

-spec get_custom_entity_type(aws_client:aws_client(), get_custom_entity_type_request(), proplists:proplist()) ->
    {ok, get_custom_entity_type_response(), tuple()} |
    {error, any()} |
    {error, get_custom_entity_type_errors(), tuple()}.
get_custom_entity_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCustomEntityType">>, Input, Options).

%% @doc Retrieves the security configuration for a specified catalog.
-spec get_data_catalog_encryption_settings(aws_client:aws_client(), get_data_catalog_encryption_settings_request()) ->
    {ok, get_data_catalog_encryption_settings_response(), tuple()} |
    {error, any()} |
    {error, get_data_catalog_encryption_settings_errors(), tuple()}.
get_data_catalog_encryption_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_data_catalog_encryption_settings(Client, Input, []).

-spec get_data_catalog_encryption_settings(aws_client:aws_client(), get_data_catalog_encryption_settings_request(), proplists:proplist()) ->
    {ok, get_data_catalog_encryption_settings_response(), tuple()} |
    {error, any()} |
    {error, get_data_catalog_encryption_settings_errors(), tuple()}.
get_data_catalog_encryption_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDataCatalogEncryptionSettings">>, Input, Options).

%% @doc Retrieve the training status of the model along with more information
%% (CompletedOn, StartedOn, FailureReason).
-spec get_data_quality_model(aws_client:aws_client(), get_data_quality_model_request()) ->
    {ok, get_data_quality_model_response(), tuple()} |
    {error, any()} |
    {error, get_data_quality_model_errors(), tuple()}.
get_data_quality_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_data_quality_model(Client, Input, []).

-spec get_data_quality_model(aws_client:aws_client(), get_data_quality_model_request(), proplists:proplist()) ->
    {ok, get_data_quality_model_response(), tuple()} |
    {error, any()} |
    {error, get_data_quality_model_errors(), tuple()}.
get_data_quality_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDataQualityModel">>, Input, Options).

%% @doc Retrieve a statistic's predictions for a given Profile ID.
-spec get_data_quality_model_result(aws_client:aws_client(), get_data_quality_model_result_request()) ->
    {ok, get_data_quality_model_result_response(), tuple()} |
    {error, any()} |
    {error, get_data_quality_model_result_errors(), tuple()}.
get_data_quality_model_result(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_data_quality_model_result(Client, Input, []).

-spec get_data_quality_model_result(aws_client:aws_client(), get_data_quality_model_result_request(), proplists:proplist()) ->
    {ok, get_data_quality_model_result_response(), tuple()} |
    {error, any()} |
    {error, get_data_quality_model_result_errors(), tuple()}.
get_data_quality_model_result(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDataQualityModelResult">>, Input, Options).

%% @doc Retrieves the result of a data quality rule evaluation.
-spec get_data_quality_result(aws_client:aws_client(), get_data_quality_result_request()) ->
    {ok, get_data_quality_result_response(), tuple()} |
    {error, any()} |
    {error, get_data_quality_result_errors(), tuple()}.
get_data_quality_result(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_data_quality_result(Client, Input, []).

-spec get_data_quality_result(aws_client:aws_client(), get_data_quality_result_request(), proplists:proplist()) ->
    {ok, get_data_quality_result_response(), tuple()} |
    {error, any()} |
    {error, get_data_quality_result_errors(), tuple()}.
get_data_quality_result(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDataQualityResult">>, Input, Options).

%% @doc Gets the specified recommendation run that was used to generate
%% rules.
-spec get_data_quality_rule_recommendation_run(aws_client:aws_client(), get_data_quality_rule_recommendation_run_request()) ->
    {ok, get_data_quality_rule_recommendation_run_response(), tuple()} |
    {error, any()} |
    {error, get_data_quality_rule_recommendation_run_errors(), tuple()}.
get_data_quality_rule_recommendation_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_data_quality_rule_recommendation_run(Client, Input, []).

-spec get_data_quality_rule_recommendation_run(aws_client:aws_client(), get_data_quality_rule_recommendation_run_request(), proplists:proplist()) ->
    {ok, get_data_quality_rule_recommendation_run_response(), tuple()} |
    {error, any()} |
    {error, get_data_quality_rule_recommendation_run_errors(), tuple()}.
get_data_quality_rule_recommendation_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDataQualityRuleRecommendationRun">>, Input, Options).

%% @doc Returns an existing ruleset by identifier or name.
-spec get_data_quality_ruleset(aws_client:aws_client(), get_data_quality_ruleset_request()) ->
    {ok, get_data_quality_ruleset_response(), tuple()} |
    {error, any()} |
    {error, get_data_quality_ruleset_errors(), tuple()}.
get_data_quality_ruleset(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_data_quality_ruleset(Client, Input, []).

-spec get_data_quality_ruleset(aws_client:aws_client(), get_data_quality_ruleset_request(), proplists:proplist()) ->
    {ok, get_data_quality_ruleset_response(), tuple()} |
    {error, any()} |
    {error, get_data_quality_ruleset_errors(), tuple()}.
get_data_quality_ruleset(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDataQualityRuleset">>, Input, Options).

%% @doc Retrieves a specific run where a ruleset is evaluated against a data
%% source.
-spec get_data_quality_ruleset_evaluation_run(aws_client:aws_client(), get_data_quality_ruleset_evaluation_run_request()) ->
    {ok, get_data_quality_ruleset_evaluation_run_response(), tuple()} |
    {error, any()} |
    {error, get_data_quality_ruleset_evaluation_run_errors(), tuple()}.
get_data_quality_ruleset_evaluation_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_data_quality_ruleset_evaluation_run(Client, Input, []).

-spec get_data_quality_ruleset_evaluation_run(aws_client:aws_client(), get_data_quality_ruleset_evaluation_run_request(), proplists:proplist()) ->
    {ok, get_data_quality_ruleset_evaluation_run_response(), tuple()} |
    {error, any()} |
    {error, get_data_quality_ruleset_evaluation_run_errors(), tuple()}.
get_data_quality_ruleset_evaluation_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDataQualityRulesetEvaluationRun">>, Input, Options).

%% @doc Retrieves the definition of a specified database.
-spec get_database(aws_client:aws_client(), get_database_request()) ->
    {ok, get_database_response(), tuple()} |
    {error, any()} |
    {error, get_database_errors(), tuple()}.
get_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_database(Client, Input, []).

-spec get_database(aws_client:aws_client(), get_database_request(), proplists:proplist()) ->
    {ok, get_database_response(), tuple()} |
    {error, any()} |
    {error, get_database_errors(), tuple()}.
get_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDatabase">>, Input, Options).

%% @doc Retrieves all databases defined in a given Data Catalog.
-spec get_databases(aws_client:aws_client(), get_databases_request()) ->
    {ok, get_databases_response(), tuple()} |
    {error, any()} |
    {error, get_databases_errors(), tuple()}.
get_databases(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_databases(Client, Input, []).

-spec get_databases(aws_client:aws_client(), get_databases_request(), proplists:proplist()) ->
    {ok, get_databases_response(), tuple()} |
    {error, any()} |
    {error, get_databases_errors(), tuple()}.
get_databases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDatabases">>, Input, Options).

%% @doc Transforms a Python script into a directed acyclic graph (DAG).
-spec get_dataflow_graph(aws_client:aws_client(), get_dataflow_graph_request()) ->
    {ok, get_dataflow_graph_response(), tuple()} |
    {error, any()} |
    {error, get_dataflow_graph_errors(), tuple()}.
get_dataflow_graph(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_dataflow_graph(Client, Input, []).

-spec get_dataflow_graph(aws_client:aws_client(), get_dataflow_graph_request(), proplists:proplist()) ->
    {ok, get_dataflow_graph_response(), tuple()} |
    {error, any()} |
    {error, get_dataflow_graph_errors(), tuple()}.
get_dataflow_graph(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDataflowGraph">>, Input, Options).

%% @doc Retrieves information about a specified development endpoint.
%%
%% When you create a development endpoint in a virtual private cloud (VPC),
%% Glue returns only
%% a private IP address, and the public IP address field is not populated.
%% When you create a
%% non-VPC development endpoint, Glue returns only a public IP address.
-spec get_dev_endpoint(aws_client:aws_client(), get_dev_endpoint_request()) ->
    {ok, get_dev_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_dev_endpoint_errors(), tuple()}.
get_dev_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_dev_endpoint(Client, Input, []).

-spec get_dev_endpoint(aws_client:aws_client(), get_dev_endpoint_request(), proplists:proplist()) ->
    {ok, get_dev_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_dev_endpoint_errors(), tuple()}.
get_dev_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDevEndpoint">>, Input, Options).

%% @doc Retrieves all the development endpoints in this Amazon Web Services
%% account.
%%
%% When you create a development endpoint in a virtual private cloud (VPC),
%% Glue returns only a private IP address
%% and the public IP address field is not populated. When you create a
%% non-VPC development
%% endpoint, Glue returns only a public IP address.
-spec get_dev_endpoints(aws_client:aws_client(), get_dev_endpoints_request()) ->
    {ok, get_dev_endpoints_response(), tuple()} |
    {error, any()} |
    {error, get_dev_endpoints_errors(), tuple()}.
get_dev_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_dev_endpoints(Client, Input, []).

-spec get_dev_endpoints(aws_client:aws_client(), get_dev_endpoints_request(), proplists:proplist()) ->
    {ok, get_dev_endpoints_response(), tuple()} |
    {error, any()} |
    {error, get_dev_endpoints_errors(), tuple()}.
get_dev_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDevEndpoints">>, Input, Options).

%% @doc This API is used to query preview data from a given connection type
%% or from a native Amazon S3 based Glue Data Catalog.
%%
%% Returns records as an array of JSON blobs. Each record is formatted using
%% Jackson JsonNode based on the field type defined by the
%% `DescribeEntity' API.
%%
%% Spark connectors generate schemas according to the same data type mapping
%% as in the `DescribeEntity' API. Spark connectors convert data to the
%% appropriate data types matching the schema when returning rows.
-spec get_entity_records(aws_client:aws_client(), get_entity_records_request()) ->
    {ok, get_entity_records_response(), tuple()} |
    {error, any()} |
    {error, get_entity_records_errors(), tuple()}.
get_entity_records(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_entity_records(Client, Input, []).

-spec get_entity_records(aws_client:aws_client(), get_entity_records_request(), proplists:proplist()) ->
    {ok, get_entity_records_response(), tuple()} |
    {error, any()} |
    {error, get_entity_records_errors(), tuple()}.
get_entity_records(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEntityRecords">>, Input, Options).

%% @doc Retrieves the current Glue Identity Center configuration details,
%% including the associated Identity Center instance and
%% application information.
-spec get_glue_identity_center_configuration(aws_client:aws_client(), get_glue_identity_center_configuration_request()) ->
    {ok, get_glue_identity_center_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_glue_identity_center_configuration_errors(), tuple()}.
get_glue_identity_center_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_glue_identity_center_configuration(Client, Input, []).

-spec get_glue_identity_center_configuration(aws_client:aws_client(), get_glue_identity_center_configuration_request(), proplists:proplist()) ->
    {ok, get_glue_identity_center_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_glue_identity_center_configuration_errors(), tuple()}.
get_glue_identity_center_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetGlueIdentityCenterConfiguration">>, Input, Options).

%% @doc This API is used for fetching the `ResourceProperty' of the Glue
%% connection (for the source) or Glue database ARN (for the target)
-spec get_integration_resource_property(aws_client:aws_client(), get_integration_resource_property_request()) ->
    {ok, get_integration_resource_property_response(), tuple()} |
    {error, any()} |
    {error, get_integration_resource_property_errors(), tuple()}.
get_integration_resource_property(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_integration_resource_property(Client, Input, []).

-spec get_integration_resource_property(aws_client:aws_client(), get_integration_resource_property_request(), proplists:proplist()) ->
    {ok, get_integration_resource_property_response(), tuple()} |
    {error, any()} |
    {error, get_integration_resource_property_errors(), tuple()}.
get_integration_resource_property(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIntegrationResourceProperty">>, Input, Options).

%% @doc This API is used to retrieve optional override properties for the
%% tables that need to be replicated.
%%
%% These properties can include properties for filtering and partition for
%% source and target tables.
-spec get_integration_table_properties(aws_client:aws_client(), get_integration_table_properties_request()) ->
    {ok, get_integration_table_properties_response(), tuple()} |
    {error, any()} |
    {error, get_integration_table_properties_errors(), tuple()}.
get_integration_table_properties(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_integration_table_properties(Client, Input, []).

-spec get_integration_table_properties(aws_client:aws_client(), get_integration_table_properties_request(), proplists:proplist()) ->
    {ok, get_integration_table_properties_response(), tuple()} |
    {error, any()} |
    {error, get_integration_table_properties_errors(), tuple()}.
get_integration_table_properties(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIntegrationTableProperties">>, Input, Options).

%% @doc Retrieves an existing job definition.
-spec get_job(aws_client:aws_client(), get_job_request()) ->
    {ok, get_job_response(), tuple()} |
    {error, any()} |
    {error, get_job_errors(), tuple()}.
get_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_job(Client, Input, []).

-spec get_job(aws_client:aws_client(), get_job_request(), proplists:proplist()) ->
    {ok, get_job_response(), tuple()} |
    {error, any()} |
    {error, get_job_errors(), tuple()}.
get_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetJob">>, Input, Options).

%% @doc Returns information on a job bookmark entry.
%%
%% For more information about enabling and using job bookmarks, see:
%%
%% Tracking processed data using job bookmarks:
%% https://docs.aws.amazon.com/glue/latest/dg/monitor-continuations.html
%%
%% Job parameters used by Glue:
%% https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html
%%
%% Job structure:
%% https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-jobs-job.html#aws-glue-api-jobs-job-Job
-spec get_job_bookmark(aws_client:aws_client(), get_job_bookmark_request()) ->
    {ok, get_job_bookmark_response(), tuple()} |
    {error, any()} |
    {error, get_job_bookmark_errors(), tuple()}.
get_job_bookmark(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_job_bookmark(Client, Input, []).

-spec get_job_bookmark(aws_client:aws_client(), get_job_bookmark_request(), proplists:proplist()) ->
    {ok, get_job_bookmark_response(), tuple()} |
    {error, any()} |
    {error, get_job_bookmark_errors(), tuple()}.
get_job_bookmark(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetJobBookmark">>, Input, Options).

%% @doc Retrieves the metadata for a given job run.
%%
%% Job run history is accessible for 365 days for your workflow and job run.
-spec get_job_run(aws_client:aws_client(), get_job_run_request()) ->
    {ok, get_job_run_response(), tuple()} |
    {error, any()} |
    {error, get_job_run_errors(), tuple()}.
get_job_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_job_run(Client, Input, []).

-spec get_job_run(aws_client:aws_client(), get_job_run_request(), proplists:proplist()) ->
    {ok, get_job_run_response(), tuple()} |
    {error, any()} |
    {error, get_job_run_errors(), tuple()}.
get_job_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetJobRun">>, Input, Options).

%% @doc Retrieves metadata for all runs of a given job definition.
%%
%% `GetJobRuns' returns the job runs in chronological order, with the
%% newest jobs returned first.
-spec get_job_runs(aws_client:aws_client(), get_job_runs_request()) ->
    {ok, get_job_runs_response(), tuple()} |
    {error, any()} |
    {error, get_job_runs_errors(), tuple()}.
get_job_runs(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_job_runs(Client, Input, []).

-spec get_job_runs(aws_client:aws_client(), get_job_runs_request(), proplists:proplist()) ->
    {ok, get_job_runs_response(), tuple()} |
    {error, any()} |
    {error, get_job_runs_errors(), tuple()}.
get_job_runs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetJobRuns">>, Input, Options).

%% @doc Retrieves all current job definitions.
-spec get_jobs(aws_client:aws_client(), get_jobs_request()) ->
    {ok, get_jobs_response(), tuple()} |
    {error, any()} |
    {error, get_jobs_errors(), tuple()}.
get_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_jobs(Client, Input, []).

-spec get_jobs(aws_client:aws_client(), get_jobs_request(), proplists:proplist()) ->
    {ok, get_jobs_response(), tuple()} |
    {error, any()} |
    {error, get_jobs_errors(), tuple()}.
get_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetJobs">>, Input, Options).

%% @doc Creates mappings.
-spec get_mapping(aws_client:aws_client(), get_mapping_request()) ->
    {ok, get_mapping_response(), tuple()} |
    {error, any()} |
    {error, get_mapping_errors(), tuple()}.
get_mapping(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_mapping(Client, Input, []).

-spec get_mapping(aws_client:aws_client(), get_mapping_request(), proplists:proplist()) ->
    {ok, get_mapping_response(), tuple()} |
    {error, any()} |
    {error, get_mapping_errors(), tuple()}.
get_mapping(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMapping">>, Input, Options).

%% @doc Gets details for a specific task run on a machine learning transform.
%%
%% Machine learning
%% task runs are asynchronous tasks that Glue runs on your behalf as part of
%% various machine
%% learning workflows. You can check the stats of any task run by calling
%% `GetMLTaskRun' with the `TaskRunID' and its parent transform's
%% `TransformID'.
-spec get_ml_task_run(aws_client:aws_client(), get_ml_task_run_request()) ->
    {ok, get_ml_task_run_response(), tuple()} |
    {error, any()} |
    {error, get_ml_task_run_errors(), tuple()}.
get_ml_task_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ml_task_run(Client, Input, []).

-spec get_ml_task_run(aws_client:aws_client(), get_ml_task_run_request(), proplists:proplist()) ->
    {ok, get_ml_task_run_response(), tuple()} |
    {error, any()} |
    {error, get_ml_task_run_errors(), tuple()}.
get_ml_task_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMLTaskRun">>, Input, Options).

%% @doc Gets a list of runs for a machine learning transform.
%%
%% Machine learning task runs are
%% asynchronous tasks that Glue runs on your behalf as part of various
%% machine learning
%% workflows. You can get a sortable, filterable list of machine learning
%% task runs by calling
%% `GetMLTaskRuns' with their parent transform's `TransformID'
%% and other
%% optional parameters as documented in this section.
%%
%% This operation returns a list of historic runs and must be paginated.
-spec get_ml_task_runs(aws_client:aws_client(), get_ml_task_runs_request()) ->
    {ok, get_ml_task_runs_response(), tuple()} |
    {error, any()} |
    {error, get_ml_task_runs_errors(), tuple()}.
get_ml_task_runs(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ml_task_runs(Client, Input, []).

-spec get_ml_task_runs(aws_client:aws_client(), get_ml_task_runs_request(), proplists:proplist()) ->
    {ok, get_ml_task_runs_response(), tuple()} |
    {error, any()} |
    {error, get_ml_task_runs_errors(), tuple()}.
get_ml_task_runs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMLTaskRuns">>, Input, Options).

%% @doc Gets an Glue machine learning transform artifact and all its
%% corresponding metadata.
%%
%% Machine learning transforms are a special type of transform that use
%% machine learning to learn
%% the details of the transformation to be performed by learning from
%% examples provided by
%% humans. These transformations are then saved by Glue. You can retrieve
%% their metadata by
%% calling `GetMLTransform'.
-spec get_ml_transform(aws_client:aws_client(), get_ml_transform_request()) ->
    {ok, get_ml_transform_response(), tuple()} |
    {error, any()} |
    {error, get_ml_transform_errors(), tuple()}.
get_ml_transform(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ml_transform(Client, Input, []).

-spec get_ml_transform(aws_client:aws_client(), get_ml_transform_request(), proplists:proplist()) ->
    {ok, get_ml_transform_response(), tuple()} |
    {error, any()} |
    {error, get_ml_transform_errors(), tuple()}.
get_ml_transform(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMLTransform">>, Input, Options).

%% @doc Gets a sortable, filterable list of existing Glue machine learning
%% transforms.
%%
%% Machine
%% learning transforms are a special type of transform that use machine
%% learning to learn the
%% details of the transformation to be performed by learning from examples
%% provided by humans.
%% These transformations are then saved by Glue, and you can retrieve their
%% metadata by
%% calling `GetMLTransforms'.
-spec get_ml_transforms(aws_client:aws_client(), get_ml_transforms_request()) ->
    {ok, get_ml_transforms_response(), tuple()} |
    {error, any()} |
    {error, get_ml_transforms_errors(), tuple()}.
get_ml_transforms(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ml_transforms(Client, Input, []).

-spec get_ml_transforms(aws_client:aws_client(), get_ml_transforms_request(), proplists:proplist()) ->
    {ok, get_ml_transforms_response(), tuple()} |
    {error, any()} |
    {error, get_ml_transforms_errors(), tuple()}.
get_ml_transforms(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMLTransforms">>, Input, Options).

%% @doc Retrieves information about a specified partition.
-spec get_partition(aws_client:aws_client(), get_partition_request()) ->
    {ok, get_partition_response(), tuple()} |
    {error, any()} |
    {error, get_partition_errors(), tuple()}.
get_partition(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_partition(Client, Input, []).

-spec get_partition(aws_client:aws_client(), get_partition_request(), proplists:proplist()) ->
    {ok, get_partition_response(), tuple()} |
    {error, any()} |
    {error, get_partition_errors(), tuple()}.
get_partition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPartition">>, Input, Options).

%% @doc Retrieves the partition indexes associated with a table.
-spec get_partition_indexes(aws_client:aws_client(), get_partition_indexes_request()) ->
    {ok, get_partition_indexes_response(), tuple()} |
    {error, any()} |
    {error, get_partition_indexes_errors(), tuple()}.
get_partition_indexes(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_partition_indexes(Client, Input, []).

-spec get_partition_indexes(aws_client:aws_client(), get_partition_indexes_request(), proplists:proplist()) ->
    {ok, get_partition_indexes_response(), tuple()} |
    {error, any()} |
    {error, get_partition_indexes_errors(), tuple()}.
get_partition_indexes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPartitionIndexes">>, Input, Options).

%% @doc Retrieves information about the partitions in a table.
-spec get_partitions(aws_client:aws_client(), get_partitions_request()) ->
    {ok, get_partitions_response(), tuple()} |
    {error, any()} |
    {error, get_partitions_errors(), tuple()}.
get_partitions(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_partitions(Client, Input, []).

-spec get_partitions(aws_client:aws_client(), get_partitions_request(), proplists:proplist()) ->
    {ok, get_partitions_response(), tuple()} |
    {error, any()} |
    {error, get_partitions_errors(), tuple()}.
get_partitions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPartitions">>, Input, Options).

%% @doc Gets code to perform a specified mapping.
-spec get_plan(aws_client:aws_client(), get_plan_request()) ->
    {ok, get_plan_response(), tuple()} |
    {error, any()} |
    {error, get_plan_errors(), tuple()}.
get_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_plan(Client, Input, []).

-spec get_plan(aws_client:aws_client(), get_plan_request(), proplists:proplist()) ->
    {ok, get_plan_response(), tuple()} |
    {error, any()} |
    {error, get_plan_errors(), tuple()}.
get_plan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPlan">>, Input, Options).

%% @doc Describes the specified registry in detail.
-spec get_registry(aws_client:aws_client(), get_registry_input()) ->
    {ok, get_registry_response(), tuple()} |
    {error, any()} |
    {error, get_registry_errors(), tuple()}.
get_registry(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_registry(Client, Input, []).

-spec get_registry(aws_client:aws_client(), get_registry_input(), proplists:proplist()) ->
    {ok, get_registry_response(), tuple()} |
    {error, any()} |
    {error, get_registry_errors(), tuple()}.
get_registry(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRegistry">>, Input, Options).

%% @doc Retrieves the resource policies set on individual resources by
%% Resource Access Manager
%% during cross-account permission grants.
%%
%% Also retrieves the Data Catalog resource
%% policy.
%%
%% If you enabled metadata encryption in Data Catalog settings, and you do
%% not have
%% permission on the KMS key, the operation can't return the Data Catalog
%% resource
%% policy.
-spec get_resource_policies(aws_client:aws_client(), get_resource_policies_request()) ->
    {ok, get_resource_policies_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policies_errors(), tuple()}.
get_resource_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_policies(Client, Input, []).

-spec get_resource_policies(aws_client:aws_client(), get_resource_policies_request(), proplists:proplist()) ->
    {ok, get_resource_policies_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policies_errors(), tuple()}.
get_resource_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourcePolicies">>, Input, Options).

%% @doc Retrieves a specified resource policy.
-spec get_resource_policy(aws_client:aws_client(), get_resource_policy_request()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_policy(Client, Input, []).

-spec get_resource_policy(aws_client:aws_client(), get_resource_policy_request(), proplists:proplist()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourcePolicy">>, Input, Options).

%% @doc Describes the specified schema in detail.
-spec get_schema(aws_client:aws_client(), get_schema_input()) ->
    {ok, get_schema_response(), tuple()} |
    {error, any()} |
    {error, get_schema_errors(), tuple()}.
get_schema(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_schema(Client, Input, []).

-spec get_schema(aws_client:aws_client(), get_schema_input(), proplists:proplist()) ->
    {ok, get_schema_response(), tuple()} |
    {error, any()} |
    {error, get_schema_errors(), tuple()}.
get_schema(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSchema">>, Input, Options).

%% @doc Retrieves a schema by the `SchemaDefinition'.
%%
%% The schema definition is sent to the Schema Registry, canonicalized, and
%% hashed. If the hash is matched within the scope of the `SchemaName' or
%% ARN (or the default registry, if none is supplied), that schema’s metadata
%% is returned. Otherwise, a 404 or NotFound error is returned. Schema
%% versions in `Deleted' statuses will not be included in the results.
-spec get_schema_by_definition(aws_client:aws_client(), get_schema_by_definition_input()) ->
    {ok, get_schema_by_definition_response(), tuple()} |
    {error, any()} |
    {error, get_schema_by_definition_errors(), tuple()}.
get_schema_by_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_schema_by_definition(Client, Input, []).

-spec get_schema_by_definition(aws_client:aws_client(), get_schema_by_definition_input(), proplists:proplist()) ->
    {ok, get_schema_by_definition_response(), tuple()} |
    {error, any()} |
    {error, get_schema_by_definition_errors(), tuple()}.
get_schema_by_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSchemaByDefinition">>, Input, Options).

%% @doc Get the specified schema by its unique ID assigned when a version of
%% the schema is created or registered.
%%
%% Schema versions in Deleted status will not be included in the results.
-spec get_schema_version(aws_client:aws_client(), get_schema_version_input()) ->
    {ok, get_schema_version_response(), tuple()} |
    {error, any()} |
    {error, get_schema_version_errors(), tuple()}.
get_schema_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_schema_version(Client, Input, []).

-spec get_schema_version(aws_client:aws_client(), get_schema_version_input(), proplists:proplist()) ->
    {ok, get_schema_version_response(), tuple()} |
    {error, any()} |
    {error, get_schema_version_errors(), tuple()}.
get_schema_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSchemaVersion">>, Input, Options).

%% @doc Fetches the schema version difference in the specified difference
%% type between two stored schema versions in the Schema Registry.
%%
%% This API allows you to compare two schema versions between two schema
%% definitions under the same schema.
-spec get_schema_versions_diff(aws_client:aws_client(), get_schema_versions_diff_input()) ->
    {ok, get_schema_versions_diff_response(), tuple()} |
    {error, any()} |
    {error, get_schema_versions_diff_errors(), tuple()}.
get_schema_versions_diff(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_schema_versions_diff(Client, Input, []).

-spec get_schema_versions_diff(aws_client:aws_client(), get_schema_versions_diff_input(), proplists:proplist()) ->
    {ok, get_schema_versions_diff_response(), tuple()} |
    {error, any()} |
    {error, get_schema_versions_diff_errors(), tuple()}.
get_schema_versions_diff(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSchemaVersionsDiff">>, Input, Options).

%% @doc Retrieves a specified security configuration.
-spec get_security_configuration(aws_client:aws_client(), get_security_configuration_request()) ->
    {ok, get_security_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_security_configuration_errors(), tuple()}.
get_security_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_security_configuration(Client, Input, []).

-spec get_security_configuration(aws_client:aws_client(), get_security_configuration_request(), proplists:proplist()) ->
    {ok, get_security_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_security_configuration_errors(), tuple()}.
get_security_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSecurityConfiguration">>, Input, Options).

%% @doc Retrieves a list of all security configurations.
-spec get_security_configurations(aws_client:aws_client(), get_security_configurations_request()) ->
    {ok, get_security_configurations_response(), tuple()} |
    {error, any()} |
    {error, get_security_configurations_errors(), tuple()}.
get_security_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_security_configurations(Client, Input, []).

-spec get_security_configurations(aws_client:aws_client(), get_security_configurations_request(), proplists:proplist()) ->
    {ok, get_security_configurations_response(), tuple()} |
    {error, any()} |
    {error, get_security_configurations_errors(), tuple()}.
get_security_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSecurityConfigurations">>, Input, Options).

%% @doc Retrieves the session.
-spec get_session(aws_client:aws_client(), get_session_request()) ->
    {ok, get_session_response(), tuple()} |
    {error, any()} |
    {error, get_session_errors(), tuple()}.
get_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_session(Client, Input, []).

-spec get_session(aws_client:aws_client(), get_session_request(), proplists:proplist()) ->
    {ok, get_session_response(), tuple()} |
    {error, any()} |
    {error, get_session_errors(), tuple()}.
get_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSession">>, Input, Options).

%% @doc Retrieves the statement.
-spec get_statement(aws_client:aws_client(), get_statement_request()) ->
    {ok, get_statement_response(), tuple()} |
    {error, any()} |
    {error, get_statement_errors(), tuple()}.
get_statement(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_statement(Client, Input, []).

-spec get_statement(aws_client:aws_client(), get_statement_request(), proplists:proplist()) ->
    {ok, get_statement_response(), tuple()} |
    {error, any()} |
    {error, get_statement_errors(), tuple()}.
get_statement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetStatement">>, Input, Options).

%% @doc Retrieves the `Table' definition in a Data Catalog for
%% a specified table.
-spec get_table(aws_client:aws_client(), get_table_request()) ->
    {ok, get_table_response(), tuple()} |
    {error, any()} |
    {error, get_table_errors(), tuple()}.
get_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_table(Client, Input, []).

-spec get_table(aws_client:aws_client(), get_table_request(), proplists:proplist()) ->
    {ok, get_table_response(), tuple()} |
    {error, any()} |
    {error, get_table_errors(), tuple()}.
get_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTable">>, Input, Options).

%% @doc Returns the configuration of all optimizers associated with a
%% specified table.
-spec get_table_optimizer(aws_client:aws_client(), get_table_optimizer_request()) ->
    {ok, get_table_optimizer_response(), tuple()} |
    {error, any()} |
    {error, get_table_optimizer_errors(), tuple()}.
get_table_optimizer(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_table_optimizer(Client, Input, []).

-spec get_table_optimizer(aws_client:aws_client(), get_table_optimizer_request(), proplists:proplist()) ->
    {ok, get_table_optimizer_response(), tuple()} |
    {error, any()} |
    {error, get_table_optimizer_errors(), tuple()}.
get_table_optimizer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTableOptimizer">>, Input, Options).

%% @doc Retrieves a specified version of a table.
-spec get_table_version(aws_client:aws_client(), get_table_version_request()) ->
    {ok, get_table_version_response(), tuple()} |
    {error, any()} |
    {error, get_table_version_errors(), tuple()}.
get_table_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_table_version(Client, Input, []).

-spec get_table_version(aws_client:aws_client(), get_table_version_request(), proplists:proplist()) ->
    {ok, get_table_version_response(), tuple()} |
    {error, any()} |
    {error, get_table_version_errors(), tuple()}.
get_table_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTableVersion">>, Input, Options).

%% @doc Retrieves a list of strings that identify available versions of
%% a specified table.
-spec get_table_versions(aws_client:aws_client(), get_table_versions_request()) ->
    {ok, get_table_versions_response(), tuple()} |
    {error, any()} |
    {error, get_table_versions_errors(), tuple()}.
get_table_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_table_versions(Client, Input, []).

-spec get_table_versions(aws_client:aws_client(), get_table_versions_request(), proplists:proplist()) ->
    {ok, get_table_versions_response(), tuple()} |
    {error, any()} |
    {error, get_table_versions_errors(), tuple()}.
get_table_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTableVersions">>, Input, Options).

%% @doc Retrieves the definitions of some or all of the tables in a given
%% `Database'.
-spec get_tables(aws_client:aws_client(), get_tables_request()) ->
    {ok, get_tables_response(), tuple()} |
    {error, any()} |
    {error, get_tables_errors(), tuple()}.
get_tables(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_tables(Client, Input, []).

-spec get_tables(aws_client:aws_client(), get_tables_request(), proplists:proplist()) ->
    {ok, get_tables_response(), tuple()} |
    {error, any()} |
    {error, get_tables_errors(), tuple()}.
get_tables(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTables">>, Input, Options).

%% @doc Retrieves a list of tags associated with a resource.
-spec get_tags(aws_client:aws_client(), get_tags_request()) ->
    {ok, get_tags_response(), tuple()} |
    {error, any()} |
    {error, get_tags_errors(), tuple()}.
get_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_tags(Client, Input, []).

-spec get_tags(aws_client:aws_client(), get_tags_request(), proplists:proplist()) ->
    {ok, get_tags_response(), tuple()} |
    {error, any()} |
    {error, get_tags_errors(), tuple()}.
get_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTags">>, Input, Options).

%% @doc Retrieves the definition of a trigger.
-spec get_trigger(aws_client:aws_client(), get_trigger_request()) ->
    {ok, get_trigger_response(), tuple()} |
    {error, any()} |
    {error, get_trigger_errors(), tuple()}.
get_trigger(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_trigger(Client, Input, []).

-spec get_trigger(aws_client:aws_client(), get_trigger_request(), proplists:proplist()) ->
    {ok, get_trigger_response(), tuple()} |
    {error, any()} |
    {error, get_trigger_errors(), tuple()}.
get_trigger(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTrigger">>, Input, Options).

%% @doc Gets all the triggers associated with a job.
-spec get_triggers(aws_client:aws_client(), get_triggers_request()) ->
    {ok, get_triggers_response(), tuple()} |
    {error, any()} |
    {error, get_triggers_errors(), tuple()}.
get_triggers(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_triggers(Client, Input, []).

-spec get_triggers(aws_client:aws_client(), get_triggers_request(), proplists:proplist()) ->
    {ok, get_triggers_response(), tuple()} |
    {error, any()} |
    {error, get_triggers_errors(), tuple()}.
get_triggers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTriggers">>, Input, Options).

%% @doc Retrieves partition metadata from the Data Catalog that contains
%% unfiltered
%% metadata.
%%
%% For IAM authorization, the public IAM action associated with this API is
%% `glue:GetPartition'.
-spec get_unfiltered_partition_metadata(aws_client:aws_client(), get_unfiltered_partition_metadata_request()) ->
    {ok, get_unfiltered_partition_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_unfiltered_partition_metadata_errors(), tuple()}.
get_unfiltered_partition_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_unfiltered_partition_metadata(Client, Input, []).

-spec get_unfiltered_partition_metadata(aws_client:aws_client(), get_unfiltered_partition_metadata_request(), proplists:proplist()) ->
    {ok, get_unfiltered_partition_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_unfiltered_partition_metadata_errors(), tuple()}.
get_unfiltered_partition_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUnfilteredPartitionMetadata">>, Input, Options).

%% @doc Retrieves partition metadata from the Data Catalog that contains
%% unfiltered
%% metadata.
%%
%% For IAM authorization, the public IAM action associated with this API is
%% `glue:GetPartitions'.
-spec get_unfiltered_partitions_metadata(aws_client:aws_client(), get_unfiltered_partitions_metadata_request()) ->
    {ok, get_unfiltered_partitions_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_unfiltered_partitions_metadata_errors(), tuple()}.
get_unfiltered_partitions_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_unfiltered_partitions_metadata(Client, Input, []).

-spec get_unfiltered_partitions_metadata(aws_client:aws_client(), get_unfiltered_partitions_metadata_request(), proplists:proplist()) ->
    {ok, get_unfiltered_partitions_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_unfiltered_partitions_metadata_errors(), tuple()}.
get_unfiltered_partitions_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUnfilteredPartitionsMetadata">>, Input, Options).

%% @doc Allows a third-party analytical engine to retrieve unfiltered table
%% metadata from the Data Catalog.
%%
%% For IAM authorization, the public IAM action associated with this API is
%% `glue:GetTable'.
-spec get_unfiltered_table_metadata(aws_client:aws_client(), get_unfiltered_table_metadata_request()) ->
    {ok, get_unfiltered_table_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_unfiltered_table_metadata_errors(), tuple()}.
get_unfiltered_table_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_unfiltered_table_metadata(Client, Input, []).

-spec get_unfiltered_table_metadata(aws_client:aws_client(), get_unfiltered_table_metadata_request(), proplists:proplist()) ->
    {ok, get_unfiltered_table_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_unfiltered_table_metadata_errors(), tuple()}.
get_unfiltered_table_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUnfilteredTableMetadata">>, Input, Options).

%% @doc Retrieves information about the specified Glue usage profile.
-spec get_usage_profile(aws_client:aws_client(), get_usage_profile_request()) ->
    {ok, get_usage_profile_response(), tuple()} |
    {error, any()} |
    {error, get_usage_profile_errors(), tuple()}.
get_usage_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_usage_profile(Client, Input, []).

-spec get_usage_profile(aws_client:aws_client(), get_usage_profile_request(), proplists:proplist()) ->
    {ok, get_usage_profile_response(), tuple()} |
    {error, any()} |
    {error, get_usage_profile_errors(), tuple()}.
get_usage_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUsageProfile">>, Input, Options).

%% @doc Retrieves a specified function definition from the Data Catalog.
-spec get_user_defined_function(aws_client:aws_client(), get_user_defined_function_request()) ->
    {ok, get_user_defined_function_response(), tuple()} |
    {error, any()} |
    {error, get_user_defined_function_errors(), tuple()}.
get_user_defined_function(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_user_defined_function(Client, Input, []).

-spec get_user_defined_function(aws_client:aws_client(), get_user_defined_function_request(), proplists:proplist()) ->
    {ok, get_user_defined_function_response(), tuple()} |
    {error, any()} |
    {error, get_user_defined_function_errors(), tuple()}.
get_user_defined_function(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUserDefinedFunction">>, Input, Options).

%% @doc Retrieves multiple function definitions from the Data Catalog.
-spec get_user_defined_functions(aws_client:aws_client(), get_user_defined_functions_request()) ->
    {ok, get_user_defined_functions_response(), tuple()} |
    {error, any()} |
    {error, get_user_defined_functions_errors(), tuple()}.
get_user_defined_functions(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_user_defined_functions(Client, Input, []).

-spec get_user_defined_functions(aws_client:aws_client(), get_user_defined_functions_request(), proplists:proplist()) ->
    {ok, get_user_defined_functions_response(), tuple()} |
    {error, any()} |
    {error, get_user_defined_functions_errors(), tuple()}.
get_user_defined_functions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUserDefinedFunctions">>, Input, Options).

%% @doc Retrieves resource metadata for a workflow.
-spec get_workflow(aws_client:aws_client(), get_workflow_request()) ->
    {ok, get_workflow_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_errors(), tuple()}.
get_workflow(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_workflow(Client, Input, []).

-spec get_workflow(aws_client:aws_client(), get_workflow_request(), proplists:proplist()) ->
    {ok, get_workflow_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_errors(), tuple()}.
get_workflow(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetWorkflow">>, Input, Options).

%% @doc Retrieves the metadata for a given workflow run.
%%
%% Job run history is accessible for 90 days for your workflow and job run.
-spec get_workflow_run(aws_client:aws_client(), get_workflow_run_request()) ->
    {ok, get_workflow_run_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_run_errors(), tuple()}.
get_workflow_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_workflow_run(Client, Input, []).

-spec get_workflow_run(aws_client:aws_client(), get_workflow_run_request(), proplists:proplist()) ->
    {ok, get_workflow_run_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_run_errors(), tuple()}.
get_workflow_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetWorkflowRun">>, Input, Options).

%% @doc Retrieves the workflow run properties which were set during the run.
-spec get_workflow_run_properties(aws_client:aws_client(), get_workflow_run_properties_request()) ->
    {ok, get_workflow_run_properties_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_run_properties_errors(), tuple()}.
get_workflow_run_properties(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_workflow_run_properties(Client, Input, []).

-spec get_workflow_run_properties(aws_client:aws_client(), get_workflow_run_properties_request(), proplists:proplist()) ->
    {ok, get_workflow_run_properties_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_run_properties_errors(), tuple()}.
get_workflow_run_properties(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetWorkflowRunProperties">>, Input, Options).

%% @doc Retrieves metadata for all runs of a given workflow.
-spec get_workflow_runs(aws_client:aws_client(), get_workflow_runs_request()) ->
    {ok, get_workflow_runs_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_runs_errors(), tuple()}.
get_workflow_runs(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_workflow_runs(Client, Input, []).

-spec get_workflow_runs(aws_client:aws_client(), get_workflow_runs_request(), proplists:proplist()) ->
    {ok, get_workflow_runs_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_runs_errors(), tuple()}.
get_workflow_runs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetWorkflowRuns">>, Input, Options).

%% @doc Imports an existing Amazon Athena Data Catalog to Glue.
-spec import_catalog_to_glue(aws_client:aws_client(), import_catalog_to_glue_request()) ->
    {ok, import_catalog_to_glue_response(), tuple()} |
    {error, any()} |
    {error, import_catalog_to_glue_errors(), tuple()}.
import_catalog_to_glue(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_catalog_to_glue(Client, Input, []).

-spec import_catalog_to_glue(aws_client:aws_client(), import_catalog_to_glue_request(), proplists:proplist()) ->
    {ok, import_catalog_to_glue_response(), tuple()} |
    {error, any()} |
    {error, import_catalog_to_glue_errors(), tuple()}.
import_catalog_to_glue(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportCatalogToGlue">>, Input, Options).

%% @doc Lists all the blueprint names in an account.
-spec list_blueprints(aws_client:aws_client(), list_blueprints_request()) ->
    {ok, list_blueprints_response(), tuple()} |
    {error, any()} |
    {error, list_blueprints_errors(), tuple()}.
list_blueprints(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_blueprints(Client, Input, []).

-spec list_blueprints(aws_client:aws_client(), list_blueprints_request(), proplists:proplist()) ->
    {ok, list_blueprints_response(), tuple()} |
    {error, any()} |
    {error, list_blueprints_errors(), tuple()}.
list_blueprints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBlueprints">>, Input, Options).

%% @doc List all task runs for a particular account.
-spec list_column_statistics_task_runs(aws_client:aws_client(), list_column_statistics_task_runs_request()) ->
    {ok, list_column_statistics_task_runs_response(), tuple()} |
    {error, any()} |
    {error, list_column_statistics_task_runs_errors(), tuple()}.
list_column_statistics_task_runs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_column_statistics_task_runs(Client, Input, []).

-spec list_column_statistics_task_runs(aws_client:aws_client(), list_column_statistics_task_runs_request(), proplists:proplist()) ->
    {ok, list_column_statistics_task_runs_response(), tuple()} |
    {error, any()} |
    {error, list_column_statistics_task_runs_errors(), tuple()}.
list_column_statistics_task_runs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListColumnStatisticsTaskRuns">>, Input, Options).

%% @doc The `ListConnectionTypes' API provides a discovery mechanism to
%% learn available connection types in Glue.
%%
%% The response contains a list of connection types with high-level details
%% of what is supported for each connection type. The connection types listed
%% are the set of supported options for the `ConnectionType' value in the
%% `CreateConnection' API.
-spec list_connection_types(aws_client:aws_client(), list_connection_types_request()) ->
    {ok, list_connection_types_response(), tuple()} |
    {error, any()} |
    {error, list_connection_types_errors(), tuple()}.
list_connection_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_connection_types(Client, Input, []).

-spec list_connection_types(aws_client:aws_client(), list_connection_types_request(), proplists:proplist()) ->
    {ok, list_connection_types_response(), tuple()} |
    {error, any()} |
    {error, list_connection_types_errors(), tuple()}.
list_connection_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListConnectionTypes">>, Input, Options).

%% @doc Retrieves the names of all crawler resources in this Amazon Web
%% Services account, or the
%% resources with the specified tag.
%%
%% This operation allows you to see which
%% resources are available in your account, and their names.
%%
%% This operation takes the optional `Tags' field, which you can use as a
%% filter on
%% the response so that tagged resources can be retrieved as a group. If you
%% choose to use tags
%% filtering, only resources with the tag are retrieved.
-spec list_crawlers(aws_client:aws_client(), list_crawlers_request()) ->
    {ok, list_crawlers_response(), tuple()} |
    {error, any()} |
    {error, list_crawlers_errors(), tuple()}.
list_crawlers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_crawlers(Client, Input, []).

-spec list_crawlers(aws_client:aws_client(), list_crawlers_request(), proplists:proplist()) ->
    {ok, list_crawlers_response(), tuple()} |
    {error, any()} |
    {error, list_crawlers_errors(), tuple()}.
list_crawlers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCrawlers">>, Input, Options).

%% @doc Returns all the crawls of a specified crawler.
%%
%% Returns only the crawls that have occurred since the launch date of the
%% crawler history feature, and only retains up to 12 months of crawls. Older
%% crawls will not be returned.
%%
%% You may use this API to:
%%
%% Retrive all the crawls of a specified crawler.
%%
%% Retrieve all the crawls of a specified crawler within a limited count.
%%
%% Retrieve all the crawls of a specified crawler in a specific time range.
%%
%% Retrieve all the crawls of a specified crawler with a particular state,
%% crawl ID, or DPU hour value.
-spec list_crawls(aws_client:aws_client(), list_crawls_request()) ->
    {ok, list_crawls_response(), tuple()} |
    {error, any()} |
    {error, list_crawls_errors(), tuple()}.
list_crawls(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_crawls(Client, Input, []).

-spec list_crawls(aws_client:aws_client(), list_crawls_request(), proplists:proplist()) ->
    {ok, list_crawls_response(), tuple()} |
    {error, any()} |
    {error, list_crawls_errors(), tuple()}.
list_crawls(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCrawls">>, Input, Options).

%% @doc Lists all the custom patterns that have been created.
-spec list_custom_entity_types(aws_client:aws_client(), list_custom_entity_types_request()) ->
    {ok, list_custom_entity_types_response(), tuple()} |
    {error, any()} |
    {error, list_custom_entity_types_errors(), tuple()}.
list_custom_entity_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_custom_entity_types(Client, Input, []).

-spec list_custom_entity_types(aws_client:aws_client(), list_custom_entity_types_request(), proplists:proplist()) ->
    {ok, list_custom_entity_types_response(), tuple()} |
    {error, any()} |
    {error, list_custom_entity_types_errors(), tuple()}.
list_custom_entity_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCustomEntityTypes">>, Input, Options).

%% @doc Returns all data quality execution results for your account.
-spec list_data_quality_results(aws_client:aws_client(), list_data_quality_results_request()) ->
    {ok, list_data_quality_results_response(), tuple()} |
    {error, any()} |
    {error, list_data_quality_results_errors(), tuple()}.
list_data_quality_results(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_data_quality_results(Client, Input, []).

-spec list_data_quality_results(aws_client:aws_client(), list_data_quality_results_request(), proplists:proplist()) ->
    {ok, list_data_quality_results_response(), tuple()} |
    {error, any()} |
    {error, list_data_quality_results_errors(), tuple()}.
list_data_quality_results(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDataQualityResults">>, Input, Options).

%% @doc Lists the recommendation runs meeting the filter criteria.
-spec list_data_quality_rule_recommendation_runs(aws_client:aws_client(), list_data_quality_rule_recommendation_runs_request()) ->
    {ok, list_data_quality_rule_recommendation_runs_response(), tuple()} |
    {error, any()} |
    {error, list_data_quality_rule_recommendation_runs_errors(), tuple()}.
list_data_quality_rule_recommendation_runs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_data_quality_rule_recommendation_runs(Client, Input, []).

-spec list_data_quality_rule_recommendation_runs(aws_client:aws_client(), list_data_quality_rule_recommendation_runs_request(), proplists:proplist()) ->
    {ok, list_data_quality_rule_recommendation_runs_response(), tuple()} |
    {error, any()} |
    {error, list_data_quality_rule_recommendation_runs_errors(), tuple()}.
list_data_quality_rule_recommendation_runs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDataQualityRuleRecommendationRuns">>, Input, Options).

%% @doc Lists all the runs meeting the filter criteria, where a ruleset is
%% evaluated against a data source.
-spec list_data_quality_ruleset_evaluation_runs(aws_client:aws_client(), list_data_quality_ruleset_evaluation_runs_request()) ->
    {ok, list_data_quality_ruleset_evaluation_runs_response(), tuple()} |
    {error, any()} |
    {error, list_data_quality_ruleset_evaluation_runs_errors(), tuple()}.
list_data_quality_ruleset_evaluation_runs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_data_quality_ruleset_evaluation_runs(Client, Input, []).

-spec list_data_quality_ruleset_evaluation_runs(aws_client:aws_client(), list_data_quality_ruleset_evaluation_runs_request(), proplists:proplist()) ->
    {ok, list_data_quality_ruleset_evaluation_runs_response(), tuple()} |
    {error, any()} |
    {error, list_data_quality_ruleset_evaluation_runs_errors(), tuple()}.
list_data_quality_ruleset_evaluation_runs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDataQualityRulesetEvaluationRuns">>, Input, Options).

%% @doc Returns a paginated list of rulesets for the specified list of Glue
%% tables.
-spec list_data_quality_rulesets(aws_client:aws_client(), list_data_quality_rulesets_request()) ->
    {ok, list_data_quality_rulesets_response(), tuple()} |
    {error, any()} |
    {error, list_data_quality_rulesets_errors(), tuple()}.
list_data_quality_rulesets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_data_quality_rulesets(Client, Input, []).

-spec list_data_quality_rulesets(aws_client:aws_client(), list_data_quality_rulesets_request(), proplists:proplist()) ->
    {ok, list_data_quality_rulesets_response(), tuple()} |
    {error, any()} |
    {error, list_data_quality_rulesets_errors(), tuple()}.
list_data_quality_rulesets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDataQualityRulesets">>, Input, Options).

%% @doc Retrieve annotations for a data quality statistic.
-spec list_data_quality_statistic_annotations(aws_client:aws_client(), list_data_quality_statistic_annotations_request()) ->
    {ok, list_data_quality_statistic_annotations_response(), tuple()} |
    {error, any()} |
    {error, list_data_quality_statistic_annotations_errors(), tuple()}.
list_data_quality_statistic_annotations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_data_quality_statistic_annotations(Client, Input, []).

-spec list_data_quality_statistic_annotations(aws_client:aws_client(), list_data_quality_statistic_annotations_request(), proplists:proplist()) ->
    {ok, list_data_quality_statistic_annotations_response(), tuple()} |
    {error, any()} |
    {error, list_data_quality_statistic_annotations_errors(), tuple()}.
list_data_quality_statistic_annotations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDataQualityStatisticAnnotations">>, Input, Options).

%% @doc Retrieves a list of data quality statistics.
-spec list_data_quality_statistics(aws_client:aws_client(), list_data_quality_statistics_request()) ->
    {ok, list_data_quality_statistics_response(), tuple()} |
    {error, any()} |
    {error, list_data_quality_statistics_errors(), tuple()}.
list_data_quality_statistics(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_data_quality_statistics(Client, Input, []).

-spec list_data_quality_statistics(aws_client:aws_client(), list_data_quality_statistics_request(), proplists:proplist()) ->
    {ok, list_data_quality_statistics_response(), tuple()} |
    {error, any()} |
    {error, list_data_quality_statistics_errors(), tuple()}.
list_data_quality_statistics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDataQualityStatistics">>, Input, Options).

%% @doc Retrieves the names of all `DevEndpoint' resources in this Amazon
%% Web Services account, or the
%% resources with the specified tag.
%%
%% This operation allows you to see which resources are
%% available in your account, and their names.
%%
%% This operation takes the optional `Tags' field, which you can use as a
%% filter on
%% the response so that tagged resources can be retrieved as a group. If you
%% choose to use tags
%% filtering, only resources with the tag are retrieved.
-spec list_dev_endpoints(aws_client:aws_client(), list_dev_endpoints_request()) ->
    {ok, list_dev_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_dev_endpoints_errors(), tuple()}.
list_dev_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_dev_endpoints(Client, Input, []).

-spec list_dev_endpoints(aws_client:aws_client(), list_dev_endpoints_request(), proplists:proplist()) ->
    {ok, list_dev_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_dev_endpoints_errors(), tuple()}.
list_dev_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDevEndpoints">>, Input, Options).

%% @doc Returns the available entities supported by the connection type.
-spec list_entities(aws_client:aws_client(), list_entities_request()) ->
    {ok, list_entities_response(), tuple()} |
    {error, any()} |
    {error, list_entities_errors(), tuple()}.
list_entities(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_entities(Client, Input, []).

-spec list_entities(aws_client:aws_client(), list_entities_request(), proplists:proplist()) ->
    {ok, list_entities_response(), tuple()} |
    {error, any()} |
    {error, list_entities_errors(), tuple()}.
list_entities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEntities">>, Input, Options).

%% @doc Retrieves the names of all job resources in this Amazon Web Services
%% account, or the resources with the specified tag.
%%
%% This operation allows you to see which resources are available in your
%% account, and their names.
%%
%% This operation takes the optional `Tags' field, which you can use as a
%% filter on
%% the response so that tagged resources can be retrieved as a group. If you
%% choose to use tags
%% filtering, only resources with the tag are retrieved.
-spec list_jobs(aws_client:aws_client(), list_jobs_request()) ->
    {ok, list_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_jobs(Client, Input, []).

-spec list_jobs(aws_client:aws_client(), list_jobs_request(), proplists:proplist()) ->
    {ok, list_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListJobs">>, Input, Options).

%% @doc Retrieves a sortable, filterable list of existing Glue machine
%% learning transforms in this Amazon Web Services account,
%% or the resources with the specified tag.
%%
%% This operation takes the optional `Tags' field, which you can use as
%% a filter of the responses so that tagged resources can be retrieved as a
%% group. If you choose to use tag
%% filtering, only resources with the tags are retrieved.
-spec list_ml_transforms(aws_client:aws_client(), list_ml_transforms_request()) ->
    {ok, list_ml_transforms_response(), tuple()} |
    {error, any()} |
    {error, list_ml_transforms_errors(), tuple()}.
list_ml_transforms(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_ml_transforms(Client, Input, []).

-spec list_ml_transforms(aws_client:aws_client(), list_ml_transforms_request(), proplists:proplist()) ->
    {ok, list_ml_transforms_response(), tuple()} |
    {error, any()} |
    {error, list_ml_transforms_errors(), tuple()}.
list_ml_transforms(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMLTransforms">>, Input, Options).

%% @doc Returns a list of registries that you have created, with minimal
%% registry information.
%%
%% Registries in the `Deleting' status will not be included in the
%% results. Empty results will be returned if there are no registries
%% available.
-spec list_registries(aws_client:aws_client(), list_registries_input()) ->
    {ok, list_registries_response(), tuple()} |
    {error, any()} |
    {error, list_registries_errors(), tuple()}.
list_registries(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_registries(Client, Input, []).

-spec list_registries(aws_client:aws_client(), list_registries_input(), proplists:proplist()) ->
    {ok, list_registries_response(), tuple()} |
    {error, any()} |
    {error, list_registries_errors(), tuple()}.
list_registries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRegistries">>, Input, Options).

%% @doc Returns a list of schema versions that you have created, with minimal
%% information.
%%
%% Schema versions in Deleted status will not be included in the results.
%% Empty results will be returned if there are no schema versions available.
-spec list_schema_versions(aws_client:aws_client(), list_schema_versions_input()) ->
    {ok, list_schema_versions_response(), tuple()} |
    {error, any()} |
    {error, list_schema_versions_errors(), tuple()}.
list_schema_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_schema_versions(Client, Input, []).

-spec list_schema_versions(aws_client:aws_client(), list_schema_versions_input(), proplists:proplist()) ->
    {ok, list_schema_versions_response(), tuple()} |
    {error, any()} |
    {error, list_schema_versions_errors(), tuple()}.
list_schema_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSchemaVersions">>, Input, Options).

%% @doc Returns a list of schemas with minimal details.
%%
%% Schemas in Deleting status will not be included in the results. Empty
%% results will be returned if there are no schemas available.
%%
%% When the `RegistryId' is not provided, all the schemas across
%% registries will be part of the API response.
-spec list_schemas(aws_client:aws_client(), list_schemas_input()) ->
    {ok, list_schemas_response(), tuple()} |
    {error, any()} |
    {error, list_schemas_errors(), tuple()}.
list_schemas(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_schemas(Client, Input, []).

-spec list_schemas(aws_client:aws_client(), list_schemas_input(), proplists:proplist()) ->
    {ok, list_schemas_response(), tuple()} |
    {error, any()} |
    {error, list_schemas_errors(), tuple()}.
list_schemas(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSchemas">>, Input, Options).

%% @doc Retrieve a list of sessions.
-spec list_sessions(aws_client:aws_client(), list_sessions_request()) ->
    {ok, list_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_sessions_errors(), tuple()}.
list_sessions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_sessions(Client, Input, []).

-spec list_sessions(aws_client:aws_client(), list_sessions_request(), proplists:proplist()) ->
    {ok, list_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_sessions_errors(), tuple()}.
list_sessions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSessions">>, Input, Options).

%% @doc Lists statements for the session.
-spec list_statements(aws_client:aws_client(), list_statements_request()) ->
    {ok, list_statements_response(), tuple()} |
    {error, any()} |
    {error, list_statements_errors(), tuple()}.
list_statements(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_statements(Client, Input, []).

-spec list_statements(aws_client:aws_client(), list_statements_request(), proplists:proplist()) ->
    {ok, list_statements_response(), tuple()} |
    {error, any()} |
    {error, list_statements_errors(), tuple()}.
list_statements(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStatements">>, Input, Options).

%% @doc Lists the history of previous optimizer runs for a specific table.
-spec list_table_optimizer_runs(aws_client:aws_client(), list_table_optimizer_runs_request()) ->
    {ok, list_table_optimizer_runs_response(), tuple()} |
    {error, any()} |
    {error, list_table_optimizer_runs_errors(), tuple()}.
list_table_optimizer_runs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_table_optimizer_runs(Client, Input, []).

-spec list_table_optimizer_runs(aws_client:aws_client(), list_table_optimizer_runs_request(), proplists:proplist()) ->
    {ok, list_table_optimizer_runs_response(), tuple()} |
    {error, any()} |
    {error, list_table_optimizer_runs_errors(), tuple()}.
list_table_optimizer_runs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTableOptimizerRuns">>, Input, Options).

%% @doc Retrieves the names of all trigger resources in this Amazon Web
%% Services account, or the resources with the specified tag.
%%
%% This operation allows you to see which resources are available in your
%% account, and their names.
%%
%% This operation takes the optional `Tags' field, which you can use as a
%% filter on
%% the response so that tagged resources can be retrieved as a group. If you
%% choose to use tags
%% filtering, only resources with the tag are retrieved.
-spec list_triggers(aws_client:aws_client(), list_triggers_request()) ->
    {ok, list_triggers_response(), tuple()} |
    {error, any()} |
    {error, list_triggers_errors(), tuple()}.
list_triggers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_triggers(Client, Input, []).

-spec list_triggers(aws_client:aws_client(), list_triggers_request(), proplists:proplist()) ->
    {ok, list_triggers_response(), tuple()} |
    {error, any()} |
    {error, list_triggers_errors(), tuple()}.
list_triggers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTriggers">>, Input, Options).

%% @doc List all the Glue usage profiles.
-spec list_usage_profiles(aws_client:aws_client(), list_usage_profiles_request()) ->
    {ok, list_usage_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_usage_profiles_errors(), tuple()}.
list_usage_profiles(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_usage_profiles(Client, Input, []).

-spec list_usage_profiles(aws_client:aws_client(), list_usage_profiles_request(), proplists:proplist()) ->
    {ok, list_usage_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_usage_profiles_errors(), tuple()}.
list_usage_profiles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUsageProfiles">>, Input, Options).

%% @doc Lists names of workflows created in the account.
-spec list_workflows(aws_client:aws_client(), list_workflows_request()) ->
    {ok, list_workflows_response(), tuple()} |
    {error, any()} |
    {error, list_workflows_errors(), tuple()}.
list_workflows(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_workflows(Client, Input, []).

-spec list_workflows(aws_client:aws_client(), list_workflows_request(), proplists:proplist()) ->
    {ok, list_workflows_response(), tuple()} |
    {error, any()} |
    {error, list_workflows_errors(), tuple()}.
list_workflows(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWorkflows">>, Input, Options).

%% @doc Modifies a Zero-ETL integration in the caller's account.
-spec modify_integration(aws_client:aws_client(), modify_integration_request()) ->
    {ok, modify_integration_response(), tuple()} |
    {error, any()} |
    {error, modify_integration_errors(), tuple()}.
modify_integration(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_integration(Client, Input, []).

-spec modify_integration(aws_client:aws_client(), modify_integration_request(), proplists:proplist()) ->
    {ok, modify_integration_response(), tuple()} |
    {error, any()} |
    {error, modify_integration_errors(), tuple()}.
modify_integration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyIntegration">>, Input, Options).

%% @doc Sets the security configuration for a specified catalog.
%%
%% After the configuration has been
%% set, the specified encryption is applied to every catalog write
%% thereafter.
-spec put_data_catalog_encryption_settings(aws_client:aws_client(), put_data_catalog_encryption_settings_request()) ->
    {ok, put_data_catalog_encryption_settings_response(), tuple()} |
    {error, any()} |
    {error, put_data_catalog_encryption_settings_errors(), tuple()}.
put_data_catalog_encryption_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_data_catalog_encryption_settings(Client, Input, []).

-spec put_data_catalog_encryption_settings(aws_client:aws_client(), put_data_catalog_encryption_settings_request(), proplists:proplist()) ->
    {ok, put_data_catalog_encryption_settings_response(), tuple()} |
    {error, any()} |
    {error, put_data_catalog_encryption_settings_errors(), tuple()}.
put_data_catalog_encryption_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutDataCatalogEncryptionSettings">>, Input, Options).

%% @doc Annotate all datapoints for a Profile.
-spec put_data_quality_profile_annotation(aws_client:aws_client(), put_data_quality_profile_annotation_request()) ->
    {ok, put_data_quality_profile_annotation_response(), tuple()} |
    {error, any()} |
    {error, put_data_quality_profile_annotation_errors(), tuple()}.
put_data_quality_profile_annotation(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_data_quality_profile_annotation(Client, Input, []).

-spec put_data_quality_profile_annotation(aws_client:aws_client(), put_data_quality_profile_annotation_request(), proplists:proplist()) ->
    {ok, put_data_quality_profile_annotation_response(), tuple()} |
    {error, any()} |
    {error, put_data_quality_profile_annotation_errors(), tuple()}.
put_data_quality_profile_annotation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutDataQualityProfileAnnotation">>, Input, Options).

%% @doc Sets the Data Catalog resource policy for access control.
-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_request()) ->
    {ok, put_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resource_policy(Client, Input, []).

-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_request(), proplists:proplist()) ->
    {ok, put_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResourcePolicy">>, Input, Options).

%% @doc Puts the metadata key value pair for a specified schema version ID.
%%
%% A maximum of 10 key value pairs will be allowed per schema version. They
%% can be added over one or more calls.
-spec put_schema_version_metadata(aws_client:aws_client(), put_schema_version_metadata_input()) ->
    {ok, put_schema_version_metadata_response(), tuple()} |
    {error, any()} |
    {error, put_schema_version_metadata_errors(), tuple()}.
put_schema_version_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_schema_version_metadata(Client, Input, []).

-spec put_schema_version_metadata(aws_client:aws_client(), put_schema_version_metadata_input(), proplists:proplist()) ->
    {ok, put_schema_version_metadata_response(), tuple()} |
    {error, any()} |
    {error, put_schema_version_metadata_errors(), tuple()}.
put_schema_version_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutSchemaVersionMetadata">>, Input, Options).

%% @doc Puts the specified workflow run properties for the given workflow
%% run.
%%
%% If a property already exists for the specified run, then it overrides the
%% value otherwise adds the property to existing properties.
-spec put_workflow_run_properties(aws_client:aws_client(), put_workflow_run_properties_request()) ->
    {ok, put_workflow_run_properties_response(), tuple()} |
    {error, any()} |
    {error, put_workflow_run_properties_errors(), tuple()}.
put_workflow_run_properties(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_workflow_run_properties(Client, Input, []).

-spec put_workflow_run_properties(aws_client:aws_client(), put_workflow_run_properties_request(), proplists:proplist()) ->
    {ok, put_workflow_run_properties_response(), tuple()} |
    {error, any()} |
    {error, put_workflow_run_properties_errors(), tuple()}.
put_workflow_run_properties(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutWorkflowRunProperties">>, Input, Options).

%% @doc Queries for the schema version metadata information.
-spec query_schema_version_metadata(aws_client:aws_client(), query_schema_version_metadata_input()) ->
    {ok, query_schema_version_metadata_response(), tuple()} |
    {error, any()} |
    {error, query_schema_version_metadata_errors(), tuple()}.
query_schema_version_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    query_schema_version_metadata(Client, Input, []).

-spec query_schema_version_metadata(aws_client:aws_client(), query_schema_version_metadata_input(), proplists:proplist()) ->
    {ok, query_schema_version_metadata_response(), tuple()} |
    {error, any()} |
    {error, query_schema_version_metadata_errors(), tuple()}.
query_schema_version_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"QuerySchemaVersionMetadata">>, Input, Options).

%% @doc Adds a new version to the existing schema.
%%
%% Returns an error if new version of schema does not meet the compatibility
%% requirements of the schema set. This API will not create a new schema set
%% and will return a 404 error if the schema set is not already present in
%% the Schema Registry.
%%
%% If this is the first schema definition to be registered in the Schema
%% Registry, this API will store the schema version and return immediately.
%% Otherwise, this call has the potential to run longer than other operations
%% due to compatibility modes. You can call the `GetSchemaVersion' API
%% with the `SchemaVersionId' to check compatibility modes.
%%
%% If the same schema definition is already stored in Schema Registry as a
%% version, the schema ID of the existing schema is returned to the caller.
-spec register_schema_version(aws_client:aws_client(), register_schema_version_input()) ->
    {ok, register_schema_version_response(), tuple()} |
    {error, any()} |
    {error, register_schema_version_errors(), tuple()}.
register_schema_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_schema_version(Client, Input, []).

-spec register_schema_version(aws_client:aws_client(), register_schema_version_input(), proplists:proplist()) ->
    {ok, register_schema_version_response(), tuple()} |
    {error, any()} |
    {error, register_schema_version_errors(), tuple()}.
register_schema_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterSchemaVersion">>, Input, Options).

%% @doc Removes a key value pair from the schema version metadata for the
%% specified schema version ID.
-spec remove_schema_version_metadata(aws_client:aws_client(), remove_schema_version_metadata_input()) ->
    {ok, remove_schema_version_metadata_response(), tuple()} |
    {error, any()} |
    {error, remove_schema_version_metadata_errors(), tuple()}.
remove_schema_version_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_schema_version_metadata(Client, Input, []).

-spec remove_schema_version_metadata(aws_client:aws_client(), remove_schema_version_metadata_input(), proplists:proplist()) ->
    {ok, remove_schema_version_metadata_response(), tuple()} |
    {error, any()} |
    {error, remove_schema_version_metadata_errors(), tuple()}.
remove_schema_version_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveSchemaVersionMetadata">>, Input, Options).

%% @doc Resets a bookmark entry.
%%
%% For more information about enabling and using job bookmarks, see:
%%
%% Tracking processed data using job bookmarks:
%% https://docs.aws.amazon.com/glue/latest/dg/monitor-continuations.html
%%
%% Job parameters used by Glue:
%% https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html
%%
%% Job structure:
%% https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-jobs-job.html#aws-glue-api-jobs-job-Job
-spec reset_job_bookmark(aws_client:aws_client(), reset_job_bookmark_request()) ->
    {ok, reset_job_bookmark_response(), tuple()} |
    {error, any()} |
    {error, reset_job_bookmark_errors(), tuple()}.
reset_job_bookmark(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_job_bookmark(Client, Input, []).

-spec reset_job_bookmark(aws_client:aws_client(), reset_job_bookmark_request(), proplists:proplist()) ->
    {ok, reset_job_bookmark_response(), tuple()} |
    {error, any()} |
    {error, reset_job_bookmark_errors(), tuple()}.
reset_job_bookmark(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetJobBookmark">>, Input, Options).

%% @doc Restarts selected nodes of a previous partially completed workflow
%% run and resumes the workflow run.
%%
%% The selected nodes and all nodes that are downstream from the selected
%% nodes are run.
-spec resume_workflow_run(aws_client:aws_client(), resume_workflow_run_request()) ->
    {ok, resume_workflow_run_response(), tuple()} |
    {error, any()} |
    {error, resume_workflow_run_errors(), tuple()}.
resume_workflow_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    resume_workflow_run(Client, Input, []).

-spec resume_workflow_run(aws_client:aws_client(), resume_workflow_run_request(), proplists:proplist()) ->
    {ok, resume_workflow_run_response(), tuple()} |
    {error, any()} |
    {error, resume_workflow_run_errors(), tuple()}.
resume_workflow_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResumeWorkflowRun">>, Input, Options).

%% @doc Executes the statement.
-spec run_statement(aws_client:aws_client(), run_statement_request()) ->
    {ok, run_statement_response(), tuple()} |
    {error, any()} |
    {error, run_statement_errors(), tuple()}.
run_statement(Client, Input)
  when is_map(Client), is_map(Input) ->
    run_statement(Client, Input, []).

-spec run_statement(aws_client:aws_client(), run_statement_request(), proplists:proplist()) ->
    {ok, run_statement_response(), tuple()} |
    {error, any()} |
    {error, run_statement_errors(), tuple()}.
run_statement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RunStatement">>, Input, Options).

%% @doc Searches a set of tables based on properties in the table metadata as
%% well as on the parent database.
%%
%% You can search against text or filter conditions.
%%
%% You can only get tables that you have access to based on the security
%% policies defined in Lake Formation. You need at least a read-only access
%% to the table for it to be returned. If you do not have access to all the
%% columns in the table, these columns will not be searched against when
%% returning the list of tables back to you. If you have access to the
%% columns but not the data in the columns, those columns and the associated
%% metadata for those columns will be included in the search.
-spec search_tables(aws_client:aws_client(), search_tables_request()) ->
    {ok, search_tables_response(), tuple()} |
    {error, any()} |
    {error, search_tables_errors(), tuple()}.
search_tables(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_tables(Client, Input, []).

-spec search_tables(aws_client:aws_client(), search_tables_request(), proplists:proplist()) ->
    {ok, search_tables_response(), tuple()} |
    {error, any()} |
    {error, search_tables_errors(), tuple()}.
search_tables(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchTables">>, Input, Options).

%% @doc Starts a new run of the specified blueprint.
-spec start_blueprint_run(aws_client:aws_client(), start_blueprint_run_request()) ->
    {ok, start_blueprint_run_response(), tuple()} |
    {error, any()} |
    {error, start_blueprint_run_errors(), tuple()}.
start_blueprint_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_blueprint_run(Client, Input, []).

-spec start_blueprint_run(aws_client:aws_client(), start_blueprint_run_request(), proplists:proplist()) ->
    {ok, start_blueprint_run_response(), tuple()} |
    {error, any()} |
    {error, start_blueprint_run_errors(), tuple()}.
start_blueprint_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartBlueprintRun">>, Input, Options).

%% @doc Starts a column statistics task run, for a specified table and
%% columns.
-spec start_column_statistics_task_run(aws_client:aws_client(), start_column_statistics_task_run_request()) ->
    {ok, start_column_statistics_task_run_response(), tuple()} |
    {error, any()} |
    {error, start_column_statistics_task_run_errors(), tuple()}.
start_column_statistics_task_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_column_statistics_task_run(Client, Input, []).

-spec start_column_statistics_task_run(aws_client:aws_client(), start_column_statistics_task_run_request(), proplists:proplist()) ->
    {ok, start_column_statistics_task_run_response(), tuple()} |
    {error, any()} |
    {error, start_column_statistics_task_run_errors(), tuple()}.
start_column_statistics_task_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartColumnStatisticsTaskRun">>, Input, Options).

%% @doc Starts a column statistics task run schedule.
-spec start_column_statistics_task_run_schedule(aws_client:aws_client(), start_column_statistics_task_run_schedule_request()) ->
    {ok, start_column_statistics_task_run_schedule_response(), tuple()} |
    {error, any()} |
    {error, start_column_statistics_task_run_schedule_errors(), tuple()}.
start_column_statistics_task_run_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_column_statistics_task_run_schedule(Client, Input, []).

-spec start_column_statistics_task_run_schedule(aws_client:aws_client(), start_column_statistics_task_run_schedule_request(), proplists:proplist()) ->
    {ok, start_column_statistics_task_run_schedule_response(), tuple()} |
    {error, any()} |
    {error, start_column_statistics_task_run_schedule_errors(), tuple()}.
start_column_statistics_task_run_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartColumnStatisticsTaskRunSchedule">>, Input, Options).

%% @doc Starts a crawl using the specified crawler, regardless
%% of what is scheduled.
%%
%% If the crawler is already running, returns a
%% CrawlerRunningException:
%% https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-exceptions.html#aws-glue-api-exceptions-CrawlerRunningException.
-spec start_crawler(aws_client:aws_client(), start_crawler_request()) ->
    {ok, start_crawler_response(), tuple()} |
    {error, any()} |
    {error, start_crawler_errors(), tuple()}.
start_crawler(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_crawler(Client, Input, []).

-spec start_crawler(aws_client:aws_client(), start_crawler_request(), proplists:proplist()) ->
    {ok, start_crawler_response(), tuple()} |
    {error, any()} |
    {error, start_crawler_errors(), tuple()}.
start_crawler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartCrawler">>, Input, Options).

%% @doc Changes the schedule state of the specified crawler to
%% `SCHEDULED', unless the crawler is already running or the
%% schedule state is already `SCHEDULED'.
-spec start_crawler_schedule(aws_client:aws_client(), start_crawler_schedule_request()) ->
    {ok, start_crawler_schedule_response(), tuple()} |
    {error, any()} |
    {error, start_crawler_schedule_errors(), tuple()}.
start_crawler_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_crawler_schedule(Client, Input, []).

-spec start_crawler_schedule(aws_client:aws_client(), start_crawler_schedule_request(), proplists:proplist()) ->
    {ok, start_crawler_schedule_response(), tuple()} |
    {error, any()} |
    {error, start_crawler_schedule_errors(), tuple()}.
start_crawler_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartCrawlerSchedule">>, Input, Options).

%% @doc Starts a recommendation run that is used to generate rules when you
%% don't know what rules to write.
%%
%% Glue Data Quality analyzes the data and comes up with recommendations for
%% a potential ruleset. You can then triage the ruleset and modify the
%% generated ruleset to your liking.
%%
%% Recommendation runs are automatically deleted after 90 days.
-spec start_data_quality_rule_recommendation_run(aws_client:aws_client(), start_data_quality_rule_recommendation_run_request()) ->
    {ok, start_data_quality_rule_recommendation_run_response(), tuple()} |
    {error, any()} |
    {error, start_data_quality_rule_recommendation_run_errors(), tuple()}.
start_data_quality_rule_recommendation_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_data_quality_rule_recommendation_run(Client, Input, []).

-spec start_data_quality_rule_recommendation_run(aws_client:aws_client(), start_data_quality_rule_recommendation_run_request(), proplists:proplist()) ->
    {ok, start_data_quality_rule_recommendation_run_response(), tuple()} |
    {error, any()} |
    {error, start_data_quality_rule_recommendation_run_errors(), tuple()}.
start_data_quality_rule_recommendation_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDataQualityRuleRecommendationRun">>, Input, Options).

%% @doc Once you have a ruleset definition (either recommended or your own),
%% you call this operation to evaluate the ruleset against a data source
%% (Glue table).
%%
%% The evaluation computes results which you can retrieve with the
%% `GetDataQualityResult' API.
-spec start_data_quality_ruleset_evaluation_run(aws_client:aws_client(), start_data_quality_ruleset_evaluation_run_request()) ->
    {ok, start_data_quality_ruleset_evaluation_run_response(), tuple()} |
    {error, any()} |
    {error, start_data_quality_ruleset_evaluation_run_errors(), tuple()}.
start_data_quality_ruleset_evaluation_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_data_quality_ruleset_evaluation_run(Client, Input, []).

-spec start_data_quality_ruleset_evaluation_run(aws_client:aws_client(), start_data_quality_ruleset_evaluation_run_request(), proplists:proplist()) ->
    {ok, start_data_quality_ruleset_evaluation_run_response(), tuple()} |
    {error, any()} |
    {error, start_data_quality_ruleset_evaluation_run_errors(), tuple()}.
start_data_quality_ruleset_evaluation_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDataQualityRulesetEvaluationRun">>, Input, Options).

%% @doc Begins an asynchronous task to export all labeled data for a
%% particular transform.
%%
%% This
%% task is the only label-related API call that is not part of the typical
%% active learning
%% workflow. You typically use `StartExportLabelsTaskRun' when you want
%% to work with
%% all of your existing labels at the same time, such as when you want to
%% remove or change labels
%% that were previously submitted as truth. This API operation accepts the
%% `TransformId' whose labels you want to export and an Amazon Simple
%% Storage
%% Service (Amazon S3) path to export the labels to. The operation returns a
%% `TaskRunId'. You can check on the status of your task run by calling
%% the
%% `GetMLTaskRun' API.
-spec start_export_labels_task_run(aws_client:aws_client(), start_export_labels_task_run_request()) ->
    {ok, start_export_labels_task_run_response(), tuple()} |
    {error, any()} |
    {error, start_export_labels_task_run_errors(), tuple()}.
start_export_labels_task_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_export_labels_task_run(Client, Input, []).

-spec start_export_labels_task_run(aws_client:aws_client(), start_export_labels_task_run_request(), proplists:proplist()) ->
    {ok, start_export_labels_task_run_response(), tuple()} |
    {error, any()} |
    {error, start_export_labels_task_run_errors(), tuple()}.
start_export_labels_task_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartExportLabelsTaskRun">>, Input, Options).

%% @doc Enables you to provide additional labels (examples of truth) to be
%% used to teach the
%% machine learning transform and improve its quality.
%%
%% This API operation is generally used as
%% part of the active learning workflow that starts with the
%% `StartMLLabelingSetGenerationTaskRun' call and that ultimately results
%% in
%% improving the quality of your machine learning transform.
%%
%% After the `StartMLLabelingSetGenerationTaskRun' finishes, Glue machine
%% learning
%% will have generated a series of questions for humans to answer. (Answering
%% these questions is
%% often called 'labeling' in the machine learning workflows). In the
%% case of the
%% `FindMatches' transform, these questions are of the form, “What is the
%% correct
%% way to group these rows together into groups composed entirely of matching
%% records?” After the
%% labeling process is finished, users upload their answers/labels with a
%% call to
%% `StartImportLabelsTaskRun'. After `StartImportLabelsTaskRun'
%% finishes,
%% all future runs of the machine learning transform use the new and improved
%% labels and perform
%% a higher-quality transformation.
%%
%% By default, `StartMLLabelingSetGenerationTaskRun' continually learns
%% from and
%% combines all labels that you upload unless you set `Replace' to true.
%% If you set
%% `Replace' to true, `StartImportLabelsTaskRun' deletes and forgets
%% all
%% previously uploaded labels and learns only from the exact set that you
%% upload. Replacing
%% labels can be helpful if you realize that you previously uploaded
%% incorrect labels, and you
%% believe that they are having a negative effect on your transform quality.
%%
%% You can check on the status of your task run by calling the
%% `GetMLTaskRun'
%% operation.
-spec start_import_labels_task_run(aws_client:aws_client(), start_import_labels_task_run_request()) ->
    {ok, start_import_labels_task_run_response(), tuple()} |
    {error, any()} |
    {error, start_import_labels_task_run_errors(), tuple()}.
start_import_labels_task_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_import_labels_task_run(Client, Input, []).

-spec start_import_labels_task_run(aws_client:aws_client(), start_import_labels_task_run_request(), proplists:proplist()) ->
    {ok, start_import_labels_task_run_response(), tuple()} |
    {error, any()} |
    {error, start_import_labels_task_run_errors(), tuple()}.
start_import_labels_task_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartImportLabelsTaskRun">>, Input, Options).

%% @doc Starts a job run using a job definition.
-spec start_job_run(aws_client:aws_client(), start_job_run_request()) ->
    {ok, start_job_run_response(), tuple()} |
    {error, any()} |
    {error, start_job_run_errors(), tuple()}.
start_job_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_job_run(Client, Input, []).

-spec start_job_run(aws_client:aws_client(), start_job_run_request(), proplists:proplist()) ->
    {ok, start_job_run_response(), tuple()} |
    {error, any()} |
    {error, start_job_run_errors(), tuple()}.
start_job_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartJobRun">>, Input, Options).

%% @doc Starts a task to estimate the quality of the transform.
%%
%% When you provide label sets as examples of truth, Glue machine learning
%% uses some of
%% those examples to learn from them. The rest of the labels are used as a
%% test to estimate
%% quality.
%%
%% Returns a unique identifier for the run. You can call `GetMLTaskRun'
%% to get more
%% information about the stats of the `EvaluationTaskRun'.
-spec start_ml_evaluation_task_run(aws_client:aws_client(), start_ml_evaluation_task_run_request()) ->
    {ok, start_ml_evaluation_task_run_response(), tuple()} |
    {error, any()} |
    {error, start_ml_evaluation_task_run_errors(), tuple()}.
start_ml_evaluation_task_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_ml_evaluation_task_run(Client, Input, []).

-spec start_ml_evaluation_task_run(aws_client:aws_client(), start_ml_evaluation_task_run_request(), proplists:proplist()) ->
    {ok, start_ml_evaluation_task_run_response(), tuple()} |
    {error, any()} |
    {error, start_ml_evaluation_task_run_errors(), tuple()}.
start_ml_evaluation_task_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMLEvaluationTaskRun">>, Input, Options).

%% @doc Starts the active learning workflow for your machine learning
%% transform to improve the
%% transform's quality by generating label sets and adding labels.
%%
%% When the `StartMLLabelingSetGenerationTaskRun' finishes, Glue will
%% have
%% generated a &quot;labeling set&quot; or a set of questions for humans to
%% answer.
%%
%% In the case of the `FindMatches' transform, these questions are of the
%% form,
%% “What is the correct way to group these rows together into groups composed
%% entirely of
%% matching records?”
%%
%% After the labeling process is finished, you can upload your labels with a
%% call to
%% `StartImportLabelsTaskRun'. After `StartImportLabelsTaskRun'
%% finishes,
%% all future runs of the machine learning transform will use the new and
%% improved labels and
%% perform a higher-quality transformation.
%%
%% Note: The role used to write the generated labeling set to the
%% `OutputS3Path' is the role
%% associated with the Machine Learning Transform, specified in the
%% `CreateMLTransform' API.
-spec start_ml_labeling_set_generation_task_run(aws_client:aws_client(), start_ml_labeling_set_generation_task_run_request()) ->
    {ok, start_ml_labeling_set_generation_task_run_response(), tuple()} |
    {error, any()} |
    {error, start_ml_labeling_set_generation_task_run_errors(), tuple()}.
start_ml_labeling_set_generation_task_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_ml_labeling_set_generation_task_run(Client, Input, []).

-spec start_ml_labeling_set_generation_task_run(aws_client:aws_client(), start_ml_labeling_set_generation_task_run_request(), proplists:proplist()) ->
    {ok, start_ml_labeling_set_generation_task_run_response(), tuple()} |
    {error, any()} |
    {error, start_ml_labeling_set_generation_task_run_errors(), tuple()}.
start_ml_labeling_set_generation_task_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMLLabelingSetGenerationTaskRun">>, Input, Options).

%% @doc Starts an existing trigger.
%%
%% See Triggering
%% Jobs: https://docs.aws.amazon.com/glue/latest/dg/trigger-job.html for
%% information about how different types of trigger are
%% started.
-spec start_trigger(aws_client:aws_client(), start_trigger_request()) ->
    {ok, start_trigger_response(), tuple()} |
    {error, any()} |
    {error, start_trigger_errors(), tuple()}.
start_trigger(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_trigger(Client, Input, []).

-spec start_trigger(aws_client:aws_client(), start_trigger_request(), proplists:proplist()) ->
    {ok, start_trigger_response(), tuple()} |
    {error, any()} |
    {error, start_trigger_errors(), tuple()}.
start_trigger(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartTrigger">>, Input, Options).

%% @doc Starts a new run of the specified workflow.
-spec start_workflow_run(aws_client:aws_client(), start_workflow_run_request()) ->
    {ok, start_workflow_run_response(), tuple()} |
    {error, any()} |
    {error, start_workflow_run_errors(), tuple()}.
start_workflow_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_workflow_run(Client, Input, []).

-spec start_workflow_run(aws_client:aws_client(), start_workflow_run_request(), proplists:proplist()) ->
    {ok, start_workflow_run_response(), tuple()} |
    {error, any()} |
    {error, start_workflow_run_errors(), tuple()}.
start_workflow_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartWorkflowRun">>, Input, Options).

%% @doc Stops a task run for the specified table.
-spec stop_column_statistics_task_run(aws_client:aws_client(), stop_column_statistics_task_run_request()) ->
    {ok, stop_column_statistics_task_run_response(), tuple()} |
    {error, any()} |
    {error, stop_column_statistics_task_run_errors(), tuple()}.
stop_column_statistics_task_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_column_statistics_task_run(Client, Input, []).

-spec stop_column_statistics_task_run(aws_client:aws_client(), stop_column_statistics_task_run_request(), proplists:proplist()) ->
    {ok, stop_column_statistics_task_run_response(), tuple()} |
    {error, any()} |
    {error, stop_column_statistics_task_run_errors(), tuple()}.
stop_column_statistics_task_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopColumnStatisticsTaskRun">>, Input, Options).

%% @doc Stops a column statistics task run schedule.
-spec stop_column_statistics_task_run_schedule(aws_client:aws_client(), stop_column_statistics_task_run_schedule_request()) ->
    {ok, stop_column_statistics_task_run_schedule_response(), tuple()} |
    {error, any()} |
    {error, stop_column_statistics_task_run_schedule_errors(), tuple()}.
stop_column_statistics_task_run_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_column_statistics_task_run_schedule(Client, Input, []).

-spec stop_column_statistics_task_run_schedule(aws_client:aws_client(), stop_column_statistics_task_run_schedule_request(), proplists:proplist()) ->
    {ok, stop_column_statistics_task_run_schedule_response(), tuple()} |
    {error, any()} |
    {error, stop_column_statistics_task_run_schedule_errors(), tuple()}.
stop_column_statistics_task_run_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopColumnStatisticsTaskRunSchedule">>, Input, Options).

%% @doc If the specified crawler is running, stops the crawl.
-spec stop_crawler(aws_client:aws_client(), stop_crawler_request()) ->
    {ok, stop_crawler_response(), tuple()} |
    {error, any()} |
    {error, stop_crawler_errors(), tuple()}.
stop_crawler(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_crawler(Client, Input, []).

-spec stop_crawler(aws_client:aws_client(), stop_crawler_request(), proplists:proplist()) ->
    {ok, stop_crawler_response(), tuple()} |
    {error, any()} |
    {error, stop_crawler_errors(), tuple()}.
stop_crawler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopCrawler">>, Input, Options).

%% @doc Sets the schedule state of the specified crawler to
%% `NOT_SCHEDULED', but does not stop the crawler if it is
%% already running.
-spec stop_crawler_schedule(aws_client:aws_client(), stop_crawler_schedule_request()) ->
    {ok, stop_crawler_schedule_response(), tuple()} |
    {error, any()} |
    {error, stop_crawler_schedule_errors(), tuple()}.
stop_crawler_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_crawler_schedule(Client, Input, []).

-spec stop_crawler_schedule(aws_client:aws_client(), stop_crawler_schedule_request(), proplists:proplist()) ->
    {ok, stop_crawler_schedule_response(), tuple()} |
    {error, any()} |
    {error, stop_crawler_schedule_errors(), tuple()}.
stop_crawler_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopCrawlerSchedule">>, Input, Options).

%% @doc Stops the session.
-spec stop_session(aws_client:aws_client(), stop_session_request()) ->
    {ok, stop_session_response(), tuple()} |
    {error, any()} |
    {error, stop_session_errors(), tuple()}.
stop_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_session(Client, Input, []).

-spec stop_session(aws_client:aws_client(), stop_session_request(), proplists:proplist()) ->
    {ok, stop_session_response(), tuple()} |
    {error, any()} |
    {error, stop_session_errors(), tuple()}.
stop_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopSession">>, Input, Options).

%% @doc Stops a specified trigger.
-spec stop_trigger(aws_client:aws_client(), stop_trigger_request()) ->
    {ok, stop_trigger_response(), tuple()} |
    {error, any()} |
    {error, stop_trigger_errors(), tuple()}.
stop_trigger(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_trigger(Client, Input, []).

-spec stop_trigger(aws_client:aws_client(), stop_trigger_request(), proplists:proplist()) ->
    {ok, stop_trigger_response(), tuple()} |
    {error, any()} |
    {error, stop_trigger_errors(), tuple()}.
stop_trigger(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopTrigger">>, Input, Options).

%% @doc Stops the execution of the specified workflow run.
-spec stop_workflow_run(aws_client:aws_client(), stop_workflow_run_request()) ->
    {ok, stop_workflow_run_response(), tuple()} |
    {error, any()} |
    {error, stop_workflow_run_errors(), tuple()}.
stop_workflow_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_workflow_run(Client, Input, []).

-spec stop_workflow_run(aws_client:aws_client(), stop_workflow_run_request(), proplists:proplist()) ->
    {ok, stop_workflow_run_response(), tuple()} |
    {error, any()} |
    {error, stop_workflow_run_errors(), tuple()}.
stop_workflow_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopWorkflowRun">>, Input, Options).

%% @doc Adds tags to a resource.
%%
%% A tag is a label you can assign to an Amazon Web Services resource.
%% In Glue, you can tag only certain resources. For information about what
%% resources you can tag, see Amazon Web Services Tags in Glue:
%% https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html.
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

%% @doc Tests a connection to a service to validate the service credentials
%% that you provide.
%%
%% You can either provide an existing connection name or a
%% `TestConnectionInput' for testing a non-existing connection input.
%% Providing both at the same time will cause an error.
%%
%% If the action is successful, the service sends back an HTTP 200 response.
-spec test_connection(aws_client:aws_client(), test_connection_request()) ->
    {ok, test_connection_response(), tuple()} |
    {error, any()} |
    {error, test_connection_errors(), tuple()}.
test_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_connection(Client, Input, []).

-spec test_connection(aws_client:aws_client(), test_connection_request(), proplists:proplist()) ->
    {ok, test_connection_response(), tuple()} |
    {error, any()} |
    {error, test_connection_errors(), tuple()}.
test_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestConnection">>, Input, Options).

%% @doc Removes tags from a resource.
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

%% @doc Updates a registered blueprint.
-spec update_blueprint(aws_client:aws_client(), update_blueprint_request()) ->
    {ok, update_blueprint_response(), tuple()} |
    {error, any()} |
    {error, update_blueprint_errors(), tuple()}.
update_blueprint(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_blueprint(Client, Input, []).

-spec update_blueprint(aws_client:aws_client(), update_blueprint_request(), proplists:proplist()) ->
    {ok, update_blueprint_response(), tuple()} |
    {error, any()} |
    {error, update_blueprint_errors(), tuple()}.
update_blueprint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateBlueprint">>, Input, Options).

%% @doc Updates an existing catalog's properties in the Glue Data
%% Catalog.
-spec update_catalog(aws_client:aws_client(), update_catalog_request()) ->
    {ok, update_catalog_response(), tuple()} |
    {error, any()} |
    {error, update_catalog_errors(), tuple()}.
update_catalog(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_catalog(Client, Input, []).

-spec update_catalog(aws_client:aws_client(), update_catalog_request(), proplists:proplist()) ->
    {ok, update_catalog_response(), tuple()} |
    {error, any()} |
    {error, update_catalog_errors(), tuple()}.
update_catalog(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCatalog">>, Input, Options).

%% @doc Modifies an existing classifier (a `GrokClassifier',
%% an `XMLClassifier', a `JsonClassifier', or a `CsvClassifier',
%% depending on
%% which field is present).
-spec update_classifier(aws_client:aws_client(), update_classifier_request()) ->
    {ok, update_classifier_response(), tuple()} |
    {error, any()} |
    {error, update_classifier_errors(), tuple()}.
update_classifier(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_classifier(Client, Input, []).

-spec update_classifier(aws_client:aws_client(), update_classifier_request(), proplists:proplist()) ->
    {ok, update_classifier_response(), tuple()} |
    {error, any()} |
    {error, update_classifier_errors(), tuple()}.
update_classifier(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateClassifier">>, Input, Options).

%% @doc Creates or updates partition statistics of columns.
%%
%% The Identity and Access Management (IAM) permission required for this
%% operation is `UpdatePartition'.
-spec update_column_statistics_for_partition(aws_client:aws_client(), update_column_statistics_for_partition_request()) ->
    {ok, update_column_statistics_for_partition_response(), tuple()} |
    {error, any()} |
    {error, update_column_statistics_for_partition_errors(), tuple()}.
update_column_statistics_for_partition(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_column_statistics_for_partition(Client, Input, []).

-spec update_column_statistics_for_partition(aws_client:aws_client(), update_column_statistics_for_partition_request(), proplists:proplist()) ->
    {ok, update_column_statistics_for_partition_response(), tuple()} |
    {error, any()} |
    {error, update_column_statistics_for_partition_errors(), tuple()}.
update_column_statistics_for_partition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateColumnStatisticsForPartition">>, Input, Options).

%% @doc Creates or updates table statistics of columns.
%%
%% The Identity and Access Management (IAM) permission required for this
%% operation is `UpdateTable'.
-spec update_column_statistics_for_table(aws_client:aws_client(), update_column_statistics_for_table_request()) ->
    {ok, update_column_statistics_for_table_response(), tuple()} |
    {error, any()} |
    {error, update_column_statistics_for_table_errors(), tuple()}.
update_column_statistics_for_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_column_statistics_for_table(Client, Input, []).

-spec update_column_statistics_for_table(aws_client:aws_client(), update_column_statistics_for_table_request(), proplists:proplist()) ->
    {ok, update_column_statistics_for_table_response(), tuple()} |
    {error, any()} |
    {error, update_column_statistics_for_table_errors(), tuple()}.
update_column_statistics_for_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateColumnStatisticsForTable">>, Input, Options).

%% @doc Updates settings for a column statistics task.
-spec update_column_statistics_task_settings(aws_client:aws_client(), update_column_statistics_task_settings_request()) ->
    {ok, update_column_statistics_task_settings_response(), tuple()} |
    {error, any()} |
    {error, update_column_statistics_task_settings_errors(), tuple()}.
update_column_statistics_task_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_column_statistics_task_settings(Client, Input, []).

-spec update_column_statistics_task_settings(aws_client:aws_client(), update_column_statistics_task_settings_request(), proplists:proplist()) ->
    {ok, update_column_statistics_task_settings_response(), tuple()} |
    {error, any()} |
    {error, update_column_statistics_task_settings_errors(), tuple()}.
update_column_statistics_task_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateColumnStatisticsTaskSettings">>, Input, Options).

%% @doc Updates a connection definition in the Data Catalog.
-spec update_connection(aws_client:aws_client(), update_connection_request()) ->
    {ok, update_connection_response(), tuple()} |
    {error, any()} |
    {error, update_connection_errors(), tuple()}.
update_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_connection(Client, Input, []).

-spec update_connection(aws_client:aws_client(), update_connection_request(), proplists:proplist()) ->
    {ok, update_connection_response(), tuple()} |
    {error, any()} |
    {error, update_connection_errors(), tuple()}.
update_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateConnection">>, Input, Options).

%% @doc Updates a crawler.
%%
%% If a crawler is
%% running, you must stop it using `StopCrawler' before updating
%% it.
-spec update_crawler(aws_client:aws_client(), update_crawler_request()) ->
    {ok, update_crawler_response(), tuple()} |
    {error, any()} |
    {error, update_crawler_errors(), tuple()}.
update_crawler(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_crawler(Client, Input, []).

-spec update_crawler(aws_client:aws_client(), update_crawler_request(), proplists:proplist()) ->
    {ok, update_crawler_response(), tuple()} |
    {error, any()} |
    {error, update_crawler_errors(), tuple()}.
update_crawler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCrawler">>, Input, Options).

%% @doc Updates the schedule of a crawler using a `cron' expression.
-spec update_crawler_schedule(aws_client:aws_client(), update_crawler_schedule_request()) ->
    {ok, update_crawler_schedule_response(), tuple()} |
    {error, any()} |
    {error, update_crawler_schedule_errors(), tuple()}.
update_crawler_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_crawler_schedule(Client, Input, []).

-spec update_crawler_schedule(aws_client:aws_client(), update_crawler_schedule_request(), proplists:proplist()) ->
    {ok, update_crawler_schedule_response(), tuple()} |
    {error, any()} |
    {error, update_crawler_schedule_errors(), tuple()}.
update_crawler_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCrawlerSchedule">>, Input, Options).

%% @doc Updates the specified data quality ruleset.
-spec update_data_quality_ruleset(aws_client:aws_client(), update_data_quality_ruleset_request()) ->
    {ok, update_data_quality_ruleset_response(), tuple()} |
    {error, any()} |
    {error, update_data_quality_ruleset_errors(), tuple()}.
update_data_quality_ruleset(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_data_quality_ruleset(Client, Input, []).

-spec update_data_quality_ruleset(aws_client:aws_client(), update_data_quality_ruleset_request(), proplists:proplist()) ->
    {ok, update_data_quality_ruleset_response(), tuple()} |
    {error, any()} |
    {error, update_data_quality_ruleset_errors(), tuple()}.
update_data_quality_ruleset(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDataQualityRuleset">>, Input, Options).

%% @doc Updates an existing database definition in a Data Catalog.
-spec update_database(aws_client:aws_client(), update_database_request()) ->
    {ok, update_database_response(), tuple()} |
    {error, any()} |
    {error, update_database_errors(), tuple()}.
update_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_database(Client, Input, []).

-spec update_database(aws_client:aws_client(), update_database_request(), proplists:proplist()) ->
    {ok, update_database_response(), tuple()} |
    {error, any()} |
    {error, update_database_errors(), tuple()}.
update_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDatabase">>, Input, Options).

%% @doc Updates a specified development endpoint.
-spec update_dev_endpoint(aws_client:aws_client(), update_dev_endpoint_request()) ->
    {ok, update_dev_endpoint_response(), tuple()} |
    {error, any()} |
    {error, update_dev_endpoint_errors(), tuple()}.
update_dev_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_dev_endpoint(Client, Input, []).

-spec update_dev_endpoint(aws_client:aws_client(), update_dev_endpoint_request(), proplists:proplist()) ->
    {ok, update_dev_endpoint_response(), tuple()} |
    {error, any()} |
    {error, update_dev_endpoint_errors(), tuple()}.
update_dev_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDevEndpoint">>, Input, Options).

%% @doc Updates the existing Glue Identity Center configuration, allowing
%% modification of scopes and permissions for the integration.
-spec update_glue_identity_center_configuration(aws_client:aws_client(), update_glue_identity_center_configuration_request()) ->
    {ok, update_glue_identity_center_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_glue_identity_center_configuration_errors(), tuple()}.
update_glue_identity_center_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_glue_identity_center_configuration(Client, Input, []).

-spec update_glue_identity_center_configuration(aws_client:aws_client(), update_glue_identity_center_configuration_request(), proplists:proplist()) ->
    {ok, update_glue_identity_center_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_glue_identity_center_configuration_errors(), tuple()}.
update_glue_identity_center_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGlueIdentityCenterConfiguration">>, Input, Options).

%% @doc This API can be used for updating the `ResourceProperty' of the
%% Glue connection (for the source) or Glue database ARN (for the target).
%%
%% These properties can include the role to access the connection or
%% database. Since the same resource can be used across multiple
%% integrations, updating resource properties will impact all the
%% integrations using it.
-spec update_integration_resource_property(aws_client:aws_client(), update_integration_resource_property_request()) ->
    {ok, update_integration_resource_property_response(), tuple()} |
    {error, any()} |
    {error, update_integration_resource_property_errors(), tuple()}.
update_integration_resource_property(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_integration_resource_property(Client, Input, []).

-spec update_integration_resource_property(aws_client:aws_client(), update_integration_resource_property_request(), proplists:proplist()) ->
    {ok, update_integration_resource_property_response(), tuple()} |
    {error, any()} |
    {error, update_integration_resource_property_errors(), tuple()}.
update_integration_resource_property(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateIntegrationResourceProperty">>, Input, Options).

%% @doc This API is used to provide optional override properties for the
%% tables that need to be replicated.
%%
%% These properties can include properties for filtering and partitioning for
%% the source and target tables. To set both source and target properties the
%% same API need to be invoked with the Glue connection ARN as
%% `ResourceArn' with `SourceTableConfig', and the Glue database ARN
%% as `ResourceArn' with `TargetTableConfig' respectively.
%%
%% The override will be reflected across all the integrations using same
%% `ResourceArn' and source table.
-spec update_integration_table_properties(aws_client:aws_client(), update_integration_table_properties_request()) ->
    {ok, update_integration_table_properties_response(), tuple()} |
    {error, any()} |
    {error, update_integration_table_properties_errors(), tuple()}.
update_integration_table_properties(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_integration_table_properties(Client, Input, []).

-spec update_integration_table_properties(aws_client:aws_client(), update_integration_table_properties_request(), proplists:proplist()) ->
    {ok, update_integration_table_properties_response(), tuple()} |
    {error, any()} |
    {error, update_integration_table_properties_errors(), tuple()}.
update_integration_table_properties(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateIntegrationTableProperties">>, Input, Options).

%% @doc Updates an existing job definition.
%%
%% The previous job definition is completely overwritten by this information.
-spec update_job(aws_client:aws_client(), update_job_request()) ->
    {ok, update_job_response(), tuple()} |
    {error, any()} |
    {error, update_job_errors(), tuple()}.
update_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_job(Client, Input, []).

-spec update_job(aws_client:aws_client(), update_job_request(), proplists:proplist()) ->
    {ok, update_job_response(), tuple()} |
    {error, any()} |
    {error, update_job_errors(), tuple()}.
update_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateJob">>, Input, Options).

%% @doc Synchronizes a job from the source control repository.
%%
%% This operation takes the job artifacts that are located in the remote
%% repository and updates the Glue internal stores with these artifacts.
%%
%% This API supports optional parameters which take in the repository
%% information.
-spec update_job_from_source_control(aws_client:aws_client(), update_job_from_source_control_request()) ->
    {ok, update_job_from_source_control_response(), tuple()} |
    {error, any()} |
    {error, update_job_from_source_control_errors(), tuple()}.
update_job_from_source_control(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_job_from_source_control(Client, Input, []).

-spec update_job_from_source_control(aws_client:aws_client(), update_job_from_source_control_request(), proplists:proplist()) ->
    {ok, update_job_from_source_control_response(), tuple()} |
    {error, any()} |
    {error, update_job_from_source_control_errors(), tuple()}.
update_job_from_source_control(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateJobFromSourceControl">>, Input, Options).

%% @doc Updates an existing machine learning transform.
%%
%% Call this operation to tune the algorithm parameters to achieve better
%% results.
%%
%% After calling this operation, you can call the
%% `StartMLEvaluationTaskRun'
%% operation to assess how well your new parameters achieved your goals (such
%% as improving the
%% quality of your machine learning transform, or making it more
%% cost-effective).
-spec update_ml_transform(aws_client:aws_client(), update_ml_transform_request()) ->
    {ok, update_ml_transform_response(), tuple()} |
    {error, any()} |
    {error, update_ml_transform_errors(), tuple()}.
update_ml_transform(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_ml_transform(Client, Input, []).

-spec update_ml_transform(aws_client:aws_client(), update_ml_transform_request(), proplists:proplist()) ->
    {ok, update_ml_transform_response(), tuple()} |
    {error, any()} |
    {error, update_ml_transform_errors(), tuple()}.
update_ml_transform(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMLTransform">>, Input, Options).

%% @doc Updates a partition.
-spec update_partition(aws_client:aws_client(), update_partition_request()) ->
    {ok, update_partition_response(), tuple()} |
    {error, any()} |
    {error, update_partition_errors(), tuple()}.
update_partition(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_partition(Client, Input, []).

-spec update_partition(aws_client:aws_client(), update_partition_request(), proplists:proplist()) ->
    {ok, update_partition_response(), tuple()} |
    {error, any()} |
    {error, update_partition_errors(), tuple()}.
update_partition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePartition">>, Input, Options).

%% @doc Updates an existing registry which is used to hold a collection of
%% schemas.
%%
%% The updated properties relate to the registry, and do not modify any of
%% the schemas within the registry.
-spec update_registry(aws_client:aws_client(), update_registry_input()) ->
    {ok, update_registry_response(), tuple()} |
    {error, any()} |
    {error, update_registry_errors(), tuple()}.
update_registry(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_registry(Client, Input, []).

-spec update_registry(aws_client:aws_client(), update_registry_input(), proplists:proplist()) ->
    {ok, update_registry_response(), tuple()} |
    {error, any()} |
    {error, update_registry_errors(), tuple()}.
update_registry(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRegistry">>, Input, Options).

%% @doc Updates the description, compatibility setting, or version checkpoint
%% for a schema set.
%%
%% For updating the compatibility setting, the call will not validate
%% compatibility for the entire set of schema versions with the new
%% compatibility setting. If the value for `Compatibility' is provided,
%% the `VersionNumber' (a checkpoint) is also required. The API will
%% validate the checkpoint version number for consistency.
%%
%% If the value for the `VersionNumber' (checkpoint) is provided,
%% `Compatibility' is optional and this can be used to set/reset a
%% checkpoint for the schema.
%%
%% This update will happen only if the schema is in the AVAILABLE state.
-spec update_schema(aws_client:aws_client(), update_schema_input()) ->
    {ok, update_schema_response(), tuple()} |
    {error, any()} |
    {error, update_schema_errors(), tuple()}.
update_schema(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_schema(Client, Input, []).

-spec update_schema(aws_client:aws_client(), update_schema_input(), proplists:proplist()) ->
    {ok, update_schema_response(), tuple()} |
    {error, any()} |
    {error, update_schema_errors(), tuple()}.
update_schema(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSchema">>, Input, Options).

%% @doc Synchronizes a job to the source control repository.
%%
%% This operation takes the job artifacts from the Glue internal stores and
%% makes a commit to the remote repository that is configured on the job.
%%
%% This API supports optional parameters which take in the repository
%% information.
-spec update_source_control_from_job(aws_client:aws_client(), update_source_control_from_job_request()) ->
    {ok, update_source_control_from_job_response(), tuple()} |
    {error, any()} |
    {error, update_source_control_from_job_errors(), tuple()}.
update_source_control_from_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_source_control_from_job(Client, Input, []).

-spec update_source_control_from_job(aws_client:aws_client(), update_source_control_from_job_request(), proplists:proplist()) ->
    {ok, update_source_control_from_job_response(), tuple()} |
    {error, any()} |
    {error, update_source_control_from_job_errors(), tuple()}.
update_source_control_from_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSourceControlFromJob">>, Input, Options).

%% @doc Updates a metadata table in the Data Catalog.
-spec update_table(aws_client:aws_client(), update_table_request()) ->
    {ok, update_table_response(), tuple()} |
    {error, any()} |
    {error, update_table_errors(), tuple()}.
update_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_table(Client, Input, []).

-spec update_table(aws_client:aws_client(), update_table_request(), proplists:proplist()) ->
    {ok, update_table_response(), tuple()} |
    {error, any()} |
    {error, update_table_errors(), tuple()}.
update_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTable">>, Input, Options).

%% @doc Updates the configuration for an existing table optimizer.
-spec update_table_optimizer(aws_client:aws_client(), update_table_optimizer_request()) ->
    {ok, update_table_optimizer_response(), tuple()} |
    {error, any()} |
    {error, update_table_optimizer_errors(), tuple()}.
update_table_optimizer(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_table_optimizer(Client, Input, []).

-spec update_table_optimizer(aws_client:aws_client(), update_table_optimizer_request(), proplists:proplist()) ->
    {ok, update_table_optimizer_response(), tuple()} |
    {error, any()} |
    {error, update_table_optimizer_errors(), tuple()}.
update_table_optimizer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTableOptimizer">>, Input, Options).

%% @doc Updates a trigger definition.
%%
%% Job arguments may be logged. Do not pass plaintext secrets as arguments.
%% Retrieve secrets from a Glue Connection, Amazon Web Services Secrets
%% Manager or other secret management mechanism if you intend to keep them
%% within the Job.
-spec update_trigger(aws_client:aws_client(), update_trigger_request()) ->
    {ok, update_trigger_response(), tuple()} |
    {error, any()} |
    {error, update_trigger_errors(), tuple()}.
update_trigger(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_trigger(Client, Input, []).

-spec update_trigger(aws_client:aws_client(), update_trigger_request(), proplists:proplist()) ->
    {ok, update_trigger_response(), tuple()} |
    {error, any()} |
    {error, update_trigger_errors(), tuple()}.
update_trigger(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTrigger">>, Input, Options).

%% @doc Update an Glue usage profile.
-spec update_usage_profile(aws_client:aws_client(), update_usage_profile_request()) ->
    {ok, update_usage_profile_response(), tuple()} |
    {error, any()} |
    {error, update_usage_profile_errors(), tuple()}.
update_usage_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_usage_profile(Client, Input, []).

-spec update_usage_profile(aws_client:aws_client(), update_usage_profile_request(), proplists:proplist()) ->
    {ok, update_usage_profile_response(), tuple()} |
    {error, any()} |
    {error, update_usage_profile_errors(), tuple()}.
update_usage_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateUsageProfile">>, Input, Options).

%% @doc Updates an existing function definition in the Data Catalog.
-spec update_user_defined_function(aws_client:aws_client(), update_user_defined_function_request()) ->
    {ok, update_user_defined_function_response(), tuple()} |
    {error, any()} |
    {error, update_user_defined_function_errors(), tuple()}.
update_user_defined_function(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_user_defined_function(Client, Input, []).

-spec update_user_defined_function(aws_client:aws_client(), update_user_defined_function_request(), proplists:proplist()) ->
    {ok, update_user_defined_function_response(), tuple()} |
    {error, any()} |
    {error, update_user_defined_function_errors(), tuple()}.
update_user_defined_function(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateUserDefinedFunction">>, Input, Options).

%% @doc Updates an existing workflow.
-spec update_workflow(aws_client:aws_client(), update_workflow_request()) ->
    {ok, update_workflow_response(), tuple()} |
    {error, any()} |
    {error, update_workflow_errors(), tuple()}.
update_workflow(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_workflow(Client, Input, []).

-spec update_workflow(aws_client:aws_client(), update_workflow_request(), proplists:proplist()) ->
    {ok, update_workflow_response(), tuple()} |
    {error, any()} |
    {error, update_workflow_errors(), tuple()}.
update_workflow(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateWorkflow">>, Input, Options).

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
    Client1 = Client#{service => <<"glue">>},
    Host = build_host(<<"glue">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSGlue.", Action/binary>>}
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
