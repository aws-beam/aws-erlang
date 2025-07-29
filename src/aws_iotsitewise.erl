%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the IoT SiteWise API Reference.
%%
%% IoT SiteWise is an Amazon Web Services service that connects Industrial
%% Internet of Things (IIoT):
%% https://en.wikipedia.org/wiki/Internet_of_things#Industrial_applications
%% devices to the power of the Amazon Web Services Cloud. For more
%% information, see the
%% IoT SiteWise User Guide:
%% https://docs.aws.amazon.com/iot-sitewise/latest/userguide/. For
%% information about IoT SiteWise quotas, see Quotas:
%% https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html in
%% the IoT SiteWise User Guide.
-module(aws_iotsitewise).

-export([associate_assets/3,
         associate_assets/4,
         associate_time_series_to_asset_property/2,
         associate_time_series_to_asset_property/3,
         batch_associate_project_assets/3,
         batch_associate_project_assets/4,
         batch_disassociate_project_assets/3,
         batch_disassociate_project_assets/4,
         batch_get_asset_property_aggregates/2,
         batch_get_asset_property_aggregates/3,
         batch_get_asset_property_value/2,
         batch_get_asset_property_value/3,
         batch_get_asset_property_value_history/2,
         batch_get_asset_property_value_history/3,
         batch_put_asset_property_value/2,
         batch_put_asset_property_value/3,
         create_access_policy/2,
         create_access_policy/3,
         create_asset/2,
         create_asset/3,
         create_asset_model/2,
         create_asset_model/3,
         create_asset_model_composite_model/3,
         create_asset_model_composite_model/4,
         create_bulk_import_job/2,
         create_bulk_import_job/3,
         create_computation_model/2,
         create_computation_model/3,
         create_dashboard/2,
         create_dashboard/3,
         create_dataset/2,
         create_dataset/3,
         create_gateway/2,
         create_gateway/3,
         create_portal/2,
         create_portal/3,
         create_project/2,
         create_project/3,
         delete_access_policy/3,
         delete_access_policy/4,
         delete_asset/3,
         delete_asset/4,
         delete_asset_model/3,
         delete_asset_model/4,
         delete_asset_model_composite_model/4,
         delete_asset_model_composite_model/5,
         delete_computation_model/3,
         delete_computation_model/4,
         delete_dashboard/3,
         delete_dashboard/4,
         delete_dataset/3,
         delete_dataset/4,
         delete_gateway/3,
         delete_gateway/4,
         delete_portal/3,
         delete_portal/4,
         delete_project/3,
         delete_project/4,
         delete_time_series/2,
         delete_time_series/3,
         describe_access_policy/2,
         describe_access_policy/4,
         describe_access_policy/5,
         describe_action/2,
         describe_action/4,
         describe_action/5,
         describe_asset/2,
         describe_asset/4,
         describe_asset/5,
         describe_asset_composite_model/3,
         describe_asset_composite_model/5,
         describe_asset_composite_model/6,
         describe_asset_model/2,
         describe_asset_model/4,
         describe_asset_model/5,
         describe_asset_model_composite_model/3,
         describe_asset_model_composite_model/5,
         describe_asset_model_composite_model/6,
         describe_asset_property/3,
         describe_asset_property/5,
         describe_asset_property/6,
         describe_bulk_import_job/2,
         describe_bulk_import_job/4,
         describe_bulk_import_job/5,
         describe_computation_model/2,
         describe_computation_model/4,
         describe_computation_model/5,
         describe_computation_model_execution_summary/2,
         describe_computation_model_execution_summary/4,
         describe_computation_model_execution_summary/5,
         describe_dashboard/2,
         describe_dashboard/4,
         describe_dashboard/5,
         describe_dataset/2,
         describe_dataset/4,
         describe_dataset/5,
         describe_default_encryption_configuration/1,
         describe_default_encryption_configuration/3,
         describe_default_encryption_configuration/4,
         describe_execution/2,
         describe_execution/4,
         describe_execution/5,
         describe_gateway/2,
         describe_gateway/4,
         describe_gateway/5,
         describe_gateway_capability_configuration/3,
         describe_gateway_capability_configuration/5,
         describe_gateway_capability_configuration/6,
         describe_logging_options/1,
         describe_logging_options/3,
         describe_logging_options/4,
         describe_portal/2,
         describe_portal/4,
         describe_portal/5,
         describe_project/2,
         describe_project/4,
         describe_project/5,
         describe_storage_configuration/1,
         describe_storage_configuration/3,
         describe_storage_configuration/4,
         describe_time_series/1,
         describe_time_series/3,
         describe_time_series/4,
         disassociate_assets/3,
         disassociate_assets/4,
         disassociate_time_series_from_asset_property/2,
         disassociate_time_series_from_asset_property/3,
         execute_action/2,
         execute_action/3,
         execute_query/2,
         execute_query/3,
         get_asset_property_aggregates/5,
         get_asset_property_aggregates/7,
         get_asset_property_aggregates/8,
         get_asset_property_value/1,
         get_asset_property_value/3,
         get_asset_property_value/4,
         get_asset_property_value_history/1,
         get_asset_property_value_history/3,
         get_asset_property_value_history/4,
         get_interpolated_asset_property_values/6,
         get_interpolated_asset_property_values/8,
         get_interpolated_asset_property_values/9,
         invoke_assistant/2,
         invoke_assistant/3,
         list_access_policies/1,
         list_access_policies/3,
         list_access_policies/4,
         list_actions/3,
         list_actions/5,
         list_actions/6,
         list_asset_model_composite_models/2,
         list_asset_model_composite_models/4,
         list_asset_model_composite_models/5,
         list_asset_model_properties/2,
         list_asset_model_properties/4,
         list_asset_model_properties/5,
         list_asset_models/1,
         list_asset_models/3,
         list_asset_models/4,
         list_asset_properties/2,
         list_asset_properties/4,
         list_asset_properties/5,
         list_asset_relationships/3,
         list_asset_relationships/5,
         list_asset_relationships/6,
         list_assets/1,
         list_assets/3,
         list_assets/4,
         list_associated_assets/2,
         list_associated_assets/4,
         list_associated_assets/5,
         list_bulk_import_jobs/1,
         list_bulk_import_jobs/3,
         list_bulk_import_jobs/4,
         list_composition_relationships/2,
         list_composition_relationships/4,
         list_composition_relationships/5,
         list_computation_model_data_binding_usages/2,
         list_computation_model_data_binding_usages/3,
         list_computation_model_resolve_to_resources/2,
         list_computation_model_resolve_to_resources/4,
         list_computation_model_resolve_to_resources/5,
         list_computation_models/1,
         list_computation_models/3,
         list_computation_models/4,
         list_dashboards/2,
         list_dashboards/4,
         list_dashboards/5,
         list_datasets/2,
         list_datasets/4,
         list_datasets/5,
         list_executions/3,
         list_executions/5,
         list_executions/6,
         list_gateways/1,
         list_gateways/3,
         list_gateways/4,
         list_portals/1,
         list_portals/3,
         list_portals/4,
         list_project_assets/2,
         list_project_assets/4,
         list_project_assets/5,
         list_projects/2,
         list_projects/4,
         list_projects/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_time_series/1,
         list_time_series/3,
         list_time_series/4,
         put_default_encryption_configuration/2,
         put_default_encryption_configuration/3,
         put_logging_options/2,
         put_logging_options/3,
         put_storage_configuration/2,
         put_storage_configuration/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_access_policy/3,
         update_access_policy/4,
         update_asset/3,
         update_asset/4,
         update_asset_model/3,
         update_asset_model/4,
         update_asset_model_composite_model/4,
         update_asset_model_composite_model/5,
         update_asset_property/4,
         update_asset_property/5,
         update_computation_model/3,
         update_computation_model/4,
         update_dashboard/3,
         update_dashboard/4,
         update_dataset/3,
         update_dataset/4,
         update_gateway/3,
         update_gateway/4,
         update_gateway_capability_configuration/3,
         update_gateway_capability_configuration/4,
         update_portal/3,
         update_portal/4,
         update_project/3,
         update_project/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% delete_asset_model_response() :: #{
%%   <<"assetModelStatus">> => asset_model_status()
%% }
-type delete_asset_model_response() :: #{binary() => any()}.


%% Example:
%% asset_property_binding_value() :: #{
%%   <<"assetId">> => string(),
%%   <<"propertyId">> => string()
%% }
-type asset_property_binding_value() :: #{binary() => any()}.


%% Example:
%% siemens_i_e() :: #{
%%   <<"iotCoreThingName">> => string()
%% }
-type siemens_i_e() :: #{binary() => any()}.


%% Example:
%% update_gateway_request() :: #{
%%   <<"gatewayName">> := string()
%% }
-type update_gateway_request() :: #{binary() => any()}.


%% Example:
%% execute_query_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"queryStatement">> := string()
%% }
-type execute_query_request() :: #{binary() => any()}.


%% Example:
%% action_summary() :: #{
%%   <<"actionDefinitionId">> => string(),
%%   <<"actionId">> => string(),
%%   <<"resolveTo">> => resolve_to(),
%%   <<"targetResource">> => target_resource()
%% }
-type action_summary() :: #{binary() => any()}.


%% Example:
%% list_dashboards_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"projectId">> := string()
%% }
-type list_dashboards_request() :: #{binary() => any()}.


%% Example:
%% batch_get_asset_property_aggregates_response() :: #{
%%   <<"errorEntries">> => list(batch_get_asset_property_aggregates_error_entry()),
%%   <<"nextToken">> => string(),
%%   <<"skippedEntries">> => list(batch_get_asset_property_aggregates_skipped_entry()),
%%   <<"successEntries">> => list(batch_get_asset_property_aggregates_success_entry())
%% }
-type batch_get_asset_property_aggregates_response() :: #{binary() => any()}.


%% Example:
%% describe_project_response() :: #{
%%   <<"portalId">> => string(),
%%   <<"projectArn">> => string(),
%%   <<"projectCreationDate">> => non_neg_integer(),
%%   <<"projectDescription">> => string(),
%%   <<"projectId">> => string(),
%%   <<"projectLastUpdateDate">> => non_neg_integer(),
%%   <<"projectName">> => string()
%% }
-type describe_project_response() :: #{binary() => any()}.


%% Example:
%% put_default_encryption_configuration_response() :: #{
%%   <<"configurationStatus">> => configuration_status(),
%%   <<"encryptionType">> => list(any()),
%%   <<"kmsKeyArn">> => string()
%% }
-type put_default_encryption_configuration_response() :: #{binary() => any()}.


%% Example:
%% list_composition_relationships_response() :: #{
%%   <<"compositionRelationshipSummaries">> => list(composition_relationship_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_composition_relationships_response() :: #{binary() => any()}.


%% Example:
%% list_access_policies_response() :: #{
%%   <<"accessPolicySummaries">> => list(access_policy_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_access_policies_response() :: #{binary() => any()}.

%% Example:
%% update_dashboard_response() :: #{}
-type update_dashboard_response() :: #{}.


%% Example:
%% portal_resource() :: #{
%%   <<"id">> => string()
%% }
-type portal_resource() :: #{binary() => any()}.


%% Example:
%% describe_asset_model_composite_model_response() :: #{
%%   <<"actionDefinitions">> => list(action_definition()),
%%   <<"assetModelCompositeModelDescription">> => string(),
%%   <<"assetModelCompositeModelExternalId">> => string(),
%%   <<"assetModelCompositeModelId">> => string(),
%%   <<"assetModelCompositeModelName">> => string(),
%%   <<"assetModelCompositeModelPath">> => list(asset_model_composite_model_path_segment()),
%%   <<"assetModelCompositeModelProperties">> => list(asset_model_property()),
%%   <<"assetModelCompositeModelSummaries">> => list(asset_model_composite_model_summary()),
%%   <<"assetModelCompositeModelType">> => string(),
%%   <<"assetModelId">> => string(),
%%   <<"compositionDetails">> => composition_details()
%% }
-type describe_asset_model_composite_model_response() :: #{binary() => any()}.


%% Example:
%% update_dashboard_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"dashboardDefinition">> := string(),
%%   <<"dashboardDescription">> => string(),
%%   <<"dashboardName">> := string()
%% }
-type update_dashboard_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% internal_failure_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_failure_exception() :: #{binary() => any()}.


%% Example:
%% batch_associate_project_assets_response() :: #{
%%   <<"errors">> => list(asset_error_details())
%% }
-type batch_associate_project_assets_response() :: #{binary() => any()}.


%% Example:
%% asset_property() :: #{
%%   <<"alias">> => string(),
%%   <<"dataType">> => list(any()),
%%   <<"dataTypeSpec">> => string(),
%%   <<"externalId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"notification">> => property_notification(),
%%   <<"path">> => list(asset_property_path_segment()),
%%   <<"unit">> => string()
%% }
-type asset_property() :: #{binary() => any()}.


%% Example:
%% conflicting_operation_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceArn">> => string(),
%%   <<"resourceId">> => string()
%% }
-type conflicting_operation_exception() :: #{binary() => any()}.


%% Example:
%% describe_asset_model_composite_model_request() :: #{
%%   <<"assetModelVersion">> => string()
%% }
-type describe_asset_model_composite_model_request() :: #{binary() => any()}.


%% Example:
%% update_computation_model_response() :: #{
%%   <<"computationModelStatus">> => computation_model_status()
%% }
-type update_computation_model_response() :: #{binary() => any()}.


%% Example:
%% get_asset_property_aggregates_response() :: #{
%%   <<"aggregatedValues">> => list(aggregated_value()),
%%   <<"nextToken">> => string()
%% }
-type get_asset_property_aggregates_response() :: #{binary() => any()}.


%% Example:
%% delete_dataset_response() :: #{
%%   <<"datasetStatus">> => dataset_status()
%% }
-type delete_dataset_response() :: #{binary() => any()}.


%% Example:
%% unauthorized_exception() :: #{
%%   <<"message">> => string()
%% }
-type unauthorized_exception() :: #{binary() => any()}.


%% Example:
%% list_project_assets_response() :: #{
%%   <<"assetIds">> => list(string()),
%%   <<"nextToken">> => string()
%% }
-type list_project_assets_response() :: #{binary() => any()}.


%% Example:
%% dataset_source() :: #{
%%   <<"sourceDetail">> => source_detail(),
%%   <<"sourceFormat">> => list(any()),
%%   <<"sourceType">> => list(any())
%% }
-type dataset_source() :: #{binary() => any()}.

%% Example:
%% describe_execution_request() :: #{}
-type describe_execution_request() :: #{}.


%% Example:
%% update_dataset_response() :: #{
%%   <<"datasetArn">> => string(),
%%   <<"datasetId">> => string(),
%%   <<"datasetStatus">> => dataset_status()
%% }
-type update_dataset_response() :: #{binary() => any()}.


%% Example:
%% interpolated_asset_property_value() :: #{
%%   <<"timestamp">> => time_in_nanos(),
%%   <<"value">> => variant()
%% }
-type interpolated_asset_property_value() :: #{binary() => any()}.


%% Example:
%% greengrass() :: #{
%%   <<"groupArn">> => string()
%% }
-type greengrass() :: #{binary() => any()}.


%% Example:
%% project_summary() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"lastUpdateDate">> => non_neg_integer(),
%%   <<"name">> => string()
%% }
-type project_summary() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% detailed_error() :: #{
%%   <<"code">> => list(any()),
%%   <<"message">> => string()
%% }
-type detailed_error() :: #{binary() => any()}.


%% Example:
%% asset_model_hierarchy() :: #{
%%   <<"childAssetModelId">> => string(),
%%   <<"externalId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type asset_model_hierarchy() :: #{binary() => any()}.


%% Example:
%% computation_model_status() :: #{
%%   <<"error">> => error_details(),
%%   <<"state">> => list(any())
%% }
-type computation_model_status() :: #{binary() => any()}.


%% Example:
%% describe_computation_model_response() :: #{
%%   <<"actionDefinitions">> => list(action_definition()),
%%   <<"computationModelArn">> => string(),
%%   <<"computationModelConfiguration">> => computation_model_configuration(),
%%   <<"computationModelCreationDate">> => non_neg_integer(),
%%   <<"computationModelDataBinding">> => map(),
%%   <<"computationModelDescription">> => string(),
%%   <<"computationModelId">> => string(),
%%   <<"computationModelLastUpdateDate">> => non_neg_integer(),
%%   <<"computationModelName">> => string(),
%%   <<"computationModelStatus">> => computation_model_status(),
%%   <<"computationModelVersion">> => string()
%% }
-type describe_computation_model_response() :: #{binary() => any()}.


%% Example:
%% create_gateway_response() :: #{
%%   <<"gatewayArn">> => string(),
%%   <<"gatewayId">> => string()
%% }
-type create_gateway_response() :: #{binary() => any()}.


%% Example:
%% metric() :: #{
%%   <<"expression">> => string(),
%%   <<"processingConfig">> => metric_processing_config(),
%%   <<"variables">> => list(expression_variable()),
%%   <<"window">> => metric_window()
%% }
-type metric() :: #{binary() => any()}.

%% Example:
%% delete_access_policy_response() :: #{}
-type delete_access_policy_response() :: #{}.


%% Example:
%% list_gateways_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_gateways_request() :: #{binary() => any()}.


%% Example:
%% expression_variable() :: #{
%%   <<"name">> => string(),
%%   <<"value">> => variable_value()
%% }
-type expression_variable() :: #{binary() => any()}.


%% Example:
%% list_asset_model_composite_models_response() :: #{
%%   <<"assetModelCompositeModelSummaries">> => list(asset_model_composite_model_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_asset_model_composite_models_response() :: #{binary() => any()}.


%% Example:
%% create_bulk_import_job_request() :: #{
%%   <<"adaptiveIngestion">> => boolean(),
%%   <<"deleteFilesAfterImport">> => boolean(),
%%   <<"errorReportLocation">> := error_report_location(),
%%   <<"files">> := list(file()),
%%   <<"jobConfiguration">> := job_configuration(),
%%   <<"jobName">> := string(),
%%   <<"jobRoleArn">> := string()
%% }
-type create_bulk_import_job_request() :: #{binary() => any()}.


%% Example:
%% get_asset_property_value_response() :: #{
%%   <<"propertyValue">> => asset_property_value()
%% }
-type get_asset_property_value_response() :: #{binary() => any()}.


%% Example:
%% asset_property_value() :: #{
%%   <<"quality">> => list(any()),
%%   <<"timestamp">> => time_in_nanos(),
%%   <<"value">> => variant()
%% }
-type asset_property_value() :: #{binary() => any()}.

%% Example:
%% put_logging_options_response() :: #{}
-type put_logging_options_response() :: #{}.


%% Example:
%% identity() :: #{
%%   <<"group">> => group_identity(),
%%   <<"iamRole">> => iam_role_identity(),
%%   <<"iamUser">> => iam_user_identity(),
%%   <<"user">> => user_identity()
%% }
-type identity() :: #{binary() => any()}.


%% Example:
%% file_format() :: #{
%%   <<"csv">> => csv(),
%%   <<"parquet">> => parquet()
%% }
-type file_format() :: #{binary() => any()}.


%% Example:
%% list_bulk_import_jobs_request() :: #{
%%   <<"filter">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_bulk_import_jobs_request() :: #{binary() => any()}.


%% Example:
%% describe_default_encryption_configuration_response() :: #{
%%   <<"configurationStatus">> => configuration_status(),
%%   <<"encryptionType">> => list(any()),
%%   <<"kmsKeyArn">> => string()
%% }
-type describe_default_encryption_configuration_response() :: #{binary() => any()}.

%% Example:
%% describe_project_request() :: #{}
-type describe_project_request() :: #{}.


%% Example:
%% describe_action_response() :: #{
%%   <<"actionDefinitionId">> => string(),
%%   <<"actionId">> => string(),
%%   <<"actionPayload">> => action_payload(),
%%   <<"executionTime">> => non_neg_integer(),
%%   <<"resolveTo">> => resolve_to(),
%%   <<"targetResource">> => target_resource()
%% }
-type describe_action_response() :: #{binary() => any()}.

%% Example:
%% describe_bulk_import_job_request() :: #{}
-type describe_bulk_import_job_request() :: #{}.


%% Example:
%% property_value_null_value() :: #{
%%   <<"valueType">> => list(any())
%% }
-type property_value_null_value() :: #{binary() => any()}.


%% Example:
%% delete_computation_model_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_computation_model_request() :: #{binary() => any()}.


%% Example:
%% describe_asset_response() :: #{
%%   <<"assetArn">> => string(),
%%   <<"assetCompositeModelSummaries">> => list(asset_composite_model_summary()),
%%   <<"assetCompositeModels">> => list(asset_composite_model()),
%%   <<"assetCreationDate">> => non_neg_integer(),
%%   <<"assetDescription">> => string(),
%%   <<"assetExternalId">> => string(),
%%   <<"assetHierarchies">> => list(asset_hierarchy()),
%%   <<"assetId">> => string(),
%%   <<"assetLastUpdateDate">> => non_neg_integer(),
%%   <<"assetModelId">> => string(),
%%   <<"assetName">> => string(),
%%   <<"assetProperties">> => list(asset_property()),
%%   <<"assetStatus">> => asset_status()
%% }
-type describe_asset_response() :: #{binary() => any()}.


%% Example:
%% put_asset_property_value_entry() :: #{
%%   <<"assetId">> => string(),
%%   <<"entryId">> => string(),
%%   <<"propertyAlias">> => string(),
%%   <<"propertyId">> => string(),
%%   <<"propertyValues">> => list(asset_property_value())
%% }
-type put_asset_property_value_entry() :: #{binary() => any()}.


%% Example:
%% retention_period() :: #{
%%   <<"numberOfDays">> => integer(),
%%   <<"unlimited">> => boolean()
%% }
-type retention_period() :: #{binary() => any()}.


%% Example:
%% batch_get_asset_property_value_skipped_entry() :: #{
%%   <<"completionStatus">> => list(any()),
%%   <<"entryId">> => string(),
%%   <<"errorInfo">> => batch_get_asset_property_value_error_info()
%% }
-type batch_get_asset_property_value_skipped_entry() :: #{binary() => any()}.


%% Example:
%% delete_access_policy_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_access_policy_request() :: #{binary() => any()}.


%% Example:
%% asset_model_property() :: #{
%%   <<"dataType">> => list(any()),
%%   <<"dataTypeSpec">> => string(),
%%   <<"externalId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"path">> => list(asset_model_property_path_segment()),
%%   <<"type">> => property_type(),
%%   <<"unit">> => string()
%% }
-type asset_model_property() :: #{binary() => any()}.


%% Example:
%% datum() :: #{
%%   <<"arrayValue">> => list(datum()),
%%   <<"nullValue">> => boolean(),
%%   <<"rowValue">> => row(),
%%   <<"scalarValue">> => string()
%% }
-type datum() :: #{binary() => any()}.


%% Example:
%% citation() :: #{
%%   <<"content">> => content(),
%%   <<"reference">> => reference()
%% }
-type citation() :: #{binary() => any()}.


%% Example:
%% project_resource() :: #{
%%   <<"id">> => string()
%% }
-type project_resource() :: #{binary() => any()}.


%% Example:
%% create_portal_response() :: #{
%%   <<"portalArn">> => string(),
%%   <<"portalId">> => string(),
%%   <<"portalStartUrl">> => string(),
%%   <<"portalStatus">> => portal_status(),
%%   <<"ssoApplicationId">> => string()
%% }
-type create_portal_response() :: #{binary() => any()}.


%% Example:
%% describe_asset_property_response() :: #{
%%   <<"assetExternalId">> => string(),
%%   <<"assetId">> => string(),
%%   <<"assetModelId">> => string(),
%%   <<"assetName">> => string(),
%%   <<"assetProperty">> => property(),
%%   <<"compositeModel">> => composite_model_property()
%% }
-type describe_asset_property_response() :: #{binary() => any()}.


%% Example:
%% list_computation_model_resolve_to_resources_response() :: #{
%%   <<"computationModelResolveToResourceSummaries">> => list(computation_model_resolve_to_resource_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_computation_model_resolve_to_resources_response() :: #{binary() => any()}.


%% Example:
%% get_asset_property_value_request() :: #{
%%   <<"assetId">> => string(),
%%   <<"propertyAlias">> => string(),
%%   <<"propertyId">> => string()
%% }
-type get_asset_property_value_request() :: #{binary() => any()}.


%% Example:
%% list_datasets_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sourceType">> := list(any())
%% }
-type list_datasets_request() :: #{binary() => any()}.


