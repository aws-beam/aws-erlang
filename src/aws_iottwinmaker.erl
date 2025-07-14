%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc IoT TwinMaker is a service with which you can
%% build operational digital twins of physical systems.
%%
%% IoT TwinMaker overlays measurements
%% and analysis from real-world sensors, cameras, and enterprise applications
%% so you can
%% create data visualizations to monitor your physical factory, building, or
%% industrial plant.
%% You can use this real-world data to monitor operations and diagnose and
%% repair
%% errors.
-module(aws_iottwinmaker).

-export([batch_put_property_values/3,
         batch_put_property_values/4,
         cancel_metadata_transfer_job/3,
         cancel_metadata_transfer_job/4,
         create_component_type/4,
         create_component_type/5,
         create_entity/3,
         create_entity/4,
         create_metadata_transfer_job/2,
         create_metadata_transfer_job/3,
         create_scene/3,
         create_scene/4,
         create_sync_job/4,
         create_sync_job/5,
         create_workspace/3,
         create_workspace/4,
         delete_component_type/4,
         delete_component_type/5,
         delete_entity/4,
         delete_entity/5,
         delete_scene/4,
         delete_scene/5,
         delete_sync_job/4,
         delete_sync_job/5,
         delete_workspace/3,
         delete_workspace/4,
         execute_query/2,
         execute_query/3,
         get_component_type/3,
         get_component_type/5,
         get_component_type/6,
         get_entity/3,
         get_entity/5,
         get_entity/6,
         get_metadata_transfer_job/2,
         get_metadata_transfer_job/4,
         get_metadata_transfer_job/5,
         get_pricing_plan/1,
         get_pricing_plan/3,
         get_pricing_plan/4,
         get_property_value/3,
         get_property_value/4,
         get_property_value_history/3,
         get_property_value_history/4,
         get_scene/3,
         get_scene/5,
         get_scene/6,
         get_sync_job/2,
         get_sync_job/4,
         get_sync_job/5,
         get_workspace/2,
         get_workspace/4,
         get_workspace/5,
         list_component_types/3,
         list_component_types/4,
         list_components/4,
         list_components/5,
         list_entities/3,
         list_entities/4,
         list_metadata_transfer_jobs/2,
         list_metadata_transfer_jobs/3,
         list_properties/3,
         list_properties/4,
         list_scenes/3,
         list_scenes/4,
         list_sync_jobs/3,
         list_sync_jobs/4,
         list_sync_resources/4,
         list_sync_resources/5,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_workspaces/2,
         list_workspaces/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_component_type/4,
         update_component_type/5,
         update_entity/4,
         update_entity/5,
         update_pricing_plan/2,
         update_pricing_plan/3,
         update_scene/4,
         update_scene/5,
         update_workspace/3,
         update_workspace/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% execute_query_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"queryStatement">> := string(),
%%   <<"workspaceId">> := string()
%% }
-type execute_query_request() :: #{binary() => any()}.


%% Example:
%% get_sync_job_request() :: #{
%%   <<"workspaceId">> => string()
%% }
-type get_sync_job_request() :: #{binary() => any()}.


%% Example:
%% create_scene_response() :: #{
%%   <<"arn">> := string(),
%%   <<"creationDateTime">> := non_neg_integer()
%% }
-type create_scene_response() :: #{binary() => any()}.


%% Example:
%% get_sync_job_response() :: #{
%%   <<"arn">> := string(),
%%   <<"creationDateTime">> := non_neg_integer(),
%%   <<"status">> := sync_job_status(),
%%   <<"syncRole">> := string(),
%%   <<"syncSource">> := string(),
%%   <<"updateDateTime">> := non_neg_integer(),
%%   <<"workspaceId">> := string()
%% }
-type get_sync_job_response() :: #{binary() => any()}.


%% Example:
%% component_update_request() :: #{
%%   <<"componentTypeId">> => string(),
%%   <<"description">> => string(),
%%   <<"propertyGroupUpdates">> => map(),
%%   <<"propertyUpdates">> => map(),
%%   <<"updateType">> => string()
%% }
-type component_update_request() :: #{binary() => any()}.


%% Example:
%% cancel_metadata_transfer_job_response() :: #{
%%   <<"arn">> => string(),
%%   <<"metadataTransferJobId">> => string(),
%%   <<"progress">> => metadata_transfer_job_progress(),
%%   <<"status">> => metadata_transfer_job_status(),
%%   <<"updateDateTime">> => non_neg_integer()
%% }
-type cancel_metadata_transfer_job_response() :: #{binary() => any()}.


%% Example:
%% list_entities_request() :: #{
%%   <<"filters">> => list(list()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_entities_request() :: #{binary() => any()}.


%% Example:
%% s3_source_configuration() :: #{
%%   <<"location">> => string()
%% }
-type s3_source_configuration() :: #{binary() => any()}.

%% Example:
%% cancel_metadata_transfer_job_request() :: #{}
-type cancel_metadata_transfer_job_request() :: #{}.


%% Example:
%% delete_entity_response() :: #{
%%   <<"state">> := string()
%% }
-type delete_entity_response() :: #{binary() => any()}.


%% Example:
%% tabular_conditions() :: #{
%%   <<"orderBy">> => list(order_by()),
%%   <<"propertyFilters">> => list(property_filter())
%% }
-type tabular_conditions() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceARN">> := string(),
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_scenes_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_scenes_request() :: #{binary() => any()}.


%% Example:
%% connector_failure_exception() :: #{
%%   <<"message">> => string()
%% }
-type connector_failure_exception() :: #{binary() => any()}.


%% Example:
%% list_properties_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"propertySummaries">> => list(property_summary())
%% }
-type list_properties_response() :: #{binary() => any()}.


%% Example:
%% iot_twin_maker_source_configuration() :: #{
%%   <<"filters">> => list(list()),
%%   <<"workspace">> => string()
%% }
-type iot_twin_maker_source_configuration() :: #{binary() => any()}.


%% Example:
%% property_request() :: #{
%%   <<"definition">> => property_definition_request(),
%%   <<"updateType">> => string(),
%%   <<"value">> => data_value()
%% }
-type property_request() :: #{binary() => any()}.


%% Example:
%% get_property_value_request() :: #{
%%   <<"componentName">> => string(),
%%   <<"componentPath">> => string(),
%%   <<"componentTypeId">> => string(),
%%   <<"entityId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"propertyGroupName">> => string(),
%%   <<"selectedProperties">> := list(string()),
%%   <<"tabularConditions">> => tabular_conditions()
%% }
-type get_property_value_request() :: #{binary() => any()}.


%% Example:
%% create_component_type_request() :: #{
%%   <<"componentTypeName">> => string(),
%%   <<"compositeComponentTypes">> => map(),
%%   <<"description">> => string(),
%%   <<"extendsFrom">> => list(string()),
%%   <<"functions">> => map(),
%%   <<"isSingleton">> => boolean(),
%%   <<"propertyDefinitions">> => map(),
%%   <<"propertyGroups">> => map(),
%%   <<"tags">> => map()
%% }
-type create_component_type_request() :: #{binary() => any()}.


%% Example:
%% composite_component_type_response() :: #{
%%   <<"componentTypeId">> => string(),
%%   <<"isInherited">> => boolean()
%% }
-type composite_component_type_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% column_description() :: #{
%%   <<"name">> => string(),
%%   <<"type">> => string()
%% }
-type column_description() :: #{binary() => any()}.

%% Example:
%% get_pricing_plan_request() :: #{}
-type get_pricing_plan_request() :: #{}.

%% Example:
%% get_entity_request() :: #{}
-type get_entity_request() :: #{}.


%% Example:
%% pricing_plan() :: #{
%%   <<"billableEntityCount">> => float(),
%%   <<"bundleInformation">> => bundle_information(),
%%   <<"effectiveDateTime">> => non_neg_integer(),
%%   <<"pricingMode">> => string(),
%%   <<"updateDateTime">> => non_neg_integer(),
%%   <<"updateReason">> => string()
%% }
-type pricing_plan() :: #{binary() => any()}.


%% Example:
%% relationship() :: #{
%%   <<"relationshipType">> => string(),
%%   <<"targetComponentTypeId">> => string()
%% }
-type relationship() :: #{binary() => any()}.


%% Example:
%% lambda_function() :: #{
%%   <<"arn">> => string()
%% }
-type lambda_function() :: #{binary() => any()}.


