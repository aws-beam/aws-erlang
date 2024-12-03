%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Connect Customer Profiles
%%
%% Customer Profiles actions:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_Operations_Amazon_Connect_Customer_Profiles.html
%%
%% Customer Profiles data types:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_Types_Amazon_Connect_Customer_Profiles.html
%%
%% Amazon Connect Customer Profiles is a unified customer profile for your
%% contact
%% center that has pre-built connectors powered by AppFlow that make it easy
%% to combine
%% customer information from third party applications, such as Salesforce
%% (CRM), ServiceNow
%% (ITSM), and your enterprise resource planning (ERP), with contact history
%% from your Amazon Connect contact center.
%%
%% For more information about the Amazon Connect Customer Profiles feature,
%% see Use Customer
%% Profiles:
%% https://docs.aws.amazon.com/connect/latest/adminguide/customer-profiles.html
%% in the Amazon Connect Administrator's Guide.
-module(aws_customer_profiles).

-export([add_profile_key/3,
         add_profile_key/4,
         batch_get_calculated_attribute_for_profile/4,
         batch_get_calculated_attribute_for_profile/5,
         batch_get_profile/3,
         batch_get_profile/4,
         create_calculated_attribute_definition/4,
         create_calculated_attribute_definition/5,
         create_domain/3,
         create_domain/4,
         create_event_stream/4,
         create_event_stream/5,
         create_event_trigger/4,
         create_event_trigger/5,
         create_integration_workflow/3,
         create_integration_workflow/4,
         create_profile/3,
         create_profile/4,
         create_segment_definition/4,
         create_segment_definition/5,
         create_segment_estimate/3,
         create_segment_estimate/4,
         create_segment_snapshot/4,
         create_segment_snapshot/5,
         delete_calculated_attribute_definition/4,
         delete_calculated_attribute_definition/5,
         delete_domain/3,
         delete_domain/4,
         delete_event_stream/4,
         delete_event_stream/5,
         delete_event_trigger/4,
         delete_event_trigger/5,
         delete_integration/3,
         delete_integration/4,
         delete_profile/3,
         delete_profile/4,
         delete_profile_key/3,
         delete_profile_key/4,
         delete_profile_object/3,
         delete_profile_object/4,
         delete_profile_object_type/4,
         delete_profile_object_type/5,
         delete_segment_definition/4,
         delete_segment_definition/5,
         delete_workflow/4,
         delete_workflow/5,
         detect_profile_object_type/3,
         detect_profile_object_type/4,
         get_auto_merging_preview/3,
         get_auto_merging_preview/4,
         get_calculated_attribute_definition/3,
         get_calculated_attribute_definition/5,
         get_calculated_attribute_definition/6,
         get_calculated_attribute_for_profile/4,
         get_calculated_attribute_for_profile/6,
         get_calculated_attribute_for_profile/7,
         get_domain/2,
         get_domain/4,
         get_domain/5,
         get_event_stream/3,
         get_event_stream/5,
         get_event_stream/6,
         get_event_trigger/3,
         get_event_trigger/5,
         get_event_trigger/6,
         get_identity_resolution_job/3,
         get_identity_resolution_job/5,
         get_identity_resolution_job/6,
         get_integration/3,
         get_integration/4,
         get_matches/2,
         get_matches/4,
         get_matches/5,
         get_profile_object_type/3,
         get_profile_object_type/5,
         get_profile_object_type/6,
         get_profile_object_type_template/2,
         get_profile_object_type_template/4,
         get_profile_object_type_template/5,
         get_segment_definition/3,
         get_segment_definition/5,
         get_segment_definition/6,
         get_segment_estimate/3,
         get_segment_estimate/5,
         get_segment_estimate/6,
         get_segment_membership/4,
         get_segment_membership/5,
         get_segment_snapshot/4,
         get_segment_snapshot/6,
         get_segment_snapshot/7,
         get_similar_profiles/3,
         get_similar_profiles/4,
         get_workflow/3,
         get_workflow/5,
         get_workflow/6,
         get_workflow_steps/3,
         get_workflow_steps/5,
         get_workflow_steps/6,
         list_account_integrations/2,
         list_account_integrations/3,
         list_calculated_attribute_definitions/2,
         list_calculated_attribute_definitions/4,
         list_calculated_attribute_definitions/5,
         list_calculated_attributes_for_profile/3,
         list_calculated_attributes_for_profile/5,
         list_calculated_attributes_for_profile/6,
         list_domains/1,
         list_domains/3,
         list_domains/4,
         list_event_streams/2,
         list_event_streams/4,
         list_event_streams/5,
         list_event_triggers/2,
         list_event_triggers/4,
         list_event_triggers/5,
         list_identity_resolution_jobs/2,
         list_identity_resolution_jobs/4,
         list_identity_resolution_jobs/5,
         list_integrations/2,
         list_integrations/4,
         list_integrations/5,
         list_object_type_attributes/3,
         list_object_type_attributes/5,
         list_object_type_attributes/6,
         list_profile_attribute_values/3,
         list_profile_attribute_values/5,
         list_profile_attribute_values/6,
         list_profile_object_type_templates/1,
         list_profile_object_type_templates/3,
         list_profile_object_type_templates/4,
         list_profile_object_types/2,
         list_profile_object_types/4,
         list_profile_object_types/5,
         list_profile_objects/3,
         list_profile_objects/4,
         list_rule_based_matches/2,
         list_rule_based_matches/4,
         list_rule_based_matches/5,
         list_segment_definitions/2,
         list_segment_definitions/4,
         list_segment_definitions/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_workflows/3,
         list_workflows/4,
         merge_profiles/3,
         merge_profiles/4,
         put_integration/3,
         put_integration/4,
         put_profile_object/3,
         put_profile_object/4,
         put_profile_object_type/4,
         put_profile_object_type/5,
         search_profiles/3,
         search_profiles/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_calculated_attribute_definition/4,
         update_calculated_attribute_definition/5,
         update_domain/3,
         update_domain/4,
         update_event_trigger/4,
         update_event_trigger/5,
         update_profile/3,
         update_profile/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% profile() :: #{
%%   <<"AccountNumber">> => string(),
%%   <<"AdditionalInformation">> => string(),
%%   <<"Address">> => address(),
%%   <<"Attributes">> => map(),
%%   <<"BillingAddress">> => address(),
%%   <<"BirthDate">> => string(),
%%   <<"BusinessEmailAddress">> => string(),
%%   <<"BusinessName">> => string(),
%%   <<"BusinessPhoneNumber">> => string(),
%%   <<"EmailAddress">> => string(),
%%   <<"FirstName">> => string(),
%%   <<"FoundByItems">> => list(found_by_key_value()()),
%%   <<"Gender">> => list(any()),
%%   <<"GenderString">> => string(),
%%   <<"HomePhoneNumber">> => string(),
%%   <<"LastName">> => string(),
%%   <<"MailingAddress">> => address(),
%%   <<"MiddleName">> => string(),
%%   <<"MobilePhoneNumber">> => string(),
%%   <<"PartyType">> => list(any()),
%%   <<"PartyTypeString">> => string(),
%%   <<"PersonalEmailAddress">> => string(),
%%   <<"PhoneNumber">> => string(),
%%   <<"ProfileId">> => string(),
%%   <<"ShippingAddress">> => address()
%% }
-type profile() :: #{binary() => any()}.


%% Example:
%% integration_config() :: #{
%%   <<"AppflowIntegration">> => appflow_integration()
%% }
-type integration_config() :: #{binary() => any()}.


%% Example:
%% list_profile_object_type_item() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"MaxAvailableProfileObjectCount">> => integer(),
%%   <<"MaxProfileObjectCount">> => integer(),
%%   <<"ObjectTypeName">> => string(),
%%   <<"Tags">> => map()
%% }
-type list_profile_object_type_item() :: #{binary() => any()}.


%% Example:
%% auto_merging() :: #{
%%   <<"ConflictResolution">> => conflict_resolution(),
%%   <<"Consolidation">> => consolidation(),
%%   <<"Enabled">> => boolean(),
%%   <<"MinAllowedConfidenceScoreForMerging">> => float()
%% }
-type auto_merging() :: #{binary() => any()}.


%% Example:
%% event_trigger_limits() :: #{
%%   <<"EventExpiration">> => float(),
%%   <<"Periods">> => list(period()())
%% }
-type event_trigger_limits() :: #{binary() => any()}.


%% Example:
%% create_segment_estimate_request() :: #{
%%   <<"SegmentQuery">> := segment_group_structure()
%% }
-type create_segment_estimate_request() :: #{binary() => any()}.


%% Example:
%% create_calculated_attribute_definition_response() :: #{
%%   <<"AttributeDetails">> => attribute_details(),
%%   <<"CalculatedAttributeName">> => string(),
%%   <<"Conditions">> => conditions(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"Filter">> => filter(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"Statistic">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type create_calculated_attribute_definition_response() :: #{binary() => any()}.

%% Example:
%% get_domain_request() :: #{}
-type get_domain_request() :: #{}.


%% Example:
%% create_segment_snapshot_request() :: #{
%%   <<"DataFormat">> := list(any()),
%%   <<"DestinationUri">> => string(),
%%   <<"EncryptionKey">> => string(),
%%   <<"RoleArn">> => string()
%% }
-type create_segment_snapshot_request() :: #{binary() => any()}.


%% Example:
%% put_profile_object_type_response() :: #{
%%   <<"AllowProfileCreation">> => boolean(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"EncryptionKey">> => string(),
%%   <<"ExpirationDays">> => integer(),
%%   <<"Fields">> => map(),
%%   <<"Keys">> => map(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"MaxAvailableProfileObjectCount">> => integer(),
%%   <<"MaxProfileObjectCount">> => integer(),
%%   <<"ObjectTypeName">> => string(),
%%   <<"SourceLastUpdatedTimestampFormat">> => string(),
%%   <<"Tags">> => map(),
%%   <<"TemplateId">> => string()
%% }
-type put_profile_object_type_response() :: #{binary() => any()}.


%% Example:
%% date_dimension() :: #{
%%   <<"DimensionType">> => list(any()),
%%   <<"Values">> => list([string()]())
%% }
-type date_dimension() :: #{binary() => any()}.


%% Example:
%% delete_domain_response() :: #{
%%   <<"Message">> => string()
%% }
-type delete_domain_response() :: #{binary() => any()}.


%% Example:
%% put_profile_object_response() :: #{
%%   <<"ProfileObjectUniqueKey">> => string()
%% }
-type put_profile_object_response() :: #{binary() => any()}.


%% Example:
%% job_schedule() :: #{
%%   <<"DayOfTheWeek">> => list(any()),
%%   <<"Time">> => string()
%% }
-type job_schedule() :: #{binary() => any()}.


%% Example:
%% delete_integration_response() :: #{
%%   <<"Message">> => string()
%% }
-type delete_integration_response() :: #{binary() => any()}.


%% Example:
%% task() :: #{
%%   <<"ConnectorOperator">> => connector_operator(),
%%   <<"DestinationField">> => string(),
%%   <<"SourceFields">> => list(string()()),
%%   <<"TaskProperties">> => map(),
%%   <<"TaskType">> => list(any())
%% }
-type task() :: #{binary() => any()}.


%% Example:
%% update_domain_request() :: #{
%%   <<"DeadLetterQueueUrl">> => string(),
%%   <<"DefaultEncryptionKey">> => string(),
%%   <<"DefaultExpirationDays">> => integer(),
%%   <<"Matching">> => matching_request(),
%%   <<"RuleBasedMatching">> => rule_based_matching_request(),
%%   <<"Tags">> => map()
%% }
-type update_domain_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% scheduled_trigger_properties() :: #{
%%   <<"DataPullMode">> => list(any()),
%%   <<"FirstExecutionFrom">> => non_neg_integer(),
%%   <<"ScheduleEndTime">> => non_neg_integer(),
%%   <<"ScheduleExpression">> => string(),
%%   <<"ScheduleOffset">> => float(),
%%   <<"ScheduleStartTime">> => non_neg_integer(),
%%   <<"Timezone">> => string()
%% }
-type scheduled_trigger_properties() :: #{binary() => any()}.


%% Example:
%% range() :: #{
%%   <<"Unit">> => list(any()),
%%   <<"Value">> => integer()
%% }
-type range() :: #{binary() => any()}.


%% Example:
%% profile_query_result() :: #{
%%   <<"Profile">> => profile(),
%%   <<"ProfileId">> => string(),
%%   <<"QueryResult">> => list(any())
%% }
-type profile_query_result() :: #{binary() => any()}.


%% Example:
%% delete_profile_key_response() :: #{
%%   <<"Message">> => string()
%% }
-type delete_profile_key_response() :: #{binary() => any()}.


%% Example:
%% list_profile_object_type_template_item() :: #{
%%   <<"SourceName">> => string(),
%%   <<"SourceObject">> => string(),
%%   <<"TemplateId">> => string()
%% }
-type list_profile_object_type_template_item() :: #{binary() => any()}.


%% Example:
%% attribute_details() :: #{
%%   <<"Attributes">> => list(attribute_item()()),
%%   <<"Expression">> => string()
%% }
-type attribute_details() :: #{binary() => any()}.


%% Example:
%% detect_profile_object_type_response() :: #{
%%   <<"DetectedProfileObjectTypes">> => list(detected_profile_object_type()())
%% }
-type detect_profile_object_type_response() :: #{binary() => any()}.


%% Example:
%% list_identity_resolution_jobs_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_identity_resolution_jobs_request() :: #{binary() => any()}.


%% Example:
%% job_stats() :: #{
%%   <<"NumberOfMatchesFound">> => float(),
%%   <<"NumberOfMergesDone">> => float(),
%%   <<"NumberOfProfilesReviewed">> => float()
%% }
-type job_stats() :: #{binary() => any()}.


%% Example:
%% marketo_source_properties() :: #{
%%   <<"Object">> => string()
%% }
-type marketo_source_properties() :: #{binary() => any()}.


%% Example:
%% get_profile_object_type_response() :: #{
%%   <<"AllowProfileCreation">> => boolean(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"EncryptionKey">> => string(),
%%   <<"ExpirationDays">> => integer(),
%%   <<"Fields">> => map(),
%%   <<"Keys">> => map(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"MaxAvailableProfileObjectCount">> => integer(),
%%   <<"MaxProfileObjectCount">> => integer(),
%%   <<"ObjectTypeName">> => string(),
%%   <<"SourceLastUpdatedTimestampFormat">> => string(),
%%   <<"Tags">> => map(),
%%   <<"TemplateId">> => string()
%% }
-type get_profile_object_type_response() :: #{binary() => any()}.


%% Example:
%% attribute_item() :: #{
%%   <<"Name">> => string()
%% }
-type attribute_item() :: #{binary() => any()}.

%% Example:
%% get_calculated_attribute_for_profile_request() :: #{}
-type get_calculated_attribute_for_profile_request() :: #{}.


%% Example:
%% conflict_resolution() :: #{
%%   <<"ConflictResolvingModel">> => list(any()),
%%   <<"SourceName">> => string()
%% }
-type conflict_resolution() :: #{binary() => any()}.


%% Example:
%% delete_profile_request() :: #{
%%   <<"ProfileId">> := string()
%% }
-type delete_profile_request() :: #{binary() => any()}.

%% Example:
%% delete_segment_definition_request() :: #{}
-type delete_segment_definition_request() :: #{}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% event_trigger_condition() :: #{
%%   <<"EventTriggerDimensions">> => list(event_trigger_dimension()()),
%%   <<"LogicalOperator">> => list(any())
%% }
-type event_trigger_condition() :: #{binary() => any()}.


%% Example:
%% domain_stats() :: #{
%%   <<"MeteringProfileCount">> => float(),
%%   <<"ObjectCount">> => float(),
%%   <<"ProfileCount">> => float(),
%%   <<"TotalSize">> => float()
%% }
-type domain_stats() :: #{binary() => any()}.

%% Example:
%% delete_workflow_request() :: #{}
-type delete_workflow_request() :: #{}.


%% Example:
%% list_account_integrations_request() :: #{
%%   <<"IncludeHidden">> => boolean(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Uri">> := string()
%% }
-type list_account_integrations_request() :: #{binary() => any()}.


%% Example:
%% delete_event_trigger_response() :: #{
%%   <<"Message">> => string()
%% }
-type delete_event_trigger_response() :: #{binary() => any()}.


%% Example:
%% object_filter() :: #{
%%   <<"KeyName">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type object_filter() :: #{binary() => any()}.


%% Example:
%% s3_source_properties() :: #{
%%   <<"BucketName">> => string(),
%%   <<"BucketPrefix">> => string()
%% }
-type s3_source_properties() :: #{binary() => any()}.


%% Example:
%% segment_definition_item() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"SegmentDefinitionArn">> => string(),
%%   <<"SegmentDefinitionName">> => string(),
%%   <<"Tags">> => map()
%% }
-type segment_definition_item() :: #{binary() => any()}.


%% Example:
%% found_by_key_value() :: #{
%%   <<"KeyName">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type found_by_key_value() :: #{binary() => any()}.


