%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Glue DataBrew is a visual, cloud-scale data-preparation service.
%%
%% DataBrew
%% simplifies data preparation tasks, targeting data issues that are hard to
%% spot and
%% time-consuming to fix. DataBrew empowers users of all technical levels to
%% visualize the
%% data and perform one-click data transformations, with no coding required.
-module(aws_databrew).

-export([batch_delete_recipe_version/3,
         batch_delete_recipe_version/4,
         create_dataset/2,
         create_dataset/3,
         create_profile_job/2,
         create_profile_job/3,
         create_project/2,
         create_project/3,
         create_recipe/2,
         create_recipe/3,
         create_recipe_job/2,
         create_recipe_job/3,
         create_ruleset/2,
         create_ruleset/3,
         create_schedule/2,
         create_schedule/3,
         delete_dataset/3,
         delete_dataset/4,
         delete_job/3,
         delete_job/4,
         delete_project/3,
         delete_project/4,
         delete_recipe_version/4,
         delete_recipe_version/5,
         delete_ruleset/3,
         delete_ruleset/4,
         delete_schedule/3,
         delete_schedule/4,
         describe_dataset/2,
         describe_dataset/4,
         describe_dataset/5,
         describe_job/2,
         describe_job/4,
         describe_job/5,
         describe_job_run/3,
         describe_job_run/5,
         describe_job_run/6,
         describe_project/2,
         describe_project/4,
         describe_project/5,
         describe_recipe/2,
         describe_recipe/4,
         describe_recipe/5,
         describe_ruleset/2,
         describe_ruleset/4,
         describe_ruleset/5,
         describe_schedule/2,
         describe_schedule/4,
         describe_schedule/5,
         list_datasets/1,
         list_datasets/3,
         list_datasets/4,
         list_job_runs/2,
         list_job_runs/4,
         list_job_runs/5,
         list_jobs/1,
         list_jobs/3,
         list_jobs/4,
         list_projects/1,
         list_projects/3,
         list_projects/4,
         list_recipe_versions/2,
         list_recipe_versions/4,
         list_recipe_versions/5,
         list_recipes/1,
         list_recipes/3,
         list_recipes/4,
         list_rulesets/1,
         list_rulesets/3,
         list_rulesets/4,
         list_schedules/1,
         list_schedules/3,
         list_schedules/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         publish_recipe/3,
         publish_recipe/4,
         send_project_session_action/3,
         send_project_session_action/4,
         start_job_run/3,
         start_job_run/4,
         start_project_session/3,
         start_project_session/4,
         stop_job_run/4,
         stop_job_run/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_dataset/3,
         update_dataset/4,
         update_profile_job/3,
         update_profile_job/4,
         update_project/3,
         update_project/4,
         update_recipe/3,
         update_recipe/4,
         update_recipe_job/3,
         update_recipe_job/4,
         update_ruleset/3,
         update_ruleset/4,
         update_schedule/3,
         update_schedule/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% batch_delete_recipe_version_response() :: #{
%%   <<"Errors">> => list(recipe_version_error_detail()),
%%   <<"Name">> => string()
%% }
-type batch_delete_recipe_version_response() :: #{binary() => any()}.


%% Example:
%% describe_project_response() :: #{
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"CreatedBy">> => string(),
%%   <<"DatasetName">> => string(),
%%   <<"LastModifiedBy">> => string(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"OpenDate">> => non_neg_integer(),
%%   <<"OpenedBy">> => string(),
%%   <<"RecipeName">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"Sample">> => sample(),
%%   <<"SessionStatus">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type describe_project_response() :: #{binary() => any()}.


%% Example:
%% database_output() :: #{
%%   <<"DatabaseOptions">> => database_table_output_options(),
%%   <<"DatabaseOutputMode">> => list(any()),
%%   <<"GlueConnectionName">> => string()
%% }
-type database_output() :: #{binary() => any()}.


%% Example:
%% create_ruleset_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"Rules">> := list(rule()),
%%   <<"Tags">> => map(),
%%   <<"TargetArn">> := string()
%% }
-type create_ruleset_request() :: #{binary() => any()}.


%% Example:
%% recipe_reference() :: #{
%%   <<"Name">> => string(),
%%   <<"RecipeVersion">> => string()
%% }
-type recipe_reference() :: #{binary() => any()}.


%% Example:
%% update_ruleset_response() :: #{
%%   <<"Name">> => string()
%% }
-type update_ruleset_response() :: #{binary() => any()}.


%% Example:
%% update_schedule_response() :: #{
%%   <<"Name">> => string()
%% }
-type update_schedule_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% create_recipe_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"Steps">> := list(recipe_step()),
%%   <<"Tags">> => map()
%% }
-type create_recipe_request() :: #{binary() => any()}.


%% Example:
%% s3_table_output_options() :: #{
%%   <<"Location">> => s3_location()
%% }
-type s3_table_output_options() :: #{binary() => any()}.


%% Example:
%% list_recipes_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Recipes">> => list(recipe())
%% }
-type list_recipes_response() :: #{binary() => any()}.


%% Example:
%% create_profile_job_request() :: #{
%%   <<"Configuration">> => profile_configuration(),
%%   <<"DatasetName">> := string(),
%%   <<"EncryptionKeyArn">> => string(),
%%   <<"EncryptionMode">> => list(any()),
%%   <<"JobSample">> => job_sample(),
%%   <<"LogSubscription">> => list(any()),
%%   <<"MaxCapacity">> => integer(),
%%   <<"MaxRetries">> => integer(),
%%   <<"Name">> := string(),
%%   <<"OutputLocation">> := s3_location(),
%%   <<"RoleArn">> := string(),
%%   <<"Tags">> => map(),
%%   <<"Timeout">> => integer(),
%%   <<"ValidationConfigurations">> => list(validation_configuration())
%% }
-type create_profile_job_request() :: #{binary() => any()}.


%% Example:
%% describe_job_response() :: #{
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"CreatedBy">> => string(),
%%   <<"DataCatalogOutputs">> => list(data_catalog_output()),
%%   <<"DatabaseOutputs">> => list(database_output()),
%%   <<"DatasetName">> => string(),
%%   <<"EncryptionKeyArn">> => string(),
%%   <<"EncryptionMode">> => list(any()),
%%   <<"JobSample">> => job_sample(),
%%   <<"LastModifiedBy">> => string(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"LogSubscription">> => list(any()),
%%   <<"MaxCapacity">> => integer(),
%%   <<"MaxRetries">> => integer(),
%%   <<"Name">> => string(),
%%   <<"Outputs">> => list(output()),
%%   <<"ProfileConfiguration">> => profile_configuration(),
%%   <<"ProjectName">> => string(),
%%   <<"RecipeReference">> => recipe_reference(),
%%   <<"ResourceArn">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Timeout">> => integer(),
%%   <<"Type">> => list(any()),
%%   <<"ValidationConfigurations">> => list(validation_configuration())
%% }
-type describe_job_response() :: #{binary() => any()}.


%% Example:
%% view_frame() :: #{
%%   <<"Analytics">> => list(any()),
%%   <<"ColumnRange">> => integer(),
%%   <<"HiddenColumns">> => list(string()),
%%   <<"RowRange">> => integer(),
%%   <<"StartColumnIndex">> => integer(),
%%   <<"StartRowIndex">> => integer()
%% }
-type view_frame() :: #{binary() => any()}.


%% Example:
%% delete_dataset_response() :: #{
%%   <<"Name">> => string()
%% }
-type delete_dataset_response() :: #{binary() => any()}.


%% Example:
%% update_dataset_response() :: #{
%%   <<"Name">> => string()
%% }
-type update_dataset_response() :: #{binary() => any()}.


%% Example:
%% statistics_configuration() :: #{
%%   <<"IncludedStatistics">> => list(string()),
%%   <<"Overrides">> => list(statistic_override())
%% }
-type statistics_configuration() :: #{binary() => any()}.