%% Example:
%% asset_model_composite_model() :: #{
%%   <<"description">> => string(),
%%   <<"externalId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"properties">> => list(asset_model_property()),
%%   <<"type">> => string()
%% }
-type asset_model_composite_model() :: #{binary() => any()}.


%% Example:
%% asset_model_binding_value_filter() :: #{
%%   <<"assetModelId">> => string()
%% }
-type asset_model_binding_value_filter() :: #{binary() => any()}.


%% Example:
%% list_access_policies_request() :: #{
%%   <<"iamArn">> => string(),
%%   <<"identityId">> => string(),
%%   <<"identityType">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => list(any())
%% }
-type list_access_policies_request() :: #{binary() => any()}.


%% Example:
%% create_access_policy_response() :: #{
%%   <<"accessPolicyArn">> => string(),
%%   <<"accessPolicyId">> => string()
%% }
-type create_access_policy_response() :: #{binary() => any()}.


%% Example:
%% error_report_location() :: #{
%%   <<"bucket">> => string(),
%%   <<"prefix">> => string()
%% }
-type error_report_location() :: #{binary() => any()}.


%% Example:
%% describe_execution_response() :: #{
%%   <<"actionType">> => string(),
%%   <<"executionDetails">> => map(),
%%   <<"executionEndTime">> => non_neg_integer(),
%%   <<"executionEntityVersion">> => string(),
%%   <<"executionId">> => string(),
%%   <<"executionResult">> => map(),
%%   <<"executionStartTime">> => non_neg_integer(),
%%   <<"executionStatus">> => execution_status(),
%%   <<"resolveTo">> => resolve_to(),
%%   <<"targetResource">> => target_resource(),
%%   <<"targetResourceVersion">> => string()
%% }
-type describe_execution_response() :: #{binary() => any()}.


%% Example:
%% batch_get_asset_property_value_history_skipped_entry() :: #{
%%   <<"completionStatus">> => list(any()),
%%   <<"entryId">> => string(),
%%   <<"errorInfo">> => batch_get_asset_property_value_history_error_info()
%% }
-type batch_get_asset_property_value_history_skipped_entry() :: #{binary() => any()}.


%% Example:
%% list_computation_models_response() :: #{
%%   <<"computationModelSummaries">> => list(computation_model_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_computation_models_response() :: #{binary() => any()}.


%% Example:
%% access_policy_summary() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"identity">> => identity(),
%%   <<"lastUpdateDate">> => non_neg_integer(),
%%   <<"permission">> => list(any()),
%%   <<"resource">> => resource()
%% }
-type access_policy_summary() :: #{binary() => any()}.


%% Example:
%% delete_asset_model_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"ifMatch">> => string(),
%%   <<"ifNoneMatch">> => string(),
%%   <<"matchForVersionType">> => list(any())
%% }
-type delete_asset_model_request() :: #{binary() => any()}.


%% Example:
%% batch_get_asset_property_aggregates_request() :: #{
%%   <<"entries">> := list(batch_get_asset_property_aggregates_entry()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type batch_get_asset_property_aggregates_request() :: #{binary() => any()}.


%% Example:
%% describe_logging_options_response() :: #{
%%   <<"loggingOptions">> => logging_options()
%% }
-type describe_logging_options_response() :: #{binary() => any()}.


%% Example:
%% composite_model_property() :: #{
%%   <<"assetProperty">> => property(),
%%   <<"externalId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"type">> => string()
%% }
-type composite_model_property() :: #{binary() => any()}.


%% Example:
%% user_identity() :: #{
%%   <<"id">> => string()
%% }
-type user_identity() :: #{binary() => any()}.


%% Example:
%% kendra_source_detail() :: #{
%%   <<"knowledgeBaseArn">> => string(),
%%   <<"roleArn">> => string()
%% }
-type kendra_source_detail() :: #{binary() => any()}.


%% Example:
%% invocation_output() :: #{
%%   <<"citations">> => list(citation()),
%%   <<"message">> => string()
%% }
-type invocation_output() :: #{binary() => any()}.


%% Example:
%% metric_processing_config() :: #{
%%   <<"computeLocation">> => list(any())
%% }
-type metric_processing_config() :: #{binary() => any()}.


%% Example:
%% group_identity() :: #{
%%   <<"id">> => string()
%% }
-type group_identity() :: #{binary() => any()}.


%% Example:
%% create_asset_request() :: #{
%%   <<"assetDescription">> => string(),
%%   <<"assetExternalId">> => string(),
%%   <<"assetId">> => string(),
%%   <<"assetModelId">> := string(),
%%   <<"assetName">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"tags">> => map()
%% }
-type create_asset_request() :: #{binary() => any()}.


%% Example:
%% metric_window() :: #{
%%   <<"tumbling">> => tumbling_window()
%% }
-type metric_window() :: #{binary() => any()}.


%% Example:
%% file() :: #{
%%   <<"bucket">> => string(),
%%   <<"key">> => string(),
%%   <<"versionId">> => string()
%% }
-type file() :: #{binary() => any()}.


%% Example:
%% asset_status() :: #{
%%   <<"error">> => error_details(),
%%   <<"state">> => list(any())
%% }
-type asset_status() :: #{binary() => any()}.


%% Example:
%% asset_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"assetModelId">> => string(),
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"externalId">> => string(),
%%   <<"hierarchies">> => list(asset_hierarchy()),
%%   <<"id">> => string(),
%%   <<"lastUpdateDate">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"status">> => asset_status()
%% }
-type asset_summary() :: #{binary() => any()}.


%% Example:
%% batch_get_asset_property_aggregates_skipped_entry() :: #{
%%   <<"completionStatus">> => list(any()),
%%   <<"entryId">> => string(),
%%   <<"errorInfo">> => batch_get_asset_property_aggregates_error_info()
%% }
-type batch_get_asset_property_aggregates_skipped_entry() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% computation_model_anomaly_detection_configuration() :: #{
%%   <<"inputProperties">> => string(),
%%   <<"resultProperty">> => string()
%% }
-type computation_model_anomaly_detection_configuration() :: #{binary() => any()}.

%% Example:
%% update_project_response() :: #{}
-type update_project_response() :: #{}.


%% Example:
%% portal_status() :: #{
%%   <<"error">> => monitor_error_details(),
%%   <<"state">> => list(any())
%% }
-type portal_status() :: #{binary() => any()}.


%% Example:
%% asset_model_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"assetModelType">> => list(any()),
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"externalId">> => string(),
%%   <<"id">> => string(),
%%   <<"lastUpdateDate">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"status">> => asset_model_status(),
%%   <<"version">> => string()
%% }
-type asset_model_summary() :: #{binary() => any()}.


%% Example:
%% describe_time_series_request() :: #{
%%   <<"alias">> => string(),
%%   <<"assetId">> => string(),
%%   <<"propertyId">> => string()
%% }
-type describe_time_series_request() :: #{binary() => any()}.


%% Example:
%% iotsitewise_reference() :: #{
%%   <<"dataset">> => data_set_reference()
%% }
-type iotsitewise_reference() :: #{binary() => any()}.


%% Example:
%% alarms() :: #{
%%   <<"alarmRoleArn">> => string(),
%%   <<"notificationLambdaArn">> => string()
%% }
-type alarms() :: #{binary() => any()}.


%% Example:
%% execution_status() :: #{
%%   <<"state">> => list(any())
%% }
-type execution_status() :: #{binary() => any()}.


%% Example:
%% list_associated_assets_request() :: #{
%%   <<"hierarchyId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"traversalDirection">> => list(any())
%% }
-type list_associated_assets_request() :: #{binary() => any()}.


%% Example:
%% configuration_status() :: #{
%%   <<"error">> => configuration_error_details(),
%%   <<"state">> => list(any())
%% }
-type configuration_status() :: #{binary() => any()}.


%% Example:
%% batch_get_asset_property_value_history_response() :: #{
%%   <<"errorEntries">> => list(batch_get_asset_property_value_history_error_entry()),
%%   <<"nextToken">> => string(),
%%   <<"skippedEntries">> => list(batch_get_asset_property_value_history_skipped_entry()),
%%   <<"successEntries">> => list(batch_get_asset_property_value_history_success_entry())
%% }
-type batch_get_asset_property_value_history_response() :: #{binary() => any()}.


%% Example:
%% multi_layer_storage() :: #{
%%   <<"customerManagedS3Storage">> => customer_managed_s3_storage()
%% }
-type multi_layer_storage() :: #{binary() => any()}.


%% Example:
%% target_resource() :: #{
%%   <<"assetId">> => string(),
%%   <<"computationModelId">> => string()
%% }
-type target_resource() :: #{binary() => any()}.


%% Example:
%% list_project_assets_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_project_assets_request() :: #{binary() => any()}.


%% Example:
%% create_computation_model_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"computationModelConfiguration">> := computation_model_configuration(),
%%   <<"computationModelDataBinding">> := map(),
%%   <<"computationModelDescription">> => string(),
%%   <<"computationModelName">> := string(),
%%   <<"tags">> => map()
%% }
-type create_computation_model_request() :: #{binary() => any()}.

%% Example:
%% describe_action_request() :: #{}
-type describe_action_request() :: #{}.


%% Example:
%% list_computation_model_data_binding_usages_response() :: #{
%%   <<"dataBindingUsageSummaries">> => list(computation_model_data_binding_usage_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_computation_model_data_binding_usages_response() :: #{binary() => any()}.


%% Example:
%% describe_bulk_import_job_response() :: #{
%%   <<"adaptiveIngestion">> => boolean(),
%%   <<"deleteFilesAfterImport">> => boolean(),
%%   <<"errorReportLocation">> => error_report_location(),
%%   <<"files">> => list(file()),
%%   <<"jobConfiguration">> => job_configuration(),
%%   <<"jobCreationDate">> => non_neg_integer(),
%%   <<"jobId">> => string(),
%%   <<"jobLastUpdateDate">> => non_neg_integer(),
%%   <<"jobName">> => string(),
%%   <<"jobRoleArn">> => string(),
%%   <<"jobStatus">> => list(any())
%% }
-type describe_bulk_import_job_response() :: #{binary() => any()}.


%% Example:
%% batch_associate_project_assets_request() :: #{
%%   <<"assetIds">> := list(string()),
%%   <<"clientToken">> => string()
%% }
-type batch_associate_project_assets_request() :: #{binary() => any()}.


%% Example:
%% create_asset_model_response() :: #{
%%   <<"assetModelArn">> => string(),
%%   <<"assetModelId">> => string(),
%%   <<"assetModelStatus">> => asset_model_status()
%% }
-type create_asset_model_response() :: #{binary() => any()}.


%% Example:
%% execution_summary() :: #{
%%   <<"actionType">> => string(),
%%   <<"executionEndTime">> => non_neg_integer(),
%%   <<"executionEntityVersion">> => string(),
%%   <<"executionId">> => string(),
%%   <<"executionStartTime">> => non_neg_integer(),
%%   <<"executionStatus">> => execution_status(),
%%   <<"resolveTo">> => resolve_to(),
%%   <<"targetResource">> => target_resource(),
%%   <<"targetResourceVersion">> => string()
%% }
-type execution_summary() :: #{binary() => any()}.


%% Example:
%% update_asset_response() :: #{
%%   <<"assetStatus">> => asset_status()
%% }
-type update_asset_response() :: #{binary() => any()}.

%% Example:
%% update_access_policy_response() :: #{}
-type update_access_policy_response() :: #{}.


%% Example:
%% batch_get_asset_property_value_error_entry() :: #{
%%   <<"entryId">> => string(),
%%   <<"errorCode">> => list(any()),
%%   <<"errorMessage">> => string()
%% }
-type batch_get_asset_property_value_error_entry() :: #{binary() => any()}.


%% Example:
%% computation_model_data_binding_usage_summary() :: #{
%%   <<"computationModelIds">> => list(string()),
%%   <<"matchedDataBinding">> => matched_data_binding()
%% }
-type computation_model_data_binding_usage_summary() :: #{binary() => any()}.


%% Example:
%% execute_action_response() :: #{
%%   <<"actionId">> => string()
%% }
-type execute_action_response() :: #{binary() => any()}.


%% Example:
%% gateway_summary() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"gatewayCapabilitySummaries">> => list(gateway_capability_summary()),
%%   <<"gatewayId">> => string(),
%%   <<"gatewayName">> => string(),
%%   <<"gatewayPlatform">> => gateway_platform(),
%%   <<"gatewayVersion">> => string(),
%%   <<"lastUpdateDate">> => non_neg_integer()
%% }
-type gateway_summary() :: #{binary() => any()}.


%% Example:
%% list_time_series_response() :: #{
%%   <<"TimeSeriesSummaries">> => list(time_series_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_time_series_response() :: #{binary() => any()}.


%% Example:
%% list_portals_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_portals_request() :: #{binary() => any()}.


%% Example:
%% create_dataset_response() :: #{
%%   <<"datasetArn">> => string(),
%%   <<"datasetId">> => string(),
%%   <<"datasetStatus">> => dataset_status()
%% }
-type create_dataset_response() :: #{binary() => any()}.


%% Example:
%% job_summary() :: #{
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type job_summary() :: #{binary() => any()}.


%% Example:
%% asset_composite_model() :: #{
%%   <<"description">> => string(),
%%   <<"externalId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"properties">> => list(asset_property()),
%%   <<"type">> => string()
%% }
-type asset_composite_model() :: #{binary() => any()}.

%% Example:
%% describe_gateway_capability_configuration_request() :: #{}
-type describe_gateway_capability_configuration_request() :: #{}.


%% Example:
%% update_gateway_capability_configuration_request() :: #{
%%   <<"capabilityConfiguration">> := string(),
%%   <<"capabilityNamespace">> := string()
%% }
-type update_gateway_capability_configuration_request() :: #{binary() => any()}.


%% Example:
%% delete_portal_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_portal_request() :: #{binary() => any()}.


%% Example:
%% describe_time_series_response() :: #{
%%   <<"alias">> => string(),
%%   <<"assetId">> => string(),
%%   <<"dataType">> => list(any()),
%%   <<"dataTypeSpec">> => string(),
%%   <<"propertyId">> => string(),
%%   <<"timeSeriesArn">> => string(),
%%   <<"timeSeriesCreationDate">> => non_neg_integer(),
%%   <<"timeSeriesId">> => string(),
%%   <<"timeSeriesLastUpdateDate">> => non_neg_integer()
%% }
-type describe_time_series_response() :: #{binary() => any()}.


%% Example:
%% computation_model_data_binding_value() :: #{
%%   <<"assetModelProperty">> => asset_model_property_binding_value(),
%%   <<"assetProperty">> => asset_property_binding_value(),
%%   <<"list">> => list(computation_model_data_binding_value())
%% }
-type computation_model_data_binding_value() :: #{binary() => any()}.


%% Example:
%% batch_get_asset_property_aggregates_success_entry() :: #{
%%   <<"aggregatedValues">> => list(aggregated_value()),
%%   <<"entryId">> => string()
%% }
-type batch_get_asset_property_aggregates_success_entry() :: #{binary() => any()}.


%% Example:
%% get_interpolated_asset_property_values_request() :: #{
%%   <<"assetId">> => string(),
%%   <<"endTimeInSeconds">> := float(),
%%   <<"endTimeOffsetInNanos">> => integer(),
%%   <<"intervalInSeconds">> := float(),
%%   <<"intervalWindowInSeconds">> => float(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"propertyAlias">> => string(),
%%   <<"propertyId">> => string(),
%%   <<"quality">> := list(any()),
%%   <<"startTimeInSeconds">> := float(),
%%   <<"startTimeOffsetInNanos">> => integer(),
%%   <<"type">> := string()
%% }
-type get_interpolated_asset_property_values_request() :: #{binary() => any()}.


%% Example:
%% create_project_response() :: #{
%%   <<"projectArn">> => string(),
%%   <<"projectId">> => string()
%% }
-type create_project_response() :: #{binary() => any()}.


%% Example:
%% monitor_error_details() :: #{
%%   <<"code">> => list(any()),
%%   <<"message">> => string()
%% }
-type monitor_error_details() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% batch_get_asset_property_aggregates_error_entry() :: #{
%%   <<"entryId">> => string(),
%%   <<"errorCode">> => list(any()),
%%   <<"errorMessage">> => string()
%% }
-type batch_get_asset_property_aggregates_error_entry() :: #{binary() => any()}.


%% Example:
%% invoke_assistant_request() :: #{
%%   <<"conversationId">> => string(),
%%   <<"enableTrace">> => [boolean()],
%%   <<"message">> := string()
%% }
-type invoke_assistant_request() :: #{binary() => any()}.


%% Example:
%% warm_tier_retention_period() :: #{
%%   <<"numberOfDays">> => integer(),
%%   <<"unlimited">> => boolean()
%% }
-type warm_tier_retention_period() :: #{binary() => any()}.


%% Example:
%% batch_get_asset_property_value_error_info() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"errorTimestamp">> => non_neg_integer()
%% }
-type batch_get_asset_property_value_error_info() :: #{binary() => any()}.


%% Example:
%% list_executions_response() :: #{
%%   <<"executionSummaries">> => list(execution_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_executions_response() :: #{binary() => any()}.


%% Example:
%% dataset_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"lastUpdateDate">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"status">> => dataset_status()
%% }
-type dataset_summary() :: #{binary() => any()}.


%% Example:
%% asset_composite_model_path_segment() :: #{
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type asset_composite_model_path_segment() :: #{binary() => any()}.


%% Example:
%% computation_model_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"lastUpdateDate">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"status">> => computation_model_status(),
%%   <<"type">> => list(any()),
%%   <<"version">> => string()
%% }
-type computation_model_summary() :: #{binary() => any()}.


%% Example:
%% invalid_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.


%% Example:
%% aggregated_value() :: #{
%%   <<"quality">> => list(any()),
%%   <<"timestamp">> => non_neg_integer(),
%%   <<"value">> => aggregates()
%% }
-type aggregated_value() :: #{binary() => any()}.


%% Example:
%% source_detail() :: #{
%%   <<"kendra">> => kendra_source_detail()
%% }
-type source_detail() :: #{binary() => any()}.


%% Example:
%% list_computation_model_resolve_to_resources_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_computation_model_resolve_to_resources_request() :: #{binary() => any()}.


%% Example:
%% row() :: #{
%%   <<"data">> => list(datum())
%% }
-type row() :: #{binary() => any()}.


%% Example:
%% disassociate_time_series_from_asset_property_request() :: #{
%%   <<"alias">> := string(),
%%   <<"assetId">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"propertyId">> := string()
%% }
-type disassociate_time_series_from_asset_property_request() :: #{binary() => any()}.


%% Example:
%% delete_portal_response() :: #{
%%   <<"portalStatus">> => portal_status()
%% }
-type delete_portal_response() :: #{binary() => any()}.


%% Example:
%% update_asset_model_request() :: #{
%%   <<"assetModelCompositeModels">> => list(asset_model_composite_model()),
%%   <<"assetModelDescription">> => string(),
%%   <<"assetModelExternalId">> => string(),
%%   <<"assetModelHierarchies">> => list(asset_model_hierarchy()),
%%   <<"assetModelName">> := string(),
%%   <<"assetModelProperties">> => list(asset_model_property()),
%%   <<"clientToken">> => string(),
%%   <<"ifMatch">> => string(),
%%   <<"ifNoneMatch">> => string(),
%%   <<"matchForVersionType">> => list(any())
%% }
-type update_asset_model_request() :: #{binary() => any()}.


%% Example:
%% create_portal_request() :: #{
%%   <<"alarms">> => alarms(),
%%   <<"clientToken">> => string(),
%%   <<"notificationSenderEmail">> => string(),
%%   <<"portalAuthMode">> => list(any()),
%%   <<"portalContactEmail">> := string(),
%%   <<"portalDescription">> => string(),
%%   <<"portalLogoImageFile">> => image_file(),
%%   <<"portalName">> := string(),
%%   <<"portalType">> => list(any()),
%%   <<"portalTypeConfiguration">> => map(),
%%   <<"roleArn">> := string(),
%%   <<"tags">> => map()
%% }
-type create_portal_request() :: #{binary() => any()}.


%% Example:
%% associated_assets_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"assetModelId">> => string(),
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"externalId">> => string(),
%%   <<"hierarchies">> => list(asset_hierarchy()),
%%   <<"id">> => string(),
%%   <<"lastUpdateDate">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"status">> => asset_status()
%% }
-type associated_assets_summary() :: #{binary() => any()}.


%% Example:
%% gateway_capability_summary() :: #{
%%   <<"capabilityNamespace">> => string(),
%%   <<"capabilitySyncStatus">> => list(any())
%% }
-type gateway_capability_summary() :: #{binary() => any()}.


%% Example:
%% configuration_error_details() :: #{
%%   <<"code">> => list(any()),
%%   <<"message">> => string()
%% }
-type configuration_error_details() :: #{binary() => any()}.


%% Example:
%% update_portal_response() :: #{
%%   <<"portalStatus">> => portal_status()
%% }
-type update_portal_response() :: #{binary() => any()}.


%% Example:
%% describe_gateway_capability_configuration_response() :: #{
%%   <<"capabilityConfiguration">> => string(),
%%   <<"capabilityNamespace">> => string(),
%%   <<"capabilitySyncStatus">> => list(any()),
%%   <<"gatewayId">> => string()
%% }
-type describe_gateway_capability_configuration_response() :: #{binary() => any()}.


%% Example:
%% asset_property_summary() :: #{
%%   <<"alias">> => string(),
%%   <<"assetCompositeModelId">> => string(),
%%   <<"externalId">> => string(),
%%   <<"id">> => string(),
%%   <<"notification">> => property_notification(),
%%   <<"path">> => list(asset_property_path_segment()),
%%   <<"unit">> => string()
%% }
-type asset_property_summary() :: #{binary() => any()}.


%% Example:
%% asset_model_composite_model_definition() :: #{
%%   <<"description">> => string(),
%%   <<"externalId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"properties">> => list(asset_model_property_definition()),
%%   <<"type">> => string()
%% }
-type asset_model_composite_model_definition() :: #{binary() => any()}.


%% Example:
%% csv() :: #{
%%   <<"columnNames">> => list(list(any())())
%% }
-type csv() :: #{binary() => any()}.

%% Example:
%% describe_default_encryption_configuration_request() :: #{}
-type describe_default_encryption_configuration_request() :: #{}.


%% Example:
%% list_asset_relationships_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"traversalType">> := list(any())
%% }
-type list_asset_relationships_request() :: #{binary() => any()}.


%% Example:
%% describe_dashboard_response() :: #{
%%   <<"dashboardArn">> => string(),
%%   <<"dashboardCreationDate">> => non_neg_integer(),
%%   <<"dashboardDefinition">> => string(),
%%   <<"dashboardDescription">> => string(),
%%   <<"dashboardId">> => string(),
%%   <<"dashboardLastUpdateDate">> => non_neg_integer(),
%%   <<"dashboardName">> => string(),
%%   <<"projectId">> => string()
%% }
-type describe_dashboard_response() :: #{binary() => any()}.


%% Example:
%% describe_portal_response() :: #{
%%   <<"alarms">> => alarms(),
%%   <<"notificationSenderEmail">> => string(),
%%   <<"portalArn">> => string(),
%%   <<"portalAuthMode">> => list(any()),
%%   <<"portalClientId">> => string(),
%%   <<"portalContactEmail">> => string(),
%%   <<"portalCreationDate">> => non_neg_integer(),
%%   <<"portalDescription">> => string(),
%%   <<"portalId">> => string(),
%%   <<"portalLastUpdateDate">> => non_neg_integer(),
%%   <<"portalLogoImageLocation">> => image_location(),
%%   <<"portalName">> => string(),
%%   <<"portalStartUrl">> => string(),
%%   <<"portalStatus">> => portal_status(),
%%   <<"portalType">> => list(any()),
%%   <<"portalTypeConfiguration">> => map(),
%%   <<"roleArn">> => string()
%% }
-type describe_portal_response() :: #{binary() => any()}.


%% Example:
%% asset_model_property_path_segment() :: #{
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type asset_model_property_path_segment() :: #{binary() => any()}.


%% Example:
%% list_projects_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"projectSummaries">> => list(project_summary())
%% }
-type list_projects_response() :: #{binary() => any()}.


%% Example:
%% list_computation_model_data_binding_usages_request() :: #{
%%   <<"dataBindingValueFilter">> := data_binding_value_filter(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_computation_model_data_binding_usages_request() :: #{binary() => any()}.


%% Example:
%% delete_asset_response() :: #{
%%   <<"assetStatus">> => asset_status()
%% }
-type delete_asset_response() :: #{binary() => any()}.