%% Example:
%% update_domain_response() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DeadLetterQueueUrl">> => string(),
%%   <<"DefaultEncryptionKey">> => string(),
%%   <<"DefaultExpirationDays">> => integer(),
%%   <<"DomainName">> => string(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"Matching">> => matching_response(),
%%   <<"RuleBasedMatching">> => rule_based_matching_response(),
%%   <<"Tags">> => map()
%% }
-type update_domain_response() :: #{binary() => any()}.


%% Example:
%% merge_profiles_response() :: #{
%%   <<"Message">> => string()
%% }
-type merge_profiles_response() :: #{binary() => any()}.


%% Example:
%% delete_profile_response() :: #{
%%   <<"Message">> => string()
%% }
-type delete_profile_response() :: #{binary() => any()}.


%% Example:
%% list_segment_definitions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_segment_definitions_request() :: #{binary() => any()}.

%% Example:
%% get_identity_resolution_job_request() :: #{}
-type get_identity_resolution_job_request() :: #{}.


%% Example:
%% appflow_integration_workflow_step() :: #{
%%   <<"BatchRecordsEndTime">> => string(),
%%   <<"BatchRecordsStartTime">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"ExecutionMessage">> => string(),
%%   <<"FlowName">> => string(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"RecordsProcessed">> => float(),
%%   <<"Status">> => list(any())
%% }
-type appflow_integration_workflow_step() :: #{binary() => any()}.


%% Example:
%% detect_profile_object_type_request() :: #{
%%   <<"Objects">> := list(string()())
%% }
-type detect_profile_object_type_request() :: #{binary() => any()}.


%% Example:
%% calculated_attribute_value() :: #{
%%   <<"CalculatedAttributeName">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"IsDataPartial">> => string(),
%%   <<"ProfileId">> => string(),
%%   <<"Value">> => string()
%% }
-type calculated_attribute_value() :: #{binary() => any()}.


%% Example:
%% address_dimension() :: #{
%%   <<"City">> => profile_dimension(),
%%   <<"Country">> => profile_dimension(),
%%   <<"County">> => profile_dimension(),
%%   <<"PostalCode">> => profile_dimension(),
%%   <<"Province">> => profile_dimension(),
%%   <<"State">> => profile_dimension()
%% }
-type address_dimension() :: #{binary() => any()}.


%% Example:
%% exporting_location() :: #{
%%   <<"S3Exporting">> => s3_exporting_location()
%% }
-type exporting_location() :: #{binary() => any()}.


%% Example:
%% get_similar_profiles_response() :: #{
%%   <<"ConfidenceScore">> => float(),
%%   <<"MatchId">> => string(),
%%   <<"MatchType">> => list(any()),
%%   <<"NextToken">> => string(),
%%   <<"ProfileIds">> => list(string()()),
%%   <<"RuleLevel">> => integer()
%% }
-type get_similar_profiles_response() :: #{binary() => any()}.


%% Example:
%% put_integration_request() :: #{
%%   <<"EventTriggerNames">> => list(string()()),
%%   <<"FlowDefinition">> => flow_definition(),
%%   <<"ObjectTypeName">> => string(),
%%   <<"ObjectTypeNames">> => map(),
%%   <<"RoleArn">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Uri">> => string()
%% }
-type put_integration_request() :: #{binary() => any()}.


%% Example:
%% flow_definition() :: #{
%%   <<"Description">> => string(),
%%   <<"FlowName">> => string(),
%%   <<"KmsArn">> => string(),
%%   <<"SourceFlowConfig">> => source_flow_config(),
%%   <<"Tasks">> => list(task()()),
%%   <<"TriggerConfig">> => trigger_config()
%% }
-type flow_definition() :: #{binary() => any()}.


%% Example:
%% list_event_triggers_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_event_triggers_request() :: #{binary() => any()}.


%% Example:
%% list_rule_based_matches_response() :: #{
%%   <<"MatchIds">> => list(string()()),
%%   <<"NextToken">> => string()
%% }
-type list_rule_based_matches_response() :: #{binary() => any()}.


%% Example:
%% appflow_integration_workflow_attributes() :: #{
%%   <<"ConnectorProfileName">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"SourceConnectorType">> => list(any())
%% }
-type appflow_integration_workflow_attributes() :: #{binary() => any()}.


%% Example:
%% add_profile_key_response() :: #{
%%   <<"KeyName">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type add_profile_key_response() :: #{binary() => any()}.


%% Example:
%% filter_group() :: #{
%%   <<"Dimensions">> => list(filter_dimension()()),
%%   <<"Type">> => list(any())
%% }
-type filter_group() :: #{binary() => any()}.


%% Example:
%% list_identity_resolution_jobs_response() :: #{
%%   <<"IdentityResolutionJobsList">> => list(identity_resolution_job()()),
%%   <<"NextToken">> => string()
%% }
-type list_identity_resolution_jobs_response() :: #{binary() => any()}.


%% Example:
%% batch_get_calculated_attribute_for_profile_error() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string(),
%%   <<"ProfileId">> => string()
%% }
-type batch_get_calculated_attribute_for_profile_error() :: #{binary() => any()}.


%% Example:
%% condition_overrides() :: #{
%%   <<"Range">> => range_override()
%% }
-type condition_overrides() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% matching_rule() :: #{
%%   <<"Rule">> => list(string()())
%% }
-type matching_rule() :: #{binary() => any()}.


%% Example:
%% attribute_value_item() :: #{
%%   <<"Value">> => string()
%% }
-type attribute_value_item() :: #{binary() => any()}.


%% Example:
%% put_integration_response() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DomainName">> => string(),
%%   <<"EventTriggerNames">> => list(string()()),
%%   <<"IsUnstructured">> => boolean(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"ObjectTypeName">> => string(),
%%   <<"ObjectTypeNames">> => map(),
%%   <<"RoleArn">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Uri">> => string(),
%%   <<"WorkflowId">> => string()
%% }
-type put_integration_response() :: #{binary() => any()}.


%% Example:
%% zendesk_source_properties() :: #{
%%   <<"Object">> => string()
%% }
-type zendesk_source_properties() :: #{binary() => any()}.


%% Example:
%% create_integration_workflow_request() :: #{
%%   <<"IntegrationConfig">> := integration_config(),
%%   <<"ObjectTypeName">> := string(),
%%   <<"RoleArn">> := string(),
%%   <<"Tags">> => map(),
%%   <<"WorkflowType">> := list(any())
%% }
-type create_integration_workflow_request() :: #{binary() => any()}.


%% Example:
%% get_identity_resolution_job_response() :: #{
%%   <<"AutoMerging">> => auto_merging(),
%%   <<"DomainName">> => string(),
%%   <<"ExportingLocation">> => exporting_location(),
%%   <<"JobEndTime">> => non_neg_integer(),
%%   <<"JobExpirationTime">> => non_neg_integer(),
%%   <<"JobId">> => string(),
%%   <<"JobStartTime">> => non_neg_integer(),
%%   <<"JobStats">> => job_stats(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"Status">> => list(any())
%% }
-type get_identity_resolution_job_response() :: #{binary() => any()}.


%% Example:
%% get_similar_profiles_request() :: #{
%%   <<"MatchType">> := list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SearchKey">> := string(),
%%   <<"SearchValue">> := string()
%% }
-type get_similar_profiles_request() :: #{binary() => any()}.


%% Example:
%% trigger_properties() :: #{
%%   <<"Scheduled">> => scheduled_trigger_properties()
%% }
-type trigger_properties() :: #{binary() => any()}.


%% Example:
%% list_event_triggers_response() :: #{
%%   <<"Items">> => list(event_trigger_summary_item()()),
%%   <<"NextToken">> => string()
%% }
-type list_event_triggers_response() :: #{binary() => any()}.


%% Example:
%% range_override() :: #{
%%   <<"End">> => integer(),
%%   <<"Start">> => integer(),
%%   <<"Unit">> => list(any())
%% }
-type range_override() :: #{binary() => any()}.

%% Example:
%% get_calculated_attribute_definition_request() :: #{}
-type get_calculated_attribute_definition_request() :: #{}.

%% Example:
%% get_workflow_request() :: #{}
-type get_workflow_request() :: #{}.


%% Example:
%% create_calculated_attribute_definition_request() :: #{
%%   <<"AttributeDetails">> := attribute_details(),
%%   <<"Conditions">> => conditions(),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"Filter">> => filter(),
%%   <<"Statistic">> := list(any()),
%%   <<"Tags">> => map()
%% }
-type create_calculated_attribute_definition_request() :: #{binary() => any()}.


%% Example:
%% list_calculated_attribute_definition_item() :: #{
%%   <<"CalculatedAttributeName">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"Tags">> => map()
%% }
-type list_calculated_attribute_definition_item() :: #{binary() => any()}.


%% Example:
%% list_integrations_request() :: #{
%%   <<"IncludeHidden">> => boolean(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_integrations_request() :: #{binary() => any()}.

%% Example:
%% delete_calculated_attribute_definition_response() :: #{}
-type delete_calculated_attribute_definition_response() :: #{}.


%% Example:
%% workflow_step_item() :: #{
%%   <<"AppflowIntegration">> => appflow_integration_workflow_step()
%% }
-type workflow_step_item() :: #{binary() => any()}.


%% Example:
%% object_type_field() :: #{
%%   <<"ContentType">> => list(any()),
%%   <<"Source">> => string(),
%%   <<"Target">> => string()
%% }
-type object_type_field() :: #{binary() => any()}.


%% Example:
%% list_domain_item() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DomainName">> => string(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"Tags">> => map()
%% }
-type list_domain_item() :: #{binary() => any()}.


%% Example:
%% update_address() :: #{
%%   <<"Address1">> => string(),
%%   <<"Address2">> => string(),
%%   <<"Address3">> => string(),
%%   <<"Address4">> => string(),
%%   <<"City">> => string(),
%%   <<"Country">> => string(),
%%   <<"County">> => string(),
%%   <<"PostalCode">> => string(),
%%   <<"Province">> => string(),
%%   <<"State">> => string()
%% }
-type update_address() :: #{binary() => any()}.


%% Example:
%% list_object_type_attributes_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_object_type_attributes_request() :: #{binary() => any()}.


%% Example:
%% list_object_type_attribute_item() :: #{
%%   <<"AttributeName">> => string(),
%%   <<"LastUpdatedAt">> => non_neg_integer()
%% }
-type list_object_type_attribute_item() :: #{binary() => any()}.


%% Example:
%% get_integration_response() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DomainName">> => string(),
%%   <<"EventTriggerNames">> => list(string()()),
%%   <<"IsUnstructured">> => boolean(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"ObjectTypeName">> => string(),
%%   <<"ObjectTypeNames">> => map(),
%%   <<"RoleArn">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Uri">> => string(),
%%   <<"WorkflowId">> => string()
%% }
-type get_integration_response() :: #{binary() => any()}.


%% Example:
%% delete_profile_object_response() :: #{
%%   <<"Message">> => string()
%% }
-type delete_profile_object_response() :: #{binary() => any()}.

%% Example:
%% delete_domain_request() :: #{}
-type delete_domain_request() :: #{}.


%% Example:
%% delete_profile_key_request() :: #{
%%   <<"KeyName">> := string(),
%%   <<"ProfileId">> := string(),
%%   <<"Values">> := list(string()())
%% }
-type delete_profile_key_request() :: #{binary() => any()}.


%% Example:
%% calculated_attribute_dimension() :: #{
%%   <<"ConditionOverrides">> => condition_overrides(),
%%   <<"DimensionType">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type calculated_attribute_dimension() :: #{binary() => any()}.


%% Example:
%% workflow_attributes() :: #{
%%   <<"AppflowIntegration">> => appflow_integration_workflow_attributes()
%% }
-type workflow_attributes() :: #{binary() => any()}.


%% Example:
%% match_item() :: #{
%%   <<"ConfidenceScore">> => float(),
%%   <<"MatchId">> => string(),
%%   <<"ProfileIds">> => list(string()())
%% }
-type match_item() :: #{binary() => any()}.


%% Example:
%% create_profile_request() :: #{
%%   <<"AccountNumber">> => string(),
%%   <<"AdditionalInformation">> => string(),
%%   <<"Address">> => address(),
%%   <<"Attributes">> => map(),
%%   <<"BillingAddress">> => address(),
%%   <<"BirthDate">> => string(),
%%   <<"BusinessEmailAddress">> => string(),
%%   <<"BusinessName">> => string(),
%%   <<"BusinessPhoneNumber">> => string(),
%%   <<"EmailAddress">> => string(),
%%   <<"FirstName">> => string(),
%%   <<"Gender">> => list(any()),
%%   <<"GenderString">> => string(),
%%   <<"HomePhoneNumber">> => string(),
%%   <<"LastName">> => string(),
%%   <<"MailingAddress">> => address(),
%%   <<"MiddleName">> => string(),
%%   <<"MobilePhoneNumber">> => string(),
%%   <<"PartyType">> => list(any()),
%%   <<"PartyTypeString">> => string(),
%%   <<"PersonalEmailAddress">> => string(),
%%   <<"PhoneNumber">> => string(),
%%   <<"ShippingAddress">> => address()
%% }
-type create_profile_request() :: #{binary() => any()}.

%% Example:
%% delete_workflow_response() :: #{}
-type delete_workflow_response() :: #{}.


%% Example:
%% get_segment_definition_response() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"SegmentDefinitionArn">> => string(),
%%   <<"SegmentDefinitionName">> => string(),
%%   <<"SegmentGroups">> => segment_group(),
%%   <<"Tags">> => map()
%% }
-type get_segment_definition_response() :: #{binary() => any()}.


%% Example:
%% rule_based_matching_response() :: #{
%%   <<"AttributeTypesSelector">> => attribute_types_selector(),
%%   <<"ConflictResolution">> => conflict_resolution(),
%%   <<"Enabled">> => boolean(),
%%   <<"ExportingConfig">> => exporting_config(),
%%   <<"MatchingRules">> => list(matching_rule()()),
%%   <<"MaxAllowedRuleLevelForMatching">> => integer(),
%%   <<"MaxAllowedRuleLevelForMerging">> => integer(),
%%   <<"Status">> => list(any())
%% }
-type rule_based_matching_response() :: #{binary() => any()}.


%% Example:
%% update_calculated_attribute_definition_response() :: #{
%%   <<"AttributeDetails">> => attribute_details(),
%%   <<"CalculatedAttributeName">> => string(),
%%   <<"Conditions">> => conditions(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"Statistic">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type update_calculated_attribute_definition_response() :: #{binary() => any()}.


%% Example:
%% additional_search_key() :: #{
%%   <<"KeyName">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type additional_search_key() :: #{binary() => any()}.


%% Example:
%% profile_query_failures() :: #{
%%   <<"Message">> => string(),
%%   <<"ProfileId">> => string(),
%%   <<"Status">> => integer()
%% }
-type profile_query_failures() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% segment_group_structure() :: #{
%%   <<"Groups">> => list(group()()),
%%   <<"Include">> => list(any())
%% }
-type segment_group_structure() :: #{binary() => any()}.


%% Example:
%% delete_integration_request() :: #{
%%   <<"Uri">> := string()
%% }
-type delete_integration_request() :: #{binary() => any()}.


%% Example:
%% create_domain_request() :: #{
%%   <<"DeadLetterQueueUrl">> => string(),
%%   <<"DefaultEncryptionKey">> => string(),
%%   <<"DefaultExpirationDays">> := integer(),
%%   <<"Matching">> => matching_request(),
%%   <<"RuleBasedMatching">> => rule_based_matching_request(),
%%   <<"Tags">> => map()
%% }
-type create_domain_request() :: #{binary() => any()}.


%% Example:
%% update_profile_request() :: #{
%%   <<"AccountNumber">> => string(),
%%   <<"AdditionalInformation">> => string(),
%%   <<"Address">> => update_address(),
%%   <<"Attributes">> => map(),
%%   <<"BillingAddress">> => update_address(),
%%   <<"BirthDate">> => string(),
%%   <<"BusinessEmailAddress">> => string(),
%%   <<"BusinessName">> => string(),
%%   <<"BusinessPhoneNumber">> => string(),
%%   <<"EmailAddress">> => string(),
%%   <<"FirstName">> => string(),
%%   <<"Gender">> => list(any()),
%%   <<"GenderString">> => string(),
%%   <<"HomePhoneNumber">> => string(),
%%   <<"LastName">> => string(),
%%   <<"MailingAddress">> => update_address(),
%%   <<"MiddleName">> => string(),
%%   <<"MobilePhoneNumber">> => string(),
%%   <<"PartyType">> => list(any()),
%%   <<"PartyTypeString">> => string(),
%%   <<"PersonalEmailAddress">> => string(),
%%   <<"PhoneNumber">> => string(),
%%   <<"ProfileId">> := string(),
%%   <<"ShippingAddress">> => update_address()
%% }
-type update_profile_request() :: #{binary() => any()}.


%% Example:
%% get_calculated_attribute_for_profile_response() :: #{
%%   <<"CalculatedAttributeName">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"IsDataPartial">> => string(),
%%   <<"Value">> => string()
%% }
-type get_calculated_attribute_for_profile_response() :: #{binary() => any()}.


