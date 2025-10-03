%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Cases actions:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_Operations_Amazon_Connect_Cases.html
%%
%% Cases data types:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_Types_Amazon_Connect_Cases.html
%%
%% With Amazon Connect Cases, your agents can track and manage customer
%% issues that require multiple interactions, follow-up tasks, and teams in
%% your contact center.
%%
%% A case represents a customer issue. It records the issue, the steps and
%% interactions taken to resolve the issue, and the outcome. For more
%% information, see Amazon Connect Cases:
%% https://docs.aws.amazon.com/connect/latest/adminguide/cases.html in the
%% Amazon Connect Administrator Guide.
-module(aws_connectcases).

-export([batch_get_case_rule/3,
         batch_get_case_rule/4,
         batch_get_field/3,
         batch_get_field/4,
         batch_put_field_options/4,
         batch_put_field_options/5,
         create_case/3,
         create_case/4,
         create_case_rule/3,
         create_case_rule/4,
         create_domain/2,
         create_domain/3,
         create_field/3,
         create_field/4,
         create_layout/3,
         create_layout/4,
         create_related_item/4,
         create_related_item/5,
         create_template/3,
         create_template/4,
         delete_case/4,
         delete_case/5,
         delete_case_rule/4,
         delete_case_rule/5,
         delete_domain/3,
         delete_domain/4,
         delete_field/4,
         delete_field/5,
         delete_layout/4,
         delete_layout/5,
         delete_related_item/5,
         delete_related_item/6,
         delete_template/4,
         delete_template/5,
         get_case/4,
         get_case/5,
         get_case_audit_events/4,
         get_case_audit_events/5,
         get_case_event_configuration/3,
         get_case_event_configuration/4,
         get_domain/3,
         get_domain/4,
         get_layout/4,
         get_layout/5,
         get_template/4,
         get_template/5,
         list_case_rules/3,
         list_case_rules/4,
         list_cases_for_contact/3,
         list_cases_for_contact/4,
         list_domains/2,
         list_domains/3,
         list_field_options/4,
         list_field_options/5,
         list_fields/3,
         list_fields/4,
         list_layouts/3,
         list_layouts/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_templates/3,
         list_templates/4,
         put_case_event_configuration/3,
         put_case_event_configuration/4,
         search_all_related_items/3,
         search_all_related_items/4,
         search_cases/3,
         search_cases/4,
         search_related_items/4,
         search_related_items/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_case/4,
         update_case/5,
         update_case_rule/4,
         update_case_rule/5,
         update_field/4,
         update_field/5,
         update_layout/4,
         update_layout/5,
         update_template/4,
         update_template/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% contact_filter() :: #{
%%   <<"channel">> => list(string()),
%%   <<"contactArn">> => string()
%% }
-type contact_filter() :: #{binary() => any()}.

%% Example:
%% get_domain_request() :: #{}
-type get_domain_request() :: #{}.

%% Example:
%% delete_case_rule_request() :: #{}
-type delete_case_rule_request() :: #{}.

%% Example:
%% delete_domain_response() :: #{}
-type delete_domain_response() :: #{}.

%% Example:
%% update_case_rule_response() :: #{}
-type update_case_rule_response() :: #{}.


%% Example:
%% connect_case_filter() :: #{
%%   <<"caseId">> => string()
%% }
-type connect_case_filter() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% update_layout_request() :: #{
%%   <<"content">> => list(),
%%   <<"name">> => string()
%% }
-type update_layout_request() :: #{binary() => any()}.


%% Example:
%% template_rule() :: #{
%%   <<"caseRuleId">> => string(),
%%   <<"fieldId">> => string()
%% }
-type template_rule() :: #{binary() => any()}.


%% Example:
%% get_case_audit_events_response() :: #{
%%   <<"auditEvents">> => list(audit_event()),
%%   <<"nextToken">> => string()
%% }
-type get_case_audit_events_response() :: #{binary() => any()}.


%% Example:
%% sla_content() :: #{
%%   <<"slaConfiguration">> => sla_configuration()
%% }
-type sla_content() :: #{binary() => any()}.


%% Example:
%% search_related_items_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"relatedItems">> := list(search_related_items_response_item())
%% }
-type search_related_items_response() :: #{binary() => any()}.


%% Example:
%% list_fields_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_fields_request() :: #{binary() => any()}.


%% Example:
%% search_cases_request() :: #{
%%   <<"fields">> => list(field_identifier()),
%%   <<"filter">> => list(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"searchTerm">> => [string()],
%%   <<"sorts">> => list(sort())
%% }
-type search_cases_request() :: #{binary() => any()}.


%% Example:
%% get_case_audit_events_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type get_case_audit_events_request() :: #{binary() => any()}.


%% Example:
%% create_case_rule_response() :: #{
%%   <<"caseRuleArn">> => string(),
%%   <<"caseRuleId">> => string()
%% }
-type create_case_rule_response() :: #{binary() => any()}.


%% Example:
%% list_templates_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => list(string())
%% }
-type list_templates_request() :: #{binary() => any()}.


%% Example:
%% create_case_request() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"fields">> := list(field_value()),
%%   <<"performedBy">> => list(),
%%   <<"templateId">> := string()
%% }
-type create_case_request() :: #{binary() => any()}.


%% Example:
%% field_option_error() :: #{
%%   <<"errorCode">> => [string()],
%%   <<"message">> => [string()],
%%   <<"value">> => string()
%% }
-type field_option_error() :: #{binary() => any()}.


%% Example:
%% list_layouts_response() :: #{
%%   <<"layouts">> := list(layout_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_layouts_response() :: #{binary() => any()}.


%% Example:
%% domain_summary() :: #{
%%   <<"domainArn">> => string(),
%%   <<"domainId">> => string(),
%%   <<"name">> => string()
%% }
-type domain_summary() :: #{binary() => any()}.


%% Example:
%% create_template_request() :: #{
%%   <<"description">> => string(),
%%   <<"layoutConfiguration">> => layout_configuration(),
%%   <<"name">> := string(),
%%   <<"requiredFields">> => list(required_field()),
%%   <<"rules">> => list(template_rule()),
%%   <<"status">> => string()
%% }
-type create_template_request() :: #{binary() => any()}.


%% Example:
%% get_template_response() :: #{
%%   <<"createdTime">> => non_neg_integer(),
%%   <<"deleted">> => boolean(),
%%   <<"description">> => string(),
%%   <<"lastModifiedTime">> => non_neg_integer(),
%%   <<"layoutConfiguration">> => layout_configuration(),
%%   <<"name">> := string(),
%%   <<"requiredFields">> => list(required_field()),
%%   <<"rules">> => list(template_rule()),
%%   <<"status">> := string(),
%%   <<"tags">> => map(),
%%   <<"templateArn">> := string(),
%%   <<"templateId">> := string()
%% }
-type get_template_response() :: #{binary() => any()}.

%% Example:
%% delete_related_item_request() :: #{}
-type delete_related_item_request() :: #{}.


%% Example:
%% batch_put_field_options_request() :: #{
%%   <<"options">> := list(field_option())
%% }
-type batch_put_field_options_request() :: #{binary() => any()}.

%% Example:
%% delete_field_request() :: #{}
-type delete_field_request() :: #{}.


%% Example:
%% create_case_response() :: #{
%%   <<"caseArn">> := string(),
%%   <<"caseId">> := string()
%% }
-type create_case_response() :: #{binary() => any()}.


%% Example:
%% file_filter() :: #{
%%   <<"fileArn">> => string()
%% }
-type file_filter() :: #{binary() => any()}.

%% Example:
%% comment_filter() :: #{}
-type comment_filter() :: #{}.


%% Example:
%% list_field_options_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"values">> => list(string())
%% }
-type list_field_options_request() :: #{binary() => any()}.


%% Example:
%% create_layout_request() :: #{
%%   <<"content">> := list(),
%%   <<"name">> := string()
%% }
-type create_layout_request() :: #{binary() => any()}.


%% Example:
%% update_template_request() :: #{
%%   <<"description">> => string(),
%%   <<"layoutConfiguration">> => layout_configuration(),
%%   <<"name">> => string(),
%%   <<"requiredFields">> => list(required_field()),
%%   <<"rules">> => list(template_rule()),
%%   <<"status">> => string()
%% }
-type update_template_request() :: #{binary() => any()}.


