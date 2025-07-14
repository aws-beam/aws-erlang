%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Systems Manager Incident Manager is an incident management console
%% designed to help users
%% mitigate and recover from incidents affecting their Amazon Web
%% Services-hosted applications.
%%
%% An
%% incident is any unplanned interruption or reduction in quality of
%% services.
%%
%% Incident Manager increases incident resolution by notifying responders of
%% impact,
%% highlighting relevant troubleshooting data, and providing collaboration
%% tools to get services
%% back up and running. To achieve the primary goal of reducing the
%% time-to-resolution of
%% critical incidents, Incident Manager automates response plans and enables
%% responder
%% team escalation.
-module(aws_ssm_incidents).

-export([batch_get_incident_findings/2,
         batch_get_incident_findings/3,
         create_replication_set/2,
         create_replication_set/3,
         create_response_plan/2,
         create_response_plan/3,
         create_timeline_event/2,
         create_timeline_event/3,
         delete_incident_record/2,
         delete_incident_record/3,
         delete_replication_set/2,
         delete_replication_set/3,
         delete_resource_policy/2,
         delete_resource_policy/3,
         delete_response_plan/2,
         delete_response_plan/3,
         delete_timeline_event/2,
         delete_timeline_event/3,
         get_incident_record/2,
         get_incident_record/4,
         get_incident_record/5,
         get_replication_set/2,
         get_replication_set/4,
         get_replication_set/5,
         get_resource_policies/2,
         get_resource_policies/3,
         get_response_plan/2,
         get_response_plan/4,
         get_response_plan/5,
         get_timeline_event/3,
         get_timeline_event/5,
         get_timeline_event/6,
         list_incident_findings/2,
         list_incident_findings/3,
         list_incident_records/2,
         list_incident_records/3,
         list_related_items/2,
         list_related_items/3,
         list_replication_sets/2,
         list_replication_sets/3,
         list_response_plans/2,
         list_response_plans/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_timeline_events/2,
         list_timeline_events/3,
         put_resource_policy/2,
         put_resource_policy/3,
         start_incident/2,
         start_incident/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_deletion_protection/2,
         update_deletion_protection/3,
         update_incident_record/2,
         update_incident_record/3,
         update_related_items/2,
         update_related_items/3,
         update_replication_set/2,
         update_replication_set/3,
         update_response_plan/2,
         update_response_plan/3,
         update_timeline_event/2,
         update_timeline_event/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% get_resource_policies_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"resourcePolicies">> := list(resource_policy())
%% }
-type get_resource_policies_output() :: #{binary() => any()}.

%% Example:
%% update_response_plan_output() :: #{}
-type update_response_plan_output() :: #{}.


%% Example:
%% list_timeline_events_output() :: #{
%%   <<"eventSummaries">> := list(event_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_timeline_events_output() :: #{binary() => any()}.


%% Example:
%% batch_get_incident_findings_error() :: #{
%%   <<"code">> => [string()],
%%   <<"findingId">> => string(),
%%   <<"message">> => [string()]
%% }
-type batch_get_incident_findings_error() :: #{binary() => any()}.

%% Example:
%% delete_replication_set_output() :: #{}
-type delete_replication_set_output() :: #{}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_related_items_input() :: #{
%%   <<"incidentRecordArn">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_related_items_input() :: #{binary() => any()}.

%% Example:
%% delete_timeline_event_output() :: #{}
-type delete_timeline_event_output() :: #{}.


%% Example:
%% list_replication_sets_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_replication_sets_input() :: #{binary() => any()}.


%% Example:
%% related_item() :: #{
%%   <<"generatedId">> => string(),
%%   <<"identifier">> => item_identifier(),
%%   <<"title">> => [string()]
%% }
-type related_item() :: #{binary() => any()}.


%% Example:
%% incident_record_source() :: #{
%%   <<"createdBy">> => string(),
%%   <<"invokedBy">> => string(),
%%   <<"resourceArn">> => string(),
%%   <<"source">> => string()
%% }
-type incident_record_source() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% start_incident_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"impact">> => integer(),
%%   <<"relatedItems">> => list(related_item()),
%%   <<"responsePlanArn">> := string(),
%%   <<"title">> => string(),
%%   <<"triggerDetails">> => trigger_details()
%% }
-type start_incident_input() :: #{binary() => any()}.


%% Example:
%% delete_incident_record_input() :: #{
%%   <<"arn">> := string()
%% }
-type delete_incident_record_input() :: #{binary() => any()}.


%% Example:
%% update_deletion_protection_input() :: #{
%%   <<"arn">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"deletionProtected">> := [boolean()]
%% }
-type update_deletion_protection_input() :: #{binary() => any()}.


%% Example:
%% batch_get_incident_findings_output() :: #{
%%   <<"errors">> => list(batch_get_incident_findings_error()),
%%   <<"findings">> => list(finding())
%% }
-type batch_get_incident_findings_output() :: #{binary() => any()}.


%% Example:
%% delete_region_action() :: #{
%%   <<"regionName">> => string()
%% }
-type delete_region_action() :: #{binary() => any()}.


%% Example:
%% finding_summary() :: #{
%%   <<"id">> => string(),
%%   <<"lastModifiedTime">> => [non_neg_integer()]
%% }
-type finding_summary() :: #{binary() => any()}.