%% Example:
%% entity_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"entityId">> => string(),
%%   <<"entityName">> => string(),
%%   <<"hasChildEntities">> => boolean(),
%%   <<"parentEntityId">> => string(),
%%   <<"status">> => status(),
%%   <<"updateDateTime">> => non_neg_integer()
%% }
-type entity_summary() :: #{binary() => any()}.


%% Example:
%% workspace_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"linkedServices">> => list(string()),
%%   <<"updateDateTime">> => non_neg_integer(),
%%   <<"workspaceId">> => string()
%% }
-type workspace_summary() :: #{binary() => any()}.


%% Example:
%% component_property_group_response() :: #{
%%   <<"groupType">> => string(),
%%   <<"isInherited">> => boolean(),
%%   <<"propertyNames">> => list(string())
%% }
-type component_property_group_response() :: #{binary() => any()}.


%% Example:
%% composite_component_update_request() :: #{
%%   <<"description">> => string(),
%%   <<"propertyGroupUpdates">> => map(),
%%   <<"propertyUpdates">> => map(),
%%   <<"updateType">> => string()
%% }
-type composite_component_update_request() :: #{binary() => any()}.


%% Example:
%% sync_job_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"status">> => sync_job_status(),
%%   <<"syncSource">> => string(),
%%   <<"updateDateTime">> => non_neg_integer(),
%%   <<"workspaceId">> => string()
%% }
-type sync_job_summary() :: #{binary() => any()}.


%% Example:
%% iot_twin_maker_destination_configuration() :: #{
%%   <<"workspace">> => string()
%% }
-type iot_twin_maker_destination_configuration() :: #{binary() => any()}.


%% Example:
%% update_entity_request() :: #{
%%   <<"componentUpdates">> => map(),
%%   <<"compositeComponentUpdates">> => map(),
%%   <<"description">> => string(),
%%   <<"entityName">> => string(),
%%   <<"parentEntityUpdate">> => parent_entity_update_request()
%% }
-type update_entity_request() :: #{binary() => any()}.


%% Example:
%% composite_component_request() :: #{
%%   <<"description">> => string(),
%%   <<"properties">> => map(),
%%   <<"propertyGroups">> => map()
%% }
-type composite_component_request() :: #{binary() => any()}.


%% Example:
%% update_scene_response() :: #{
%%   <<"updateDateTime">> := non_neg_integer()
%% }
-type update_scene_response() :: #{binary() => any()}.


%% Example:
%% scene_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"contentLocation">> => string(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"sceneId">> => string(),
%%   <<"updateDateTime">> => non_neg_integer()
%% }
-type scene_summary() :: #{binary() => any()}.


%% Example:
%% data_type() :: #{
%%   <<"allowedValues">> => list(data_value()),
%%   <<"nestedType">> => data_type(),
%%   <<"relationship">> => relationship(),
%%   <<"type">> => string(),
%%   <<"unitOfMeasure">> => string()
%% }
-type data_type() :: #{binary() => any()}.


%% Example:
%% create_component_type_response() :: #{
%%   <<"arn">> := string(),
%%   <<"creationDateTime">> := non_neg_integer(),
%%   <<"state">> := string()
%% }
-type create_component_type_response() :: #{binary() => any()}.


%% Example:
%% list_properties_request() :: #{
%%   <<"componentName">> => string(),
%%   <<"componentPath">> => string(),
%%   <<"entityId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_properties_request() :: #{binary() => any()}.


%% Example:
%% order_by() :: #{
%%   <<"order">> => string(),
%%   <<"propertyName">> => string()
%% }
-type order_by() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceARN">> := string(),
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% component_summary() :: #{
%%   <<"componentName">> => string(),
%%   <<"componentPath">> => string(),
%%   <<"componentTypeId">> => string(),
%%   <<"definedIn">> => string(),
%%   <<"description">> => string(),
%%   <<"propertyGroups">> => map(),
%%   <<"status">> => status(),
%%   <<"syncSource">> => string()
%% }
-type component_summary() :: #{binary() => any()}.


%% Example:
%% property_latest_value() :: #{
%%   <<"propertyReference">> => entity_property_reference(),
%%   <<"propertyValue">> => data_value()
%% }
-type property_latest_value() :: #{binary() => any()}.


%% Example:
%% delete_workspace_response() :: #{
%%   <<"message">> => string()
%% }
-type delete_workspace_response() :: #{binary() => any()}.


%% Example:
%% delete_sync_job_response() :: #{
%%   <<"state">> := string()
%% }
-type delete_sync_job_response() :: #{binary() => any()}.


%% Example:
%% property_value() :: #{
%%   <<"time">> => string(),
%%   <<"timestamp">> => non_neg_integer(),
%%   <<"value">> => data_value()
%% }
-type property_value() :: #{binary() => any()}.


%% Example:
%% update_component_type_request() :: #{
%%   <<"componentTypeName">> => string(),
%%   <<"compositeComponentTypes">> => map(),
%%   <<"description">> => string(),
%%   <<"extendsFrom">> => list(string()),
%%   <<"functions">> => map(),
%%   <<"isSingleton">> => boolean(),
%%   <<"propertyDefinitions">> => map(),
%%   <<"propertyGroups">> => map()
%% }
-type update_component_type_request() :: #{binary() => any()}.


%% Example:
%% property_group_request() :: #{
%%   <<"groupType">> => string(),
%%   <<"propertyNames">> => list(string())
%% }
-type property_group_request() :: #{binary() => any()}.


%% Example:
%% entity_property_reference() :: #{
%%   <<"componentName">> => string(),
%%   <<"componentPath">> => string(),
%%   <<"entityId">> => string(),
%%   <<"externalIdProperty">> => map(),
%%   <<"propertyName">> => string()
%% }
-type entity_property_reference() :: #{binary() => any()}.


%% Example:
%% batch_put_property_error() :: #{
%%   <<"entry">> => property_value_entry(),
%%   <<"errorCode">> => string(),
%%   <<"errorMessage">> => string()
%% }
-type batch_put_property_error() :: #{binary() => any()}.

%% Example:
%% get_metadata_transfer_job_request() :: #{}
-type get_metadata_transfer_job_request() :: #{}.


%% Example:
%% property_value_entry() :: #{
%%   <<"entityPropertyReference">> => entity_property_reference(),
%%   <<"propertyValues">> => list(property_value())
%% }
-type property_value_entry() :: #{binary() => any()}.


%% Example:
%% component_property_group_request() :: #{
%%   <<"groupType">> => string(),
%%   <<"propertyNames">> => list(string()),
%%   <<"updateType">> => string()
%% }
-type component_property_group_request() :: #{binary() => any()}.


%% Example:
%% get_metadata_transfer_job_response() :: #{
%%   <<"arn">> => string(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"destination">> => destination_configuration(),
%%   <<"metadataTransferJobId">> => string(),
%%   <<"metadataTransferJobRole">> => string(),
%%   <<"progress">> => metadata_transfer_job_progress(),
%%   <<"reportUrl">> => string(),
%%   <<"sources">> => list(source_configuration()),
%%   <<"status">> => metadata_transfer_job_status(),
%%   <<"updateDateTime">> => non_neg_integer()
%% }
-type get_metadata_transfer_job_response() :: #{binary() => any()}.


%% Example:
%% get_property_value_history_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"propertyValues">> := list(property_value_history())
%% }
-type get_property_value_history_response() :: #{binary() => any()}.


%% Example:
%% batch_put_property_values_request() :: #{
%%   <<"entries">> := list(property_value_entry())
%% }
-type batch_put_property_values_request() :: #{binary() => any()}.


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
%% get_component_type_response() :: #{
%%   <<"arn">> := string(),
%%   <<"componentTypeId">> := string(),
%%   <<"componentTypeName">> => string(),
%%   <<"compositeComponentTypes">> => map(),
%%   <<"creationDateTime">> := non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"extendsFrom">> => list(string()),
%%   <<"functions">> => map(),
%%   <<"isAbstract">> => boolean(),
%%   <<"isSchemaInitialized">> => boolean(),
%%   <<"isSingleton">> => boolean(),
%%   <<"propertyDefinitions">> => map(),
%%   <<"propertyGroups">> => map(),
%%   <<"status">> => status(),
%%   <<"syncSource">> => string(),
%%   <<"updateDateTime">> := non_neg_integer(),
%%   <<"workspaceId">> := string()
%% }
-type get_component_type_response() :: #{binary() => any()}.