%% Example:
%% list_cases_for_contact_response() :: #{
%%   <<"cases">> := list(case_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_cases_for_contact_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% create_field_response() :: #{
%%   <<"fieldArn">> := string(),
%%   <<"fieldId">> := string()
%% }
-type create_field_response() :: #{binary() => any()}.


%% Example:
%% get_case_response() :: #{
%%   <<"fields">> := list(field_value()),
%%   <<"nextToken">> => string(),
%%   <<"tags">> => map(),
%%   <<"templateId">> := string()
%% }
-type get_case_response() :: #{binary() => any()}.


%% Example:
%% comment_content() :: #{
%%   <<"body">> => string(),
%%   <<"contentType">> => string()
%% }
-type comment_content() :: #{binary() => any()}.


%% Example:
%% required_field() :: #{
%%   <<"fieldId">> => string()
%% }
-type required_field() :: #{binary() => any()}.


%% Example:
%% get_case_rule_response() :: #{
%%   <<"caseRuleArn">> => string(),
%%   <<"caseRuleId">> => string(),
%%   <<"createdTime">> => non_neg_integer(),
%%   <<"deleted">> => boolean(),
%%   <<"description">> => string(),
%%   <<"lastModifiedTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"rule">> => list(),
%%   <<"tags">> => map()
%% }
-type get_case_rule_response() :: #{binary() => any()}.

%% Example:
%% delete_layout_response() :: #{}
-type delete_layout_response() :: #{}.


%% Example:
%% search_cases_response_item() :: #{
%%   <<"caseId">> => string(),
%%   <<"fields">> => list(field_value()),
%%   <<"tags">> => map(),
%%   <<"templateId">> => string()
%% }
-type search_cases_response_item() :: #{binary() => any()}.


%% Example:
%% search_related_items_request() :: #{
%%   <<"filters">> => list(list()),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type search_related_items_request() :: #{binary() => any()}.

%% Example:
%% delete_domain_request() :: #{}
-type delete_domain_request() :: #{}.


%% Example:
%% basic_layout() :: #{
%%   <<"moreInfo">> => layout_sections(),
%%   <<"topPanel">> => layout_sections()
%% }
-type basic_layout() :: #{binary() => any()}.

%% Example:
%% empty_field_value() :: #{}
-type empty_field_value() :: #{}.

%% Example:
%% delete_template_request() :: #{}
-type delete_template_request() :: #{}.

%% Example:
%% get_case_event_configuration_request() :: #{}
-type get_case_event_configuration_request() :: #{}.


%% Example:
%% search_all_related_items_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"relatedItems">> => list(search_all_related_items_response_item())
%% }
-type search_all_related_items_response() :: #{binary() => any()}.


%% Example:
%% search_all_related_items_request() :: #{
%%   <<"filters">> => list(list()),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"sorts">> => list(search_all_related_items_sort())
%% }
-type search_all_related_items_request() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% create_domain_request() :: #{
%%   <<"name">> := string()
%% }
-type create_domain_request() :: #{binary() => any()}.


%% Example:
%% batch_get_field_request() :: #{
%%   <<"fields">> := list(field_identifier())
%% }
-type batch_get_field_request() :: #{binary() => any()}.


%% Example:
%% get_case_event_configuration_response() :: #{
%%   <<"eventBridge">> := event_bridge_configuration()
%% }
-type get_case_event_configuration_response() :: #{binary() => any()}.


%% Example:
%% connect_case_content() :: #{
%%   <<"caseId">> => string()
%% }
-type connect_case_content() :: #{binary() => any()}.


%% Example:
%% audit_event_field() :: #{
%%   <<"eventFieldId">> => string(),
%%   <<"newValue">> => list(),
%%   <<"oldValue">> => list()
%% }
-type audit_event_field() :: #{binary() => any()}.


%% Example:
%% get_case_request() :: #{
%%   <<"fields">> := list(field_identifier()),
%%   <<"nextToken">> => string()
%% }
-type get_case_request() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% search_related_items_response_item() :: #{
%%   <<"associationTime">> => non_neg_integer(),
%%   <<"content">> => list(),
%%   <<"performedBy">> => list(),
%%   <<"relatedItemId">> => string(),
%%   <<"tags">> => map(),
%%   <<"type">> => string()
%% }
-type search_related_items_response_item() :: #{binary() => any()}.


%% Example:
%% list_domains_response() :: #{
%%   <<"domains">> := list(domain_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_domains_response() :: #{binary() => any()}.


%% Example:
%% list_case_rules_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_case_rules_request() :: #{binary() => any()}.

%% Example:
%% update_field_response() :: #{}
-type update_field_response() :: #{}.


%% Example:
%% template_summary() :: #{
%%   <<"name">> => string(),
%%   <<"status">> => string(),
%%   <<"templateArn">> => string(),
%%   <<"templateId">> => string()
%% }
-type template_summary() :: #{binary() => any()}.


%% Example:
%% create_case_rule_request() :: #{
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"rule">> := list()
%% }
-type create_case_rule_request() :: #{binary() => any()}.


%% Example:
%% create_field_request() :: #{
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"type">> := string()
%% }
-type create_field_request() :: #{binary() => any()}.


%% Example:
%% batch_get_field_response() :: #{
%%   <<"errors">> := list(field_error()),
%%   <<"fields">> := list(get_field_response())
%% }
-type batch_get_field_response() :: #{binary() => any()}.


%% Example:
%% list_case_rules_response() :: #{
%%   <<"caseRules">> => list(case_rule_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_case_rules_response() :: #{binary() => any()}.


%% Example:
%% sla_input_configuration() :: #{
%%   <<"fieldId">> => string(),
%%   <<"name">> => string(),
%%   <<"targetFieldValues">> => list(list()),
%%   <<"targetSlaMinutes">> => float(),
%%   <<"type">> => string()
%% }
-type sla_input_configuration() :: #{binary() => any()}.

%% Example:
%% delete_case_rule_response() :: #{}
-type delete_case_rule_response() :: #{}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% create_layout_response() :: #{
%%   <<"layoutArn">> := string(),
%%   <<"layoutId">> := string()
%% }
-type create_layout_response() :: #{binary() => any()}.

%% Example:
%% empty_operand_value() :: #{}
-type empty_operand_value() :: #{}.

%% Example:
%% put_case_event_configuration_response() :: #{}
-type put_case_event_configuration_response() :: #{}.


%% Example:
%% list_fields_response() :: #{
%%   <<"fields">> := list(field_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_fields_response() :: #{binary() => any()}.

%% Example:
%% delete_case_response() :: #{}
-type delete_case_response() :: #{}.


%% Example:
%% sort() :: #{
%%   <<"fieldId">> => string(),
%%   <<"sortOrder">> => string()
%% }
-type sort() :: #{binary() => any()}.


%% Example:
%% contact() :: #{
%%   <<"contactArn">> => string()
%% }
-type contact() :: #{binary() => any()}.


%% Example:
%% create_related_item_response() :: #{
%%   <<"relatedItemArn">> := string(),
%%   <<"relatedItemId">> := string()
%% }
-type create_related_item_response() :: #{binary() => any()}.


%% Example:
%% get_domain_response() :: #{
%%   <<"createdTime">> := non_neg_integer(),
%%   <<"domainArn">> := string(),
%%   <<"domainId">> := string(),
%%   <<"domainStatus">> := string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type get_domain_response() :: #{binary() => any()}.


%% Example:
%% field_item() :: #{
%%   <<"id">> => string()
%% }
-type field_item() :: #{binary() => any()}.


%% Example:
%% field_error() :: #{
%%   <<"errorCode">> => [string()],
%%   <<"id">> => string(),
%%   <<"message">> => [string()]
%% }
-type field_error() :: #{binary() => any()}.


%% Example:
%% field_summary() :: #{
%%   <<"fieldArn">> => string(),
%%   <<"fieldId">> => string(),
%%   <<"name">> => string(),
%%   <<"namespace">> => string(),
%%   <<"type">> => string()
%% }
-type field_summary() :: #{binary() => any()}.

%% Example:
%% delete_case_request() :: #{}
-type delete_case_request() :: #{}.

%% Example:
%% delete_related_item_response() :: #{}
-type delete_related_item_response() :: #{}.


%% Example:
%% list_layouts_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_layouts_request() :: #{binary() => any()}.

%% Example:
%% update_template_response() :: #{}
-type update_template_response() :: #{}.