%% Example:
%% update_computation_model_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"computationModelConfiguration">> := computation_model_configuration(),
%%   <<"computationModelDataBinding">> := map(),
%%   <<"computationModelDescription">> => string(),
%%   <<"computationModelName">> := string()
%% }
-type update_computation_model_request() :: #{binary() => any()}.


%% Example:
%% job_configuration() :: #{
%%   <<"fileFormat">> => file_format()
%% }
-type job_configuration() :: #{binary() => any()}.


%% Example:
%% error_details() :: #{
%%   <<"code">> => list(any()),
%%   <<"details">> => list(detailed_error()),
%%   <<"message">> => string()
%% }
-type error_details() :: #{binary() => any()}.


%% Example:
%% property_notification() :: #{
%%   <<"state">> => list(any()),
%%   <<"topic">> => string()
%% }
-type property_notification() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% update_asset_property_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"propertyAlias">> => string(),
%%   <<"propertyNotificationState">> => list(any()),
%%   <<"propertyUnit">> => string()
%% }
-type update_asset_property_request() :: #{binary() => any()}.


%% Example:
%% update_gateway_capability_configuration_response() :: #{
%%   <<"capabilityNamespace">> => string(),
%%   <<"capabilitySyncStatus">> => list(any())
%% }
-type update_gateway_capability_configuration_response() :: #{binary() => any()}.


%% Example:
%% action_payload() :: #{
%%   <<"stringValue">> => string()
%% }
-type action_payload() :: #{binary() => any()}.


%% Example:
%% list_actions_response() :: #{
%%   <<"actionSummaries">> => list(action_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_actions_response() :: #{binary() => any()}.


%% Example:
%% customer_managed_s3_storage() :: #{
%%   <<"roleArn">> => string(),
%%   <<"s3ResourceArn">> => string()
%% }
-type customer_managed_s3_storage() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% image_location() :: #{
%%   <<"id">> => string(),
%%   <<"url">> => string()
%% }
-type image_location() :: #{binary() => any()}.


%% Example:
%% composition_relationship_summary() :: #{
%%   <<"assetModelCompositeModelId">> => string(),
%%   <<"assetModelCompositeModelType">> => string(),
%%   <<"assetModelId">> => string()
%% }
-type composition_relationship_summary() :: #{binary() => any()}.


%% Example:
%% list_actions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resolveToResourceId">> => string(),
%%   <<"resolveToResourceType">> => list(any()),
%%   <<"targetResourceId">> := string(),
%%   <<"targetResourceType">> := list(any())
%% }
-type list_actions_request() :: #{binary() => any()}.


%% Example:
%% location() :: #{
%%   <<"uri">> => string()
%% }
-type location() :: #{binary() => any()}.


%% Example:
%% iam_role_identity() :: #{
%%   <<"arn">> => string()
%% }
-type iam_role_identity() :: #{binary() => any()}.


%% Example:
%% transform_processing_config() :: #{
%%   <<"computeLocation">> => list(any()),
%%   <<"forwardingConfig">> => forwarding_config()
%% }
-type transform_processing_config() :: #{binary() => any()}.


%% Example:
%% update_dataset_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"datasetDescription">> => string(),
%%   <<"datasetName">> := string(),
%%   <<"datasetSource">> := dataset_source()
%% }
-type update_dataset_request() :: #{binary() => any()}.


%% Example:
%% asset_model_property_binding_value_filter() :: #{
%%   <<"assetModelId">> => string(),
%%   <<"propertyId">> => string()
%% }
-type asset_model_property_binding_value_filter() :: #{binary() => any()}.


%% Example:
%% create_asset_model_composite_model_request() :: #{
%%   <<"assetModelCompositeModelDescription">> => string(),
%%   <<"assetModelCompositeModelExternalId">> => string(),
%%   <<"assetModelCompositeModelId">> => string(),
%%   <<"assetModelCompositeModelName">> := string(),
%%   <<"assetModelCompositeModelProperties">> => list(asset_model_property_definition()),
%%   <<"assetModelCompositeModelType">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"composedAssetModelId">> => string(),
%%   <<"ifMatch">> => string(),
%%   <<"ifNoneMatch">> => string(),
%%   <<"matchForVersionType">> => list(any()),
%%   <<"parentAssetModelCompositeModelId">> => string()
%% }
-type create_asset_model_composite_model_request() :: #{binary() => any()}.


%% Example:
%% image_file() :: #{
%%   <<"data">> => binary(),
%%   <<"type">> => list(any())
%% }
-type image_file() :: #{binary() => any()}.


%% Example:
%% describe_asset_model_request() :: #{
%%   <<"assetModelVersion">> => string(),
%%   <<"excludeProperties">> => boolean()
%% }
-type describe_asset_model_request() :: #{binary() => any()}.


%% Example:
%% put_storage_configuration_response() :: #{
%%   <<"configurationStatus">> => configuration_status(),
%%   <<"disallowIngestNullNaN">> => boolean(),
%%   <<"disassociatedDataStorage">> => list(any()),
%%   <<"multiLayerStorage">> => multi_layer_storage(),
%%   <<"retentionPeriod">> => retention_period(),
%%   <<"storageType">> => list(any()),
%%   <<"warmTier">> => list(any()),
%%   <<"warmTierRetentionPeriod">> => warm_tier_retention_period()
%% }
-type put_storage_configuration_response() :: #{binary() => any()}.


%% Example:
%% data_binding_value_filter() :: #{
%%   <<"asset">> => asset_binding_value_filter(),
%%   <<"assetModel">> => asset_model_binding_value_filter(),
%%   <<"assetModelProperty">> => asset_model_property_binding_value_filter(),
%%   <<"assetProperty">> => asset_property_binding_value_filter()
%% }
-type data_binding_value_filter() :: #{binary() => any()}.


%% Example:
%% batch_get_asset_property_value_history_request() :: #{
%%   <<"entries">> := list(batch_get_asset_property_value_history_entry()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type batch_get_asset_property_value_history_request() :: #{binary() => any()}.


%% Example:
%% delete_computation_model_response() :: #{
%%   <<"computationModelStatus">> => computation_model_status()
%% }
-type delete_computation_model_response() :: #{binary() => any()}.

%% Example:
%% describe_logging_options_request() :: #{}
-type describe_logging_options_request() :: #{}.


%% Example:
%% iam_user_identity() :: #{
%%   <<"arn">> => string()
%% }
-type iam_user_identity() :: #{binary() => any()}.


%% Example:
%% batch_get_asset_property_value_history_error_entry() :: #{
%%   <<"entryId">> => string(),
%%   <<"errorCode">> => list(any()),
%%   <<"errorMessage">> => string()
%% }
-type batch_get_asset_property_value_history_error_entry() :: #{binary() => any()}.


%% Example:
%% create_asset_model_composite_model_response() :: #{
%%   <<"assetModelCompositeModelId">> => string(),
%%   <<"assetModelCompositeModelPath">> => list(asset_model_composite_model_path_segment()),
%%   <<"assetModelStatus">> => asset_model_status()
%% }
-type create_asset_model_composite_model_response() :: #{binary() => any()}.


%% Example:
%% delete_dashboard_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_dashboard_request() :: #{binary() => any()}.


%% Example:
%% delete_asset_model_composite_model_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"ifMatch">> => string(),
%%   <<"ifNoneMatch">> => string(),
%%   <<"matchForVersionType">> => list(any())
%% }
-type delete_asset_model_composite_model_request() :: #{binary() => any()}.


%% Example:
%% list_asset_models_response() :: #{
%%   <<"assetModelSummaries">> => list(asset_model_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_asset_models_response() :: #{binary() => any()}.

%% Example:
%% describe_asset_property_request() :: #{}
-type describe_asset_property_request() :: #{}.


%% Example:
%% asset_binding_value_filter() :: #{
%%   <<"assetId">> => string()
%% }
-type asset_binding_value_filter() :: #{binary() => any()}.


%% Example:
%% asset_model_status() :: #{
%%   <<"error">> => error_details(),
%%   <<"state">> => list(any())
%% }
-type asset_model_status() :: #{binary() => any()}.

%% Example:
%% describe_access_policy_request() :: #{}
-type describe_access_policy_request() :: #{}.


%% Example:
%% list_asset_model_composite_models_request() :: #{
%%   <<"assetModelVersion">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_asset_model_composite_models_request() :: #{binary() => any()}.

%% Example:
%% describe_asset_composite_model_request() :: #{}
-type describe_asset_composite_model_request() :: #{}.

%% Example:
%% delete_dashboard_response() :: #{}
-type delete_dashboard_response() :: #{}.


%% Example:
%% batch_put_asset_property_value_request() :: #{
%%   <<"enablePartialEntryProcessing">> => boolean(),
%%   <<"entries">> := list(put_asset_property_value_entry())
%% }
-type batch_put_asset_property_value_request() :: #{binary() => any()}.


%% Example:
%% asset_model_hierarchy_definition() :: #{
%%   <<"childAssetModelId">> => string(),
%%   <<"externalId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type asset_model_hierarchy_definition() :: #{binary() => any()}.


%% Example:
%% trace() :: #{
%%   <<"text">> => string()
%% }
-type trace() :: #{binary() => any()}.


%% Example:
%% describe_asset_model_response() :: #{
%%   <<"assetModelArn">> => string(),
%%   <<"assetModelCompositeModelSummaries">> => list(asset_model_composite_model_summary()),
%%   <<"assetModelCompositeModels">> => list(asset_model_composite_model()),
%%   <<"assetModelCreationDate">> => non_neg_integer(),
%%   <<"assetModelDescription">> => string(),
%%   <<"assetModelExternalId">> => string(),
%%   <<"assetModelHierarchies">> => list(asset_model_hierarchy()),
%%   <<"assetModelId">> => string(),
%%   <<"assetModelLastUpdateDate">> => non_neg_integer(),
%%   <<"assetModelName">> => string(),
%%   <<"assetModelProperties">> => list(asset_model_property()),
%%   <<"assetModelStatus">> => asset_model_status(),
%%   <<"assetModelType">> => list(any()),
%%   <<"assetModelVersion">> => string(),
%%   <<"eTag">> => string()
%% }
-type describe_asset_model_response() :: #{binary() => any()}.


%% Example:
%% describe_computation_model_execution_summary_response() :: #{
%%   <<"computationModelExecutionSummary">> => map(),
%%   <<"computationModelId">> => string(),
%%   <<"resolveTo">> => resolve_to()
%% }
-type describe_computation_model_execution_summary_response() :: #{binary() => any()}.

%% Example:
%% describe_computation_model_request() :: #{}
-type describe_computation_model_request() :: #{}.


%% Example:
%% source() :: #{
%%   <<"arn">> => string(),
%%   <<"location">> => location()
%% }
-type source() :: #{binary() => any()}.


%% Example:
%% batch_get_asset_property_value_success_entry() :: #{
%%   <<"assetPropertyValue">> => asset_property_value(),
%%   <<"entryId">> => string()
%% }
-type batch_get_asset_property_value_success_entry() :: #{binary() => any()}.


%% Example:
%% list_portals_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"portalSummaries">> => list(portal_summary())
%% }
-type list_portals_response() :: #{binary() => any()}.

%% Example:
%% parquet() :: #{}
-type parquet() :: #{}.


%% Example:
%% put_storage_configuration_request() :: #{
%%   <<"disallowIngestNullNaN">> => boolean(),
%%   <<"disassociatedDataStorage">> => list(any()),
%%   <<"multiLayerStorage">> => multi_layer_storage(),
%%   <<"retentionPeriod">> => retention_period(),
%%   <<"storageType">> := list(any()),
%%   <<"warmTier">> => list(any()),
%%   <<"warmTierRetentionPeriod">> => warm_tier_retention_period()
%% }
-type put_storage_configuration_request() :: #{binary() => any()}.

%% Example:
%% delete_project_response() :: #{}
-type delete_project_response() :: #{}.


%% Example:
%% forwarding_config() :: #{
%%   <<"state">> => list(any())
%% }
-type forwarding_config() :: #{binary() => any()}.


%% Example:
%% gateway_platform() :: #{
%%   <<"greengrass">> => greengrass(),
%%   <<"greengrassV2">> => greengrass_v2(),
%%   <<"siemensIE">> => siemens_i_e()
%% }
-type gateway_platform() :: #{binary() => any()}.


%% Example:
%% create_dashboard_response() :: #{
%%   <<"dashboardArn">> => string(),
%%   <<"dashboardId">> => string()
%% }
-type create_dashboard_response() :: #{binary() => any()}.


%% Example:
%% update_project_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"projectDescription">> => string(),
%%   <<"projectName">> := string()
%% }
-type update_project_request() :: #{binary() => any()}.


%% Example:
%% create_gateway_request() :: #{
%%   <<"gatewayName">> := string(),
%%   <<"gatewayPlatform">> := gateway_platform(),
%%   <<"gatewayVersion">> => string(),
%%   <<"tags">> => map()
%% }
-type create_gateway_request() :: #{binary() => any()}.


%% Example:
%% create_bulk_import_job_response() :: #{
%%   <<"jobId">> => string(),
%%   <<"jobName">> => string(),
%%   <<"jobStatus">> => list(any())
%% }
-type create_bulk_import_job_response() :: #{binary() => any()}.


%% Example:
%% list_asset_model_properties_request() :: #{
%%   <<"assetModelVersion">> => string(),
%%   <<"filter">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_asset_model_properties_request() :: #{binary() => any()}.


%% Example:
%% describe_access_policy_response() :: #{
%%   <<"accessPolicyArn">> => string(),
%%   <<"accessPolicyCreationDate">> => non_neg_integer(),
%%   <<"accessPolicyId">> => string(),
%%   <<"accessPolicyIdentity">> => identity(),
%%   <<"accessPolicyLastUpdateDate">> => non_neg_integer(),
%%   <<"accessPolicyPermission">> => list(any()),
%%   <<"accessPolicyResource">> => resource()
%% }
-type describe_access_policy_response() :: #{binary() => any()}.


%% Example:
%% asset_model_composite_model_path_segment() :: #{
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type asset_model_composite_model_path_segment() :: #{binary() => any()}.


%% Example:
%% create_computation_model_response() :: #{
%%   <<"computationModelArn">> => string(),
%%   <<"computationModelId">> => string(),
%%   <<"computationModelStatus">> => computation_model_status()
%% }
-type create_computation_model_response() :: #{binary() => any()}.


%% Example:
%% get_interpolated_asset_property_values_response() :: #{
%%   <<"interpolatedAssetPropertyValues">> => list(interpolated_asset_property_value()),
%%   <<"nextToken">> => string()
%% }
-type get_interpolated_asset_property_values_response() :: #{binary() => any()}.


%% Example:
%% delete_asset_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_asset_request() :: #{binary() => any()}.


%% Example:
%% image() :: #{
%%   <<"file">> => image_file(),
%%   <<"id">> => string()
%% }
-type image() :: #{binary() => any()}.


%% Example:
%% associate_assets_request() :: #{
%%   <<"childAssetId">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"hierarchyId">> := string()
%% }
-type associate_assets_request() :: #{binary() => any()}.


%% Example:
%% batch_get_asset_property_aggregates_entry() :: #{
%%   <<"aggregateTypes">> => list(list(any())()),
%%   <<"assetId">> => string(),
%%   <<"endDate">> => non_neg_integer(),
%%   <<"entryId">> => string(),
%%   <<"propertyAlias">> => string(),
%%   <<"propertyId">> => string(),
%%   <<"qualities">> => list(list(any())()),
%%   <<"resolution">> => string(),
%%   <<"startDate">> => non_neg_integer(),
%%   <<"timeOrdering">> => list(any())
%% }
-type batch_get_asset_property_aggregates_entry() :: #{binary() => any()}.


%% Example:
%% batch_get_asset_property_value_response() :: #{
%%   <<"errorEntries">> => list(batch_get_asset_property_value_error_entry()),
%%   <<"nextToken">> => string(),
%%   <<"skippedEntries">> => list(batch_get_asset_property_value_skipped_entry()),
%%   <<"successEntries">> => list(batch_get_asset_property_value_success_entry())
%% }
-type batch_get_asset_property_value_response() :: #{binary() => any()}.


%% Example:
%% transform() :: #{
%%   <<"expression">> => string(),
%%   <<"processingConfig">> => transform_processing_config(),
%%   <<"variables">> => list(expression_variable())
%% }
-type transform() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% get_asset_property_value_history_request() :: #{
%%   <<"assetId">> => string(),
%%   <<"endDate">> => non_neg_integer(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"propertyAlias">> => string(),
%%   <<"propertyId">> => string(),
%%   <<"qualities">> => list(list(any())()),
%%   <<"startDate">> => non_neg_integer(),
%%   <<"timeOrdering">> => list(any())
%% }
-type get_asset_property_value_history_request() :: #{binary() => any()}.


%% Example:
%% asset_relationship_summary() :: #{
%%   <<"hierarchyInfo">> => asset_hierarchy_info(),
%%   <<"relationshipType">> => list(any())
%% }
-type asset_relationship_summary() :: #{binary() => any()}.


%% Example:
%% asset_composite_model_summary() :: #{
%%   <<"description">> => string(),
%%   <<"externalId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"path">> => list(asset_composite_model_path_segment()),
%%   <<"type">> => string()
%% }
-type asset_composite_model_summary() :: #{binary() => any()}.


%% Example:
%% create_asset_response() :: #{
%%   <<"assetArn">> => string(),
%%   <<"assetId">> => string(),
%%   <<"assetStatus">> => asset_status()
%% }
-type create_asset_response() :: #{binary() => any()}.


%% Example:
%% update_access_policy_request() :: #{
%%   <<"accessPolicyIdentity">> := identity(),
%%   <<"accessPolicyPermission">> := list(any()),
%%   <<"accessPolicyResource">> := resource(),
%%   <<"clientToken">> => string()
%% }
-type update_access_policy_request() :: #{binary() => any()}.


%% Example:
%% update_asset_request() :: #{
%%   <<"assetDescription">> => string(),
%%   <<"assetExternalId">> => string(),
%%   <<"assetName">> := string(),
%%   <<"clientToken">> => string()
%% }
-type update_asset_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% dashboard_summary() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"lastUpdateDate">> => non_neg_integer(),
%%   <<"name">> => string()
%% }
-type dashboard_summary() :: #{binary() => any()}.


%% Example:
%% put_logging_options_request() :: #{
%%   <<"loggingOptions">> := logging_options()
%% }
-type put_logging_options_request() :: #{binary() => any()}.


%% Example:
%% measurement_processing_config() :: #{
%%   <<"forwardingConfig">> => forwarding_config()
%% }
-type measurement_processing_config() :: #{binary() => any()}.


%% Example:
%% property_type() :: #{
%%   <<"attribute">> => attribute(),
%%   <<"measurement">> => measurement(),
%%   <<"metric">> => metric(),
%%   <<"transform">> => transform()
%% }
-type property_type() :: #{binary() => any()}.


%% Example:
%% delete_time_series_request() :: #{
%%   <<"alias">> => string(),
%%   <<"assetId">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"propertyId">> => string()
%% }
-type delete_time_series_request() :: #{binary() => any()}.

%% Example:
%% delete_gateway_request() :: #{}
-type delete_gateway_request() :: #{}.

%% Example:
%% describe_gateway_request() :: #{}
-type describe_gateway_request() :: #{}.


%% Example:
%% batch_disassociate_project_assets_response() :: #{
%%   <<"errors">> => list(asset_error_details())
%% }
-type batch_disassociate_project_assets_response() :: #{binary() => any()}.


%% Example:
%% update_portal_request() :: #{
%%   <<"alarms">> => alarms(),
%%   <<"clientToken">> => string(),
%%   <<"notificationSenderEmail">> => string(),
%%   <<"portalContactEmail">> := string(),
%%   <<"portalDescription">> => string(),
%%   <<"portalLogoImage">> => image(),
%%   <<"portalName">> := string(),
%%   <<"portalType">> => list(any()),
%%   <<"portalTypeConfiguration">> => map(),
%%   <<"roleArn">> := string()
%% }
-type update_portal_request() :: #{binary() => any()}.


%% Example:
%% describe_dataset_response() :: #{
%%   <<"datasetArn">> => string(),
%%   <<"datasetCreationDate">> => non_neg_integer(),
%%   <<"datasetDescription">> => string(),
%%   <<"datasetId">> => string(),
%%   <<"datasetLastUpdateDate">> => non_neg_integer(),
%%   <<"datasetName">> => string(),
%%   <<"datasetSource">> => dataset_source(),
%%   <<"datasetStatus">> => dataset_status(),
%%   <<"datasetVersion">> => string()
%% }
-type describe_dataset_response() :: #{binary() => any()}.


%% Example:
%% describe_storage_configuration_response() :: #{
%%   <<"configurationStatus">> => configuration_status(),
%%   <<"disallowIngestNullNaN">> => boolean(),
%%   <<"disassociatedDataStorage">> => list(any()),
%%   <<"lastUpdateDate">> => non_neg_integer(),
%%   <<"multiLayerStorage">> => multi_layer_storage(),
%%   <<"retentionPeriod">> => retention_period(),
%%   <<"storageType">> => list(any()),
%%   <<"warmTier">> => list(any()),
%%   <<"warmTierRetentionPeriod">> => warm_tier_retention_period()
%% }
-type describe_storage_configuration_response() :: #{binary() => any()}.


%% Example:
%% asset_error_details() :: #{
%%   <<"assetId">> => string(),
%%   <<"code">> => list(any()),
%%   <<"message">> => string()
%% }
-type asset_error_details() :: #{binary() => any()}.


%% Example:
%% time_in_nanos() :: #{
%%   <<"offsetInNanos">> => integer(),
%%   <<"timeInSeconds">> => float()
%% }
-type time_in_nanos() :: #{binary() => any()}.


%% Example:
%% tumbling_window() :: #{
%%   <<"interval">> => string(),
%%   <<"offset">> => string()
%% }
-type tumbling_window() :: #{binary() => any()}.


%% Example:
%% measurement() :: #{
%%   <<"processingConfig">> => measurement_processing_config()
%% }
-type measurement() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.


%% Example:
%% batch_get_asset_property_value_history_error_info() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"errorTimestamp">> => non_neg_integer()
%% }
-type batch_get_asset_property_value_history_error_info() :: #{binary() => any()}.


%% Example:
%% delete_asset_model_composite_model_response() :: #{
%%   <<"assetModelStatus">> => asset_model_status()
%% }
-type delete_asset_model_composite_model_response() :: #{binary() => any()}.


%% Example:
%% create_dataset_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"datasetDescription">> => string(),
%%   <<"datasetId">> => string(),
%%   <<"datasetName">> := string(),
%%   <<"datasetSource">> := dataset_source(),
%%   <<"tags">> => map()
%% }
-type create_dataset_request() :: #{binary() => any()}.


%% Example:
%% property() :: #{
%%   <<"alias">> => string(),
%%   <<"dataType">> => list(any()),
%%   <<"externalId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"notification">> => property_notification(),
%%   <<"path">> => list(asset_property_path_segment()),
%%   <<"type">> => property_type(),
%%   <<"unit">> => string()
%% }
-type property() :: #{binary() => any()}.


%% Example:
%% execute_query_response() :: #{
%%   <<"columns">> => list(column_info()),
%%   <<"nextToken">> => string(),
%%   <<"rows">> => list(row())
%% }
-type execute_query_response() :: #{binary() => any()}.


%% Example:
%% query_timeout_exception() :: #{
%%   <<"message">> => string()
%% }
-type query_timeout_exception() :: #{binary() => any()}.


%% Example:
%% get_asset_property_value_history_response() :: #{
%%   <<"assetPropertyValueHistory">> => list(asset_property_value()),
%%   <<"nextToken">> => string()
%% }
-type get_asset_property_value_history_response() :: #{binary() => any()}.


%% Example:
%% asset_model_composite_model_summary() :: #{
%%   <<"description">> => string(),
%%   <<"externalId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"path">> => list(asset_model_composite_model_path_segment()),
%%   <<"type">> => string()
%% }
-type asset_model_composite_model_summary() :: #{binary() => any()}.


%% Example:
%% list_composition_relationships_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_composition_relationships_request() :: #{binary() => any()}.


%% Example:
%% composition_details() :: #{
%%   <<"compositionRelationship">> => list(composition_relationship_item())
%% }
-type composition_details() :: #{binary() => any()}.


%% Example:
%% asset_model_property_binding_value() :: #{
%%   <<"assetModelId">> => string(),
%%   <<"propertyId">> => string()
%% }
-type asset_model_property_binding_value() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% create_project_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"portalId">> := string(),
%%   <<"projectDescription">> => string(),
%%   <<"projectName">> := string(),
%%   <<"tags">> => map()
%% }
-type create_project_request() :: #{binary() => any()}.