%% Example:
%% create_response_plan_output() :: #{
%%   <<"arn">> := string()
%% }
-type create_response_plan_output() :: #{binary() => any()}.


%% Example:
%% list_incident_findings_input() :: #{
%%   <<"incidentRecordArn">> := string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_incident_findings_input() :: #{binary() => any()}.


%% Example:
%% delete_response_plan_input() :: #{
%%   <<"arn">> := string()
%% }
-type delete_response_plan_input() :: #{binary() => any()}.


%% Example:
%% start_incident_output() :: #{
%%   <<"incidentRecordArn">> := string()
%% }
-type start_incident_output() :: #{binary() => any()}.


%% Example:
%% put_resource_policy_output() :: #{
%%   <<"policyId">> := string()
%% }
-type put_resource_policy_output() :: #{binary() => any()}.


%% Example:
%% timeline_event() :: #{
%%   <<"eventData">> => string(),
%%   <<"eventId">> => string(),
%%   <<"eventReferences">> => list(list()),
%%   <<"eventTime">> => [non_neg_integer()],
%%   <<"eventType">> => string(),
%%   <<"eventUpdatedTime">> => [non_neg_integer()],
%%   <<"incidentRecordArn">> => string()
%% }
-type timeline_event() :: #{binary() => any()}.


%% Example:
%% get_replication_set_input() :: #{
%%   <<"arn">> := string()
%% }
-type get_replication_set_input() :: #{binary() => any()}.


%% Example:
%% delete_resource_policy_input() :: #{
%%   <<"policyId">> := string(),
%%   <<"resourceArn">> := string()
%% }
-type delete_resource_policy_input() :: #{binary() => any()}.

%% Example:
%% update_deletion_protection_output() :: #{}
-type update_deletion_protection_output() :: #{}.


%% Example:
%% pager_duty_incident_detail() :: #{
%%   <<"autoResolve">> => [boolean()],
%%   <<"id">> => [string()],
%%   <<"secretId">> => [string()]
%% }
-type pager_duty_incident_detail() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% update_replication_set_input() :: #{
%%   <<"actions">> := list(list()),
%%   <<"arn">> := string(),
%%   <<"clientToken">> => string()
%% }
-type update_replication_set_input() :: #{binary() => any()}.


%% Example:
%% batch_get_incident_findings_input() :: #{
%%   <<"findingIds">> := list(string()),
%%   <<"incidentRecordArn">> := string()
%% }
-type batch_get_incident_findings_input() :: #{binary() => any()}.


%% Example:
%% code_deploy_deployment() :: #{
%%   <<"deploymentGroupArn">> => string(),
%%   <<"deploymentId">> => [string()],
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"startTime">> => [non_neg_integer()]
%% }
-type code_deploy_deployment() :: #{binary() => any()}.


%% Example:
%% list_incident_records_output() :: #{
%%   <<"incidentRecordSummaries">> := list(incident_record_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_incident_records_output() :: #{binary() => any()}.

%% Example:
%% update_incident_record_output() :: #{}
-type update_incident_record_output() :: #{}.


%% Example:
%% update_response_plan_input() :: #{
%%   <<"actions">> => list(list()),
%%   <<"arn">> := string(),
%%   <<"chatChannel">> => list(),
%%   <<"clientToken">> => string(),
%%   <<"displayName">> => string(),
%%   <<"engagements">> => list(string()),
%%   <<"incidentTemplateDedupeString">> => string(),
%%   <<"incidentTemplateImpact">> => integer(),
%%   <<"incidentTemplateNotificationTargets">> => list(list()),
%%   <<"incidentTemplateSummary">> => string(),
%%   <<"incidentTemplateTags">> => map(),
%%   <<"incidentTemplateTitle">> => string(),
%%   <<"integrations">> => list(list())
%% }
-type update_response_plan_input() :: #{binary() => any()}.


%% Example:
%% replication_set() :: #{
%%   <<"arn">> => string(),
%%   <<"createdBy">> => string(),
%%   <<"createdTime">> => [non_neg_integer()],
%%   <<"deletionProtected">> => [boolean()],
%%   <<"lastModifiedBy">> => string(),
%%   <<"lastModifiedTime">> => [non_neg_integer()],
%%   <<"regionMap">> => map(),
%%   <<"status">> => string()
%% }
-type replication_set() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceIdentifier">> => [string()],
%%   <<"resourceType">> => string(),
%%   <<"retryAfter">> => [non_neg_integer()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceIdentifier">> => [string()],
%%   <<"resourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% get_incident_record_output() :: #{
%%   <<"incidentRecord">> := incident_record()
%% }
-type get_incident_record_output() :: #{binary() => any()}.


%% Example:
%% put_resource_policy_input() :: #{
%%   <<"policy">> := string(),
%%   <<"resourceArn">> := string()
%% }
-type put_resource_policy_input() :: #{binary() => any()}.


%% Example:
%% get_resource_policies_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceArn">> := string()
%% }
-type get_resource_policies_input() :: #{binary() => any()}.


%% Example:
%% item_identifier() :: #{
%%   <<"type">> => string(),
%%   <<"value">> => list()
%% }
-type item_identifier() :: #{binary() => any()}.