%% Example:
%% list_domains_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_domains_request() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% event_included_data() :: #{
%%   <<"caseData">> => case_event_included_data(),
%%   <<"relatedItemData">> => related_item_event_included_data()
%% }
-type event_included_data() :: #{binary() => any()}.


%% Example:
%% update_case_request() :: #{
%%   <<"fields">> := list(field_value()),
%%   <<"performedBy">> => list()
%% }
-type update_case_request() :: #{binary() => any()}.


%% Example:
%% sla_filter() :: #{
%%   <<"name">> => string(),
%%   <<"status">> => string()
%% }
-type sla_filter() :: #{binary() => any()}.


%% Example:
%% event_bridge_configuration() :: #{
%%   <<"enabled">> => [boolean()],
%%   <<"includedData">> => event_included_data()
%% }
-type event_bridge_configuration() :: #{binary() => any()}.

%% Example:
%% delete_field_response() :: #{}
-type delete_field_response() :: #{}.


%% Example:
%% sla_configuration() :: #{
%%   <<"completionTime">> => non_neg_integer(),
%%   <<"fieldId">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => string(),
%%   <<"targetFieldValues">> => list(list()),
%%   <<"targetTime">> => non_neg_integer(),
%%   <<"type">> => string()
%% }
-type sla_configuration() :: #{binary() => any()}.


%% Example:
%% update_case_rule_request() :: #{
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"rule">> => list()
%% }
-type update_case_rule_request() :: #{binary() => any()}.

%% Example:
%% get_layout_request() :: #{}
-type get_layout_request() :: #{}.


%% Example:
%% case_rule_summary() :: #{
%%   <<"caseRuleArn">> => string(),
%%   <<"caseRuleId">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"ruleType">> => string()
%% }
-type case_rule_summary() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% batch_get_case_rule_response() :: #{
%%   <<"caseRules">> => list(get_case_rule_response()),
%%   <<"errors">> => list(case_rule_error())
%% }
-type batch_get_case_rule_response() :: #{binary() => any()}.


%% Example:
%% custom_input_content() :: #{
%%   <<"fields">> => list(field_value())
%% }
-type custom_input_content() :: #{binary() => any()}.


%% Example:
%% field_value() :: #{
%%   <<"id">> => string(),
%%   <<"value">> => list()
%% }
-type field_value() :: #{binary() => any()}.


%% Example:
%% search_all_related_items_response_item() :: #{
%%   <<"associationTime">> => non_neg_integer(),
%%   <<"caseId">> => string(),
%%   <<"content">> => list(),
%%   <<"performedBy">> => list(),
%%   <<"relatedItemId">> => string(),
%%   <<"tags">> => map(),
%%   <<"type">> => string()
%% }
-type search_all_related_items_response_item() :: #{binary() => any()}.


%% Example:
%% update_field_request() :: #{
%%   <<"description">> => string(),
%%   <<"name">> => string()
%% }
-type update_field_request() :: #{binary() => any()}.


%% Example:
%% field_option() :: #{
%%   <<"active">> => [boolean()],
%%   <<"name">> => string(),
%%   <<"value">> => string()
%% }
-type field_option() :: #{binary() => any()}.


%% Example:
%% layout_summary() :: #{
%%   <<"layoutArn">> => string(),
%%   <<"layoutId">> => string(),
%%   <<"name">> => string()
%% }
-type layout_summary() :: #{binary() => any()}.


%% Example:
%% connect_case_input_content() :: #{
%%   <<"caseId">> => string()
%% }
-type connect_case_input_content() :: #{binary() => any()}.


%% Example:
%% list_templates_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"templates">> := list(template_summary())
%% }
-type list_templates_response() :: #{binary() => any()}.


%% Example:
%% put_case_event_configuration_request() :: #{
%%   <<"eventBridge">> := event_bridge_configuration()
%% }
-type put_case_event_configuration_request() :: #{binary() => any()}.


%% Example:
%% layout_sections() :: #{
%%   <<"sections">> => list(list())
%% }
-type layout_sections() :: #{binary() => any()}.

%% Example:
%% get_template_request() :: #{}
-type get_template_request() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% create_domain_response() :: #{
%%   <<"domainArn">> := string(),
%%   <<"domainId">> := string(),
%%   <<"domainStatus">> := string()
%% }
-type create_domain_response() :: #{binary() => any()}.


%% Example:
%% custom_filter() :: #{
%%   <<"fields">> => list()
%% }
-type custom_filter() :: #{binary() => any()}.


%% Example:
%% get_layout_response() :: #{
%%   <<"content">> := list(),
%%   <<"createdTime">> => non_neg_integer(),
%%   <<"deleted">> => boolean(),
%%   <<"lastModifiedTime">> => non_neg_integer(),
%%   <<"layoutArn">> := string(),
%%   <<"layoutId">> := string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type get_layout_response() :: #{binary() => any()}.


%% Example:
%% search_cases_response() :: #{
%%   <<"cases">> := list(search_cases_response_item()),
%%   <<"nextToken">> => string()
%% }
-type search_cases_response() :: #{binary() => any()}.


%% Example:
%% search_all_related_items_sort() :: #{
%%   <<"sortOrder">> => string(),
%%   <<"sortProperty">> => string()
%% }
-type search_all_related_items_sort() :: #{binary() => any()}.


%% Example:
%% batch_put_field_options_response() :: #{
%%   <<"errors">> => list(field_option_error())
%% }
-type batch_put_field_options_response() :: #{binary() => any()}.

%% Example:
%% update_case_response() :: #{}
-type update_case_response() :: #{}.


%% Example:
%% case_rule_error() :: #{
%%   <<"errorCode">> => [string()],
%%   <<"id">> => string(),
%%   <<"message">> => [string()]
%% }
-type case_rule_error() :: #{binary() => any()}.


%% Example:
%% create_template_response() :: #{
%%   <<"templateArn">> := string(),
%%   <<"templateId">> := string()
%% }
-type create_template_response() :: #{binary() => any()}.

%% Example:
%% update_layout_response() :: #{}
-type update_layout_response() :: #{}.

%% Example:
%% delete_template_response() :: #{}
-type delete_template_response() :: #{}.


%% Example:
%% field_identifier() :: #{
%%   <<"id">> => string()
%% }
-type field_identifier() :: #{binary() => any()}.


%% Example:
%% file_content() :: #{
%%   <<"fileArn">> => string()
%% }
-type file_content() :: #{binary() => any()}.


%% Example:
%% boolean_operands() :: #{
%%   <<"operandOne">> => list(),
%%   <<"operandTwo">> => list(),
%%   <<"result">> => [boolean()]
%% }
-type boolean_operands() :: #{binary() => any()}.

%% Example:
%% delete_layout_request() :: #{}
-type delete_layout_request() :: #{}.


%% Example:
%% required_case_rule() :: #{
%%   <<"conditions">> => list(list()),
%%   <<"defaultValue">> => [boolean()]
%% }
-type required_case_rule() :: #{binary() => any()}.


%% Example:
%% list_field_options_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"options">> := list(field_option())
%% }
-type list_field_options_response() :: #{binary() => any()}.


%% Example:
%% case_rule_identifier() :: #{
%%   <<"id">> => string()
%% }
-type case_rule_identifier() :: #{binary() => any()}.


%% Example:
%% list_cases_for_contact_request() :: #{
%%   <<"contactArn">> := string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_cases_for_contact_request() :: #{binary() => any()}.


%% Example:
%% create_related_item_request() :: #{
%%   <<"content">> := list(),
%%   <<"performedBy">> => list(),
%%   <<"type">> := string()
%% }
-type create_related_item_request() :: #{binary() => any()}.


%% Example:
%% get_field_response() :: #{
%%   <<"createdTime">> => non_neg_integer(),
%%   <<"deleted">> => boolean(),
%%   <<"description">> => string(),
%%   <<"fieldArn">> => string(),
%%   <<"fieldId">> => string(),
%%   <<"lastModifiedTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"namespace">> => string(),
%%   <<"tags">> => map(),
%%   <<"type">> => string()
%% }
-type get_field_response() :: #{binary() => any()}.


%% Example:
%% case_summary() :: #{
%%   <<"caseId">> => string(),
%%   <<"templateId">> => string()
%% }
-type case_summary() :: #{binary() => any()}.