%% Example:
%% sync_resource_status() :: #{
%%   <<"error">> => error_details(),
%%   <<"state">> => string()
%% }
-type sync_resource_status() :: #{binary() => any()}.


%% Example:
%% list_components_request() :: #{
%%   <<"componentPath">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_components_request() :: #{binary() => any()}.


%% Example:
%% list_sync_jobs_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"syncJobSummaries">> => list(sync_job_summary())
%% }
-type list_sync_jobs_response() :: #{binary() => any()}.


%% Example:
%% delete_entity_request() :: #{
%%   <<"isRecursive">> => boolean()
%% }
-type delete_entity_request() :: #{binary() => any()}.

%% Example:
%% get_workspace_request() :: #{}
-type get_workspace_request() :: #{}.


%% Example:
%% batch_put_property_values_response() :: #{
%%   <<"errorEntries">> := list(batch_put_property_error_entry())
%% }
-type batch_put_property_values_response() :: #{binary() => any()}.


%% Example:
%% create_sync_job_request() :: #{
%%   <<"syncRole">> := string(),
%%   <<"tags">> => map()
%% }
-type create_sync_job_request() :: #{binary() => any()}.


%% Example:
%% row() :: #{
%%   <<"rowData">> => list(any())
%% }
-type row() :: #{binary() => any()}.


%% Example:
%% property_definition_request() :: #{
%%   <<"configuration">> => map(),
%%   <<"dataType">> => data_type(),
%%   <<"defaultValue">> => data_value(),
%%   <<"displayName">> => string(),
%%   <<"isExternalId">> => boolean(),
%%   <<"isRequiredInEntity">> => boolean(),
%%   <<"isStoredExternally">> => boolean(),
%%   <<"isTimeSeries">> => boolean()
%% }
-type property_definition_request() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% composite_component_type_request() :: #{
%%   <<"componentTypeId">> => string()
%% }
-type composite_component_type_request() :: #{binary() => any()}.


%% Example:
%% sync_job_status() :: #{
%%   <<"error">> => error_details(),
%%   <<"state">> => string()
%% }
-type sync_job_status() :: #{binary() => any()}.


%% Example:
%% s3_destination_configuration() :: #{
%%   <<"location">> => string()
%% }
-type s3_destination_configuration() :: #{binary() => any()}.


%% Example:
%% scene_error() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string()
%% }
-type scene_error() :: #{binary() => any()}.

%% Example:
%% get_scene_request() :: #{}
-type get_scene_request() :: #{}.


%% Example:
%% get_scene_response() :: #{
%%   <<"arn">> := string(),
%%   <<"capabilities">> => list(string()),
%%   <<"contentLocation">> := string(),
%%   <<"creationDateTime">> := non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"error">> => scene_error(),
%%   <<"generatedSceneMetadata">> => map(),
%%   <<"sceneId">> := string(),
%%   <<"sceneMetadata">> => map(),
%%   <<"updateDateTime">> := non_neg_integer(),
%%   <<"workspaceId">> := string()
%% }
-type get_scene_response() :: #{binary() => any()}.


%% Example:
%% component_request() :: #{
%%   <<"componentTypeId">> => string(),
%%   <<"description">> => string(),
%%   <<"properties">> => map(),
%%   <<"propertyGroups">> => map()
%% }
-type component_request() :: #{binary() => any()}.


%% Example:
%% create_sync_job_response() :: #{
%%   <<"arn">> := string(),
%%   <<"creationDateTime">> := non_neg_integer(),
%%   <<"state">> := string()
%% }
-type create_sync_job_response() :: #{binary() => any()}.


%% Example:
%% error_details() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string()
%% }
-type error_details() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% update_pricing_plan_response() :: #{
%%   <<"currentPricingPlan">> := pricing_plan(),
%%   <<"pendingPricingPlan">> => pricing_plan()
%% }
-type update_pricing_plan_response() :: #{binary() => any()}.


%% Example:
%% source_configuration() :: #{
%%   <<"iotSiteWiseConfiguration">> => iot_site_wise_source_configuration(),
%%   <<"iotTwinMakerConfiguration">> => iot_twin_maker_source_configuration(),
%%   <<"s3Configuration">> => s3_source_configuration(),
%%   <<"type">> => string()
%% }
-type source_configuration() :: #{binary() => any()}.


%% Example:
%% batch_put_property_error_entry() :: #{
%%   <<"errors">> => list(batch_put_property_error())
%% }
-type batch_put_property_error_entry() :: #{binary() => any()}.


%% Example:
%% update_workspace_response() :: #{
%%   <<"updateDateTime">> := non_neg_integer()
%% }
-type update_workspace_response() :: #{binary() => any()}.


%% Example:
%% metadata_transfer_job_status() :: #{
%%   <<"error">> => error_details(),
%%   <<"queuedPosition">> => integer(),
%%   <<"state">> => string()
%% }
-type metadata_transfer_job_status() :: #{binary() => any()}.


%% Example:
%% parent_entity_update_request() :: #{
%%   <<"parentEntityId">> => string(),
%%   <<"updateType">> => string()
%% }
-type parent_entity_update_request() :: #{binary() => any()}.


%% Example:
%% update_entity_response() :: #{
%%   <<"state">> := string(),
%%   <<"updateDateTime">> := non_neg_integer()
%% }
-type update_entity_response() :: #{binary() => any()}.

%% Example:
%% delete_workspace_request() :: #{}
-type delete_workspace_request() :: #{}.


%% Example:
%% component_response() :: #{
%%   <<"areAllCompositeComponentsReturned">> => boolean(),
%%   <<"areAllPropertiesReturned">> => boolean(),
%%   <<"componentName">> => string(),
%%   <<"componentTypeId">> => string(),
%%   <<"compositeComponents">> => map(),
%%   <<"definedIn">> => string(),
%%   <<"description">> => string(),
%%   <<"properties">> => map(),
%%   <<"propertyGroups">> => map(),
%%   <<"status">> => status(),
%%   <<"syncSource">> => string()
%% }
-type component_response() :: #{binary() => any()}.


%% Example:
%% component_type_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"componentTypeId">> => string(),
%%   <<"componentTypeName">> => string(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"status">> => status(),
%%   <<"updateDateTime">> => non_neg_integer()
%% }
-type component_type_summary() :: #{binary() => any()}.


%% Example:
%% function_request() :: #{
%%   <<"implementedBy">> => data_connector(),
%%   <<"requiredProperties">> => list(string()),
%%   <<"scope">> => string()
%% }
-type function_request() :: #{binary() => any()}.


%% Example:
%% update_workspace_request() :: #{
%%   <<"description">> => string(),
%%   <<"role">> => string(),
%%   <<"s3Location">> => string()
%% }
-type update_workspace_request() :: #{binary() => any()}.


%% Example:
%% property_group_response() :: #{
%%   <<"groupType">> => string(),
%%   <<"isInherited">> => boolean(),
%%   <<"propertyNames">> => list(string())
%% }
-type property_group_response() :: #{binary() => any()}.


%% Example:
%% filter_by_asset() :: #{
%%   <<"assetExternalId">> => string(),
%%   <<"assetId">> => string(),
%%   <<"includeAssetModel">> => boolean(),
%%   <<"includeOffspring">> => boolean()
%% }
-type filter_by_asset() :: #{binary() => any()}.


%% Example:
%% metadata_transfer_job_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"metadataTransferJobId">> => string(),
%%   <<"progress">> => metadata_transfer_job_progress(),
%%   <<"status">> => metadata_transfer_job_status(),
%%   <<"updateDateTime">> => non_neg_integer()
%% }
-type metadata_transfer_job_summary() :: #{binary() => any()}.


%% Example:
%% data_connector() :: #{
%%   <<"isNative">> => boolean(),
%%   <<"lambda">> => lambda_function()
%% }
-type data_connector() :: #{binary() => any()}.


%% Example:
%% property_summary() :: #{
%%   <<"areAllPropertyValuesReturned">> => boolean(),
%%   <<"definition">> => property_definition_response(),
%%   <<"propertyName">> => string(),
%%   <<"value">> => data_value()
%% }
-type property_summary() :: #{binary() => any()}.


%% Example:
%% list_component_types_response() :: #{
%%   <<"componentTypeSummaries">> := list(component_type_summary()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"workspaceId">> := string()
%% }
-type list_component_types_response() :: #{binary() => any()}.


