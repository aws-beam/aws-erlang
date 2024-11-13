%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Fault Injection Service is a managed service that
%% enables you to perform fault injection
%% experiments on your Amazon Web Services workloads.
%%
%% For more information, see the Fault Injection Service User Guide:
%% https://docs.aws.amazon.com/fis/latest/userguide/.
-module(aws_fis).

-export([create_experiment_template/2,
         create_experiment_template/3,
         create_target_account_configuration/4,
         create_target_account_configuration/5,
         delete_experiment_template/3,
         delete_experiment_template/4,
         delete_target_account_configuration/4,
         delete_target_account_configuration/5,
         get_action/2,
         get_action/4,
         get_action/5,
         get_experiment/2,
         get_experiment/4,
         get_experiment/5,
         get_experiment_target_account_configuration/3,
         get_experiment_target_account_configuration/5,
         get_experiment_target_account_configuration/6,
         get_experiment_template/2,
         get_experiment_template/4,
         get_experiment_template/5,
         get_safety_lever/2,
         get_safety_lever/4,
         get_safety_lever/5,
         get_target_account_configuration/3,
         get_target_account_configuration/5,
         get_target_account_configuration/6,
         get_target_resource_type/2,
         get_target_resource_type/4,
         get_target_resource_type/5,
         list_actions/1,
         list_actions/3,
         list_actions/4,
         list_experiment_resolved_targets/2,
         list_experiment_resolved_targets/4,
         list_experiment_resolved_targets/5,
         list_experiment_target_account_configurations/2,
         list_experiment_target_account_configurations/4,
         list_experiment_target_account_configurations/5,
         list_experiment_templates/1,
         list_experiment_templates/3,
         list_experiment_templates/4,
         list_experiments/1,
         list_experiments/3,
         list_experiments/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_target_account_configurations/2,
         list_target_account_configurations/4,
         list_target_account_configurations/5,
         list_target_resource_types/1,
         list_target_resource_types/3,
         list_target_resource_types/4,
         start_experiment/2,
         start_experiment/3,
         stop_experiment/3,
         stop_experiment/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_experiment_template/3,
         update_experiment_template/4,
         update_safety_lever_state/3,
         update_safety_lever_state/4,
         update_target_account_configuration/4,
         update_target_account_configuration/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% target_account_configuration() :: #{
%%   <<"accountId">> => string(),
%%   <<"description">> => string(),
%%   <<"roleArn">> => string()
%% }
-type target_account_configuration() :: #{binary() => any()}.


%% Example:
%% action_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"tags">> => map(),
%%   <<"targets">> => map()
%% }
-type action_summary() :: #{binary() => any()}.


%% Example:
%% list_experiments_response() :: #{
%%   <<"experiments">> => list(experiment_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_experiments_response() :: #{binary() => any()}.


%% Example:
%% list_experiment_resolved_targets_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"targetName">> => string()
%% }
-type list_experiment_resolved_targets_request() :: #{binary() => any()}.


%% Example:
%% experiment_report_configuration_outputs() :: #{
%%   <<"s3Configuration">> => experiment_report_configuration_outputs_s3_configuration()
%% }
-type experiment_report_configuration_outputs() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% experiment_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"experimentOptions">> => experiment_options(),
%%   <<"experimentTemplateId">> => string(),
%%   <<"id">> => string(),
%%   <<"state">> => experiment_state(),
%%   <<"tags">> => map()
%% }
-type experiment_summary() :: #{binary() => any()}.


%% Example:
%% get_experiment_target_account_configuration_response() :: #{
%%   <<"targetAccountConfiguration">> => experiment_target_account_configuration()
%% }
-type get_experiment_target_account_configuration_response() :: #{binary() => any()}.


%% Example:
%% create_experiment_template_report_configuration_input() :: #{
%%   <<"dataSources">> => experiment_template_report_configuration_data_sources_input(),
%%   <<"outputs">> => experiment_template_report_configuration_outputs_input(),
%%   <<"postExperimentDuration">> => string(),
%%   <<"preExperimentDuration">> => string()
%% }
-type create_experiment_template_report_configuration_input() :: #{binary() => any()}.


%% Example:
%% get_experiment_response() :: #{
%%   <<"experiment">> => experiment()
%% }
-type get_experiment_response() :: #{binary() => any()}.


%% Example:
%% update_target_account_configuration_response() :: #{
%%   <<"targetAccountConfiguration">> => target_account_configuration()
%% }
-type update_target_account_configuration_response() :: #{binary() => any()}.


%% Example:
%% experiment_template_target() :: #{
%%   <<"filters">> => list(experiment_template_target_filter()()),
%%   <<"parameters">> => map(),
%%   <<"resourceArns">> => list(string()()),
%%   <<"resourceTags">> => map(),
%%   <<"resourceType">> => string(),
%%   <<"selectionMode">> => string()
%% }
-type experiment_template_target() :: #{binary() => any()}.

%% Example:
%% get_safety_lever_request() :: #{}
-type get_safety_lever_request() :: #{}.


%% Example:
%% experiment_target_account_configuration() :: #{
%%   <<"accountId">> => string(),
%%   <<"description">> => string(),
%%   <<"roleArn">> => string()
%% }
-type experiment_target_account_configuration() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% experiment_report_configuration_data_sources() :: #{
%%   <<"cloudWatchDashboards">> => list(experiment_report_configuration_cloud_watch_dashboard()())
%% }
-type experiment_report_configuration_data_sources() :: #{binary() => any()}.


%% Example:
%% list_experiment_templates_response() :: #{
%%   <<"experimentTemplates">> => list(experiment_template_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_experiment_templates_response() :: #{binary() => any()}.


%% Example:
%% update_experiment_template_request() :: #{
%%   <<"actions">> => map(),
%%   <<"description">> => string(),
%%   <<"experimentOptions">> => update_experiment_template_experiment_options_input(),
%%   <<"experimentReportConfiguration">> => update_experiment_template_report_configuration_input(),
%%   <<"logConfiguration">> => update_experiment_template_log_configuration_input(),
%%   <<"roleArn">> => string(),
%%   <<"stopConditions">> => list(update_experiment_template_stop_condition_input()()),
%%   <<"targets">> => map()
%% }
-type update_experiment_template_request() :: #{binary() => any()}.


%% Example:
%% get_target_resource_type_response() :: #{
%%   <<"targetResourceType">> => target_resource_type()
%% }
-type get_target_resource_type_response() :: #{binary() => any()}.