%% Example:
%% list_replication_sets_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"replicationSetArns">> := list(string())
%% }
-type list_replication_sets_output() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string(),
%%   <<"quotaCode">> => [string()],
%%   <<"resourceIdentifier">> => [string()],
%%   <<"resourceType">> => string(),
%%   <<"serviceCode">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% list_incident_findings_output() :: #{
%%   <<"findings">> => list(finding_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_incident_findings_output() :: #{binary() => any()}.


%% Example:
%% pager_duty_incident_configuration() :: #{
%%   <<"serviceId">> => [string()]
%% }
-type pager_duty_incident_configuration() :: #{binary() => any()}.

%% Example:
%% update_timeline_event_output() :: #{}
-type update_timeline_event_output() :: #{}.


%% Example:
%% update_incident_record_input() :: #{
%%   <<"arn">> := string(),
%%   <<"chatChannel">> => list(),
%%   <<"clientToken">> => string(),
%%   <<"impact">> => integer(),
%%   <<"notificationTargets">> => list(list()),
%%   <<"status">> => string(),
%%   <<"summary">> => string(),
%%   <<"title">> => string()
%% }
-type update_incident_record_input() :: #{binary() => any()}.


%% Example:
%% finding() :: #{
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"details">> => list(),
%%   <<"id">> => string(),
%%   <<"lastModifiedTime">> => [non_neg_integer()]
%% }
-type finding() :: #{binary() => any()}.


%% Example:
%% update_related_items_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"incidentRecordArn">> := string(),
%%   <<"relatedItemsUpdate">> := list()
%% }
-type update_related_items_input() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> := map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% pager_duty_configuration() :: #{
%%   <<"name">> => [string()],
%%   <<"pagerDutyIncidentConfiguration">> => pager_duty_incident_configuration(),
%%   <<"secretId">> => [string()]
%% }
-type pager_duty_configuration() :: #{binary() => any()}.


%% Example:
%% trigger_details() :: #{
%%   <<"rawData">> => string(),
%%   <<"source">> => string(),
%%   <<"timestamp">> => [non_neg_integer()],
%%   <<"triggerArn">> => string()
%% }
-type trigger_details() :: #{binary() => any()}.


%% Example:
%% get_timeline_event_input() :: #{
%%   <<"eventId">> := string(),
%%   <<"incidentRecordArn">> := string()
%% }
-type get_timeline_event_input() :: #{binary() => any()}.


%% Example:
%% list_response_plans_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_response_plans_input() :: #{binary() => any()}.


%% Example:
%% filter() :: #{
%%   <<"condition">> => list(),
%%   <<"key">> => [string()]
%% }
-type filter() :: #{binary() => any()}.


%% Example:
%% event_summary() :: #{
%%   <<"eventId">> => string(),
%%   <<"eventReferences">> => list(list()),
%%   <<"eventTime">> => [non_neg_integer()],
%%   <<"eventType">> => string(),
%%   <<"eventUpdatedTime">> => [non_neg_integer()],
%%   <<"incidentRecordArn">> => string()
%% }
-type event_summary() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% resource_policy() :: #{
%%   <<"policyDocument">> => string(),
%%   <<"policyId">> => string(),
%%   <<"ramResourceShareRegion">> => [string()]
%% }
-type resource_policy() :: #{binary() => any()}.


%% Example:
%% get_timeline_event_output() :: #{
%%   <<"event">> := timeline_event()
%% }
-type get_timeline_event_output() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_output() :: #{}
-type delete_resource_policy_output() :: #{}.


%% Example:
%% get_response_plan_output() :: #{
%%   <<"actions">> => list(list()),
%%   <<"arn">> := string(),
%%   <<"chatChannel">> => list(),
%%   <<"displayName">> => string(),
%%   <<"engagements">> => list(string()),
%%   <<"incidentTemplate">> := incident_template(),
%%   <<"integrations">> => list(list()),
%%   <<"name">> := string()
%% }
-type get_response_plan_output() :: #{binary() => any()}.


%% Example:
%% list_timeline_events_input() :: #{
%%   <<"filters">> => list(filter()),
%%   <<"incidentRecordArn">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => string(),
%%   <<"sortOrder">> => string()
%% }
-type list_timeline_events_input() :: #{binary() => any()}.


%% Example:
%% incident_record_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"impact">> => integer(),
%%   <<"incidentRecordSource">> => incident_record_source(),
%%   <<"resolvedTime">> => [non_neg_integer()],
%%   <<"status">> => string(),
%%   <<"title">> => string()
%% }
-type incident_record_summary() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.

%% Example:
%% update_related_items_output() :: #{}
-type update_related_items_output() :: #{}.


%% Example:
%% region_info() :: #{
%%   <<"sseKmsKeyId">> => string(),
%%   <<"status">> => string(),
%%   <<"statusMessage">> => [string()],
%%   <<"statusUpdateDateTime">> => [non_neg_integer()]
%% }
-type region_info() :: #{binary() => any()}.


%% Example:
%% ssm_automation() :: #{
%%   <<"documentName">> => [string()],
%%   <<"documentVersion">> => [string()],
%%   <<"dynamicParameters">> => map(),
%%   <<"parameters">> => map(),
%%   <<"roleArn">> => string(),
%%   <<"targetAccount">> => string()
%% }
-type ssm_automation() :: #{binary() => any()}.


