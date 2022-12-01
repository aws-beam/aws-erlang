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
         batch_get_triggers/2,
         batch_get_triggers/3,
         batch_get_workflows/2,
         batch_get_workflows/3,
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
         create_classifier/2,
         create_classifier/3,
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
         create_trigger/2,
         create_trigger/3,
         create_user_defined_function/2,
         create_user_defined_function/3,
         create_workflow/2,
         create_workflow/3,
         delete_blueprint/2,
         delete_blueprint/3,
         delete_classifier/2,
         delete_classifier/3,
         delete_column_statistics_for_partition/2,
         delete_column_statistics_for_partition/3,
         delete_column_statistics_for_table/2,
         delete_column_statistics_for_table/3,
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
         delete_table_version/2,
         delete_table_version/3,
         delete_trigger/2,
         delete_trigger/3,
         delete_user_defined_function/2,
         delete_user_defined_function/3,
         delete_workflow/2,
         delete_workflow/3,
         get_blueprint/2,
         get_blueprint/3,
         get_blueprint_run/2,
         get_blueprint_run/3,
         get_blueprint_runs/2,
         get_blueprint_runs/3,
         get_catalog_import_status/2,
         get_catalog_import_status/3,
         get_classifier/2,
         get_classifier/3,
         get_classifiers/2,
         get_classifiers/3,
         get_column_statistics_for_partition/2,
         get_column_statistics_for_partition/3,
         get_column_statistics_for_table/2,
         get_column_statistics_for_table/3,
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
         list_dev_endpoints/2,
         list_dev_endpoints/3,
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
         list_triggers/2,
         list_triggers/3,
         list_workflows/2,
         list_workflows/3,
         put_data_catalog_encryption_settings/2,
         put_data_catalog_encryption_settings/3,
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
         untag_resource/2,
         untag_resource/3,
         update_blueprint/2,
         update_blueprint/3,
         update_classifier/2,
         update_classifier/3,
         update_column_statistics_for_partition/2,
         update_column_statistics_for_partition/3,
         update_column_statistics_for_table/2,
         update_column_statistics_for_table/3,
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
         update_trigger/2,
         update_trigger/3,
         update_user_defined_function/2,
         update_user_defined_function/3,
         update_workflow/2,
         update_workflow/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates one or more partitions in a batch operation.