%% Example:
%% describe_gateway_response() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"gatewayArn">> => string(),
%%   <<"gatewayCapabilitySummaries">> => list(gateway_capability_summary()),
%%   <<"gatewayId">> => string(),
%%   <<"gatewayName">> => string(),
%%   <<"gatewayPlatform">> => gateway_platform(),
%%   <<"gatewayVersion">> => string(),
%%   <<"lastUpdateDate">> => non_neg_integer()
%% }
-type describe_gateway_response() :: #{binary() => any()}.


%% Example:
%% batch_get_asset_property_value_request() :: #{
%%   <<"entries">> := list(batch_get_asset_property_value_entry()),
%%   <<"nextToken">> => string()
%% }
-type batch_get_asset_property_value_request() :: #{binary() => any()}.


%% Example:
%% disassociate_assets_request() :: #{
%%   <<"childAssetId">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"hierarchyId">> := string()
%% }
-type disassociate_assets_request() :: #{binary() => any()}.


%% Example:
%% batch_get_asset_property_value_history_success_entry() :: #{
%%   <<"assetPropertyValueHistory">> => list(asset_property_value()),
%%   <<"entryId">> => string()
%% }
-type batch_get_asset_property_value_history_success_entry() :: #{binary() => any()}.


%% Example:
%% asset_property_path_segment() :: #{
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type asset_property_path_segment() :: #{binary() => any()}.


%% Example:
%% list_time_series_request() :: #{
%%   <<"aliasPrefix">> => string(),
%%   <<"assetId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"timeSeriesType">> => list(any())
%% }
-type list_time_series_request() :: #{binary() => any()}.


%% Example:
%% list_projects_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"portalId">> := string()
%% }
-type list_projects_request() :: #{binary() => any()}.


%% Example:
%% create_dashboard_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"dashboardDefinition">> := string(),
%%   <<"dashboardDescription">> => string(),
%%   <<"dashboardName">> := string(),
%%   <<"projectId">> := string(),
%%   <<"tags">> => map()
%% }
-type create_dashboard_request() :: #{binary() => any()}.


%% Example:
%% asset_property_binding_value_filter() :: #{
%%   <<"assetId">> => string(),
%%   <<"propertyId">> => string()
%% }
-type asset_property_binding_value_filter() :: #{binary() => any()}.


%% Example:
%% update_asset_model_composite_model_request() :: #{
%%   <<"assetModelCompositeModelDescription">> => string(),
%%   <<"assetModelCompositeModelExternalId">> => string(),
%%   <<"assetModelCompositeModelName">> := string(),
%%   <<"assetModelCompositeModelProperties">> => list(asset_model_property()),
%%   <<"clientToken">> => string(),
%%   <<"ifMatch">> => string(),
%%   <<"ifNoneMatch">> => string(),
%%   <<"matchForVersionType">> => list(any())
%% }
-type update_asset_model_composite_model_request() :: #{binary() => any()}.


%% Example:
%% list_asset_relationships_response() :: #{
%%   <<"assetRelationshipSummaries">> => list(asset_relationship_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_asset_relationships_response() :: #{binary() => any()}.


%% Example:
%% aggregates() :: #{
%%   <<"average">> => float(),
%%   <<"count">> => float(),
%%   <<"maximum">> => float(),
%%   <<"minimum">> => float(),
%%   <<"standardDeviation">> => float(),
%%   <<"sum">> => float()
%% }
-type aggregates() :: #{binary() => any()}.


%% Example:
%% list_asset_model_properties_response() :: #{
%%   <<"assetModelPropertySummaries">> => list(asset_model_property_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_asset_model_properties_response() :: #{binary() => any()}.


%% Example:
%% attribute() :: #{
%%   <<"defaultValue">> => string()
%% }
-type attribute() :: #{binary() => any()}.


%% Example:
%% portal_summary() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"lastUpdateDate">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"portalType">> => list(any()),
%%   <<"roleArn">> => string(),
%%   <<"startUrl">> => string(),
%%   <<"status">> => portal_status()
%% }
-type portal_summary() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% list_assets_request() :: #{
%%   <<"assetModelId">> => string(),
%%   <<"filter">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_assets_request() :: #{binary() => any()}.


%% Example:
%% batch_disassociate_project_assets_request() :: #{
%%   <<"assetIds">> := list(string()),
%%   <<"clientToken">> => string()
%% }
-type batch_disassociate_project_assets_request() :: #{binary() => any()}.


%% Example:
%% batch_put_asset_property_value_response() :: #{
%%   <<"errorEntries">> => list(batch_put_asset_property_error_entry())
%% }
-type batch_put_asset_property_value_response() :: #{binary() => any()}.


%% Example:
%% describe_asset_composite_model_response() :: #{
%%   <<"actionDefinitions">> => list(action_definition()),
%%   <<"assetCompositeModelDescription">> => string(),
%%   <<"assetCompositeModelExternalId">> => string(),
%%   <<"assetCompositeModelId">> => string(),
%%   <<"assetCompositeModelName">> => string(),
%%   <<"assetCompositeModelPath">> => list(asset_composite_model_path_segment()),
%%   <<"assetCompositeModelProperties">> => list(asset_property()),
%%   <<"assetCompositeModelSummaries">> => list(asset_composite_model_summary()),
%%   <<"assetCompositeModelType">> => string(),
%%   <<"assetId">> => string()
%% }
-type describe_asset_composite_model_response() :: #{binary() => any()}.


%% Example:
%% composition_relationship_item() :: #{
%%   <<"id">> => string()
%% }
-type composition_relationship_item() :: #{binary() => any()}.


%% Example:
%% describe_computation_model_execution_summary_request() :: #{
%%   <<"resolveToResourceId">> => string(),
%%   <<"resolveToResourceType">> => list(any())
%% }
-type describe_computation_model_execution_summary_request() :: #{binary() => any()}.


%% Example:
%% logging_options() :: #{
%%   <<"level">> => list(any())
%% }
-type logging_options() :: #{binary() => any()}.

%% Example:
%% describe_dashboard_request() :: #{}
-type describe_dashboard_request() :: #{}.


%% Example:
%% list_asset_properties_response() :: #{
%%   <<"assetPropertySummaries">> => list(asset_property_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_asset_properties_response() :: #{binary() => any()}.


%% Example:
%% content() :: #{
%%   <<"text">> => string()
%% }
-type content() :: #{binary() => any()}.


%% Example:
%% asset_hierarchy() :: #{
%%   <<"externalId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type asset_hierarchy() :: #{binary() => any()}.


%% Example:
%% asset_model_property_definition() :: #{
%%   <<"dataType">> => list(any()),
%%   <<"dataTypeSpec">> => string(),
%%   <<"externalId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"type">> => property_type(),
%%   <<"unit">> => string()
%% }
-type asset_model_property_definition() :: #{binary() => any()}.


%% Example:
%% matched_data_binding() :: #{
%%   <<"value">> => data_binding_value()
%% }
-type matched_data_binding() :: #{binary() => any()}.


%% Example:
%% data_binding_value() :: #{
%%   <<"assetModelProperty">> => asset_model_property_binding_value(),
%%   <<"assetProperty">> => asset_property_binding_value()
%% }
-type data_binding_value() :: #{binary() => any()}.


%% Example:
%% asset_hierarchy_info() :: #{
%%   <<"childAssetId">> => string(),
%%   <<"parentAssetId">> => string()
%% }
-type asset_hierarchy_info() :: #{binary() => any()}.


%% Example:
%% batch_put_asset_property_error_entry() :: #{
%%   <<"entryId">> => string(),
%%   <<"errors">> => list(batch_put_asset_property_error())
%% }
-type batch_put_asset_property_error_entry() :: #{binary() => any()}.

%% Example:
%% describe_dataset_request() :: #{}
-type describe_dataset_request() :: #{}.


%% Example:
%% delete_dataset_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_dataset_request() :: #{binary() => any()}.


%% Example:
%% list_datasets_response() :: #{
%%   <<"datasetSummaries">> => list(dataset_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_datasets_response() :: #{binary() => any()}.


%% Example:
%% list_asset_properties_request() :: #{
%%   <<"filter">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_asset_properties_request() :: #{binary() => any()}.


%% Example:
%% variable_value() :: #{
%%   <<"hierarchyId">> => string(),
%%   <<"propertyId">> => string(),
%%   <<"propertyPath">> => list(asset_model_property_path_segment())
%% }
-type variable_value() :: #{binary() => any()}.


%% Example:
%% resolve_to() :: #{
%%   <<"assetId">> => string()
%% }
-type resolve_to() :: #{binary() => any()}.

%% Example:
%% describe_portal_request() :: #{}
-type describe_portal_request() :: #{}.


%% Example:
%% resource_already_exists_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceArn">> => string(),
%%   <<"resourceId">> => string()
%% }
-type resource_already_exists_exception() :: #{binary() => any()}.


%% Example:
%% column_info() :: #{
%%   <<"name">> => string(),
%%   <<"type">> => column_type()
%% }
-type column_info() :: #{binary() => any()}.


%% Example:
%% data_set_reference() :: #{
%%   <<"datasetArn">> => string(),
%%   <<"source">> => source()
%% }
-type data_set_reference() :: #{binary() => any()}.


%% Example:
%% time_series_summary() :: #{
%%   <<"alias">> => string(),
%%   <<"assetId">> => string(),
%%   <<"dataType">> => list(any()),
%%   <<"dataTypeSpec">> => string(),
%%   <<"propertyId">> => string(),
%%   <<"timeSeriesArn">> => string(),
%%   <<"timeSeriesCreationDate">> => non_neg_integer(),
%%   <<"timeSeriesId">> => string(),
%%   <<"timeSeriesLastUpdateDate">> => non_neg_integer()
%% }
-type time_series_summary() :: #{binary() => any()}.


%% Example:
%% portal_type_entry() :: #{
%%   <<"portalTools">> => list(string())
%% }
-type portal_type_entry() :: #{binary() => any()}.


%% Example:
%% delete_project_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_project_request() :: #{binary() => any()}.


%% Example:
%% create_asset_model_request() :: #{
%%   <<"assetModelCompositeModels">> => list(asset_model_composite_model_definition()),
%%   <<"assetModelDescription">> => string(),
%%   <<"assetModelExternalId">> => string(),
%%   <<"assetModelHierarchies">> => list(asset_model_hierarchy_definition()),
%%   <<"assetModelId">> => string(),
%%   <<"assetModelName">> := string(),
%%   <<"assetModelProperties">> => list(asset_model_property_definition()),
%%   <<"assetModelType">> => list(any()),
%%   <<"clientToken">> => string(),
%%   <<"tags">> => map()
%% }
-type create_asset_model_request() :: #{binary() => any()}.


%% Example:
%% execute_action_request() :: #{
%%   <<"actionDefinitionId">> := string(),
%%   <<"actionPayload">> := action_payload(),
%%   <<"clientToken">> => string(),
%%   <<"resolveTo">> => resolve_to(),
%%   <<"targetResource">> := target_resource()
%% }
-type execute_action_request() :: #{binary() => any()}.


%% Example:
%% batch_put_asset_property_error() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"errorMessage">> => string(),
%%   <<"timestamps">> => list(time_in_nanos())
%% }
-type batch_put_asset_property_error() :: #{binary() => any()}.


%% Example:
%% list_assets_response() :: #{
%%   <<"assetSummaries">> => list(asset_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_assets_response() :: #{binary() => any()}.


%% Example:
%% update_asset_model_response() :: #{
%%   <<"assetModelStatus">> => asset_model_status()
%% }
-type update_asset_model_response() :: #{binary() => any()}.


%% Example:
%% describe_asset_request() :: #{
%%   <<"excludeProperties">> => boolean()
%% }
-type describe_asset_request() :: #{binary() => any()}.


%% Example:
%% list_dashboards_response() :: #{
%%   <<"dashboardSummaries">> => list(dashboard_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_dashboards_response() :: #{binary() => any()}.


%% Example:
%% list_computation_models_request() :: #{
%%   <<"computationModelType">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_computation_models_request() :: #{binary() => any()}.


%% Example:
%% batch_get_asset_property_value_entry() :: #{
%%   <<"assetId">> => string(),
%%   <<"entryId">> => string(),
%%   <<"propertyAlias">> => string(),
%%   <<"propertyId">> => string()
%% }
-type batch_get_asset_property_value_entry() :: #{binary() => any()}.


%% Example:
%% dataset_status() :: #{
%%   <<"error">> => error_details(),
%%   <<"state">> => list(any())
%% }
-type dataset_status() :: #{binary() => any()}.


%% Example:
%% list_gateways_response() :: #{
%%   <<"gatewaySummaries">> => list(gateway_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_gateways_response() :: #{binary() => any()}.


%% Example:
%% precondition_failed_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceArn">> => string(),
%%   <<"resourceId">> => string()
%% }
-type precondition_failed_exception() :: #{binary() => any()}.


%% Example:
%% batch_get_asset_property_aggregates_error_info() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"errorTimestamp">> => non_neg_integer()
%% }
-type batch_get_asset_property_aggregates_error_info() :: #{binary() => any()}.


%% Example:
%% create_access_policy_request() :: #{
%%   <<"accessPolicyIdentity">> := identity(),
%%   <<"accessPolicyPermission">> := list(any()),
%%   <<"accessPolicyResource">> := resource(),
%%   <<"clientToken">> => string(),
%%   <<"tags">> => map()
%% }
-type create_access_policy_request() :: #{binary() => any()}.


%% Example:
%% computation_model_resolve_to_resource_summary() :: #{
%%   <<"resolveTo">> => resolve_to()
%% }
-type computation_model_resolve_to_resource_summary() :: #{binary() => any()}.


%% Example:
%% put_default_encryption_configuration_request() :: #{
%%   <<"encryptionType">> := list(any()),
%%   <<"kmsKeyId">> => string()
%% }
-type put_default_encryption_configuration_request() :: #{binary() => any()}.


%% Example:
%% greengrass_v2() :: #{
%%   <<"coreDeviceOperatingSystem">> => list(any()),
%%   <<"coreDeviceThingName">> => string()
%% }
-type greengrass_v2() :: #{binary() => any()}.


%% Example:
%% batch_get_asset_property_value_history_entry() :: #{
%%   <<"assetId">> => string(),
%%   <<"endDate">> => non_neg_integer(),
%%   <<"entryId">> => string(),
%%   <<"propertyAlias">> => string(),
%%   <<"propertyId">> => string(),
%%   <<"qualities">> => list(list(any())()),
%%   <<"startDate">> => non_neg_integer(),
%%   <<"timeOrdering">> => list(any())
%% }
-type batch_get_asset_property_value_history_entry() :: #{binary() => any()}.


%% Example:
%% get_asset_property_aggregates_request() :: #{
%%   <<"aggregateTypes">> := list(list(any())()),
%%   <<"assetId">> => string(),
%%   <<"endDate">> := non_neg_integer(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"propertyAlias">> => string(),
%%   <<"propertyId">> => string(),
%%   <<"qualities">> => list(list(any())()),
%%   <<"resolution">> := string(),
%%   <<"startDate">> := non_neg_integer(),
%%   <<"timeOrdering">> => list(any())
%% }
-type get_asset_property_aggregates_request() :: #{binary() => any()}.


%% Example:
%% computation_model_configuration() :: #{
%%   <<"anomalyDetection">> => computation_model_anomaly_detection_configuration()
%% }
-type computation_model_configuration() :: #{binary() => any()}.


%% Example:
%% variant() :: #{
%%   <<"booleanValue">> => boolean(),
%%   <<"doubleValue">> => float(),
%%   <<"integerValue">> => integer(),
%%   <<"nullValue">> => property_value_null_value(),
%%   <<"stringValue">> => string()
%% }
-type variant() :: #{binary() => any()}.


%% Example:
%% list_asset_models_request() :: #{
%%   <<"assetModelTypes">> => list(list(any())()),
%%   <<"assetModelVersion">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_asset_models_request() :: #{binary() => any()}.


%% Example:
%% too_many_tags_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceName">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.


%% Example:
%% list_associated_assets_response() :: #{
%%   <<"assetSummaries">> => list(associated_assets_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_associated_assets_response() :: #{binary() => any()}.

%% Example:
%% describe_storage_configuration_request() :: #{}
-type describe_storage_configuration_request() :: #{}.


%% Example:
%% update_asset_model_composite_model_response() :: #{
%%   <<"assetModelCompositeModelPath">> => list(asset_model_composite_model_path_segment()),
%%   <<"assetModelStatus">> => asset_model_status()
%% }
-type update_asset_model_composite_model_response() :: #{binary() => any()}.


%% Example:
%% invoke_assistant_response() :: #{
%%   <<"body">> => list(),
%%   <<"conversationId">> => string()
%% }
-type invoke_assistant_response() :: #{binary() => any()}.


%% Example:
%% list_executions_request() :: #{
%%   <<"actionType">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resolveToResourceId">> => string(),
%%   <<"resolveToResourceType">> => list(any()),
%%   <<"targetResourceId">> := string(),
%%   <<"targetResourceType">> := list(any())
%% }
-type list_executions_request() :: #{binary() => any()}.


%% Example:
%% action_definition() :: #{
%%   <<"actionDefinitionId">> => string(),
%%   <<"actionName">> => string(),
%%   <<"actionType">> => string()
%% }
-type action_definition() :: #{binary() => any()}.


%% Example:
%% asset_model_property_summary() :: #{
%%   <<"assetModelCompositeModelId">> => string(),
%%   <<"dataType">> => list(any()),
%%   <<"dataTypeSpec">> => string(),
%%   <<"externalId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"path">> => list(asset_model_property_path_segment()),
%%   <<"type">> => property_type(),
%%   <<"unit">> => string()
%% }
-type asset_model_property_summary() :: #{binary() => any()}.


%% Example:
%% column_type() :: #{
%%   <<"scalarType">> => list(any())
%% }
-type column_type() :: #{binary() => any()}.


%% Example:
%% associate_time_series_to_asset_property_request() :: #{
%%   <<"alias">> := string(),
%%   <<"assetId">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"propertyId">> := string()
%% }
-type associate_time_series_to_asset_property_request() :: #{binary() => any()}.


%% Example:
%% resource() :: #{
%%   <<"portal">> => portal_resource(),
%%   <<"project">> => project_resource()
%% }
-type resource() :: #{binary() => any()}.