%% Example:
%% job_run() :: #{
%%   <<"Attempt">> => integer(),
%%   <<"CompletedOn">> => non_neg_integer(),
%%   <<"DataCatalogOutputs">> => list(data_catalog_output()),
%%   <<"DatabaseOutputs">> => list(database_output()),
%%   <<"DatasetName">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"ExecutionTime">> => integer(),
%%   <<"JobName">> => string(),
%%   <<"JobSample">> => job_sample(),
%%   <<"LogGroupName">> => string(),
%%   <<"LogSubscription">> => list(any()),
%%   <<"Outputs">> => list(output()),
%%   <<"RecipeReference">> => recipe_reference(),
%%   <<"RunId">> => string(),
%%   <<"StartedBy">> => string(),
%%   <<"StartedOn">> => non_neg_integer(),
%%   <<"State">> => list(any()),
%%   <<"ValidationConfigurations">> => list(validation_configuration())
%% }
-type job_run() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% publish_recipe_response() :: #{
%%   <<"Name">> => string()
%% }
-type publish_recipe_response() :: #{binary() => any()}.


%% Example:
%% datetime_options() :: #{
%%   <<"Format">> => string(),
%%   <<"LocaleCode">> => string(),
%%   <<"TimezoneOffset">> => string()
%% }
-type datetime_options() :: #{binary() => any()}.


%% Example:
%% path_options() :: #{
%%   <<"FilesLimit">> => files_limit(),
%%   <<"LastModifiedDateCondition">> => filter_expression(),
%%   <<"Parameters">> => map()
%% }
-type path_options() :: #{binary() => any()}.


%% Example:
%% list_jobs_request() :: #{
%%   <<"DatasetName">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ProjectName">> => string()
%% }
-type list_jobs_request() :: #{binary() => any()}.

%% Example:
%% stop_job_run_request() :: #{}
-type stop_job_run_request() :: #{}.

%% Example:
%% describe_project_request() :: #{}
-type describe_project_request() :: #{}.


%% Example:
%% batch_delete_recipe_version_request() :: #{
%%   <<"RecipeVersions">> := list(string())
%% }
-type batch_delete_recipe_version_request() :: #{binary() => any()}.


%% Example:
%% describe_job_run_response() :: #{
%%   <<"Attempt">> => integer(),
%%   <<"CompletedOn">> => non_neg_integer(),
%%   <<"DataCatalogOutputs">> => list(data_catalog_output()),
%%   <<"DatabaseOutputs">> => list(database_output()),
%%   <<"DatasetName">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"ExecutionTime">> => integer(),
%%   <<"JobName">> => string(),
%%   <<"JobSample">> => job_sample(),
%%   <<"LogGroupName">> => string(),
%%   <<"LogSubscription">> => list(any()),
%%   <<"Outputs">> => list(output()),
%%   <<"ProfileConfiguration">> => profile_configuration(),
%%   <<"RecipeReference">> => recipe_reference(),
%%   <<"RunId">> => string(),
%%   <<"StartedBy">> => string(),
%%   <<"StartedOn">> => non_neg_integer(),
%%   <<"State">> => list(any()),
%%   <<"ValidationConfigurations">> => list(validation_configuration())
%% }
-type describe_job_run_response() :: #{binary() => any()}.


%% Example:
%% list_job_runs_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_job_runs_request() :: #{binary() => any()}.


%% Example:
%% create_recipe_response() :: #{
%%   <<"Name">> => string()
%% }
-type create_recipe_response() :: #{binary() => any()}.


%% Example:
%% metadata() :: #{
%%   <<"SourceArn">> => string()
%% }
-type metadata() :: #{binary() => any()}.


%% Example:
%% list_datasets_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_datasets_request() :: #{binary() => any()}.


%% Example:
%% start_project_session_response() :: #{
%%   <<"ClientSessionId">> => string(),
%%   <<"Name">> => string()
%% }
-type start_project_session_response() :: #{binary() => any()}.


%% Example:
%% describe_ruleset_response() :: #{
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"CreatedBy">> => string(),
%%   <<"Description">> => string(),
%%   <<"LastModifiedBy">> => string(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"Rules">> => list(rule()),
%%   <<"Tags">> => map(),
%%   <<"TargetArn">> => string()
%% }
-type describe_ruleset_response() :: #{binary() => any()}.


%% Example:
%% entity_detector_configuration() :: #{
%%   <<"AllowedStatistics">> => list(allowed_statistics()),
%%   <<"EntityTypes">> => list(string())
%% }
-type entity_detector_configuration() :: #{binary() => any()}.


%% Example:
%% create_recipe_job_request() :: #{
%%   <<"DataCatalogOutputs">> => list(data_catalog_output()),
%%   <<"DatabaseOutputs">> => list(database_output()),
%%   <<"DatasetName">> => string(),
%%   <<"EncryptionKeyArn">> => string(),
%%   <<"EncryptionMode">> => list(any()),
%%   <<"LogSubscription">> => list(any()),
%%   <<"MaxCapacity">> => integer(),
%%   <<"MaxRetries">> => integer(),
%%   <<"Name">> := string(),
%%   <<"Outputs">> => list(output()),
%%   <<"ProjectName">> => string(),
%%   <<"RecipeReference">> => recipe_reference(),
%%   <<"RoleArn">> := string(),
%%   <<"Tags">> => map(),
%%   <<"Timeout">> => integer()
%% }
-type create_recipe_job_request() :: #{binary() => any()}.

%% Example:
%% describe_ruleset_request() :: #{}
-type describe_ruleset_request() :: #{}.


%% Example:
%% update_recipe_job_response() :: #{
%%   <<"Name">> => string()
%% }
-type update_recipe_job_response() :: #{binary() => any()}.


%% Example:
%% list_jobs_response() :: #{
%%   <<"Jobs">> => list(job()),
%%   <<"NextToken">> => string()
%% }
-type list_jobs_response() :: #{binary() => any()}.


%% Example:
%% data_catalog_output() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"DatabaseOptions">> => database_table_output_options(),
%%   <<"Overwrite">> => boolean(),
%%   <<"S3Options">> => s3_table_output_options(),
%%   <<"TableName">> => string()
%% }
-type data_catalog_output() :: #{binary() => any()}.


%% Example:
%% delete_schedule_response() :: #{
%%   <<"Name">> => string()
%% }
-type delete_schedule_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% update_project_response() :: #{
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"Name">> => string()
%% }
-type update_project_response() :: #{binary() => any()}.


%% Example:
%% list_schedules_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Schedules">> => list(schedule())
%% }
-type list_schedules_response() :: #{binary() => any()}.


%% Example:
%% update_profile_job_request() :: #{
%%   <<"Configuration">> => profile_configuration(),
%%   <<"EncryptionKeyArn">> => string(),
%%   <<"EncryptionMode">> => list(any()),
%%   <<"JobSample">> => job_sample(),
%%   <<"LogSubscription">> => list(any()),
%%   <<"MaxCapacity">> => integer(),
%%   <<"MaxRetries">> => integer(),
%%   <<"OutputLocation">> := s3_location(),
%%   <<"RoleArn">> := string(),
%%   <<"Timeout">> => integer(),
%%   <<"ValidationConfigurations">> => list(validation_configuration())
%% }
-type update_profile_job_request() :: #{binary() => any()}.


%% Example:
%% delete_ruleset_response() :: #{
%%   <<"Name">> => string()
%% }
-type delete_ruleset_response() :: #{binary() => any()}.


%% Example:
%% dataset() :: #{
%%   <<"AccountId">> => string(),
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"CreatedBy">> => string(),
%%   <<"Format">> => list(any()),
%%   <<"FormatOptions">> => format_options(),
%%   <<"Input">> => input(),
%%   <<"LastModifiedBy">> => string(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"PathOptions">> => path_options(),
%%   <<"ResourceArn">> => string(),
%%   <<"Source">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type dataset() :: #{binary() => any()}.


%% Example:
%% describe_schedule_response() :: #{
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"CreatedBy">> => string(),
%%   <<"CronExpression">> => string(),
%%   <<"JobNames">> => list(string()),
%%   <<"LastModifiedBy">> => string(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"Tags">> => map()
%% }
-type describe_schedule_response() :: #{binary() => any()}.


%% Example:
%% output_format_options() :: #{
%%   <<"Csv">> => csv_output_options()
%% }
-type output_format_options() :: #{binary() => any()}.


%% Example:
%% create_dataset_response() :: #{
%%   <<"Name">> => string()
%% }
-type create_dataset_response() :: #{binary() => any()}.


%% Example:
%% job_sample() :: #{
%%   <<"Mode">> => list(any()),
%%   <<"Size">> => float()
%% }
-type job_sample() :: #{binary() => any()}.


%% Example:
%% files_limit() :: #{
%%   <<"MaxFiles">> => integer(),
%%   <<"Order">> => list(any()),
%%   <<"OrderedBy">> => list(any())
%% }
-type files_limit() :: #{binary() => any()}.