batch_create_partition(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_create_partition(Client, Input, []).
batch_create_partition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchCreatePartition">>, Input, Options).

%% @doc Deletes a list of connection definitions from the Data Catalog.
batch_delete_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_delete_connection(Client, Input, []).
batch_delete_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDeleteConnection">>, Input, Options).

%% @doc Deletes one or more partitions in a batch operation.
batch_delete_partition(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_delete_partition(Client, Input, []).
batch_delete_partition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDeletePartition">>, Input, Options).

%% @doc Deletes multiple tables at once.
%%
%% After completing this operation, you no longer have access to the table
%% versions and partitions that belong to the deleted table. Glue deletes
%% these "orphaned" resources asynchronously in a timely manner, at the
%% discretion of the service.
%%
%% To ensure the immediate deletion of all related resources, before calling
%% `BatchDeleteTable', use `DeleteTableVersion' or `BatchDeleteTableVersion',
%% and `DeletePartition' or `BatchDeletePartition', to delete any resources
%% that belong to the table.
batch_delete_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_delete_table(Client, Input, []).
batch_delete_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDeleteTable">>, Input, Options).

%% @doc Deletes a specified batch of versions of a table.
batch_delete_table_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_delete_table_version(Client, Input, []).
batch_delete_table_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDeleteTableVersion">>, Input, Options).

%% @doc Retrieves information about a list of blueprints.
batch_get_blueprints(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_blueprints(Client, Input, []).
batch_get_blueprints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetBlueprints">>, Input, Options).

%% @doc Returns a list of resource metadata for a given list of crawler
%% names.
%%
%% After calling the `ListCrawlers' operation, you can call this operation to
%% access the data to which you have been granted permissions. This operation
%% supports all IAM permissions, including permission conditions that uses
%% tags.
batch_get_crawlers(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_crawlers(Client, Input, []).
batch_get_crawlers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetCrawlers">>, Input, Options).

%% @doc Retrieves the details for the custom patterns specified by a list of
%% names.
batch_get_custom_entity_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_custom_entity_types(Client, Input, []).
batch_get_custom_entity_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetCustomEntityTypes">>, Input, Options).

%% @doc Retrieves a list of data quality results for the specified result
%% IDs.
batch_get_data_quality_result(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_data_quality_result(Client, Input, []).
batch_get_data_quality_result(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetDataQualityResult">>, Input, Options).

%% @doc Returns a list of resource metadata for a given list of development
%% endpoint names.
%%
%% After calling the `ListDevEndpoints' operation, you can call this
%% operation to access the data to which you have been granted permissions.
%% This operation supports all IAM permissions, including permission
%% conditions that uses tags.
batch_get_dev_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_dev_endpoints(Client, Input, []).
batch_get_dev_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetDevEndpoints">>, Input, Options).

%% @doc Returns a list of resource metadata for a given list of job names.
%%
%% After calling the `ListJobs' operation, you can call this operation to
%% access the data to which you have been granted permissions. This operation
%% supports all IAM permissions, including permission conditions that uses
%% tags.
batch_get_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_jobs(Client, Input, []).
batch_get_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetJobs">>, Input, Options).

%% @doc Retrieves partitions in a batch request.
batch_get_partition(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_partition(Client, Input, []).
batch_get_partition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetPartition">>, Input, Options).

%% @doc Returns a list of resource metadata for a given list of trigger
%% names.
%%
%% After calling the `ListTriggers' operation, you can call this operation to
%% access the data to which you have been granted permissions. This operation
%% supports all IAM permissions, including permission conditions that uses
%% tags.
batch_get_triggers(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_triggers(Client, Input, []).
batch_get_triggers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetTriggers">>, Input, Options).

%% @doc Returns a list of resource metadata for a given list of workflow
%% names.
%%
%% After calling the `ListWorkflows' operation, you can call this operation
%% to access the data to which you have been granted permissions. This
%% operation supports all IAM permissions, including permission conditions
%% that uses tags.
batch_get_workflows(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_workflows(Client, Input, []).
batch_get_workflows(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetWorkflows">>, Input, Options).

%% @doc Stops one or more job runs for a specified job definition.
batch_stop_job_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_stop_job_run(Client, Input, []).
batch_stop_job_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchStopJobRun">>, Input, Options).

%% @doc Updates one or more partitions in a batch operation.
batch_update_partition(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_update_partition(Client, Input, []).
batch_update_partition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchUpdatePartition">>, Input, Options).

%% @doc Cancels the specified recommendation run that was being used to
%% generate rules.
cancel_data_quality_rule_recommendation_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_data_quality_rule_recommendation_run(Client, Input, []).
cancel_data_quality_rule_recommendation_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelDataQualityRuleRecommendationRun">>, Input, Options).

%% @doc Cancels a run where a ruleset is being evaluated against a data
%% source.
cancel_data_quality_ruleset_evaluation_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_data_quality_ruleset_evaluation_run(Client, Input, []).
cancel_data_quality_ruleset_evaluation_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelDataQualityRulesetEvaluationRun">>, Input, Options).

%% @doc Cancels (stops) a task run.
%%
%% Machine learning task runs are asynchronous tasks that Glue runs on your
%% behalf as part of various machine learning workflows. You can cancel a
%% machine learning task run at any time by calling `CancelMLTaskRun' with a
%% task run's parent transform's `TransformID' and the task run's
%% `TaskRunId'.
cancel_ml_task_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_ml_task_run(Client, Input, []).
cancel_ml_task_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelMLTaskRun">>, Input, Options).

%% @doc Cancels the statement.
cancel_statement(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_statement(Client, Input, []).
cancel_statement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelStatement">>, Input, Options).

%% @doc Validates the supplied schema.
%%
%% This call has no side effects, it simply validates using the supplied
%% schema using `DataFormat' as the format. Since it does not take a schema
%% set name, no compatibility checks are performed.
check_schema_version_validity(Client, Input)
  when is_map(Client), is_map(Input) ->
    check_schema_version_validity(Client, Input, []).
check_schema_version_validity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CheckSchemaVersionValidity">>, Input, Options).

%% @doc Registers a blueprint with Glue.
create_blueprint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_blueprint(Client, Input, []).
create_blueprint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBlueprint">>, Input, Options).

%% @doc Creates a classifier in the user's account.
%%
%% This can be a `GrokClassifier', an `XMLClassifier', a `JsonClassifier', or
%% a `CsvClassifier', depending on which field of the request is present.
create_classifier(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_classifier(Client, Input, []).
create_classifier(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateClassifier">>, Input, Options).

%% @doc Creates a connection definition in the Data Catalog.
create_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_connection(Client, Input, []).
create_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConnection">>, Input, Options).

%% @doc Creates a new crawler with specified targets, role, configuration,
%% and optional schedule.
%%
%% At least one crawl target must be specified, in the `s3Targets' field, the
%% `jdbcTargets' field, or the `DynamoDBTargets' field.
create_crawler(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_crawler(Client, Input, []).
create_crawler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCrawler">>, Input, Options).

%% @doc Creates a custom pattern that is used to detect sensitive data across
%% the columns and rows of your structured data.
%%
%% Each custom pattern you create specifies a regular expression and an
%% optional list of context words. If no context words are passed only a
%% regular expression is checked.
create_custom_entity_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_custom_entity_type(Client, Input, []).
create_custom_entity_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCustomEntityType">>, Input, Options).

%% @doc Creates a data quality ruleset with DQDL rules applied to a specified
%% Glue table.
%%
%% You create the ruleset using the Data Quality Definition Language (DQDL).
%% For more information, see the Glue developer guide.
create_data_quality_ruleset(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_data_quality_ruleset(Client, Input, []).
create_data_quality_ruleset(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataQualityRuleset">>, Input, Options).

%% @doc Creates a new database in a Data Catalog.
create_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_database(Client, Input, []).
create_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDatabase">>, Input, Options).

%% @doc Creates a new development endpoint.
create_dev_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_dev_endpoint(Client, Input, []).
create_dev_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDevEndpoint">>, Input, Options).

%% @doc Creates a new job definition.
create_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_job(Client, Input, []).
create_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateJob">>, Input, Options).

%% @doc Creates an Glue machine learning transform.
%%
%% This operation creates the transform and all the necessary parameters to
%% train it.
%%
%% Call this operation as the first step in the process of using a machine
%% learning transform (such as the `FindMatches' transform) for deduplicating
%% data. You can provide an optional `Description', in addition to the
%% parameters that you want to use for your algorithm.
%%
%% You must also specify certain parameters for the tasks that Glue runs on
%% your behalf as part of learning from your data and creating a high-quality
%% machine learning transform. These parameters include `Role', and
%% optionally, `AllocatedCapacity', `Timeout', and `MaxRetries'. For more
%% information, see Jobs.
create_ml_transform(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_ml_transform(Client, Input, []).
create_ml_transform(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateMLTransform">>, Input, Options).

%% @doc Creates a new partition.
create_partition(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_partition(Client, Input, []).
create_partition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePartition">>, Input, Options).

%% @doc Creates a specified partition index in an existing table.
create_partition_index(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_partition_index(Client, Input, []).
create_partition_index(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePartitionIndex">>, Input, Options).

%% @doc Creates a new registry which may be used to hold a collection of
%% schemas.
create_registry(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_registry(Client, Input, []).
create_registry(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRegistry">>, Input, Options).

%% @doc Creates a new schema set and registers the schema definition.
%%
%% Returns an error if the schema set already exists without actually
%% registering the version.
%%
%% When the schema set is created, a version checkpoint will be set to the
%% first version. Compatibility mode "DISABLED" restricts any additional
%% schema versions from being added after the first schema version. For all
%% other compatibility modes, validation of compatibility settings will be
%% applied only from the second version onwards when the
%% `RegisterSchemaVersion' API is used.
%%
%% When this API is called without a `RegistryId', this will create an entry
%% for a "default-registry" in the registry database tables, if it is not
%% already present.
create_schema(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_schema(Client, Input, []).
create_schema(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSchema">>, Input, Options).

%% @doc Transforms a directed acyclic graph (DAG) into code.
create_script(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_script(Client, Input, []).
create_script(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateScript">>, Input, Options).

%% @doc Creates a new security configuration.
%%
%% A security configuration is a set of security properties that can be used
%% by Glue. You can use a security configuration to encrypt data at rest. For
%% information about using security configurations in Glue, see Encrypting
%% Data Written by Crawlers, Jobs, and Development Endpoints.
create_security_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_security_configuration(Client, Input, []).
create_security_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSecurityConfiguration">>, Input, Options).

%% @doc Creates a new session.
create_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_session(Client, Input, []).
create_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSession">>, Input, Options).

%% @doc Creates a new table definition in the Data Catalog.
create_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_table(Client, Input, []).
create_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTable">>, Input, Options).

%% @doc Creates a new trigger.
create_trigger(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_trigger(Client, Input, []).
create_trigger(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTrigger">>, Input, Options).

%% @doc Creates a new function definition in the Data Catalog.
create_user_defined_function(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user_defined_function(Client, Input, []).
create_user_defined_function(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUserDefinedFunction">>, Input, Options).

%% @doc Creates a new workflow.
create_workflow(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_workflow(Client, Input, []).
create_workflow(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWorkflow">>, Input, Options).

%% @doc Deletes an existing blueprint.
delete_blueprint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_blueprint(Client, Input, []).
delete_blueprint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBlueprint">>, Input, Options).

%% @doc Removes a classifier from the Data Catalog.
delete_classifier(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_classifier(Client, Input, []).
delete_classifier(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteClassifier">>, Input, Options).

%% @doc Delete the partition column statistics of a column.
%%
%% The Identity and Access Management (IAM) permission required for this
%% operation is `DeletePartition'.
delete_column_statistics_for_partition(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_column_statistics_for_partition(Client, Input, []).
delete_column_statistics_for_partition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteColumnStatisticsForPartition">>, Input, Options).

%% @doc Retrieves table statistics of columns.
%%
%% The Identity and Access Management (IAM) permission required for this
%% operation is `DeleteTable'.
delete_column_statistics_for_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_column_statistics_for_table(Client, Input, []).
delete_column_statistics_for_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteColumnStatisticsForTable">>, Input, Options).

%% @doc Deletes a connection from the Data Catalog.
delete_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_connection(Client, Input, []).
delete_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConnection">>, Input, Options).

%% @doc Removes a specified crawler from the Glue Data Catalog, unless the
%% crawler state is `RUNNING'.
delete_crawler(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_crawler(Client, Input, []).
delete_crawler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCrawler">>, Input, Options).

%% @doc Deletes a custom pattern by specifying its name.
delete_custom_entity_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_custom_entity_type(Client, Input, []).
delete_custom_entity_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCustomEntityType">>, Input, Options).

%% @doc Deletes a data quality ruleset.
delete_data_quality_ruleset(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_data_quality_ruleset(Client, Input, []).
delete_data_quality_ruleset(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDataQualityRuleset">>, Input, Options).

%% @doc Removes a specified database from a Data Catalog.
%%
%% After completing this operation, you no longer have access to the tables
%% (and all table versions and partitions that might belong to the tables)
%% and the user-defined functions in the deleted database. Glue deletes these
%% "orphaned" resources asynchronously in a timely manner, at the discretion
%% of the service.
%%
%% To ensure the immediate deletion of all related resources, before calling
%% `DeleteDatabase', use `DeleteTableVersion' or `BatchDeleteTableVersion',
%% `DeletePartition' or `BatchDeletePartition', `DeleteUserDefinedFunction',
%% and `DeleteTable' or `BatchDeleteTable', to delete any resources that
%% belong to the database.
delete_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_database(Client, Input, []).
delete_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDatabase">>, Input, Options).

%% @doc Deletes a specified development endpoint.
delete_dev_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_dev_endpoint(Client, Input, []).
delete_dev_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDevEndpoint">>, Input, Options).

%% @doc Deletes a specified job definition.
%%
%% If the job definition is not found, no exception is thrown.
delete_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_job(Client, Input, []).
delete_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteJob">>, Input, Options).

%% @doc Deletes an Glue machine learning transform.
%%
%% Machine learning transforms are a special type of transform that use
%% machine learning to learn the details of the transformation to be
%% performed by learning from examples provided by humans. These
%% transformations are then saved by Glue. If you no longer need a transform,
%% you can delete it by calling `DeleteMLTransforms'. However, any Glue jobs
%% that still reference the deleted transform will no longer succeed.
delete_ml_transform(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_ml_transform(Client, Input, []).
delete_ml_transform(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMLTransform">>, Input, Options).

%% @doc Deletes a specified partition.
delete_partition(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_partition(Client, Input, []).
delete_partition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePartition">>, Input, Options).

%% @doc Deletes a specified partition index from an existing table.
delete_partition_index(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_partition_index(Client, Input, []).
delete_partition_index(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePartitionIndex">>, Input, Options).

%% @doc Delete the entire registry including schema and all of its versions.
%%
%% To get the status of the delete operation, you can call the `GetRegistry'
%% API after the asynchronous call. Deleting a registry will deactivate all
%% online operations for the registry such as the `UpdateRegistry',
%% `CreateSchema', `UpdateSchema', and `RegisterSchemaVersion' APIs.
delete_registry(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_registry(Client, Input, []).
delete_registry(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRegistry">>, Input, Options).

%% @doc Deletes a specified policy.
delete_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_policy(Client, Input, []).
delete_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourcePolicy">>, Input, Options).

%% @doc Deletes the entire schema set, including the schema set and all of
%% its versions.
%%
%% To get the status of the delete operation, you can call `GetSchema' API
%% after the asynchronous call. Deleting a registry will deactivate all
%% online operations for the schema, such as the `GetSchemaByDefinition', and
%% `RegisterSchemaVersion' APIs.
delete_schema(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_schema(Client, Input, []).
delete_schema(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSchema">>, Input, Options).

%% @doc Remove versions from the specified schema.
%%
%% A version number or range may be supplied. If the compatibility mode
%% forbids deleting of a version that is necessary, such as BACKWARDS_FULL,
%% an error is returned. Calling the `GetSchemaVersions' API after this call
%% will list the status of the deleted versions.
%%
%% When the range of version numbers contain check pointed version, the API
%% will return a 409 conflict and will not proceed with the deletion. You
%% have to remove the checkpoint first using the `DeleteSchemaCheckpoint' API
%% before using this API.
%%
%% You cannot use the `DeleteSchemaVersions' API to delete the first schema
%% version in the schema set. The first schema version can only be deleted by
%% the `DeleteSchema' API. This operation will also delete the attached
%% `SchemaVersionMetadata' under the schema versions. Hard deletes will be
%% enforced on the database.
%%
%% If the compatibility mode forbids deleting of a version that is necessary,
%% such as BACKWARDS_FULL, an error is returned.
delete_schema_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_schema_versions(Client, Input, []).
delete_schema_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSchemaVersions">>, Input, Options).

%% @doc Deletes a specified security configuration.
delete_security_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_security_configuration(Client, Input, []).
delete_security_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSecurityConfiguration">>, Input, Options).

%% @doc Deletes the session.
delete_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_session(Client, Input, []).
delete_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSession">>, Input, Options).

%% @doc Removes a table definition from the Data Catalog.
%%
%% After completing this operation, you no longer have access to the table
%% versions and partitions that belong to the deleted table. Glue deletes
%% these "orphaned" resources asynchronously in a timely manner, at the
%% discretion of the service.
%%
%% To ensure the immediate deletion of all related resources, before calling
%% `DeleteTable', use `DeleteTableVersion' or `BatchDeleteTableVersion', and
%% `DeletePartition' or `BatchDeletePartition', to delete any resources that
%% belong to the table.
delete_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_table(Client, Input, []).
delete_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTable">>, Input, Options).

%% @doc Deletes a specified version of a table.
delete_table_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_table_version(Client, Input, []).
delete_table_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTableVersion">>, Input, Options).

%% @doc Deletes a specified trigger.
%%
%% If the trigger is not found, no exception is thrown.
delete_trigger(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_trigger(Client, Input, []).
delete_trigger(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTrigger">>, Input, Options).

%% @doc Deletes an existing function definition from the Data Catalog.
delete_user_defined_function(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user_defined_function(Client, Input, []).
delete_user_defined_function(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUserDefinedFunction">>, Input, Options).

%% @doc Deletes a workflow.
delete_workflow(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_workflow(Client, Input, []).
delete_workflow(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWorkflow">>, Input, Options).

%% @doc Retrieves the details of a blueprint.
get_blueprint(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_blueprint(Client, Input, []).
get_blueprint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBlueprint">>, Input, Options).

%% @doc Retrieves the details of a blueprint run.
get_blueprint_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_blueprint_run(Client, Input, []).
get_blueprint_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBlueprintRun">>, Input, Options).

%% @doc Retrieves the details of blueprint runs for a specified blueprint.
get_blueprint_runs(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_blueprint_runs(Client, Input, []).
get_blueprint_runs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBlueprintRuns">>, Input, Options).

%% @doc Retrieves the status of a migration operation.
get_catalog_import_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_catalog_import_status(Client, Input, []).
get_catalog_import_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCatalogImportStatus">>, Input, Options).

%% @doc Retrieve a classifier by name.
get_classifier(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_classifier(Client, Input, []).
get_classifier(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetClassifier">>, Input, Options).

%% @doc Lists all classifier objects in the Data Catalog.
get_classifiers(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_classifiers(Client, Input, []).
get_classifiers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetClassifiers">>, Input, Options).

%% @doc Retrieves partition statistics of columns.
%%
%% The Identity and Access Management (IAM) permission required for this
%% operation is `GetPartition'.
get_column_statistics_for_partition(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_column_statistics_for_partition(Client, Input, []).
get_column_statistics_for_partition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetColumnStatisticsForPartition">>, Input, Options).

%% @doc Retrieves table statistics of columns.
%%
%% The Identity and Access Management (IAM) permission required for this
%% operation is `GetTable'.
get_column_statistics_for_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_column_statistics_for_table(Client, Input, []).
get_column_statistics_for_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetColumnStatisticsForTable">>, Input, Options).

%% @doc Retrieves a connection definition from the Data Catalog.
get_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_connection(Client, Input, []).
get_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetConnection">>, Input, Options).

%% @doc Retrieves a list of connection definitions from the Data Catalog.
get_connections(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_connections(Client, Input, []).
get_connections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetConnections">>, Input, Options).

%% @doc Retrieves metadata for a specified crawler.
get_crawler(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_crawler(Client, Input, []).
get_crawler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCrawler">>, Input, Options).

%% @doc Retrieves metrics about specified crawlers.
get_crawler_metrics(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_crawler_metrics(Client, Input, []).
get_crawler_metrics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCrawlerMetrics">>, Input, Options).

%% @doc Retrieves metadata for all crawlers defined in the customer account.
get_crawlers(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_crawlers(Client, Input, []).
get_crawlers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCrawlers">>, Input, Options).

%% @doc Retrieves the details of a custom pattern by specifying its name.
get_custom_entity_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_custom_entity_type(Client, Input, []).
get_custom_entity_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCustomEntityType">>, Input, Options).

%% @doc Retrieves the security configuration for a specified catalog.
get_data_catalog_encryption_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_data_catalog_encryption_settings(Client, Input, []).
get_data_catalog_encryption_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDataCatalogEncryptionSettings">>, Input, Options).

%% @doc Retrieves the result of a data quality rule evaluation.
get_data_quality_result(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_data_quality_result(Client, Input, []).
get_data_quality_result(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDataQualityResult">>, Input, Options).

%% @doc Gets the specified recommendation run that was used to generate
%% rules.
get_data_quality_rule_recommendation_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_data_quality_rule_recommendation_run(Client, Input, []).
get_data_quality_rule_recommendation_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDataQualityRuleRecommendationRun">>, Input, Options).

%% @doc Returns an existing ruleset by identifier or name.
get_data_quality_ruleset(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_data_quality_ruleset(Client, Input, []).
get_data_quality_ruleset(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDataQualityRuleset">>, Input, Options).

%% @doc Retrieves a specific run where a ruleset is evaluated against a data
%% source.
get_data_quality_ruleset_evaluation_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_data_quality_ruleset_evaluation_run(Client, Input, []).
get_data_quality_ruleset_evaluation_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDataQualityRulesetEvaluationRun">>, Input, Options).

%% @doc Retrieves the definition of a specified database.
get_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_database(Client, Input, []).
get_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDatabase">>, Input, Options).

%% @doc Retrieves all databases defined in a given Data Catalog.
get_databases(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_databases(Client, Input, []).
get_databases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDatabases">>, Input, Options).

%% @doc Transforms a Python script into a directed acyclic graph (DAG).
get_dataflow_graph(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_dataflow_graph(Client, Input, []).
get_dataflow_graph(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDataflowGraph">>, Input, Options).

%% @doc Retrieves information about a specified development endpoint.
%%
%% When you create a development endpoint in a virtual private cloud (VPC),
%% Glue returns only a private IP address, and the public IP address field is
%% not populated. When you create a non-VPC development endpoint, Glue
%% returns only a public IP address.
get_dev_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_dev_endpoint(Client, Input, []).
get_dev_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDevEndpoint">>, Input, Options).

%% @doc Retrieves all the development endpoints in this Amazon Web Services
%% account.
%%
%% When you create a development endpoint in a virtual private cloud (VPC),
%% Glue returns only a private IP address and the public IP address field is
%% not populated. When you create a non-VPC development endpoint, Glue
%% returns only a public IP address.
get_dev_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_dev_endpoints(Client, Input, []).
get_dev_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDevEndpoints">>, Input, Options).

%% @doc Retrieves an existing job definition.
get_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_job(Client, Input, []).
get_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetJob">>, Input, Options).

%% @doc Returns information on a job bookmark entry.
%%
%% For more information about enabling and using job bookmarks, see:
%%
%% <ul> <li> Tracking processed data using job bookmarks
%%
%% </li> <li> Job parameters used by Glue
%%
%% </li> <li> Job structure
%%
%% </li> </ul>
get_job_bookmark(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_job_bookmark(Client, Input, []).
get_job_bookmark(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetJobBookmark">>, Input, Options).

%% @doc Retrieves the metadata for a given job run.
get_job_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_job_run(Client, Input, []).
get_job_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetJobRun">>, Input, Options).

%% @doc Retrieves metadata for all runs of a given job definition.
get_job_runs(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_job_runs(Client, Input, []).
get_job_runs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetJobRuns">>, Input, Options).

%% @doc Retrieves all current job definitions.
get_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_jobs(Client, Input, []).
get_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetJobs">>, Input, Options).

%% @doc Creates mappings.
get_mapping(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_mapping(Client, Input, []).
get_mapping(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMapping">>, Input, Options).

%% @doc Gets details for a specific task run on a machine learning transform.
%%
%% Machine learning task runs are asynchronous tasks that Glue runs on your
%% behalf as part of various machine learning workflows. You can check the
%% stats of any task run by calling `GetMLTaskRun' with the `TaskRunID' and
%% its parent transform's `TransformID'.
get_ml_task_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ml_task_run(Client, Input, []).
get_ml_task_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMLTaskRun">>, Input, Options).

%% @doc Gets a list of runs for a machine learning transform.
%%
%% Machine learning task runs are asynchronous tasks that Glue runs on your
%% behalf as part of various machine learning workflows. You can get a
%% sortable, filterable list of machine learning task runs by calling
%% `GetMLTaskRuns' with their parent transform's `TransformID' and other
%% optional parameters as documented in this section.
%%
%% This operation returns a list of historic runs and must be paginated.
get_ml_task_runs(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ml_task_runs(Client, Input, []).
get_ml_task_runs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMLTaskRuns">>, Input, Options).

%% @doc Gets an Glue machine learning transform artifact and all its
%% corresponding metadata.
%%
%% Machine learning transforms are a special type of transform that use
%% machine learning to learn the details of the transformation to be
%% performed by learning from examples provided by humans. These
%% transformations are then saved by Glue. You can retrieve their metadata by
%% calling `GetMLTransform'.
get_ml_transform(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ml_transform(Client, Input, []).
get_ml_transform(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMLTransform">>, Input, Options).

%% @doc Gets a sortable, filterable list of existing Glue machine learning
%% transforms.
%%
%% Machine learning transforms are a special type of transform that use
%% machine learning to learn the details of the transformation to be
%% performed by learning from examples provided by humans. These
%% transformations are then saved by Glue, and you can retrieve their
%% metadata by calling `GetMLTransforms'.
get_ml_transforms(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ml_transforms(Client, Input, []).
get_ml_transforms(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMLTransforms">>, Input, Options).

%% @doc Retrieves information about a specified partition.
get_partition(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_partition(Client, Input, []).
get_partition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPartition">>, Input, Options).

%% @doc Retrieves the partition indexes associated with a table.
get_partition_indexes(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_partition_indexes(Client, Input, []).
get_partition_indexes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPartitionIndexes">>, Input, Options).

%% @doc Retrieves information about the partitions in a table.
get_partitions(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_partitions(Client, Input, []).
get_partitions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPartitions">>, Input, Options).

%% @doc Gets code to perform a specified mapping.
get_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_plan(Client, Input, []).
get_plan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPlan">>, Input, Options).

%% @doc Describes the specified registry in detail.
get_registry(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_registry(Client, Input, []).
get_registry(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRegistry">>, Input, Options).

%% @doc Retrieves the resource policies set on individual resources by
%% Resource Access Manager during cross-account permission grants.
%%
%% Also retrieves the Data Catalog resource policy.
%%
%% If you enabled metadata encryption in Data Catalog settings, and you do
%% not have permission on the KMS key, the operation can't return the Data
%% Catalog resource policy.
get_resource_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_policies(Client, Input, []).
get_resource_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourcePolicies">>, Input, Options).

%% @doc Retrieves a specified resource policy.
get_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_policy(Client, Input, []).
get_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourcePolicy">>, Input, Options).

%% @doc Describes the specified schema in detail.
get_schema(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_schema(Client, Input, []).
get_schema(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSchema">>, Input, Options).

%% @doc Retrieves a schema by the `SchemaDefinition'.
%%
%% The schema definition is sent to the Schema Registry, canonicalized, and
%% hashed. If the hash is matched within the scope of the `SchemaName' or ARN
%% (or the default registry, if none is supplied), that schema’s metadata is
%% returned. Otherwise, a 404 or NotFound error is returned. Schema versions
%% in `Deleted' statuses will not be included in the results.
get_schema_by_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_schema_by_definition(Client, Input, []).
get_schema_by_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSchemaByDefinition">>, Input, Options).

%% @doc Get the specified schema by its unique ID assigned when a version of
%% the schema is created or registered.
%%
%% Schema versions in Deleted status will not be included in the results.
get_schema_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_schema_version(Client, Input, []).
get_schema_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSchemaVersion">>, Input, Options).

%% @doc Fetches the schema version difference in the specified difference
%% type between two stored schema versions in the Schema Registry.
%%
%% This API allows you to compare two schema versions between two schema
%% definitions under the same schema.
get_schema_versions_diff(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_schema_versions_diff(Client, Input, []).
get_schema_versions_diff(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSchemaVersionsDiff">>, Input, Options).

%% @doc Retrieves a specified security configuration.
get_security_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_security_configuration(Client, Input, []).
get_security_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSecurityConfiguration">>, Input, Options).

%% @doc Retrieves a list of all security configurations.
get_security_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_security_configurations(Client, Input, []).
get_security_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSecurityConfigurations">>, Input, Options).

%% @doc Retrieves the session.
get_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_session(Client, Input, []).
get_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSession">>, Input, Options).

%% @doc Retrieves the statement.
get_statement(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_statement(Client, Input, []).
get_statement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetStatement">>, Input, Options).

%% @doc Retrieves the `Table' definition in a Data Catalog for a specified
%% table.
get_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_table(Client, Input, []).
get_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTable">>, Input, Options).

%% @doc Retrieves a specified version of a table.
get_table_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_table_version(Client, Input, []).
get_table_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTableVersion">>, Input, Options).

%% @doc Retrieves a list of strings that identify available versions of a
%% specified table.
get_table_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_table_versions(Client, Input, []).
get_table_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTableVersions">>, Input, Options).

%% @doc Retrieves the definitions of some or all of the tables in a given
%% `Database'.
get_tables(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_tables(Client, Input, []).
get_tables(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTables">>, Input, Options).

%% @doc Retrieves a list of tags associated with a resource.
get_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_tags(Client, Input, []).
get_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTags">>, Input, Options).

%% @doc Retrieves the definition of a trigger.
get_trigger(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_trigger(Client, Input, []).
get_trigger(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTrigger">>, Input, Options).

%% @doc Gets all the triggers associated with a job.
get_triggers(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_triggers(Client, Input, []).
get_triggers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTriggers">>, Input, Options).


get_unfiltered_partition_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_unfiltered_partition_metadata(Client, Input, []).
get_unfiltered_partition_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUnfilteredPartitionMetadata">>, Input, Options).


get_unfiltered_partitions_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_unfiltered_partitions_metadata(Client, Input, []).
get_unfiltered_partitions_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUnfilteredPartitionsMetadata">>, Input, Options).


get_unfiltered_table_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_unfiltered_table_metadata(Client, Input, []).
get_unfiltered_table_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUnfilteredTableMetadata">>, Input, Options).

%% @doc Retrieves a specified function definition from the Data Catalog.
get_user_defined_function(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_user_defined_function(Client, Input, []).
get_user_defined_function(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUserDefinedFunction">>, Input, Options).

%% @doc Retrieves multiple function definitions from the Data Catalog.
get_user_defined_functions(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_user_defined_functions(Client, Input, []).
get_user_defined_functions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUserDefinedFunctions">>, Input, Options).

%% @doc Retrieves resource metadata for a workflow.
get_workflow(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_workflow(Client, Input, []).
get_workflow(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetWorkflow">>, Input, Options).

%% @doc Retrieves the metadata for a given workflow run.
get_workflow_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_workflow_run(Client, Input, []).
get_workflow_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetWorkflowRun">>, Input, Options).

%% @doc Retrieves the workflow run properties which were set during the run.
get_workflow_run_properties(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_workflow_run_properties(Client, Input, []).
get_workflow_run_properties(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetWorkflowRunProperties">>, Input, Options).

%% @doc Retrieves metadata for all runs of a given workflow.
get_workflow_runs(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_workflow_runs(Client, Input, []).
get_workflow_runs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetWorkflowRuns">>, Input, Options).

%% @doc Imports an existing Amazon Athena Data Catalog to Glue.
import_catalog_to_glue(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_catalog_to_glue(Client, Input, []).
import_catalog_to_glue(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportCatalogToGlue">>, Input, Options).

%% @doc Lists all the blueprint names in an account.
list_blueprints(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_blueprints(Client, Input, []).
list_blueprints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBlueprints">>, Input, Options).

%% @doc Retrieves the names of all crawler resources in this Amazon Web
%% Services account, or the resources with the specified tag.
%%
%% This operation allows you to see which resources are available in your
%% account, and their names.
%%
%% This operation takes the optional `Tags' field, which you can use as a
%% filter on the response so that tagged resources can be retrieved as a
%% group. If you choose to use tags filtering, only resources with the tag
%% are retrieved.
list_crawlers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_crawlers(Client, Input, []).
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
%% <ul> <li> Retrive all the crawls of a specified crawler.
%%
%% </li> <li> Retrieve all the crawls of a specified crawler within a limited
%% count.
%%
%% </li> <li> Retrieve all the crawls of a specified crawler in a specific
%% time range.
%%
%% </li> <li> Retrieve all the crawls of a specified crawler with a
%% particular state, crawl ID, or DPU hour value.
%%
%% </li> </ul>
list_crawls(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_crawls(Client, Input, []).
list_crawls(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCrawls">>, Input, Options).

%% @doc Lists all the custom patterns that have been created.
list_custom_entity_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_custom_entity_types(Client, Input, []).
list_custom_entity_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCustomEntityTypes">>, Input, Options).

%% @doc Returns all data quality execution results for your account.
list_data_quality_results(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_data_quality_results(Client, Input, []).
list_data_quality_results(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDataQualityResults">>, Input, Options).

%% @doc Lists the recommendation runs meeting the filter criteria.
list_data_quality_rule_recommendation_runs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_data_quality_rule_recommendation_runs(Client, Input, []).
list_data_quality_rule_recommendation_runs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDataQualityRuleRecommendationRuns">>, Input, Options).

%% @doc Lists all the runs meeting the filter criteria, where a ruleset is
%% evaluated against a data source.
list_data_quality_ruleset_evaluation_runs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_data_quality_ruleset_evaluation_runs(Client, Input, []).
list_data_quality_ruleset_evaluation_runs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDataQualityRulesetEvaluationRuns">>, Input, Options).

%% @doc Returns a paginated list of rulesets for the specified list of Glue
%% tables.
list_data_quality_rulesets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_data_quality_rulesets(Client, Input, []).
list_data_quality_rulesets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDataQualityRulesets">>, Input, Options).

%% @doc Retrieves the names of all `DevEndpoint' resources in this Amazon Web
%% Services account, or the resources with the specified tag.
%%
%% This operation allows you to see which resources are available in your
%% account, and their names.
%%
%% This operation takes the optional `Tags' field, which you can use as a
%% filter on the response so that tagged resources can be retrieved as a
%% group. If you choose to use tags filtering, only resources with the tag
%% are retrieved.
list_dev_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_dev_endpoints(Client, Input, []).
list_dev_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDevEndpoints">>, Input, Options).

%% @doc Retrieves the names of all job resources in this Amazon Web Services
%% account, or the resources with the specified tag.
%%
%% This operation allows you to see which resources are available in your
%% account, and their names.
%%
%% This operation takes the optional `Tags' field, which you can use as a
%% filter on the response so that tagged resources can be retrieved as a
%% group. If you choose to use tags filtering, only resources with the tag
%% are retrieved.
list_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_jobs(Client, Input, []).
list_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListJobs">>, Input, Options).

%% @doc Retrieves a sortable, filterable list of existing Glue machine
%% learning transforms in this Amazon Web Services account, or the resources
%% with the specified tag.
%%
%% This operation takes the optional `Tags' field, which you can use as a
%% filter of the responses so that tagged resources can be retrieved as a
%% group. If you choose to use tag filtering, only resources with the tags
%% are retrieved.
list_ml_transforms(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_ml_transforms(Client, Input, []).
list_ml_transforms(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMLTransforms">>, Input, Options).

%% @doc Returns a list of registries that you have created, with minimal
%% registry information.
%%
%% Registries in the `Deleting' status will not be included in the results.
%% Empty results will be returned if there are no registries available.
list_registries(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_registries(Client, Input, []).
list_registries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRegistries">>, Input, Options).

%% @doc Returns a list of schema versions that you have created, with minimal
%% information.
%%
%% Schema versions in Deleted status will not be included in the results.
%% Empty results will be returned if there are no schema versions available.
list_schema_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_schema_versions(Client, Input, []).
list_schema_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSchemaVersions">>, Input, Options).

%% @doc Returns a list of schemas with minimal details.
%%
%% Schemas in Deleting status will not be included in the results. Empty
%% results will be returned if there are no schemas available.
%%
%% When the `RegistryId' is not provided, all the schemas across registries
%% will be part of the API response.
list_schemas(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_schemas(Client, Input, []).
list_schemas(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSchemas">>, Input, Options).

%% @doc Retrieve a list of sessions.
list_sessions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_sessions(Client, Input, []).
list_sessions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSessions">>, Input, Options).

%% @doc Lists statements for the session.
list_statements(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_statements(Client, Input, []).
list_statements(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStatements">>, Input, Options).

%% @doc Retrieves the names of all trigger resources in this Amazon Web
%% Services account, or the resources with the specified tag.
%%
%% This operation allows you to see which resources are available in your
%% account, and their names.
%%
%% This operation takes the optional `Tags' field, which you can use as a
%% filter on the response so that tagged resources can be retrieved as a
%% group. If you choose to use tags filtering, only resources with the tag
%% are retrieved.
list_triggers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_triggers(Client, Input, []).
list_triggers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTriggers">>, Input, Options).

%% @doc Lists names of workflows created in the account.
list_workflows(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_workflows(Client, Input, []).
list_workflows(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWorkflows">>, Input, Options).

%% @doc Sets the security configuration for a specified catalog.
%%
%% After the configuration has been set, the specified encryption is applied
%% to every catalog write thereafter.
put_data_catalog_encryption_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_data_catalog_encryption_settings(Client, Input, []).
put_data_catalog_encryption_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutDataCatalogEncryptionSettings">>, Input, Options).

%% @doc Sets the Data Catalog resource policy for access control.
put_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resource_policy(Client, Input, []).
put_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResourcePolicy">>, Input, Options).

%% @doc Puts the metadata key value pair for a specified schema version ID.
%%
%% A maximum of 10 key value pairs will be allowed per schema version. They
%% can be added over one or more calls.
put_schema_version_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_schema_version_metadata(Client, Input, []).
put_schema_version_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutSchemaVersionMetadata">>, Input, Options).

%% @doc Puts the specified workflow run properties for the given workflow
%% run.
%%
%% If a property already exists for the specified run, then it overrides the
%% value otherwise adds the property to existing properties.
put_workflow_run_properties(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_workflow_run_properties(Client, Input, []).
put_workflow_run_properties(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutWorkflowRunProperties">>, Input, Options).

%% @doc Queries for the schema version metadata information.
query_schema_version_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    query_schema_version_metadata(Client, Input, []).
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
%% due to compatibility modes. You can call the `GetSchemaVersion' API with
%% the `SchemaVersionId' to check compatibility modes.
%%
%% If the same schema definition is already stored in Schema Registry as a
%% version, the schema ID of the existing schema is returned to the caller.
register_schema_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_schema_version(Client, Input, []).
register_schema_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterSchemaVersion">>, Input, Options).

%% @doc Removes a key value pair from the schema version metadata for the
%% specified schema version ID.
remove_schema_version_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_schema_version_metadata(Client, Input, []).
remove_schema_version_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveSchemaVersionMetadata">>, Input, Options).

%% @doc Resets a bookmark entry.
%%
%% For more information about enabling and using job bookmarks, see:
%%
%% <ul> <li> Tracking processed data using job bookmarks
%%
%% </li> <li> Job parameters used by Glue
%%
%% </li> <li> Job structure
%%
%% </li> </ul>
reset_job_bookmark(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_job_bookmark(Client, Input, []).
reset_job_bookmark(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetJobBookmark">>, Input, Options).

%% @doc Restarts selected nodes of a previous partially completed workflow
%% run and resumes the workflow run.
%%
%% The selected nodes and all nodes that are downstream from the selected
%% nodes are run.
resume_workflow_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    resume_workflow_run(Client, Input, []).
resume_workflow_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResumeWorkflowRun">>, Input, Options).

%% @doc Executes the statement.
run_statement(Client, Input)
  when is_map(Client), is_map(Input) ->
    run_statement(Client, Input, []).
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
search_tables(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_tables(Client, Input, []).
search_tables(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchTables">>, Input, Options).

%% @doc Starts a new run of the specified blueprint.
start_blueprint_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_blueprint_run(Client, Input, []).
start_blueprint_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartBlueprintRun">>, Input, Options).

%% @doc Starts a crawl using the specified crawler, regardless of what is
%% scheduled.
%%
%% If the crawler is already running, returns a CrawlerRunningException.
start_crawler(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_crawler(Client, Input, []).
start_crawler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartCrawler">>, Input, Options).

%% @doc Changes the schedule state of the specified crawler to `SCHEDULED',
%% unless the crawler is already running or the schedule state is already
%% `SCHEDULED'.
start_crawler_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_crawler_schedule(Client, Input, []).
start_crawler_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartCrawlerSchedule">>, Input, Options).

%% @doc Starts a recommendation run that is used to generate rules when you
%% don't know what rules to write.
%%
%% Glue Data Quality analyzes the data and comes up with recommendations for
%% a potential ruleset. You can then triage the ruleset and modify the
%% generated ruleset to your liking.
start_data_quality_rule_recommendation_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_data_quality_rule_recommendation_run(Client, Input, []).
start_data_quality_rule_recommendation_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDataQualityRuleRecommendationRun">>, Input, Options).

%% @doc Once you have a ruleset definition (either recommended or your own),
%% you call this operation to evaluate the ruleset against a data source
%% (Glue table).
%%
%% The evaluation computes results which you can retrieve with the
%% `GetDataQualityResult' API.
start_data_quality_ruleset_evaluation_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_data_quality_ruleset_evaluation_run(Client, Input, []).
start_data_quality_ruleset_evaluation_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDataQualityRulesetEvaluationRun">>, Input, Options).

%% @doc Begins an asynchronous task to export all labeled data for a
%% particular transform.
%%
%% This task is the only label-related API call that is not part of the
%% typical active learning workflow. You typically use
%% `StartExportLabelsTaskRun' when you want to work with all of your existing
%% labels at the same time, such as when you want to remove or change labels
%% that were previously submitted as truth. This API operation accepts the
%% `TransformId' whose labels you want to export and an Amazon Simple Storage
%% Service (Amazon S3) path to export the labels to. The operation returns a
%% `TaskRunId'. You can check on the status of your task run by calling the
%% `GetMLTaskRun' API.
start_export_labels_task_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_export_labels_task_run(Client, Input, []).
start_export_labels_task_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartExportLabelsTaskRun">>, Input, Options).

%% @doc Enables you to provide additional labels (examples of truth) to be
%% used to teach the machine learning transform and improve its quality.
%%
%% This API operation is generally used as part of the active learning
%% workflow that starts with the `StartMLLabelingSetGenerationTaskRun' call
%% and that ultimately results in improving the quality of your machine
%% learning transform.
%%
%% After the `StartMLLabelingSetGenerationTaskRun' finishes, Glue machine
%% learning will have generated a series of questions for humans to answer.
%% (Answering these questions is often called 'labeling' in the machine
%% learning workflows). In the case of the `FindMatches' transform, these
%% questions are of the form, “What is the correct way to group these rows
%% together into groups composed entirely of matching records?” After the
%% labeling process is finished, users upload their answers/labels with a
%% call to `StartImportLabelsTaskRun'. After `StartImportLabelsTaskRun'
%% finishes, all future runs of the machine learning transform use the new
%% and improved labels and perform a higher-quality transformation.
%%
%% By default, `StartMLLabelingSetGenerationTaskRun' continually learns from
%% and combines all labels that you upload unless you set `Replace' to true.
%% If you set `Replace' to true, `StartImportLabelsTaskRun' deletes and
%% forgets all previously uploaded labels and learns only from the exact set
%% that you upload. Replacing labels can be helpful if you realize that you
%% previously uploaded incorrect labels, and you believe that they are having
%% a negative effect on your transform quality.
%%
%% You can check on the status of your task run by calling the `GetMLTaskRun'
%% operation.
start_import_labels_task_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_import_labels_task_run(Client, Input, []).
start_import_labels_task_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartImportLabelsTaskRun">>, Input, Options).

%% @doc Starts a job run using a job definition.
start_job_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_job_run(Client, Input, []).
start_job_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartJobRun">>, Input, Options).

%% @doc Starts a task to estimate the quality of the transform.
%%
%% When you provide label sets as examples of truth, Glue machine learning
%% uses some of those examples to learn from them. The rest of the labels are
%% used as a test to estimate quality.
%%
%% Returns a unique identifier for the run. You can call `GetMLTaskRun' to
%% get more information about the stats of the `EvaluationTaskRun'.
start_ml_evaluation_task_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_ml_evaluation_task_run(Client, Input, []).
start_ml_evaluation_task_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMLEvaluationTaskRun">>, Input, Options).

%% @doc Starts the active learning workflow for your machine learning
%% transform to improve the transform's quality by generating label sets and
%% adding labels.
%%
%% When the `StartMLLabelingSetGenerationTaskRun' finishes, Glue will have
%% generated a "labeling set" or a set of questions for humans to answer.
%%
%% In the case of the `FindMatches' transform, these questions are of the
%% form, “What is the correct way to group these rows together into groups
%% composed entirely of matching records?”
%%
%% After the labeling process is finished, you can upload your labels with a
%% call to `StartImportLabelsTaskRun'. After `StartImportLabelsTaskRun'
%% finishes, all future runs of the machine learning transform will use the
%% new and improved labels and perform a higher-quality transformation.
start_ml_labeling_set_generation_task_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_ml_labeling_set_generation_task_run(Client, Input, []).
start_ml_labeling_set_generation_task_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMLLabelingSetGenerationTaskRun">>, Input, Options).

%% @doc Starts an existing trigger.
%%
%% See Triggering Jobs for information about how different types of trigger
%% are started.
start_trigger(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_trigger(Client, Input, []).
start_trigger(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartTrigger">>, Input, Options).

%% @doc Starts a new run of the specified workflow.
start_workflow_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_workflow_run(Client, Input, []).
start_workflow_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartWorkflowRun">>, Input, Options).

%% @doc If the specified crawler is running, stops the crawl.
stop_crawler(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_crawler(Client, Input, []).
stop_crawler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopCrawler">>, Input, Options).

%% @doc Sets the schedule state of the specified crawler to `NOT_SCHEDULED',
%% but does not stop the crawler if it is already running.
stop_crawler_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_crawler_schedule(Client, Input, []).
stop_crawler_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopCrawlerSchedule">>, Input, Options).

%% @doc Stops the session.
stop_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_session(Client, Input, []).
stop_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopSession">>, Input, Options).

%% @doc Stops a specified trigger.
stop_trigger(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_trigger(Client, Input, []).
stop_trigger(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopTrigger">>, Input, Options).

%% @doc Stops the execution of the specified workflow run.
stop_workflow_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_workflow_run(Client, Input, []).
stop_workflow_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopWorkflowRun">>, Input, Options).

%% @doc Adds tags to a resource.
%%
%% A tag is a label you can assign to an Amazon Web Services resource. In
%% Glue, you can tag only certain resources. For information about what
%% resources you can tag, see Amazon Web Services Tags in Glue.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes tags from a resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates a registered blueprint.
update_blueprint(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_blueprint(Client, Input, []).
update_blueprint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateBlueprint">>, Input, Options).

%% @doc Modifies an existing classifier (a `GrokClassifier', an
%% `XMLClassifier', a `JsonClassifier', or a `CsvClassifier', depending on
%% which field is present).
update_classifier(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_classifier(Client, Input, []).
update_classifier(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateClassifier">>, Input, Options).

%% @doc Creates or updates partition statistics of columns.
%%
%% The Identity and Access Management (IAM) permission required for this
%% operation is `UpdatePartition'.
update_column_statistics_for_partition(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_column_statistics_for_partition(Client, Input, []).
update_column_statistics_for_partition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateColumnStatisticsForPartition">>, Input, Options).

%% @doc Creates or updates table statistics of columns.
%%
%% The Identity and Access Management (IAM) permission required for this
%% operation is `UpdateTable'.
update_column_statistics_for_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_column_statistics_for_table(Client, Input, []).
update_column_statistics_for_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateColumnStatisticsForTable">>, Input, Options).

%% @doc Updates a connection definition in the Data Catalog.
update_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_connection(Client, Input, []).
update_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateConnection">>, Input, Options).

%% @doc Updates a crawler.
%%
%% If a crawler is running, you must stop it using `StopCrawler' before
%% updating it.
update_crawler(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_crawler(Client, Input, []).
update_crawler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCrawler">>, Input, Options).

%% @doc Updates the schedule of a crawler using a `cron' expression.
update_crawler_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_crawler_schedule(Client, Input, []).
update_crawler_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCrawlerSchedule">>, Input, Options).

%% @doc Updates the specified data quality ruleset.
update_data_quality_ruleset(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_data_quality_ruleset(Client, Input, []).
update_data_quality_ruleset(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDataQualityRuleset">>, Input, Options).

%% @doc Updates an existing database definition in a Data Catalog.
update_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_database(Client, Input, []).
update_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDatabase">>, Input, Options).

%% @doc Updates a specified development endpoint.
update_dev_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_dev_endpoint(Client, Input, []).
update_dev_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDevEndpoint">>, Input, Options).

%% @doc Updates an existing job definition.
%%
%% The previous job definition is completely overwritten by this information.
update_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_job(Client, Input, []).
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
update_job_from_source_control(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_job_from_source_control(Client, Input, []).
update_job_from_source_control(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateJobFromSourceControl">>, Input, Options).

%% @doc Updates an existing machine learning transform.
%%
%% Call this operation to tune the algorithm parameters to achieve better
%% results.
%%
%% After calling this operation, you can call the `StartMLEvaluationTaskRun'
%% operation to assess how well your new parameters achieved your goals (such
%% as improving the quality of your machine learning transform, or making it
%% more cost-effective).
update_ml_transform(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_ml_transform(Client, Input, []).
update_ml_transform(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMLTransform">>, Input, Options).

%% @doc Updates a partition.
update_partition(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_partition(Client, Input, []).
update_partition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePartition">>, Input, Options).

%% @doc Updates an existing registry which is used to hold a collection of
%% schemas.
%%
%% The updated properties relate to the registry, and do not modify any of
%% the schemas within the registry.
update_registry(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_registry(Client, Input, []).
update_registry(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRegistry">>, Input, Options).

%% @doc Updates the description, compatibility setting, or version checkpoint
%% for a schema set.
%%
%% For updating the compatibility setting, the call will not validate
%% compatibility for the entire set of schema versions with the new
%% compatibility setting. If the value for `Compatibility' is provided, the
%% `VersionNumber' (a checkpoint) is also required. The API will validate the
%% checkpoint version number for consistency.
%%
%% If the value for the `VersionNumber' (checkpoint) is provided,
%% `Compatibility' is optional and this can be used to set/reset a checkpoint
%% for the schema.
%%
%% This update will happen only if the schema is in the AVAILABLE state.
update_schema(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_schema(Client, Input, []).
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
update_source_control_from_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_source_control_from_job(Client, Input, []).
update_source_control_from_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSourceControlFromJob">>, Input, Options).

%% @doc Updates a metadata table in the Data Catalog.
update_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_table(Client, Input, []).
update_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTable">>, Input, Options).

%% @doc Updates a trigger definition.
update_trigger(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_trigger(Client, Input, []).
update_trigger(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTrigger">>, Input, Options).

%% @doc Updates an existing function definition in the Data Catalog.
update_user_defined_function(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_user_defined_function(Client, Input, []).
update_user_defined_function(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateUserDefinedFunction">>, Input, Options).

%% @doc Updates an existing workflow.
update_workflow(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_workflow(Client, Input, []).
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
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