%% Example:
%% sync_resource_summary() :: #{
%%   <<"externalId">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string(),
%%   <<"status">> => sync_resource_status(),
%%   <<"updateDateTime">> => non_neg_integer()
%% }
-type sync_resource_summary() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% create_workspace_response() :: #{
%%   <<"arn">> := string(),
%%   <<"creationDateTime">> := non_neg_integer()
%% }
-type create_workspace_response() :: #{binary() => any()}.


%% Example:
%% list_sync_resources_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"syncResources">> => list(sync_resource_summary())
%% }
-type list_sync_resources_response() :: #{binary() => any()}.


%% Example:
%% list_workspaces_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"workspaceSummaries">> => list(workspace_summary())
%% }
-type list_workspaces_response() :: #{binary() => any()}.

%% Example:
%% delete_sync_job_request() :: #{}
-type delete_sync_job_request() :: #{}.


%% Example:
%% relationship_value() :: #{
%%   <<"targetComponentName">> => string(),
%%   <<"targetEntityId">> => string()
%% }
-type relationship_value() :: #{binary() => any()}.


%% Example:
%% list_metadata_transfer_jobs_request() :: #{
%%   <<"destinationType">> := string(),
%%   <<"filters">> => list(list()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sourceType">> := string()
%% }
-type list_metadata_transfer_jobs_request() :: #{binary() => any()}.

%% Example:
%% delete_scene_response() :: #{}
-type delete_scene_response() :: #{}.


%% Example:
%% get_pricing_plan_response() :: #{
%%   <<"currentPricingPlan">> := pricing_plan(),
%%   <<"pendingPricingPlan">> => pricing_plan()
%% }
-type get_pricing_plan_response() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% create_entity_request() :: #{
%%   <<"components">> => map(),
%%   <<"compositeComponents">> => map(),
%%   <<"description">> => string(),
%%   <<"entityId">> => string(),
%%   <<"entityName">> := string(),
%%   <<"parentEntityId">> => string(),
%%   <<"tags">> => map()
%% }
-type create_entity_request() :: #{binary() => any()}.


%% Example:
%% property_filter() :: #{
%%   <<"operator">> => string(),
%%   <<"propertyName">> => string(),
%%   <<"value">> => data_value()
%% }
-type property_filter() :: #{binary() => any()}.


%% Example:
%% list_sync_resources_request() :: #{
%%   <<"filters">> => list(list()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_sync_resources_request() :: #{binary() => any()}.


%% Example:
%% metadata_transfer_job_progress() :: #{
%%   <<"failedCount">> => integer(),
%%   <<"skippedCount">> => integer(),
%%   <<"succeededCount">> => integer(),
%%   <<"totalCount">> => integer()
%% }
-type metadata_transfer_job_progress() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.

%% Example:
%% delete_component_type_request() :: #{}
-type delete_component_type_request() :: #{}.


%% Example:
%% property_response() :: #{
%%   <<"areAllPropertyValuesReturned">> => boolean(),
%%   <<"definition">> => property_definition_response(),
%%   <<"value">> => data_value()
%% }
-type property_response() :: #{binary() => any()}.


%% Example:
%% filter_by_component_type() :: #{
%%   <<"componentTypeId">> => string()
%% }
-type filter_by_component_type() :: #{binary() => any()}.


%% Example:
%% get_entity_response() :: #{
%%   <<"areAllComponentsReturned">> => boolean(),
%%   <<"arn">> := string(),
%%   <<"components">> => map(),
%%   <<"creationDateTime">> := non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"entityId">> := string(),
%%   <<"entityName">> := string(),
%%   <<"hasChildEntities">> := boolean(),
%%   <<"parentEntityId">> := string(),
%%   <<"status">> := status(),
%%   <<"syncSource">> => string(),
%%   <<"updateDateTime">> := non_neg_integer(),
%%   <<"workspaceId">> := string()
%% }
-type get_entity_response() :: #{binary() => any()}.


%% Example:
%% filter_by_asset_model() :: #{
%%   <<"assetModelExternalId">> => string(),
%%   <<"assetModelId">> => string(),
%%   <<"includeAssets">> => boolean(),
%%   <<"includeOffspring">> => boolean()
%% }
-type filter_by_asset_model() :: #{binary() => any()}.


%% Example:
%% list_sync_jobs_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_sync_jobs_request() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.


%% Example:
%% list_workspaces_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_workspaces_request() :: #{binary() => any()}.


%% Example:
%% update_pricing_plan_request() :: #{
%%   <<"bundleNames">> => list(string()),
%%   <<"pricingMode">> := string()
%% }
-type update_pricing_plan_request() :: #{binary() => any()}.


%% Example:
%% update_component_type_response() :: #{
%%   <<"arn">> := string(),
%%   <<"componentTypeId">> := string(),
%%   <<"state">> := string(),
%%   <<"workspaceId">> := string()
%% }
-type update_component_type_response() :: #{binary() => any()}.


%% Example:
%% execute_query_response() :: #{
%%   <<"columnDescriptions">> => list(column_description()),
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
%% delete_component_type_response() :: #{
%%   <<"state">> := string()
%% }
-type delete_component_type_response() :: #{binary() => any()}.


%% Example:
%% get_property_value_history_request() :: #{
%%   <<"componentName">> => string(),
%%   <<"componentPath">> => string(),
%%   <<"componentTypeId">> => string(),
%%   <<"endDateTime">> => non_neg_integer(),
%%   <<"endTime">> => string(),
%%   <<"entityId">> => string(),
%%   <<"interpolation">> => interpolation_parameters(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"orderByTime">> => string(),
%%   <<"propertyFilters">> => list(property_filter()),
%%   <<"selectedProperties">> := list(string()),
%%   <<"startDateTime">> => non_neg_integer(),
%%   <<"startTime">> => string()
%% }
-type get_property_value_history_request() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% list_components_response() :: #{
%%   <<"componentSummaries">> => list(component_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_components_response() :: #{binary() => any()}.


%% Example:
%% create_entity_response() :: #{
%%   <<"arn">> := string(),
%%   <<"creationDateTime">> := non_neg_integer(),
%%   <<"entityId">> := string(),
%%   <<"state">> := string()
%% }
-type create_entity_response() :: #{binary() => any()}.


%% Example:
%% create_metadata_transfer_job_request() :: #{
%%   <<"description">> => string(),
%%   <<"destination">> := destination_configuration(),
%%   <<"metadataTransferJobId">> => string(),
%%   <<"sources">> := list(source_configuration())
%% }
-type create_metadata_transfer_job_request() :: #{binary() => any()}.


%% Example:
%% bundle_information() :: #{
%%   <<"bundleNames">> => list(string()),
%%   <<"pricingTier">> => string()
%% }
-type bundle_information() :: #{binary() => any()}.


%% Example:
%% connector_timeout_exception() :: #{
%%   <<"message">> => string()
%% }
-type connector_timeout_exception() :: #{binary() => any()}.


%% Example:
%% create_scene_request() :: #{
%%   <<"capabilities">> => list(string()),
%%   <<"contentLocation">> := string(),
%%   <<"description">> => string(),
%%   <<"sceneId">> := string(),
%%   <<"sceneMetadata">> => map(),
%%   <<"tags">> => map()
%% }
-type create_scene_request() :: #{binary() => any()}.


%% Example:
%% list_metadata_transfer_jobs_response() :: #{
%%   <<"metadataTransferJobSummaries">> => list(metadata_transfer_job_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_metadata_transfer_jobs_response() :: #{binary() => any()}.


%% Example:
%% property_definition_response() :: #{
%%   <<"configuration">> => map(),
%%   <<"dataType">> => data_type(),
%%   <<"defaultValue">> => data_value(),
%%   <<"displayName">> => string(),
%%   <<"isExternalId">> => boolean(),
%%   <<"isFinal">> => boolean(),
%%   <<"isImported">> => boolean(),
%%   <<"isInherited">> => boolean(),
%%   <<"isRequiredInEntity">> => boolean(),
%%   <<"isStoredExternally">> => boolean(),
%%   <<"isTimeSeries">> => boolean()
%% }
-type property_definition_response() :: #{binary() => any()}.