%% Example:
%% custom_content() :: #{
%%   <<"fields">> => list(field_value())
%% }
-type custom_content() :: #{binary() => any()}.


%% Example:
%% field_group() :: #{
%%   <<"fields">> => list(field_item()),
%%   <<"name">> => [string()]
%% }
-type field_group() :: #{binary() => any()}.


%% Example:
%% audit_event() :: #{
%%   <<"eventId">> => string(),
%%   <<"fields">> => list(audit_event_field()),
%%   <<"performedBy">> => audit_event_performed_by(),
%%   <<"performedTime">> => non_neg_integer(),
%%   <<"relatedItemType">> => string(),
%%   <<"type">> => string()
%% }
-type audit_event() :: #{binary() => any()}.


%% Example:
%% case_event_included_data() :: #{
%%   <<"fields">> => list(field_identifier())
%% }
-type case_event_included_data() :: #{binary() => any()}.


%% Example:
%% layout_configuration() :: #{
%%   <<"defaultLayout">> => string()
%% }
-type layout_configuration() :: #{binary() => any()}.


%% Example:
%% related_item_event_included_data() :: #{
%%   <<"includeContent">> => [boolean()]
%% }
-type related_item_event_included_data() :: #{binary() => any()}.


%% Example:
%% contact_content() :: #{
%%   <<"channel">> => string(),
%%   <<"connectedToSystemTime">> => non_neg_integer(),
%%   <<"contactArn">> => string()
%% }
-type contact_content() :: #{binary() => any()}.


%% Example:
%% audit_event_performed_by() :: #{
%%   <<"iamPrincipalArn">> => string(),
%%   <<"user">> => list()
%% }
-type audit_event_performed_by() :: #{binary() => any()}.


%% Example:
%% batch_get_case_rule_request() :: #{
%%   <<"caseRules">> := list(case_rule_identifier())
%% }
-type batch_get_case_rule_request() :: #{binary() => any()}.

-type batch_get_case_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type batch_get_field_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type batch_put_field_options_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type create_case_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_case_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_domain_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_field_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_layout_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_related_item_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type create_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_case_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_case_rule_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_domain_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_field_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_layout_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_related_item_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_case_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_case_audit_events_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_case_event_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_domain_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_layout_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_case_rules_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_cases_for_contact_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_domains_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_field_options_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_fields_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_layouts_errors() ::
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

-type list_templates_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_case_event_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type search_all_related_items_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type search_cases_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type search_related_items_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

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

-type update_case_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_case_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_field_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_layout_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Gets a batch of case rules.
%%
%% In the Amazon Connect admin website, case rules are known as case field
%% conditions. For more information about case field conditions, see Add case
%% field conditions to a case template:
%% https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html.
-spec batch_get_case_rule(aws_client:aws_client(), binary() | list(), batch_get_case_rule_request()) ->
    {ok, batch_get_case_rule_response(), tuple()} |
    {error, any()} |
    {error, batch_get_case_rule_errors(), tuple()}.
batch_get_case_rule(Client, DomainId, Input) ->
    batch_get_case_rule(Client, DomainId, Input, []).

-spec batch_get_case_rule(aws_client:aws_client(), binary() | list(), batch_get_case_rule_request(), proplists:proplist()) ->
    {ok, batch_get_case_rule_response(), tuple()} |
    {error, any()} |
    {error, batch_get_case_rule_errors(), tuple()}.