%% Example:
%% csv_options() :: #{
%%   <<"Delimiter">> => string(),
%%   <<"HeaderRow">> => boolean()
%% }
-type csv_options() :: #{binary() => any()}.

%% Example:
%% describe_job_run_request() :: #{}
-type describe_job_run_request() :: #{}.


%% Example:
%% input() :: #{
%%   <<"DataCatalogInputDefinition">> => data_catalog_input_definition(),
%%   <<"DatabaseInputDefinition">> => database_input_definition(),
%%   <<"Metadata">> => metadata(),
%%   <<"S3InputDefinition">> => s3_location()
%% }
-type input() :: #{binary() => any()}.


%% Example:
%% create_project_response() :: #{
%%   <<"Name">> => string()
%% }
-type create_project_response() :: #{binary() => any()}.


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
%% start_job_run_response() :: #{
%%   <<"RunId">> => string()
%% }
-type start_job_run_response() :: #{binary() => any()}.


%% Example:
%% project() :: #{
%%   <<"AccountId">> => string(),
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"CreatedBy">> => string(),
%%   <<"DatasetName">> => string(),
%%   <<"LastModifiedBy">> => string(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"OpenDate">> => non_neg_integer(),
%%   <<"OpenedBy">> => string(),
%%   <<"RecipeName">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"Sample">> => sample(),
%%   <<"Tags">> => map()
%% }
-type project() :: #{binary() => any()}.


%% Example:
%% validation_configuration() :: #{
%%   <<"RulesetArn">> => string(),
%%   <<"ValidationMode">> => list(any())
%% }
-type validation_configuration() :: #{binary() => any()}.


%% Example:
%% publish_recipe_request() :: #{
%%   <<"Description">> => string()
%% }
-type publish_recipe_request() :: #{binary() => any()}.


%% Example:
%% list_rulesets_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Rulesets">> => list(ruleset_item())
%% }
-type list_rulesets_response() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% start_project_session_request() :: #{
%%   <<"AssumeControl">> => boolean()
%% }
-type start_project_session_request() :: #{binary() => any()}.


%% Example:
%% csv_output_options() :: #{
%%   <<"Delimiter">> => string()
%% }
-type csv_output_options() :: #{binary() => any()}.


%% Example:
%% list_recipe_versions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"Name">> := string(),
%%   <<"NextToken">> => string()
%% }
-type list_recipe_versions_request() :: #{binary() => any()}.


%% Example:
%% recipe_action() :: #{
%%   <<"Operation">> => string(),
%%   <<"Parameters">> => map()
%% }
-type recipe_action() :: #{binary() => any()}.


%% Example:
%% describe_recipe_response() :: #{
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"CreatedBy">> => string(),
%%   <<"Description">> => string(),
%%   <<"LastModifiedBy">> => string(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"ProjectName">> => string(),
%%   <<"PublishedBy">> => string(),
%%   <<"PublishedDate">> => non_neg_integer(),
%%   <<"RecipeVersion">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"Steps">> => list(recipe_step()),
%%   <<"Tags">> => map()
%% }
-type describe_recipe_response() :: #{binary() => any()}.


%% Example:
%% list_job_runs_response() :: #{
%%   <<"JobRuns">> => list(job_run()),
%%   <<"NextToken">> => string()
%% }
-type list_job_runs_response() :: #{binary() => any()}.


%% Example:
%% format_options() :: #{
%%   <<"Csv">> => csv_options(),
%%   <<"Excel">> => excel_options(),
%%   <<"Json">> => json_options()
%% }
-type format_options() :: #{binary() => any()}.


%% Example:
%% list_rulesets_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"TargetArn">> => string()
%% }
-type list_rulesets_request() :: #{binary() => any()}.


%% Example:
%% recipe() :: #{
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"CreatedBy">> => string(),
%%   <<"Description">> => string(),
%%   <<"LastModifiedBy">> => string(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"ProjectName">> => string(),
%%   <<"PublishedBy">> => string(),
%%   <<"PublishedDate">> => non_neg_integer(),
%%   <<"RecipeVersion">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"Steps">> => list(recipe_step()),
%%   <<"Tags">> => map()
%% }
-type recipe() :: #{binary() => any()}.


%% Example:
%% sample() :: #{
%%   <<"Size">> => integer(),
%%   <<"Type">> => list(any())
%% }
-type sample() :: #{binary() => any()}.


%% Example:
%% list_projects_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Projects">> => list(project())
%% }
-type list_projects_response() :: #{binary() => any()}.


%% Example:
%% list_recipe_versions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Recipes">> => list(recipe())
%% }
-type list_recipe_versions_response() :: #{binary() => any()}.

%% Example:
%% describe_job_request() :: #{}
-type describe_job_request() :: #{}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% data_catalog_input_definition() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"TableName">> => string(),
%%   <<"TempDirectory">> => s3_location()
%% }
-type data_catalog_input_definition() :: #{binary() => any()}.


%% Example:
%% ruleset_item() :: #{
%%   <<"AccountId">> => string(),
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"CreatedBy">> => string(),
%%   <<"Description">> => string(),
%%   <<"LastModifiedBy">> => string(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"RuleCount">> => integer(),
%%   <<"Tags">> => map(),
%%   <<"TargetArn">> => string()
%% }
-type ruleset_item() :: #{binary() => any()}.


%% Example:
%% filter_expression() :: #{
%%   <<"Expression">> => string(),
%%   <<"ValuesMap">> => map()
%% }
-type filter_expression() :: #{binary() => any()}.


%% Example:
%% s3_location() :: #{
%%   <<"Bucket">> => string(),
%%   <<"BucketOwner">> => string(),
%%   <<"Key">> => string()
%% }
-type s3_location() :: #{binary() => any()}.


%% Example:
%% update_dataset_request() :: #{
%%   <<"Format">> => list(any()),
%%   <<"FormatOptions">> => format_options(),
%%   <<"Input">> := input(),
%%   <<"PathOptions">> => path_options()
%% }
-type update_dataset_request() :: #{binary() => any()}.


%% Example:
%% database_table_output_options() :: #{
%%   <<"TableName">> => string(),
%%   <<"TempDirectory">> => s3_location()
%% }
-type database_table_output_options() :: #{binary() => any()}.


%% Example:
%% rule() :: #{
%%   <<"CheckExpression">> => string(),
%%   <<"ColumnSelectors">> => list(column_selector()),
%%   <<"Disabled">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"SubstitutionMap">> => map(),
%%   <<"Threshold">> => threshold()
%% }
-type rule() :: #{binary() => any()}.


%% Example:
%% create_recipe_job_response() :: #{
%%   <<"Name">> => string()
%% }
-type create_recipe_job_response() :: #{binary() => any()}.


%% Example:
%% dataset_parameter() :: #{
%%   <<"CreateColumn">> => boolean(),
%%   <<"DatetimeOptions">> => datetime_options(),
%%   <<"Filter">> => filter_expression(),
%%   <<"Name">> => string(),
%%   <<"Type">> => list(any())
%% }
-type dataset_parameter() :: #{binary() => any()}.


%% Example:
%% describe_recipe_request() :: #{
%%   <<"RecipeVersion">> => string()
%% }
-type describe_recipe_request() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% schedule() :: #{
%%   <<"AccountId">> => string(),
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"CreatedBy">> => string(),
%%   <<"CronExpression">> => string(),
%%   <<"JobNames">> => list(string()),
%%   <<"LastModifiedBy">> => string(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"Tags">> => map()
%% }
-type schedule() :: #{binary() => any()}.


%% Example:
%% delete_project_response() :: #{
%%   <<"Name">> => string()
%% }
-type delete_project_response() :: #{binary() => any()}.


%% Example:
%% stop_job_run_response() :: #{
%%   <<"RunId">> => string()
%% }
-type stop_job_run_response() :: #{binary() => any()}.

%% Example:
%% start_job_run_request() :: #{}
-type start_job_run_request() :: #{}.


%% Example:
%% update_project_request() :: #{
%%   <<"RoleArn">> := string(),
%%   <<"Sample">> => sample()
%% }
-type update_project_request() :: #{binary() => any()}.


%% Example:
%% profile_configuration() :: #{
%%   <<"ColumnStatisticsConfigurations">> => list(column_statistics_configuration()),
%%   <<"DatasetStatisticsConfiguration">> => statistics_configuration(),
%%   <<"EntityDetectorConfiguration">> => entity_detector_configuration(),
%%   <<"ProfileColumns">> => list(column_selector())
%% }
-type profile_configuration() :: #{binary() => any()}.