%% Example:
%% property_value_history() :: #{
%%   <<"entityPropertyReference">> => entity_property_reference(),
%%   <<"values">> => list(property_value())
%% }
-type property_value_history() :: #{binary() => any()}.

%% Example:
%% delete_scene_request() :: #{}
-type delete_scene_request() :: #{}.


%% Example:
%% status() :: #{
%%   <<"error">> => error_details(),
%%   <<"state">> => string()
%% }
-type status() :: #{binary() => any()}.


%% Example:
%% function_response() :: #{
%%   <<"implementedBy">> => data_connector(),
%%   <<"isInherited">> => boolean(),
%%   <<"requiredProperties">> => list(string()),
%%   <<"scope">> => string()
%% }
-type function_response() :: #{binary() => any()}.


%% Example:
%% list_entities_response() :: #{
%%   <<"entitySummaries">> => list(entity_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_entities_response() :: #{binary() => any()}.


%% Example:
%% filter_by_entity() :: #{
%%   <<"entityId">> => string()
%% }
-type filter_by_entity() :: #{binary() => any()}.


%% Example:
%% iot_site_wise_source_configuration() :: #{
%%   <<"filters">> => list(list())
%% }
-type iot_site_wise_source_configuration() :: #{binary() => any()}.

%% Example:
%% get_component_type_request() :: #{}
-type get_component_type_request() :: #{}.


%% Example:
%% interpolation_parameters() :: #{
%%   <<"interpolationType">> => string(),
%%   <<"intervalInSeconds">> => float()
%% }
-type interpolation_parameters() :: #{binary() => any()}.


%% Example:
%% list_component_types_request() :: #{
%%   <<"filters">> => list(list()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_component_types_request() :: #{binary() => any()}.


%% Example:
%% data_value() :: #{
%%   <<"booleanValue">> => boolean(),
%%   <<"doubleValue">> => float(),
%%   <<"expression">> => string(),
%%   <<"integerValue">> => integer(),
%%   <<"listValue">> => list(data_value()),
%%   <<"longValue">> => float(),
%%   <<"mapValue">> => map(),
%%   <<"relationshipValue">> => relationship_value(),
%%   <<"stringValue">> => string()
%% }
-type data_value() :: #{binary() => any()}.


%% Example:
%% create_metadata_transfer_job_response() :: #{
%%   <<"arn">> => string(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"metadataTransferJobId">> => string(),
%%   <<"status">> => metadata_transfer_job_status()
%% }
-type create_metadata_transfer_job_response() :: #{binary() => any()}.


%% Example:
%% too_many_tags_exception() :: #{
%%   <<"message">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.


%% Example:
%% get_workspace_response() :: #{
%%   <<"arn">> := string(),
%%   <<"creationDateTime">> := non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"linkedServices">> => list(string()),
%%   <<"role">> => string(),
%%   <<"s3Location">> => string(),
%%   <<"updateDateTime">> := non_neg_integer(),
%%   <<"workspaceId">> := string()
%% }
-type get_workspace_response() :: #{binary() => any()}.


%% Example:
%% list_scenes_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"sceneSummaries">> => list(scene_summary())
%% }
-type list_scenes_response() :: #{binary() => any()}.


%% Example:
%% destination_configuration() :: #{
%%   <<"iotTwinMakerConfiguration">> => iot_twin_maker_destination_configuration(),
%%   <<"s3Configuration">> => s3_destination_configuration(),
%%   <<"type">> => string()
%% }
-type destination_configuration() :: #{binary() => any()}.


%% Example:
%% create_workspace_request() :: #{
%%   <<"description">> => string(),
%%   <<"role">> => string(),
%%   <<"s3Location">> => string(),
%%   <<"tags">> => map()
%% }
-type create_workspace_request() :: #{binary() => any()}.


%% Example:
%% get_property_value_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"propertyValues">> => map(),
%%   <<"tabularPropertyValues">> => list(list(map())())
%% }
-type get_property_value_response() :: #{binary() => any()}.


%% Example:
%% update_scene_request() :: #{
%%   <<"capabilities">> => list(string()),
%%   <<"contentLocation">> => string(),
%%   <<"description">> => string(),
%%   <<"sceneMetadata">> => map()
%% }
-type update_scene_request() :: #{binary() => any()}.

-type batch_put_property_values_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type cancel_metadata_transfer_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_component_type_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_entity_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_metadata_transfer_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_scene_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_sync_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_workspace_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_component_type_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_entity_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type delete_scene_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_sync_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type delete_workspace_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type execute_query_errors() ::
    throttling_exception() | 
    query_timeout_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type get_component_type_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_entity_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type get_metadata_transfer_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_pricing_plan_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_property_value_errors() ::
    connector_timeout_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    connector_failure_exception().

-type get_property_value_history_errors() ::
    connector_timeout_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    connector_failure_exception().

-type get_scene_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_sync_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type get_workspace_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type list_component_types_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_components_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_entities_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type list_metadata_transfer_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_properties_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_scenes_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_sync_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type list_sync_resources_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type list_tags_for_resource_errors() ::
    access_denied_exception() | 
    resource_not_found_exception().

-type list_workspaces_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type tag_resource_errors() ::
    too_many_tags_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    access_denied_exception() | 
    resource_not_found_exception().

-type update_component_type_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type update_entity_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_pricing_plan_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type update_scene_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_workspace_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Sets values for multiple time series properties.
-spec batch_put_property_values(aws_client:aws_client(), binary() | list(), batch_put_property_values_request()) ->
    {ok, batch_put_property_values_response(), tuple()} |
    {error, any()} |
    {error, batch_put_property_values_errors(), tuple()}.
batch_put_property_values(Client, WorkspaceId, Input) ->
    batch_put_property_values(Client, WorkspaceId, Input, []).

-spec batch_put_property_values(aws_client:aws_client(), binary() | list(), batch_put_property_values_request(), proplists:proplist()) ->
    {ok, batch_put_property_values_response(), tuple()} |
    {error, any()} |
    {error, batch_put_property_values_errors(), tuple()}.