batch_get_case_rule(Client, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/rules-batch"],
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

%% @doc Returns the description for the list of fields in the request
%% parameters.
-spec batch_get_field(aws_client:aws_client(), binary() | list(), batch_get_field_request()) ->
    {ok, batch_get_field_response(), tuple()} |
    {error, any()} |
    {error, batch_get_field_errors(), tuple()}.
batch_get_field(Client, DomainId, Input) ->
    batch_get_field(Client, DomainId, Input, []).

-spec batch_get_field(aws_client:aws_client(), binary() | list(), batch_get_field_request(), proplists:proplist()) ->
    {ok, batch_get_field_response(), tuple()} |
    {error, any()} |
    {error, batch_get_field_errors(), tuple()}.
batch_get_field(Client, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/fields-batch"],
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

%% @doc Creates and updates a set of field options for a single select field
%% in a Cases domain.
-spec batch_put_field_options(aws_client:aws_client(), binary() | list(), binary() | list(), batch_put_field_options_request()) ->
    {ok, batch_put_field_options_response(), tuple()} |
    {error, any()} |
    {error, batch_put_field_options_errors(), tuple()}.
batch_put_field_options(Client, DomainId, FieldId, Input) ->
    batch_put_field_options(Client, DomainId, FieldId, Input, []).

-spec batch_put_field_options(aws_client:aws_client(), binary() | list(), binary() | list(), batch_put_field_options_request(), proplists:proplist()) ->
    {ok, batch_put_field_options_response(), tuple()} |
    {error, any()} |
    {error, batch_put_field_options_errors(), tuple()}.
batch_put_field_options(Client, DomainId, FieldId, Input0, Options0) ->
    Method = put,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/fields/", aws_util:encode_uri(FieldId), "/options"],
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

%% @doc If you provide a value for `PerformedBy.UserArn' you must also
%% have connect:DescribeUser:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribeUser.html
%% permission on the User ARN resource that you provide
%%
%% Creates a case in the specified Cases domain.
%%
%% Case system and custom fields are taken as an array id/value pairs with a
%% declared data types.
%%
%% The following fields are required when creating a case:
%%
%% `customer_id' - You must provide the full customer profile ARN in this
%% format: `arn:aws:profile:your_AWS_Region:your_AWS_account
%% ID:domains/your_profiles_domain_name/profiles/profile_ID'
%%
%% `title'
-spec create_case(aws_client:aws_client(), binary() | list(), create_case_request()) ->
    {ok, create_case_response(), tuple()} |
    {error, any()} |
    {error, create_case_errors(), tuple()}.
create_case(Client, DomainId, Input) ->
    create_case(Client, DomainId, Input, []).

-spec create_case(aws_client:aws_client(), binary() | list(), create_case_request(), proplists:proplist()) ->
    {ok, create_case_response(), tuple()} |
    {error, any()} |
    {error, create_case_errors(), tuple()}.
create_case(Client, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/cases"],
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

%% @doc Creates a new case rule.
%%
%% In the Amazon Connect admin website, case rules are known as case field
%% conditions. For more information about case field conditions, see Add case
%% field conditions to a case template:
%% https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html.
-spec create_case_rule(aws_client:aws_client(), binary() | list(), create_case_rule_request()) ->
    {ok, create_case_rule_response(), tuple()} |
    {error, any()} |
    {error, create_case_rule_errors(), tuple()}.
create_case_rule(Client, DomainId, Input) ->
    create_case_rule(Client, DomainId, Input, []).

-spec create_case_rule(aws_client:aws_client(), binary() | list(), create_case_rule_request(), proplists:proplist()) ->
    {ok, create_case_rule_response(), tuple()} |
    {error, any()} |
    {error, create_case_rule_errors(), tuple()}.
create_case_rule(Client, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/case-rules"],
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

%% @doc Creates a domain, which is a container for all case data, such as
%% cases, fields, templates and layouts.
%%
%% Each Amazon Connect instance can be associated with only one Cases domain.
%%
%% This will not associate your connect instance to Cases domain. Instead,
%% use the Amazon Connect CreateIntegrationAssociation:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_CreateIntegrationAssociation.html
%% API. You need specific IAM permissions to successfully associate the Cases
%% domain. For more information, see Onboard to Cases:
%% https://docs.aws.amazon.com/connect/latest/adminguide/required-permissions-iam-cases.html#onboard-cases-iam.
-spec create_domain(aws_client:aws_client(), create_domain_request()) ->
    {ok, create_domain_response(), tuple()} |
    {error, any()} |
    {error, create_domain_errors(), tuple()}.
create_domain(Client, Input) ->
    create_domain(Client, Input, []).

-spec create_domain(aws_client:aws_client(), create_domain_request(), proplists:proplist()) ->
    {ok, create_domain_response(), tuple()} |
    {error, any()} |
    {error, create_domain_errors(), tuple()}.
create_domain(Client, Input0, Options0) ->
    Method = post,
    Path = ["/domains"],
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

%% @doc Creates a field in the Cases domain.
%%
%% This field is used to define the case object model (that is, defines what
%% data can be captured on cases) in a Cases domain.
-spec create_field(aws_client:aws_client(), binary() | list(), create_field_request()) ->
    {ok, create_field_response(), tuple()} |
    {error, any()} |
    {error, create_field_errors(), tuple()}.
create_field(Client, DomainId, Input) ->
    create_field(Client, DomainId, Input, []).

-spec create_field(aws_client:aws_client(), binary() | list(), create_field_request(), proplists:proplist()) ->
    {ok, create_field_response(), tuple()} |
    {error, any()} |
    {error, create_field_errors(), tuple()}.
create_field(Client, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/fields"],
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

%% @doc Creates a layout in the Cases domain.
%%
%% Layouts define the following configuration in the top section and More
%% Info tab of the Cases user interface:
%%
%% Fields to display to the users
%%
%% Field ordering
%%
%% Title and Status fields cannot be part of layouts since they are not
%% configurable.
-spec create_layout(aws_client:aws_client(), binary() | list(), create_layout_request()) ->
    {ok, create_layout_response(), tuple()} |
    {error, any()} |
    {error, create_layout_errors(), tuple()}.
create_layout(Client, DomainId, Input) ->
    create_layout(Client, DomainId, Input, []).

-spec create_layout(aws_client:aws_client(), binary() | list(), create_layout_request(), proplists:proplist()) ->
    {ok, create_layout_response(), tuple()} |
    {error, any()} |
    {error, create_layout_errors(), tuple()}.
create_layout(Client, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/layouts"],
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

%% @doc Creates a related item (comments, tasks, and contacts) and associates
%% it with a case.
%%
%% A Related Item is a resource that is associated with a case. It may or may
%% not have an external identifier linking it to an external resource (for
%% example, a `contactArn'). All Related Items have their own internal
%% identifier, the `relatedItemArn'. Examples of related items include
%% `comments' and `contacts'.
%%
%% If you provide a value for `performedBy.userArn' you must also have
%% DescribeUser:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribeUser.html
%% permission on the ARN of the user that you provide.
%%
%% The `type' field is reserved for internal use only.
-spec create_related_item(aws_client:aws_client(), binary() | list(), binary() | list(), create_related_item_request()) ->
    {ok, create_related_item_response(), tuple()} |
    {error, any()} |
    {error, create_related_item_errors(), tuple()}.
create_related_item(Client, CaseId, DomainId, Input) ->
    create_related_item(Client, CaseId, DomainId, Input, []).

-spec create_related_item(aws_client:aws_client(), binary() | list(), binary() | list(), create_related_item_request(), proplists:proplist()) ->
    {ok, create_related_item_response(), tuple()} |
    {error, any()} |
    {error, create_related_item_errors(), tuple()}.
create_related_item(Client, CaseId, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/cases/", aws_util:encode_uri(CaseId), "/related-items/"],
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

%% @doc Creates a template in the Cases domain.
%%
%% This template is used to define the case object model (that is, to define
%% what data can be captured on cases) in a Cases domain. A template must
%% have a unique name within a domain, and it must reference existing field
%% IDs and layout IDs. Additionally, multiple fields with same IDs are not
%% allowed within the same Template. A template can be either Active or
%% Inactive, as indicated by its status. Inactive templates cannot be used to
%% create cases.
%%
%% Other template APIs are:
%%
%% DeleteTemplate:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_DeleteTemplate.html
%%
%% GetTemplate:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_GetTemplate.html
%%
%% ListTemplates:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_ListTemplates.html
%%
%% UpdateTemplate:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_UpdateTemplate.html
-spec create_template(aws_client:aws_client(), binary() | list(), create_template_request()) ->
    {ok, create_template_response(), tuple()} |
    {error, any()} |
    {error, create_template_errors(), tuple()}.
create_template(Client, DomainId, Input) ->
    create_template(Client, DomainId, Input, []).

-spec create_template(aws_client:aws_client(), binary() | list(), create_template_request(), proplists:proplist()) ->
    {ok, create_template_response(), tuple()} |
    {error, any()} |
    {error, create_template_errors(), tuple()}.
create_template(Client, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/templates"],
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

%% @doc The DeleteCase API permanently deletes a case and all its associated
%% resources from the cases data store.
%%
%% After a successful deletion, you cannot:
%%
%% Retrieve related items
%%
%% Access audit history
%%
%% Perform any operations that require the CaseID
%%
%% This action is irreversible. After you delete a case, you cannot recover
%% its data.
-spec delete_case(aws_client:aws_client(), binary() | list(), binary() | list(), delete_case_request()) ->
    {ok, delete_case_response(), tuple()} |
    {error, any()} |
    {error, delete_case_errors(), tuple()}.
delete_case(Client, CaseId, DomainId, Input) ->
    delete_case(Client, CaseId, DomainId, Input, []).

-spec delete_case(aws_client:aws_client(), binary() | list(), binary() | list(), delete_case_request(), proplists:proplist()) ->
    {ok, delete_case_response(), tuple()} |
    {error, any()} |
    {error, delete_case_errors(), tuple()}.
delete_case(Client, CaseId, DomainId, Input0, Options0) ->
    Method = delete,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/cases/", aws_util:encode_uri(CaseId), ""],
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

%% @doc Deletes a case rule.
%%
%% In the Amazon Connect admin website, case rules are known as case field
%% conditions. For more information about case field conditions, see Add case
%% field conditions to a case template:
%% https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html.
-spec delete_case_rule(aws_client:aws_client(), binary() | list(), binary() | list(), delete_case_rule_request()) ->
    {ok, delete_case_rule_response(), tuple()} |
    {error, any()} |
    {error, delete_case_rule_errors(), tuple()}.
delete_case_rule(Client, CaseRuleId, DomainId, Input) ->
    delete_case_rule(Client, CaseRuleId, DomainId, Input, []).

-spec delete_case_rule(aws_client:aws_client(), binary() | list(), binary() | list(), delete_case_rule_request(), proplists:proplist()) ->
    {ok, delete_case_rule_response(), tuple()} |
    {error, any()} |
    {error, delete_case_rule_errors(), tuple()}.
delete_case_rule(Client, CaseRuleId, DomainId, Input0, Options0) ->
    Method = delete,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/case-rules/", aws_util:encode_uri(CaseRuleId), ""],
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

%% @doc Deletes a Cases domain.
%%
%% After deleting your domain you must disassociate the deleted domain from
%% your Amazon Connect instance with another API call before being able to
%% use Cases again with this Amazon Connect instance. See
%% DeleteIntegrationAssociation:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_DeleteIntegrationAssociation.html.
-spec delete_domain(aws_client:aws_client(), binary() | list(), delete_domain_request()) ->
    {ok, delete_domain_response(), tuple()} |
    {error, any()} |
    {error, delete_domain_errors(), tuple()}.
delete_domain(Client, DomainId, Input) ->
    delete_domain(Client, DomainId, Input, []).

-spec delete_domain(aws_client:aws_client(), binary() | list(), delete_domain_request(), proplists:proplist()) ->
    {ok, delete_domain_response(), tuple()} |
    {error, any()} |
    {error, delete_domain_errors(), tuple()}.
delete_domain(Client, DomainId, Input0, Options0) ->
    Method = delete,
    Path = ["/domains/", aws_util:encode_uri(DomainId), ""],
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

%% @doc Deletes a field from a cases template.
%%
%% You can delete up to 100 fields per domain.
%%
%% After a field is deleted:
%%
%% You can still retrieve the field by calling `BatchGetField'.
%%
%% You cannot update a deleted field by calling `UpdateField'; it throws
%% a `ValidationException'.
%%
%% Deleted fields are not included in the `ListFields' response.
%%
%% Calling `CreateCase' with a deleted field throws a
%% `ValidationException' denoting which field IDs in the request have
%% been deleted.
%%
%% Calling `GetCase' with a deleted field ID returns the deleted
%% field's value if one exists.
%%
%% Calling `UpdateCase' with a deleted field ID throws a
%% `ValidationException' if the case does not already contain a value for
%% the deleted field. Otherwise it succeeds, allowing you to update or remove
%% (using `emptyValue: {}') the field's value from the case.
%%
%% `GetTemplate' does not return field IDs for deleted fields.
%%
%% `GetLayout' does not return field IDs for deleted fields.
%%
%% Calling `SearchCases' with the deleted field ID as a filter returns
%% any cases that have a value for the deleted field that matches the filter
%% criteria.
%%
%% Calling `SearchCases' with a `searchTerm' value that matches a
%% deleted field's value on a case returns the case in the response.
%%
%% Calling `BatchPutFieldOptions' with a deleted field ID throw a
%% `ValidationException'.
%%
%% Calling `GetCaseEventConfiguration' does not return field IDs for
%% deleted fields.
-spec delete_field(aws_client:aws_client(), binary() | list(), binary() | list(), delete_field_request()) ->
    {ok, delete_field_response(), tuple()} |
    {error, any()} |
    {error, delete_field_errors(), tuple()}.
delete_field(Client, DomainId, FieldId, Input) ->
    delete_field(Client, DomainId, FieldId, Input, []).

-spec delete_field(aws_client:aws_client(), binary() | list(), binary() | list(), delete_field_request(), proplists:proplist()) ->
    {ok, delete_field_response(), tuple()} |
    {error, any()} |
    {error, delete_field_errors(), tuple()}.
delete_field(Client, DomainId, FieldId, Input0, Options0) ->
    Method = delete,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/fields/", aws_util:encode_uri(FieldId), ""],
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

%% @doc Deletes a layout from a cases template.
%%
%% You can delete up to 100 layouts per domain.
%%
%% After a layout is deleted:
%%
%% You can still retrieve the layout by calling `GetLayout'.
%%
%% You cannot update a deleted layout by calling `UpdateLayout'; it
%% throws a `ValidationException'.
%%
%% Deleted layouts are not included in the `ListLayouts' response.
-spec delete_layout(aws_client:aws_client(), binary() | list(), binary() | list(), delete_layout_request()) ->
    {ok, delete_layout_response(), tuple()} |
    {error, any()} |
    {error, delete_layout_errors(), tuple()}.
delete_layout(Client, DomainId, LayoutId, Input) ->
    delete_layout(Client, DomainId, LayoutId, Input, []).

-spec delete_layout(aws_client:aws_client(), binary() | list(), binary() | list(), delete_layout_request(), proplists:proplist()) ->
    {ok, delete_layout_response(), tuple()} |
    {error, any()} |
    {error, delete_layout_errors(), tuple()}.
delete_layout(Client, DomainId, LayoutId, Input0, Options0) ->
    Method = delete,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/layouts/", aws_util:encode_uri(LayoutId), ""],
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

%% @doc Deletes the related item resource under a case.
%%
%% This API cannot be used on a FILE type related attachment. To delete this
%% type of file, use the DeleteAttachedFile:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_DeleteAttachedFile.html
%% API
-spec delete_related_item(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_related_item_request()) ->
    {ok, delete_related_item_response(), tuple()} |
    {error, any()} |
    {error, delete_related_item_errors(), tuple()}.
delete_related_item(Client, CaseId, DomainId, RelatedItemId, Input) ->
    delete_related_item(Client, CaseId, DomainId, RelatedItemId, Input, []).

-spec delete_related_item(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_related_item_request(), proplists:proplist()) ->
    {ok, delete_related_item_response(), tuple()} |
    {error, any()} |
    {error, delete_related_item_errors(), tuple()}.
delete_related_item(Client, CaseId, DomainId, RelatedItemId, Input0, Options0) ->
    Method = delete,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/cases/", aws_util:encode_uri(CaseId), "/related-items/", aws_util:encode_uri(RelatedItemId), ""],
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

%% @doc Deletes a cases template.
%%
%% You can delete up to 100 templates per domain.
%%
%% After a cases template is deleted:
%%
%% You can still retrieve the template by calling `GetTemplate'.
%%
%% You cannot update the template.
%%
%% You cannot create a case by using the deleted template.
%%
%% Deleted templates are not included in the `ListTemplates' response.
-spec delete_template(aws_client:aws_client(), binary() | list(), binary() | list(), delete_template_request()) ->
    {ok, delete_template_response(), tuple()} |
    {error, any()} |
    {error, delete_template_errors(), tuple()}.
delete_template(Client, DomainId, TemplateId, Input) ->
    delete_template(Client, DomainId, TemplateId, Input, []).

-spec delete_template(aws_client:aws_client(), binary() | list(), binary() | list(), delete_template_request(), proplists:proplist()) ->
    {ok, delete_template_response(), tuple()} |
    {error, any()} |
    {error, delete_template_errors(), tuple()}.
delete_template(Client, DomainId, TemplateId, Input0, Options0) ->
    Method = delete,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/templates/", aws_util:encode_uri(TemplateId), ""],
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

%% @doc Returns information about a specific case if it exists.
-spec get_case(aws_client:aws_client(), binary() | list(), binary() | list(), get_case_request()) ->
    {ok, get_case_response(), tuple()} |
    {error, any()} |
    {error, get_case_errors(), tuple()}.
get_case(Client, CaseId, DomainId, Input) ->
    get_case(Client, CaseId, DomainId, Input, []).

-spec get_case(aws_client:aws_client(), binary() | list(), binary() | list(), get_case_request(), proplists:proplist()) ->
    {ok, get_case_response(), tuple()} |
    {error, any()} |
    {error, get_case_errors(), tuple()}.
get_case(Client, CaseId, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/cases/", aws_util:encode_uri(CaseId), ""],
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

%% @doc Returns the audit history about a specific case if it exists.
-spec get_case_audit_events(aws_client:aws_client(), binary() | list(), binary() | list(), get_case_audit_events_request()) ->
    {ok, get_case_audit_events_response(), tuple()} |
    {error, any()} |
    {error, get_case_audit_events_errors(), tuple()}.
get_case_audit_events(Client, CaseId, DomainId, Input) ->
    get_case_audit_events(Client, CaseId, DomainId, Input, []).

-spec get_case_audit_events(aws_client:aws_client(), binary() | list(), binary() | list(), get_case_audit_events_request(), proplists:proplist()) ->
    {ok, get_case_audit_events_response(), tuple()} |
    {error, any()} |
    {error, get_case_audit_events_errors(), tuple()}.
get_case_audit_events(Client, CaseId, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/cases/", aws_util:encode_uri(CaseId), "/audit-history"],
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

%% @doc Returns the case event publishing configuration.
-spec get_case_event_configuration(aws_client:aws_client(), binary() | list(), get_case_event_configuration_request()) ->
    {ok, get_case_event_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_case_event_configuration_errors(), tuple()}.
get_case_event_configuration(Client, DomainId, Input) ->
    get_case_event_configuration(Client, DomainId, Input, []).

-spec get_case_event_configuration(aws_client:aws_client(), binary() | list(), get_case_event_configuration_request(), proplists:proplist()) ->
    {ok, get_case_event_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_case_event_configuration_errors(), tuple()}.
get_case_event_configuration(Client, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/case-event-configuration"],
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

%% @doc Returns information about a specific domain if it exists.
-spec get_domain(aws_client:aws_client(), binary() | list(), get_domain_request()) ->
    {ok, get_domain_response(), tuple()} |
    {error, any()} |
    {error, get_domain_errors(), tuple()}.
get_domain(Client, DomainId, Input) ->
    get_domain(Client, DomainId, Input, []).

-spec get_domain(aws_client:aws_client(), binary() | list(), get_domain_request(), proplists:proplist()) ->
    {ok, get_domain_response(), tuple()} |
    {error, any()} |
    {error, get_domain_errors(), tuple()}.
get_domain(Client, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), ""],
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

%% @doc Returns the details for the requested layout.
-spec get_layout(aws_client:aws_client(), binary() | list(), binary() | list(), get_layout_request()) ->
    {ok, get_layout_response(), tuple()} |
    {error, any()} |
    {error, get_layout_errors(), tuple()}.
get_layout(Client, DomainId, LayoutId, Input) ->
    get_layout(Client, DomainId, LayoutId, Input, []).

-spec get_layout(aws_client:aws_client(), binary() | list(), binary() | list(), get_layout_request(), proplists:proplist()) ->
    {ok, get_layout_response(), tuple()} |
    {error, any()} |
    {error, get_layout_errors(), tuple()}.
get_layout(Client, DomainId, LayoutId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/layouts/", aws_util:encode_uri(LayoutId), ""],
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

%% @doc Returns the details for the requested template.
%%
%% Other template APIs are:
%%
%% CreateTemplate:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_CreateTemplate.html
%%
%% DeleteTemplate:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_DeleteTemplate.html
%%
%% ListTemplates:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_ListTemplates.html
%%
%% UpdateTemplate:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_UpdateTemplate.html
-spec get_template(aws_client:aws_client(), binary() | list(), binary() | list(), get_template_request()) ->
    {ok, get_template_response(), tuple()} |
    {error, any()} |
    {error, get_template_errors(), tuple()}.
get_template(Client, DomainId, TemplateId, Input) ->
    get_template(Client, DomainId, TemplateId, Input, []).

-spec get_template(aws_client:aws_client(), binary() | list(), binary() | list(), get_template_request(), proplists:proplist()) ->
    {ok, get_template_response(), tuple()} |
    {error, any()} |
    {error, get_template_errors(), tuple()}.
get_template(Client, DomainId, TemplateId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/templates/", aws_util:encode_uri(TemplateId), ""],
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

%% @doc Lists all case rules in a Cases domain.
%%
%% In the Amazon Connect admin website, case rules are known as case field
%% conditions. For more information about case field conditions, see Add case
%% field conditions to a case template:
%% https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html.
-spec list_case_rules(aws_client:aws_client(), binary() | list(), list_case_rules_request()) ->
    {ok, list_case_rules_response(), tuple()} |
    {error, any()} |
    {error, list_case_rules_errors(), tuple()}.
list_case_rules(Client, DomainId, Input) ->
    list_case_rules(Client, DomainId, Input, []).

-spec list_case_rules(aws_client:aws_client(), binary() | list(), list_case_rules_request(), proplists:proplist()) ->
    {ok, list_case_rules_response(), tuple()} |
    {error, any()} |
    {error, list_case_rules_errors(), tuple()}.
list_case_rules(Client, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/rules-list/"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists cases for a given contact.
-spec list_cases_for_contact(aws_client:aws_client(), binary() | list(), list_cases_for_contact_request()) ->
    {ok, list_cases_for_contact_response(), tuple()} |
    {error, any()} |
    {error, list_cases_for_contact_errors(), tuple()}.
list_cases_for_contact(Client, DomainId, Input) ->
    list_cases_for_contact(Client, DomainId, Input, []).

-spec list_cases_for_contact(aws_client:aws_client(), binary() | list(), list_cases_for_contact_request(), proplists:proplist()) ->
    {ok, list_cases_for_contact_response(), tuple()} |
    {error, any()} |
    {error, list_cases_for_contact_errors(), tuple()}.
list_cases_for_contact(Client, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/list-cases-for-contact"],
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

%% @doc Lists all cases domains in the Amazon Web Services account.
%%
%% Each list item is a condensed summary object of the domain.
-spec list_domains(aws_client:aws_client(), list_domains_request()) ->
    {ok, list_domains_response(), tuple()} |
    {error, any()} |
    {error, list_domains_errors(), tuple()}.
list_domains(Client, Input) ->
    list_domains(Client, Input, []).

-spec list_domains(aws_client:aws_client(), list_domains_request(), proplists:proplist()) ->
    {ok, list_domains_response(), tuple()} |
    {error, any()} |
    {error, list_domains_errors(), tuple()}.
list_domains(Client, Input0, Options0) ->
    Method = post,
    Path = ["/domains-list"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all of the field options for a field identifier in the domain.
-spec list_field_options(aws_client:aws_client(), binary() | list(), binary() | list(), list_field_options_request()) ->
    {ok, list_field_options_response(), tuple()} |
    {error, any()} |
    {error, list_field_options_errors(), tuple()}.
list_field_options(Client, DomainId, FieldId, Input) ->
    list_field_options(Client, DomainId, FieldId, Input, []).

-spec list_field_options(aws_client:aws_client(), binary() | list(), binary() | list(), list_field_options_request(), proplists:proplist()) ->
    {ok, list_field_options_response(), tuple()} |
    {error, any()} |
    {error, list_field_options_errors(), tuple()}.
list_field_options(Client, DomainId, FieldId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/fields/", aws_util:encode_uri(FieldId), "/options-list"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>},
                     {<<"values">>, <<"values">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all fields in a Cases domain.
-spec list_fields(aws_client:aws_client(), binary() | list(), list_fields_request()) ->
    {ok, list_fields_response(), tuple()} |
    {error, any()} |
    {error, list_fields_errors(), tuple()}.
list_fields(Client, DomainId, Input) ->
    list_fields(Client, DomainId, Input, []).

-spec list_fields(aws_client:aws_client(), binary() | list(), list_fields_request(), proplists:proplist()) ->
    {ok, list_fields_response(), tuple()} |
    {error, any()} |
    {error, list_fields_errors(), tuple()}.
list_fields(Client, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/fields-list"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all layouts in the given cases domain.
%%
%% Each list item is a condensed summary object of the layout.
-spec list_layouts(aws_client:aws_client(), binary() | list(), list_layouts_request()) ->
    {ok, list_layouts_response(), tuple()} |
    {error, any()} |
    {error, list_layouts_errors(), tuple()}.
list_layouts(Client, DomainId, Input) ->
    list_layouts(Client, DomainId, Input, []).

-spec list_layouts(aws_client:aws_client(), binary() | list(), list_layouts_request(), proplists:proplist()) ->
    {ok, list_layouts_response(), tuple()} |
    {error, any()} |
    {error, list_layouts_errors(), tuple()}.
list_layouts(Client, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/layouts-list"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists tags for a resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Arn)
  when is_map(Client) ->
    list_tags_for_resource(Client, Arn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, Arn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the templates in a Cases domain.
%%
%% Each list item is a condensed summary object of the template.
%%
%% Other template APIs are:
%%
%% CreateTemplate:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_CreateTemplate.html
%%
%% DeleteTemplate:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_DeleteTemplate.html
%%
%% GetTemplate:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_GetTemplate.html
%%
%% UpdateTemplate:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_UpdateTemplate.html
-spec list_templates(aws_client:aws_client(), binary() | list(), list_templates_request()) ->
    {ok, list_templates_response(), tuple()} |
    {error, any()} |
    {error, list_templates_errors(), tuple()}.
list_templates(Client, DomainId, Input) ->
    list_templates(Client, DomainId, Input, []).

-spec list_templates(aws_client:aws_client(), binary() | list(), list_templates_request(), proplists:proplist()) ->
    {ok, list_templates_response(), tuple()} |
    {error, any()} |
    {error, list_templates_errors(), tuple()}.
list_templates(Client, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/templates-list"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>},
                     {<<"status">>, <<"status">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds case event publishing configuration.
%%
%% For a complete list of fields you can add to the event message, see Create
%% case fields:
%% https://docs.aws.amazon.com/connect/latest/adminguide/case-fields.html in
%% the Amazon Connect Administrator Guide
-spec put_case_event_configuration(aws_client:aws_client(), binary() | list(), put_case_event_configuration_request()) ->
    {ok, put_case_event_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_case_event_configuration_errors(), tuple()}.
put_case_event_configuration(Client, DomainId, Input) ->
    put_case_event_configuration(Client, DomainId, Input, []).

-spec put_case_event_configuration(aws_client:aws_client(), binary() | list(), put_case_event_configuration_request(), proplists:proplist()) ->
    {ok, put_case_event_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_case_event_configuration_errors(), tuple()}.
put_case_event_configuration(Client, DomainId, Input0, Options0) ->
    Method = put,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/case-event-configuration"],
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

%% @doc Searches for related items across all cases within a domain.
%%
%% This is a global search operation that returns related items from multiple
%% cases, unlike the case-specific SearchRelatedItems:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_SearchRelatedItems.html
%% API.
%%
%% Use cases
%%
%% Following are common uses cases for this API:
%%
%% Find cases with similar issues across the domain. For example, search for
%% all cases containing comments about &quot;product defect&quot; to identify
%% patterns and existing solutions.
%%
%% Locate all cases associated with specific contacts or orders. For example,
%% find all cases linked to a contactArn to understand the complete customer
%% journey.
%%
%% Monitor SLA compliance across cases. For example, search for all cases
%% with &quot;Active&quot; SLA status to prioritize remediation efforts.
%%
%% Important things to know
%%
%% This API returns case IDs, not complete case objects. To retrieve full
%% case details, you must make additional calls to the GetCase:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_GetCase.html
%% API for each returned case ID.
%%
%% This API searches across related items content, not case fields. Use the
%% SearchCases:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_SearchCases.html
%% API to search within case field values.
%%
%% Endpoints: See Amazon Connect endpoints and quotas:
%% https://docs.aws.amazon.com/general/latest/gr/connect_region.html.
-spec search_all_related_items(aws_client:aws_client(), binary() | list(), search_all_related_items_request()) ->
    {ok, search_all_related_items_response(), tuple()} |
    {error, any()} |
    {error, search_all_related_items_errors(), tuple()}.
search_all_related_items(Client, DomainId, Input) ->
    search_all_related_items(Client, DomainId, Input, []).

-spec search_all_related_items(aws_client:aws_client(), binary() | list(), search_all_related_items_request(), proplists:proplist()) ->
    {ok, search_all_related_items_response(), tuple()} |
    {error, any()} |
    {error, search_all_related_items_errors(), tuple()}.
search_all_related_items(Client, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/related-items-search"],
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

%% @doc Searches for cases within their associated Cases domain.
%%
%% Search results are returned as a paginated list of abridged case
%% documents.
%%
%% For `customer_id' you must provide the full customer profile ARN in
%% this format: ` arn:aws:profile:your AWS Region:your AWS account
%% ID:domains/profiles domain name/profiles/profile ID'.
-spec search_cases(aws_client:aws_client(), binary() | list(), search_cases_request()) ->
    {ok, search_cases_response(), tuple()} |
    {error, any()} |
    {error, search_cases_errors(), tuple()}.
search_cases(Client, DomainId, Input) ->
    search_cases(Client, DomainId, Input, []).

-spec search_cases(aws_client:aws_client(), binary() | list(), search_cases_request(), proplists:proplist()) ->
    {ok, search_cases_response(), tuple()} |
    {error, any()} |
    {error, search_cases_errors(), tuple()}.
search_cases(Client, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/cases-search"],
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

%% @doc Searches for related items that are associated with a case.
%%
%% If no filters are provided, this returns all related items associated with
%% a case.
-spec search_related_items(aws_client:aws_client(), binary() | list(), binary() | list(), search_related_items_request()) ->
    {ok, search_related_items_response(), tuple()} |
    {error, any()} |
    {error, search_related_items_errors(), tuple()}.
search_related_items(Client, CaseId, DomainId, Input) ->
    search_related_items(Client, CaseId, DomainId, Input, []).

-spec search_related_items(aws_client:aws_client(), binary() | list(), binary() | list(), search_related_items_request(), proplists:proplist()) ->
    {ok, search_related_items_response(), tuple()} |
    {error, any()} |
    {error, search_related_items_errors(), tuple()}.
search_related_items(Client, CaseId, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/cases/", aws_util:encode_uri(CaseId), "/related-items-search"],
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
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Arn, Input) ->
    tag_resource(Client, Arn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Arn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(Arn), ""],
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

%% @doc Untags a resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Arn, Input) ->
    untag_resource(Client, Arn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Arn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(Arn), ""],
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

%% @doc If you provide a value for `PerformedBy.UserArn' you must also
%% have connect:DescribeUser:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribeUser.html
%% permission on the User ARN resource that you provide
%%
%% Updates the values of fields on a case.
%%
%% Fields to be updated are received as an array of id/value pairs identical
%% to the `CreateCase' input .
%%
%% If the action is successful, the service sends back an HTTP 200 response
%% with an empty HTTP body.
-spec update_case(aws_client:aws_client(), binary() | list(), binary() | list(), update_case_request()) ->
    {ok, update_case_response(), tuple()} |
    {error, any()} |
    {error, update_case_errors(), tuple()}.
update_case(Client, CaseId, DomainId, Input) ->
    update_case(Client, CaseId, DomainId, Input, []).

-spec update_case(aws_client:aws_client(), binary() | list(), binary() | list(), update_case_request(), proplists:proplist()) ->
    {ok, update_case_response(), tuple()} |
    {error, any()} |
    {error, update_case_errors(), tuple()}.
update_case(Client, CaseId, DomainId, Input0, Options0) ->
    Method = put,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/cases/", aws_util:encode_uri(CaseId), ""],
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

%% @doc Updates a case rule.
%%
%% In the Amazon Connect admin website, case rules are known as case field
%% conditions. For more information about case field conditions, see Add case
%% field conditions to a case template:
%% https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html.
-spec update_case_rule(aws_client:aws_client(), binary() | list(), binary() | list(), update_case_rule_request()) ->
    {ok, update_case_rule_response(), tuple()} |
    {error, any()} |
    {error, update_case_rule_errors(), tuple()}.
update_case_rule(Client, CaseRuleId, DomainId, Input) ->
    update_case_rule(Client, CaseRuleId, DomainId, Input, []).

-spec update_case_rule(aws_client:aws_client(), binary() | list(), binary() | list(), update_case_rule_request(), proplists:proplist()) ->
    {ok, update_case_rule_response(), tuple()} |
    {error, any()} |
    {error, update_case_rule_errors(), tuple()}.
update_case_rule(Client, CaseRuleId, DomainId, Input0, Options0) ->
    Method = put,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/case-rules/", aws_util:encode_uri(CaseRuleId), ""],
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

%% @doc Updates the properties of an existing field.
-spec update_field(aws_client:aws_client(), binary() | list(), binary() | list(), update_field_request()) ->
    {ok, update_field_response(), tuple()} |
    {error, any()} |
    {error, update_field_errors(), tuple()}.
update_field(Client, DomainId, FieldId, Input) ->
    update_field(Client, DomainId, FieldId, Input, []).

-spec update_field(aws_client:aws_client(), binary() | list(), binary() | list(), update_field_request(), proplists:proplist()) ->
    {ok, update_field_response(), tuple()} |
    {error, any()} |
    {error, update_field_errors(), tuple()}.
update_field(Client, DomainId, FieldId, Input0, Options0) ->
    Method = put,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/fields/", aws_util:encode_uri(FieldId), ""],
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

%% @doc Updates the attributes of an existing layout.
%%
%% If the action is successful, the service sends back an HTTP 200 response
%% with an empty HTTP body.
%%
%% A `ValidationException' is returned when you add non-existent
%% `fieldIds' to a layout.
%%
%% Title and Status fields cannot be part of layouts because they are not
%% configurable.
-spec update_layout(aws_client:aws_client(), binary() | list(), binary() | list(), update_layout_request()) ->
    {ok, update_layout_response(), tuple()} |
    {error, any()} |
    {error, update_layout_errors(), tuple()}.
update_layout(Client, DomainId, LayoutId, Input) ->
    update_layout(Client, DomainId, LayoutId, Input, []).

-spec update_layout(aws_client:aws_client(), binary() | list(), binary() | list(), update_layout_request(), proplists:proplist()) ->
    {ok, update_layout_response(), tuple()} |
    {error, any()} |
    {error, update_layout_errors(), tuple()}.
update_layout(Client, DomainId, LayoutId, Input0, Options0) ->
    Method = put,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/layouts/", aws_util:encode_uri(LayoutId), ""],
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

%% @doc Updates the attributes of an existing template.
%%
%% The template attributes that can be modified include `name',
%% `description', `layoutConfiguration', `requiredFields', and
%% `status'. At least one of these attributes must not be null. If a null
%% value is provided for a given attribute, that attribute is ignored and its
%% current value is preserved.
%%
%% Other template APIs are:
%%
%% CreateTemplate:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_CreateTemplate.html
%%
%% DeleteTemplate:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_DeleteTemplate.html
%%
%% GetTemplate:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_GetTemplate.html
%%
%% ListTemplates:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_ListTemplates.html
-spec update_template(aws_client:aws_client(), binary() | list(), binary() | list(), update_template_request()) ->
    {ok, update_template_response(), tuple()} |
    {error, any()} |
    {error, update_template_errors(), tuple()}.
update_template(Client, DomainId, TemplateId, Input) ->
    update_template(Client, DomainId, TemplateId, Input, []).

-spec update_template(aws_client:aws_client(), binary() | list(), binary() | list(), update_template_request(), proplists:proplist()) ->
    {ok, update_template_response(), tuple()} |
    {error, any()} |
    {error, update_template_errors(), tuple()}.
update_template(Client, DomainId, TemplateId, Input0, Options0) ->
    Method = put,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/templates/", aws_util:encode_uri(TemplateId), ""],
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
    Client1 = Client#{service => <<"cases">>},
    Host = build_host(<<"cases">>, Client1),
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