%% Example:
%% update_ruleset_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Rules">> := list(rule())
%% }
-type update_ruleset_request() :: #{binary() => any()}.


%% Example:
%% recipe_step() :: #{
%%   <<"Action">> => recipe_action(),
%%   <<"ConditionExpressions">> => list(condition_expression())
%% }
-type recipe_step() :: #{binary() => any()}.


%% Example:
%% database_input_definition() :: #{
%%   <<"DatabaseTableName">> => string(),
%%   <<"GlueConnectionName">> => string(),
%%   <<"QueryString">> => string(),
%%   <<"TempDirectory">> => s3_location()
%% }
-type database_input_definition() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.

%% Example:
%% delete_recipe_version_request() :: #{}
-type delete_recipe_version_request() :: #{}.


%% Example:
%% column_selector() :: #{
%%   <<"Name">> => string(),
%%   <<"Regex">> => string()
%% }
-type column_selector() :: #{binary() => any()}.


%% Example:
%% json_options() :: #{
%%   <<"MultiLine">> => boolean()
%% }
-type json_options() :: #{binary() => any()}.


%% Example:
%% update_schedule_request() :: #{
%%   <<"CronExpression">> := string(),
%%   <<"JobNames">> => list(string())
%% }
-type update_schedule_request() :: #{binary() => any()}.

%% Example:
%% delete_job_request() :: #{}
-type delete_job_request() :: #{}.


%% Example:
%% recipe_version_error_detail() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"RecipeVersion">> => string()
%% }
-type recipe_version_error_detail() :: #{binary() => any()}.


%% Example:
%% column_statistics_configuration() :: #{
%%   <<"Selectors">> => list(column_selector()),
%%   <<"Statistics">> => statistics_configuration()
%% }
-type column_statistics_configuration() :: #{binary() => any()}.


%% Example:
%% create_ruleset_response() :: #{
%%   <<"Name">> => string()
%% }
-type create_ruleset_response() :: #{binary() => any()}.


%% Example:
%% update_recipe_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Steps">> => list(recipe_step())
%% }
-type update_recipe_request() :: #{binary() => any()}.


%% Example:
%% describe_dataset_response() :: #{
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"CreatedBy">> => string(),
%%   <<"Format">> => list(any()),
%%   <<"FormatOptions">> => format_options(),
%%   <<"Input">> => input(),
%%   <<"LastModifiedBy">> => string(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"PathOptions">> => path_options(),
%%   <<"ResourceArn">> => string(),
%%   <<"Source">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type describe_dataset_response() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% job() :: #{
%%   <<"AccountId">> => string(),
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"CreatedBy">> => string(),
%%   <<"DataCatalogOutputs">> => list(data_catalog_output()),
%%   <<"DatabaseOutputs">> => list(database_output()),
%%   <<"DatasetName">> => string(),
%%   <<"EncryptionKeyArn">> => string(),
%%   <<"EncryptionMode">> => list(any()),
%%   <<"JobSample">> => job_sample(),
%%   <<"LastModifiedBy">> => string(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"LogSubscription">> => list(any()),
%%   <<"MaxCapacity">> => integer(),
%%   <<"MaxRetries">> => integer(),
%%   <<"Name">> => string(),
%%   <<"Outputs">> => list(output()),
%%   <<"ProjectName">> => string(),
%%   <<"RecipeReference">> => recipe_reference(),
%%   <<"ResourceArn">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Timeout">> => integer(),
%%   <<"Type">> => list(any()),
%%   <<"ValidationConfigurations">> => list(validation_configuration())
%% }
-type job() :: #{binary() => any()}.


%% Example:
%% create_dataset_request() :: #{
%%   <<"Format">> => list(any()),
%%   <<"FormatOptions">> => format_options(),
%%   <<"Input">> := input(),
%%   <<"Name">> := string(),
%%   <<"PathOptions">> => path_options(),
%%   <<"Tags">> => map()
%% }
-type create_dataset_request() :: #{binary() => any()}.


%% Example:
%% update_recipe_job_request() :: #{
%%   <<"DataCatalogOutputs">> => list(data_catalog_output()),
%%   <<"DatabaseOutputs">> => list(database_output()),
%%   <<"EncryptionKeyArn">> => string(),
%%   <<"EncryptionMode">> => list(any()),
%%   <<"LogSubscription">> => list(any()),
%%   <<"MaxCapacity">> => integer(),
%%   <<"MaxRetries">> => integer(),
%%   <<"Outputs">> => list(output()),
%%   <<"RoleArn">> := string(),
%%   <<"Timeout">> => integer()
%% }
-type update_recipe_job_request() :: #{binary() => any()}.


%% Example:
%% create_schedule_request() :: #{
%%   <<"CronExpression">> := string(),
%%   <<"JobNames">> => list(string()),
%%   <<"Name">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_schedule_request() :: #{binary() => any()}.


%% Example:
%% create_project_request() :: #{
%%   <<"DatasetName">> := string(),
%%   <<"Name">> := string(),
%%   <<"RecipeName">> := string(),
%%   <<"RoleArn">> := string(),
%%   <<"Sample">> => sample(),
%%   <<"Tags">> => map()
%% }
-type create_project_request() :: #{binary() => any()}.


%% Example:
%% condition_expression() :: #{
%%   <<"Condition">> => string(),
%%   <<"TargetColumn">> => string(),
%%   <<"Value">> => string()
%% }
-type condition_expression() :: #{binary() => any()}.


%% Example:
%% list_projects_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_projects_request() :: #{binary() => any()}.


%% Example:
%% threshold() :: #{
%%   <<"Type">> => list(any()),
%%   <<"Unit">> => list(any()),
%%   <<"Value">> => float()
%% }
-type threshold() :: #{binary() => any()}.


%% Example:
%% create_schedule_response() :: #{
%%   <<"Name">> => string()
%% }
-type create_schedule_response() :: #{binary() => any()}.

%% Example:
%% delete_schedule_request() :: #{}
-type delete_schedule_request() :: #{}.


%% Example:
%% list_schedules_request() :: #{
%%   <<"JobName">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_schedules_request() :: #{binary() => any()}.


%% Example:
%% excel_options() :: #{
%%   <<"HeaderRow">> => boolean(),
%%   <<"SheetIndexes">> => list(integer()),
%%   <<"SheetNames">> => list(string())
%% }
-type excel_options() :: #{binary() => any()}.


%% Example:
%% allowed_statistics() :: #{
%%   <<"Statistics">> => list(string())
%% }
-type allowed_statistics() :: #{binary() => any()}.

%% Example:
%% describe_dataset_request() :: #{}
-type describe_dataset_request() :: #{}.

%% Example:
%% delete_dataset_request() :: #{}
-type delete_dataset_request() :: #{}.


%% Example:
%% list_datasets_response() :: #{
%%   <<"Datasets">> => list(dataset()),
%%   <<"NextToken">> => string()
%% }
-type list_datasets_response() :: #{binary() => any()}.

%% Example:
%% delete_project_request() :: #{}
-type delete_project_request() :: #{}.


%% Example:
%% update_profile_job_response() :: #{
%%   <<"Name">> => string()
%% }
-type update_profile_job_response() :: #{binary() => any()}.


%% Example:
%% delete_job_response() :: #{
%%   <<"Name">> => string()
%% }
-type delete_job_response() :: #{binary() => any()}.


%% Example:
%% delete_recipe_version_response() :: #{
%%   <<"Name">> => string(),
%%   <<"RecipeVersion">> => string()
%% }
-type delete_recipe_version_response() :: #{binary() => any()}.


%% Example:
%% statistic_override() :: #{
%%   <<"Parameters">> => map(),
%%   <<"Statistic">> => string()
%% }
-type statistic_override() :: #{binary() => any()}.


%% Example:
%% create_profile_job_response() :: #{
%%   <<"Name">> => string()
%% }
-type create_profile_job_response() :: #{binary() => any()}.

%% Example:
%% describe_schedule_request() :: #{}
-type describe_schedule_request() :: #{}.


%% Example:
%% list_recipes_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"RecipeVersion">> => string()
%% }
-type list_recipes_request() :: #{binary() => any()}.