%% Example:
%% experiment_s3_log_configuration() :: #{
%%   <<"bucketName">> => string(),
%%   <<"prefix">> => string()
%% }
-type experiment_s3_log_configuration() :: #{binary() => any()}.


%% Example:
%% experiment_action_state() :: #{
%%   <<"reason">> => string(),
%%   <<"status">> => list(any())
%% }
-type experiment_action_state() :: #{binary() => any()}.


%% Example:
%% experiment_action() :: #{
%%   <<"actionId">> => string(),
%%   <<"description">> => string(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"parameters">> => map(),
%%   <<"startAfter">> => list(string()()),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"state">> => experiment_action_state(),
%%   <<"targets">> => map()
%% }
-type experiment_action() :: #{binary() => any()}.


%% Example:
%% target_account_configuration_summary() :: #{
%%   <<"accountId">> => string(),
%%   <<"description">> => string(),
%%   <<"roleArn">> => string()
%% }
-type target_account_configuration_summary() :: #{binary() => any()}.


%% Example:
%% experiment_report_s3_report() :: #{
%%   <<"arn">> => string(),
%%   <<"reportType">> => string()
%% }
-type experiment_report_s3_report() :: #{binary() => any()}.

%% Example:
%% get_experiment_template_request() :: #{}
-type get_experiment_template_request() :: #{}.


%% Example:
%% experiment_template_s3_log_configuration_input() :: #{
%%   <<"bucketName">> => string(),
%%   <<"prefix">> => string()
%% }
-type experiment_template_s3_log_configuration_input() :: #{binary() => any()}.


%% Example:
%% experiment_template_target_filter() :: #{
%%   <<"path">> => string(),
%%   <<"values">> => list(string()())
%% }
-type experiment_template_target_filter() :: #{binary() => any()}.


%% Example:
%% update_target_account_configuration_request() :: #{
%%   <<"description">> => string(),
%%   <<"roleArn">> => string()
%% }
-type update_target_account_configuration_request() :: #{binary() => any()}.


%% Example:
%% update_safety_lever_state_response() :: #{
%%   <<"safetyLever">> => safety_lever()
%% }
-type update_safety_lever_state_response() :: #{binary() => any()}.


%% Example:
%% experiment_log_configuration() :: #{
%%   <<"cloudWatchLogsConfiguration">> => experiment_cloud_watch_logs_log_configuration(),
%%   <<"logSchemaVersion">> => integer(),
%%   <<"s3Configuration">> => experiment_s3_log_configuration()
%% }
-type experiment_log_configuration() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> => list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_experiment_template_request() :: #{}
-type delete_experiment_template_request() :: #{}.


%% Example:
%% report_configuration_s3_output_input() :: #{
%%   <<"bucketName">> => string(),
%%   <<"prefix">> => string()
%% }
-type report_configuration_s3_output_input() :: #{binary() => any()}.


%% Example:
%% create_target_account_configuration_response() :: #{
%%   <<"targetAccountConfiguration">> => target_account_configuration()
%% }
-type create_target_account_configuration_response() :: #{binary() => any()}.


%% Example:
%% experiment_report_configuration_outputs_s3_configuration() :: #{
%%   <<"bucketName">> => string(),
%%   <<"prefix">> => string()
%% }
-type experiment_report_configuration_outputs_s3_configuration() :: #{binary() => any()}.


%% Example:
%% list_experiment_target_account_configurations_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"targetAccountConfigurations">> => list(experiment_target_account_configuration_summary()())
%% }
-type list_experiment_target_account_configurations_response() :: #{binary() => any()}.


%% Example:
%% experiment_report_configuration_cloud_watch_dashboard() :: #{
%%   <<"dashboardIdentifier">> => string()
%% }
-type experiment_report_configuration_cloud_watch_dashboard() :: #{binary() => any()}.

%% Example:
%% delete_target_account_configuration_request() :: #{}
-type delete_target_account_configuration_request() :: #{}.


%% Example:
%% experiment_template_cloud_watch_logs_log_configuration_input() :: #{
%%   <<"logGroupArn">> => string()
%% }
-type experiment_template_cloud_watch_logs_log_configuration_input() :: #{binary() => any()}.


%% Example:
%% list_target_account_configurations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_target_account_configurations_request() :: #{binary() => any()}.


%% Example:
%% target_resource_type_summary() :: #{
%%   <<"description">> => string(),
%%   <<"resourceType">> => string()
%% }
-type target_resource_type_summary() :: #{binary() => any()}.


%% Example:
%% update_experiment_template_action_input_item() :: #{
%%   <<"actionId">> => string(),
%%   <<"description">> => string(),
%%   <<"parameters">> => map(),
%%   <<"startAfter">> => list(string()()),
%%   <<"targets">> => map()
%% }
-type update_experiment_template_action_input_item() :: #{binary() => any()}.


%% Example:
%% experiment_target_filter() :: #{
%%   <<"path">> => string(),
%%   <<"values">> => list(string()())
%% }
-type experiment_target_filter() :: #{binary() => any()}.


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
%% report_configuration_cloud_watch_dashboard_input() :: #{
%%   <<"dashboardIdentifier">> => string()
%% }
-type report_configuration_cloud_watch_dashboard_input() :: #{binary() => any()}.


%% Example:
%% list_experiment_templates_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_experiment_templates_request() :: #{binary() => any()}.


%% Example:
%% update_experiment_template_log_configuration_input() :: #{
%%   <<"cloudWatchLogsConfiguration">> => experiment_template_cloud_watch_logs_log_configuration_input(),
%%   <<"logSchemaVersion">> => integer(),
%%   <<"s3Configuration">> => experiment_template_s3_log_configuration_input()
%% }
-type update_experiment_template_log_configuration_input() :: #{binary() => any()}.


%% Example:
%% experiment_state() :: #{
%%   <<"error">> => experiment_error(),
%%   <<"reason">> => string(),
%%   <<"status">> => list(any())
%% }
-type experiment_state() :: #{binary() => any()}.

%% Example:
%% get_experiment_request() :: #{}
-type get_experiment_request() :: #{}.


%% Example:
%% create_experiment_template_log_configuration_input() :: #{
%%   <<"cloudWatchLogsConfiguration">> => experiment_template_cloud_watch_logs_log_configuration_input(),
%%   <<"logSchemaVersion">> => integer(),
%%   <<"s3Configuration">> => experiment_template_s3_log_configuration_input()
%% }
-type create_experiment_template_log_configuration_input() :: #{binary() => any()}.