%% Example:
%% list_rule_based_matches_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_rule_based_matches_request() :: #{binary() => any()}.


%% Example:
%% create_event_trigger_request() :: #{
%%   <<"Description">> => string(),
%%   <<"EventTriggerConditions">> := list(event_trigger_condition()()),
%%   <<"EventTriggerLimits">> => event_trigger_limits(),
%%   <<"ObjectTypeName">> := string(),
%%   <<"SegmentFilter">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_event_trigger_request() :: #{binary() => any()}.


%% Example:
%% profile_dimension() :: #{
%%   <<"DimensionType">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type profile_dimension() :: #{binary() => any()}.


%% Example:
%% batch_get_calculated_attribute_for_profile_response() :: #{
%%   <<"CalculatedAttributeValues">> => list(calculated_attribute_value()()),
%%   <<"ConditionOverrides">> => condition_overrides(),
%%   <<"Errors">> => list(batch_get_calculated_attribute_for_profile_error()())
%% }
-type batch_get_calculated_attribute_for_profile_response() :: #{binary() => any()}.


%% Example:
%% list_event_streams_response() :: #{
%%   <<"Items">> => list(event_stream_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_event_streams_response() :: #{binary() => any()}.


%% Example:
%% list_object_type_attributes_response() :: #{
%%   <<"Items">> => list(list_object_type_attribute_item()()),
%%   <<"NextToken">> => string()
%% }
-type list_object_type_attributes_response() :: #{binary() => any()}.


%% Example:
%% list_profile_objects_response() :: #{
%%   <<"Items">> => list(list_profile_objects_item()()),
%%   <<"NextToken">> => string()
%% }
-type list_profile_objects_response() :: #{binary() => any()}.


%% Example:
%% list_workflows_item() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"StatusDescription">> => string(),
%%   <<"WorkflowId">> => string(),
%%   <<"WorkflowType">> => list(any())
%% }
-type list_workflows_item() :: #{binary() => any()}.


%% Example:
%% merge_profiles_request() :: #{
%%   <<"FieldSourceProfileIds">> => field_source_profile_ids(),
%%   <<"MainProfileId">> := string(),
%%   <<"ProfileIdsToBeMerged">> := list(string()())
%% }
-type merge_profiles_request() :: #{binary() => any()}.


%% Example:
%% appflow_integration_workflow_metrics() :: #{
%%   <<"RecordsProcessed">> => float(),
%%   <<"StepsCompleted">> => float(),
%%   <<"TotalSteps">> => float()
%% }
-type appflow_integration_workflow_metrics() :: #{binary() => any()}.


%% Example:
%% get_event_trigger_response() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"EventTriggerConditions">> => list(event_trigger_condition()()),
%%   <<"EventTriggerLimits">> => event_trigger_limits(),
%%   <<"EventTriggerName">> => string(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"ObjectTypeName">> => string(),
%%   <<"SegmentFilter">> => string(),
%%   <<"Tags">> => map()
%% }
-type get_event_trigger_response() :: #{binary() => any()}.


%% Example:
%% list_domains_response() :: #{
%%   <<"Items">> => list(list_domain_item()()),
%%   <<"NextToken">> => string()
%% }
-type list_domains_response() :: #{binary() => any()}.


%% Example:
%% get_profile_object_type_template_response() :: #{
%%   <<"AllowProfileCreation">> => boolean(),
%%   <<"Fields">> => map(),
%%   <<"Keys">> => map(),
%%   <<"SourceLastUpdatedTimestampFormat">> => string(),
%%   <<"SourceName">> => string(),
%%   <<"SourceObject">> => string(),
%%   <<"TemplateId">> => string()
%% }
-type get_profile_object_type_template_response() :: #{binary() => any()}.


%% Example:
%% create_profile_response() :: #{
%%   <<"ProfileId">> => string()
%% }
-type create_profile_response() :: #{binary() => any()}.


%% Example:
%% get_matches_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_matches_request() :: #{binary() => any()}.


%% Example:
%% list_profile_object_types_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_profile_object_types_request() :: #{binary() => any()}.


%% Example:
%% list_workflows_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"QueryEndDate">> => non_neg_integer(),
%%   <<"QueryStartDate">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"WorkflowType">> => list(any())
%% }
-type list_workflows_request() :: #{binary() => any()}.


%% Example:
%% batch_get_profile_response() :: #{
%%   <<"Errors">> => list(batch_get_profile_error()()),
%%   <<"Profiles">> => list(profile()())
%% }
-type batch_get_profile_response() :: #{binary() => any()}.


%% Example:
%% exporting_config() :: #{
%%   <<"S3Exporting">> => s3_exporting_config()
%% }
-type exporting_config() :: #{binary() => any()}.


%% Example:
%% destination_summary() :: #{
%%   <<"Status">> => list(any()),
%%   <<"UnhealthySince">> => non_neg_integer(),
%%   <<"Uri">> => string()
%% }
-type destination_summary() :: #{binary() => any()}.


%% Example:
%% get_event_stream_response() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DestinationDetails">> => event_stream_destination_details(),
%%   <<"DomainName">> => string(),
%%   <<"EventStreamArn">> => string(),
%%   <<"State">> => list(any()),
%%   <<"StoppedSince">> => non_neg_integer(),
%%   <<"Tags">> => map()
%% }
-type get_event_stream_response() :: #{binary() => any()}.


%% Example:
%% s3_exporting_location() :: #{
%%   <<"S3BucketName">> => string(),
%%   <<"S3KeyName">> => string()
%% }
-type s3_exporting_location() :: #{binary() => any()}.


%% Example:
%% create_segment_definition_response() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"SegmentDefinitionArn">> => string(),
%%   <<"SegmentDefinitionName">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_segment_definition_response() :: #{binary() => any()}.


%% Example:
%% matching_response() :: #{
%%   <<"AutoMerging">> => auto_merging(),
%%   <<"Enabled">> => boolean(),
%%   <<"ExportingConfig">> => exporting_config(),
%%   <<"JobSchedule">> => job_schedule()
%% }
-type matching_response() :: #{binary() => any()}.


%% Example:
%% conditions() :: #{
%%   <<"ObjectCount">> => integer(),
%%   <<"Range">> => range(),
%%   <<"Threshold">> => threshold()
%% }
-type conditions() :: #{binary() => any()}.


%% Example:
%% source_segment() :: #{
%%   <<"SegmentDefinitionName">> => string()
%% }
-type source_segment() :: #{binary() => any()}.


%% Example:
%% get_auto_merging_preview_request() :: #{
%%   <<"ConflictResolution">> := conflict_resolution(),
%%   <<"Consolidation">> := consolidation(),
%%   <<"MinAllowedConfidenceScoreForMerging">> => float()
%% }
-type get_auto_merging_preview_request() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% source_connector_properties() :: #{
%%   <<"Marketo">> => marketo_source_properties(),
%%   <<"S3">> => s3_source_properties(),
%%   <<"Salesforce">> => salesforce_source_properties(),
%%   <<"ServiceNow">> => service_now_source_properties(),
%%   <<"Zendesk">> => zendesk_source_properties()
%% }
-type source_connector_properties() :: #{binary() => any()}.


%% Example:
%% get_integration_request() :: #{
%%   <<"Uri">> := string()
%% }
-type get_integration_request() :: #{binary() => any()}.


%% Example:
%% event_trigger_dimension() :: #{
%%   <<"ObjectAttributes">> => list(object_attribute()())
%% }
-type event_trigger_dimension() :: #{binary() => any()}.


%% Example:
%% list_calculated_attribute_definitions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_calculated_attribute_definitions_request() :: #{binary() => any()}.


%% Example:
%% consolidation() :: #{
%%   <<"MatchingAttributesList">> => list(list(string()())())
%% }
-type consolidation() :: #{binary() => any()}.


%% Example:
%% rule_based_matching_request() :: #{
%%   <<"AttributeTypesSelector">> => attribute_types_selector(),
%%   <<"ConflictResolution">> => conflict_resolution(),
%%   <<"Enabled">> => boolean(),
%%   <<"ExportingConfig">> => exporting_config(),
%%   <<"MatchingRules">> => list(matching_rule()()),
%%   <<"MaxAllowedRuleLevelForMatching">> => integer(),
%%   <<"MaxAllowedRuleLevelForMerging">> => integer()
%% }
-type rule_based_matching_request() :: #{binary() => any()}.


%% Example:
%% object_type_key() :: #{
%%   <<"FieldNames">> => list(string()()),
%%   <<"StandardIdentifiers">> => list(list(any())())
%% }
-type object_type_key() :: #{binary() => any()}.


%% Example:
%% get_matches_response() :: #{
%%   <<"MatchGenerationDate">> => non_neg_integer(),
%%   <<"Matches">> => list(match_item()()),
%%   <<"NextToken">> => string(),
%%   <<"PotentialMatches">> => integer()
%% }
-type get_matches_response() :: #{binary() => any()}.


%% Example:
%% update_event_trigger_response() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"EventTriggerConditions">> => list(event_trigger_condition()()),
%%   <<"EventTriggerLimits">> => event_trigger_limits(),
%%   <<"EventTriggerName">> => string(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"ObjectTypeName">> => string(),
%%   <<"SegmentFilter">> => string(),
%%   <<"Tags">> => map()
%% }
-type update_event_trigger_response() :: #{binary() => any()}.


%% Example:
%% create_segment_snapshot_response() :: #{
%%   <<"SnapshotId">> => string()
%% }
-type create_segment_snapshot_response() :: #{binary() => any()}.


%% Example:
%% filter() :: #{
%%   <<"Groups">> => list(filter_group()()),
%%   <<"Include">> => list(any())
%% }
-type filter() :: #{binary() => any()}.


%% Example:
%% get_segment_snapshot_response() :: #{
%%   <<"DataFormat">> => list(any()),
%%   <<"DestinationUri">> => string(),
%%   <<"EncryptionKey">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"SnapshotId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type get_segment_snapshot_response() :: #{binary() => any()}.


%% Example:
%% list_profile_objects_item() :: #{
%%   <<"Object">> => string(),
%%   <<"ObjectTypeName">> => string(),
%%   <<"ProfileObjectUniqueKey">> => string()
%% }
-type list_profile_objects_item() :: #{binary() => any()}.


%% Example:
%% list_calculated_attributes_for_profile_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_calculated_attributes_for_profile_request() :: #{binary() => any()}.


%% Example:
%% get_domain_response() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DeadLetterQueueUrl">> => string(),
%%   <<"DefaultEncryptionKey">> => string(),
%%   <<"DefaultExpirationDays">> => integer(),
%%   <<"DomainName">> => string(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"Matching">> => matching_response(),
%%   <<"RuleBasedMatching">> => rule_based_matching_response(),
%%   <<"Stats">> => domain_stats(),
%%   <<"Tags">> => map()
%% }
-type get_domain_response() :: #{binary() => any()}.


%% Example:
%% field_source_profile_ids() :: #{
%%   <<"AccountNumber">> => string(),
%%   <<"AdditionalInformation">> => string(),
%%   <<"Address">> => string(),
%%   <<"Attributes">> => map(),
%%   <<"BillingAddress">> => string(),
%%   <<"BirthDate">> => string(),
%%   <<"BusinessEmailAddress">> => string(),
%%   <<"BusinessName">> => string(),
%%   <<"BusinessPhoneNumber">> => string(),
%%   <<"EmailAddress">> => string(),
%%   <<"FirstName">> => string(),
%%   <<"Gender">> => string(),
%%   <<"HomePhoneNumber">> => string(),
%%   <<"LastName">> => string(),
%%   <<"MailingAddress">> => string(),
%%   <<"MiddleName">> => string(),
%%   <<"MobilePhoneNumber">> => string(),
%%   <<"PartyType">> => string(),
%%   <<"PersonalEmailAddress">> => string(),
%%   <<"PhoneNumber">> => string(),
%%   <<"ShippingAddress">> => string()
%% }
-type field_source_profile_ids() :: #{binary() => any()}.


%% Example:
%% event_stream_destination_details() :: #{
%%   <<"Message">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"UnhealthySince">> => non_neg_integer(),
%%   <<"Uri">> => string()
%% }
-type event_stream_destination_details() :: #{binary() => any()}.


%% Example:
%% filter_attribute_dimension() :: #{
%%   <<"DimensionType">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type filter_attribute_dimension() :: #{binary() => any()}.


%% Example:
%% segment_group() :: #{
%%   <<"Groups">> => list(group()()),
%%   <<"Include">> => list(any())
%% }
-type segment_group() :: #{binary() => any()}.

%% Example:
%% delete_event_trigger_request() :: #{}
-type delete_event_trigger_request() :: #{}.


%% Example:
%% search_profiles_request() :: #{
%%   <<"AdditionalSearchKeys">> => list(additional_search_key()()),
%%   <<"KeyName">> := string(),
%%   <<"LogicalOperator">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Values">> := list(string()())
%% }
-type search_profiles_request() :: #{binary() => any()}.


%% Example:
%% list_segment_definitions_response() :: #{
%%   <<"Items">> => list(segment_definition_item()()),
%%   <<"NextToken">> => string()
%% }
-type list_segment_definitions_response() :: #{binary() => any()}.


%% Example:
%% get_segment_estimate_response() :: #{
%%   <<"DomainName">> => string(),
%%   <<"Estimate">> => string(),
%%   <<"EstimateId">> => string(),
%%   <<"Message">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusCode">> => integer()
%% }
-type get_segment_estimate_response() :: #{binary() => any()}.

%% Example:
%% get_profile_object_type_request() :: #{}
-type get_profile_object_type_request() :: #{}.


%% Example:
%% list_domains_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_domains_request() :: #{binary() => any()}.

%% Example:
%% get_event_stream_request() :: #{}
-type get_event_stream_request() :: #{}.


%% Example:
%% source_flow_config() :: #{
%%   <<"ConnectorProfileName">> => string(),
%%   <<"ConnectorType">> => list(any()),
%%   <<"IncrementalPullConfig">> => incremental_pull_config(),
%%   <<"SourceConnectorProperties">> => source_connector_properties()
%% }
-type source_flow_config() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% create_event_trigger_response() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"EventTriggerConditions">> => list(event_trigger_condition()()),
%%   <<"EventTriggerLimits">> => event_trigger_limits(),
%%   <<"EventTriggerName">> => string(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"ObjectTypeName">> => string(),
%%   <<"SegmentFilter">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_event_trigger_response() :: #{binary() => any()}.


%% Example:
%% object_attribute() :: #{
%%   <<"ComparisonOperator">> => list(any()),
%%   <<"FieldName">> => string(),
%%   <<"Source">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type object_attribute() :: #{binary() => any()}.

%% Example:
%% get_segment_snapshot_request() :: #{}
-type get_segment_snapshot_request() :: #{}.


%% Example:
%% salesforce_source_properties() :: #{
%%   <<"EnableDynamicFieldUpdate">> => boolean(),
%%   <<"IncludeDeletedRecords">> => boolean(),
%%   <<"Object">> => string()
%% }
-type salesforce_source_properties() :: #{binary() => any()}.


%% Example:
%% get_workflow_steps_response() :: #{
%%   <<"Items">> => list(workflow_step_item()()),
%%   <<"NextToken">> => string(),
%%   <<"WorkflowId">> => string(),
%%   <<"WorkflowType">> => list(any())
%% }
-type get_workflow_steps_response() :: #{binary() => any()}.


%% Example:
%% list_calculated_attributes_for_profile_response() :: #{
%%   <<"Items">> => list(list_calculated_attribute_for_profile_item()()),
%%   <<"NextToken">> => string()
%% }
-type list_calculated_attributes_for_profile_response() :: #{binary() => any()}.


%% Example:
%% get_workflow_steps_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_workflow_steps_request() :: #{binary() => any()}.


%% Example:
%% get_segment_membership_request() :: #{
%%   <<"ProfileIds">> := list(string()())
%% }
-type get_segment_membership_request() :: #{binary() => any()}.

%% Example:
%% delete_calculated_attribute_definition_request() :: #{}
-type delete_calculated_attribute_definition_request() :: #{}.


%% Example:
%% filter_dimension() :: #{
%%   <<"Attributes">> => map()
%% }
-type filter_dimension() :: #{binary() => any()}.


%% Example:
%% get_auto_merging_preview_response() :: #{
%%   <<"DomainName">> => string(),
%%   <<"NumberOfMatchesInSample">> => float(),
%%   <<"NumberOfProfilesInSample">> => float(),
%%   <<"NumberOfProfilesWillBeMerged">> => float()
%% }
-type get_auto_merging_preview_response() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% search_profiles_response() :: #{
%%   <<"Items">> => list(profile()()),
%%   <<"NextToken">> => string()
%% }
-type search_profiles_response() :: #{binary() => any()}.


%% Example:
%% create_integration_workflow_response() :: #{
%%   <<"Message">> => string(),
%%   <<"WorkflowId">> => string()
%% }
-type create_integration_workflow_response() :: #{binary() => any()}.


%% Example:
%% update_calculated_attribute_definition_request() :: #{
%%   <<"Conditions">> => conditions(),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string()
%% }
-type update_calculated_attribute_definition_request() :: #{binary() => any()}.