%% Example:
%% send_project_session_action_request() :: #{
%%   <<"ClientSessionId">> => string(),
%%   <<"Preview">> => boolean(),
%%   <<"RecipeStep">> => recipe_step(),
%%   <<"StepIndex">> => integer(),
%%   <<"ViewFrame">> => view_frame()
%% }
-type send_project_session_action_request() :: #{binary() => any()}.


%% Example:
%% send_project_session_action_response() :: #{
%%   <<"ActionId">> => integer(),
%%   <<"Name">> => string(),
%%   <<"Result">> => string()
%% }
-type send_project_session_action_response() :: #{binary() => any()}.


%% Example:
%% output() :: #{
%%   <<"CompressionFormat">> => list(any()),
%%   <<"Format">> => list(any()),
%%   <<"FormatOptions">> => output_format_options(),
%%   <<"Location">> => s3_location(),
%%   <<"MaxOutputFiles">> => integer(),
%%   <<"Overwrite">> => boolean(),
%%   <<"PartitionColumns">> => list(string())
%% }
-type output() :: #{binary() => any()}.

%% Example:
%% delete_ruleset_request() :: #{}
-type delete_ruleset_request() :: #{}.


%% Example:
%% update_recipe_response() :: #{
%%   <<"Name">> => string()
%% }
-type update_recipe_response() :: #{binary() => any()}.

-type batch_delete_recipe_version_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_dataset_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_profile_job_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_project_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_recipe_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_recipe_job_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_ruleset_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_schedule_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_dataset_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_job_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_project_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_recipe_version_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_ruleset_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_schedule_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type describe_dataset_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type describe_job_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type describe_job_run_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type describe_project_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type describe_recipe_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type describe_ruleset_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type describe_schedule_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type list_datasets_errors() ::
    validation_exception().

-type list_job_runs_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type list_jobs_errors() ::
    validation_exception().

-type list_projects_errors() ::
    validation_exception().

-type list_recipe_versions_errors() ::
    validation_exception().

-type list_recipes_errors() ::
    validation_exception().

-type list_rulesets_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type list_schedules_errors() ::
    validation_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type publish_recipe_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type send_project_session_action_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_job_run_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_project_session_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_job_run_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_dataset_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type update_profile_job_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type update_project_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type update_recipe_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type update_recipe_job_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type update_ruleset_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type update_schedule_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes one or more versions of a recipe at a time.
%%
%% The entire request will be rejected if:
%%
%% The recipe does not exist.
%%
%% There is an invalid version identifier in the list of versions.
%%
%% The version list is empty.
%%
%% The version list size exceeds 50.
%%
%% The version list contains duplicate entries.
%%
%% The request will complete successfully, but with partial failures, if:
%%
%% A version does not exist.
%%
%% A version is being used by a job.
%%
%% You specify `LATEST_WORKING', but it's being used by a
%% project.
%%
%% The version fails to be deleted.
%%
%% The `LATEST_WORKING' version will only be deleted if the recipe has no
%% other versions. If you try to delete `LATEST_WORKING' while other
%% versions
%% exist (or if they can't be deleted), then `LATEST_WORKING' will be
%% listed as
%% partial failure in the response.
-spec batch_delete_recipe_version(aws_client:aws_client(), binary() | list(), batch_delete_recipe_version_request()) ->
    {ok, batch_delete_recipe_version_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_recipe_version_errors(), tuple()}.
batch_delete_recipe_version(Client, Name, Input) ->
    batch_delete_recipe_version(Client, Name, Input, []).

-spec batch_delete_recipe_version(aws_client:aws_client(), binary() | list(), batch_delete_recipe_version_request(), proplists:proplist()) ->
    {ok, batch_delete_recipe_version_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_recipe_version_errors(), tuple()}.