%% Example:
%% resolved_target() :: #{
%%   <<"resourceType">> => string(),
%%   <<"targetInformation">> => map(),
%%   <<"targetName">> => string()
%% }
-type resolved_target() :: #{binary() => any()}.


%% Example:
%% list_target_resource_types_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_target_resource_types_request() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% experiment_template_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"lastUpdateTime">> => non_neg_integer(),
%%   <<"tags">> => map()
%% }
-type experiment_template_summary() :: #{binary() => any()}.


%% Example:
%% create_target_account_configuration_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"roleArn">> := string()
%% }
-type create_target_account_configuration_request() :: #{binary() => any()}.


%% Example:
%% experiment_template_report_configuration_data_sources_input() :: #{
%%   <<"cloudWatchDashboards">> => list(report_configuration_cloud_watch_dashboard_input()())
%% }
-type experiment_template_report_configuration_data_sources_input() :: #{binary() => any()}.


%% Example:
%% target_resource_type_parameter() :: #{
%%   <<"description">> => string(),
%%   <<"required">> => boolean()
%% }
-type target_resource_type_parameter() :: #{binary() => any()}.


%% Example:
%% create_experiment_template_request() :: #{
%%   <<"actions">> := map(),
%%   <<"clientToken">> := string(),
%%   <<"description">> := string(),
%%   <<"experimentOptions">> => create_experiment_template_experiment_options_input(),
%%   <<"experimentReportConfiguration">> => create_experiment_template_report_configuration_input(),
%%   <<"logConfiguration">> => create_experiment_template_log_configuration_input(),
%%   <<"roleArn">> := string(),
%%   <<"stopConditions">> := list(create_experiment_template_stop_condition_input()()),
%%   <<"tags">> => map(),
%%   <<"targets">> => map()
%% }
-type create_experiment_template_request() :: #{binary() => any()}.

%% Example:
%% get_action_request() :: #{}
-type get_action_request() :: #{}.


%% Example:
%% experiment_template_report_configuration_cloud_watch_dashboard() :: #{
%%   <<"dashboardIdentifier">> => string()
%% }
-type experiment_template_report_configuration_cloud_watch_dashboard() :: #{binary() => any()}.


%% Example:
%% experiment_report_configuration() :: #{
%%   <<"dataSources">> => experiment_report_configuration_data_sources(),
%%   <<"outputs">> => experiment_report_configuration_outputs(),
%%   <<"postExperimentDuration">> => string(),
%%   <<"preExperimentDuration">> => string()
%% }
-type experiment_report_configuration() :: #{binary() => any()}.


%% Example:
%% experiment_target() :: #{
%%   <<"filters">> => list(experiment_target_filter()()),
%%   <<"parameters">> => map(),
%%   <<"resourceArns">> => list(string()()),
%%   <<"resourceTags">> => map(),
%%   <<"resourceType">> => string(),
%%   <<"selectionMode">> => string()
%% }
-type experiment_target() :: #{binary() => any()}.


%% Example:
%% get_action_response() :: #{
%%   <<"action">> => action()
%% }
-type get_action_response() :: #{binary() => any()}.


%% Example:
%% list_experiment_target_account_configurations_request() :: #{
%%   <<"nextToken">> => string()
%% }
-type list_experiment_target_account_configurations_request() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% experiment_template_s3_log_configuration() :: #{
%%   <<"bucketName">> => string(),
%%   <<"prefix">> => string()
%% }
-type experiment_template_s3_log_configuration() :: #{binary() => any()}.


%% Example:
%% list_actions_response() :: #{
%%   <<"actions">> => list(action_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_actions_response() :: #{binary() => any()}.


%% Example:
%% experiment_report() :: #{
%%   <<"s3Reports">> => list(experiment_report_s3_report()()),
%%   <<"state">> => experiment_report_state()
%% }
-type experiment_report() :: #{binary() => any()}.


%% Example:
%% experiment_template_report_configuration_outputs_input() :: #{
%%   <<"s3Configuration">> => report_configuration_s3_output_input()
%% }
-type experiment_template_report_configuration_outputs_input() :: #{binary() => any()}.


%% Example:
%% list_actions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_actions_request() :: #{binary() => any()}.


%% Example:
%% experiment_stop_condition() :: #{
%%   <<"source">> => string(),
%%   <<"value">> => string()
%% }
-type experiment_stop_condition() :: #{binary() => any()}.


%% Example:
%% target_resource_type() :: #{
%%   <<"description">> => string(),
%%   <<"parameters">> => map(),
%%   <<"resourceType">> => string()
%% }
-type target_resource_type() :: #{binary() => any()}.


%% Example:
%% update_safety_lever_state_request() :: #{
%%   <<"state">> := update_safety_lever_state_input()
%% }
-type update_safety_lever_state_request() :: #{binary() => any()}.


%% Example:
%% action_target() :: #{
%%   <<"resourceType">> => string()
%% }
-type action_target() :: #{binary() => any()}.


%% Example:
%% list_target_account_configurations_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"targetAccountConfigurations">> => list(target_account_configuration_summary()())
%% }
-type list_target_account_configurations_response() :: #{binary() => any()}.


%% Example:
%% experiment_error() :: #{
%%   <<"accountId">> => string(),
%%   <<"code">> => string(),
%%   <<"location">> => string()
%% }
-type experiment_error() :: #{binary() => any()}.


%% Example:
%% experiment_report_state() :: #{
%%   <<"error">> => experiment_report_error(),
%%   <<"reason">> => string(),
%%   <<"status">> => list(any())
%% }
-type experiment_report_state() :: #{binary() => any()}.


%% Example:
%% experiment_template_report_configuration_outputs() :: #{
%%   <<"s3Configuration">> => report_configuration_s3_output()
%% }
-type experiment_template_report_configuration_outputs() :: #{binary() => any()}.

%% Example:
%% stop_experiment_request() :: #{}
-type stop_experiment_request() :: #{}.


%% Example:
%% experiment_template_stop_condition() :: #{
%%   <<"source">> => string(),
%%   <<"value">> => string()
%% }
-type experiment_template_stop_condition() :: #{binary() => any()}.


%% Example:
%% experiment_template_action() :: #{
%%   <<"actionId">> => string(),
%%   <<"description">> => string(),
%%   <<"parameters">> => map(),
%%   <<"startAfter">> => list(string()()),
%%   <<"targets">> => map()
%% }
-type experiment_template_action() :: #{binary() => any()}.