%% Example:
%% list_bulk_import_jobs_response() :: #{
%%   <<"jobSummaries">> => list(job_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_bulk_import_jobs_response() :: #{binary() => any()}.

-type associate_assets_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type associate_time_series_to_asset_property_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type batch_associate_project_assets_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type batch_disassociate_project_assets_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type batch_get_asset_property_aggregates_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type batch_get_asset_property_value_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type batch_get_asset_property_value_history_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type batch_put_asset_property_value_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type create_access_policy_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type create_asset_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type create_asset_model_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type create_asset_model_composite_model_errors() ::
    precondition_failed_exception() | 
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type create_bulk_import_job_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type create_computation_model_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type create_dashboard_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type create_dataset_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type create_gateway_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type create_portal_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type create_project_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type delete_access_policy_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type delete_asset_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type delete_asset_model_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type delete_asset_model_composite_model_errors() ::
    precondition_failed_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type delete_computation_model_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type delete_dashboard_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type delete_dataset_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type delete_gateway_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type delete_portal_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type delete_project_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type delete_time_series_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type describe_access_policy_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_action_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_asset_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_asset_composite_model_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_asset_model_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_asset_model_composite_model_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_asset_property_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_bulk_import_job_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_computation_model_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_computation_model_execution_summary_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_dashboard_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_dataset_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_default_encryption_configuration_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type describe_execution_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_gateway_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_gateway_capability_configuration_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_logging_options_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_portal_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_project_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_storage_configuration_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type describe_time_series_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type disassociate_assets_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type disassociate_time_series_from_asset_property_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type execute_action_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type execute_query_errors() ::
    throttling_exception() | 
    query_timeout_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type get_asset_property_aggregates_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type get_asset_property_value_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type get_asset_property_value_history_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type get_interpolated_asset_property_values_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type invoke_assistant_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type list_access_policies_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_actions_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_asset_model_composite_models_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_asset_model_properties_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_asset_models_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_asset_properties_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_asset_relationships_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_assets_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_associated_assets_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_bulk_import_jobs_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_composition_relationships_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_computation_model_data_binding_usages_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_computation_model_resolve_to_resources_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_computation_models_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_dashboards_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_datasets_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_executions_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_gateways_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_portals_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_project_assets_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_projects_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_tags_for_resource_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type list_time_series_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type put_default_encryption_configuration_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type put_logging_options_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type put_storage_configuration_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type tag_resource_errors() ::
    too_many_tags_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type untag_resource_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type update_access_policy_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type update_asset_errors() ::
    resource_already_exists_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type update_asset_model_errors() ::
    precondition_failed_exception() | 
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type update_asset_model_composite_model_errors() ::
    precondition_failed_exception() | 
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type update_asset_property_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type update_computation_model_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type update_dashboard_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type update_dataset_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type update_gateway_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type update_gateway_capability_configuration_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type update_portal_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflicting_operation_exception() | 
    internal_failure_exception().

-type update_project_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a child asset with the given parent asset through a
%% hierarchy defined in the
%% parent asset's model.
%%
%% For more information, see Associating assets:
%% https://docs.aws.amazon.com/iot-sitewise/latest/userguide/add-associated-assets.html
%% in the
%% IoT SiteWise User Guide.
-spec associate_assets(aws_client:aws_client(), binary() | list(), associate_assets_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_assets_errors(), tuple()}.
associate_assets(Client, AssetId, Input) ->
    associate_assets(Client, AssetId, Input, []).

-spec associate_assets(aws_client:aws_client(), binary() | list(), associate_assets_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_assets_errors(), tuple()}.
associate_assets(Client, AssetId, Input0, Options0) ->
    Method = post,
    Path = ["/assets/", aws_util:encode_uri(AssetId), "/associate"],
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

%% @doc Associates a time series (data stream) with an asset property.
-spec associate_time_series_to_asset_property(aws_client:aws_client(), associate_time_series_to_asset_property_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_time_series_to_asset_property_errors(), tuple()}.
associate_time_series_to_asset_property(Client, Input) ->
    associate_time_series_to_asset_property(Client, Input, []).

-spec associate_time_series_to_asset_property(aws_client:aws_client(), associate_time_series_to_asset_property_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_time_series_to_asset_property_errors(), tuple()}.
associate_time_series_to_asset_property(Client, Input0, Options0) ->
    Method = post,
    Path = ["/timeseries/associate"],
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
                     {<<"alias">>, <<"alias">>},
                     {<<"assetId">>, <<"assetId">>},
                     {<<"propertyId">>, <<"propertyId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates a group (batch) of assets with an IoT SiteWise Monitor
%% project.
-spec batch_associate_project_assets(aws_client:aws_client(), binary() | list(), batch_associate_project_assets_request()) ->
    {ok, batch_associate_project_assets_response(), tuple()} |
    {error, any()} |
    {error, batch_associate_project_assets_errors(), tuple()}.
batch_associate_project_assets(Client, ProjectId, Input) ->
    batch_associate_project_assets(Client, ProjectId, Input, []).

-spec batch_associate_project_assets(aws_client:aws_client(), binary() | list(), batch_associate_project_assets_request(), proplists:proplist()) ->
    {ok, batch_associate_project_assets_response(), tuple()} |
    {error, any()} |
    {error, batch_associate_project_assets_errors(), tuple()}.
batch_associate_project_assets(Client, ProjectId, Input0, Options0) ->
    Method = post,
    Path = ["/projects/", aws_util:encode_uri(ProjectId), "/assets/associate"],
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

%% @doc Disassociates a group (batch) of assets from an IoT SiteWise Monitor
%% project.
-spec batch_disassociate_project_assets(aws_client:aws_client(), binary() | list(), batch_disassociate_project_assets_request()) ->
    {ok, batch_disassociate_project_assets_response(), tuple()} |
    {error, any()} |
    {error, batch_disassociate_project_assets_errors(), tuple()}.
batch_disassociate_project_assets(Client, ProjectId, Input) ->
    batch_disassociate_project_assets(Client, ProjectId, Input, []).

-spec batch_disassociate_project_assets(aws_client:aws_client(), binary() | list(), batch_disassociate_project_assets_request(), proplists:proplist()) ->
    {ok, batch_disassociate_project_assets_response(), tuple()} |
    {error, any()} |
    {error, batch_disassociate_project_assets_errors(), tuple()}.
batch_disassociate_project_assets(Client, ProjectId, Input0, Options0) ->
    Method = post,
    Path = ["/projects/", aws_util:encode_uri(ProjectId), "/assets/disassociate"],
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

%% @doc Gets aggregated values (for example, average, minimum, and maximum)
%% for one or more asset
%% properties.
%%
%% For more information, see Querying aggregates:
%% https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#aggregates
%% in the
%% IoT SiteWise User Guide.
-spec batch_get_asset_property_aggregates(aws_client:aws_client(), batch_get_asset_property_aggregates_request()) ->
    {ok, batch_get_asset_property_aggregates_response(), tuple()} |
    {error, any()} |
    {error, batch_get_asset_property_aggregates_errors(), tuple()}.
batch_get_asset_property_aggregates(Client, Input) ->
    batch_get_asset_property_aggregates(Client, Input, []).

-spec batch_get_asset_property_aggregates(aws_client:aws_client(), batch_get_asset_property_aggregates_request(), proplists:proplist()) ->
    {ok, batch_get_asset_property_aggregates_response(), tuple()} |
    {error, any()} |
    {error, batch_get_asset_property_aggregates_errors(), tuple()}.
batch_get_asset_property_aggregates(Client, Input0, Options0) ->
    Method = post,
    Path = ["/properties/batch/aggregates"],
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

%% @doc Gets the current value for one or more asset properties.
%%
%% For more information, see Querying
%% current values:
%% https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#current-values
%% in the IoT SiteWise User Guide.
-spec batch_get_asset_property_value(aws_client:aws_client(), batch_get_asset_property_value_request()) ->
    {ok, batch_get_asset_property_value_response(), tuple()} |
    {error, any()} |
    {error, batch_get_asset_property_value_errors(), tuple()}.
batch_get_asset_property_value(Client, Input) ->
    batch_get_asset_property_value(Client, Input, []).

-spec batch_get_asset_property_value(aws_client:aws_client(), batch_get_asset_property_value_request(), proplists:proplist()) ->
    {ok, batch_get_asset_property_value_response(), tuple()} |
    {error, any()} |
    {error, batch_get_asset_property_value_errors(), tuple()}.
batch_get_asset_property_value(Client, Input0, Options0) ->
    Method = post,
    Path = ["/properties/batch/latest"],
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

%% @doc Gets the historical values for one or more asset properties.
%%
%% For more information, see
%% Querying historical values:
%% https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#historical-values
%% in the IoT SiteWise User Guide.
-spec batch_get_asset_property_value_history(aws_client:aws_client(), batch_get_asset_property_value_history_request()) ->
    {ok, batch_get_asset_property_value_history_response(), tuple()} |
    {error, any()} |
    {error, batch_get_asset_property_value_history_errors(), tuple()}.
batch_get_asset_property_value_history(Client, Input) ->
    batch_get_asset_property_value_history(Client, Input, []).

-spec batch_get_asset_property_value_history(aws_client:aws_client(), batch_get_asset_property_value_history_request(), proplists:proplist()) ->
    {ok, batch_get_asset_property_value_history_response(), tuple()} |
    {error, any()} |
    {error, batch_get_asset_property_value_history_errors(), tuple()}.
batch_get_asset_property_value_history(Client, Input0, Options0) ->
    Method = post,
    Path = ["/properties/batch/history"],
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

%% @doc Sends a list of asset property values to IoT SiteWise.
%%
%% Each value is a timestamp-quality-value
%% (TQV) data point. For more information, see Ingesting data using the API:
%% https://docs.aws.amazon.com/iot-sitewise/latest/userguide/ingest-api.html
%% in the
%% IoT SiteWise User Guide.
%%
%% To identify an asset property, you must specify one of the following:
%%
%% The `assetId' and `propertyId' of an asset property.
%%
%% A `propertyAlias', which is a data stream alias (for example,
%% `/company/windfarm/3/turbine/7/temperature'). To define an asset
%% property's alias, see UpdateAssetProperty:
%% https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html.
%%
%% With respect to Unix epoch time, IoT SiteWise accepts only TQVs that have
%% a timestamp of no more
%% than 7 days in the past and no more than 10 minutes in the future. IoT
%% SiteWise rejects timestamps
%% outside of the inclusive range of [-7 days, +10 minutes] and returns a
%% `TimestampOutOfRangeException' error.
%%
%% For each asset property, IoT SiteWise overwrites TQVs with duplicate
%% timestamps unless the newer
%% TQV has a different quality. For example, if you store a TQV `{T1, GOOD,
%% V1}',
%% then storing `{T1, GOOD, V2}' replaces the existing TQV.
%%
%% IoT SiteWise authorizes access to each `BatchPutAssetPropertyValue'
%% entry individually.
%% For more information, see BatchPutAssetPropertyValue authorization:
%% https://docs.aws.amazon.com/iot-sitewise/latest/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-batchputassetpropertyvalue-action
%% in the
%% IoT SiteWise User Guide.
-spec batch_put_asset_property_value(aws_client:aws_client(), batch_put_asset_property_value_request()) ->
    {ok, batch_put_asset_property_value_response(), tuple()} |
    {error, any()} |
    {error, batch_put_asset_property_value_errors(), tuple()}.
batch_put_asset_property_value(Client, Input) ->
    batch_put_asset_property_value(Client, Input, []).

-spec batch_put_asset_property_value(aws_client:aws_client(), batch_put_asset_property_value_request(), proplists:proplist()) ->
    {ok, batch_put_asset_property_value_response(), tuple()} |
    {error, any()} |
    {error, batch_put_asset_property_value_errors(), tuple()}.
batch_put_asset_property_value(Client, Input0, Options0) ->
    Method = post,
    Path = ["/properties"],
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

%% @doc Creates an access policy that grants the specified identity (IAM
%% Identity Center user, IAM Identity Center group, or
%% IAM user) access to the specified IoT SiteWise Monitor portal or project
%% resource.
-spec create_access_policy(aws_client:aws_client(), create_access_policy_request()) ->
    {ok, create_access_policy_response(), tuple()} |
    {error, any()} |
    {error, create_access_policy_errors(), tuple()}.
create_access_policy(Client, Input) ->
    create_access_policy(Client, Input, []).

-spec create_access_policy(aws_client:aws_client(), create_access_policy_request(), proplists:proplist()) ->
    {ok, create_access_policy_response(), tuple()} |
    {error, any()} |
    {error, create_access_policy_errors(), tuple()}.
create_access_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/access-policies"],
    SuccessStatusCode = 201,
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

%% @doc Creates an asset from an existing asset model.
%%
%% For more information, see Creating assets:
%% https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-assets.html
%% in the
%% IoT SiteWise User Guide.
-spec create_asset(aws_client:aws_client(), create_asset_request()) ->
    {ok, create_asset_response(), tuple()} |
    {error, any()} |
    {error, create_asset_errors(), tuple()}.
create_asset(Client, Input) ->
    create_asset(Client, Input, []).

-spec create_asset(aws_client:aws_client(), create_asset_request(), proplists:proplist()) ->
    {ok, create_asset_response(), tuple()} |
    {error, any()} |
    {error, create_asset_errors(), tuple()}.
create_asset(Client, Input0, Options0) ->
    Method = post,
    Path = ["/assets"],
    SuccessStatusCode = 202,
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

%% @doc Creates an asset model from specified property and hierarchy
%% definitions.
%%
%% You create
%% assets from asset models. With asset models, you can easily create assets
%% of the same type
%% that have standardized definitions. Each asset created from a model
%% inherits the asset model's
%% property and hierarchy definitions. For more information, see Defining
%% asset models:
%% https://docs.aws.amazon.com/iot-sitewise/latest/userguide/define-models.html
%% in the
%% IoT SiteWise User Guide.
%%
%% You can create two types of asset models, `ASSET_MODEL' or
%% `COMPONENT_MODEL'.
%%
%% ASSET_MODEL – (default) An asset model that
%% you can use to create assets. Can't be included as a component in
%% another asset
%% model.
%%
%% COMPONENT_MODEL – A reusable component that
%% you can include in the composite models of other asset models. You
%% can't create
%% assets directly from this type of asset model.
-spec create_asset_model(aws_client:aws_client(), create_asset_model_request()) ->
    {ok, create_asset_model_response(), tuple()} |
    {error, any()} |
    {error, create_asset_model_errors(), tuple()}.
create_asset_model(Client, Input) ->
    create_asset_model(Client, Input, []).

-spec create_asset_model(aws_client:aws_client(), create_asset_model_request(), proplists:proplist()) ->
    {ok, create_asset_model_response(), tuple()} |
    {error, any()} |
    {error, create_asset_model_errors(), tuple()}.
create_asset_model(Client, Input0, Options0) ->
    Method = post,
    Path = ["/asset-models"],
    SuccessStatusCode = 202,
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

%% @doc Creates a custom composite model from specified property and
%% hierarchy definitions.
%%
%% There
%% are two types of custom composite models, `inline' and
%% `component-model-based'.
%%
%% Use component-model-based custom composite models to define standard,
%% reusable components.
%% A component-model-based custom composite model consists of a name, a
%% description, and the ID
%% of the component model it references. A component-model-based custom
%% composite model has no
%% properties of its own; its referenced component model provides its
%% associated properties to
%% any created assets. For more information, see Custom composite models
%% (Components):
%% https://docs.aws.amazon.com/iot-sitewise/latest/userguide/custom-composite-models.html
%% in the IoT SiteWise User Guide.
%%
%% Use inline custom composite models to organize the properties of an asset
%% model. The
%% properties of inline custom composite models are local to the asset model
%% where they are
%% included and can't be used to create multiple assets.
%%
%% To create a component-model-based model, specify the
%% `composedAssetModelId' of
%% an existing asset model with `assetModelType' of
%% `COMPONENT_MODEL'.
%%
%% To create an inline model, specify the
%% `assetModelCompositeModelProperties' and
%% don't include an `composedAssetModelId'.
-spec create_asset_model_composite_model(aws_client:aws_client(), binary() | list(), create_asset_model_composite_model_request()) ->
    {ok, create_asset_model_composite_model_response(), tuple()} |
    {error, any()} |
    {error, create_asset_model_composite_model_errors(), tuple()}.
create_asset_model_composite_model(Client, AssetModelId, Input) ->
    create_asset_model_composite_model(Client, AssetModelId, Input, []).

-spec create_asset_model_composite_model(aws_client:aws_client(), binary() | list(), create_asset_model_composite_model_request(), proplists:proplist()) ->
    {ok, create_asset_model_composite_model_response(), tuple()} |
    {error, any()} |
    {error, create_asset_model_composite_model_errors(), tuple()}.
create_asset_model_composite_model(Client, AssetModelId, Input0, Options0) ->
    Method = post,
    Path = ["/asset-models/", aws_util:encode_uri(AssetModelId), "/composite-models"],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"ifMatch">>},
                       {<<"If-None-Match">>, <<"ifNoneMatch">>},
                       {<<"Match-For-Version-Type">>, <<"matchForVersionType">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Defines a job to ingest data to IoT SiteWise from Amazon S3.
%%
%% For more information, see Create a
%% bulk import job (CLI):
%% https://docs.aws.amazon.com/iot-sitewise/latest/userguide/CreateBulkImportJob.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Before you create a bulk import job, you must enable IoT SiteWise warm
%% tier or IoT SiteWise cold tier.
%% For more information about how to configure storage settings, see
%% PutStorageConfiguration:
%% https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_PutStorageConfiguration.html.
%%
%% Bulk import is designed to store historical data to IoT SiteWise.
%%
%% Newly ingested data in the hot tier triggers notifications and
%% computations.
%%
%% After data moves from the hot tier to the warm or cold tier based on
%% retention settings,
%% it does not trigger computations or notifications.
%%
%% Data older than 7 days does not trigger computations or notifications.
-spec create_bulk_import_job(aws_client:aws_client(), create_bulk_import_job_request()) ->
    {ok, create_bulk_import_job_response(), tuple()} |
    {error, any()} |
    {error, create_bulk_import_job_errors(), tuple()}.
create_bulk_import_job(Client, Input) ->
    create_bulk_import_job(Client, Input, []).

-spec create_bulk_import_job(aws_client:aws_client(), create_bulk_import_job_request(), proplists:proplist()) ->
    {ok, create_bulk_import_job_response(), tuple()} |
    {error, any()} |
    {error, create_bulk_import_job_errors(), tuple()}.
create_bulk_import_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/jobs"],
    SuccessStatusCode = 202,
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

%% @doc Create a computation model with a configuration and data binding.
-spec create_computation_model(aws_client:aws_client(), create_computation_model_request()) ->
    {ok, create_computation_model_response(), tuple()} |
    {error, any()} |
    {error, create_computation_model_errors(), tuple()}.
create_computation_model(Client, Input) ->
    create_computation_model(Client, Input, []).

-spec create_computation_model(aws_client:aws_client(), create_computation_model_request(), proplists:proplist()) ->
    {ok, create_computation_model_response(), tuple()} |
    {error, any()} |
    {error, create_computation_model_errors(), tuple()}.
create_computation_model(Client, Input0, Options0) ->
    Method = post,
    Path = ["/computation-models"],
    SuccessStatusCode = 202,
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

%% @doc Creates a dashboard in an IoT SiteWise Monitor project.
-spec create_dashboard(aws_client:aws_client(), create_dashboard_request()) ->
    {ok, create_dashboard_response(), tuple()} |
    {error, any()} |
    {error, create_dashboard_errors(), tuple()}.
create_dashboard(Client, Input) ->
    create_dashboard(Client, Input, []).

-spec create_dashboard(aws_client:aws_client(), create_dashboard_request(), proplists:proplist()) ->
    {ok, create_dashboard_response(), tuple()} |
    {error, any()} |
    {error, create_dashboard_errors(), tuple()}.
create_dashboard(Client, Input0, Options0) ->
    Method = post,
    Path = ["/dashboards"],
    SuccessStatusCode = 201,
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

%% @doc Creates a dataset to connect an external datasource.
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
    SuccessStatusCode = 202,
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

%% @doc Creates a gateway, which is a virtual or edge device that delivers
%% industrial data streams
%% from local servers to IoT SiteWise.
%%
%% For more information, see Ingesting data using a gateway:
%% https://docs.aws.amazon.com/iot-sitewise/latest/userguide/gateway-connector.html
%% in the
%% IoT SiteWise User Guide.
-spec create_gateway(aws_client:aws_client(), create_gateway_request()) ->
    {ok, create_gateway_response(), tuple()} |
    {error, any()} |
    {error, create_gateway_errors(), tuple()}.
create_gateway(Client, Input) ->
    create_gateway(Client, Input, []).

-spec create_gateway(aws_client:aws_client(), create_gateway_request(), proplists:proplist()) ->
    {ok, create_gateway_response(), tuple()} |
    {error, any()} |
    {error, create_gateway_errors(), tuple()}.
create_gateway(Client, Input0, Options0) ->
    Method = post,
    Path = ["/20200301/gateways"],
    SuccessStatusCode = 201,
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

%% @doc Creates a portal, which can contain projects and dashboards.
%%
%% IoT SiteWise Monitor uses IAM Identity Center or IAM
%% to authenticate portal users and manage user permissions.
%%
%% Before you can sign in to a new portal, you must add at least one identity
%% to that
%% portal. For more information, see Adding or removing portal
%% administrators:
%% https://docs.aws.amazon.com/iot-sitewise/latest/userguide/administer-portals.html#portal-change-admins
%% in the IoT SiteWise User Guide.
-spec create_portal(aws_client:aws_client(), create_portal_request()) ->
    {ok, create_portal_response(), tuple()} |
    {error, any()} |
    {error, create_portal_errors(), tuple()}.
create_portal(Client, Input) ->
    create_portal(Client, Input, []).

-spec create_portal(aws_client:aws_client(), create_portal_request(), proplists:proplist()) ->
    {ok, create_portal_response(), tuple()} |
    {error, any()} |
    {error, create_portal_errors(), tuple()}.
create_portal(Client, Input0, Options0) ->
    Method = post,
    Path = ["/portals"],
    SuccessStatusCode = 202,
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

%% @doc Creates a project in the specified portal.
%%
%% Make sure that the project name and description don't contain
%% confidential
%% information.
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
    SuccessStatusCode = 201,
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

%% @doc Deletes an access policy that grants the specified identity access to
%% the specified
%% IoT SiteWise Monitor resource.
%%
%% You can use this operation to revoke access to an IoT SiteWise Monitor
%% resource.
-spec delete_access_policy(aws_client:aws_client(), binary() | list(), delete_access_policy_request()) ->
    {ok, delete_access_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_access_policy_errors(), tuple()}.
delete_access_policy(Client, AccessPolicyId, Input) ->
    delete_access_policy(Client, AccessPolicyId, Input, []).

-spec delete_access_policy(aws_client:aws_client(), binary() | list(), delete_access_policy_request(), proplists:proplist()) ->
    {ok, delete_access_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_access_policy_errors(), tuple()}.
delete_access_policy(Client, AccessPolicyId, Input0, Options0) ->
    Method = delete,
    Path = ["/access-policies/", aws_util:encode_uri(AccessPolicyId), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an asset.
%%
%% This action can't be undone. For more information, see Deleting assets
%% and
%% models:
%% https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html
%% in the IoT SiteWise User Guide.
%%
%% You can't delete an asset that's associated to another asset. For
%% more information, see
%% DisassociateAssets:
%% https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DisassociateAssets.html.
-spec delete_asset(aws_client:aws_client(), binary() | list(), delete_asset_request()) ->
    {ok, delete_asset_response(), tuple()} |
    {error, any()} |
    {error, delete_asset_errors(), tuple()}.
delete_asset(Client, AssetId, Input) ->
    delete_asset(Client, AssetId, Input, []).

-spec delete_asset(aws_client:aws_client(), binary() | list(), delete_asset_request(), proplists:proplist()) ->
    {ok, delete_asset_response(), tuple()} |
    {error, any()} |
    {error, delete_asset_errors(), tuple()}.
delete_asset(Client, AssetId, Input0, Options0) ->
    Method = delete,
    Path = ["/assets/", aws_util:encode_uri(AssetId), ""],
    SuccessStatusCode = 202,
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an asset model.
%%
%% This action can't be undone. You must delete all assets created
%% from an asset model before you can delete the model. Also, you can't
%% delete an asset model if
%% a parent asset model exists that contains a property formula expression
%% that depends on the
%% asset model that you want to delete. For more information, see Deleting
%% assets and models:
%% https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html
%% in the
%% IoT SiteWise User Guide.
-spec delete_asset_model(aws_client:aws_client(), binary() | list(), delete_asset_model_request()) ->
    {ok, delete_asset_model_response(), tuple()} |
    {error, any()} |
    {error, delete_asset_model_errors(), tuple()}.
delete_asset_model(Client, AssetModelId, Input) ->
    delete_asset_model(Client, AssetModelId, Input, []).

-spec delete_asset_model(aws_client:aws_client(), binary() | list(), delete_asset_model_request(), proplists:proplist()) ->
    {ok, delete_asset_model_response(), tuple()} |
    {error, any()} |
    {error, delete_asset_model_errors(), tuple()}.
delete_asset_model(Client, AssetModelId, Input0, Options0) ->
    Method = delete,
    Path = ["/asset-models/", aws_util:encode_uri(AssetModelId), ""],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"ifMatch">>},
                       {<<"If-None-Match">>, <<"ifNoneMatch">>},
                       {<<"Match-For-Version-Type">>, <<"matchForVersionType">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a composite model.
%%
%% This action can't be undone. You must delete all assets created
%% from a composite model before you can delete the model. Also, you
%% can't delete a composite
%% model if a parent asset model exists that contains a property formula
%% expression that depends
%% on the asset model that you want to delete. For more information, see
%% Deleting assets and
%% models:
%% https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html
%% in the IoT SiteWise User Guide.
-spec delete_asset_model_composite_model(aws_client:aws_client(), binary() | list(), binary() | list(), delete_asset_model_composite_model_request()) ->
    {ok, delete_asset_model_composite_model_response(), tuple()} |
    {error, any()} |
    {error, delete_asset_model_composite_model_errors(), tuple()}.
delete_asset_model_composite_model(Client, AssetModelCompositeModelId, AssetModelId, Input) ->
    delete_asset_model_composite_model(Client, AssetModelCompositeModelId, AssetModelId, Input, []).

-spec delete_asset_model_composite_model(aws_client:aws_client(), binary() | list(), binary() | list(), delete_asset_model_composite_model_request(), proplists:proplist()) ->
    {ok, delete_asset_model_composite_model_response(), tuple()} |
    {error, any()} |
    {error, delete_asset_model_composite_model_errors(), tuple()}.
delete_asset_model_composite_model(Client, AssetModelCompositeModelId, AssetModelId, Input0, Options0) ->
    Method = delete,
    Path = ["/asset-models/", aws_util:encode_uri(AssetModelId), "/composite-models/", aws_util:encode_uri(AssetModelCompositeModelId), ""],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"ifMatch">>},
                       {<<"If-None-Match">>, <<"ifNoneMatch">>},
                       {<<"Match-For-Version-Type">>, <<"matchForVersionType">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a computation model.
%%
%% This action can't be undone.
-spec delete_computation_model(aws_client:aws_client(), binary() | list(), delete_computation_model_request()) ->
    {ok, delete_computation_model_response(), tuple()} |
    {error, any()} |
    {error, delete_computation_model_errors(), tuple()}.
delete_computation_model(Client, ComputationModelId, Input) ->
    delete_computation_model(Client, ComputationModelId, Input, []).

-spec delete_computation_model(aws_client:aws_client(), binary() | list(), delete_computation_model_request(), proplists:proplist()) ->
    {ok, delete_computation_model_response(), tuple()} |
    {error, any()} |
    {error, delete_computation_model_errors(), tuple()}.
delete_computation_model(Client, ComputationModelId, Input0, Options0) ->
    Method = delete,
    Path = ["/computation-models/", aws_util:encode_uri(ComputationModelId), ""],
    SuccessStatusCode = 202,
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a dashboard from IoT SiteWise Monitor.
-spec delete_dashboard(aws_client:aws_client(), binary() | list(), delete_dashboard_request()) ->
    {ok, delete_dashboard_response(), tuple()} |
    {error, any()} |
    {error, delete_dashboard_errors(), tuple()}.
delete_dashboard(Client, DashboardId, Input) ->
    delete_dashboard(Client, DashboardId, Input, []).

-spec delete_dashboard(aws_client:aws_client(), binary() | list(), delete_dashboard_request(), proplists:proplist()) ->
    {ok, delete_dashboard_response(), tuple()} |
    {error, any()} |
    {error, delete_dashboard_errors(), tuple()}.
delete_dashboard(Client, DashboardId, Input0, Options0) ->
    Method = delete,
    Path = ["/dashboards/", aws_util:encode_uri(DashboardId), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a dataset.
%%
%% This cannot be undone.
-spec delete_dataset(aws_client:aws_client(), binary() | list(), delete_dataset_request()) ->
    {ok, delete_dataset_response(), tuple()} |
    {error, any()} |
    {error, delete_dataset_errors(), tuple()}.
delete_dataset(Client, DatasetId, Input) ->
    delete_dataset(Client, DatasetId, Input, []).

-spec delete_dataset(aws_client:aws_client(), binary() | list(), delete_dataset_request(), proplists:proplist()) ->
    {ok, delete_dataset_response(), tuple()} |
    {error, any()} |
    {error, delete_dataset_errors(), tuple()}.
delete_dataset(Client, DatasetId, Input0, Options0) ->
    Method = delete,
    Path = ["/datasets/", aws_util:encode_uri(DatasetId), ""],
    SuccessStatusCode = 202,
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a gateway from IoT SiteWise.
%%
%% When you delete a gateway, some of the gateway's files remain
%% in your gateway's file system.
-spec delete_gateway(aws_client:aws_client(), binary() | list(), delete_gateway_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_gateway_errors(), tuple()}.
delete_gateway(Client, GatewayId, Input) ->
    delete_gateway(Client, GatewayId, Input, []).

-spec delete_gateway(aws_client:aws_client(), binary() | list(), delete_gateway_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_gateway_errors(), tuple()}.
delete_gateway(Client, GatewayId, Input0, Options0) ->
    Method = delete,
    Path = ["/20200301/gateways/", aws_util:encode_uri(GatewayId), ""],
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

%% @doc Deletes a portal from IoT SiteWise Monitor.
-spec delete_portal(aws_client:aws_client(), binary() | list(), delete_portal_request()) ->
    {ok, delete_portal_response(), tuple()} |
    {error, any()} |
    {error, delete_portal_errors(), tuple()}.
delete_portal(Client, PortalId, Input) ->
    delete_portal(Client, PortalId, Input, []).

-spec delete_portal(aws_client:aws_client(), binary() | list(), delete_portal_request(), proplists:proplist()) ->
    {ok, delete_portal_response(), tuple()} |
    {error, any()} |
    {error, delete_portal_errors(), tuple()}.
delete_portal(Client, PortalId, Input0, Options0) ->
    Method = delete,
    Path = ["/portals/", aws_util:encode_uri(PortalId), ""],
    SuccessStatusCode = 202,
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a project from IoT SiteWise Monitor.
-spec delete_project(aws_client:aws_client(), binary() | list(), delete_project_request()) ->
    {ok, delete_project_response(), tuple()} |
    {error, any()} |
    {error, delete_project_errors(), tuple()}.
delete_project(Client, ProjectId, Input) ->
    delete_project(Client, ProjectId, Input, []).

-spec delete_project(aws_client:aws_client(), binary() | list(), delete_project_request(), proplists:proplist()) ->
    {ok, delete_project_response(), tuple()} |
    {error, any()} |
    {error, delete_project_errors(), tuple()}.
delete_project(Client, ProjectId, Input0, Options0) ->
    Method = delete,
    Path = ["/projects/", aws_util:encode_uri(ProjectId), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a time series (data stream).
%%
%% If you delete a time series that's associated with an
%% asset property, the asset property still exists, but the time series will
%% no longer be
%% associated with this asset property.
%%
%% To identify a time series, do one of the following:
%%
%% If the time series isn't associated with an asset property,
%% specify the `alias' of the time series.
%%
%% If the time series is associated with an asset property,
%% specify one of the following:
%%
%% The `alias' of the time series.
%%
%% The `assetId' and `propertyId' that identifies the asset property.
-spec delete_time_series(aws_client:aws_client(), delete_time_series_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_time_series_errors(), tuple()}.
delete_time_series(Client, Input) ->
    delete_time_series(Client, Input, []).

-spec delete_time_series(aws_client:aws_client(), delete_time_series_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_time_series_errors(), tuple()}.
delete_time_series(Client, Input0, Options0) ->
    Method = post,
    Path = ["/timeseries/delete"],
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
                     {<<"alias">>, <<"alias">>},
                     {<<"assetId">>, <<"assetId">>},
                     {<<"propertyId">>, <<"propertyId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Describes an access policy, which specifies an identity's access
%% to an IoT SiteWise Monitor portal or
%% project.
-spec describe_access_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_access_policy_response(), tuple()} |
    {error, any()} |
    {error, describe_access_policy_errors(), tuple()}.
describe_access_policy(Client, AccessPolicyId)
  when is_map(Client) ->
    describe_access_policy(Client, AccessPolicyId, #{}, #{}).

-spec describe_access_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_access_policy_response(), tuple()} |
    {error, any()} |
    {error, describe_access_policy_errors(), tuple()}.
describe_access_policy(Client, AccessPolicyId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_access_policy(Client, AccessPolicyId, QueryMap, HeadersMap, []).

-spec describe_access_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_access_policy_response(), tuple()} |
    {error, any()} |
    {error, describe_access_policy_errors(), tuple()}.
describe_access_policy(Client, AccessPolicyId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/access-policies/", aws_util:encode_uri(AccessPolicyId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an action.
-spec describe_action(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_action_response(), tuple()} |
    {error, any()} |
    {error, describe_action_errors(), tuple()}.
describe_action(Client, ActionId)
  when is_map(Client) ->
    describe_action(Client, ActionId, #{}, #{}).

-spec describe_action(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_action_response(), tuple()} |
    {error, any()} |
    {error, describe_action_errors(), tuple()}.
describe_action(Client, ActionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_action(Client, ActionId, QueryMap, HeadersMap, []).

-spec describe_action(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_action_response(), tuple()} |
    {error, any()} |
    {error, describe_action_errors(), tuple()}.
describe_action(Client, ActionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/actions/", aws_util:encode_uri(ActionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an asset.
-spec describe_asset(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_asset_response(), tuple()} |
    {error, any()} |
    {error, describe_asset_errors(), tuple()}.
describe_asset(Client, AssetId)
  when is_map(Client) ->
    describe_asset(Client, AssetId, #{}, #{}).

-spec describe_asset(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_asset_response(), tuple()} |
    {error, any()} |
    {error, describe_asset_errors(), tuple()}.
describe_asset(Client, AssetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_asset(Client, AssetId, QueryMap, HeadersMap, []).

-spec describe_asset(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_asset_response(), tuple()} |
    {error, any()} |
    {error, describe_asset_errors(), tuple()}.
describe_asset(Client, AssetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assets/", aws_util:encode_uri(AssetId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"excludeProperties">>, maps:get(<<"excludeProperties">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an asset composite model (also known as
%% an asset component).
%%
%% An `AssetCompositeModel' is an instance of an
%% `AssetModelCompositeModel'. If you want to see information about the
%% model this is
%% based on, call DescribeAssetModelCompositeModel:
%% https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetModelCompositeModel.html.
-spec describe_asset_composite_model(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_asset_composite_model_response(), tuple()} |
    {error, any()} |
    {error, describe_asset_composite_model_errors(), tuple()}.
describe_asset_composite_model(Client, AssetCompositeModelId, AssetId)
  when is_map(Client) ->
    describe_asset_composite_model(Client, AssetCompositeModelId, AssetId, #{}, #{}).

-spec describe_asset_composite_model(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_asset_composite_model_response(), tuple()} |
    {error, any()} |
    {error, describe_asset_composite_model_errors(), tuple()}.
describe_asset_composite_model(Client, AssetCompositeModelId, AssetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_asset_composite_model(Client, AssetCompositeModelId, AssetId, QueryMap, HeadersMap, []).

-spec describe_asset_composite_model(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_asset_composite_model_response(), tuple()} |
    {error, any()} |
    {error, describe_asset_composite_model_errors(), tuple()}.
describe_asset_composite_model(Client, AssetCompositeModelId, AssetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assets/", aws_util:encode_uri(AssetId), "/composite-models/", aws_util:encode_uri(AssetCompositeModelId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an asset model.
-spec describe_asset_model(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_asset_model_response(), tuple()} |
    {error, any()} |
    {error, describe_asset_model_errors(), tuple()}.
describe_asset_model(Client, AssetModelId)
  when is_map(Client) ->
    describe_asset_model(Client, AssetModelId, #{}, #{}).

-spec describe_asset_model(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_asset_model_response(), tuple()} |
    {error, any()} |
    {error, describe_asset_model_errors(), tuple()}.
describe_asset_model(Client, AssetModelId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_asset_model(Client, AssetModelId, QueryMap, HeadersMap, []).

-spec describe_asset_model(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_asset_model_response(), tuple()} |
    {error, any()} |
    {error, describe_asset_model_errors(), tuple()}.
describe_asset_model(Client, AssetModelId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/asset-models/", aws_util:encode_uri(AssetModelId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"assetModelVersion">>, maps:get(<<"assetModelVersion">>, QueryMap, undefined)},
        {<<"excludeProperties">>, maps:get(<<"excludeProperties">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"eTag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Retrieves information about an asset model composite model (also
%% known as an asset model
%% component).
%%
%% For more information, see Custom composite models
%% (Components):
%% https://docs.aws.amazon.com/iot-sitewise/latest/userguide/custom-composite-models.html
%% in the IoT SiteWise User Guide.
-spec describe_asset_model_composite_model(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_asset_model_composite_model_response(), tuple()} |
    {error, any()} |
    {error, describe_asset_model_composite_model_errors(), tuple()}.
describe_asset_model_composite_model(Client, AssetModelCompositeModelId, AssetModelId)
  when is_map(Client) ->
    describe_asset_model_composite_model(Client, AssetModelCompositeModelId, AssetModelId, #{}, #{}).

-spec describe_asset_model_composite_model(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_asset_model_composite_model_response(), tuple()} |
    {error, any()} |
    {error, describe_asset_model_composite_model_errors(), tuple()}.
describe_asset_model_composite_model(Client, AssetModelCompositeModelId, AssetModelId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_asset_model_composite_model(Client, AssetModelCompositeModelId, AssetModelId, QueryMap, HeadersMap, []).

-spec describe_asset_model_composite_model(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_asset_model_composite_model_response(), tuple()} |
    {error, any()} |
    {error, describe_asset_model_composite_model_errors(), tuple()}.
describe_asset_model_composite_model(Client, AssetModelCompositeModelId, AssetModelId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/asset-models/", aws_util:encode_uri(AssetModelId), "/composite-models/", aws_util:encode_uri(AssetModelCompositeModelId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"assetModelVersion">>, maps:get(<<"assetModelVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an asset property.
%%
%% When you call this operation for an attribute property, this response
%% includes the
%% default attribute value that you define in the asset model. If you update
%% the default value
%% in the model, this operation's response includes the new default
%% value.
%%
%% This operation doesn't return the value of the asset property. To get
%% the value of an
%% asset property, use GetAssetPropertyValue:
%% https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_GetAssetPropertyValue.html.
-spec describe_asset_property(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_asset_property_response(), tuple()} |
    {error, any()} |
    {error, describe_asset_property_errors(), tuple()}.
describe_asset_property(Client, AssetId, PropertyId)
  when is_map(Client) ->
    describe_asset_property(Client, AssetId, PropertyId, #{}, #{}).

-spec describe_asset_property(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_asset_property_response(), tuple()} |
    {error, any()} |
    {error, describe_asset_property_errors(), tuple()}.
describe_asset_property(Client, AssetId, PropertyId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_asset_property(Client, AssetId, PropertyId, QueryMap, HeadersMap, []).

-spec describe_asset_property(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_asset_property_response(), tuple()} |
    {error, any()} |
    {error, describe_asset_property_errors(), tuple()}.
describe_asset_property(Client, AssetId, PropertyId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assets/", aws_util:encode_uri(AssetId), "/properties/", aws_util:encode_uri(PropertyId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a bulk import job request.
%%
%% For more information, see Describe
%% a bulk import job (CLI):
%% https://docs.aws.amazon.com/iot-sitewise/latest/userguide/DescribeBulkImportJob.html
%% in the Amazon Simple Storage Service User Guide.
-spec describe_bulk_import_job(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_bulk_import_job_response(), tuple()} |
    {error, any()} |
    {error, describe_bulk_import_job_errors(), tuple()}.
describe_bulk_import_job(Client, JobId)
  when is_map(Client) ->
    describe_bulk_import_job(Client, JobId, #{}, #{}).

-spec describe_bulk_import_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_bulk_import_job_response(), tuple()} |
    {error, any()} |
    {error, describe_bulk_import_job_errors(), tuple()}.
describe_bulk_import_job(Client, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_bulk_import_job(Client, JobId, QueryMap, HeadersMap, []).

-spec describe_bulk_import_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_bulk_import_job_response(), tuple()} |
    {error, any()} |
    {error, describe_bulk_import_job_errors(), tuple()}.
describe_bulk_import_job(Client, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a computation model.
-spec describe_computation_model(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_computation_model_response(), tuple()} |
    {error, any()} |
    {error, describe_computation_model_errors(), tuple()}.
describe_computation_model(Client, ComputationModelId)
  when is_map(Client) ->
    describe_computation_model(Client, ComputationModelId, #{}, #{}).

-spec describe_computation_model(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_computation_model_response(), tuple()} |
    {error, any()} |
    {error, describe_computation_model_errors(), tuple()}.
describe_computation_model(Client, ComputationModelId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_computation_model(Client, ComputationModelId, QueryMap, HeadersMap, []).

-spec describe_computation_model(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_computation_model_response(), tuple()} |
    {error, any()} |
    {error, describe_computation_model_errors(), tuple()}.
describe_computation_model(Client, ComputationModelId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/computation-models/", aws_util:encode_uri(ComputationModelId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the execution summary of a computation
%% model.
-spec describe_computation_model_execution_summary(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_computation_model_execution_summary_response(), tuple()} |
    {error, any()} |
    {error, describe_computation_model_execution_summary_errors(), tuple()}.
describe_computation_model_execution_summary(Client, ComputationModelId)
  when is_map(Client) ->
    describe_computation_model_execution_summary(Client, ComputationModelId, #{}, #{}).

-spec describe_computation_model_execution_summary(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_computation_model_execution_summary_response(), tuple()} |
    {error, any()} |
    {error, describe_computation_model_execution_summary_errors(), tuple()}.
describe_computation_model_execution_summary(Client, ComputationModelId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_computation_model_execution_summary(Client, ComputationModelId, QueryMap, HeadersMap, []).

-spec describe_computation_model_execution_summary(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_computation_model_execution_summary_response(), tuple()} |
    {error, any()} |
    {error, describe_computation_model_execution_summary_errors(), tuple()}.
describe_computation_model_execution_summary(Client, ComputationModelId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/computation-models/", aws_util:encode_uri(ComputationModelId), "/execution-summary"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"resolveToResourceId">>, maps:get(<<"resolveToResourceId">>, QueryMap, undefined)},
        {<<"resolveToResourceType">>, maps:get(<<"resolveToResourceType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a dashboard.
-spec describe_dashboard(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_dashboard_response(), tuple()} |
    {error, any()} |
    {error, describe_dashboard_errors(), tuple()}.
describe_dashboard(Client, DashboardId)
  when is_map(Client) ->
    describe_dashboard(Client, DashboardId, #{}, #{}).

-spec describe_dashboard(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_dashboard_response(), tuple()} |
    {error, any()} |
    {error, describe_dashboard_errors(), tuple()}.
describe_dashboard(Client, DashboardId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_dashboard(Client, DashboardId, QueryMap, HeadersMap, []).

-spec describe_dashboard(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_dashboard_response(), tuple()} |
    {error, any()} |
    {error, describe_dashboard_errors(), tuple()}.
describe_dashboard(Client, DashboardId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/dashboards/", aws_util:encode_uri(DashboardId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a dataset.
-spec describe_dataset(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_dataset_response(), tuple()} |
    {error, any()} |
    {error, describe_dataset_errors(), tuple()}.
describe_dataset(Client, DatasetId)
  when is_map(Client) ->
    describe_dataset(Client, DatasetId, #{}, #{}).

-spec describe_dataset(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_dataset_response(), tuple()} |
    {error, any()} |
    {error, describe_dataset_errors(), tuple()}.
describe_dataset(Client, DatasetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_dataset(Client, DatasetId, QueryMap, HeadersMap, []).

-spec describe_dataset(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_dataset_response(), tuple()} |
    {error, any()} |
    {error, describe_dataset_errors(), tuple()}.
describe_dataset(Client, DatasetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datasets/", aws_util:encode_uri(DatasetId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the default encryption configuration for
%% the Amazon Web Services account in
%% the default or specified Region.
%%
%% For more information, see Key management:
%% https://docs.aws.amazon.com/iot-sitewise/latest/userguide/key-management.html
%% in the
%% IoT SiteWise User Guide.
-spec describe_default_encryption_configuration(aws_client:aws_client()) ->
    {ok, describe_default_encryption_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_default_encryption_configuration_errors(), tuple()}.
describe_default_encryption_configuration(Client)
  when is_map(Client) ->
    describe_default_encryption_configuration(Client, #{}, #{}).

-spec describe_default_encryption_configuration(aws_client:aws_client(), map(), map()) ->
    {ok, describe_default_encryption_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_default_encryption_configuration_errors(), tuple()}.
describe_default_encryption_configuration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_default_encryption_configuration(Client, QueryMap, HeadersMap, []).

-spec describe_default_encryption_configuration(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_default_encryption_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_default_encryption_configuration_errors(), tuple()}.
describe_default_encryption_configuration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/configuration/account/encryption"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the execution.
-spec describe_execution(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_execution_response(), tuple()} |
    {error, any()} |
    {error, describe_execution_errors(), tuple()}.
describe_execution(Client, ExecutionId)
  when is_map(Client) ->
    describe_execution(Client, ExecutionId, #{}, #{}).

-spec describe_execution(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_execution_response(), tuple()} |
    {error, any()} |
    {error, describe_execution_errors(), tuple()}.
describe_execution(Client, ExecutionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_execution(Client, ExecutionId, QueryMap, HeadersMap, []).

-spec describe_execution(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_execution_response(), tuple()} |
    {error, any()} |
    {error, describe_execution_errors(), tuple()}.
describe_execution(Client, ExecutionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/executions/", aws_util:encode_uri(ExecutionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a gateway.
-spec describe_gateway(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_gateway_response(), tuple()} |
    {error, any()} |
    {error, describe_gateway_errors(), tuple()}.
describe_gateway(Client, GatewayId)
  when is_map(Client) ->
    describe_gateway(Client, GatewayId, #{}, #{}).

-spec describe_gateway(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_gateway_response(), tuple()} |
    {error, any()} |
    {error, describe_gateway_errors(), tuple()}.
describe_gateway(Client, GatewayId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_gateway(Client, GatewayId, QueryMap, HeadersMap, []).

-spec describe_gateway(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_gateway_response(), tuple()} |
    {error, any()} |
    {error, describe_gateway_errors(), tuple()}.
describe_gateway(Client, GatewayId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/20200301/gateways/", aws_util:encode_uri(GatewayId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Each gateway capability defines data sources for a gateway.
%%
%% This is the namespace of the gateway capability.
%%
%% . The namespace follows the format `service:capability:version',
%% where:
%%
%% `service' - The service providing the capability, or
%% `iotsitewise'.
%%
%% `capability' - The specific capability type. Options include:
%% `opcuacollector' for the OPC UA data source collector, or
%% `publisher' for data publisher capability.
%%
%% `version' - The version number of the capability. Option include
%% `2' for Classic streams, V2 gateways, and `3' for MQTT-enabled, V3
%% gateways.
%%
%% After updating a capability configuration, the sync status becomes
%% `OUT_OF_SYNC' until the gateway processes the configuration.Use
%% `DescribeGatewayCapabilityConfiguration' to check the sync status and
%% verify the configuration was applied.
%%
%% A gateway can have multiple capability configurations with different
%% namespaces.
-spec describe_gateway_capability_configuration(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_gateway_capability_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_gateway_capability_configuration_errors(), tuple()}.
describe_gateway_capability_configuration(Client, CapabilityNamespace, GatewayId)
  when is_map(Client) ->
    describe_gateway_capability_configuration(Client, CapabilityNamespace, GatewayId, #{}, #{}).

-spec describe_gateway_capability_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_gateway_capability_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_gateway_capability_configuration_errors(), tuple()}.
describe_gateway_capability_configuration(Client, CapabilityNamespace, GatewayId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_gateway_capability_configuration(Client, CapabilityNamespace, GatewayId, QueryMap, HeadersMap, []).

-spec describe_gateway_capability_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_gateway_capability_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_gateway_capability_configuration_errors(), tuple()}.
describe_gateway_capability_configuration(Client, CapabilityNamespace, GatewayId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/20200301/gateways/", aws_util:encode_uri(GatewayId), "/capability/", aws_util:encode_uri(CapabilityNamespace), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the current IoT SiteWise logging options.
-spec describe_logging_options(aws_client:aws_client()) ->
    {ok, describe_logging_options_response(), tuple()} |
    {error, any()} |
    {error, describe_logging_options_errors(), tuple()}.
describe_logging_options(Client)
  when is_map(Client) ->
    describe_logging_options(Client, #{}, #{}).

-spec describe_logging_options(aws_client:aws_client(), map(), map()) ->
    {ok, describe_logging_options_response(), tuple()} |
    {error, any()} |
    {error, describe_logging_options_errors(), tuple()}.
describe_logging_options(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_logging_options(Client, QueryMap, HeadersMap, []).

-spec describe_logging_options(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_logging_options_response(), tuple()} |
    {error, any()} |
    {error, describe_logging_options_errors(), tuple()}.
describe_logging_options(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/logging"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a portal.
-spec describe_portal(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_portal_response(), tuple()} |
    {error, any()} |
    {error, describe_portal_errors(), tuple()}.
describe_portal(Client, PortalId)
  when is_map(Client) ->
    describe_portal(Client, PortalId, #{}, #{}).

-spec describe_portal(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_portal_response(), tuple()} |
    {error, any()} |
    {error, describe_portal_errors(), tuple()}.
describe_portal(Client, PortalId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_portal(Client, PortalId, QueryMap, HeadersMap, []).

-spec describe_portal(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_portal_response(), tuple()} |
    {error, any()} |
    {error, describe_portal_errors(), tuple()}.
describe_portal(Client, PortalId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/portals/", aws_util:encode_uri(PortalId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a project.
-spec describe_project(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_project_response(), tuple()} |
    {error, any()} |
    {error, describe_project_errors(), tuple()}.
describe_project(Client, ProjectId)
  when is_map(Client) ->
    describe_project(Client, ProjectId, #{}, #{}).

-spec describe_project(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_project_response(), tuple()} |
    {error, any()} |
    {error, describe_project_errors(), tuple()}.
describe_project(Client, ProjectId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_project(Client, ProjectId, QueryMap, HeadersMap, []).

-spec describe_project(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_project_response(), tuple()} |
    {error, any()} |
    {error, describe_project_errors(), tuple()}.
describe_project(Client, ProjectId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/projects/", aws_util:encode_uri(ProjectId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the storage configuration for IoT
%% SiteWise.
-spec describe_storage_configuration(aws_client:aws_client()) ->
    {ok, describe_storage_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_storage_configuration_errors(), tuple()}.
describe_storage_configuration(Client)
  when is_map(Client) ->
    describe_storage_configuration(Client, #{}, #{}).

-spec describe_storage_configuration(aws_client:aws_client(), map(), map()) ->
    {ok, describe_storage_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_storage_configuration_errors(), tuple()}.
describe_storage_configuration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_storage_configuration(Client, QueryMap, HeadersMap, []).

-spec describe_storage_configuration(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_storage_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_storage_configuration_errors(), tuple()}.
describe_storage_configuration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/configuration/account/storage"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a time series (data stream).
%%
%% To identify a time series, do one of the following:
%%
%% If the time series isn't associated with an asset property,
%% specify the `alias' of the time series.
%%
%% If the time series is associated with an asset property,
%% specify one of the following:
%%
%% The `alias' of the time series.
%%
%% The `assetId' and `propertyId' that identifies the asset property.
-spec describe_time_series(aws_client:aws_client()) ->
    {ok, describe_time_series_response(), tuple()} |
    {error, any()} |
    {error, describe_time_series_errors(), tuple()}.
describe_time_series(Client)
  when is_map(Client) ->
    describe_time_series(Client, #{}, #{}).

-spec describe_time_series(aws_client:aws_client(), map(), map()) ->
    {ok, describe_time_series_response(), tuple()} |
    {error, any()} |
    {error, describe_time_series_errors(), tuple()}.
describe_time_series(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_time_series(Client, QueryMap, HeadersMap, []).

-spec describe_time_series(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_time_series_response(), tuple()} |
    {error, any()} |
    {error, describe_time_series_errors(), tuple()}.
describe_time_series(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/timeseries/describe"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"alias">>, maps:get(<<"alias">>, QueryMap, undefined)},
        {<<"assetId">>, maps:get(<<"assetId">>, QueryMap, undefined)},
        {<<"propertyId">>, maps:get(<<"propertyId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Disassociates a child asset from the given parent asset through a
%% hierarchy defined in the
%% parent asset's model.
-spec disassociate_assets(aws_client:aws_client(), binary() | list(), disassociate_assets_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_assets_errors(), tuple()}.
disassociate_assets(Client, AssetId, Input) ->
    disassociate_assets(Client, AssetId, Input, []).

-spec disassociate_assets(aws_client:aws_client(), binary() | list(), disassociate_assets_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_assets_errors(), tuple()}.
disassociate_assets(Client, AssetId, Input0, Options0) ->
    Method = post,
    Path = ["/assets/", aws_util:encode_uri(AssetId), "/disassociate"],
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

%% @doc Disassociates a time series (data stream) from an asset property.
-spec disassociate_time_series_from_asset_property(aws_client:aws_client(), disassociate_time_series_from_asset_property_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_time_series_from_asset_property_errors(), tuple()}.
disassociate_time_series_from_asset_property(Client, Input) ->
    disassociate_time_series_from_asset_property(Client, Input, []).

-spec disassociate_time_series_from_asset_property(aws_client:aws_client(), disassociate_time_series_from_asset_property_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_time_series_from_asset_property_errors(), tuple()}.
disassociate_time_series_from_asset_property(Client, Input0, Options0) ->
    Method = post,
    Path = ["/timeseries/disassociate"],
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
                     {<<"alias">>, <<"alias">>},
                     {<<"assetId">>, <<"assetId">>},
                     {<<"propertyId">>, <<"propertyId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Executes an action on a target resource.
-spec execute_action(aws_client:aws_client(), execute_action_request()) ->
    {ok, execute_action_response(), tuple()} |
    {error, any()} |
    {error, execute_action_errors(), tuple()}.
execute_action(Client, Input) ->
    execute_action(Client, Input, []).

-spec execute_action(aws_client:aws_client(), execute_action_request(), proplists:proplist()) ->
    {ok, execute_action_response(), tuple()} |
    {error, any()} |
    {error, execute_action_errors(), tuple()}.
execute_action(Client, Input0, Options0) ->
    Method = post,
    Path = ["/actions"],
    SuccessStatusCode = 202,
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

%% @doc Run SQL queries to retrieve metadata and time-series data from asset
%% models, assets,
%% measurements, metrics, transforms, and aggregates.
-spec execute_query(aws_client:aws_client(), execute_query_request()) ->
    {ok, execute_query_response(), tuple()} |
    {error, any()} |
    {error, execute_query_errors(), tuple()}.
execute_query(Client, Input) ->
    execute_query(Client, Input, []).

-spec execute_query(aws_client:aws_client(), execute_query_request(), proplists:proplist()) ->
    {ok, execute_query_response(), tuple()} |
    {error, any()} |
    {error, execute_query_errors(), tuple()}.
execute_query(Client, Input0, Options0) ->
    Method = post,
    Path = ["/queries/execution"],
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

%% @doc Gets aggregated values for an asset property.
%%
%% For more information, see Querying
%% aggregates:
%% https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#aggregates
%% in the IoT SiteWise User Guide.
%%
%% To identify an asset property, you must specify one of the following:
%%
%% The `assetId' and `propertyId' of an asset property.
%%
%% A `propertyAlias', which is a data stream alias (for example,
%% `/company/windfarm/3/turbine/7/temperature'). To define an asset
%% property's alias, see UpdateAssetProperty:
%% https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html.
-spec get_asset_property_aggregates(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_asset_property_aggregates_response(), tuple()} |
    {error, any()} |
    {error, get_asset_property_aggregates_errors(), tuple()}.
get_asset_property_aggregates(Client, AggregateTypes, EndDate, Resolution, StartDate)
  when is_map(Client) ->
    get_asset_property_aggregates(Client, AggregateTypes, EndDate, Resolution, StartDate, #{}, #{}).

-spec get_asset_property_aggregates(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_asset_property_aggregates_response(), tuple()} |
    {error, any()} |
    {error, get_asset_property_aggregates_errors(), tuple()}.
get_asset_property_aggregates(Client, AggregateTypes, EndDate, Resolution, StartDate, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_asset_property_aggregates(Client, AggregateTypes, EndDate, Resolution, StartDate, QueryMap, HeadersMap, []).

-spec get_asset_property_aggregates(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_asset_property_aggregates_response(), tuple()} |
    {error, any()} |
    {error, get_asset_property_aggregates_errors(), tuple()}.
get_asset_property_aggregates(Client, AggregateTypes, EndDate, Resolution, StartDate, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/properties/aggregates"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"aggregateTypes">>, AggregateTypes},
        {<<"assetId">>, maps:get(<<"assetId">>, QueryMap, undefined)},
        {<<"endDate">>, EndDate},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"propertyAlias">>, maps:get(<<"propertyAlias">>, QueryMap, undefined)},
        {<<"propertyId">>, maps:get(<<"propertyId">>, QueryMap, undefined)},
        {<<"qualities">>, maps:get(<<"qualities">>, QueryMap, undefined)},
        {<<"resolution">>, Resolution},
        {<<"startDate">>, StartDate},
        {<<"timeOrdering">>, maps:get(<<"timeOrdering">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an asset property's current value.
%%
%% For more information, see Querying
%% current values:
%% https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#current-values
%% in the IoT SiteWise User Guide.
%%
%% To identify an asset property, you must specify one of the following:
%%
%% The `assetId' and `propertyId' of an asset property.
%%
%% A `propertyAlias', which is a data stream alias (for example,
%% `/company/windfarm/3/turbine/7/temperature'). To define an asset
%% property's alias, see UpdateAssetProperty:
%% https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html.
-spec get_asset_property_value(aws_client:aws_client()) ->
    {ok, get_asset_property_value_response(), tuple()} |
    {error, any()} |
    {error, get_asset_property_value_errors(), tuple()}.
get_asset_property_value(Client)
  when is_map(Client) ->
    get_asset_property_value(Client, #{}, #{}).

-spec get_asset_property_value(aws_client:aws_client(), map(), map()) ->
    {ok, get_asset_property_value_response(), tuple()} |
    {error, any()} |
    {error, get_asset_property_value_errors(), tuple()}.
get_asset_property_value(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_asset_property_value(Client, QueryMap, HeadersMap, []).

-spec get_asset_property_value(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_asset_property_value_response(), tuple()} |
    {error, any()} |
    {error, get_asset_property_value_errors(), tuple()}.
get_asset_property_value(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/properties/latest"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"assetId">>, maps:get(<<"assetId">>, QueryMap, undefined)},
        {<<"propertyAlias">>, maps:get(<<"propertyAlias">>, QueryMap, undefined)},
        {<<"propertyId">>, maps:get(<<"propertyId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the history of an asset property's values.
%%
%% For more information, see Querying
%% historical values:
%% https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#historical-values
%% in the IoT SiteWise User Guide.
%%
%% To identify an asset property, you must specify one of the following:
%%
%% The `assetId' and `propertyId' of an asset property.
%%
%% A `propertyAlias', which is a data stream alias (for example,
%% `/company/windfarm/3/turbine/7/temperature'). To define an asset
%% property's alias, see UpdateAssetProperty:
%% https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html.
-spec get_asset_property_value_history(aws_client:aws_client()) ->
    {ok, get_asset_property_value_history_response(), tuple()} |
    {error, any()} |
    {error, get_asset_property_value_history_errors(), tuple()}.
get_asset_property_value_history(Client)
  when is_map(Client) ->
    get_asset_property_value_history(Client, #{}, #{}).

-spec get_asset_property_value_history(aws_client:aws_client(), map(), map()) ->
    {ok, get_asset_property_value_history_response(), tuple()} |
    {error, any()} |
    {error, get_asset_property_value_history_errors(), tuple()}.
get_asset_property_value_history(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_asset_property_value_history(Client, QueryMap, HeadersMap, []).

-spec get_asset_property_value_history(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_asset_property_value_history_response(), tuple()} |
    {error, any()} |
    {error, get_asset_property_value_history_errors(), tuple()}.
get_asset_property_value_history(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/properties/history"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"assetId">>, maps:get(<<"assetId">>, QueryMap, undefined)},
        {<<"endDate">>, maps:get(<<"endDate">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"propertyAlias">>, maps:get(<<"propertyAlias">>, QueryMap, undefined)},
        {<<"propertyId">>, maps:get(<<"propertyId">>, QueryMap, undefined)},
        {<<"qualities">>, maps:get(<<"qualities">>, QueryMap, undefined)},
        {<<"startDate">>, maps:get(<<"startDate">>, QueryMap, undefined)},
        {<<"timeOrdering">>, maps:get(<<"timeOrdering">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get interpolated values for an asset property for a specified time
%% interval, during a
%% period of time.
%%
%% If your time series is missing data points during the specified time
%% interval,
%% you can use interpolation to estimate the missing data.
%%
%% For example, you can use this operation to return the interpolated
%% temperature values for
%% a wind turbine every 24 hours over a duration of 7 days.
%%
%% To identify an asset property, you must specify one of the following:
%%
%% The `assetId' and `propertyId' of an asset property.
%%
%% A `propertyAlias', which is a data stream alias (for example,
%% `/company/windfarm/3/turbine/7/temperature'). To define an asset
%% property's alias, see UpdateAssetProperty:
%% https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html.
-spec get_interpolated_asset_property_values(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_interpolated_asset_property_values_response(), tuple()} |
    {error, any()} |
    {error, get_interpolated_asset_property_values_errors(), tuple()}.
get_interpolated_asset_property_values(Client, EndTimeInSeconds, IntervalInSeconds, Quality, StartTimeInSeconds, Type)
  when is_map(Client) ->
    get_interpolated_asset_property_values(Client, EndTimeInSeconds, IntervalInSeconds, Quality, StartTimeInSeconds, Type, #{}, #{}).

-spec get_interpolated_asset_property_values(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_interpolated_asset_property_values_response(), tuple()} |
    {error, any()} |
    {error, get_interpolated_asset_property_values_errors(), tuple()}.
get_interpolated_asset_property_values(Client, EndTimeInSeconds, IntervalInSeconds, Quality, StartTimeInSeconds, Type, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_interpolated_asset_property_values(Client, EndTimeInSeconds, IntervalInSeconds, Quality, StartTimeInSeconds, Type, QueryMap, HeadersMap, []).

-spec get_interpolated_asset_property_values(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_interpolated_asset_property_values_response(), tuple()} |
    {error, any()} |
    {error, get_interpolated_asset_property_values_errors(), tuple()}.
get_interpolated_asset_property_values(Client, EndTimeInSeconds, IntervalInSeconds, Quality, StartTimeInSeconds, Type, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/properties/interpolated"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"assetId">>, maps:get(<<"assetId">>, QueryMap, undefined)},
        {<<"endTimeInSeconds">>, EndTimeInSeconds},
        {<<"endTimeOffsetInNanos">>, maps:get(<<"endTimeOffsetInNanos">>, QueryMap, undefined)},
        {<<"intervalInSeconds">>, IntervalInSeconds},
        {<<"intervalWindowInSeconds">>, maps:get(<<"intervalWindowInSeconds">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"propertyAlias">>, maps:get(<<"propertyAlias">>, QueryMap, undefined)},
        {<<"propertyId">>, maps:get(<<"propertyId">>, QueryMap, undefined)},
        {<<"quality">>, Quality},
        {<<"startTimeInSeconds">>, StartTimeInSeconds},
        {<<"startTimeOffsetInNanos">>, maps:get(<<"startTimeOffsetInNanos">>, QueryMap, undefined)},
        {<<"type">>, Type}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Invokes SiteWise Assistant to start or continue a conversation.
-spec invoke_assistant(aws_client:aws_client(), invoke_assistant_request()) ->
    {ok, invoke_assistant_response(), tuple()} |
    {error, any()} |
    {error, invoke_assistant_errors(), tuple()}.
invoke_assistant(Client, Input) ->
    invoke_assistant(Client, Input, []).

-spec invoke_assistant(aws_client:aws_client(), invoke_assistant_request(), proplists:proplist()) ->
    {ok, invoke_assistant_response(), tuple()} |
    {error, any()} |
    {error, invoke_assistant_errors(), tuple()}.
invoke_assistant(Client, Input0, Options0) ->
    Method = post,
    Path = ["/assistant/invocation"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-iotsitewise-assistant-conversation-id">>, <<"conversationId">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Retrieves a paginated list of access policies for an identity (an IAM
%% Identity Center user, an IAM Identity Center
%% group, or an IAM user) or an IoT SiteWise Monitor resource (a portal or
%% project).
-spec list_access_policies(aws_client:aws_client()) ->
    {ok, list_access_policies_response(), tuple()} |
    {error, any()} |
    {error, list_access_policies_errors(), tuple()}.
list_access_policies(Client)
  when is_map(Client) ->
    list_access_policies(Client, #{}, #{}).

-spec list_access_policies(aws_client:aws_client(), map(), map()) ->
    {ok, list_access_policies_response(), tuple()} |
    {error, any()} |
    {error, list_access_policies_errors(), tuple()}.
list_access_policies(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_access_policies(Client, QueryMap, HeadersMap, []).

-spec list_access_policies(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_access_policies_response(), tuple()} |
    {error, any()} |
    {error, list_access_policies_errors(), tuple()}.
list_access_policies(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/access-policies"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"iamArn">>, maps:get(<<"iamArn">>, QueryMap, undefined)},
        {<<"identityId">>, maps:get(<<"identityId">>, QueryMap, undefined)},
        {<<"identityType">>, maps:get(<<"identityType">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"resourceId">>, maps:get(<<"resourceId">>, QueryMap, undefined)},
        {<<"resourceType">>, maps:get(<<"resourceType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of actions for a specific target resource.
-spec list_actions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_actions_response(), tuple()} |
    {error, any()} |
    {error, list_actions_errors(), tuple()}.
list_actions(Client, TargetResourceId, TargetResourceType)
  when is_map(Client) ->
    list_actions(Client, TargetResourceId, TargetResourceType, #{}, #{}).

-spec list_actions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_actions_response(), tuple()} |
    {error, any()} |
    {error, list_actions_errors(), tuple()}.
list_actions(Client, TargetResourceId, TargetResourceType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_actions(Client, TargetResourceId, TargetResourceType, QueryMap, HeadersMap, []).

-spec list_actions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_actions_response(), tuple()} |
    {error, any()} |
    {error, list_actions_errors(), tuple()}.
list_actions(Client, TargetResourceId, TargetResourceType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/actions"],
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
        {<<"resolveToResourceId">>, maps:get(<<"resolveToResourceId">>, QueryMap, undefined)},
        {<<"resolveToResourceType">>, maps:get(<<"resolveToResourceType">>, QueryMap, undefined)},
        {<<"targetResourceId">>, TargetResourceId},
        {<<"targetResourceType">>, TargetResourceType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of composite models associated with the
%% asset model
-spec list_asset_model_composite_models(aws_client:aws_client(), binary() | list()) ->
    {ok, list_asset_model_composite_models_response(), tuple()} |
    {error, any()} |
    {error, list_asset_model_composite_models_errors(), tuple()}.
list_asset_model_composite_models(Client, AssetModelId)
  when is_map(Client) ->
    list_asset_model_composite_models(Client, AssetModelId, #{}, #{}).

-spec list_asset_model_composite_models(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_asset_model_composite_models_response(), tuple()} |
    {error, any()} |
    {error, list_asset_model_composite_models_errors(), tuple()}.
list_asset_model_composite_models(Client, AssetModelId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_asset_model_composite_models(Client, AssetModelId, QueryMap, HeadersMap, []).

-spec list_asset_model_composite_models(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_asset_model_composite_models_response(), tuple()} |
    {error, any()} |
    {error, list_asset_model_composite_models_errors(), tuple()}.
list_asset_model_composite_models(Client, AssetModelId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/asset-models/", aws_util:encode_uri(AssetModelId), "/composite-models"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"assetModelVersion">>, maps:get(<<"assetModelVersion">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of properties associated with an asset
%% model.
%%
%% If you update properties associated with the model before you finish
%% listing all the properties,
%% you need to start all over again.
-spec list_asset_model_properties(aws_client:aws_client(), binary() | list()) ->
    {ok, list_asset_model_properties_response(), tuple()} |
    {error, any()} |
    {error, list_asset_model_properties_errors(), tuple()}.
list_asset_model_properties(Client, AssetModelId)
  when is_map(Client) ->
    list_asset_model_properties(Client, AssetModelId, #{}, #{}).

-spec list_asset_model_properties(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_asset_model_properties_response(), tuple()} |
    {error, any()} |
    {error, list_asset_model_properties_errors(), tuple()}.
list_asset_model_properties(Client, AssetModelId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_asset_model_properties(Client, AssetModelId, QueryMap, HeadersMap, []).

-spec list_asset_model_properties(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_asset_model_properties_response(), tuple()} |
    {error, any()} |
    {error, list_asset_model_properties_errors(), tuple()}.
list_asset_model_properties(Client, AssetModelId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/asset-models/", aws_util:encode_uri(AssetModelId), "/properties"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"assetModelVersion">>, maps:get(<<"assetModelVersion">>, QueryMap, undefined)},
        {<<"filter">>, maps:get(<<"filter">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of summaries of all asset models.
-spec list_asset_models(aws_client:aws_client()) ->
    {ok, list_asset_models_response(), tuple()} |
    {error, any()} |
    {error, list_asset_models_errors(), tuple()}.
list_asset_models(Client)
  when is_map(Client) ->
    list_asset_models(Client, #{}, #{}).

-spec list_asset_models(aws_client:aws_client(), map(), map()) ->
    {ok, list_asset_models_response(), tuple()} |
    {error, any()} |
    {error, list_asset_models_errors(), tuple()}.
list_asset_models(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_asset_models(Client, QueryMap, HeadersMap, []).

-spec list_asset_models(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_asset_models_response(), tuple()} |
    {error, any()} |
    {error, list_asset_models_errors(), tuple()}.
list_asset_models(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/asset-models"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"assetModelTypes">>, maps:get(<<"assetModelTypes">>, QueryMap, undefined)},
        {<<"assetModelVersion">>, maps:get(<<"assetModelVersion">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of properties associated with an asset.
%%
%% If you update properties associated with the model before you finish
%% listing all the properties,
%% you need to start all over again.
-spec list_asset_properties(aws_client:aws_client(), binary() | list()) ->
    {ok, list_asset_properties_response(), tuple()} |
    {error, any()} |
    {error, list_asset_properties_errors(), tuple()}.
list_asset_properties(Client, AssetId)
  when is_map(Client) ->
    list_asset_properties(Client, AssetId, #{}, #{}).

-spec list_asset_properties(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_asset_properties_response(), tuple()} |
    {error, any()} |
    {error, list_asset_properties_errors(), tuple()}.
list_asset_properties(Client, AssetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_asset_properties(Client, AssetId, QueryMap, HeadersMap, []).

-spec list_asset_properties(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_asset_properties_response(), tuple()} |
    {error, any()} |
    {error, list_asset_properties_errors(), tuple()}.
list_asset_properties(Client, AssetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assets/", aws_util:encode_uri(AssetId), "/properties"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"filter">>, maps:get(<<"filter">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of asset relationships for an asset.
%%
%% You can use this operation
%% to identify an asset's root asset and all associated assets between
%% that asset and its
%% root.
-spec list_asset_relationships(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_asset_relationships_response(), tuple()} |
    {error, any()} |
    {error, list_asset_relationships_errors(), tuple()}.
list_asset_relationships(Client, AssetId, TraversalType)
  when is_map(Client) ->
    list_asset_relationships(Client, AssetId, TraversalType, #{}, #{}).

-spec list_asset_relationships(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_asset_relationships_response(), tuple()} |
    {error, any()} |
    {error, list_asset_relationships_errors(), tuple()}.
list_asset_relationships(Client, AssetId, TraversalType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_asset_relationships(Client, AssetId, TraversalType, QueryMap, HeadersMap, []).

-spec list_asset_relationships(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_asset_relationships_response(), tuple()} |
    {error, any()} |
    {error, list_asset_relationships_errors(), tuple()}.
list_asset_relationships(Client, AssetId, TraversalType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assets/", aws_util:encode_uri(AssetId), "/assetRelationships"],
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
        {<<"traversalType">>, TraversalType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of asset summaries.
%%
%% You can use this operation to do the following:
%%
%% List assets based on a specific asset model.
%%
%% List top-level assets.
%%
%% You can't use this operation to list all assets. To retrieve summaries
%% for all of your
%% assets, use ListAssetModels:
%% https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_ListAssetModels.html
%% to get all of your asset model IDs. Then, use ListAssets to get all
%% assets for each asset model.
-spec list_assets(aws_client:aws_client()) ->
    {ok, list_assets_response(), tuple()} |
    {error, any()} |
    {error, list_assets_errors(), tuple()}.
list_assets(Client)
  when is_map(Client) ->
    list_assets(Client, #{}, #{}).

-spec list_assets(aws_client:aws_client(), map(), map()) ->
    {ok, list_assets_response(), tuple()} |
    {error, any()} |
    {error, list_assets_errors(), tuple()}.
list_assets(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_assets(Client, QueryMap, HeadersMap, []).

-spec list_assets(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_assets_response(), tuple()} |
    {error, any()} |
    {error, list_assets_errors(), tuple()}.
list_assets(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assets"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"assetModelId">>, maps:get(<<"assetModelId">>, QueryMap, undefined)},
        {<<"filter">>, maps:get(<<"filter">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of associated assets.
%%
%% You can use this operation to do the following:
%%
%% `CHILD' - List all child assets associated to the asset.
%%
%% `PARENT' - List the asset's parent asset.
-spec list_associated_assets(aws_client:aws_client(), binary() | list()) ->
    {ok, list_associated_assets_response(), tuple()} |
    {error, any()} |
    {error, list_associated_assets_errors(), tuple()}.
list_associated_assets(Client, AssetId)
  when is_map(Client) ->
    list_associated_assets(Client, AssetId, #{}, #{}).

-spec list_associated_assets(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_associated_assets_response(), tuple()} |
    {error, any()} |
    {error, list_associated_assets_errors(), tuple()}.
list_associated_assets(Client, AssetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_associated_assets(Client, AssetId, QueryMap, HeadersMap, []).

-spec list_associated_assets(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_associated_assets_response(), tuple()} |
    {error, any()} |
    {error, list_associated_assets_errors(), tuple()}.
list_associated_assets(Client, AssetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assets/", aws_util:encode_uri(AssetId), "/hierarchies"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"hierarchyId">>, maps:get(<<"hierarchyId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"traversalDirection">>, maps:get(<<"traversalDirection">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of bulk import job requests.
%%
%% For more information, see List bulk
%% import jobs (CLI):
%% https://docs.aws.amazon.com/iot-sitewise/latest/userguide/ListBulkImportJobs.html
%% in the IoT SiteWise User Guide.
-spec list_bulk_import_jobs(aws_client:aws_client()) ->
    {ok, list_bulk_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_bulk_import_jobs_errors(), tuple()}.
list_bulk_import_jobs(Client)
  when is_map(Client) ->
    list_bulk_import_jobs(Client, #{}, #{}).

-spec list_bulk_import_jobs(aws_client:aws_client(), map(), map()) ->
    {ok, list_bulk_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_bulk_import_jobs_errors(), tuple()}.
list_bulk_import_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_bulk_import_jobs(Client, QueryMap, HeadersMap, []).

-spec list_bulk_import_jobs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_bulk_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_bulk_import_jobs_errors(), tuple()}.
list_bulk_import_jobs(Client, QueryMap, HeadersMap, Options0)
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
        {<<"filter">>, maps:get(<<"filter">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of composition relationships for an asset
%% model of type
%% `COMPONENT_MODEL'.
-spec list_composition_relationships(aws_client:aws_client(), binary() | list()) ->
    {ok, list_composition_relationships_response(), tuple()} |
    {error, any()} |
    {error, list_composition_relationships_errors(), tuple()}.
list_composition_relationships(Client, AssetModelId)
  when is_map(Client) ->
    list_composition_relationships(Client, AssetModelId, #{}, #{}).

-spec list_composition_relationships(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_composition_relationships_response(), tuple()} |
    {error, any()} |
    {error, list_composition_relationships_errors(), tuple()}.
list_composition_relationships(Client, AssetModelId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_composition_relationships(Client, AssetModelId, QueryMap, HeadersMap, []).

-spec list_composition_relationships(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_composition_relationships_response(), tuple()} |
    {error, any()} |
    {error, list_composition_relationships_errors(), tuple()}.
list_composition_relationships(Client, AssetModelId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/asset-models/", aws_util:encode_uri(AssetModelId), "/composition-relationships"],
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

%% @doc
%% Lists all data binding usages for computation models.
%%
%% This allows to identify where specific data bindings are being
%% utilized across the computation models.
%% This track dependencies between data sources and computation models.
-spec list_computation_model_data_binding_usages(aws_client:aws_client(), list_computation_model_data_binding_usages_request()) ->
    {ok, list_computation_model_data_binding_usages_response(), tuple()} |
    {error, any()} |
    {error, list_computation_model_data_binding_usages_errors(), tuple()}.
list_computation_model_data_binding_usages(Client, Input) ->
    list_computation_model_data_binding_usages(Client, Input, []).

-spec list_computation_model_data_binding_usages(aws_client:aws_client(), list_computation_model_data_binding_usages_request(), proplists:proplist()) ->
    {ok, list_computation_model_data_binding_usages_response(), tuple()} |
    {error, any()} |
    {error, list_computation_model_data_binding_usages_errors(), tuple()}.
list_computation_model_data_binding_usages(Client, Input0, Options0) ->
    Method = post,
    Path = ["/computation-models/data-binding-usages"],
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

%% @doc Lists all distinct resources that are resolved from the executed
%% actions of the computation model.
-spec list_computation_model_resolve_to_resources(aws_client:aws_client(), binary() | list()) ->
    {ok, list_computation_model_resolve_to_resources_response(), tuple()} |
    {error, any()} |
    {error, list_computation_model_resolve_to_resources_errors(), tuple()}.
list_computation_model_resolve_to_resources(Client, ComputationModelId)
  when is_map(Client) ->
    list_computation_model_resolve_to_resources(Client, ComputationModelId, #{}, #{}).

-spec list_computation_model_resolve_to_resources(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_computation_model_resolve_to_resources_response(), tuple()} |
    {error, any()} |
    {error, list_computation_model_resolve_to_resources_errors(), tuple()}.
list_computation_model_resolve_to_resources(Client, ComputationModelId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_computation_model_resolve_to_resources(Client, ComputationModelId, QueryMap, HeadersMap, []).

-spec list_computation_model_resolve_to_resources(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_computation_model_resolve_to_resources_response(), tuple()} |
    {error, any()} |
    {error, list_computation_model_resolve_to_resources_errors(), tuple()}.
list_computation_model_resolve_to_resources(Client, ComputationModelId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/computation-models/", aws_util:encode_uri(ComputationModelId), "/resolve-to-resources"],
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

%% @doc Retrieves a paginated list of summaries of all computation models.
-spec list_computation_models(aws_client:aws_client()) ->
    {ok, list_computation_models_response(), tuple()} |
    {error, any()} |
    {error, list_computation_models_errors(), tuple()}.
list_computation_models(Client)
  when is_map(Client) ->
    list_computation_models(Client, #{}, #{}).

-spec list_computation_models(aws_client:aws_client(), map(), map()) ->
    {ok, list_computation_models_response(), tuple()} |
    {error, any()} |
    {error, list_computation_models_errors(), tuple()}.
list_computation_models(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_computation_models(Client, QueryMap, HeadersMap, []).

-spec list_computation_models(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_computation_models_response(), tuple()} |
    {error, any()} |
    {error, list_computation_models_errors(), tuple()}.
list_computation_models(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/computation-models"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"computationModelType">>, maps:get(<<"computationModelType">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of dashboards for an IoT SiteWise Monitor
%% project.
-spec list_dashboards(aws_client:aws_client(), binary() | list()) ->
    {ok, list_dashboards_response(), tuple()} |
    {error, any()} |
    {error, list_dashboards_errors(), tuple()}.
list_dashboards(Client, ProjectId)
  when is_map(Client) ->
    list_dashboards(Client, ProjectId, #{}, #{}).

-spec list_dashboards(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_dashboards_response(), tuple()} |
    {error, any()} |
    {error, list_dashboards_errors(), tuple()}.
list_dashboards(Client, ProjectId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_dashboards(Client, ProjectId, QueryMap, HeadersMap, []).

-spec list_dashboards(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_dashboards_response(), tuple()} |
    {error, any()} |
    {error, list_dashboards_errors(), tuple()}.
list_dashboards(Client, ProjectId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/dashboards"],
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
        {<<"projectId">>, ProjectId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of datasets for a specific target
%% resource.
-spec list_datasets(aws_client:aws_client(), binary() | list()) ->
    {ok, list_datasets_response(), tuple()} |
    {error, any()} |
    {error, list_datasets_errors(), tuple()}.
list_datasets(Client, SourceType)
  when is_map(Client) ->
    list_datasets(Client, SourceType, #{}, #{}).

-spec list_datasets(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_datasets_response(), tuple()} |
    {error, any()} |
    {error, list_datasets_errors(), tuple()}.
list_datasets(Client, SourceType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_datasets(Client, SourceType, QueryMap, HeadersMap, []).

-spec list_datasets(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_datasets_response(), tuple()} |
    {error, any()} |
    {error, list_datasets_errors(), tuple()}.
list_datasets(Client, SourceType, QueryMap, HeadersMap, Options0)
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"sourceType">>, SourceType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of summaries of all executions.
-spec list_executions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_executions_response(), tuple()} |
    {error, any()} |
    {error, list_executions_errors(), tuple()}.
list_executions(Client, TargetResourceId, TargetResourceType)
  when is_map(Client) ->
    list_executions(Client, TargetResourceId, TargetResourceType, #{}, #{}).

-spec list_executions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_executions_response(), tuple()} |
    {error, any()} |
    {error, list_executions_errors(), tuple()}.
list_executions(Client, TargetResourceId, TargetResourceType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_executions(Client, TargetResourceId, TargetResourceType, QueryMap, HeadersMap, []).

-spec list_executions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_executions_response(), tuple()} |
    {error, any()} |
    {error, list_executions_errors(), tuple()}.
list_executions(Client, TargetResourceId, TargetResourceType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/executions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"actionType">>, maps:get(<<"actionType">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"resolveToResourceId">>, maps:get(<<"resolveToResourceId">>, QueryMap, undefined)},
        {<<"resolveToResourceType">>, maps:get(<<"resolveToResourceType">>, QueryMap, undefined)},
        {<<"targetResourceId">>, TargetResourceId},
        {<<"targetResourceType">>, TargetResourceType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of gateways.
-spec list_gateways(aws_client:aws_client()) ->
    {ok, list_gateways_response(), tuple()} |
    {error, any()} |
    {error, list_gateways_errors(), tuple()}.
list_gateways(Client)
  when is_map(Client) ->
    list_gateways(Client, #{}, #{}).

-spec list_gateways(aws_client:aws_client(), map(), map()) ->
    {ok, list_gateways_response(), tuple()} |
    {error, any()} |
    {error, list_gateways_errors(), tuple()}.
list_gateways(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_gateways(Client, QueryMap, HeadersMap, []).

-spec list_gateways(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_gateways_response(), tuple()} |
    {error, any()} |
    {error, list_gateways_errors(), tuple()}.
list_gateways(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/20200301/gateways"],
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

%% @doc Retrieves a paginated list of IoT SiteWise Monitor portals.
-spec list_portals(aws_client:aws_client()) ->
    {ok, list_portals_response(), tuple()} |
    {error, any()} |
    {error, list_portals_errors(), tuple()}.
list_portals(Client)
  when is_map(Client) ->
    list_portals(Client, #{}, #{}).

-spec list_portals(aws_client:aws_client(), map(), map()) ->
    {ok, list_portals_response(), tuple()} |
    {error, any()} |
    {error, list_portals_errors(), tuple()}.
list_portals(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_portals(Client, QueryMap, HeadersMap, []).

-spec list_portals(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_portals_response(), tuple()} |
    {error, any()} |
    {error, list_portals_errors(), tuple()}.
list_portals(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/portals"],
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

%% @doc Retrieves a paginated list of assets associated with an IoT SiteWise
%% Monitor project.
-spec list_project_assets(aws_client:aws_client(), binary() | list()) ->
    {ok, list_project_assets_response(), tuple()} |
    {error, any()} |
    {error, list_project_assets_errors(), tuple()}.
list_project_assets(Client, ProjectId)
  when is_map(Client) ->
    list_project_assets(Client, ProjectId, #{}, #{}).

-spec list_project_assets(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_project_assets_response(), tuple()} |
    {error, any()} |
    {error, list_project_assets_errors(), tuple()}.
list_project_assets(Client, ProjectId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_project_assets(Client, ProjectId, QueryMap, HeadersMap, []).

-spec list_project_assets(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_project_assets_response(), tuple()} |
    {error, any()} |
    {error, list_project_assets_errors(), tuple()}.
list_project_assets(Client, ProjectId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/projects/", aws_util:encode_uri(ProjectId), "/assets"],
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

%% @doc Retrieves a paginated list of projects for an IoT SiteWise Monitor
%% portal.
-spec list_projects(aws_client:aws_client(), binary() | list()) ->
    {ok, list_projects_response(), tuple()} |
    {error, any()} |
    {error, list_projects_errors(), tuple()}.
list_projects(Client, PortalId)
  when is_map(Client) ->
    list_projects(Client, PortalId, #{}, #{}).

-spec list_projects(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_projects_response(), tuple()} |
    {error, any()} |
    {error, list_projects_errors(), tuple()}.
list_projects(Client, PortalId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_projects(Client, PortalId, QueryMap, HeadersMap, []).

-spec list_projects(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_projects_response(), tuple()} |
    {error, any()} |
    {error, list_projects_errors(), tuple()}.
list_projects(Client, PortalId, QueryMap, HeadersMap, Options0)
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"portalId">>, PortalId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the list of tags for an IoT SiteWise resource.
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
    Path = ["/tags"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"resourceArn">>, ResourceArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of time series (data streams).
-spec list_time_series(aws_client:aws_client()) ->
    {ok, list_time_series_response(), tuple()} |
    {error, any()} |
    {error, list_time_series_errors(), tuple()}.
list_time_series(Client)
  when is_map(Client) ->
    list_time_series(Client, #{}, #{}).

-spec list_time_series(aws_client:aws_client(), map(), map()) ->
    {ok, list_time_series_response(), tuple()} |
    {error, any()} |
    {error, list_time_series_errors(), tuple()}.
list_time_series(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_time_series(Client, QueryMap, HeadersMap, []).

-spec list_time_series(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_time_series_response(), tuple()} |
    {error, any()} |
    {error, list_time_series_errors(), tuple()}.
list_time_series(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/timeseries"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"aliasPrefix">>, maps:get(<<"aliasPrefix">>, QueryMap, undefined)},
        {<<"assetId">>, maps:get(<<"assetId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"timeSeriesType">>, maps:get(<<"timeSeriesType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Sets the default encryption configuration for the Amazon Web Services
%% account.
%%
%% For more information, see
%% Key management:
%% https://docs.aws.amazon.com/iot-sitewise/latest/userguide/key-management.html
%% in
%% the IoT SiteWise User Guide.
-spec put_default_encryption_configuration(aws_client:aws_client(), put_default_encryption_configuration_request()) ->
    {ok, put_default_encryption_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_default_encryption_configuration_errors(), tuple()}.
put_default_encryption_configuration(Client, Input) ->
    put_default_encryption_configuration(Client, Input, []).

-spec put_default_encryption_configuration(aws_client:aws_client(), put_default_encryption_configuration_request(), proplists:proplist()) ->
    {ok, put_default_encryption_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_default_encryption_configuration_errors(), tuple()}.
put_default_encryption_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/configuration/account/encryption"],
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

%% @doc Sets logging options for IoT SiteWise.
-spec put_logging_options(aws_client:aws_client(), put_logging_options_request()) ->
    {ok, put_logging_options_response(), tuple()} |
    {error, any()} |
    {error, put_logging_options_errors(), tuple()}.
put_logging_options(Client, Input) ->
    put_logging_options(Client, Input, []).

-spec put_logging_options(aws_client:aws_client(), put_logging_options_request(), proplists:proplist()) ->
    {ok, put_logging_options_response(), tuple()} |
    {error, any()} |
    {error, put_logging_options_errors(), tuple()}.
put_logging_options(Client, Input0, Options0) ->
    Method = put,
    Path = ["/logging"],
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

%% @doc Configures storage settings for IoT SiteWise.
-spec put_storage_configuration(aws_client:aws_client(), put_storage_configuration_request()) ->
    {ok, put_storage_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_storage_configuration_errors(), tuple()}.
put_storage_configuration(Client, Input) ->
    put_storage_configuration(Client, Input, []).

-spec put_storage_configuration(aws_client:aws_client(), put_storage_configuration_request(), proplists:proplist()) ->
    {ok, put_storage_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_storage_configuration_errors(), tuple()}.
put_storage_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/configuration/account/storage"],
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

%% @doc Adds tags to an IoT SiteWise resource.
%%
%% If a tag already exists for the resource, this operation
%% updates the tag's value.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tags"],
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
                     {<<"resourceArn">>, <<"resourceArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a tag from an IoT SiteWise resource.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/tags"],
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
                     {<<"resourceArn">>, <<"resourceArn">>},
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing access policy that specifies an identity's
%% access to an IoT SiteWise Monitor
%% portal or project resource.
-spec update_access_policy(aws_client:aws_client(), binary() | list(), update_access_policy_request()) ->
    {ok, update_access_policy_response(), tuple()} |
    {error, any()} |
    {error, update_access_policy_errors(), tuple()}.
update_access_policy(Client, AccessPolicyId, Input) ->
    update_access_policy(Client, AccessPolicyId, Input, []).

-spec update_access_policy(aws_client:aws_client(), binary() | list(), update_access_policy_request(), proplists:proplist()) ->
    {ok, update_access_policy_response(), tuple()} |
    {error, any()} |
    {error, update_access_policy_errors(), tuple()}.
update_access_policy(Client, AccessPolicyId, Input0, Options0) ->
    Method = put,
    Path = ["/access-policies/", aws_util:encode_uri(AccessPolicyId), ""],
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

%% @doc Updates an asset's name.
%%
%% For more information, see Updating assets and models:
%% https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html
%% in the
%% IoT SiteWise User Guide.
-spec update_asset(aws_client:aws_client(), binary() | list(), update_asset_request()) ->
    {ok, update_asset_response(), tuple()} |
    {error, any()} |
    {error, update_asset_errors(), tuple()}.
update_asset(Client, AssetId, Input) ->
    update_asset(Client, AssetId, Input, []).

-spec update_asset(aws_client:aws_client(), binary() | list(), update_asset_request(), proplists:proplist()) ->
    {ok, update_asset_response(), tuple()} |
    {error, any()} |
    {error, update_asset_errors(), tuple()}.
update_asset(Client, AssetId, Input0, Options0) ->
    Method = put,
    Path = ["/assets/", aws_util:encode_uri(AssetId), ""],
    SuccessStatusCode = 202,
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

%% @doc Updates an asset model and all of the assets that were created from
%% the model.
%%
%% Each asset
%% created from the model inherits the updated asset model's property and
%% hierarchy definitions.
%% For more information, see Updating assets and models:
%% https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html
%% in the
%% IoT SiteWise User Guide.
%%
%% If you remove a property from an asset model, IoT SiteWise deletes all
%% previous data for that
%% property. You can’t change the type or data type of an existing property.
%%
%% To replace an existing asset model property with a new one with the same
%% `name', do the following:
%%
%% Submit an `UpdateAssetModel' request with the entire existing property
%% removed.
%%
%% Submit a second `UpdateAssetModel' request that includes the new
%% property. The new asset property will have the same `name' as the
%% previous
%% one and IoT SiteWise will generate a new unique `id'.
-spec update_asset_model(aws_client:aws_client(), binary() | list(), update_asset_model_request()) ->
    {ok, update_asset_model_response(), tuple()} |
    {error, any()} |
    {error, update_asset_model_errors(), tuple()}.
update_asset_model(Client, AssetModelId, Input) ->
    update_asset_model(Client, AssetModelId, Input, []).

-spec update_asset_model(aws_client:aws_client(), binary() | list(), update_asset_model_request(), proplists:proplist()) ->
    {ok, update_asset_model_response(), tuple()} |
    {error, any()} |
    {error, update_asset_model_errors(), tuple()}.
update_asset_model(Client, AssetModelId, Input0, Options0) ->
    Method = put,
    Path = ["/asset-models/", aws_util:encode_uri(AssetModelId), ""],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"ifMatch">>},
                       {<<"If-None-Match">>, <<"ifNoneMatch">>},
                       {<<"Match-For-Version-Type">>, <<"matchForVersionType">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a composite model and all of the assets that were created
%% from the model.
%%
%% Each
%% asset created from the model inherits the updated asset model's
%% property and hierarchy
%% definitions. For more information, see Updating assets and models:
%% https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html
%% in the
%% IoT SiteWise User Guide.
%%
%% If you remove a property from a composite asset model, IoT SiteWise
%% deletes all previous data
%% for that property. You can’t change the type or data type of an existing
%% property.
%%
%% To replace an existing composite asset model property with a new one with
%% the same
%% `name', do the following:
%%
%% Submit an `UpdateAssetModelCompositeModel' request with the entire
%% existing property removed.
%%
%% Submit a second `UpdateAssetModelCompositeModel' request that includes
%% the new property. The new asset property will have the same `name' as
%% the
%% previous one and IoT SiteWise will generate a new unique `id'.
-spec update_asset_model_composite_model(aws_client:aws_client(), binary() | list(), binary() | list(), update_asset_model_composite_model_request()) ->
    {ok, update_asset_model_composite_model_response(), tuple()} |
    {error, any()} |
    {error, update_asset_model_composite_model_errors(), tuple()}.
update_asset_model_composite_model(Client, AssetModelCompositeModelId, AssetModelId, Input) ->
    update_asset_model_composite_model(Client, AssetModelCompositeModelId, AssetModelId, Input, []).

-spec update_asset_model_composite_model(aws_client:aws_client(), binary() | list(), binary() | list(), update_asset_model_composite_model_request(), proplists:proplist()) ->
    {ok, update_asset_model_composite_model_response(), tuple()} |
    {error, any()} |
    {error, update_asset_model_composite_model_errors(), tuple()}.
update_asset_model_composite_model(Client, AssetModelCompositeModelId, AssetModelId, Input0, Options0) ->
    Method = put,
    Path = ["/asset-models/", aws_util:encode_uri(AssetModelId), "/composite-models/", aws_util:encode_uri(AssetModelCompositeModelId), ""],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"ifMatch">>},
                       {<<"If-None-Match">>, <<"ifNoneMatch">>},
                       {<<"Match-For-Version-Type">>, <<"matchForVersionType">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an asset property's alias and notification state.
%%
%% This operation overwrites the property's existing alias and
%% notification state. To keep
%% your existing property's alias or notification state, you must include
%% the existing values
%% in the UpdateAssetProperty request. For more information, see
%% DescribeAssetProperty:
%% https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetProperty.html.
-spec update_asset_property(aws_client:aws_client(), binary() | list(), binary() | list(), update_asset_property_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_asset_property_errors(), tuple()}.
update_asset_property(Client, AssetId, PropertyId, Input) ->
    update_asset_property(Client, AssetId, PropertyId, Input, []).

-spec update_asset_property(aws_client:aws_client(), binary() | list(), binary() | list(), update_asset_property_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_asset_property_errors(), tuple()}.
update_asset_property(Client, AssetId, PropertyId, Input0, Options0) ->
    Method = put,
    Path = ["/assets/", aws_util:encode_uri(AssetId), "/properties/", aws_util:encode_uri(PropertyId), ""],
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

%% @doc Updates the computation model.
-spec update_computation_model(aws_client:aws_client(), binary() | list(), update_computation_model_request()) ->
    {ok, update_computation_model_response(), tuple()} |
    {error, any()} |
    {error, update_computation_model_errors(), tuple()}.
update_computation_model(Client, ComputationModelId, Input) ->
    update_computation_model(Client, ComputationModelId, Input, []).

-spec update_computation_model(aws_client:aws_client(), binary() | list(), update_computation_model_request(), proplists:proplist()) ->
    {ok, update_computation_model_response(), tuple()} |
    {error, any()} |
    {error, update_computation_model_errors(), tuple()}.
update_computation_model(Client, ComputationModelId, Input0, Options0) ->
    Method = post,
    Path = ["/computation-models/", aws_util:encode_uri(ComputationModelId), ""],
    SuccessStatusCode = 202,
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

%% @doc Updates an IoT SiteWise Monitor dashboard.
-spec update_dashboard(aws_client:aws_client(), binary() | list(), update_dashboard_request()) ->
    {ok, update_dashboard_response(), tuple()} |
    {error, any()} |
    {error, update_dashboard_errors(), tuple()}.
update_dashboard(Client, DashboardId, Input) ->
    update_dashboard(Client, DashboardId, Input, []).

-spec update_dashboard(aws_client:aws_client(), binary() | list(), update_dashboard_request(), proplists:proplist()) ->
    {ok, update_dashboard_response(), tuple()} |
    {error, any()} |
    {error, update_dashboard_errors(), tuple()}.
update_dashboard(Client, DashboardId, Input0, Options0) ->
    Method = put,
    Path = ["/dashboards/", aws_util:encode_uri(DashboardId), ""],
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

%% @doc Updates a dataset.
-spec update_dataset(aws_client:aws_client(), binary() | list(), update_dataset_request()) ->
    {ok, update_dataset_response(), tuple()} |
    {error, any()} |
    {error, update_dataset_errors(), tuple()}.
update_dataset(Client, DatasetId, Input) ->
    update_dataset(Client, DatasetId, Input, []).

-spec update_dataset(aws_client:aws_client(), binary() | list(), update_dataset_request(), proplists:proplist()) ->
    {ok, update_dataset_response(), tuple()} |
    {error, any()} |
    {error, update_dataset_errors(), tuple()}.
update_dataset(Client, DatasetId, Input0, Options0) ->
    Method = put,
    Path = ["/datasets/", aws_util:encode_uri(DatasetId), ""],
    SuccessStatusCode = 202,
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

%% @doc Updates a gateway's name.
-spec update_gateway(aws_client:aws_client(), binary() | list(), update_gateway_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_gateway_errors(), tuple()}.
update_gateway(Client, GatewayId, Input) ->
    update_gateway(Client, GatewayId, Input, []).

-spec update_gateway(aws_client:aws_client(), binary() | list(), update_gateway_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_gateway_errors(), tuple()}.
update_gateway(Client, GatewayId, Input0, Options0) ->
    Method = put,
    Path = ["/20200301/gateways/", aws_util:encode_uri(GatewayId), ""],
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

%% @doc Updates a gateway capability configuration or defines a new
%% capability configuration.
%%
%% Each gateway capability defines data sources for a gateway.
%%
%% Important workflow notes:
%%
%% Each gateway capability defines data sources for a gateway. This is the
%% namespace of the gateway capability.
%%
%% . The namespace follows the format `service:capability:version',
%% where:
%%
%% `service' - The service providing the capability, or
%% `iotsitewise'.
%%
%% `capability' - The specific capability type. Options include:
%% `opcuacollector' for the OPC UA data source collector, or
%% `publisher' for data publisher capability.
%%
%% `version' - The version number of the capability. Option include
%% `2' for Classic streams, V2 gateways, and `3' for MQTT-enabled, V3
%% gateways.
%%
%% After updating a capability configuration, the sync status becomes
%% `OUT_OF_SYNC' until the gateway processes the configuration.Use
%% `DescribeGatewayCapabilityConfiguration' to check the sync status and
%% verify the configuration was applied.
%%
%% A gateway can have multiple capability configurations with different
%% namespaces.
-spec update_gateway_capability_configuration(aws_client:aws_client(), binary() | list(), update_gateway_capability_configuration_request()) ->
    {ok, update_gateway_capability_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_gateway_capability_configuration_errors(), tuple()}.
update_gateway_capability_configuration(Client, GatewayId, Input) ->
    update_gateway_capability_configuration(Client, GatewayId, Input, []).

-spec update_gateway_capability_configuration(aws_client:aws_client(), binary() | list(), update_gateway_capability_configuration_request(), proplists:proplist()) ->
    {ok, update_gateway_capability_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_gateway_capability_configuration_errors(), tuple()}.
update_gateway_capability_configuration(Client, GatewayId, Input0, Options0) ->
    Method = post,
    Path = ["/20200301/gateways/", aws_util:encode_uri(GatewayId), "/capability"],
    SuccessStatusCode = 201,
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

%% @doc Updates an IoT SiteWise Monitor portal.
-spec update_portal(aws_client:aws_client(), binary() | list(), update_portal_request()) ->
    {ok, update_portal_response(), tuple()} |
    {error, any()} |
    {error, update_portal_errors(), tuple()}.
update_portal(Client, PortalId, Input) ->
    update_portal(Client, PortalId, Input, []).

-spec update_portal(aws_client:aws_client(), binary() | list(), update_portal_request(), proplists:proplist()) ->
    {ok, update_portal_response(), tuple()} |
    {error, any()} |
    {error, update_portal_errors(), tuple()}.
update_portal(Client, PortalId, Input0, Options0) ->
    Method = put,
    Path = ["/portals/", aws_util:encode_uri(PortalId), ""],
    SuccessStatusCode = 202,
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

%% @doc Updates an IoT SiteWise Monitor project.
-spec update_project(aws_client:aws_client(), binary() | list(), update_project_request()) ->
    {ok, update_project_response(), tuple()} |
    {error, any()} |
    {error, update_project_errors(), tuple()}.
update_project(Client, ProjectId, Input) ->
    update_project(Client, ProjectId, Input, []).

-spec update_project(aws_client:aws_client(), binary() | list(), update_project_request(), proplists:proplist()) ->
    {ok, update_project_response(), tuple()} |
    {error, any()} |
    {error, update_project_errors(), tuple()}.
update_project(Client, ProjectId, Input0, Options0) ->
    Method = put,
    Path = ["/projects/", aws_util:encode_uri(ProjectId), ""],
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
    Client1 = Client#{service => <<"iotsitewise">>},
    Host = build_host(<<"iotsitewise">>, Client1),
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