%% Example:
%% create_segment_definition_request() :: #{
%%   <<"Description">> => string(),
%%   <<"DisplayName">> := string(),
%%   <<"SegmentGroups">> := segment_group(),
%%   <<"Tags">> => map()
%% }
-type create_segment_definition_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% identity_resolution_job() :: #{
%%   <<"DomainName">> => string(),
%%   <<"ExportingLocation">> => exporting_location(),
%%   <<"JobEndTime">> => non_neg_integer(),
%%   <<"JobId">> => string(),
%%   <<"JobStartTime">> => non_neg_integer(),
%%   <<"JobStats">> => job_stats(),
%%   <<"Message">> => string(),
%%   <<"Status">> => list(any())
%% }
-type identity_resolution_job() :: #{binary() => any()}.


%% Example:
%% batch_get_calculated_attribute_for_profile_request() :: #{
%%   <<"ConditionOverrides">> => condition_overrides(),
%%   <<"ProfileIds">> := list(string()())
%% }
-type batch_get_calculated_attribute_for_profile_request() :: #{binary() => any()}.

%% Example:
%% delete_event_stream_response() :: #{}
-type delete_event_stream_response() :: #{}.


%% Example:
%% attribute_types_selector() :: #{
%%   <<"Address">> => list(string()()),
%%   <<"AttributeMatchingModel">> => list(any()),
%%   <<"EmailAddress">> => list(string()()),
%%   <<"PhoneNumber">> => list(string()())
%% }
-type attribute_types_selector() :: #{binary() => any()}.


%% Example:
%% update_profile_response() :: #{
%%   <<"ProfileId">> => string()
%% }
-type update_profile_response() :: #{binary() => any()}.


%% Example:
%% put_profile_object_type_request() :: #{
%%   <<"AllowProfileCreation">> => boolean(),
%%   <<"Description">> := string(),
%%   <<"EncryptionKey">> => string(),
%%   <<"ExpirationDays">> => integer(),
%%   <<"Fields">> => map(),
%%   <<"Keys">> => map(),
%%   <<"MaxProfileObjectCount">> => integer(),
%%   <<"SourceLastUpdatedTimestampFormat">> => string(),
%%   <<"Tags">> => map(),
%%   <<"TemplateId">> => string()
%% }
-type put_profile_object_type_request() :: #{binary() => any()}.


%% Example:
%% batch() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type batch() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% get_segment_membership_response() :: #{
%%   <<"Failures">> => list(profile_query_failures()()),
%%   <<"Profiles">> => list(profile_query_result()()),
%%   <<"SegmentDefinitionName">> => string()
%% }
-type get_segment_membership_response() :: #{binary() => any()}.


%% Example:
%% s3_exporting_config() :: #{
%%   <<"S3BucketName">> => string(),
%%   <<"S3KeyName">> => string()
%% }
-type s3_exporting_config() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% attribute_dimension() :: #{
%%   <<"DimensionType">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type attribute_dimension() :: #{binary() => any()}.


%% Example:
%% group() :: #{
%%   <<"Dimensions">> => list(list()()),
%%   <<"SourceSegments">> => list(source_segment()()),
%%   <<"SourceType">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type group() :: #{binary() => any()}.


%% Example:
%% create_domain_response() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DeadLetterQueueUrl">> => string(),
%%   <<"DefaultEncryptionKey">> => string(),
%%   <<"DefaultExpirationDays">> => integer(),
%%   <<"DomainName">> => string(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"Matching">> => matching_response(),
%%   <<"RuleBasedMatching">> => rule_based_matching_response(),
%%   <<"Tags">> => map()
%% }
-type create_domain_response() :: #{binary() => any()}.


%% Example:
%% list_profile_objects_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ObjectFilter">> => object_filter(),
%%   <<"ObjectTypeName">> := string(),
%%   <<"ProfileId">> := string()
%% }
-type list_profile_objects_request() :: #{binary() => any()}.


%% Example:
%% list_profile_object_type_templates_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_profile_object_type_templates_request() :: #{binary() => any()}.


%% Example:
%% event_trigger_summary_item() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"EventTriggerName">> => string(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"ObjectTypeName">> => string(),
%%   <<"Tags">> => map()
%% }
-type event_trigger_summary_item() :: #{binary() => any()}.


%% Example:
%% create_event_stream_request() :: #{
%%   <<"Tags">> => map(),
%%   <<"Uri">> := string()
%% }
-type create_event_stream_request() :: #{binary() => any()}.


%% Example:
%% threshold() :: #{
%%   <<"Operator">> => list(any()),
%%   <<"Value">> => string()
%% }
-type threshold() :: #{binary() => any()}.


%% Example:
%% detected_profile_object_type() :: #{
%%   <<"Fields">> => map(),
%%   <<"Keys">> => map(),
%%   <<"SourceLastUpdatedTimestampFormat">> => string()
%% }
-type detected_profile_object_type() :: #{binary() => any()}.


%% Example:
%% batch_get_profile_request() :: #{
%%   <<"ProfileIds">> := list(string()())
%% }
-type batch_get_profile_request() :: #{binary() => any()}.


%% Example:
%% delete_segment_definition_response() :: #{
%%   <<"Message">> => string()
%% }
-type delete_segment_definition_response() :: #{binary() => any()}.

%% Example:
%% delete_profile_object_type_request() :: #{}
-type delete_profile_object_type_request() :: #{}.


%% Example:
%% update_event_trigger_request() :: #{
%%   <<"Description">> => string(),
%%   <<"EventTriggerConditions">> => list(event_trigger_condition()()),
%%   <<"EventTriggerLimits">> => event_trigger_limits(),
%%   <<"ObjectTypeName">> => string(),
%%   <<"SegmentFilter">> => string()
%% }
-type update_event_trigger_request() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% period() :: #{
%%   <<"MaxInvocationsPerProfile">> => integer(),
%%   <<"Unit">> => list(any()),
%%   <<"Unlimited">> => boolean(),
%%   <<"Value">> => integer()
%% }
-type period() :: #{binary() => any()}.


%% Example:
%% connector_operator() :: #{
%%   <<"Marketo">> => list(any()),
%%   <<"S3">> => list(any()),
%%   <<"Salesforce">> => list(any()),
%%   <<"ServiceNow">> => list(any()),
%%   <<"Zendesk">> => list(any())
%% }
-type connector_operator() :: #{binary() => any()}.

%% Example:
%% profile_attribute_values_request() :: #{}
-type profile_attribute_values_request() :: #{}.

%% Example:
%% get_event_trigger_request() :: #{}
-type get_event_trigger_request() :: #{}.


%% Example:
%% put_profile_object_request() :: #{
%%   <<"Object">> := string(),
%%   <<"ObjectTypeName">> := string()
%% }
-type put_profile_object_request() :: #{binary() => any()}.

%% Example:
%% delete_event_stream_request() :: #{}
-type delete_event_stream_request() :: #{}.


%% Example:
%% appflow_integration() :: #{
%%   <<"Batches">> => list(batch()()),
%%   <<"FlowDefinition">> => flow_definition()
%% }
-type appflow_integration() :: #{binary() => any()}.


%% Example:
%% list_calculated_attribute_for_profile_item() :: #{
%%   <<"CalculatedAttributeName">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"IsDataPartial">> => string(),
%%   <<"Value">> => string()
%% }
-type list_calculated_attribute_for_profile_item() :: #{binary() => any()}.


%% Example:
%% list_event_streams_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_event_streams_request() :: #{binary() => any()}.


%% Example:
%% address() :: #{
%%   <<"Address1">> => string(),
%%   <<"Address2">> => string(),
%%   <<"Address3">> => string(),
%%   <<"Address4">> => string(),
%%   <<"City">> => string(),
%%   <<"Country">> => string(),
%%   <<"County">> => string(),
%%   <<"PostalCode">> => string(),
%%   <<"Province">> => string(),
%%   <<"State">> => string()
%% }
-type address() :: #{binary() => any()}.


%% Example:
%% profile_attribute_values_response() :: #{
%%   <<"AttributeName">> => string(),
%%   <<"DomainName">> => string(),
%%   <<"Items">> => list(attribute_value_item()()),
%%   <<"StatusCode">> => integer()
%% }
-type profile_attribute_values_response() :: #{binary() => any()}.


%% Example:
%% delete_profile_object_request() :: #{
%%   <<"ObjectTypeName">> := string(),
%%   <<"ProfileId">> := string(),
%%   <<"ProfileObjectUniqueKey">> := string()
%% }
-type delete_profile_object_request() :: #{binary() => any()}.


%% Example:
%% list_calculated_attribute_definitions_response() :: #{
%%   <<"Items">> => list(list_calculated_attribute_definition_item()()),
%%   <<"NextToken">> => string()
%% }
-type list_calculated_attribute_definitions_response() :: #{binary() => any()}.

%% Example:
%% get_segment_estimate_request() :: #{}
-type get_segment_estimate_request() :: #{}.


%% Example:
%% list_workflows_response() :: #{
%%   <<"Items">> => list(list_workflows_item()()),
%%   <<"NextToken">> => string()
%% }
-type list_workflows_response() :: #{binary() => any()}.


%% Example:
%% extra_length_value_profile_dimension() :: #{
%%   <<"DimensionType">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type extra_length_value_profile_dimension() :: #{binary() => any()}.

%% Example:
%% get_segment_definition_request() :: #{}
-type get_segment_definition_request() :: #{}.


%% Example:
%% list_profile_object_type_templates_response() :: #{
%%   <<"Items">> => list(list_profile_object_type_template_item()()),
%%   <<"NextToken">> => string()
%% }
-type list_profile_object_type_templates_response() :: #{binary() => any()}.


%% Example:
%% delete_profile_object_type_response() :: #{
%%   <<"Message">> => string()
%% }
-type delete_profile_object_type_response() :: #{binary() => any()}.


%% Example:
%% list_account_integrations_response() :: #{
%%   <<"Items">> => list(list_integration_item()()),
%%   <<"NextToken">> => string()
%% }
-type list_account_integrations_response() :: #{binary() => any()}.


%% Example:
%% service_now_source_properties() :: #{
%%   <<"Object">> => string()
%% }
-type service_now_source_properties() :: #{binary() => any()}.


%% Example:
%% list_integration_item() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DomainName">> => string(),
%%   <<"EventTriggerNames">> => list(string()()),
%%   <<"IsUnstructured">> => boolean(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"ObjectTypeName">> => string(),
%%   <<"ObjectTypeNames">> => map(),
%%   <<"RoleArn">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Uri">> => string(),
%%   <<"WorkflowId">> => string()
%% }
-type list_integration_item() :: #{binary() => any()}.

%% Example:
%% get_profile_object_type_template_request() :: #{}
-type get_profile_object_type_template_request() :: #{}.


%% Example:
%% workflow_metrics() :: #{
%%   <<"AppflowIntegration">> => appflow_integration_workflow_metrics()
%% }
-type workflow_metrics() :: #{binary() => any()}.


%% Example:
%% incremental_pull_config() :: #{
%%   <<"DatetimeTypeFieldName">> => string()
%% }
-type incremental_pull_config() :: #{binary() => any()}.


%% Example:
%% batch_get_profile_error() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string(),
%%   <<"ProfileId">> => string()
%% }
-type batch_get_profile_error() :: #{binary() => any()}.


%% Example:
%% create_event_stream_response() :: #{
%%   <<"EventStreamArn">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_event_stream_response() :: #{binary() => any()}.


%% Example:
%% trigger_config() :: #{
%%   <<"TriggerProperties">> => trigger_properties(),
%%   <<"TriggerType">> => list(any())
%% }
-type trigger_config() :: #{binary() => any()}.


%% Example:
%% add_profile_key_request() :: #{
%%   <<"KeyName">> := string(),
%%   <<"ProfileId">> := string(),
%%   <<"Values">> := list(string()())
%% }
-type add_profile_key_request() :: #{binary() => any()}.


%% Example:
%% matching_request() :: #{
%%   <<"AutoMerging">> => auto_merging(),
%%   <<"Enabled">> => boolean(),
%%   <<"ExportingConfig">> => exporting_config(),
%%   <<"JobSchedule">> => job_schedule()
%% }
-type matching_request() :: #{binary() => any()}.


%% Example:
%% profile_attributes() :: #{
%%   <<"AccountNumber">> => profile_dimension(),
%%   <<"AdditionalInformation">> => extra_length_value_profile_dimension(),
%%   <<"Address">> => address_dimension(),
%%   <<"Attributes">> => map(),
%%   <<"BillingAddress">> => address_dimension(),
%%   <<"BirthDate">> => date_dimension(),
%%   <<"BusinessEmailAddress">> => profile_dimension(),
%%   <<"BusinessName">> => profile_dimension(),
%%   <<"BusinessPhoneNumber">> => profile_dimension(),
%%   <<"EmailAddress">> => profile_dimension(),
%%   <<"FirstName">> => profile_dimension(),
%%   <<"GenderString">> => profile_dimension(),
%%   <<"HomePhoneNumber">> => profile_dimension(),
%%   <<"LastName">> => profile_dimension(),
%%   <<"MailingAddress">> => address_dimension(),
%%   <<"MiddleName">> => profile_dimension(),
%%   <<"MobilePhoneNumber">> => profile_dimension(),
%%   <<"PartyTypeString">> => profile_dimension(),
%%   <<"PersonalEmailAddress">> => profile_dimension(),
%%   <<"PhoneNumber">> => profile_dimension(),
%%   <<"ShippingAddress">> => address_dimension()
%% }
-type profile_attributes() :: #{binary() => any()}.


%% Example:
%% get_calculated_attribute_definition_response() :: #{
%%   <<"AttributeDetails">> => attribute_details(),
%%   <<"CalculatedAttributeName">> => string(),
%%   <<"Conditions">> => conditions(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"Filter">> => filter(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"Statistic">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type get_calculated_attribute_definition_response() :: #{binary() => any()}.


%% Example:
%% create_segment_estimate_response() :: #{
%%   <<"DomainName">> => string(),
%%   <<"EstimateId">> => string(),
%%   <<"StatusCode">> => integer()
%% }
-type create_segment_estimate_response() :: #{binary() => any()}.


%% Example:
%% list_profile_object_types_response() :: #{
%%   <<"Items">> => list(list_profile_object_type_item()()),
%%   <<"NextToken">> => string()
%% }
-type list_profile_object_types_response() :: #{binary() => any()}.


%% Example:
%% list_integrations_response() :: #{
%%   <<"Items">> => list(list_integration_item()()),
%%   <<"NextToken">> => string()
%% }
-type list_integrations_response() :: #{binary() => any()}.


%% Example:
%% get_workflow_response() :: #{
%%   <<"Attributes">> => workflow_attributes(),
%%   <<"ErrorDescription">> => string(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"Metrics">> => workflow_metrics(),
%%   <<"StartDate">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"WorkflowId">> => string(),
%%   <<"WorkflowType">> => list(any())
%% }
-type get_workflow_response() :: #{binary() => any()}.


%% Example:
%% event_stream_summary() :: #{
%%   <<"DestinationSummary">> => destination_summary(),
%%   <<"DomainName">> => string(),
%%   <<"EventStreamArn">> => string(),
%%   <<"EventStreamName">> => string(),
%%   <<"State">> => list(any()),
%%   <<"StoppedSince">> => non_neg_integer(),
%%   <<"Tags">> => map()
%% }
-type event_stream_summary() :: #{binary() => any()}.

-type add_profile_key_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type batch_get_calculated_attribute_for_profile_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type batch_get_profile_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_calculated_attribute_definition_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_domain_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_event_stream_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_event_trigger_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_integration_workflow_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_profile_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_segment_definition_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_segment_estimate_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_segment_snapshot_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_calculated_attribute_definition_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_domain_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_event_stream_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_event_trigger_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_integration_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_profile_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_profile_key_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_profile_object_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_profile_object_type_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_segment_definition_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_workflow_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type detect_profile_object_type_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_auto_merging_preview_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_calculated_attribute_definition_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_calculated_attribute_for_profile_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_domain_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_event_stream_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_event_trigger_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_identity_resolution_job_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_integration_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_matches_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_profile_object_type_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_profile_object_type_template_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_segment_definition_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_segment_estimate_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_segment_membership_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_segment_snapshot_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_similar_profiles_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_workflow_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_workflow_steps_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_account_integrations_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_calculated_attribute_definitions_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_calculated_attributes_for_profile_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_domains_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_event_streams_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_event_triggers_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_identity_resolution_jobs_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_integrations_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_object_type_attributes_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_profile_attribute_values_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_profile_object_type_templates_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_profile_object_types_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_profile_objects_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_rule_based_matches_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_segment_definitions_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_workflows_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type merge_profiles_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_integration_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_profile_object_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_profile_object_type_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type search_profiles_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_calculated_attribute_definition_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_domain_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_event_trigger_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_profile_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a new key value with a specific profile, such as a Contact
%% Record
%% ContactId.
%%
%% A profile object can have a single unique key and any number of additional
%% keys that can
%% be used to identify the profile that it belongs to.
-spec add_profile_key(aws_client:aws_client(), binary() | list(), add_profile_key_request()) ->
    {ok, add_profile_key_response(), tuple()} |
    {error, any()} |
    {error, add_profile_key_errors(), tuple()}.