%% Example:
%% delete_experiment_template_response() :: #{
%%   <<"experimentTemplate">> => experiment_template()
%% }
-type delete_experiment_template_response() :: #{binary() => any()}.


%% Example:
%% experiment_template_report_configuration_data_sources() :: #{
%%   <<"cloudWatchDashboards">> => list(experiment_template_report_configuration_cloud_watch_dashboard()())
%% }
-type experiment_template_report_configuration_data_sources() :: #{binary() => any()}.


%% Example:
%% action() :: #{
%%   <<"arn">> => string(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"parameters">> => map(),
%%   <<"tags">> => map(),
%%   <<"targets">> => map()
%% }
-type action() :: #{binary() => any()}.


%% Example:
%% experiment_template() :: #{
%%   <<"actions">> => map(),
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"experimentOptions">> => experiment_template_experiment_options(),
%%   <<"experimentReportConfiguration">> => experiment_template_report_configuration(),
%%   <<"id">> => string(),
%%   <<"lastUpdateTime">> => non_neg_integer(),
%%   <<"logConfiguration">> => experiment_template_log_configuration(),
%%   <<"roleArn">> => string(),
%%   <<"stopConditions">> => list(experiment_template_stop_condition()()),
%%   <<"tags">> => map(),
%%   <<"targetAccountConfigurationsCount">> => float(),
%%   <<"targets">> => map()
%% }
-type experiment_template() :: #{binary() => any()}.


%% Example:
%% start_experiment_response() :: #{
%%   <<"experiment">> => experiment()
%% }
-type start_experiment_response() :: #{binary() => any()}.

%% Example:
%% get_target_account_configuration_request() :: #{}
-type get_target_account_configuration_request() :: #{}.


%% Example:
%% get_safety_lever_response() :: #{
%%   <<"safetyLever">> => safety_lever()
%% }
-type get_safety_lever_response() :: #{binary() => any()}.


%% Example:
%% update_experiment_template_response() :: #{
%%   <<"experimentTemplate">> => experiment_template()
%% }
-type update_experiment_template_response() :: #{binary() => any()}.


%% Example:
%% list_experiment_resolved_targets_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"resolvedTargets">> => list(resolved_target()())
%% }
-type list_experiment_resolved_targets_response() :: #{binary() => any()}.

%% Example:
%% get_experiment_target_account_configuration_request() :: #{}
-type get_experiment_target_account_configuration_request() :: #{}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% get_experiment_template_response() :: #{
%%   <<"experimentTemplate">> => experiment_template()
%% }
-type get_experiment_template_response() :: #{binary() => any()}.


%% Example:
%% create_experiment_template_action_input() :: #{
%%   <<"actionId">> => string(),
%%   <<"description">> => string(),
%%   <<"parameters">> => map(),
%%   <<"startAfter">> => list(string()()),
%%   <<"targets">> => map()
%% }
-type create_experiment_template_action_input() :: #{binary() => any()}.


%% Example:
%% experiment_template_target_input_filter() :: #{
%%   <<"path">> => string(),
%%   <<"values">> => list(string()())
%% }
-type experiment_template_target_input_filter() :: #{binary() => any()}.


%% Example:
%% experiment_report_error() :: #{
%%   <<"code">> => string()
%% }
-type experiment_report_error() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% list_target_resource_types_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"targetResourceTypes">> => list(target_resource_type_summary()())
%% }
-type list_target_resource_types_response() :: #{binary() => any()}.


%% Example:
%% get_target_account_configuration_response() :: #{
%%   <<"targetAccountConfiguration">> => target_account_configuration()
%% }
-type get_target_account_configuration_response() :: #{binary() => any()}.


%% Example:
%% experiment_target_account_configuration_summary() :: #{
%%   <<"accountId">> => string(),
%%   <<"description">> => string(),
%%   <<"roleArn">> => string()
%% }
-type experiment_target_account_configuration_summary() :: #{binary() => any()}.


%% Example:
%% update_safety_lever_state_input() :: #{
%%   <<"reason">> => string(),
%%   <<"status">> => list(any())
%% }
-type update_safety_lever_state_input() :: #{binary() => any()}.


%% Example:
%% experiment_options() :: #{
%%   <<"accountTargeting">> => list(any()),
%%   <<"actionsMode">> => list(any()),
%%   <<"emptyTargetResolutionMode">> => list(any())
%% }
-type experiment_options() :: #{binary() => any()}.


%% Example:
%% list_experiments_request() :: #{
%%   <<"experimentTemplateId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_experiments_request() :: #{binary() => any()}.


%% Example:
%% start_experiment_request() :: #{
%%   <<"clientToken">> := string(),
%%   <<"experimentOptions">> => start_experiment_experiment_options_input(),
%%   <<"experimentTemplateId">> := string(),
%%   <<"tags">> => map()
%% }
-type start_experiment_request() :: #{binary() => any()}.


%% Example:
%% update_experiment_template_report_configuration_input() :: #{
%%   <<"dataSources">> => experiment_template_report_configuration_data_sources_input(),
%%   <<"outputs">> => experiment_template_report_configuration_outputs_input(),
%%   <<"postExperimentDuration">> => string(),
%%   <<"preExperimentDuration">> => string()
%% }
-type update_experiment_template_report_configuration_input() :: #{binary() => any()}.


%% Example:
%% create_experiment_template_experiment_options_input() :: #{
%%   <<"accountTargeting">> => list(any()),
%%   <<"emptyTargetResolutionMode">> => list(any())
%% }
-type create_experiment_template_experiment_options_input() :: #{binary() => any()}.

%% Example:
%% get_target_resource_type_request() :: #{}
-type get_target_resource_type_request() :: #{}.


%% Example:
%% experiment_template_experiment_options() :: #{
%%   <<"accountTargeting">> => list(any()),
%%   <<"emptyTargetResolutionMode">> => list(any())
%% }
-type experiment_template_experiment_options() :: #{binary() => any()}.


%% Example:
%% create_experiment_template_stop_condition_input() :: #{
%%   <<"source">> => string(),
%%   <<"value">> => string()
%% }
-type create_experiment_template_stop_condition_input() :: #{binary() => any()}.


%% Example:
%% create_experiment_template_response() :: #{
%%   <<"experimentTemplate">> => experiment_template()
%% }
-type create_experiment_template_response() :: #{binary() => any()}.