batch_delete_recipe_version(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/recipes/", aws_util:encode_uri(Name), "/batchDeleteRecipeVersion"],
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

%% @doc Creates a new DataBrew dataset.
-spec create_dataset(aws_client:aws_client(), create_dataset_request()) ->
    {ok, create_dataset_response(), tuple()} |
    {error, any()} |
    {error, create_dataset_errors(), tuple()}.
create_dataset(Client, Input) ->
    create_dataset(Client, Input, []).

-spec create_dataset(aws_client:aws_client(), create_dataset_request(), proplists:proplist()) ->
    {ok, create_dataset_response(), tuple()} |
    {error, any()} |
    {error, create_dataset_errors(), tuple()}.
create_dataset(Client, Input0, Options0) ->
    Method = post,
    Path = ["/datasets"],
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

%% @doc Creates a new job to analyze a dataset and create its data profile.
-spec create_profile_job(aws_client:aws_client(), create_profile_job_request()) ->
    {ok, create_profile_job_response(), tuple()} |
    {error, any()} |
    {error, create_profile_job_errors(), tuple()}.
create_profile_job(Client, Input) ->
    create_profile_job(Client, Input, []).

-spec create_profile_job(aws_client:aws_client(), create_profile_job_request(), proplists:proplist()) ->
    {ok, create_profile_job_response(), tuple()} |
    {error, any()} |
    {error, create_profile_job_errors(), tuple()}.
create_profile_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/profileJobs"],
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

%% @doc Creates a new DataBrew project.
-spec create_project(aws_client:aws_client(), create_project_request()) ->
    {ok, create_project_response(), tuple()} |
    {error, any()} |
    {error, create_project_errors(), tuple()}.
create_project(Client, Input) ->
    create_project(Client, Input, []).

-spec create_project(aws_client:aws_client(), create_project_request(), proplists:proplist()) ->
    {ok, create_project_response(), tuple()} |
    {error, any()} |
    {error, create_project_errors(), tuple()}.
create_project(Client, Input0, Options0) ->
    Method = post,
    Path = ["/projects"],
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

%% @doc Creates a new DataBrew recipe.
-spec create_recipe(aws_client:aws_client(), create_recipe_request()) ->
    {ok, create_recipe_response(), tuple()} |
    {error, any()} |
    {error, create_recipe_errors(), tuple()}.
create_recipe(Client, Input) ->
    create_recipe(Client, Input, []).

-spec create_recipe(aws_client:aws_client(), create_recipe_request(), proplists:proplist()) ->
    {ok, create_recipe_response(), tuple()} |
    {error, any()} |
    {error, create_recipe_errors(), tuple()}.
create_recipe(Client, Input0, Options0) ->
    Method = post,
    Path = ["/recipes"],
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

%% @doc Creates a new job to transform input data, using steps defined in an
%% existing Glue DataBrew recipe
-spec create_recipe_job(aws_client:aws_client(), create_recipe_job_request()) ->
    {ok, create_recipe_job_response(), tuple()} |
    {error, any()} |
    {error, create_recipe_job_errors(), tuple()}.
create_recipe_job(Client, Input) ->
    create_recipe_job(Client, Input, []).

-spec create_recipe_job(aws_client:aws_client(), create_recipe_job_request(), proplists:proplist()) ->
    {ok, create_recipe_job_response(), tuple()} |
    {error, any()} |
    {error, create_recipe_job_errors(), tuple()}.
create_recipe_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/recipeJobs"],
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

%% @doc Creates a new ruleset that can be used in a profile job to validate
%% the data quality of a dataset.
-spec create_ruleset(aws_client:aws_client(), create_ruleset_request()) ->
    {ok, create_ruleset_response(), tuple()} |
    {error, any()} |
    {error, create_ruleset_errors(), tuple()}.
create_ruleset(Client, Input) ->
    create_ruleset(Client, Input, []).

-spec create_ruleset(aws_client:aws_client(), create_ruleset_request(), proplists:proplist()) ->
    {ok, create_ruleset_response(), tuple()} |
    {error, any()} |
    {error, create_ruleset_errors(), tuple()}.
create_ruleset(Client, Input0, Options0) ->
    Method = post,
    Path = ["/rulesets"],
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

%% @doc Creates a new schedule for one or more DataBrew jobs.
%%
%% Jobs can be run at a specific
%% date and time, or at regular intervals.
-spec create_schedule(aws_client:aws_client(), create_schedule_request()) ->
    {ok, create_schedule_response(), tuple()} |
    {error, any()} |
    {error, create_schedule_errors(), tuple()}.
create_schedule(Client, Input) ->
    create_schedule(Client, Input, []).

-spec create_schedule(aws_client:aws_client(), create_schedule_request(), proplists:proplist()) ->
    {ok, create_schedule_response(), tuple()} |
    {error, any()} |
    {error, create_schedule_errors(), tuple()}.
create_schedule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/schedules"],
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

%% @doc Deletes a dataset from DataBrew.
-spec delete_dataset(aws_client:aws_client(), binary() | list(), delete_dataset_request()) ->
    {ok, delete_dataset_response(), tuple()} |
    {error, any()} |
    {error, delete_dataset_errors(), tuple()}.
delete_dataset(Client, Name, Input) ->
    delete_dataset(Client, Name, Input, []).

-spec delete_dataset(aws_client:aws_client(), binary() | list(), delete_dataset_request(), proplists:proplist()) ->
    {ok, delete_dataset_response(), tuple()} |
    {error, any()} |
    {error, delete_dataset_errors(), tuple()}.
delete_dataset(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/datasets/", aws_util:encode_uri(Name), ""],
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

%% @doc Deletes the specified DataBrew job.
-spec delete_job(aws_client:aws_client(), binary() | list(), delete_job_request()) ->
    {ok, delete_job_response(), tuple()} |
    {error, any()} |
    {error, delete_job_errors(), tuple()}.
delete_job(Client, Name, Input) ->
    delete_job(Client, Name, Input, []).

-spec delete_job(aws_client:aws_client(), binary() | list(), delete_job_request(), proplists:proplist()) ->
    {ok, delete_job_response(), tuple()} |
    {error, any()} |
    {error, delete_job_errors(), tuple()}.
delete_job(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/jobs/", aws_util:encode_uri(Name), ""],
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

%% @doc Deletes an existing DataBrew project.
-spec delete_project(aws_client:aws_client(), binary() | list(), delete_project_request()) ->
    {ok, delete_project_response(), tuple()} |
    {error, any()} |
    {error, delete_project_errors(), tuple()}.
delete_project(Client, Name, Input) ->
    delete_project(Client, Name, Input, []).

-spec delete_project(aws_client:aws_client(), binary() | list(), delete_project_request(), proplists:proplist()) ->
    {ok, delete_project_response(), tuple()} |
    {error, any()} |
    {error, delete_project_errors(), tuple()}.
delete_project(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/projects/", aws_util:encode_uri(Name), ""],
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

%% @doc Deletes a single version of a DataBrew recipe.
-spec delete_recipe_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_recipe_version_request()) ->
    {ok, delete_recipe_version_response(), tuple()} |
    {error, any()} |
    {error, delete_recipe_version_errors(), tuple()}.
delete_recipe_version(Client, Name, RecipeVersion, Input) ->
    delete_recipe_version(Client, Name, RecipeVersion, Input, []).

-spec delete_recipe_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_recipe_version_request(), proplists:proplist()) ->
    {ok, delete_recipe_version_response(), tuple()} |
    {error, any()} |
    {error, delete_recipe_version_errors(), tuple()}.
delete_recipe_version(Client, Name, RecipeVersion, Input0, Options0) ->
    Method = delete,
    Path = ["/recipes/", aws_util:encode_uri(Name), "/recipeVersion/", aws_util:encode_uri(RecipeVersion), ""],
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

%% @doc Deletes a ruleset.
-spec delete_ruleset(aws_client:aws_client(), binary() | list(), delete_ruleset_request()) ->
    {ok, delete_ruleset_response(), tuple()} |
    {error, any()} |
    {error, delete_ruleset_errors(), tuple()}.
delete_ruleset(Client, Name, Input) ->
    delete_ruleset(Client, Name, Input, []).

-spec delete_ruleset(aws_client:aws_client(), binary() | list(), delete_ruleset_request(), proplists:proplist()) ->
    {ok, delete_ruleset_response(), tuple()} |
    {error, any()} |
    {error, delete_ruleset_errors(), tuple()}.
delete_ruleset(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/rulesets/", aws_util:encode_uri(Name), ""],
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

%% @doc Deletes the specified DataBrew schedule.
-spec delete_schedule(aws_client:aws_client(), binary() | list(), delete_schedule_request()) ->
    {ok, delete_schedule_response(), tuple()} |
    {error, any()} |
    {error, delete_schedule_errors(), tuple()}.
delete_schedule(Client, Name, Input) ->
    delete_schedule(Client, Name, Input, []).

-spec delete_schedule(aws_client:aws_client(), binary() | list(), delete_schedule_request(), proplists:proplist()) ->
    {ok, delete_schedule_response(), tuple()} |
    {error, any()} |
    {error, delete_schedule_errors(), tuple()}.
delete_schedule(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/schedules/", aws_util:encode_uri(Name), ""],
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

%% @doc Returns the definition of a specific DataBrew dataset.
-spec describe_dataset(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_dataset_response(), tuple()} |
    {error, any()} |
    {error, describe_dataset_errors(), tuple()}.
describe_dataset(Client, Name)
  when is_map(Client) ->
    describe_dataset(Client, Name, #{}, #{}).

-spec describe_dataset(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_dataset_response(), tuple()} |
    {error, any()} |
    {error, describe_dataset_errors(), tuple()}.
describe_dataset(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_dataset(Client, Name, QueryMap, HeadersMap, []).

-spec describe_dataset(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_dataset_response(), tuple()} |
    {error, any()} |
    {error, describe_dataset_errors(), tuple()}.
describe_dataset(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datasets/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the definition of a specific DataBrew job.
-spec describe_job(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_job_response(), tuple()} |
    {error, any()} |
    {error, describe_job_errors(), tuple()}.
describe_job(Client, Name)
  when is_map(Client) ->
    describe_job(Client, Name, #{}, #{}).

-spec describe_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_job_response(), tuple()} |
    {error, any()} |
    {error, describe_job_errors(), tuple()}.
describe_job(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_job(Client, Name, QueryMap, HeadersMap, []).

-spec describe_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_job_response(), tuple()} |
    {error, any()} |
    {error, describe_job_errors(), tuple()}.
describe_job(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/jobs/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Represents one run of a DataBrew job.
-spec describe_job_run(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_job_run_response(), tuple()} |
    {error, any()} |
    {error, describe_job_run_errors(), tuple()}.
describe_job_run(Client, Name, RunId)
  when is_map(Client) ->
    describe_job_run(Client, Name, RunId, #{}, #{}).

-spec describe_job_run(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_job_run_response(), tuple()} |
    {error, any()} |
    {error, describe_job_run_errors(), tuple()}.
describe_job_run(Client, Name, RunId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_job_run(Client, Name, RunId, QueryMap, HeadersMap, []).

-spec describe_job_run(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_job_run_response(), tuple()} |
    {error, any()} |
    {error, describe_job_run_errors(), tuple()}.
describe_job_run(Client, Name, RunId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/jobs/", aws_util:encode_uri(Name), "/jobRun/", aws_util:encode_uri(RunId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the definition of a specific DataBrew project.
-spec describe_project(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_project_response(), tuple()} |
    {error, any()} |
    {error, describe_project_errors(), tuple()}.
describe_project(Client, Name)
  when is_map(Client) ->
    describe_project(Client, Name, #{}, #{}).

-spec describe_project(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_project_response(), tuple()} |
    {error, any()} |
    {error, describe_project_errors(), tuple()}.
describe_project(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_project(Client, Name, QueryMap, HeadersMap, []).

-spec describe_project(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_project_response(), tuple()} |
    {error, any()} |
    {error, describe_project_errors(), tuple()}.
describe_project(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/projects/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the definition of a specific DataBrew recipe corresponding to
%% a particular
%% version.
-spec describe_recipe(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_recipe_response(), tuple()} |
    {error, any()} |
    {error, describe_recipe_errors(), tuple()}.
describe_recipe(Client, Name)
  when is_map(Client) ->
    describe_recipe(Client, Name, #{}, #{}).

-spec describe_recipe(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_recipe_response(), tuple()} |
    {error, any()} |
    {error, describe_recipe_errors(), tuple()}.
describe_recipe(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_recipe(Client, Name, QueryMap, HeadersMap, []).

-spec describe_recipe(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_recipe_response(), tuple()} |
    {error, any()} |
    {error, describe_recipe_errors(), tuple()}.
describe_recipe(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/recipes/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"recipeVersion">>, maps:get(<<"recipeVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves detailed information about the ruleset.
-spec describe_ruleset(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_ruleset_response(), tuple()} |
    {error, any()} |
    {error, describe_ruleset_errors(), tuple()}.
describe_ruleset(Client, Name)
  when is_map(Client) ->
    describe_ruleset(Client, Name, #{}, #{}).

-spec describe_ruleset(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_ruleset_response(), tuple()} |
    {error, any()} |
    {error, describe_ruleset_errors(), tuple()}.
describe_ruleset(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_ruleset(Client, Name, QueryMap, HeadersMap, []).

-spec describe_ruleset(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_ruleset_response(), tuple()} |
    {error, any()} |
    {error, describe_ruleset_errors(), tuple()}.
describe_ruleset(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/rulesets/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the definition of a specific DataBrew schedule.
-spec describe_schedule(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_schedule_response(), tuple()} |
    {error, any()} |
    {error, describe_schedule_errors(), tuple()}.
describe_schedule(Client, Name)
  when is_map(Client) ->
    describe_schedule(Client, Name, #{}, #{}).

-spec describe_schedule(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_schedule_response(), tuple()} |
    {error, any()} |
    {error, describe_schedule_errors(), tuple()}.
describe_schedule(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_schedule(Client, Name, QueryMap, HeadersMap, []).

-spec describe_schedule(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_schedule_response(), tuple()} |
    {error, any()} |
    {error, describe_schedule_errors(), tuple()}.
describe_schedule(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/schedules/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the DataBrew datasets.
-spec list_datasets(aws_client:aws_client()) ->
    {ok, list_datasets_response(), tuple()} |
    {error, any()} |
    {error, list_datasets_errors(), tuple()}.
list_datasets(Client)
  when is_map(Client) ->
    list_datasets(Client, #{}, #{}).

-spec list_datasets(aws_client:aws_client(), map(), map()) ->
    {ok, list_datasets_response(), tuple()} |
    {error, any()} |
    {error, list_datasets_errors(), tuple()}.
list_datasets(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_datasets(Client, QueryMap, HeadersMap, []).

-spec list_datasets(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_datasets_response(), tuple()} |
    {error, any()} |
    {error, list_datasets_errors(), tuple()}.
list_datasets(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datasets"],
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

%% @doc Lists all of the previous runs of a particular DataBrew job.
-spec list_job_runs(aws_client:aws_client(), binary() | list()) ->
    {ok, list_job_runs_response(), tuple()} |
    {error, any()} |
    {error, list_job_runs_errors(), tuple()}.
list_job_runs(Client, Name)
  when is_map(Client) ->
    list_job_runs(Client, Name, #{}, #{}).

-spec list_job_runs(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_job_runs_response(), tuple()} |
    {error, any()} |
    {error, list_job_runs_errors(), tuple()}.
list_job_runs(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_job_runs(Client, Name, QueryMap, HeadersMap, []).

-spec list_job_runs(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_job_runs_response(), tuple()} |
    {error, any()} |
    {error, list_job_runs_errors(), tuple()}.
list_job_runs(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/jobs/", aws_util:encode_uri(Name), "/jobRuns"],
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

%% @doc Lists all of the DataBrew jobs that are defined.
-spec list_jobs(aws_client:aws_client()) ->
    {ok, list_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client)
  when is_map(Client) ->
    list_jobs(Client, #{}, #{}).

-spec list_jobs(aws_client:aws_client(), map(), map()) ->
    {ok, list_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_jobs(Client, QueryMap, HeadersMap, []).

-spec list_jobs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"datasetName">>, maps:get(<<"datasetName">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"projectName">>, maps:get(<<"projectName">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the DataBrew projects that are defined.
-spec list_projects(aws_client:aws_client()) ->
    {ok, list_projects_response(), tuple()} |
    {error, any()} |
    {error, list_projects_errors(), tuple()}.
list_projects(Client)
  when is_map(Client) ->
    list_projects(Client, #{}, #{}).

-spec list_projects(aws_client:aws_client(), map(), map()) ->
    {ok, list_projects_response(), tuple()} |
    {error, any()} |
    {error, list_projects_errors(), tuple()}.
list_projects(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_projects(Client, QueryMap, HeadersMap, []).

-spec list_projects(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_projects_response(), tuple()} |
    {error, any()} |
    {error, list_projects_errors(), tuple()}.
list_projects(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/projects"],
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

%% @doc Lists the versions of a particular DataBrew recipe, except for
%% `LATEST_WORKING'.
-spec list_recipe_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_recipe_versions_response(), tuple()} |
    {error, any()} |
    {error, list_recipe_versions_errors(), tuple()}.
list_recipe_versions(Client, Name)
  when is_map(Client) ->
    list_recipe_versions(Client, Name, #{}, #{}).

-spec list_recipe_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_recipe_versions_response(), tuple()} |
    {error, any()} |
    {error, list_recipe_versions_errors(), tuple()}.
list_recipe_versions(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_recipe_versions(Client, Name, QueryMap, HeadersMap, []).

-spec list_recipe_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_recipe_versions_response(), tuple()} |
    {error, any()} |
    {error, list_recipe_versions_errors(), tuple()}.
list_recipe_versions(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/recipeVersions"],
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
        {<<"name">>, Name},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the DataBrew recipes that are defined.
-spec list_recipes(aws_client:aws_client()) ->
    {ok, list_recipes_response(), tuple()} |
    {error, any()} |
    {error, list_recipes_errors(), tuple()}.
list_recipes(Client)
  when is_map(Client) ->
    list_recipes(Client, #{}, #{}).

-spec list_recipes(aws_client:aws_client(), map(), map()) ->
    {ok, list_recipes_response(), tuple()} |
    {error, any()} |
    {error, list_recipes_errors(), tuple()}.
list_recipes(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_recipes(Client, QueryMap, HeadersMap, []).

-spec list_recipes(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_recipes_response(), tuple()} |
    {error, any()} |
    {error, list_recipes_errors(), tuple()}.
list_recipes(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/recipes"],
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
        {<<"recipeVersion">>, maps:get(<<"recipeVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all rulesets available in the current account or rulesets
%% associated
%% with a specific resource (dataset).
-spec list_rulesets(aws_client:aws_client()) ->
    {ok, list_rulesets_response(), tuple()} |
    {error, any()} |
    {error, list_rulesets_errors(), tuple()}.
list_rulesets(Client)
  when is_map(Client) ->
    list_rulesets(Client, #{}, #{}).

-spec list_rulesets(aws_client:aws_client(), map(), map()) ->
    {ok, list_rulesets_response(), tuple()} |
    {error, any()} |
    {error, list_rulesets_errors(), tuple()}.
list_rulesets(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_rulesets(Client, QueryMap, HeadersMap, []).

-spec list_rulesets(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_rulesets_response(), tuple()} |
    {error, any()} |
    {error, list_rulesets_errors(), tuple()}.
list_rulesets(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/rulesets"],
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
        {<<"targetArn">>, maps:get(<<"targetArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the DataBrew schedules that are defined.
-spec list_schedules(aws_client:aws_client()) ->
    {ok, list_schedules_response(), tuple()} |
    {error, any()} |
    {error, list_schedules_errors(), tuple()}.
list_schedules(Client)
  when is_map(Client) ->
    list_schedules(Client, #{}, #{}).

-spec list_schedules(aws_client:aws_client(), map(), map()) ->
    {ok, list_schedules_response(), tuple()} |
    {error, any()} |
    {error, list_schedules_errors(), tuple()}.
list_schedules(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_schedules(Client, QueryMap, HeadersMap, []).

-spec list_schedules(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_schedules_response(), tuple()} |
    {error, any()} |
    {error, list_schedules_errors(), tuple()}.
list_schedules(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/schedules"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"jobName">>, maps:get(<<"jobName">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the tags for a DataBrew resource.
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

%% @doc Publishes a new version of a DataBrew recipe.
-spec publish_recipe(aws_client:aws_client(), binary() | list(), publish_recipe_request()) ->
    {ok, publish_recipe_response(), tuple()} |
    {error, any()} |
    {error, publish_recipe_errors(), tuple()}.
publish_recipe(Client, Name, Input) ->
    publish_recipe(Client, Name, Input, []).

-spec publish_recipe(aws_client:aws_client(), binary() | list(), publish_recipe_request(), proplists:proplist()) ->
    {ok, publish_recipe_response(), tuple()} |
    {error, any()} |
    {error, publish_recipe_errors(), tuple()}.
publish_recipe(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/recipes/", aws_util:encode_uri(Name), "/publishRecipe"],
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

%% @doc Performs a recipe step within an interactive DataBrew session
%% that's currently
%% open.
-spec send_project_session_action(aws_client:aws_client(), binary() | list(), send_project_session_action_request()) ->
    {ok, send_project_session_action_response(), tuple()} |
    {error, any()} |
    {error, send_project_session_action_errors(), tuple()}.
send_project_session_action(Client, Name, Input) ->
    send_project_session_action(Client, Name, Input, []).

-spec send_project_session_action(aws_client:aws_client(), binary() | list(), send_project_session_action_request(), proplists:proplist()) ->
    {ok, send_project_session_action_response(), tuple()} |
    {error, any()} |
    {error, send_project_session_action_errors(), tuple()}.
send_project_session_action(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/projects/", aws_util:encode_uri(Name), "/sendProjectSessionAction"],
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

%% @doc Runs a DataBrew job.
-spec start_job_run(aws_client:aws_client(), binary() | list(), start_job_run_request()) ->
    {ok, start_job_run_response(), tuple()} |
    {error, any()} |
    {error, start_job_run_errors(), tuple()}.
start_job_run(Client, Name, Input) ->
    start_job_run(Client, Name, Input, []).

-spec start_job_run(aws_client:aws_client(), binary() | list(), start_job_run_request(), proplists:proplist()) ->
    {ok, start_job_run_response(), tuple()} |
    {error, any()} |
    {error, start_job_run_errors(), tuple()}.
start_job_run(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/jobs/", aws_util:encode_uri(Name), "/startJobRun"],
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

%% @doc Creates an interactive session, enabling you to manipulate data in a
%% DataBrew
%% project.
-spec start_project_session(aws_client:aws_client(), binary() | list(), start_project_session_request()) ->
    {ok, start_project_session_response(), tuple()} |
    {error, any()} |
    {error, start_project_session_errors(), tuple()}.
start_project_session(Client, Name, Input) ->
    start_project_session(Client, Name, Input, []).

-spec start_project_session(aws_client:aws_client(), binary() | list(), start_project_session_request(), proplists:proplist()) ->
    {ok, start_project_session_response(), tuple()} |
    {error, any()} |
    {error, start_project_session_errors(), tuple()}.
start_project_session(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/projects/", aws_util:encode_uri(Name), "/startProjectSession"],
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

%% @doc Stops a particular run of a job.
-spec stop_job_run(aws_client:aws_client(), binary() | list(), binary() | list(), stop_job_run_request()) ->
    {ok, stop_job_run_response(), tuple()} |
    {error, any()} |
    {error, stop_job_run_errors(), tuple()}.
stop_job_run(Client, Name, RunId, Input) ->
    stop_job_run(Client, Name, RunId, Input, []).

-spec stop_job_run(aws_client:aws_client(), binary() | list(), binary() | list(), stop_job_run_request(), proplists:proplist()) ->
    {ok, stop_job_run_response(), tuple()} |
    {error, any()} |
    {error, stop_job_run_errors(), tuple()}.
stop_job_run(Client, Name, RunId, Input0, Options0) ->
    Method = post,
    Path = ["/jobs/", aws_util:encode_uri(Name), "/jobRun/", aws_util:encode_uri(RunId), "/stopJobRun"],
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

%% @doc Adds metadata tags to a DataBrew resource, such as a dataset,
%% project, recipe, job, or
%% schedule.
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

%% @doc Removes metadata tags from a DataBrew resource.
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

%% @doc Modifies the definition of an existing DataBrew dataset.
-spec update_dataset(aws_client:aws_client(), binary() | list(), update_dataset_request()) ->
    {ok, update_dataset_response(), tuple()} |
    {error, any()} |
    {error, update_dataset_errors(), tuple()}.
update_dataset(Client, Name, Input) ->
    update_dataset(Client, Name, Input, []).

-spec update_dataset(aws_client:aws_client(), binary() | list(), update_dataset_request(), proplists:proplist()) ->
    {ok, update_dataset_response(), tuple()} |
    {error, any()} |
    {error, update_dataset_errors(), tuple()}.
update_dataset(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/datasets/", aws_util:encode_uri(Name), ""],
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

%% @doc Modifies the definition of an existing profile job.
-spec update_profile_job(aws_client:aws_client(), binary() | list(), update_profile_job_request()) ->
    {ok, update_profile_job_response(), tuple()} |
    {error, any()} |
    {error, update_profile_job_errors(), tuple()}.
update_profile_job(Client, Name, Input) ->
    update_profile_job(Client, Name, Input, []).

-spec update_profile_job(aws_client:aws_client(), binary() | list(), update_profile_job_request(), proplists:proplist()) ->
    {ok, update_profile_job_response(), tuple()} |
    {error, any()} |
    {error, update_profile_job_errors(), tuple()}.
update_profile_job(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/profileJobs/", aws_util:encode_uri(Name), ""],
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

%% @doc Modifies the definition of an existing DataBrew project.
-spec update_project(aws_client:aws_client(), binary() | list(), update_project_request()) ->
    {ok, update_project_response(), tuple()} |
    {error, any()} |
    {error, update_project_errors(), tuple()}.
update_project(Client, Name, Input) ->
    update_project(Client, Name, Input, []).

-spec update_project(aws_client:aws_client(), binary() | list(), update_project_request(), proplists:proplist()) ->
    {ok, update_project_response(), tuple()} |
    {error, any()} |
    {error, update_project_errors(), tuple()}.
update_project(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/projects/", aws_util:encode_uri(Name), ""],
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

%% @doc Modifies the definition of the `LATEST_WORKING' version of a
%% DataBrew
%% recipe.
-spec update_recipe(aws_client:aws_client(), binary() | list(), update_recipe_request()) ->
    {ok, update_recipe_response(), tuple()} |
    {error, any()} |
    {error, update_recipe_errors(), tuple()}.
update_recipe(Client, Name, Input) ->
    update_recipe(Client, Name, Input, []).

-spec update_recipe(aws_client:aws_client(), binary() | list(), update_recipe_request(), proplists:proplist()) ->
    {ok, update_recipe_response(), tuple()} |
    {error, any()} |
    {error, update_recipe_errors(), tuple()}.
update_recipe(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/recipes/", aws_util:encode_uri(Name), ""],
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

%% @doc Modifies the definition of an existing DataBrew recipe job.
-spec update_recipe_job(aws_client:aws_client(), binary() | list(), update_recipe_job_request()) ->
    {ok, update_recipe_job_response(), tuple()} |
    {error, any()} |
    {error, update_recipe_job_errors(), tuple()}.
update_recipe_job(Client, Name, Input) ->
    update_recipe_job(Client, Name, Input, []).

-spec update_recipe_job(aws_client:aws_client(), binary() | list(), update_recipe_job_request(), proplists:proplist()) ->
    {ok, update_recipe_job_response(), tuple()} |
    {error, any()} |
    {error, update_recipe_job_errors(), tuple()}.
update_recipe_job(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/recipeJobs/", aws_util:encode_uri(Name), ""],
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

%% @doc Updates specified ruleset.
-spec update_ruleset(aws_client:aws_client(), binary() | list(), update_ruleset_request()) ->
    {ok, update_ruleset_response(), tuple()} |
    {error, any()} |
    {error, update_ruleset_errors(), tuple()}.
update_ruleset(Client, Name, Input) ->
    update_ruleset(Client, Name, Input, []).

-spec update_ruleset(aws_client:aws_client(), binary() | list(), update_ruleset_request(), proplists:proplist()) ->
    {ok, update_ruleset_response(), tuple()} |
    {error, any()} |
    {error, update_ruleset_errors(), tuple()}.
update_ruleset(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/rulesets/", aws_util:encode_uri(Name), ""],
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

%% @doc Modifies the definition of an existing DataBrew schedule.
-spec update_schedule(aws_client:aws_client(), binary() | list(), update_schedule_request()) ->
    {ok, update_schedule_response(), tuple()} |
    {error, any()} |
    {error, update_schedule_errors(), tuple()}.
update_schedule(Client, Name, Input) ->
    update_schedule(Client, Name, Input, []).

-spec update_schedule(aws_client:aws_client(), binary() | list(), update_schedule_request(), proplists:proplist()) ->
    {ok, update_schedule_response(), tuple()} |
    {error, any()} |
    {error, update_schedule_errors(), tuple()}.
update_schedule(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/schedules/", aws_util:encode_uri(Name), ""],
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
    Client1 = Client#{service => <<"databrew">>},
    Host = build_host(<<"databrew">>, Client1),
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