add_profile_key(Client, DomainName, Input) ->
    add_profile_key(Client, DomainName, Input, []).

-spec add_profile_key(aws_client:aws_client(), binary() | list(), add_profile_key_request(), proplists:proplist()) ->
    {ok, add_profile_key_response(), tuple()} |
    {error, any()} |
    {error, add_profile_key_errors(), tuple()}.
add_profile_key(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/profiles/keys"],
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

%% @doc Fetch the possible attribute values given the attribute name.
-spec batch_get_calculated_attribute_for_profile(aws_client:aws_client(), binary() | list(), binary() | list(), batch_get_calculated_attribute_for_profile_request()) ->
    {ok, batch_get_calculated_attribute_for_profile_response(), tuple()} |
    {error, any()} |
    {error, batch_get_calculated_attribute_for_profile_errors(), tuple()}.
batch_get_calculated_attribute_for_profile(Client, CalculatedAttributeName, DomainName, Input) ->
    batch_get_calculated_attribute_for_profile(Client, CalculatedAttributeName, DomainName, Input, []).

-spec batch_get_calculated_attribute_for_profile(aws_client:aws_client(), binary() | list(), binary() | list(), batch_get_calculated_attribute_for_profile_request(), proplists:proplist()) ->
    {ok, batch_get_calculated_attribute_for_profile_response(), tuple()} |
    {error, any()} |
    {error, batch_get_calculated_attribute_for_profile_errors(), tuple()}.
batch_get_calculated_attribute_for_profile(Client, CalculatedAttributeName, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/calculated-attributes/", aws_util:encode_uri(CalculatedAttributeName), "/batch-get-for-profiles"],
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

%% @doc Get a batch of profiles.
-spec batch_get_profile(aws_client:aws_client(), binary() | list(), batch_get_profile_request()) ->
    {ok, batch_get_profile_response(), tuple()} |
    {error, any()} |
    {error, batch_get_profile_errors(), tuple()}.
batch_get_profile(Client, DomainName, Input) ->
    batch_get_profile(Client, DomainName, Input, []).

-spec batch_get_profile(aws_client:aws_client(), binary() | list(), batch_get_profile_request(), proplists:proplist()) ->
    {ok, batch_get_profile_response(), tuple()} |
    {error, any()} |
    {error, batch_get_profile_errors(), tuple()}.
batch_get_profile(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/batch-get-profiles"],
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

%% @doc Creates a new calculated attribute definition.
%%
%% After creation, new object data ingested
%% into Customer Profiles will be included in the calculated attribute, which
%% can be retrieved
%% for a profile using the GetCalculatedAttributeForProfile:
%% https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetCalculatedAttributeForProfile.html
%% API. Defining a calculated attribute makes it
%% available for all profiles within a domain. Each calculated attribute can
%% only reference
%% one `ObjectType' and at most, two fields from that
%% `ObjectType'.
-spec create_calculated_attribute_definition(aws_client:aws_client(), binary() | list(), binary() | list(), create_calculated_attribute_definition_request()) ->
    {ok, create_calculated_attribute_definition_response(), tuple()} |
    {error, any()} |
    {error, create_calculated_attribute_definition_errors(), tuple()}.
create_calculated_attribute_definition(Client, CalculatedAttributeName, DomainName, Input) ->
    create_calculated_attribute_definition(Client, CalculatedAttributeName, DomainName, Input, []).

-spec create_calculated_attribute_definition(aws_client:aws_client(), binary() | list(), binary() | list(), create_calculated_attribute_definition_request(), proplists:proplist()) ->
    {ok, create_calculated_attribute_definition_response(), tuple()} |
    {error, any()} |
    {error, create_calculated_attribute_definition_errors(), tuple()}.
create_calculated_attribute_definition(Client, CalculatedAttributeName, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/calculated-attributes/", aws_util:encode_uri(CalculatedAttributeName), ""],
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

%% @doc Creates a domain, which is a container for all customer data, such as
%% customer profile
%% attributes, object types, profile keys, and encryption keys.
%%
%% You can create multiple
%% domains, and each domain can have multiple third-party integrations.
%%
%% Each Amazon Connect instance can be associated with only one domain.
%% Multiple
%% Amazon Connect instances can be associated with one domain.
%%
%% Use this API or UpdateDomain:
%% https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UpdateDomain.html
%% to
%% enable identity
%% resolution:
%% https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html:
%% set `Matching' to true.
%%
%% To prevent cross-service impersonation when you call this API, see
%% Cross-service confused deputy prevention:
%% https://docs.aws.amazon.com/connect/latest/adminguide/cross-service-confused-deputy-prevention.html
%% for sample policies that you should
%% apply.
%%
%% It is not possible to associate a Customer Profiles domain with an Amazon
%% Connect Instance directly from
%% the API. If you would like to create a domain and associate a Customer
%% Profiles domain, use the Amazon Connect
%% admin website. For more information, see Enable Customer Profiles:
%% https://docs.aws.amazon.com/connect/latest/adminguide/enable-customer-profiles.html#enable-customer-profiles-step1.
%%
%% Each Amazon Connect instance can be associated with only one domain.
%% Multiple Amazon Connect instances
%% can be associated with one domain.
-spec create_domain(aws_client:aws_client(), binary() | list(), create_domain_request()) ->
    {ok, create_domain_response(), tuple()} |
    {error, any()} |
    {error, create_domain_errors(), tuple()}.
create_domain(Client, DomainName, Input) ->
    create_domain(Client, DomainName, Input, []).

-spec create_domain(aws_client:aws_client(), binary() | list(), create_domain_request(), proplists:proplist()) ->
    {ok, create_domain_response(), tuple()} |
    {error, any()} |
    {error, create_domain_errors(), tuple()}.
create_domain(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), ""],
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

%% @doc Creates an event stream, which is a subscription to real-time events,
%% such as when
%% profiles are created and updated through Amazon Connect Customer Profiles.
%%
%% Each event stream can be associated with only one Kinesis Data Stream
%% destination in the
%% same region and Amazon Web Services account as the customer profiles
%% domain
-spec create_event_stream(aws_client:aws_client(), binary() | list(), binary() | list(), create_event_stream_request()) ->
    {ok, create_event_stream_response(), tuple()} |
    {error, any()} |
    {error, create_event_stream_errors(), tuple()}.
create_event_stream(Client, DomainName, EventStreamName, Input) ->
    create_event_stream(Client, DomainName, EventStreamName, Input, []).

-spec create_event_stream(aws_client:aws_client(), binary() | list(), binary() | list(), create_event_stream_request(), proplists:proplist()) ->
    {ok, create_event_stream_response(), tuple()} |
    {error, any()} |
    {error, create_event_stream_errors(), tuple()}.
create_event_stream(Client, DomainName, EventStreamName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/event-streams/", aws_util:encode_uri(EventStreamName), ""],
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

%% @doc Creates an event trigger, which specifies the rules when to perform
%% action based on
%% customer's ingested data.
%%
%% Each event stream can be associated with only one integration in the same
%% region and AWS
%% account as the event stream.
-spec create_event_trigger(aws_client:aws_client(), binary() | list(), binary() | list(), create_event_trigger_request()) ->
    {ok, create_event_trigger_response(), tuple()} |
    {error, any()} |
    {error, create_event_trigger_errors(), tuple()}.
create_event_trigger(Client, DomainName, EventTriggerName, Input) ->
    create_event_trigger(Client, DomainName, EventTriggerName, Input, []).

-spec create_event_trigger(aws_client:aws_client(), binary() | list(), binary() | list(), create_event_trigger_request(), proplists:proplist()) ->
    {ok, create_event_trigger_response(), tuple()} |
    {error, any()} |
    {error, create_event_trigger_errors(), tuple()}.
create_event_trigger(Client, DomainName, EventTriggerName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/event-triggers/", aws_util:encode_uri(EventTriggerName), ""],
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

%% @doc Creates an integration workflow.
%%
%% An integration workflow is an async process which
%% ingests historic data and sets up an integration for ongoing updates. The
%% supported Amazon AppFlow sources are Salesforce, ServiceNow, and Marketo.
-spec create_integration_workflow(aws_client:aws_client(), binary() | list(), create_integration_workflow_request()) ->
    {ok, create_integration_workflow_response(), tuple()} |
    {error, any()} |
    {error, create_integration_workflow_errors(), tuple()}.
create_integration_workflow(Client, DomainName, Input) ->
    create_integration_workflow(Client, DomainName, Input, []).

-spec create_integration_workflow(aws_client:aws_client(), binary() | list(), create_integration_workflow_request(), proplists:proplist()) ->
    {ok, create_integration_workflow_response(), tuple()} |
    {error, any()} |
    {error, create_integration_workflow_errors(), tuple()}.
create_integration_workflow(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/workflows/integrations"],
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

%% @doc Creates a standard profile.
%%
%% A standard profile represents the following attributes for a customer
%% profile in a
%% domain.
-spec create_profile(aws_client:aws_client(), binary() | list(), create_profile_request()) ->
    {ok, create_profile_response(), tuple()} |
    {error, any()} |
    {error, create_profile_errors(), tuple()}.
create_profile(Client, DomainName, Input) ->
    create_profile(Client, DomainName, Input, []).

-spec create_profile(aws_client:aws_client(), binary() | list(), create_profile_request(), proplists:proplist()) ->
    {ok, create_profile_response(), tuple()} |
    {error, any()} |
    {error, create_profile_errors(), tuple()}.
create_profile(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/profiles"],
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

%% @doc Creates a segment definition associated to the given domain.
-spec create_segment_definition(aws_client:aws_client(), binary() | list(), binary() | list(), create_segment_definition_request()) ->
    {ok, create_segment_definition_response(), tuple()} |
    {error, any()} |
    {error, create_segment_definition_errors(), tuple()}.
create_segment_definition(Client, DomainName, SegmentDefinitionName, Input) ->
    create_segment_definition(Client, DomainName, SegmentDefinitionName, Input, []).

-spec create_segment_definition(aws_client:aws_client(), binary() | list(), binary() | list(), create_segment_definition_request(), proplists:proplist()) ->
    {ok, create_segment_definition_response(), tuple()} |
    {error, any()} |
    {error, create_segment_definition_errors(), tuple()}.
create_segment_definition(Client, DomainName, SegmentDefinitionName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/segment-definitions/", aws_util:encode_uri(SegmentDefinitionName), ""],
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

%% @doc Creates a segment estimate query.
-spec create_segment_estimate(aws_client:aws_client(), binary() | list(), create_segment_estimate_request()) ->
    {ok, create_segment_estimate_response(), tuple()} |
    {error, any()} |
    {error, create_segment_estimate_errors(), tuple()}.
create_segment_estimate(Client, DomainName, Input) ->
    create_segment_estimate(Client, DomainName, Input, []).

-spec create_segment_estimate(aws_client:aws_client(), binary() | list(), create_segment_estimate_request(), proplists:proplist()) ->
    {ok, create_segment_estimate_response(), tuple()} |
    {error, any()} |
    {error, create_segment_estimate_errors(), tuple()}.
create_segment_estimate(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/segment-estimates"],
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

%% @doc Triggers a job to export a segment to a specified destination.
-spec create_segment_snapshot(aws_client:aws_client(), binary() | list(), binary() | list(), create_segment_snapshot_request()) ->
    {ok, create_segment_snapshot_response(), tuple()} |
    {error, any()} |
    {error, create_segment_snapshot_errors(), tuple()}.
create_segment_snapshot(Client, DomainName, SegmentDefinitionName, Input) ->
    create_segment_snapshot(Client, DomainName, SegmentDefinitionName, Input, []).

-spec create_segment_snapshot(aws_client:aws_client(), binary() | list(), binary() | list(), create_segment_snapshot_request(), proplists:proplist()) ->
    {ok, create_segment_snapshot_response(), tuple()} |
    {error, any()} |
    {error, create_segment_snapshot_errors(), tuple()}.
create_segment_snapshot(Client, DomainName, SegmentDefinitionName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/segments/", aws_util:encode_uri(SegmentDefinitionName), "/snapshots"],
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

%% @doc Deletes an existing calculated attribute definition.
%%
%% Note that deleting a default
%% calculated attribute is possible, however once deleted, you will be unable
%% to undo that
%% action and will need to recreate it on your own using the
%% CreateCalculatedAttributeDefinition API if you want it back.
-spec delete_calculated_attribute_definition(aws_client:aws_client(), binary() | list(), binary() | list(), delete_calculated_attribute_definition_request()) ->
    {ok, delete_calculated_attribute_definition_response(), tuple()} |
    {error, any()} |
    {error, delete_calculated_attribute_definition_errors(), tuple()}.
delete_calculated_attribute_definition(Client, CalculatedAttributeName, DomainName, Input) ->
    delete_calculated_attribute_definition(Client, CalculatedAttributeName, DomainName, Input, []).

-spec delete_calculated_attribute_definition(aws_client:aws_client(), binary() | list(), binary() | list(), delete_calculated_attribute_definition_request(), proplists:proplist()) ->
    {ok, delete_calculated_attribute_definition_response(), tuple()} |
    {error, any()} |
    {error, delete_calculated_attribute_definition_errors(), tuple()}.
delete_calculated_attribute_definition(Client, CalculatedAttributeName, DomainName, Input0, Options0) ->
    Method = delete,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/calculated-attributes/", aws_util:encode_uri(CalculatedAttributeName), ""],
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

%% @doc Deletes a specific domain and all of its customer data, such as
%% customer profile
%% attributes and their related objects.
-spec delete_domain(aws_client:aws_client(), binary() | list(), delete_domain_request()) ->
    {ok, delete_domain_response(), tuple()} |
    {error, any()} |
    {error, delete_domain_errors(), tuple()}.
delete_domain(Client, DomainName, Input) ->
    delete_domain(Client, DomainName, Input, []).

-spec delete_domain(aws_client:aws_client(), binary() | list(), delete_domain_request(), proplists:proplist()) ->
    {ok, delete_domain_response(), tuple()} |
    {error, any()} |
    {error, delete_domain_errors(), tuple()}.
delete_domain(Client, DomainName, Input0, Options0) ->
    Method = delete,
    Path = ["/domains/", aws_util:encode_uri(DomainName), ""],
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

%% @doc Disables and deletes the specified event stream.
-spec delete_event_stream(aws_client:aws_client(), binary() | list(), binary() | list(), delete_event_stream_request()) ->
    {ok, delete_event_stream_response(), tuple()} |
    {error, any()} |
    {error, delete_event_stream_errors(), tuple()}.
delete_event_stream(Client, DomainName, EventStreamName, Input) ->
    delete_event_stream(Client, DomainName, EventStreamName, Input, []).

-spec delete_event_stream(aws_client:aws_client(), binary() | list(), binary() | list(), delete_event_stream_request(), proplists:proplist()) ->
    {ok, delete_event_stream_response(), tuple()} |
    {error, any()} |
    {error, delete_event_stream_errors(), tuple()}.
delete_event_stream(Client, DomainName, EventStreamName, Input0, Options0) ->
    Method = delete,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/event-streams/", aws_util:encode_uri(EventStreamName), ""],
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

%% @doc Disable and deletes the Event Trigger.
%%
%% You cannot delete an Event Trigger with an active Integration associated.
-spec delete_event_trigger(aws_client:aws_client(), binary() | list(), binary() | list(), delete_event_trigger_request()) ->
    {ok, delete_event_trigger_response(), tuple()} |
    {error, any()} |
    {error, delete_event_trigger_errors(), tuple()}.
delete_event_trigger(Client, DomainName, EventTriggerName, Input) ->
    delete_event_trigger(Client, DomainName, EventTriggerName, Input, []).

-spec delete_event_trigger(aws_client:aws_client(), binary() | list(), binary() | list(), delete_event_trigger_request(), proplists:proplist()) ->
    {ok, delete_event_trigger_response(), tuple()} |
    {error, any()} |
    {error, delete_event_trigger_errors(), tuple()}.
delete_event_trigger(Client, DomainName, EventTriggerName, Input0, Options0) ->
    Method = delete,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/event-triggers/", aws_util:encode_uri(EventTriggerName), ""],
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

%% @doc Removes an integration from a specific domain.
-spec delete_integration(aws_client:aws_client(), binary() | list(), delete_integration_request()) ->
    {ok, delete_integration_response(), tuple()} |
    {error, any()} |
    {error, delete_integration_errors(), tuple()}.
delete_integration(Client, DomainName, Input) ->
    delete_integration(Client, DomainName, Input, []).

-spec delete_integration(aws_client:aws_client(), binary() | list(), delete_integration_request(), proplists:proplist()) ->
    {ok, delete_integration_response(), tuple()} |
    {error, any()} |
    {error, delete_integration_errors(), tuple()}.
delete_integration(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/integrations/delete"],
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

%% @doc Deletes the standard customer profile and all data pertaining to the
%% profile.
-spec delete_profile(aws_client:aws_client(), binary() | list(), delete_profile_request()) ->
    {ok, delete_profile_response(), tuple()} |
    {error, any()} |
    {error, delete_profile_errors(), tuple()}.
delete_profile(Client, DomainName, Input) ->
    delete_profile(Client, DomainName, Input, []).

-spec delete_profile(aws_client:aws_client(), binary() | list(), delete_profile_request(), proplists:proplist()) ->
    {ok, delete_profile_response(), tuple()} |
    {error, any()} |
    {error, delete_profile_errors(), tuple()}.
delete_profile(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/profiles/delete"],
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

%% @doc Removes a searchable key from a customer profile.
-spec delete_profile_key(aws_client:aws_client(), binary() | list(), delete_profile_key_request()) ->
    {ok, delete_profile_key_response(), tuple()} |
    {error, any()} |
    {error, delete_profile_key_errors(), tuple()}.
delete_profile_key(Client, DomainName, Input) ->
    delete_profile_key(Client, DomainName, Input, []).

-spec delete_profile_key(aws_client:aws_client(), binary() | list(), delete_profile_key_request(), proplists:proplist()) ->
    {ok, delete_profile_key_response(), tuple()} |
    {error, any()} |
    {error, delete_profile_key_errors(), tuple()}.
delete_profile_key(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/profiles/keys/delete"],
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

%% @doc Removes an object associated with a profile of a given
%% ProfileObjectType.
-spec delete_profile_object(aws_client:aws_client(), binary() | list(), delete_profile_object_request()) ->
    {ok, delete_profile_object_response(), tuple()} |
    {error, any()} |
    {error, delete_profile_object_errors(), tuple()}.
delete_profile_object(Client, DomainName, Input) ->
    delete_profile_object(Client, DomainName, Input, []).

-spec delete_profile_object(aws_client:aws_client(), binary() | list(), delete_profile_object_request(), proplists:proplist()) ->
    {ok, delete_profile_object_response(), tuple()} |
    {error, any()} |
    {error, delete_profile_object_errors(), tuple()}.
delete_profile_object(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/profiles/objects/delete"],
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

%% @doc Removes a ProfileObjectType from a specific domain as well as removes
%% all the
%% ProfileObjects of that type.
%%
%% It also disables integrations from this specific
%% ProfileObjectType. In addition, it scrubs all of the fields of the
%% standard profile that
%% were populated from this ProfileObjectType.
-spec delete_profile_object_type(aws_client:aws_client(), binary() | list(), binary() | list(), delete_profile_object_type_request()) ->
    {ok, delete_profile_object_type_response(), tuple()} |
    {error, any()} |
    {error, delete_profile_object_type_errors(), tuple()}.
delete_profile_object_type(Client, DomainName, ObjectTypeName, Input) ->
    delete_profile_object_type(Client, DomainName, ObjectTypeName, Input, []).

-spec delete_profile_object_type(aws_client:aws_client(), binary() | list(), binary() | list(), delete_profile_object_type_request(), proplists:proplist()) ->
    {ok, delete_profile_object_type_response(), tuple()} |
    {error, any()} |
    {error, delete_profile_object_type_errors(), tuple()}.
delete_profile_object_type(Client, DomainName, ObjectTypeName, Input0, Options0) ->
    Method = delete,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/object-types/", aws_util:encode_uri(ObjectTypeName), ""],
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

%% @doc Deletes a segment definition from the domain.
-spec delete_segment_definition(aws_client:aws_client(), binary() | list(), binary() | list(), delete_segment_definition_request()) ->
    {ok, delete_segment_definition_response(), tuple()} |
    {error, any()} |
    {error, delete_segment_definition_errors(), tuple()}.
delete_segment_definition(Client, DomainName, SegmentDefinitionName, Input) ->
    delete_segment_definition(Client, DomainName, SegmentDefinitionName, Input, []).

-spec delete_segment_definition(aws_client:aws_client(), binary() | list(), binary() | list(), delete_segment_definition_request(), proplists:proplist()) ->
    {ok, delete_segment_definition_response(), tuple()} |
    {error, any()} |
    {error, delete_segment_definition_errors(), tuple()}.
delete_segment_definition(Client, DomainName, SegmentDefinitionName, Input0, Options0) ->
    Method = delete,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/segment-definitions/", aws_util:encode_uri(SegmentDefinitionName), ""],
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

%% @doc Deletes the specified workflow and all its corresponding resources.
%%
%% This is an async
%% process.
-spec delete_workflow(aws_client:aws_client(), binary() | list(), binary() | list(), delete_workflow_request()) ->
    {ok, delete_workflow_response(), tuple()} |
    {error, any()} |
    {error, delete_workflow_errors(), tuple()}.
delete_workflow(Client, DomainName, WorkflowId, Input) ->
    delete_workflow(Client, DomainName, WorkflowId, Input, []).

-spec delete_workflow(aws_client:aws_client(), binary() | list(), binary() | list(), delete_workflow_request(), proplists:proplist()) ->
    {ok, delete_workflow_response(), tuple()} |
    {error, any()} |
    {error, delete_workflow_errors(), tuple()}.
delete_workflow(Client, DomainName, WorkflowId, Input0, Options0) ->
    Method = delete,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/workflows/", aws_util:encode_uri(WorkflowId), ""],
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

%% @doc The process of detecting profile object type mapping by using given
%% objects.
-spec detect_profile_object_type(aws_client:aws_client(), binary() | list(), detect_profile_object_type_request()) ->
    {ok, detect_profile_object_type_response(), tuple()} |
    {error, any()} |
    {error, detect_profile_object_type_errors(), tuple()}.
detect_profile_object_type(Client, DomainName, Input) ->
    detect_profile_object_type(Client, DomainName, Input, []).

-spec detect_profile_object_type(aws_client:aws_client(), binary() | list(), detect_profile_object_type_request(), proplists:proplist()) ->
    {ok, detect_profile_object_type_response(), tuple()} |
    {error, any()} |
    {error, detect_profile_object_type_errors(), tuple()}.
detect_profile_object_type(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/detect/object-types"],
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

%% @doc Tests the auto-merging settings of your Identity Resolution Job
%% without merging your data.
%%
%% It randomly
%% selects a sample of matching groups from the existing matching results,
%% and applies the
%% automerging settings that you provided. You can then view the number of
%% profiles in the
%% sample, the number of matches, and the number of profiles identified to be
%% merged. This
%% enables you to evaluate the accuracy of the attributes in your matching
%% list.
%%
%% You can't view which profiles are matched and would be merged.
%%
%% We strongly recommend you use this API to do a dry run of the automerging
%% process
%% before running the Identity Resolution Job. Include at least two matching
%% attributes. If your matching list includes too few attributes (such as
%% only
%% `FirstName' or only `LastName'), there may be a large number of
%% matches. This increases the chances of erroneous merges.
-spec get_auto_merging_preview(aws_client:aws_client(), binary() | list(), get_auto_merging_preview_request()) ->
    {ok, get_auto_merging_preview_response(), tuple()} |
    {error, any()} |
    {error, get_auto_merging_preview_errors(), tuple()}.
get_auto_merging_preview(Client, DomainName, Input) ->
    get_auto_merging_preview(Client, DomainName, Input, []).

-spec get_auto_merging_preview(aws_client:aws_client(), binary() | list(), get_auto_merging_preview_request(), proplists:proplist()) ->
    {ok, get_auto_merging_preview_response(), tuple()} |
    {error, any()} |
    {error, get_auto_merging_preview_errors(), tuple()}.
get_auto_merging_preview(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/identity-resolution-jobs/auto-merging-preview"],
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

%% @doc Provides more information on a calculated attribute definition for
%% Customer
%% Profiles.
-spec get_calculated_attribute_definition(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_calculated_attribute_definition_response(), tuple()} |
    {error, any()} |
    {error, get_calculated_attribute_definition_errors(), tuple()}.
get_calculated_attribute_definition(Client, CalculatedAttributeName, DomainName)
  when is_map(Client) ->
    get_calculated_attribute_definition(Client, CalculatedAttributeName, DomainName, #{}, #{}).

-spec get_calculated_attribute_definition(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_calculated_attribute_definition_response(), tuple()} |
    {error, any()} |
    {error, get_calculated_attribute_definition_errors(), tuple()}.
get_calculated_attribute_definition(Client, CalculatedAttributeName, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_calculated_attribute_definition(Client, CalculatedAttributeName, DomainName, QueryMap, HeadersMap, []).

-spec get_calculated_attribute_definition(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_calculated_attribute_definition_response(), tuple()} |
    {error, any()} |
    {error, get_calculated_attribute_definition_errors(), tuple()}.
get_calculated_attribute_definition(Client, CalculatedAttributeName, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/calculated-attributes/", aws_util:encode_uri(CalculatedAttributeName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve a calculated attribute for a customer profile.
-spec get_calculated_attribute_for_profile(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_calculated_attribute_for_profile_response(), tuple()} |
    {error, any()} |
    {error, get_calculated_attribute_for_profile_errors(), tuple()}.
get_calculated_attribute_for_profile(Client, CalculatedAttributeName, DomainName, ProfileId)
  when is_map(Client) ->
    get_calculated_attribute_for_profile(Client, CalculatedAttributeName, DomainName, ProfileId, #{}, #{}).

-spec get_calculated_attribute_for_profile(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_calculated_attribute_for_profile_response(), tuple()} |
    {error, any()} |
    {error, get_calculated_attribute_for_profile_errors(), tuple()}.
get_calculated_attribute_for_profile(Client, CalculatedAttributeName, DomainName, ProfileId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_calculated_attribute_for_profile(Client, CalculatedAttributeName, DomainName, ProfileId, QueryMap, HeadersMap, []).

-spec get_calculated_attribute_for_profile(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_calculated_attribute_for_profile_response(), tuple()} |
    {error, any()} |
    {error, get_calculated_attribute_for_profile_errors(), tuple()}.
get_calculated_attribute_for_profile(Client, CalculatedAttributeName, DomainName, ProfileId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/profile/", aws_util:encode_uri(ProfileId), "/calculated-attributes/", aws_util:encode_uri(CalculatedAttributeName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a specific domain.
-spec get_domain(aws_client:aws_client(), binary() | list()) ->
    {ok, get_domain_response(), tuple()} |
    {error, any()} |
    {error, get_domain_errors(), tuple()}.
get_domain(Client, DomainName)
  when is_map(Client) ->
    get_domain(Client, DomainName, #{}, #{}).

-spec get_domain(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_domain_response(), tuple()} |
    {error, any()} |
    {error, get_domain_errors(), tuple()}.
get_domain(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_domain(Client, DomainName, QueryMap, HeadersMap, []).

-spec get_domain(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_domain_response(), tuple()} |
    {error, any()} |
    {error, get_domain_errors(), tuple()}.
get_domain(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the specified event stream in a specific
%% domain.
-spec get_event_stream(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_event_stream_response(), tuple()} |
    {error, any()} |
    {error, get_event_stream_errors(), tuple()}.
get_event_stream(Client, DomainName, EventStreamName)
  when is_map(Client) ->
    get_event_stream(Client, DomainName, EventStreamName, #{}, #{}).

-spec get_event_stream(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_event_stream_response(), tuple()} |
    {error, any()} |
    {error, get_event_stream_errors(), tuple()}.
get_event_stream(Client, DomainName, EventStreamName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_event_stream(Client, DomainName, EventStreamName, QueryMap, HeadersMap, []).

-spec get_event_stream(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_event_stream_response(), tuple()} |
    {error, any()} |
    {error, get_event_stream_errors(), tuple()}.
get_event_stream(Client, DomainName, EventStreamName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/event-streams/", aws_util:encode_uri(EventStreamName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a specific Event Trigger from the domain.
-spec get_event_trigger(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_event_trigger_response(), tuple()} |
    {error, any()} |
    {error, get_event_trigger_errors(), tuple()}.
get_event_trigger(Client, DomainName, EventTriggerName)
  when is_map(Client) ->
    get_event_trigger(Client, DomainName, EventTriggerName, #{}, #{}).

-spec get_event_trigger(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_event_trigger_response(), tuple()} |
    {error, any()} |
    {error, get_event_trigger_errors(), tuple()}.
get_event_trigger(Client, DomainName, EventTriggerName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_event_trigger(Client, DomainName, EventTriggerName, QueryMap, HeadersMap, []).

-spec get_event_trigger(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_event_trigger_response(), tuple()} |
    {error, any()} |
    {error, get_event_trigger_errors(), tuple()}.
get_event_trigger(Client, DomainName, EventTriggerName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/event-triggers/", aws_util:encode_uri(EventTriggerName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about an Identity Resolution Job in a specific
%% domain.
%%
%% Identity Resolution Jobs are set up using the Amazon Connect admin
%% console. For more information, see Use
%% Identity Resolution to consolidate similar profiles:
%% https://docs.aws.amazon.com/connect/latest/adminguide/use-identity-resolution.html.
-spec get_identity_resolution_job(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_identity_resolution_job_response(), tuple()} |
    {error, any()} |
    {error, get_identity_resolution_job_errors(), tuple()}.
get_identity_resolution_job(Client, DomainName, JobId)
  when is_map(Client) ->
    get_identity_resolution_job(Client, DomainName, JobId, #{}, #{}).

-spec get_identity_resolution_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_identity_resolution_job_response(), tuple()} |
    {error, any()} |
    {error, get_identity_resolution_job_errors(), tuple()}.
get_identity_resolution_job(Client, DomainName, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_identity_resolution_job(Client, DomainName, JobId, QueryMap, HeadersMap, []).

-spec get_identity_resolution_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_identity_resolution_job_response(), tuple()} |
    {error, any()} |
    {error, get_identity_resolution_job_errors(), tuple()}.
get_identity_resolution_job(Client, DomainName, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/identity-resolution-jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns an integration for a domain.
-spec get_integration(aws_client:aws_client(), binary() | list(), get_integration_request()) ->
    {ok, get_integration_response(), tuple()} |
    {error, any()} |
    {error, get_integration_errors(), tuple()}.
get_integration(Client, DomainName, Input) ->
    get_integration(Client, DomainName, Input, []).

-spec get_integration(aws_client:aws_client(), binary() | list(), get_integration_request(), proplists:proplist()) ->
    {ok, get_integration_response(), tuple()} |
    {error, any()} |
    {error, get_integration_errors(), tuple()}.
get_integration(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/integrations"],
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

%% @doc Before calling this API, use CreateDomain:
%% https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_CreateDomain.html
%% or
%% UpdateDomain:
%% https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UpdateDomain.html
%% to
%% enable identity resolution: set `Matching' to true.
%%
%% GetMatches returns potentially matching profiles, based on the results of
%% the latest run
%% of a machine learning process.
%%
%% The process of matching duplicate profiles. If `Matching' =
%% `true', Amazon Connect Customer Profiles starts a weekly
%% batch process called Identity Resolution Job. If you do not specify a date
%% and time for Identity Resolution Job to run, by default it runs every
%% Saturday at 12AM UTC to detect duplicate profiles in your domains.
%%
%% After the Identity Resolution Job completes, use the
%% GetMatches:
%% https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html
%% API to return and review the results. Or, if you have configured
%% `ExportingConfig' in the `MatchingRequest', you can download the
%% results from
%% S3.
%%
%% Amazon Connect uses the following profile attributes to identify matches:
%%
%% PhoneNumber
%%
%% HomePhoneNumber
%%
%% BusinessPhoneNumber
%%
%% MobilePhoneNumber
%%
%% EmailAddress
%%
%% PersonalEmailAddress
%%
%% BusinessEmailAddress
%%
%% FullName
%%
%% For example, two or more profiles—with spelling mistakes such as John Doe
%% and Jhn Doe, or different casing
%% email addresses such as JOHN_DOE@ANYCOMPANY.COM and
%% johndoe@anycompany.com, or different phone number
%% formats such as 555-010-0000 and +1-555-010-0000—can be detected as
%% belonging to the same customer John Doe and merged into a unified profile.
-spec get_matches(aws_client:aws_client(), binary() | list()) ->
    {ok, get_matches_response(), tuple()} |
    {error, any()} |
    {error, get_matches_errors(), tuple()}.
get_matches(Client, DomainName)
  when is_map(Client) ->
    get_matches(Client, DomainName, #{}, #{}).

-spec get_matches(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_matches_response(), tuple()} |
    {error, any()} |
    {error, get_matches_errors(), tuple()}.
get_matches(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_matches(Client, DomainName, QueryMap, HeadersMap, []).

-spec get_matches(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_matches_response(), tuple()} |
    {error, any()} |
    {error, get_matches_errors(), tuple()}.
get_matches(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/matches"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the object types for a specific domain.
-spec get_profile_object_type(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_profile_object_type_response(), tuple()} |
    {error, any()} |
    {error, get_profile_object_type_errors(), tuple()}.
get_profile_object_type(Client, DomainName, ObjectTypeName)
  when is_map(Client) ->
    get_profile_object_type(Client, DomainName, ObjectTypeName, #{}, #{}).

-spec get_profile_object_type(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_profile_object_type_response(), tuple()} |
    {error, any()} |
    {error, get_profile_object_type_errors(), tuple()}.
get_profile_object_type(Client, DomainName, ObjectTypeName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_profile_object_type(Client, DomainName, ObjectTypeName, QueryMap, HeadersMap, []).

-spec get_profile_object_type(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_profile_object_type_response(), tuple()} |
    {error, any()} |
    {error, get_profile_object_type_errors(), tuple()}.
get_profile_object_type(Client, DomainName, ObjectTypeName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/object-types/", aws_util:encode_uri(ObjectTypeName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the template information for a specific object type.
%%
%% A template is a predefined ProfileObjectType, such as “Salesforce-Account”
%% or
%% “Salesforce-Contact.” When a user sends a ProfileObject, using the
%% PutProfileObject API,
%% with an ObjectTypeName that matches one of the TemplateIds, it uses the
%% mappings from the
%% template.
-spec get_profile_object_type_template(aws_client:aws_client(), binary() | list()) ->
    {ok, get_profile_object_type_template_response(), tuple()} |
    {error, any()} |
    {error, get_profile_object_type_template_errors(), tuple()}.
get_profile_object_type_template(Client, TemplateId)
  when is_map(Client) ->
    get_profile_object_type_template(Client, TemplateId, #{}, #{}).

-spec get_profile_object_type_template(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_profile_object_type_template_response(), tuple()} |
    {error, any()} |
    {error, get_profile_object_type_template_errors(), tuple()}.
get_profile_object_type_template(Client, TemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_profile_object_type_template(Client, TemplateId, QueryMap, HeadersMap, []).

-spec get_profile_object_type_template(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_profile_object_type_template_response(), tuple()} |
    {error, any()} |
    {error, get_profile_object_type_template_errors(), tuple()}.
get_profile_object_type_template(Client, TemplateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/templates/", aws_util:encode_uri(TemplateId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a segment definition from the domain.
-spec get_segment_definition(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_segment_definition_response(), tuple()} |
    {error, any()} |
    {error, get_segment_definition_errors(), tuple()}.
get_segment_definition(Client, DomainName, SegmentDefinitionName)
  when is_map(Client) ->
    get_segment_definition(Client, DomainName, SegmentDefinitionName, #{}, #{}).

-spec get_segment_definition(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_segment_definition_response(), tuple()} |
    {error, any()} |
    {error, get_segment_definition_errors(), tuple()}.
get_segment_definition(Client, DomainName, SegmentDefinitionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_segment_definition(Client, DomainName, SegmentDefinitionName, QueryMap, HeadersMap, []).

-spec get_segment_definition(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_segment_definition_response(), tuple()} |
    {error, any()} |
    {error, get_segment_definition_errors(), tuple()}.
get_segment_definition(Client, DomainName, SegmentDefinitionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/segment-definitions/", aws_util:encode_uri(SegmentDefinitionName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the result of a segment estimate query.
-spec get_segment_estimate(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_segment_estimate_response(), tuple()} |
    {error, any()} |
    {error, get_segment_estimate_errors(), tuple()}.
get_segment_estimate(Client, DomainName, EstimateId)
  when is_map(Client) ->
    get_segment_estimate(Client, DomainName, EstimateId, #{}, #{}).

-spec get_segment_estimate(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_segment_estimate_response(), tuple()} |
    {error, any()} |
    {error, get_segment_estimate_errors(), tuple()}.
get_segment_estimate(Client, DomainName, EstimateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_segment_estimate(Client, DomainName, EstimateId, QueryMap, HeadersMap, []).

-spec get_segment_estimate(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_segment_estimate_response(), tuple()} |
    {error, any()} |
    {error, get_segment_estimate_errors(), tuple()}.
get_segment_estimate(Client, DomainName, EstimateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/segment-estimates/", aws_util:encode_uri(EstimateId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Determines if the given profiles are within a segment.
-spec get_segment_membership(aws_client:aws_client(), binary() | list(), binary() | list(), get_segment_membership_request()) ->
    {ok, get_segment_membership_response(), tuple()} |
    {error, any()} |
    {error, get_segment_membership_errors(), tuple()}.
get_segment_membership(Client, DomainName, SegmentDefinitionName, Input) ->
    get_segment_membership(Client, DomainName, SegmentDefinitionName, Input, []).

-spec get_segment_membership(aws_client:aws_client(), binary() | list(), binary() | list(), get_segment_membership_request(), proplists:proplist()) ->
    {ok, get_segment_membership_response(), tuple()} |
    {error, any()} |
    {error, get_segment_membership_errors(), tuple()}.
get_segment_membership(Client, DomainName, SegmentDefinitionName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/segments/", aws_util:encode_uri(SegmentDefinitionName), "/membership"],
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

%% @doc Retrieve the latest status of a segment snapshot.
-spec get_segment_snapshot(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_segment_snapshot_response(), tuple()} |
    {error, any()} |
    {error, get_segment_snapshot_errors(), tuple()}.
get_segment_snapshot(Client, DomainName, SegmentDefinitionName, SnapshotId)
  when is_map(Client) ->
    get_segment_snapshot(Client, DomainName, SegmentDefinitionName, SnapshotId, #{}, #{}).

-spec get_segment_snapshot(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_segment_snapshot_response(), tuple()} |
    {error, any()} |
    {error, get_segment_snapshot_errors(), tuple()}.
get_segment_snapshot(Client, DomainName, SegmentDefinitionName, SnapshotId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_segment_snapshot(Client, DomainName, SegmentDefinitionName, SnapshotId, QueryMap, HeadersMap, []).

-spec get_segment_snapshot(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_segment_snapshot_response(), tuple()} |
    {error, any()} |
    {error, get_segment_snapshot_errors(), tuple()}.
get_segment_snapshot(Client, DomainName, SegmentDefinitionName, SnapshotId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/segments/", aws_util:encode_uri(SegmentDefinitionName), "/snapshots/", aws_util:encode_uri(SnapshotId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a set of profiles that belong to the same matching group
%% using the
%% `matchId' or `profileId'.
%%
%% You can also specify the type of
%% matching that you want for finding similar profiles using either
%% `RULE_BASED_MATCHING' or `ML_BASED_MATCHING'.
-spec get_similar_profiles(aws_client:aws_client(), binary() | list(), get_similar_profiles_request()) ->
    {ok, get_similar_profiles_response(), tuple()} |
    {error, any()} |
    {error, get_similar_profiles_errors(), tuple()}.
get_similar_profiles(Client, DomainName, Input) ->
    get_similar_profiles(Client, DomainName, Input, []).

-spec get_similar_profiles(aws_client:aws_client(), binary() | list(), get_similar_profiles_request(), proplists:proplist()) ->
    {ok, get_similar_profiles_response(), tuple()} |
    {error, any()} |
    {error, get_similar_profiles_errors(), tuple()}.
get_similar_profiles(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/matches"],
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
                     {<<"max-results">>, <<"MaxResults">>},
                     {<<"next-token">>, <<"NextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Get details of specified workflow.
-spec get_workflow(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_workflow_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_errors(), tuple()}.
get_workflow(Client, DomainName, WorkflowId)
  when is_map(Client) ->
    get_workflow(Client, DomainName, WorkflowId, #{}, #{}).

-spec get_workflow(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_workflow_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_errors(), tuple()}.
get_workflow(Client, DomainName, WorkflowId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_workflow(Client, DomainName, WorkflowId, QueryMap, HeadersMap, []).

-spec get_workflow(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_workflow_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_errors(), tuple()}.
get_workflow(Client, DomainName, WorkflowId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/workflows/", aws_util:encode_uri(WorkflowId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get granular list of steps in workflow.
-spec get_workflow_steps(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_workflow_steps_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_steps_errors(), tuple()}.
get_workflow_steps(Client, DomainName, WorkflowId)
  when is_map(Client) ->
    get_workflow_steps(Client, DomainName, WorkflowId, #{}, #{}).

-spec get_workflow_steps(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_workflow_steps_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_steps_errors(), tuple()}.
get_workflow_steps(Client, DomainName, WorkflowId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_workflow_steps(Client, DomainName, WorkflowId, QueryMap, HeadersMap, []).

-spec get_workflow_steps(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_workflow_steps_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_steps_errors(), tuple()}.
get_workflow_steps(Client, DomainName, WorkflowId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/workflows/", aws_util:encode_uri(WorkflowId), "/steps"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the integrations associated to a specific URI in the AWS
%% account.
-spec list_account_integrations(aws_client:aws_client(), list_account_integrations_request()) ->
    {ok, list_account_integrations_response(), tuple()} |
    {error, any()} |
    {error, list_account_integrations_errors(), tuple()}.
list_account_integrations(Client, Input) ->
    list_account_integrations(Client, Input, []).

-spec list_account_integrations(aws_client:aws_client(), list_account_integrations_request(), proplists:proplist()) ->
    {ok, list_account_integrations_response(), tuple()} |
    {error, any()} |
    {error, list_account_integrations_errors(), tuple()}.
list_account_integrations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/integrations"],
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
                     {<<"include-hidden">>, <<"IncludeHidden">>},
                     {<<"max-results">>, <<"MaxResults">>},
                     {<<"next-token">>, <<"NextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists calculated attribute definitions for Customer Profiles
-spec list_calculated_attribute_definitions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_calculated_attribute_definitions_response(), tuple()} |
    {error, any()} |
    {error, list_calculated_attribute_definitions_errors(), tuple()}.
list_calculated_attribute_definitions(Client, DomainName)
  when is_map(Client) ->
    list_calculated_attribute_definitions(Client, DomainName, #{}, #{}).

-spec list_calculated_attribute_definitions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_calculated_attribute_definitions_response(), tuple()} |
    {error, any()} |
    {error, list_calculated_attribute_definitions_errors(), tuple()}.
list_calculated_attribute_definitions(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_calculated_attribute_definitions(Client, DomainName, QueryMap, HeadersMap, []).

-spec list_calculated_attribute_definitions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_calculated_attribute_definitions_response(), tuple()} |
    {error, any()} |
    {error, list_calculated_attribute_definitions_errors(), tuple()}.
list_calculated_attribute_definitions(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/calculated-attributes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve a list of calculated attributes for a customer profile.
-spec list_calculated_attributes_for_profile(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_calculated_attributes_for_profile_response(), tuple()} |
    {error, any()} |
    {error, list_calculated_attributes_for_profile_errors(), tuple()}.
list_calculated_attributes_for_profile(Client, DomainName, ProfileId)
  when is_map(Client) ->
    list_calculated_attributes_for_profile(Client, DomainName, ProfileId, #{}, #{}).

-spec list_calculated_attributes_for_profile(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_calculated_attributes_for_profile_response(), tuple()} |
    {error, any()} |
    {error, list_calculated_attributes_for_profile_errors(), tuple()}.
list_calculated_attributes_for_profile(Client, DomainName, ProfileId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_calculated_attributes_for_profile(Client, DomainName, ProfileId, QueryMap, HeadersMap, []).

-spec list_calculated_attributes_for_profile(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_calculated_attributes_for_profile_response(), tuple()} |
    {error, any()} |
    {error, list_calculated_attributes_for_profile_errors(), tuple()}.
list_calculated_attributes_for_profile(Client, DomainName, ProfileId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/profile/", aws_util:encode_uri(ProfileId), "/calculated-attributes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all the domains for an AWS account that have been
%% created.
-spec list_domains(aws_client:aws_client()) ->
    {ok, list_domains_response(), tuple()} |
    {error, any()} |
    {error, list_domains_errors(), tuple()}.
list_domains(Client)
  when is_map(Client) ->
    list_domains(Client, #{}, #{}).

-spec list_domains(aws_client:aws_client(), map(), map()) ->
    {ok, list_domains_response(), tuple()} |
    {error, any()} |
    {error, list_domains_errors(), tuple()}.
list_domains(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_domains(Client, QueryMap, HeadersMap, []).

-spec list_domains(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_domains_response(), tuple()} |
    {error, any()} |
    {error, list_domains_errors(), tuple()}.
list_domains(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all the event streams in a specific domain.
-spec list_event_streams(aws_client:aws_client(), binary() | list()) ->
    {ok, list_event_streams_response(), tuple()} |
    {error, any()} |
    {error, list_event_streams_errors(), tuple()}.
list_event_streams(Client, DomainName)
  when is_map(Client) ->
    list_event_streams(Client, DomainName, #{}, #{}).

-spec list_event_streams(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_event_streams_response(), tuple()} |
    {error, any()} |
    {error, list_event_streams_errors(), tuple()}.
list_event_streams(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_event_streams(Client, DomainName, QueryMap, HeadersMap, []).

-spec list_event_streams(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_event_streams_response(), tuple()} |
    {error, any()} |
    {error, list_event_streams_errors(), tuple()}.
list_event_streams(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/event-streams"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all Event Triggers under a domain.
-spec list_event_triggers(aws_client:aws_client(), binary() | list()) ->
    {ok, list_event_triggers_response(), tuple()} |
    {error, any()} |
    {error, list_event_triggers_errors(), tuple()}.
list_event_triggers(Client, DomainName)
  when is_map(Client) ->
    list_event_triggers(Client, DomainName, #{}, #{}).

-spec list_event_triggers(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_event_triggers_response(), tuple()} |
    {error, any()} |
    {error, list_event_triggers_errors(), tuple()}.
list_event_triggers(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_event_triggers(Client, DomainName, QueryMap, HeadersMap, []).

-spec list_event_triggers(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_event_triggers_response(), tuple()} |
    {error, any()} |
    {error, list_event_triggers_errors(), tuple()}.
list_event_triggers(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/event-triggers"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the Identity Resolution Jobs in your domain.
%%
%% The response sorts the list by
%% `JobStartTime'.
-spec list_identity_resolution_jobs(aws_client:aws_client(), binary() | list()) ->
    {ok, list_identity_resolution_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_identity_resolution_jobs_errors(), tuple()}.
list_identity_resolution_jobs(Client, DomainName)
  when is_map(Client) ->
    list_identity_resolution_jobs(Client, DomainName, #{}, #{}).

-spec list_identity_resolution_jobs(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_identity_resolution_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_identity_resolution_jobs_errors(), tuple()}.
list_identity_resolution_jobs(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_identity_resolution_jobs(Client, DomainName, QueryMap, HeadersMap, []).

-spec list_identity_resolution_jobs(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_identity_resolution_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_identity_resolution_jobs_errors(), tuple()}.
list_identity_resolution_jobs(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/identity-resolution-jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the integrations in your domain.
-spec list_integrations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_integrations_response(), tuple()} |
    {error, any()} |
    {error, list_integrations_errors(), tuple()}.
list_integrations(Client, DomainName)
  when is_map(Client) ->
    list_integrations(Client, DomainName, #{}, #{}).

-spec list_integrations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_integrations_response(), tuple()} |
    {error, any()} |
    {error, list_integrations_errors(), tuple()}.
list_integrations(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_integrations(Client, DomainName, QueryMap, HeadersMap, []).

-spec list_integrations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_integrations_response(), tuple()} |
    {error, any()} |
    {error, list_integrations_errors(), tuple()}.
list_integrations(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/integrations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"include-hidden">>, maps:get(<<"include-hidden">>, QueryMap, undefined)},
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Fetch the possible attribute values given the attribute name.
-spec list_object_type_attributes(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_object_type_attributes_response(), tuple()} |
    {error, any()} |
    {error, list_object_type_attributes_errors(), tuple()}.
list_object_type_attributes(Client, DomainName, ObjectTypeName)
  when is_map(Client) ->
    list_object_type_attributes(Client, DomainName, ObjectTypeName, #{}, #{}).

-spec list_object_type_attributes(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_object_type_attributes_response(), tuple()} |
    {error, any()} |
    {error, list_object_type_attributes_errors(), tuple()}.
list_object_type_attributes(Client, DomainName, ObjectTypeName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_object_type_attributes(Client, DomainName, ObjectTypeName, QueryMap, HeadersMap, []).

-spec list_object_type_attributes(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_object_type_attributes_response(), tuple()} |
    {error, any()} |
    {error, list_object_type_attributes_errors(), tuple()}.
list_object_type_attributes(Client, DomainName, ObjectTypeName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/object-types/", aws_util:encode_uri(ObjectTypeName), "/attributes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Fetch the possible attribute values given the attribute name.
-spec list_profile_attribute_values(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, profile_attribute_values_response(), tuple()} |
    {error, any()} |
    {error, list_profile_attribute_values_errors(), tuple()}.
list_profile_attribute_values(Client, AttributeName, DomainName)
  when is_map(Client) ->
    list_profile_attribute_values(Client, AttributeName, DomainName, #{}, #{}).

-spec list_profile_attribute_values(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, profile_attribute_values_response(), tuple()} |
    {error, any()} |
    {error, list_profile_attribute_values_errors(), tuple()}.
list_profile_attribute_values(Client, AttributeName, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_profile_attribute_values(Client, AttributeName, DomainName, QueryMap, HeadersMap, []).

-spec list_profile_attribute_values(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, profile_attribute_values_response(), tuple()} |
    {error, any()} |
    {error, list_profile_attribute_values_errors(), tuple()}.
list_profile_attribute_values(Client, AttributeName, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/profile-attributes/", aws_util:encode_uri(AttributeName), "/values"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the template information for object types.
-spec list_profile_object_type_templates(aws_client:aws_client()) ->
    {ok, list_profile_object_type_templates_response(), tuple()} |
    {error, any()} |
    {error, list_profile_object_type_templates_errors(), tuple()}.
list_profile_object_type_templates(Client)
  when is_map(Client) ->
    list_profile_object_type_templates(Client, #{}, #{}).

-spec list_profile_object_type_templates(aws_client:aws_client(), map(), map()) ->
    {ok, list_profile_object_type_templates_response(), tuple()} |
    {error, any()} |
    {error, list_profile_object_type_templates_errors(), tuple()}.
list_profile_object_type_templates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_profile_object_type_templates(Client, QueryMap, HeadersMap, []).

-spec list_profile_object_type_templates(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_profile_object_type_templates_response(), tuple()} |
    {error, any()} |
    {error, list_profile_object_type_templates_errors(), tuple()}.
list_profile_object_type_templates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/templates"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the templates available within the service.
-spec list_profile_object_types(aws_client:aws_client(), binary() | list()) ->
    {ok, list_profile_object_types_response(), tuple()} |
    {error, any()} |
    {error, list_profile_object_types_errors(), tuple()}.
list_profile_object_types(Client, DomainName)
  when is_map(Client) ->
    list_profile_object_types(Client, DomainName, #{}, #{}).

-spec list_profile_object_types(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_profile_object_types_response(), tuple()} |
    {error, any()} |
    {error, list_profile_object_types_errors(), tuple()}.
list_profile_object_types(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_profile_object_types(Client, DomainName, QueryMap, HeadersMap, []).

-spec list_profile_object_types(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_profile_object_types_response(), tuple()} |
    {error, any()} |
    {error, list_profile_object_types_errors(), tuple()}.
list_profile_object_types(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/object-types"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of objects associated with a profile of a given
%% ProfileObjectType.
-spec list_profile_objects(aws_client:aws_client(), binary() | list(), list_profile_objects_request()) ->
    {ok, list_profile_objects_response(), tuple()} |
    {error, any()} |
    {error, list_profile_objects_errors(), tuple()}.
list_profile_objects(Client, DomainName, Input) ->
    list_profile_objects(Client, DomainName, Input, []).

-spec list_profile_objects(aws_client:aws_client(), binary() | list(), list_profile_objects_request(), proplists:proplist()) ->
    {ok, list_profile_objects_response(), tuple()} |
    {error, any()} |
    {error, list_profile_objects_errors(), tuple()}.
list_profile_objects(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/profiles/objects"],
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
                     {<<"max-results">>, <<"MaxResults">>},
                     {<<"next-token">>, <<"NextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a set of `MatchIds' that belong to the given domain.
-spec list_rule_based_matches(aws_client:aws_client(), binary() | list()) ->
    {ok, list_rule_based_matches_response(), tuple()} |
    {error, any()} |
    {error, list_rule_based_matches_errors(), tuple()}.
list_rule_based_matches(Client, DomainName)
  when is_map(Client) ->
    list_rule_based_matches(Client, DomainName, #{}, #{}).

-spec list_rule_based_matches(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_rule_based_matches_response(), tuple()} |
    {error, any()} |
    {error, list_rule_based_matches_errors(), tuple()}.
list_rule_based_matches(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_rule_based_matches(Client, DomainName, QueryMap, HeadersMap, []).

-spec list_rule_based_matches(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_rule_based_matches_response(), tuple()} |
    {error, any()} |
    {error, list_rule_based_matches_errors(), tuple()}.
list_rule_based_matches(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/profiles/ruleBasedMatches"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all segment definitions under a domain.
-spec list_segment_definitions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_segment_definitions_response(), tuple()} |
    {error, any()} |
    {error, list_segment_definitions_errors(), tuple()}.
list_segment_definitions(Client, DomainName)
  when is_map(Client) ->
    list_segment_definitions(Client, DomainName, #{}, #{}).

-spec list_segment_definitions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_segment_definitions_response(), tuple()} |
    {error, any()} |
    {error, list_segment_definitions_errors(), tuple()}.
list_segment_definitions(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_segment_definitions(Client, DomainName, QueryMap, HeadersMap, []).

-spec list_segment_definitions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_segment_definitions_response(), tuple()} |
    {error, any()} |
    {error, list_segment_definitions_errors(), tuple()}.
list_segment_definitions(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/segment-definitions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays the tags associated with an Amazon Connect Customer Profiles
%% resource.
%%
%% In Connect
%% Customer Profiles, domains, profile object types, and integrations can be
%% tagged.
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

%% @doc Query to list all workflows.
-spec list_workflows(aws_client:aws_client(), binary() | list(), list_workflows_request()) ->
    {ok, list_workflows_response(), tuple()} |
    {error, any()} |
    {error, list_workflows_errors(), tuple()}.
list_workflows(Client, DomainName, Input) ->
    list_workflows(Client, DomainName, Input, []).

-spec list_workflows(aws_client:aws_client(), binary() | list(), list_workflows_request(), proplists:proplist()) ->
    {ok, list_workflows_response(), tuple()} |
    {error, any()} |
    {error, list_workflows_errors(), tuple()}.
list_workflows(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/workflows"],
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
                     {<<"max-results">>, <<"MaxResults">>},
                     {<<"next-token">>, <<"NextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Runs an AWS Lambda job that does the following:
%%
%% All the profileKeys in the `ProfileToBeMerged' will be moved to the
%% main profile.
%%
%% All the objects in the `ProfileToBeMerged' will be moved to the main
%% profile.
%%
%% All the `ProfileToBeMerged' will be deleted at the end.
%%
%% All the profileKeys in the `ProfileIdsToBeMerged' will be moved to the
%% main profile.
%%
%% Standard fields are merged as follows:
%%
%% Fields are always &quot;union&quot;-ed if there are no conflicts in
%% standard fields or
%% attributeKeys.
%%
%% When there are conflicting fields:
%%
%% If no `SourceProfileIds' entry is specified, the main
%% Profile value is always taken.
%%
%% If a `SourceProfileIds' entry is specified, the specified
%% profileId is always taken, even if it is a NULL value.
%%
%% You can use MergeProfiles together with GetMatches:
%% https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html,
%% which
%% returns potentially matching profiles, or use it with the results of
%% another matching
%% system. After profiles have been merged, they cannot be separated
%% (unmerged).
-spec merge_profiles(aws_client:aws_client(), binary() | list(), merge_profiles_request()) ->
    {ok, merge_profiles_response(), tuple()} |
    {error, any()} |
    {error, merge_profiles_errors(), tuple()}.
merge_profiles(Client, DomainName, Input) ->
    merge_profiles(Client, DomainName, Input, []).

-spec merge_profiles(aws_client:aws_client(), binary() | list(), merge_profiles_request(), proplists:proplist()) ->
    {ok, merge_profiles_response(), tuple()} |
    {error, any()} |
    {error, merge_profiles_errors(), tuple()}.
merge_profiles(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/profiles/objects/merge"],
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

%% @doc Adds an integration between the service and a third-party service,
%% which includes
%% Amazon AppFlow and Amazon Connect.
%%
%% An integration can belong to only one domain.
%%
%% To add or remove tags on an existing Integration, see TagResource
%% :
%% https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_TagResource.html/
%% UntagResource:
%% https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UntagResource.html.
-spec put_integration(aws_client:aws_client(), binary() | list(), put_integration_request()) ->
    {ok, put_integration_response(), tuple()} |
    {error, any()} |
    {error, put_integration_errors(), tuple()}.
put_integration(Client, DomainName, Input) ->
    put_integration(Client, DomainName, Input, []).

-spec put_integration(aws_client:aws_client(), binary() | list(), put_integration_request(), proplists:proplist()) ->
    {ok, put_integration_response(), tuple()} |
    {error, any()} |
    {error, put_integration_errors(), tuple()}.
put_integration(Client, DomainName, Input0, Options0) ->
    Method = put,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/integrations"],
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

%% @doc Adds additional objects to customer profiles of a given ObjectType.
%%
%% When adding a specific profile object, like a Contact Record, an inferred
%% profile can
%% get created if it is not mapped to an existing profile. The resulting
%% profile will only
%% have a phone number populated in the standard ProfileObject. Any
%% additional Contact Records
%% with the same phone number will be mapped to the same inferred profile.
%%
%% When a ProfileObject is created and if a ProfileObjectType already exists
%% for the
%% ProfileObject, it will provide data to a standard profile depending on the
%% ProfileObjectType definition.
%%
%% PutProfileObject needs an ObjectType, which can be created using
%% PutProfileObjectType.
-spec put_profile_object(aws_client:aws_client(), binary() | list(), put_profile_object_request()) ->
    {ok, put_profile_object_response(), tuple()} |
    {error, any()} |
    {error, put_profile_object_errors(), tuple()}.
put_profile_object(Client, DomainName, Input) ->
    put_profile_object(Client, DomainName, Input, []).

-spec put_profile_object(aws_client:aws_client(), binary() | list(), put_profile_object_request(), proplists:proplist()) ->
    {ok, put_profile_object_response(), tuple()} |
    {error, any()} |
    {error, put_profile_object_errors(), tuple()}.
put_profile_object(Client, DomainName, Input0, Options0) ->
    Method = put,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/profiles/objects"],
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

%% @doc Defines a ProfileObjectType.
%%
%% To add or remove tags on an existing ObjectType, see
%% TagResource:
%% https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_TagResource.html/UntagResource:
%% https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UntagResource.html.
-spec put_profile_object_type(aws_client:aws_client(), binary() | list(), binary() | list(), put_profile_object_type_request()) ->
    {ok, put_profile_object_type_response(), tuple()} |
    {error, any()} |
    {error, put_profile_object_type_errors(), tuple()}.
put_profile_object_type(Client, DomainName, ObjectTypeName, Input) ->
    put_profile_object_type(Client, DomainName, ObjectTypeName, Input, []).

-spec put_profile_object_type(aws_client:aws_client(), binary() | list(), binary() | list(), put_profile_object_type_request(), proplists:proplist()) ->
    {ok, put_profile_object_type_response(), tuple()} |
    {error, any()} |
    {error, put_profile_object_type_errors(), tuple()}.
put_profile_object_type(Client, DomainName, ObjectTypeName, Input0, Options0) ->
    Method = put,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/object-types/", aws_util:encode_uri(ObjectTypeName), ""],
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

%% @doc Searches for profiles within a specific domain using one or more
%% predefined search keys
%% (e.g., _fullName, _phone, _email, _account, etc.) and/or custom-defined
%% search keys.
%%
%% A
%% search key is a data type pair that consists of a `KeyName' and
%% `Values' list.
%%
%% This operation supports searching for profiles with a minimum of 1
%% key-value(s) pair and
%% up to 5 key-value(s) pairs using either `AND' or `OR' logic.
-spec search_profiles(aws_client:aws_client(), binary() | list(), search_profiles_request()) ->
    {ok, search_profiles_response(), tuple()} |
    {error, any()} |
    {error, search_profiles_errors(), tuple()}.
search_profiles(Client, DomainName, Input) ->
    search_profiles(Client, DomainName, Input, []).

-spec search_profiles(aws_client:aws_client(), binary() | list(), search_profiles_request(), proplists:proplist()) ->
    {ok, search_profiles_response(), tuple()} |
    {error, any()} |
    {error, search_profiles_errors(), tuple()}.
search_profiles(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/profiles/search"],
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
                     {<<"max-results">>, <<"MaxResults">>},
                     {<<"next-token">>, <<"NextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Assigns one or more tags (key-value pairs) to the specified Amazon
%% Connect Customer Profiles
%% resource.
%%
%% Tags can help you organize and categorize your resources. You can also use
%% them
%% to scope user permissions by granting a user permission to access or
%% change only resources
%% with certain tag values. In Connect Customer Profiles, domains, profile
%% object types, and
%% integrations can be tagged.
%%
%% Tags don't have any semantic meaning to AWS and are interpreted
%% strictly as strings of
%% characters.
%%
%% You can use the TagResource action with a resource that already has tags.
%% If you specify
%% a new tag key, this tag is appended to the list of tags associated with
%% the resource. If
%% you specify a tag key that is already associated with the resource, the
%% new tag value that
%% you specify replaces the previous value for that tag.
%%
%% You can associate as many as 50 tags with a resource.
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

%% @doc Removes one or more tags from the specified Amazon Connect Customer
%% Profiles resource.
%%
%% In Connect
%% Customer Profiles, domains, profile object types, and integrations can be
%% tagged.
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

%% @doc Updates an existing calculated attribute definition.
%%
%% When updating the Conditions, note
%% that increasing the date range of a calculated attribute will not trigger
%% inclusion of
%% historical data greater than the current date range.
-spec update_calculated_attribute_definition(aws_client:aws_client(), binary() | list(), binary() | list(), update_calculated_attribute_definition_request()) ->
    {ok, update_calculated_attribute_definition_response(), tuple()} |
    {error, any()} |
    {error, update_calculated_attribute_definition_errors(), tuple()}.
update_calculated_attribute_definition(Client, CalculatedAttributeName, DomainName, Input) ->
    update_calculated_attribute_definition(Client, CalculatedAttributeName, DomainName, Input, []).

-spec update_calculated_attribute_definition(aws_client:aws_client(), binary() | list(), binary() | list(), update_calculated_attribute_definition_request(), proplists:proplist()) ->
    {ok, update_calculated_attribute_definition_response(), tuple()} |
    {error, any()} |
    {error, update_calculated_attribute_definition_errors(), tuple()}.
update_calculated_attribute_definition(Client, CalculatedAttributeName, DomainName, Input0, Options0) ->
    Method = put,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/calculated-attributes/", aws_util:encode_uri(CalculatedAttributeName), ""],
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

%% @doc Updates the properties of a domain, including creating or selecting a
%% dead letter queue
%% or an encryption key.
%%
%% After a domain is created, the name can’t be changed.
%%
%% Use this API or CreateDomain:
%% https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_CreateDomain.html
%% to
%% enable identity
%% resolution:
%% https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html:
%% set `Matching' to true.
%%
%% To prevent cross-service impersonation when you call this API, see
%% Cross-service confused deputy prevention:
%% https://docs.aws.amazon.com/connect/latest/adminguide/cross-service-confused-deputy-prevention.html
%% for sample policies that you should
%% apply.
%%
%% To add or remove tags on an existing Domain, see TagResource:
%% https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_TagResource.html/UntagResource:
%% https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UntagResource.html.
-spec update_domain(aws_client:aws_client(), binary() | list(), update_domain_request()) ->
    {ok, update_domain_response(), tuple()} |
    {error, any()} |
    {error, update_domain_errors(), tuple()}.
update_domain(Client, DomainName, Input) ->
    update_domain(Client, DomainName, Input, []).

-spec update_domain(aws_client:aws_client(), binary() | list(), update_domain_request(), proplists:proplist()) ->
    {ok, update_domain_response(), tuple()} |
    {error, any()} |
    {error, update_domain_errors(), tuple()}.
update_domain(Client, DomainName, Input0, Options0) ->
    Method = put,
    Path = ["/domains/", aws_util:encode_uri(DomainName), ""],
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

%% @doc Update the properties of an Event Trigger.
-spec update_event_trigger(aws_client:aws_client(), binary() | list(), binary() | list(), update_event_trigger_request()) ->
    {ok, update_event_trigger_response(), tuple()} |
    {error, any()} |
    {error, update_event_trigger_errors(), tuple()}.
update_event_trigger(Client, DomainName, EventTriggerName, Input) ->
    update_event_trigger(Client, DomainName, EventTriggerName, Input, []).

-spec update_event_trigger(aws_client:aws_client(), binary() | list(), binary() | list(), update_event_trigger_request(), proplists:proplist()) ->
    {ok, update_event_trigger_response(), tuple()} |
    {error, any()} |
    {error, update_event_trigger_errors(), tuple()}.
update_event_trigger(Client, DomainName, EventTriggerName, Input0, Options0) ->
    Method = put,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/event-triggers/", aws_util:encode_uri(EventTriggerName), ""],
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

%% @doc Updates the properties of a profile.
%%
%% The ProfileId is required for updating a customer
%% profile.
%%
%% When calling the UpdateProfile API, specifying an empty string value means
%% that any
%% existing value will be removed. Not specifying a string value means that
%% any value already
%% there will be kept.
-spec update_profile(aws_client:aws_client(), binary() | list(), update_profile_request()) ->
    {ok, update_profile_response(), tuple()} |
    {error, any()} |
    {error, update_profile_errors(), tuple()}.
update_profile(Client, DomainName, Input) ->
    update_profile(Client, DomainName, Input, []).

-spec update_profile(aws_client:aws_client(), binary() | list(), update_profile_request(), proplists:proplist()) ->
    {ok, update_profile_response(), tuple()} |
    {error, any()} |
    {error, update_profile_errors(), tuple()}.
update_profile(Client, DomainName, Input0, Options0) ->
    Method = put,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/profiles"],
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
    Client1 = Client#{service => <<"profile">>},
    Host = build_host(<<"profile">>, Client1),
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