%% Example:
%% region_map_input_value() :: #{
%%   <<"sseKmsKeyId">> => string()
%% }
-type region_map_input_value() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% create_replication_set_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"regions">> := map(),
%%   <<"tags">> => map()
%% }
-type create_replication_set_input() :: #{binary() => any()}.


%% Example:
%% create_timeline_event_output() :: #{
%%   <<"eventId">> := string(),
%%   <<"incidentRecordArn">> := string()
%% }
-type create_timeline_event_output() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string(),
%%   <<"quotaCode">> => [string()],
%%   <<"serviceCode">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% incident_template() :: #{
%%   <<"dedupeString">> => string(),
%%   <<"impact">> => integer(),
%%   <<"incidentTags">> => map(),
%%   <<"notificationTargets">> => list(list()),
%%   <<"summary">> => string(),
%%   <<"title">> => string()
%% }
-type incident_template() :: #{binary() => any()}.


%% Example:
%% list_incident_records_input() :: #{
%%   <<"filters">> => list(filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_incident_records_input() :: #{binary() => any()}.


%% Example:
%% response_plan_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"displayName">> => string(),
%%   <<"name">> => string()
%% }
-type response_plan_summary() :: #{binary() => any()}.


%% Example:
%% add_region_action() :: #{
%%   <<"regionName">> => string(),
%%   <<"sseKmsKeyId">> => string()
%% }
-type add_region_action() :: #{binary() => any()}.

%% Example:
%% delete_response_plan_output() :: #{}
-type delete_response_plan_output() :: #{}.


%% Example:
%% list_response_plans_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"responsePlanSummaries">> := list(response_plan_summary())
%% }
-type list_response_plans_output() :: #{binary() => any()}.


%% Example:
%% get_response_plan_input() :: #{
%%   <<"arn">> := string()
%% }
-type get_response_plan_input() :: #{binary() => any()}.


%% Example:
%% update_timeline_event_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"eventData">> => string(),
%%   <<"eventId">> := string(),
%%   <<"eventReferences">> => list(list()),
%%   <<"eventTime">> => [non_neg_integer()],
%%   <<"eventType">> => string(),
%%   <<"incidentRecordArn">> := string()
%% }
-type update_timeline_event_input() :: #{binary() => any()}.


%% Example:
%% delete_replication_set_input() :: #{
%%   <<"arn">> := string()
%% }
-type delete_replication_set_input() :: #{binary() => any()}.


%% Example:
%% list_related_items_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"relatedItems">> := list(related_item())
%% }
-type list_related_items_output() :: #{binary() => any()}.

%% Example:
%% update_replication_set_output() :: #{}
-type update_replication_set_output() :: #{}.


%% Example:
%% create_timeline_event_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"eventData">> := string(),
%%   <<"eventReferences">> => list(list()),
%%   <<"eventTime">> := [non_neg_integer()],
%%   <<"eventType">> := string(),
%%   <<"incidentRecordArn">> := string()
%% }
-type create_timeline_event_input() :: #{binary() => any()}.


%% Example:
%% get_replication_set_output() :: #{
%%   <<"replicationSet">> := replication_set()
%% }
-type get_replication_set_output() :: #{binary() => any()}.


%% Example:
%% get_incident_record_input() :: #{
%%   <<"arn">> := string()
%% }
-type get_incident_record_input() :: #{binary() => any()}.


%% Example:
%% create_response_plan_input() :: #{
%%   <<"actions">> => list(list()),
%%   <<"chatChannel">> => list(),
%%   <<"clientToken">> => string(),
%%   <<"displayName">> => string(),
%%   <<"engagements">> => list(string()),
%%   <<"incidentTemplate">> := incident_template(),
%%   <<"integrations">> => list(list()),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_response_plan_input() :: #{binary() => any()}.

%% Example:
%% empty_chat_channel() :: #{}
-type empty_chat_channel() :: #{}.


%% Example:
%% cloud_formation_stack_update() :: #{
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"stackArn">> => string(),
%%   <<"startTime">> => [non_neg_integer()]
%% }
-type cloud_formation_stack_update() :: #{binary() => any()}.


%% Example:
%% create_replication_set_output() :: #{
%%   <<"arn">> := string()
%% }
-type create_replication_set_output() :: #{binary() => any()}.


%% Example:
%% incident_record() :: #{
%%   <<"arn">> => string(),
%%   <<"automationExecutions">> => list(list()),
%%   <<"chatChannel">> => list(),
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"dedupeString">> => string(),
%%   <<"impact">> => integer(),
%%   <<"incidentRecordSource">> => incident_record_source(),
%%   <<"lastModifiedBy">> => string(),
%%   <<"lastModifiedTime">> => [non_neg_integer()],
%%   <<"notificationTargets">> => list(list()),
%%   <<"resolvedTime">> => [non_neg_integer()],
%%   <<"status">> => string(),
%%   <<"summary">> => string(),
%%   <<"title">> => string()
%% }
-type incident_record() :: #{binary() => any()}.

%% Example:
%% delete_incident_record_output() :: #{}
-type delete_incident_record_output() :: #{}.


%% Example:
%% delete_timeline_event_input() :: #{
%%   <<"eventId">> := string(),
%%   <<"incidentRecordArn">> := string()
%% }
-type delete_timeline_event_input() :: #{binary() => any()}.