%% Example:
%% create_experiment_template_target_input() :: #{
%%   <<"filters">> => list(experiment_template_target_input_filter()()),
%%   <<"parameters">> => map(),
%%   <<"resourceArns">> => list(string()()),
%%   <<"resourceTags">> => map(),
%%   <<"resourceType">> => string(),
%%   <<"selectionMode">> => string()
%% }
-type create_experiment_template_target_input() :: #{binary() => any()}.


%% Example:
%% report_configuration_s3_output() :: #{
%%   <<"bucketName">> => string(),
%%   <<"prefix">> => string()
%% }
-type report_configuration_s3_output() :: #{binary() => any()}.


%% Example:
%% action_parameter() :: #{
%%   <<"description">> => string(),
%%   <<"required">> => boolean()
%% }
-type action_parameter() :: #{binary() => any()}.


%% Example:
%% start_experiment_experiment_options_input() :: #{
%%   <<"actionsMode">> => list(any())
%% }
-type start_experiment_experiment_options_input() :: #{binary() => any()}.


%% Example:
%% delete_target_account_configuration_response() :: #{
%%   <<"targetAccountConfiguration">> => target_account_configuration()
%% }
-type delete_target_account_configuration_response() :: #{binary() => any()}.


%% Example:
%% stop_experiment_response() :: #{
%%   <<"experiment">> => experiment()
%% }
-type stop_experiment_response() :: #{binary() => any()}.


%% Example:
%% update_experiment_template_target_input() :: #{
%%   <<"filters">> => list(experiment_template_target_input_filter()()),
%%   <<"parameters">> => map(),
%%   <<"resourceArns">> => list(string()()),
%%   <<"resourceTags">> => map(),
%%   <<"resourceType">> => string(),
%%   <<"selectionMode">> => string()
%% }
-type update_experiment_template_target_input() :: #{binary() => any()}.


%% Example:
%% experiment_template_report_configuration() :: #{
%%   <<"dataSources">> => experiment_template_report_configuration_data_sources(),
%%   <<"outputs">> => experiment_template_report_configuration_outputs(),
%%   <<"postExperimentDuration">> => string(),
%%   <<"preExperimentDuration">> => string()
%% }
-type experiment_template_report_configuration() :: #{binary() => any()}.


%% Example:
%% update_experiment_template_experiment_options_input() :: #{
%%   <<"emptyTargetResolutionMode">> => list(any())
%% }
-type update_experiment_template_experiment_options_input() :: #{binary() => any()}.


%% Example:
%% experiment() :: #{
%%   <<"actions">> => map(),
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"experimentOptions">> => experiment_options(),
%%   <<"experimentReport">> => experiment_report(),
%%   <<"experimentReportConfiguration">> => experiment_report_configuration(),
%%   <<"experimentTemplateId">> => string(),
%%   <<"id">> => string(),
%%   <<"logConfiguration">> => experiment_log_configuration(),
%%   <<"roleArn">> => string(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"state">> => experiment_state(),
%%   <<"stopConditions">> => list(experiment_stop_condition()()),
%%   <<"tags">> => map(),
%%   <<"targetAccountConfigurationsCount">> => float(),
%%   <<"targets">> => map()
%% }
-type experiment() :: #{binary() => any()}.


%% Example:
%% experiment_template_log_configuration() :: #{
%%   <<"cloudWatchLogsConfiguration">> => experiment_template_cloud_watch_logs_log_configuration(),
%%   <<"logSchemaVersion">> => integer(),
%%   <<"s3Configuration">> => experiment_template_s3_log_configuration()
%% }
-type experiment_template_log_configuration() :: #{binary() => any()}.


%% Example:
%% safety_lever() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"state">> => safety_lever_state()
%% }
-type safety_lever() :: #{binary() => any()}.


%% Example:
%% update_experiment_template_stop_condition_input() :: #{
%%   <<"source">> => string(),
%%   <<"value">> => string()
%% }
-type update_experiment_template_stop_condition_input() :: #{binary() => any()}.


%% Example:
%% experiment_cloud_watch_logs_log_configuration() :: #{
%%   <<"logGroupArn">> => string()
%% }
-type experiment_cloud_watch_logs_log_configuration() :: #{binary() => any()}.


%% Example:
%% experiment_template_cloud_watch_logs_log_configuration() :: #{
%%   <<"logGroupArn">> => string()
%% }
-type experiment_template_cloud_watch_logs_log_configuration() :: #{binary() => any()}.


%% Example:
%% safety_lever_state() :: #{
%%   <<"reason">> => string(),
%%   <<"status">> => list(any())
%% }
-type safety_lever_state() :: #{binary() => any()}.

-type create_experiment_template_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_target_account_configuration_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_experiment_template_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type delete_target_account_configuration_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type get_action_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type get_experiment_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type get_experiment_target_account_configuration_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type get_experiment_template_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type get_safety_lever_errors() ::
    resource_not_found_exception().

-type get_target_account_configuration_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type get_target_resource_type_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type list_actions_errors() ::
    validation_exception().

-type list_experiment_resolved_targets_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type list_experiment_target_account_configurations_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type list_experiment_templates_errors() ::
    validation_exception().

-type list_experiments_errors() ::
    validation_exception().

-type list_target_account_configurations_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type list_target_resource_types_errors() ::
    validation_exception().

-type start_experiment_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_experiment_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type update_experiment_template_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type update_safety_lever_state_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_target_account_configuration_errors() ::
    validation_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an experiment template.
%%
%% An experiment template includes the following components:
%%
%% Targets: A target can be a specific resource in
%% your Amazon Web Services environment, or one or more resources that match
%% criteria that you
%% specify, for example, resources that have specific tags.
%%
%% Actions: The actions to carry out on the
%% target. You can specify multiple actions, the duration of each action, and
%% when to start each action during an experiment.
%%
%% Stop conditions: If a stop condition is
%% triggered while an experiment is running, the experiment is automatically
%% stopped. You can define a stop condition as a CloudWatch alarm.
%%
%% For more information, see experiment templates:
%% https://docs.aws.amazon.com/fis/latest/userguide/experiment-templates.html
%% in the Fault Injection Service User Guide.
-spec create_experiment_template(aws_client:aws_client(), create_experiment_template_request()) ->
    {ok, create_experiment_template_response(), tuple()} |
    {error, any()} |
    {error, create_experiment_template_errors(), tuple()}.
create_experiment_template(Client, Input) ->
    create_experiment_template(Client, Input, []).

-spec create_experiment_template(aws_client:aws_client(), create_experiment_template_request(), proplists:proplist()) ->
    {ok, create_experiment_template_response(), tuple()} |
    {error, any()} |
    {error, create_experiment_template_errors(), tuple()}.