batch_put_property_values(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/entity-properties"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Cancels the metadata transfer job.
-spec cancel_metadata_transfer_job(aws_client:aws_client(), binary() | list(), cancel_metadata_transfer_job_request()) ->
    {ok, cancel_metadata_transfer_job_response(), tuple()} |
    {error, any()} |
    {error, cancel_metadata_transfer_job_errors(), tuple()}.
cancel_metadata_transfer_job(Client, MetadataTransferJobId, Input) ->
    cancel_metadata_transfer_job(Client, MetadataTransferJobId, Input, []).

-spec cancel_metadata_transfer_job(aws_client:aws_client(), binary() | list(), cancel_metadata_transfer_job_request(), proplists:proplist()) ->
    {ok, cancel_metadata_transfer_job_response(), tuple()} |
    {error, any()} |
    {error, cancel_metadata_transfer_job_errors(), tuple()}.
cancel_metadata_transfer_job(Client, MetadataTransferJobId, Input0, Options0) ->
    Method = put,
    Path = ["/metadata-transfer-jobs/", aws_util:encode_uri(MetadataTransferJobId), "/cancel"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a component type.
-spec create_component_type(aws_client:aws_client(), binary() | list(), binary() | list(), create_component_type_request()) ->
    {ok, create_component_type_response(), tuple()} |
    {error, any()} |
    {error, create_component_type_errors(), tuple()}.
create_component_type(Client, ComponentTypeId, WorkspaceId, Input) ->
    create_component_type(Client, ComponentTypeId, WorkspaceId, Input, []).

-spec create_component_type(aws_client:aws_client(), binary() | list(), binary() | list(), create_component_type_request(), proplists:proplist()) ->
    {ok, create_component_type_response(), tuple()} |
    {error, any()} |
    {error, create_component_type_errors(), tuple()}.
create_component_type(Client, ComponentTypeId, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/component-types/", aws_util:encode_uri(ComponentTypeId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an entity.
-spec create_entity(aws_client:aws_client(), binary() | list(), create_entity_request()) ->
    {ok, create_entity_response(), tuple()} |
    {error, any()} |
    {error, create_entity_errors(), tuple()}.
create_entity(Client, WorkspaceId, Input) ->
    create_entity(Client, WorkspaceId, Input, []).

-spec create_entity(aws_client:aws_client(), binary() | list(), create_entity_request(), proplists:proplist()) ->
    {ok, create_entity_response(), tuple()} |
    {error, any()} |
    {error, create_entity_errors(), tuple()}.
create_entity(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/entities"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new metadata transfer job.
-spec create_metadata_transfer_job(aws_client:aws_client(), create_metadata_transfer_job_request()) ->
    {ok, create_metadata_transfer_job_response(), tuple()} |
    {error, any()} |
    {error, create_metadata_transfer_job_errors(), tuple()}.
create_metadata_transfer_job(Client, Input) ->
    create_metadata_transfer_job(Client, Input, []).

-spec create_metadata_transfer_job(aws_client:aws_client(), create_metadata_transfer_job_request(), proplists:proplist()) ->
    {ok, create_metadata_transfer_job_response(), tuple()} |
    {error, any()} |
    {error, create_metadata_transfer_job_errors(), tuple()}.
create_metadata_transfer_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/metadata-transfer-jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a scene.
-spec create_scene(aws_client:aws_client(), binary() | list(), create_scene_request()) ->
    {ok, create_scene_response(), tuple()} |
    {error, any()} |
    {error, create_scene_errors(), tuple()}.
create_scene(Client, WorkspaceId, Input) ->
    create_scene(Client, WorkspaceId, Input, []).

-spec create_scene(aws_client:aws_client(), binary() | list(), create_scene_request(), proplists:proplist()) ->
    {ok, create_scene_response(), tuple()} |
    {error, any()} |
    {error, create_scene_errors(), tuple()}.
create_scene(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/scenes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This action creates a SyncJob.
-spec create_sync_job(aws_client:aws_client(), binary() | list(), binary() | list(), create_sync_job_request()) ->
    {ok, create_sync_job_response(), tuple()} |
    {error, any()} |
    {error, create_sync_job_errors(), tuple()}.
create_sync_job(Client, SyncSource, WorkspaceId, Input) ->
    create_sync_job(Client, SyncSource, WorkspaceId, Input, []).

-spec create_sync_job(aws_client:aws_client(), binary() | list(), binary() | list(), create_sync_job_request(), proplists:proplist()) ->
    {ok, create_sync_job_response(), tuple()} |
    {error, any()} |
    {error, create_sync_job_errors(), tuple()}.
create_sync_job(Client, SyncSource, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/sync-jobs/", aws_util:encode_uri(SyncSource), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a workplace.
-spec create_workspace(aws_client:aws_client(), binary() | list(), create_workspace_request()) ->
    {ok, create_workspace_response(), tuple()} |
    {error, any()} |
    {error, create_workspace_errors(), tuple()}.
create_workspace(Client, WorkspaceId, Input) ->
    create_workspace(Client, WorkspaceId, Input, []).

-spec create_workspace(aws_client:aws_client(), binary() | list(), create_workspace_request(), proplists:proplist()) ->
    {ok, create_workspace_response(), tuple()} |
    {error, any()} |
    {error, create_workspace_errors(), tuple()}.
create_workspace(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a component type.
-spec delete_component_type(aws_client:aws_client(), binary() | list(), binary() | list(), delete_component_type_request()) ->
    {ok, delete_component_type_response(), tuple()} |
    {error, any()} |
    {error, delete_component_type_errors(), tuple()}.
delete_component_type(Client, ComponentTypeId, WorkspaceId, Input) ->
    delete_component_type(Client, ComponentTypeId, WorkspaceId, Input, []).

-spec delete_component_type(aws_client:aws_client(), binary() | list(), binary() | list(), delete_component_type_request(), proplists:proplist()) ->
    {ok, delete_component_type_response(), tuple()} |
    {error, any()} |
    {error, delete_component_type_errors(), tuple()}.
delete_component_type(Client, ComponentTypeId, WorkspaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/component-types/", aws_util:encode_uri(ComponentTypeId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an entity.
-spec delete_entity(aws_client:aws_client(), binary() | list(), binary() | list(), delete_entity_request()) ->
    {ok, delete_entity_response(), tuple()} |
    {error, any()} |
    {error, delete_entity_errors(), tuple()}.
delete_entity(Client, EntityId, WorkspaceId, Input) ->
    delete_entity(Client, EntityId, WorkspaceId, Input, []).

-spec delete_entity(aws_client:aws_client(), binary() | list(), binary() | list(), delete_entity_request(), proplists:proplist()) ->
    {ok, delete_entity_response(), tuple()} |
    {error, any()} |
    {error, delete_entity_errors(), tuple()}.
delete_entity(Client, EntityId, WorkspaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/entities/", aws_util:encode_uri(EntityId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
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
                     {<<"isRecursive">>, <<"isRecursive">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a scene.
-spec delete_scene(aws_client:aws_client(), binary() | list(), binary() | list(), delete_scene_request()) ->
    {ok, delete_scene_response(), tuple()} |
    {error, any()} |
    {error, delete_scene_errors(), tuple()}.
delete_scene(Client, SceneId, WorkspaceId, Input) ->
    delete_scene(Client, SceneId, WorkspaceId, Input, []).

-spec delete_scene(aws_client:aws_client(), binary() | list(), binary() | list(), delete_scene_request(), proplists:proplist()) ->
    {ok, delete_scene_response(), tuple()} |
    {error, any()} |
    {error, delete_scene_errors(), tuple()}.
delete_scene(Client, SceneId, WorkspaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/scenes/", aws_util:encode_uri(SceneId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete the SyncJob.
-spec delete_sync_job(aws_client:aws_client(), binary() | list(), binary() | list(), delete_sync_job_request()) ->
    {ok, delete_sync_job_response(), tuple()} |
    {error, any()} |
    {error, delete_sync_job_errors(), tuple()}.
delete_sync_job(Client, SyncSource, WorkspaceId, Input) ->
    delete_sync_job(Client, SyncSource, WorkspaceId, Input, []).

-spec delete_sync_job(aws_client:aws_client(), binary() | list(), binary() | list(), delete_sync_job_request(), proplists:proplist()) ->
    {ok, delete_sync_job_response(), tuple()} |
    {error, any()} |
    {error, delete_sync_job_errors(), tuple()}.
delete_sync_job(Client, SyncSource, WorkspaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/sync-jobs/", aws_util:encode_uri(SyncSource), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a workspace.
-spec delete_workspace(aws_client:aws_client(), binary() | list(), delete_workspace_request()) ->
    {ok, delete_workspace_response(), tuple()} |
    {error, any()} |
    {error, delete_workspace_errors(), tuple()}.
delete_workspace(Client, WorkspaceId, Input) ->
    delete_workspace(Client, WorkspaceId, Input, []).

-spec delete_workspace(aws_client:aws_client(), binary() | list(), delete_workspace_request(), proplists:proplist()) ->
    {ok, delete_workspace_response(), tuple()} |
    {error, any()} |
    {error, delete_workspace_errors(), tuple()}.
delete_workspace(Client, WorkspaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Run queries to access information from your knowledge graph of
%% entities within
%% individual workspaces.
%%
%% The ExecuteQuery action only works with Amazon Web Services Java SDK2:
%% https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/home.html.
%% ExecuteQuery will not work with any Amazon Web Services Java SDK version
%% &lt; 2.x.
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

%% @doc Retrieves information about a component type.
-spec get_component_type(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_component_type_response(), tuple()} |
    {error, any()} |
    {error, get_component_type_errors(), tuple()}.
get_component_type(Client, ComponentTypeId, WorkspaceId)
  when is_map(Client) ->
    get_component_type(Client, ComponentTypeId, WorkspaceId, #{}, #{}).

-spec get_component_type(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_component_type_response(), tuple()} |
    {error, any()} |
    {error, get_component_type_errors(), tuple()}.
get_component_type(Client, ComponentTypeId, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_component_type(Client, ComponentTypeId, WorkspaceId, QueryMap, HeadersMap, []).

-spec get_component_type(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_component_type_response(), tuple()} |
    {error, any()} |
    {error, get_component_type_errors(), tuple()}.
get_component_type(Client, ComponentTypeId, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/component-types/", aws_util:encode_uri(ComponentTypeId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an entity.
-spec get_entity(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_entity_response(), tuple()} |
    {error, any()} |
    {error, get_entity_errors(), tuple()}.
get_entity(Client, EntityId, WorkspaceId)
  when is_map(Client) ->
    get_entity(Client, EntityId, WorkspaceId, #{}, #{}).

-spec get_entity(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_entity_response(), tuple()} |
    {error, any()} |
    {error, get_entity_errors(), tuple()}.
get_entity(Client, EntityId, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_entity(Client, EntityId, WorkspaceId, QueryMap, HeadersMap, []).

-spec get_entity(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_entity_response(), tuple()} |
    {error, any()} |
    {error, get_entity_errors(), tuple()}.
get_entity(Client, EntityId, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/entities/", aws_util:encode_uri(EntityId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a nmetadata transfer job.
-spec get_metadata_transfer_job(aws_client:aws_client(), binary() | list()) ->
    {ok, get_metadata_transfer_job_response(), tuple()} |
    {error, any()} |
    {error, get_metadata_transfer_job_errors(), tuple()}.
get_metadata_transfer_job(Client, MetadataTransferJobId)
  when is_map(Client) ->
    get_metadata_transfer_job(Client, MetadataTransferJobId, #{}, #{}).

-spec get_metadata_transfer_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_metadata_transfer_job_response(), tuple()} |
    {error, any()} |
    {error, get_metadata_transfer_job_errors(), tuple()}.
get_metadata_transfer_job(Client, MetadataTransferJobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_metadata_transfer_job(Client, MetadataTransferJobId, QueryMap, HeadersMap, []).

-spec get_metadata_transfer_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_metadata_transfer_job_response(), tuple()} |
    {error, any()} |
    {error, get_metadata_transfer_job_errors(), tuple()}.
get_metadata_transfer_job(Client, MetadataTransferJobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/metadata-transfer-jobs/", aws_util:encode_uri(MetadataTransferJobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the pricing plan.
-spec get_pricing_plan(aws_client:aws_client()) ->
    {ok, get_pricing_plan_response(), tuple()} |
    {error, any()} |
    {error, get_pricing_plan_errors(), tuple()}.
get_pricing_plan(Client)
  when is_map(Client) ->
    get_pricing_plan(Client, #{}, #{}).

-spec get_pricing_plan(aws_client:aws_client(), map(), map()) ->
    {ok, get_pricing_plan_response(), tuple()} |
    {error, any()} |
    {error, get_pricing_plan_errors(), tuple()}.
get_pricing_plan(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_pricing_plan(Client, QueryMap, HeadersMap, []).

-spec get_pricing_plan(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_pricing_plan_response(), tuple()} |
    {error, any()} |
    {error, get_pricing_plan_errors(), tuple()}.
get_pricing_plan(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/pricingplan"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the property values for a component, component type, entity, or
%% workspace.
%%
%% You must specify a value for either `componentName',
%% `componentTypeId', `entityId', or `workspaceId'.
-spec get_property_value(aws_client:aws_client(), binary() | list(), get_property_value_request()) ->
    {ok, get_property_value_response(), tuple()} |
    {error, any()} |
    {error, get_property_value_errors(), tuple()}.
get_property_value(Client, WorkspaceId, Input) ->
    get_property_value(Client, WorkspaceId, Input, []).

-spec get_property_value(aws_client:aws_client(), binary() | list(), get_property_value_request(), proplists:proplist()) ->
    {ok, get_property_value_response(), tuple()} |
    {error, any()} |
    {error, get_property_value_errors(), tuple()}.
get_property_value(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/entity-properties/value"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves information about the history of a time series property
%% value for a component,
%% component type, entity, or workspace.
%%
%% You must specify a value for `workspaceId'. For entity-specific
%% queries,
%% specify values for `componentName' and `entityId'. For
%% cross-entity
%% quries, specify a value for `componentTypeId'.
-spec get_property_value_history(aws_client:aws_client(), binary() | list(), get_property_value_history_request()) ->
    {ok, get_property_value_history_response(), tuple()} |
    {error, any()} |
    {error, get_property_value_history_errors(), tuple()}.
get_property_value_history(Client, WorkspaceId, Input) ->
    get_property_value_history(Client, WorkspaceId, Input, []).

-spec get_property_value_history(aws_client:aws_client(), binary() | list(), get_property_value_history_request(), proplists:proplist()) ->
    {ok, get_property_value_history_response(), tuple()} |
    {error, any()} |
    {error, get_property_value_history_errors(), tuple()}.
get_property_value_history(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/entity-properties/history"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves information about a scene.
-spec get_scene(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_scene_response(), tuple()} |
    {error, any()} |
    {error, get_scene_errors(), tuple()}.
get_scene(Client, SceneId, WorkspaceId)
  when is_map(Client) ->
    get_scene(Client, SceneId, WorkspaceId, #{}, #{}).

-spec get_scene(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_scene_response(), tuple()} |
    {error, any()} |
    {error, get_scene_errors(), tuple()}.
get_scene(Client, SceneId, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_scene(Client, SceneId, WorkspaceId, QueryMap, HeadersMap, []).

-spec get_scene(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_scene_response(), tuple()} |
    {error, any()} |
    {error, get_scene_errors(), tuple()}.
get_scene(Client, SceneId, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/scenes/", aws_util:encode_uri(SceneId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the SyncJob.
-spec get_sync_job(aws_client:aws_client(), binary() | list()) ->
    {ok, get_sync_job_response(), tuple()} |
    {error, any()} |
    {error, get_sync_job_errors(), tuple()}.
get_sync_job(Client, SyncSource)
  when is_map(Client) ->
    get_sync_job(Client, SyncSource, #{}, #{}).

-spec get_sync_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_sync_job_response(), tuple()} |
    {error, any()} |
    {error, get_sync_job_errors(), tuple()}.
get_sync_job(Client, SyncSource, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sync_job(Client, SyncSource, QueryMap, HeadersMap, []).

-spec get_sync_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_sync_job_response(), tuple()} |
    {error, any()} |
    {error, get_sync_job_errors(), tuple()}.
get_sync_job(Client, SyncSource, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sync-jobs/", aws_util:encode_uri(SyncSource), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"workspace">>, maps:get(<<"workspace">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a workspace.
-spec get_workspace(aws_client:aws_client(), binary() | list()) ->
    {ok, get_workspace_response(), tuple()} |
    {error, any()} |
    {error, get_workspace_errors(), tuple()}.
get_workspace(Client, WorkspaceId)
  when is_map(Client) ->
    get_workspace(Client, WorkspaceId, #{}, #{}).

-spec get_workspace(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_workspace_response(), tuple()} |
    {error, any()} |
    {error, get_workspace_errors(), tuple()}.
get_workspace(Client, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_workspace(Client, WorkspaceId, QueryMap, HeadersMap, []).

-spec get_workspace(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_workspace_response(), tuple()} |
    {error, any()} |
    {error, get_workspace_errors(), tuple()}.
get_workspace(Client, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all component types in a workspace.
-spec list_component_types(aws_client:aws_client(), binary() | list(), list_component_types_request()) ->
    {ok, list_component_types_response(), tuple()} |
    {error, any()} |
    {error, list_component_types_errors(), tuple()}.
list_component_types(Client, WorkspaceId, Input) ->
    list_component_types(Client, WorkspaceId, Input, []).

-spec list_component_types(aws_client:aws_client(), binary() | list(), list_component_types_request(), proplists:proplist()) ->
    {ok, list_component_types_response(), tuple()} |
    {error, any()} |
    {error, list_component_types_errors(), tuple()}.
list_component_types(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/component-types-list"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API lists the components of an entity.
-spec list_components(aws_client:aws_client(), binary() | list(), binary() | list(), list_components_request()) ->
    {ok, list_components_response(), tuple()} |
    {error, any()} |
    {error, list_components_errors(), tuple()}.
list_components(Client, EntityId, WorkspaceId, Input) ->
    list_components(Client, EntityId, WorkspaceId, Input, []).

-spec list_components(aws_client:aws_client(), binary() | list(), binary() | list(), list_components_request(), proplists:proplist()) ->
    {ok, list_components_response(), tuple()} |
    {error, any()} |
    {error, list_components_errors(), tuple()}.
list_components(Client, EntityId, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/entities/", aws_util:encode_uri(EntityId), "/components-list"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all entities in a workspace.
-spec list_entities(aws_client:aws_client(), binary() | list(), list_entities_request()) ->
    {ok, list_entities_response(), tuple()} |
    {error, any()} |
    {error, list_entities_errors(), tuple()}.
list_entities(Client, WorkspaceId, Input) ->
    list_entities(Client, WorkspaceId, Input, []).

-spec list_entities(aws_client:aws_client(), binary() | list(), list_entities_request(), proplists:proplist()) ->
    {ok, list_entities_response(), tuple()} |
    {error, any()} |
    {error, list_entities_errors(), tuple()}.
list_entities(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/entities-list"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the metadata transfer jobs.
-spec list_metadata_transfer_jobs(aws_client:aws_client(), list_metadata_transfer_jobs_request()) ->
    {ok, list_metadata_transfer_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_metadata_transfer_jobs_errors(), tuple()}.
list_metadata_transfer_jobs(Client, Input) ->
    list_metadata_transfer_jobs(Client, Input, []).

-spec list_metadata_transfer_jobs(aws_client:aws_client(), list_metadata_transfer_jobs_request(), proplists:proplist()) ->
    {ok, list_metadata_transfer_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_metadata_transfer_jobs_errors(), tuple()}.
list_metadata_transfer_jobs(Client, Input0, Options0) ->
    Method = post,
    Path = ["/metadata-transfer-jobs-list"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API lists the properties of a component.
-spec list_properties(aws_client:aws_client(), binary() | list(), list_properties_request()) ->
    {ok, list_properties_response(), tuple()} |
    {error, any()} |
    {error, list_properties_errors(), tuple()}.
list_properties(Client, WorkspaceId, Input) ->
    list_properties(Client, WorkspaceId, Input, []).

-spec list_properties(aws_client:aws_client(), binary() | list(), list_properties_request(), proplists:proplist()) ->
    {ok, list_properties_response(), tuple()} |
    {error, any()} |
    {error, list_properties_errors(), tuple()}.
list_properties(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/properties-list"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all scenes in a workspace.
-spec list_scenes(aws_client:aws_client(), binary() | list(), list_scenes_request()) ->
    {ok, list_scenes_response(), tuple()} |
    {error, any()} |
    {error, list_scenes_errors(), tuple()}.
list_scenes(Client, WorkspaceId, Input) ->
    list_scenes(Client, WorkspaceId, Input, []).

-spec list_scenes(aws_client:aws_client(), binary() | list(), list_scenes_request(), proplists:proplist()) ->
    {ok, list_scenes_response(), tuple()} |
    {error, any()} |
    {error, list_scenes_errors(), tuple()}.
list_scenes(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/scenes-list"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc List all SyncJobs.
-spec list_sync_jobs(aws_client:aws_client(), binary() | list(), list_sync_jobs_request()) ->
    {ok, list_sync_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_sync_jobs_errors(), tuple()}.
list_sync_jobs(Client, WorkspaceId, Input) ->
    list_sync_jobs(Client, WorkspaceId, Input, []).

-spec list_sync_jobs(aws_client:aws_client(), binary() | list(), list_sync_jobs_request(), proplists:proplist()) ->
    {ok, list_sync_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_sync_jobs_errors(), tuple()}.
list_sync_jobs(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/sync-jobs-list"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the sync resources.
-spec list_sync_resources(aws_client:aws_client(), binary() | list(), binary() | list(), list_sync_resources_request()) ->
    {ok, list_sync_resources_response(), tuple()} |
    {error, any()} |
    {error, list_sync_resources_errors(), tuple()}.
list_sync_resources(Client, SyncSource, WorkspaceId, Input) ->
    list_sync_resources(Client, SyncSource, WorkspaceId, Input, []).

-spec list_sync_resources(aws_client:aws_client(), binary() | list(), binary() | list(), list_sync_resources_request(), proplists:proplist()) ->
    {ok, list_sync_resources_response(), tuple()} |
    {error, any()} |
    {error, list_sync_resources_errors(), tuple()}.
list_sync_resources(Client, SyncSource, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/sync-jobs/", aws_util:encode_uri(SyncSource), "/resources-list"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all tags associated with a resource.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tags-list"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves information about workspaces in the current account.
-spec list_workspaces(aws_client:aws_client(), list_workspaces_request()) ->
    {ok, list_workspaces_response(), tuple()} |
    {error, any()} |
    {error, list_workspaces_errors(), tuple()}.
list_workspaces(Client, Input) ->
    list_workspaces(Client, Input, []).

-spec list_workspaces(aws_client:aws_client(), list_workspaces_request(), proplists:proplist()) ->
    {ok, list_workspaces_response(), tuple()} |
    {error, any()} |
    {error, list_workspaces_errors(), tuple()}.
list_workspaces(Client, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces-list"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
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

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes tags from a resource.
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
                     {<<"resourceARN">>, <<"resourceARN">>},
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates information in a component type.
-spec update_component_type(aws_client:aws_client(), binary() | list(), binary() | list(), update_component_type_request()) ->
    {ok, update_component_type_response(), tuple()} |
    {error, any()} |
    {error, update_component_type_errors(), tuple()}.
update_component_type(Client, ComponentTypeId, WorkspaceId, Input) ->
    update_component_type(Client, ComponentTypeId, WorkspaceId, Input, []).

-spec update_component_type(aws_client:aws_client(), binary() | list(), binary() | list(), update_component_type_request(), proplists:proplist()) ->
    {ok, update_component_type_response(), tuple()} |
    {error, any()} |
    {error, update_component_type_errors(), tuple()}.
update_component_type(Client, ComponentTypeId, WorkspaceId, Input0, Options0) ->
    Method = put,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/component-types/", aws_util:encode_uri(ComponentTypeId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an entity.
-spec update_entity(aws_client:aws_client(), binary() | list(), binary() | list(), update_entity_request()) ->
    {ok, update_entity_response(), tuple()} |
    {error, any()} |
    {error, update_entity_errors(), tuple()}.
update_entity(Client, EntityId, WorkspaceId, Input) ->
    update_entity(Client, EntityId, WorkspaceId, Input, []).

-spec update_entity(aws_client:aws_client(), binary() | list(), binary() | list(), update_entity_request(), proplists:proplist()) ->
    {ok, update_entity_response(), tuple()} |
    {error, any()} |
    {error, update_entity_errors(), tuple()}.
update_entity(Client, EntityId, WorkspaceId, Input0, Options0) ->
    Method = put,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/entities/", aws_util:encode_uri(EntityId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update the pricing plan.
-spec update_pricing_plan(aws_client:aws_client(), update_pricing_plan_request()) ->
    {ok, update_pricing_plan_response(), tuple()} |
    {error, any()} |
    {error, update_pricing_plan_errors(), tuple()}.
update_pricing_plan(Client, Input) ->
    update_pricing_plan(Client, Input, []).

-spec update_pricing_plan(aws_client:aws_client(), update_pricing_plan_request(), proplists:proplist()) ->
    {ok, update_pricing_plan_response(), tuple()} |
    {error, any()} |
    {error, update_pricing_plan_errors(), tuple()}.
update_pricing_plan(Client, Input0, Options0) ->
    Method = post,
    Path = ["/pricingplan"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a scene.
-spec update_scene(aws_client:aws_client(), binary() | list(), binary() | list(), update_scene_request()) ->
    {ok, update_scene_response(), tuple()} |
    {error, any()} |
    {error, update_scene_errors(), tuple()}.
update_scene(Client, SceneId, WorkspaceId, Input) ->
    update_scene(Client, SceneId, WorkspaceId, Input, []).

-spec update_scene(aws_client:aws_client(), binary() | list(), binary() | list(), update_scene_request(), proplists:proplist()) ->
    {ok, update_scene_response(), tuple()} |
    {error, any()} |
    {error, update_scene_errors(), tuple()}.
update_scene(Client, SceneId, WorkspaceId, Input0, Options0) ->
    Method = put,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/scenes/", aws_util:encode_uri(SceneId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a workspace.
-spec update_workspace(aws_client:aws_client(), binary() | list(), update_workspace_request()) ->
    {ok, update_workspace_response(), tuple()} |
    {error, any()} |
    {error, update_workspace_errors(), tuple()}.
update_workspace(Client, WorkspaceId, Input) ->
    update_workspace(Client, WorkspaceId, Input, []).

-spec update_workspace(aws_client:aws_client(), binary() | list(), update_workspace_request(), proplists:proplist()) ->
    {ok, update_workspace_response(), tuple()} |
    {error, any()} |
    {error, update_workspace_errors(), tuple()}.
update_workspace(Client, WorkspaceId, Input0, Options0) ->
    Method = put,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
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
    Client1 = Client#{service => <<"iottwinmaker">>},
    Host = build_host(<<"iottwinmaker">>, Client1),
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