-type batch_get_incident_findings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_replication_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_response_plan_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_timeline_event_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_incident_record_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type delete_replication_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_resource_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_response_plan_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type delete_timeline_event_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_incident_record_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_replication_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_resource_policies_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_response_plan_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_timeline_event_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_incident_findings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_incident_records_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_related_items_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_replication_sets_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_response_plans_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_timeline_events_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type put_resource_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type start_incident_errors() ::
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
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_deletion_protection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_incident_record_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_related_items_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_replication_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_response_plan_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_timeline_event_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Retrieves details about all specified findings for an incident,
%% including descriptive details about each finding.
%%
%% A finding
%% represents a recent application environment change made by an CodeDeploy
%% deployment or an CloudFormation stack creation or update that can be
%% investigated as a
%% potential cause of the incident.
-spec batch_get_incident_findings(aws_client:aws_client(), batch_get_incident_findings_input()) ->
    {ok, batch_get_incident_findings_output(), tuple()} |
    {error, any()} |
    {error, batch_get_incident_findings_errors(), tuple()}.
batch_get_incident_findings(Client, Input) ->
    batch_get_incident_findings(Client, Input, []).

-spec batch_get_incident_findings(aws_client:aws_client(), batch_get_incident_findings_input(), proplists:proplist()) ->
    {ok, batch_get_incident_findings_output(), tuple()} |
    {error, any()} |
    {error, batch_get_incident_findings_errors(), tuple()}.
batch_get_incident_findings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/batchGetIncidentFindings"],
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

%% @doc A replication set replicates and encrypts your data to the provided
%% Regions with the
%% provided KMS key.
-spec create_replication_set(aws_client:aws_client(), create_replication_set_input()) ->
    {ok, create_replication_set_output(), tuple()} |
    {error, any()} |
    {error, create_replication_set_errors(), tuple()}.
create_replication_set(Client, Input) ->
    create_replication_set(Client, Input, []).

-spec create_replication_set(aws_client:aws_client(), create_replication_set_input(), proplists:proplist()) ->
    {ok, create_replication_set_output(), tuple()} |
    {error, any()} |
    {error, create_replication_set_errors(), tuple()}.