create_experiment_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/experimentTemplates"],
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

%% @doc Creates a target account configuration for the experiment template.
%%
%% A target account configuration
%% is required when `accountTargeting' of `experimentOptions' is set
%% to `multi-account'.
%% For more information, see experiment options:
%% https://docs.aws.amazon.com/fis/latest/userguide/experiment-options.html
%% in the Fault Injection Service User Guide.
-spec create_target_account_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), create_target_account_configuration_request()) ->
    {ok, create_target_account_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_target_account_configuration_errors(), tuple()}.
create_target_account_configuration(Client, AccountId, ExperimentTemplateId, Input) ->
    create_target_account_configuration(Client, AccountId, ExperimentTemplateId, Input, []).

-spec create_target_account_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), create_target_account_configuration_request(), proplists:proplist()) ->
    {ok, create_target_account_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_target_account_configuration_errors(), tuple()}.
create_target_account_configuration(Client, AccountId, ExperimentTemplateId, Input0, Options0) ->
    Method = post,
    Path = ["/experimentTemplates/", aws_util:encode_uri(ExperimentTemplateId), "/targetAccountConfigurations/", aws_util:encode_uri(AccountId), ""],
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

%% @doc Deletes the specified experiment template.
-spec delete_experiment_template(aws_client:aws_client(), binary() | list(), delete_experiment_template_request()) ->
    {ok, delete_experiment_template_response(), tuple()} |
    {error, any()} |
    {error, delete_experiment_template_errors(), tuple()}.
delete_experiment_template(Client, Id, Input) ->
    delete_experiment_template(Client, Id, Input, []).

-spec delete_experiment_template(aws_client:aws_client(), binary() | list(), delete_experiment_template_request(), proplists:proplist()) ->
    {ok, delete_experiment_template_response(), tuple()} |
    {error, any()} |
    {error, delete_experiment_template_errors(), tuple()}.
delete_experiment_template(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/experimentTemplates/", aws_util:encode_uri(Id), ""],
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

%% @doc Deletes the specified target account configuration of the experiment
%% template.
-spec delete_target_account_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), delete_target_account_configuration_request()) ->
    {ok, delete_target_account_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_target_account_configuration_errors(), tuple()}.
delete_target_account_configuration(Client, AccountId, ExperimentTemplateId, Input) ->
    delete_target_account_configuration(Client, AccountId, ExperimentTemplateId, Input, []).

-spec delete_target_account_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), delete_target_account_configuration_request(), proplists:proplist()) ->
    {ok, delete_target_account_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_target_account_configuration_errors(), tuple()}.
delete_target_account_configuration(Client, AccountId, ExperimentTemplateId, Input0, Options0) ->
    Method = delete,
    Path = ["/experimentTemplates/", aws_util:encode_uri(ExperimentTemplateId), "/targetAccountConfigurations/", aws_util:encode_uri(AccountId), ""],
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

%% @doc Gets information about the specified FIS action.
-spec get_action(aws_client:aws_client(), binary() | list()) ->
    {ok, get_action_response(), tuple()} |
    {error, any()} |
    {error, get_action_errors(), tuple()}.
get_action(Client, Id)
  when is_map(Client) ->
    get_action(Client, Id, #{}, #{}).

-spec get_action(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_action_response(), tuple()} |
    {error, any()} |
    {error, get_action_errors(), tuple()}.
get_action(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_action(Client, Id, QueryMap, HeadersMap, []).

-spec get_action(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_action_response(), tuple()} |
    {error, any()} |
    {error, get_action_errors(), tuple()}.
get_action(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/actions/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the specified experiment.
-spec get_experiment(aws_client:aws_client(), binary() | list()) ->
    {ok, get_experiment_response(), tuple()} |
    {error, any()} |
    {error, get_experiment_errors(), tuple()}.
get_experiment(Client, Id)
  when is_map(Client) ->
    get_experiment(Client, Id, #{}, #{}).

-spec get_experiment(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_experiment_response(), tuple()} |
    {error, any()} |
    {error, get_experiment_errors(), tuple()}.
get_experiment(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_experiment(Client, Id, QueryMap, HeadersMap, []).

-spec get_experiment(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_experiment_response(), tuple()} |
    {error, any()} |
    {error, get_experiment_errors(), tuple()}.
get_experiment(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/experiments/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the specified target account configuration of
%% the experiment.
-spec get_experiment_target_account_configuration(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_experiment_target_account_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_experiment_target_account_configuration_errors(), tuple()}.
get_experiment_target_account_configuration(Client, AccountId, ExperimentId)
  when is_map(Client) ->
    get_experiment_target_account_configuration(Client, AccountId, ExperimentId, #{}, #{}).

-spec get_experiment_target_account_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_experiment_target_account_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_experiment_target_account_configuration_errors(), tuple()}.
get_experiment_target_account_configuration(Client, AccountId, ExperimentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_experiment_target_account_configuration(Client, AccountId, ExperimentId, QueryMap, HeadersMap, []).

-spec get_experiment_target_account_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_experiment_target_account_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_experiment_target_account_configuration_errors(), tuple()}.
get_experiment_target_account_configuration(Client, AccountId, ExperimentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/experiments/", aws_util:encode_uri(ExperimentId), "/targetAccountConfigurations/", aws_util:encode_uri(AccountId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the specified experiment template.
-spec get_experiment_template(aws_client:aws_client(), binary() | list()) ->
    {ok, get_experiment_template_response(), tuple()} |
    {error, any()} |
    {error, get_experiment_template_errors(), tuple()}.
get_experiment_template(Client, Id)
  when is_map(Client) ->
    get_experiment_template(Client, Id, #{}, #{}).

-spec get_experiment_template(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_experiment_template_response(), tuple()} |
    {error, any()} |
    {error, get_experiment_template_errors(), tuple()}.
get_experiment_template(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_experiment_template(Client, Id, QueryMap, HeadersMap, []).

-spec get_experiment_template(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_experiment_template_response(), tuple()} |
    {error, any()} |
    {error, get_experiment_template_errors(), tuple()}.
get_experiment_template(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/experimentTemplates/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Gets information about the specified safety lever.
-spec get_safety_lever(aws_client:aws_client(), binary() | list()) ->
    {ok, get_safety_lever_response(), tuple()} |
    {error, any()} |
    {error, get_safety_lever_errors(), tuple()}.
get_safety_lever(Client, Id)
  when is_map(Client) ->
    get_safety_lever(Client, Id, #{}, #{}).

-spec get_safety_lever(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_safety_lever_response(), tuple()} |
    {error, any()} |
    {error, get_safety_lever_errors(), tuple()}.
get_safety_lever(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_safety_lever(Client, Id, QueryMap, HeadersMap, []).

-spec get_safety_lever(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_safety_lever_response(), tuple()} |
    {error, any()} |
    {error, get_safety_lever_errors(), tuple()}.
get_safety_lever(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/safetyLevers/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the specified target account configuration of
%% the experiment template.
-spec get_target_account_configuration(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_target_account_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_target_account_configuration_errors(), tuple()}.
get_target_account_configuration(Client, AccountId, ExperimentTemplateId)
  when is_map(Client) ->
    get_target_account_configuration(Client, AccountId, ExperimentTemplateId, #{}, #{}).

-spec get_target_account_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_target_account_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_target_account_configuration_errors(), tuple()}.
get_target_account_configuration(Client, AccountId, ExperimentTemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_target_account_configuration(Client, AccountId, ExperimentTemplateId, QueryMap, HeadersMap, []).

-spec get_target_account_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_target_account_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_target_account_configuration_errors(), tuple()}.
get_target_account_configuration(Client, AccountId, ExperimentTemplateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/experimentTemplates/", aws_util:encode_uri(ExperimentTemplateId), "/targetAccountConfigurations/", aws_util:encode_uri(AccountId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the specified resource type.
-spec get_target_resource_type(aws_client:aws_client(), binary() | list()) ->
    {ok, get_target_resource_type_response(), tuple()} |
    {error, any()} |
    {error, get_target_resource_type_errors(), tuple()}.
get_target_resource_type(Client, ResourceType)
  when is_map(Client) ->
    get_target_resource_type(Client, ResourceType, #{}, #{}).

-spec get_target_resource_type(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_target_resource_type_response(), tuple()} |
    {error, any()} |
    {error, get_target_resource_type_errors(), tuple()}.
get_target_resource_type(Client, ResourceType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_target_resource_type(Client, ResourceType, QueryMap, HeadersMap, []).

-spec get_target_resource_type(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_target_resource_type_response(), tuple()} |
    {error, any()} |
    {error, get_target_resource_type_errors(), tuple()}.
get_target_resource_type(Client, ResourceType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/targetResourceTypes/", aws_util:encode_uri(ResourceType), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the available FIS actions.
-spec list_actions(aws_client:aws_client()) ->
    {ok, list_actions_response(), tuple()} |
    {error, any()} |
    {error, list_actions_errors(), tuple()}.
list_actions(Client)
  when is_map(Client) ->
    list_actions(Client, #{}, #{}).

-spec list_actions(aws_client:aws_client(), map(), map()) ->
    {ok, list_actions_response(), tuple()} |
    {error, any()} |
    {error, list_actions_errors(), tuple()}.
list_actions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_actions(Client, QueryMap, HeadersMap, []).

-spec list_actions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_actions_response(), tuple()} |
    {error, any()} |
    {error, list_actions_errors(), tuple()}.
list_actions(Client, QueryMap, HeadersMap, Options0)
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the resolved targets information of the specified experiment.
-spec list_experiment_resolved_targets(aws_client:aws_client(), binary() | list()) ->
    {ok, list_experiment_resolved_targets_response(), tuple()} |
    {error, any()} |
    {error, list_experiment_resolved_targets_errors(), tuple()}.
list_experiment_resolved_targets(Client, ExperimentId)
  when is_map(Client) ->
    list_experiment_resolved_targets(Client, ExperimentId, #{}, #{}).

-spec list_experiment_resolved_targets(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_experiment_resolved_targets_response(), tuple()} |
    {error, any()} |
    {error, list_experiment_resolved_targets_errors(), tuple()}.
list_experiment_resolved_targets(Client, ExperimentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_experiment_resolved_targets(Client, ExperimentId, QueryMap, HeadersMap, []).

-spec list_experiment_resolved_targets(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_experiment_resolved_targets_response(), tuple()} |
    {error, any()} |
    {error, list_experiment_resolved_targets_errors(), tuple()}.
list_experiment_resolved_targets(Client, ExperimentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/experiments/", aws_util:encode_uri(ExperimentId), "/resolvedTargets"],
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
        {<<"targetName">>, maps:get(<<"targetName">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the target account configurations of the specified experiment.
-spec list_experiment_target_account_configurations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_experiment_target_account_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_experiment_target_account_configurations_errors(), tuple()}.
list_experiment_target_account_configurations(Client, ExperimentId)
  when is_map(Client) ->
    list_experiment_target_account_configurations(Client, ExperimentId, #{}, #{}).

-spec list_experiment_target_account_configurations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_experiment_target_account_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_experiment_target_account_configurations_errors(), tuple()}.
list_experiment_target_account_configurations(Client, ExperimentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_experiment_target_account_configurations(Client, ExperimentId, QueryMap, HeadersMap, []).

-spec list_experiment_target_account_configurations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_experiment_target_account_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_experiment_target_account_configurations_errors(), tuple()}.
list_experiment_target_account_configurations(Client, ExperimentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/experiments/", aws_util:encode_uri(ExperimentId), "/targetAccountConfigurations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists your experiment templates.
-spec list_experiment_templates(aws_client:aws_client()) ->
    {ok, list_experiment_templates_response(), tuple()} |
    {error, any()} |
    {error, list_experiment_templates_errors(), tuple()}.
list_experiment_templates(Client)
  when is_map(Client) ->
    list_experiment_templates(Client, #{}, #{}).

-spec list_experiment_templates(aws_client:aws_client(), map(), map()) ->
    {ok, list_experiment_templates_response(), tuple()} |
    {error, any()} |
    {error, list_experiment_templates_errors(), tuple()}.
list_experiment_templates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_experiment_templates(Client, QueryMap, HeadersMap, []).

-spec list_experiment_templates(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_experiment_templates_response(), tuple()} |
    {error, any()} |
    {error, list_experiment_templates_errors(), tuple()}.
list_experiment_templates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/experimentTemplates"],
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

%% @doc Lists your experiments.
-spec list_experiments(aws_client:aws_client()) ->
    {ok, list_experiments_response(), tuple()} |
    {error, any()} |
    {error, list_experiments_errors(), tuple()}.
list_experiments(Client)
  when is_map(Client) ->
    list_experiments(Client, #{}, #{}).

-spec list_experiments(aws_client:aws_client(), map(), map()) ->
    {ok, list_experiments_response(), tuple()} |
    {error, any()} |
    {error, list_experiments_errors(), tuple()}.
list_experiments(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_experiments(Client, QueryMap, HeadersMap, []).

-spec list_experiments(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_experiments_response(), tuple()} |
    {error, any()} |
    {error, list_experiments_errors(), tuple()}.
list_experiments(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/experiments"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"experimentTemplateId">>, maps:get(<<"experimentTemplateId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags for the specified resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()}.
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

%% @doc Lists the target account configurations of the specified experiment
%% template.
-spec list_target_account_configurations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_target_account_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_target_account_configurations_errors(), tuple()}.
list_target_account_configurations(Client, ExperimentTemplateId)
  when is_map(Client) ->
    list_target_account_configurations(Client, ExperimentTemplateId, #{}, #{}).

-spec list_target_account_configurations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_target_account_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_target_account_configurations_errors(), tuple()}.
list_target_account_configurations(Client, ExperimentTemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_target_account_configurations(Client, ExperimentTemplateId, QueryMap, HeadersMap, []).

-spec list_target_account_configurations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_target_account_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_target_account_configurations_errors(), tuple()}.
list_target_account_configurations(Client, ExperimentTemplateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/experimentTemplates/", aws_util:encode_uri(ExperimentTemplateId), "/targetAccountConfigurations"],
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

%% @doc Lists the target resource types.
-spec list_target_resource_types(aws_client:aws_client()) ->
    {ok, list_target_resource_types_response(), tuple()} |
    {error, any()} |
    {error, list_target_resource_types_errors(), tuple()}.
list_target_resource_types(Client)
  when is_map(Client) ->
    list_target_resource_types(Client, #{}, #{}).

-spec list_target_resource_types(aws_client:aws_client(), map(), map()) ->
    {ok, list_target_resource_types_response(), tuple()} |
    {error, any()} |
    {error, list_target_resource_types_errors(), tuple()}.
list_target_resource_types(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_target_resource_types(Client, QueryMap, HeadersMap, []).

-spec list_target_resource_types(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_target_resource_types_response(), tuple()} |
    {error, any()} |
    {error, list_target_resource_types_errors(), tuple()}.
list_target_resource_types(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/targetResourceTypes"],
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

%% @doc Starts running an experiment from the specified experiment template.
-spec start_experiment(aws_client:aws_client(), start_experiment_request()) ->
    {ok, start_experiment_response(), tuple()} |
    {error, any()} |
    {error, start_experiment_errors(), tuple()}.
start_experiment(Client, Input) ->
    start_experiment(Client, Input, []).

-spec start_experiment(aws_client:aws_client(), start_experiment_request(), proplists:proplist()) ->
    {ok, start_experiment_response(), tuple()} |
    {error, any()} |
    {error, start_experiment_errors(), tuple()}.
start_experiment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/experiments"],
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

%% @doc Stops the specified experiment.
-spec stop_experiment(aws_client:aws_client(), binary() | list(), stop_experiment_request()) ->
    {ok, stop_experiment_response(), tuple()} |
    {error, any()} |
    {error, stop_experiment_errors(), tuple()}.
stop_experiment(Client, Id, Input) ->
    stop_experiment(Client, Id, Input, []).

-spec stop_experiment(aws_client:aws_client(), binary() | list(), stop_experiment_request(), proplists:proplist()) ->
    {ok, stop_experiment_response(), tuple()} |
    {error, any()} |
    {error, stop_experiment_errors(), tuple()}.
stop_experiment(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/experiments/", aws_util:encode_uri(Id), ""],
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

%% @doc Applies the specified tags to the specified resource.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()}.
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

%% @doc Removes the specified tags from the specified resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()}.
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

%% @doc Updates the specified experiment template.
-spec update_experiment_template(aws_client:aws_client(), binary() | list(), update_experiment_template_request()) ->
    {ok, update_experiment_template_response(), tuple()} |
    {error, any()} |
    {error, update_experiment_template_errors(), tuple()}.
update_experiment_template(Client, Id, Input) ->
    update_experiment_template(Client, Id, Input, []).

-spec update_experiment_template(aws_client:aws_client(), binary() | list(), update_experiment_template_request(), proplists:proplist()) ->
    {ok, update_experiment_template_response(), tuple()} |
    {error, any()} |
    {error, update_experiment_template_errors(), tuple()}.
update_experiment_template(Client, Id, Input0, Options0) ->
    Method = patch,
    Path = ["/experimentTemplates/", aws_util:encode_uri(Id), ""],
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

%% @doc
%% Updates the specified safety lever state.
-spec update_safety_lever_state(aws_client:aws_client(), binary() | list(), update_safety_lever_state_request()) ->
    {ok, update_safety_lever_state_response(), tuple()} |
    {error, any()} |
    {error, update_safety_lever_state_errors(), tuple()}.
update_safety_lever_state(Client, Id, Input) ->
    update_safety_lever_state(Client, Id, Input, []).

-spec update_safety_lever_state(aws_client:aws_client(), binary() | list(), update_safety_lever_state_request(), proplists:proplist()) ->
    {ok, update_safety_lever_state_response(), tuple()} |
    {error, any()} |
    {error, update_safety_lever_state_errors(), tuple()}.
update_safety_lever_state(Client, Id, Input0, Options0) ->
    Method = patch,
    Path = ["/safetyLevers/", aws_util:encode_uri(Id), "/state"],
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

%% @doc Updates the target account configuration for the specified experiment
%% template.
-spec update_target_account_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), update_target_account_configuration_request()) ->
    {ok, update_target_account_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_target_account_configuration_errors(), tuple()}.
update_target_account_configuration(Client, AccountId, ExperimentTemplateId, Input) ->
    update_target_account_configuration(Client, AccountId, ExperimentTemplateId, Input, []).

-spec update_target_account_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), update_target_account_configuration_request(), proplists:proplist()) ->
    {ok, update_target_account_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_target_account_configuration_errors(), tuple()}.
update_target_account_configuration(Client, AccountId, ExperimentTemplateId, Input0, Options0) ->
    Method = patch,
    Path = ["/experimentTemplates/", aws_util:encode_uri(ExperimentTemplateId), "/targetAccountConfigurations/", aws_util:encode_uri(AccountId), ""],
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
    Client1 = Client#{service => <<"fis">>},
    Host = build_host(<<"fis">>, Client1),
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