create_replication_set(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createReplicationSet"],
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

%% @doc Creates a response plan that automates the initial response to
%% incidents.
%%
%% A response plan
%% engages contacts, starts chat channel collaboration, and initiates
%% runbooks at the beginning
%% of an incident.
-spec create_response_plan(aws_client:aws_client(), create_response_plan_input()) ->
    {ok, create_response_plan_output(), tuple()} |
    {error, any()} |
    {error, create_response_plan_errors(), tuple()}.
create_response_plan(Client, Input) ->
    create_response_plan(Client, Input, []).

-spec create_response_plan(aws_client:aws_client(), create_response_plan_input(), proplists:proplist()) ->
    {ok, create_response_plan_output(), tuple()} |
    {error, any()} |
    {error, create_response_plan_errors(), tuple()}.
create_response_plan(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createResponsePlan"],
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

%% @doc Creates a custom timeline event on the incident details page of an
%% incident record.
%%
%% Incident Manager automatically creates timeline events that mark key
%% moments during an incident.
%% You can create custom timeline events to mark important events that
%% Incident Manager can detect
%% automatically.
-spec create_timeline_event(aws_client:aws_client(), create_timeline_event_input()) ->
    {ok, create_timeline_event_output(), tuple()} |
    {error, any()} |
    {error, create_timeline_event_errors(), tuple()}.
create_timeline_event(Client, Input) ->
    create_timeline_event(Client, Input, []).

-spec create_timeline_event(aws_client:aws_client(), create_timeline_event_input(), proplists:proplist()) ->
    {ok, create_timeline_event_output(), tuple()} |
    {error, any()} |
    {error, create_timeline_event_errors(), tuple()}.
create_timeline_event(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createTimelineEvent"],
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

%% @doc Delete an incident record from Incident Manager.
-spec delete_incident_record(aws_client:aws_client(), delete_incident_record_input()) ->
    {ok, delete_incident_record_output(), tuple()} |
    {error, any()} |
    {error, delete_incident_record_errors(), tuple()}.
delete_incident_record(Client, Input) ->
    delete_incident_record(Client, Input, []).

-spec delete_incident_record(aws_client:aws_client(), delete_incident_record_input(), proplists:proplist()) ->
    {ok, delete_incident_record_output(), tuple()} |
    {error, any()} |
    {error, delete_incident_record_errors(), tuple()}.
delete_incident_record(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteIncidentRecord"],
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

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes all Regions in your replication set.
%%
%% Deleting the replication set deletes all
%% Incident Manager data.
-spec delete_replication_set(aws_client:aws_client(), delete_replication_set_input()) ->
    {ok, delete_replication_set_output(), tuple()} |
    {error, any()} |
    {error, delete_replication_set_errors(), tuple()}.
delete_replication_set(Client, Input) ->
    delete_replication_set(Client, Input, []).

-spec delete_replication_set(aws_client:aws_client(), delete_replication_set_input(), proplists:proplist()) ->
    {ok, delete_replication_set_output(), tuple()} |
    {error, any()} |
    {error, delete_replication_set_errors(), tuple()}.
delete_replication_set(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteReplicationSet"],
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
                     {<<"arn">>, <<"arn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the resource policy that Resource Access Manager uses to
%% share your Incident Manager
%% resource.
-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_input()) ->
    {ok, delete_resource_policy_output(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input) ->
    delete_resource_policy(Client, Input, []).

-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_input(), proplists:proplist()) ->
    {ok, delete_resource_policy_output(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteResourcePolicy"],
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

%% @doc Deletes the specified response plan.
%%
%% Deleting a response plan stops all linked CloudWatch alarms and
%% EventBridge events from creating an incident with this response
%% plan.
-spec delete_response_plan(aws_client:aws_client(), delete_response_plan_input()) ->
    {ok, delete_response_plan_output(), tuple()} |
    {error, any()} |
    {error, delete_response_plan_errors(), tuple()}.
delete_response_plan(Client, Input) ->
    delete_response_plan(Client, Input, []).

-spec delete_response_plan(aws_client:aws_client(), delete_response_plan_input(), proplists:proplist()) ->
    {ok, delete_response_plan_output(), tuple()} |
    {error, any()} |
    {error, delete_response_plan_errors(), tuple()}.
delete_response_plan(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteResponsePlan"],
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

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a timeline event from an incident.
-spec delete_timeline_event(aws_client:aws_client(), delete_timeline_event_input()) ->
    {ok, delete_timeline_event_output(), tuple()} |
    {error, any()} |
    {error, delete_timeline_event_errors(), tuple()}.
delete_timeline_event(Client, Input) ->
    delete_timeline_event(Client, Input, []).

-spec delete_timeline_event(aws_client:aws_client(), delete_timeline_event_input(), proplists:proplist()) ->
    {ok, delete_timeline_event_output(), tuple()} |
    {error, any()} |
    {error, delete_timeline_event_errors(), tuple()}.
delete_timeline_event(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteTimelineEvent"],
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

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the details for the specified incident record.
-spec get_incident_record(aws_client:aws_client(), binary() | list()) ->
    {ok, get_incident_record_output(), tuple()} |
    {error, any()} |
    {error, get_incident_record_errors(), tuple()}.
get_incident_record(Client, Arn)
  when is_map(Client) ->
    get_incident_record(Client, Arn, #{}, #{}).

-spec get_incident_record(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_incident_record_output(), tuple()} |
    {error, any()} |
    {error, get_incident_record_errors(), tuple()}.
get_incident_record(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_incident_record(Client, Arn, QueryMap, HeadersMap, []).

-spec get_incident_record(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_incident_record_output(), tuple()} |
    {error, any()} |
    {error, get_incident_record_errors(), tuple()}.
get_incident_record(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/getIncidentRecord"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"arn">>, Arn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve your Incident Manager replication set.
-spec get_replication_set(aws_client:aws_client(), binary() | list()) ->
    {ok, get_replication_set_output(), tuple()} |
    {error, any()} |
    {error, get_replication_set_errors(), tuple()}.
get_replication_set(Client, Arn)
  when is_map(Client) ->
    get_replication_set(Client, Arn, #{}, #{}).

-spec get_replication_set(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_replication_set_output(), tuple()} |
    {error, any()} |
    {error, get_replication_set_errors(), tuple()}.
get_replication_set(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_replication_set(Client, Arn, QueryMap, HeadersMap, []).

-spec get_replication_set(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_replication_set_output(), tuple()} |
    {error, any()} |
    {error, get_replication_set_errors(), tuple()}.
get_replication_set(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/getReplicationSet"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"arn">>, Arn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the resource policies attached to the specified response
%% plan.
-spec get_resource_policies(aws_client:aws_client(), get_resource_policies_input()) ->
    {ok, get_resource_policies_output(), tuple()} |
    {error, any()} |
    {error, get_resource_policies_errors(), tuple()}.
get_resource_policies(Client, Input) ->
    get_resource_policies(Client, Input, []).

-spec get_resource_policies(aws_client:aws_client(), get_resource_policies_input(), proplists:proplist()) ->
    {ok, get_resource_policies_output(), tuple()} |
    {error, any()} |
    {error, get_resource_policies_errors(), tuple()}.
get_resource_policies(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getResourcePolicies"],
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

%% @doc Retrieves the details of the specified response plan.
-spec get_response_plan(aws_client:aws_client(), binary() | list()) ->
    {ok, get_response_plan_output(), tuple()} |
    {error, any()} |
    {error, get_response_plan_errors(), tuple()}.
get_response_plan(Client, Arn)
  when is_map(Client) ->
    get_response_plan(Client, Arn, #{}, #{}).

-spec get_response_plan(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_response_plan_output(), tuple()} |
    {error, any()} |
    {error, get_response_plan_errors(), tuple()}.
get_response_plan(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_response_plan(Client, Arn, QueryMap, HeadersMap, []).

-spec get_response_plan(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_response_plan_output(), tuple()} |
    {error, any()} |
    {error, get_response_plan_errors(), tuple()}.
get_response_plan(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/getResponsePlan"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"arn">>, Arn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a timeline event based on its ID and incident record.
-spec get_timeline_event(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_timeline_event_output(), tuple()} |
    {error, any()} |
    {error, get_timeline_event_errors(), tuple()}.
get_timeline_event(Client, EventId, IncidentRecordArn)
  when is_map(Client) ->
    get_timeline_event(Client, EventId, IncidentRecordArn, #{}, #{}).

-spec get_timeline_event(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_timeline_event_output(), tuple()} |
    {error, any()} |
    {error, get_timeline_event_errors(), tuple()}.
get_timeline_event(Client, EventId, IncidentRecordArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_timeline_event(Client, EventId, IncidentRecordArn, QueryMap, HeadersMap, []).

-spec get_timeline_event(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_timeline_event_output(), tuple()} |
    {error, any()} |
    {error, get_timeline_event_errors(), tuple()}.
get_timeline_event(Client, EventId, IncidentRecordArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/getTimelineEvent"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"eventId">>, EventId},
        {<<"incidentRecordArn">>, IncidentRecordArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of the IDs of findings, plus their last modified
%% times, that have been
%% identified for a specified incident.
%%
%% A finding represents a recent application environment
%% change made by an CloudFormation stack creation or update or an CodeDeploy
%% deployment that can be investigated as a potential cause of the incident.
-spec list_incident_findings(aws_client:aws_client(), list_incident_findings_input()) ->
    {ok, list_incident_findings_output(), tuple()} |
    {error, any()} |
    {error, list_incident_findings_errors(), tuple()}.
list_incident_findings(Client, Input) ->
    list_incident_findings(Client, Input, []).

-spec list_incident_findings(aws_client:aws_client(), list_incident_findings_input(), proplists:proplist()) ->
    {ok, list_incident_findings_output(), tuple()} |
    {error, any()} |
    {error, list_incident_findings_errors(), tuple()}.
list_incident_findings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listIncidentFindings"],
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

%% @doc Lists all incident records in your account.
%%
%% Use this command to retrieve the Amazon
%% Resource Name (ARN) of the incident record you want to update.
-spec list_incident_records(aws_client:aws_client(), list_incident_records_input()) ->
    {ok, list_incident_records_output(), tuple()} |
    {error, any()} |
    {error, list_incident_records_errors(), tuple()}.
list_incident_records(Client, Input) ->
    list_incident_records(Client, Input, []).

-spec list_incident_records(aws_client:aws_client(), list_incident_records_input(), proplists:proplist()) ->
    {ok, list_incident_records_output(), tuple()} |
    {error, any()} |
    {error, list_incident_records_errors(), tuple()}.
list_incident_records(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listIncidentRecords"],
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

%% @doc List all related items for an incident record.
-spec list_related_items(aws_client:aws_client(), list_related_items_input()) ->
    {ok, list_related_items_output(), tuple()} |
    {error, any()} |
    {error, list_related_items_errors(), tuple()}.
list_related_items(Client, Input) ->
    list_related_items(Client, Input, []).

-spec list_related_items(aws_client:aws_client(), list_related_items_input(), proplists:proplist()) ->
    {ok, list_related_items_output(), tuple()} |
    {error, any()} |
    {error, list_related_items_errors(), tuple()}.
list_related_items(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listRelatedItems"],
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

%% @doc Lists details about the replication set configured in your account.
-spec list_replication_sets(aws_client:aws_client(), list_replication_sets_input()) ->
    {ok, list_replication_sets_output(), tuple()} |
    {error, any()} |
    {error, list_replication_sets_errors(), tuple()}.
list_replication_sets(Client, Input) ->
    list_replication_sets(Client, Input, []).

-spec list_replication_sets(aws_client:aws_client(), list_replication_sets_input(), proplists:proplist()) ->
    {ok, list_replication_sets_output(), tuple()} |
    {error, any()} |
    {error, list_replication_sets_errors(), tuple()}.
list_replication_sets(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listReplicationSets"],
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

%% @doc Lists all response plans in your account.
-spec list_response_plans(aws_client:aws_client(), list_response_plans_input()) ->
    {ok, list_response_plans_output(), tuple()} |
    {error, any()} |
    {error, list_response_plans_errors(), tuple()}.
list_response_plans(Client, Input) ->
    list_response_plans(Client, Input, []).

-spec list_response_plans(aws_client:aws_client(), list_response_plans_input(), proplists:proplist()) ->
    {ok, list_response_plans_output(), tuple()} |
    {error, any()} |
    {error, list_response_plans_errors(), tuple()}.
list_response_plans(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listResponsePlans"],
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

%% @doc Lists the tags that are attached to the specified response plan or
%% incident.
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

%% @doc Lists timeline events for the specified incident record.
-spec list_timeline_events(aws_client:aws_client(), list_timeline_events_input()) ->
    {ok, list_timeline_events_output(), tuple()} |
    {error, any()} |
    {error, list_timeline_events_errors(), tuple()}.
list_timeline_events(Client, Input) ->
    list_timeline_events(Client, Input, []).

-spec list_timeline_events(aws_client:aws_client(), list_timeline_events_input(), proplists:proplist()) ->
    {ok, list_timeline_events_output(), tuple()} |
    {error, any()} |
    {error, list_timeline_events_errors(), tuple()}.
list_timeline_events(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listTimelineEvents"],
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

%% @doc Adds a resource policy to the specified response plan.
%%
%% The resource policy is used to
%% share the response plan using Resource Access Manager (RAM). For more
%% information about cross-account sharing, see Cross-Region and
%% cross-account incident management:
%% https://docs.aws.amazon.com/incident-manager/latest/userguide/incident-manager-cross-account-cross-region.html.
-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_input()) ->
    {ok, put_resource_policy_output(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input) ->
    put_resource_policy(Client, Input, []).

-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_input(), proplists:proplist()) ->
    {ok, put_resource_policy_output(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/putResourcePolicy"],
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

%% @doc Used to start an incident from CloudWatch alarms, EventBridge events,
%% or
%% manually.
-spec start_incident(aws_client:aws_client(), start_incident_input()) ->
    {ok, start_incident_output(), tuple()} |
    {error, any()} |
    {error, start_incident_errors(), tuple()}.
start_incident(Client, Input) ->
    start_incident(Client, Input, []).

-spec start_incident(aws_client:aws_client(), start_incident_input(), proplists:proplist()) ->
    {ok, start_incident_output(), tuple()} |
    {error, any()} |
    {error, start_incident_errors(), tuple()}.
start_incident(Client, Input0, Options0) ->
    Method = post,
    Path = ["/startIncident"],
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

%% @doc Adds a tag to a response plan.
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

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a tag from a resource.
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
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update deletion protection to either allow or deny deletion of the
%% final Region in a
%% replication set.
-spec update_deletion_protection(aws_client:aws_client(), update_deletion_protection_input()) ->
    {ok, update_deletion_protection_output(), tuple()} |
    {error, any()} |
    {error, update_deletion_protection_errors(), tuple()}.
update_deletion_protection(Client, Input) ->
    update_deletion_protection(Client, Input, []).

-spec update_deletion_protection(aws_client:aws_client(), update_deletion_protection_input(), proplists:proplist()) ->
    {ok, update_deletion_protection_output(), tuple()} |
    {error, any()} |
    {error, update_deletion_protection_errors(), tuple()}.
update_deletion_protection(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateDeletionProtection"],
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

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update the details of an incident record.
%%
%% You can use this operation to update an incident
%% record from the defined chat channel. For more information about using
%% actions in chat
%% channels, see Interacting through chat:
%% https://docs.aws.amazon.com/incident-manager/latest/userguide/chat.html#chat-interact.
-spec update_incident_record(aws_client:aws_client(), update_incident_record_input()) ->
    {ok, update_incident_record_output(), tuple()} |
    {error, any()} |
    {error, update_incident_record_errors(), tuple()}.
update_incident_record(Client, Input) ->
    update_incident_record(Client, Input, []).

-spec update_incident_record(aws_client:aws_client(), update_incident_record_input(), proplists:proplist()) ->
    {ok, update_incident_record_output(), tuple()} |
    {error, any()} |
    {error, update_incident_record_errors(), tuple()}.
update_incident_record(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateIncidentRecord"],
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

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Add or remove related items from the related items tab of an incident
%% record.
-spec update_related_items(aws_client:aws_client(), update_related_items_input()) ->
    {ok, update_related_items_output(), tuple()} |
    {error, any()} |
    {error, update_related_items_errors(), tuple()}.
update_related_items(Client, Input) ->
    update_related_items(Client, Input, []).

-spec update_related_items(aws_client:aws_client(), update_related_items_input(), proplists:proplist()) ->
    {ok, update_related_items_output(), tuple()} |
    {error, any()} |
    {error, update_related_items_errors(), tuple()}.
update_related_items(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateRelatedItems"],
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

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Add or delete Regions from your replication set.
-spec update_replication_set(aws_client:aws_client(), update_replication_set_input()) ->
    {ok, update_replication_set_output(), tuple()} |
    {error, any()} |
    {error, update_replication_set_errors(), tuple()}.
update_replication_set(Client, Input) ->
    update_replication_set(Client, Input, []).

-spec update_replication_set(aws_client:aws_client(), update_replication_set_input(), proplists:proplist()) ->
    {ok, update_replication_set_output(), tuple()} |
    {error, any()} |
    {error, update_replication_set_errors(), tuple()}.
update_replication_set(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateReplicationSet"],
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

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the specified response plan.
-spec update_response_plan(aws_client:aws_client(), update_response_plan_input()) ->
    {ok, update_response_plan_output(), tuple()} |
    {error, any()} |
    {error, update_response_plan_errors(), tuple()}.
update_response_plan(Client, Input) ->
    update_response_plan(Client, Input, []).

-spec update_response_plan(aws_client:aws_client(), update_response_plan_input(), proplists:proplist()) ->
    {ok, update_response_plan_output(), tuple()} |
    {error, any()} |
    {error, update_response_plan_errors(), tuple()}.
update_response_plan(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateResponsePlan"],
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

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a timeline event.
%%
%% You can update events of type `Custom Event'.
-spec update_timeline_event(aws_client:aws_client(), update_timeline_event_input()) ->
    {ok, update_timeline_event_output(), tuple()} |
    {error, any()} |
    {error, update_timeline_event_errors(), tuple()}.
update_timeline_event(Client, Input) ->
    update_timeline_event(Client, Input, []).

-spec update_timeline_event(aws_client:aws_client(), update_timeline_event_input(), proplists:proplist()) ->
    {ok, update_timeline_event_output(), tuple()} |
    {error, any()} |
    {error, update_timeline_event_errors(), tuple()}.
update_timeline_event(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateTimelineEvent"],
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
    Client1 = Client#{service => <<"ssm-incidents">>},
    Host = build_host(<<"ssm-incidents">>, Client1),
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
