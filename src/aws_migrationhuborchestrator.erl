%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This API reference provides descriptions, syntax, and other details
%% about each of the
%% actions and data types for AWS Migration Hub Orchestrator.
%%
%% The topic for each action shows the API
%% request parameters and responses. Alternatively, you can use one of the
%% AWS SDKs to
%% access an API that is tailored to the programming language or platform
%% that you're
%% using.
-module(aws_migrationhuborchestrator).

-export([create_template/2,
         create_template/3,
         create_workflow/2,
         create_workflow/3,
         create_workflow_step/2,
         create_workflow_step/3,
         create_workflow_step_group/2,
         create_workflow_step_group/3,
         delete_template/3,
         delete_template/4,
         delete_workflow/3,
         delete_workflow/4,
         delete_workflow_step/3,
         delete_workflow_step/4,
         delete_workflow_step_group/3,
         delete_workflow_step_group/4,
         get_template/2,
         get_template/4,
         get_template/5,
         get_template_step/4,
         get_template_step/6,
         get_template_step/7,
         get_template_step_group/3,
         get_template_step_group/5,
         get_template_step_group/6,
         get_workflow/2,
         get_workflow/4,
         get_workflow/5,
         get_workflow_step/4,
         get_workflow_step/6,
         get_workflow_step/7,
         get_workflow_step_group/3,
         get_workflow_step_group/5,
         get_workflow_step_group/6,
         list_plugins/1,
         list_plugins/3,
         list_plugins/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_template_step_groups/2,
         list_template_step_groups/4,
         list_template_step_groups/5,
         list_template_steps/3,
         list_template_steps/5,
         list_template_steps/6,
         list_templates/1,
         list_templates/3,
         list_templates/4,
         list_workflow_step_groups/2,
         list_workflow_step_groups/4,
         list_workflow_step_groups/5,
         list_workflow_steps/3,
         list_workflow_steps/5,
         list_workflow_steps/6,
         list_workflows/1,
         list_workflows/3,
         list_workflows/4,
         retry_workflow_step/3,
         retry_workflow_step/4,
         start_workflow/3,
         start_workflow/4,
         stop_workflow/3,
         stop_workflow/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_template/3,
         update_template/4,
         update_workflow/3,
         update_workflow/4,
         update_workflow_step/3,
         update_workflow_step/4,
         update_workflow_step_group/3,
         update_workflow_step_group/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% list_workflow_steps_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"workflowStepsSummary">> := list(workflow_step_summary())
%% }
-type list_workflow_steps_response() :: #{binary() => any()}.


%% Example:
%% list_workflow_steps_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_workflow_steps_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% create_workflow_step_request() :: #{
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"next">> => list(string()),
%%   <<"outputs">> => list(workflow_step_output()),
%%   <<"previous">> => list(string()),
%%   <<"stepActionType">> := string(),
%%   <<"stepGroupId">> := string(),
%%   <<"stepTarget">> => list(string()),
%%   <<"workflowId">> := string(),
%%   <<"workflowStepAutomationConfiguration">> => workflow_step_automation_configuration()
%% }
-type create_workflow_step_request() :: #{binary() => any()}.


%% Example:
%% stop_migration_workflow_response() :: #{
%%   <<"arn">> => [string()],
%%   <<"id">> => string(),
%%   <<"lastStopTime">> => [non_neg_integer()],
%%   <<"status">> => string(),
%%   <<"statusMessage">> => [string()]
%% }
-type stop_migration_workflow_response() :: #{binary() => any()}.


%% Example:
%% create_migration_workflow_request() :: #{
%%   <<"applicationConfigurationId">> => [string()],
%%   <<"description">> => [string()],
%%   <<"inputParameters">> := map(),
%%   <<"name">> := [string()],
%%   <<"stepTargets">> => list(string()),
%%   <<"tags">> => map(),
%%   <<"templateId">> := [string()]
%% }
-type create_migration_workflow_request() :: #{binary() => any()}.

%% Example:
%% start_migration_workflow_request() :: #{}
-type start_migration_workflow_request() :: #{}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% update_workflow_step_group_request() :: #{
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"next">> => list(string()),
%%   <<"previous">> => list(string()),
%%   <<"workflowId">> := string()
%% }
-type update_workflow_step_group_request() :: #{binary() => any()}.


%% Example:
%% create_template_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"tags">> => map(),
%%   <<"templateDescription">> => [string()],
%%   <<"templateName">> := [string()],
%%   <<"templateSource">> := list()
%% }
-type create_template_request() :: #{binary() => any()}.


%% Example:
%% step_output() :: #{
%%   <<"dataType">> => string(),
%%   <<"name">> => [string()],
%%   <<"required">> => [boolean()]
%% }
-type step_output() :: #{binary() => any()}.


%% Example:
%% migration_workflow_summary() :: #{
%%   <<"adsApplicationConfigurationName">> => [string()],
%%   <<"completedSteps">> => [integer()],
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"id">> => string(),
%%   <<"name">> => [string()],
%%   <<"status">> => string(),
%%   <<"statusMessage">> => [string()],
%%   <<"templateId">> => [string()],
%%   <<"totalSteps">> => [integer()]
%% }
-type migration_workflow_summary() :: #{binary() => any()}.


%% Example:
%% update_workflow_step_request() :: #{
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"next">> => list(string()),
%%   <<"outputs">> => list(workflow_step_output()),
%%   <<"previous">> => list(string()),
%%   <<"status">> => string(),
%%   <<"stepActionType">> => string(),
%%   <<"stepGroupId">> := string(),
%%   <<"stepTarget">> => list(string()),
%%   <<"workflowId">> := string(),
%%   <<"workflowStepAutomationConfiguration">> => workflow_step_automation_configuration()
%% }
-type update_workflow_step_request() :: #{binary() => any()}.


%% Example:
%% update_migration_workflow_request() :: #{
%%   <<"description">> => [string()],
%%   <<"inputParameters">> => map(),
%%   <<"name">> => [string()],
%%   <<"stepTargets">> => list(string())
%% }
-type update_migration_workflow_request() :: #{binary() => any()}.


%% Example:
%% list_migration_workflows_response() :: #{
%%   <<"migrationWorkflowSummary">> := list(migration_workflow_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_migration_workflows_response() :: #{binary() => any()}.


%% Example:
%% update_template_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"templateDescription">> => [string()],
%%   <<"templateName">> => [string()]
%% }
-type update_template_request() :: #{binary() => any()}.


%% Example:
%% get_workflow_step_group_request() :: #{
%%   <<"workflowId">> := string()
%% }
-type get_workflow_step_group_request() :: #{binary() => any()}.


%% Example:
%% plugin_summary() :: #{
%%   <<"hostname">> => [string()],
%%   <<"ipAddress">> => string(),
%%   <<"pluginId">> => string(),
%%   <<"registeredTime">> => [string()],
%%   <<"status">> => string(),
%%   <<"version">> => string()
%% }
-type plugin_summary() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% platform_command() :: #{
%%   <<"linux">> => [string()],
%%   <<"windows">> => [string()]
%% }
-type platform_command() :: #{binary() => any()}.


%% Example:
%% get_workflow_step_response() :: #{
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"description">> => [string()],
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"lastStartTime">> => [non_neg_integer()],
%%   <<"name">> => [string()],
%%   <<"next">> => list(string()),
%%   <<"noOfSrvCompleted">> => [integer()],
%%   <<"noOfSrvFailed">> => [integer()],
%%   <<"outputs">> => list(workflow_step_output()),
%%   <<"owner">> => string(),
%%   <<"previous">> => list(string()),
%%   <<"scriptOutputLocation">> => [string()],
%%   <<"status">> => string(),
%%   <<"statusMessage">> => [string()],
%%   <<"stepActionType">> => string(),
%%   <<"stepGroupId">> => [string()],
%%   <<"stepId">> => [string()],
%%   <<"stepTarget">> => list(string()),
%%   <<"totalNoOfSrv">> => [integer()],
%%   <<"workflowId">> => [string()],
%%   <<"workflowStepAutomationConfiguration">> => workflow_step_automation_configuration()
%% }
-type get_workflow_step_response() :: #{binary() => any()}.


%% Example:
%% get_workflow_step_request() :: #{
%%   <<"stepGroupId">> := string(),
%%   <<"workflowId">> := string()
%% }
-type get_workflow_step_request() :: #{binary() => any()}.


%% Example:
%% get_template_step_request() :: #{
%%   <<"stepGroupId">> := string(),
%%   <<"templateId">> := string()
%% }
-type get_template_step_request() :: #{binary() => any()}.


%% Example:
%% get_migration_workflow_template_response() :: #{
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"description">> => [string()],
%%   <<"id">> => [string()],
%%   <<"inputs">> => list(template_input()),
%%   <<"name">> => [string()],
%%   <<"owner">> => [string()],
%%   <<"status">> => string(),
%%   <<"statusMessage">> => [string()],
%%   <<"tags">> => map(),
%%   <<"templateArn">> => [string()],
%%   <<"templateClass">> => [string()],
%%   <<"tools">> => list(tool())
%% }
-type get_migration_workflow_template_response() :: #{binary() => any()}.


%% Example:
%% delete_migration_workflow_response() :: #{
%%   <<"arn">> => [string()],
%%   <<"id">> => string(),
%%   <<"status">> => string()
%% }
-type delete_migration_workflow_response() :: #{binary() => any()}.

%% Example:
%% delete_template_request() :: #{}
-type delete_template_request() :: #{}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% start_migration_workflow_response() :: #{
%%   <<"arn">> => [string()],
%%   <<"id">> => string(),
%%   <<"lastStartTime">> => [non_neg_integer()],
%%   <<"status">> => string(),
%%   <<"statusMessage">> => [string()]
%% }
-type start_migration_workflow_response() :: #{binary() => any()}.


%% Example:
%% create_migration_workflow_response() :: #{
%%   <<"adsApplicationConfigurationId">> => [string()],
%%   <<"arn">> => [string()],
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"description">> => [string()],
%%   <<"id">> => string(),
%%   <<"name">> => [string()],
%%   <<"status">> => string(),
%%   <<"stepTargets">> => list(string()),
%%   <<"tags">> => map(),
%%   <<"templateId">> => [string()],
%%   <<"workflowInputs">> => map()
%% }
-type create_migration_workflow_response() :: #{binary() => any()}.


%% Example:
%% template_step_group_summary() :: #{
%%   <<"id">> => [string()],
%%   <<"name">> => [string()],
%%   <<"next">> => list(string()),
%%   <<"previous">> => list(string())
%% }
-type template_step_group_summary() :: #{binary() => any()}.


%% Example:
%% template_summary() :: #{
%%   <<"arn">> => [string()],
%%   <<"description">> => [string()],
%%   <<"id">> => [string()],
%%   <<"name">> => [string()]
%% }
-type template_summary() :: #{binary() => any()}.


%% Example:
%% create_workflow_step_group_request() :: #{
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"next">> => list(string()),
%%   <<"previous">> => list(string()),
%%   <<"workflowId">> := string()
%% }
-type create_workflow_step_group_request() :: #{binary() => any()}.


%% Example:
%% step_automation_configuration() :: #{
%%   <<"command">> => platform_command(),
%%   <<"runEnvironment">> => string(),
%%   <<"scriptLocationS3Bucket">> => [string()],
%%   <<"scriptLocationS3Key">> => platform_script_key(),
%%   <<"targetType">> => string()
%% }
-type step_automation_configuration() :: #{binary() => any()}.


%% Example:
%% get_template_step_group_response() :: #{
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"description">> => [string()],
%%   <<"id">> => [string()],
%%   <<"lastModifiedTime">> => [non_neg_integer()],
%%   <<"name">> => [string()],
%%   <<"next">> => list(string()),
%%   <<"previous">> => list(string()),
%%   <<"status">> => string(),
%%   <<"templateId">> => [string()],
%%   <<"tools">> => list(tool())
%% }
-type get_template_step_group_response() :: #{binary() => any()}.


%% Example:
%% get_migration_workflow_response() :: #{
%%   <<"adsApplicationConfigurationId">> => [string()],
%%   <<"adsApplicationName">> => [string()],
%%   <<"arn">> => [string()],
%%   <<"completedSteps">> => [integer()],
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"description">> => [string()],
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"id">> => string(),
%%   <<"lastModifiedTime">> => [non_neg_integer()],
%%   <<"lastStartTime">> => [non_neg_integer()],
%%   <<"lastStopTime">> => [non_neg_integer()],
%%   <<"name">> => [string()],
%%   <<"status">> => string(),
%%   <<"statusMessage">> => [string()],
%%   <<"tags">> => map(),
%%   <<"templateId">> => [string()],
%%   <<"tools">> => list(tool()),
%%   <<"totalSteps">> => [integer()],
%%   <<"workflowBucket">> => [string()],
%%   <<"workflowInputs">> => map()
%% }
-type get_migration_workflow_response() :: #{binary() => any()}.

%% Example:
%% stop_migration_workflow_request() :: #{}
-type stop_migration_workflow_request() :: #{}.


%% Example:
%% platform_script_key() :: #{
%%   <<"linux">> => string(),
%%   <<"windows">> => string()
%% }
-type platform_script_key() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% list_plugins_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"plugins">> => list(plugin_summary())
%% }
-type list_plugins_response() :: #{binary() => any()}.


%% Example:
%% workflow_step_summary() :: #{
%%   <<"description">> => [string()],
%%   <<"name">> => [string()],
%%   <<"next">> => list(string()),
%%   <<"noOfSrvCompleted">> => [integer()],
%%   <<"noOfSrvFailed">> => [integer()],
%%   <<"owner">> => string(),
%%   <<"previous">> => list(string()),
%%   <<"scriptLocation">> => [string()],
%%   <<"status">> => string(),
%%   <<"statusMessage">> => [string()],
%%   <<"stepActionType">> => string(),
%%   <<"stepId">> => [string()],
%%   <<"totalNoOfSrv">> => [integer()]
%% }
-type workflow_step_summary() :: #{binary() => any()}.


%% Example:
%% workflow_step_group_summary() :: #{
%%   <<"id">> => [string()],
%%   <<"name">> => [string()],
%%   <<"next">> => list(string()),
%%   <<"owner">> => string(),
%%   <<"previous">> => list(string()),
%%   <<"status">> => string()
%% }
-type workflow_step_group_summary() :: #{binary() => any()}.

%% Example:
%% delete_migration_workflow_request() :: #{}
-type delete_migration_workflow_request() :: #{}.


%% Example:
%% list_plugins_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_plugins_request() :: #{binary() => any()}.


%% Example:
%% retry_workflow_step_response() :: #{
%%   <<"id">> => [string()],
%%   <<"status">> => string(),
%%   <<"stepGroupId">> => [string()],
%%   <<"workflowId">> => [string()]
%% }
-type retry_workflow_step_response() :: #{binary() => any()}.


%% Example:
%% update_template_response() :: #{
%%   <<"tags">> => map(),
%%   <<"templateArn">> => [string()],
%%   <<"templateId">> => [string()]
%% }
-type update_template_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% template_input() :: #{
%%   <<"dataType">> => string(),
%%   <<"inputName">> => string(),
%%   <<"required">> => [boolean()]
%% }
-type template_input() :: #{binary() => any()}.


%% Example:
%% delete_workflow_step_request() :: #{
%%   <<"stepGroupId">> := string(),
%%   <<"workflowId">> := string()
%% }
-type delete_workflow_step_request() :: #{binary() => any()}.


%% Example:
%% create_workflow_step_group_response() :: #{
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"description">> => [string()],
%%   <<"id">> => [string()],
%%   <<"name">> => [string()],
%%   <<"next">> => list(string()),
%%   <<"previous">> => list(string()),
%%   <<"tools">> => list(tool()),
%%   <<"workflowId">> => [string()]
%% }
-type create_workflow_step_group_response() :: #{binary() => any()}.


%% Example:
%% update_migration_workflow_response() :: #{
%%   <<"adsApplicationConfigurationId">> => [string()],
%%   <<"arn">> => [string()],
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"description">> => [string()],
%%   <<"id">> => string(),
%%   <<"lastModifiedTime">> => [non_neg_integer()],
%%   <<"name">> => [string()],
%%   <<"status">> => string(),
%%   <<"stepTargets">> => list(string()),
%%   <<"tags">> => map(),
%%   <<"templateId">> => [string()],
%%   <<"workflowInputs">> => map()
%% }
-type update_migration_workflow_response() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% workflow_step_output() :: #{
%%   <<"dataType">> => string(),
%%   <<"name">> => string(),
%%   <<"required">> => [boolean()],
%%   <<"value">> => list()
%% }
-type workflow_step_output() :: #{binary() => any()}.


%% Example:
%% retry_workflow_step_request() :: #{
%%   <<"stepGroupId">> := string(),
%%   <<"workflowId">> := string()
%% }
-type retry_workflow_step_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.

%% Example:
%% get_migration_workflow_template_request() :: #{}
-type get_migration_workflow_template_request() :: #{}.

%% Example:
%% delete_workflow_step_response() :: #{}
-type delete_workflow_step_response() :: #{}.


%% Example:
%% list_workflow_step_groups_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"workflowStepGroupsSummary">> := list(workflow_step_group_summary())
%% }
-type list_workflow_step_groups_response() :: #{binary() => any()}.


%% Example:
%% create_workflow_step_response() :: #{
%%   <<"id">> => [string()],
%%   <<"name">> => [string()],
%%   <<"stepGroupId">> => [string()],
%%   <<"workflowId">> => [string()]
%% }
-type create_workflow_step_response() :: #{binary() => any()}.


%% Example:
%% update_workflow_step_group_response() :: #{
%%   <<"description">> => [string()],
%%   <<"id">> => [string()],
%%   <<"lastModifiedTime">> => [non_neg_integer()],
%%   <<"name">> => [string()],
%%   <<"next">> => list(string()),
%%   <<"previous">> => list(string()),
%%   <<"tools">> => list(tool()),
%%   <<"workflowId">> => [string()]
%% }
-type update_workflow_step_group_response() :: #{binary() => any()}.


%% Example:
%% list_template_step_groups_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_template_step_groups_request() :: #{binary() => any()}.


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
%% get_migration_workflow_request() :: #{}
-type get_migration_workflow_request() :: #{}.


%% Example:
%% template_step_summary() :: #{
%%   <<"id">> => [string()],
%%   <<"name">> => [string()],
%%   <<"next">> => list(string()),
%%   <<"owner">> => string(),
%%   <<"previous">> => list(string()),
%%   <<"stepActionType">> => string(),
%%   <<"stepGroupId">> => [string()],
%%   <<"targetType">> => string(),
%%   <<"templateId">> => [string()]
%% }
-type template_step_summary() :: #{binary() => any()}.


%% Example:
%% list_workflow_step_groups_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"workflowId">> := string()
%% }
-type list_workflow_step_groups_request() :: #{binary() => any()}.


%% Example:
%% list_template_steps_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"stepGroupId">> := string(),
%%   <<"templateId">> := string()
%% }
-type list_template_steps_request() :: #{binary() => any()}.


%% Example:
%% update_workflow_step_response() :: #{
%%   <<"id">> => string(),
%%   <<"name">> => [string()],
%%   <<"stepGroupId">> => [string()],
%%   <<"workflowId">> => [string()]
%% }
-type update_workflow_step_response() :: #{binary() => any()}.


%% Example:
%% create_template_response() :: #{
%%   <<"tags">> => map(),
%%   <<"templateArn">> => [string()],
%%   <<"templateId">> => [string()]
%% }
-type create_template_response() :: #{binary() => any()}.


%% Example:
%% get_workflow_step_group_response() :: #{
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"description">> => [string()],
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"id">> => string(),
%%   <<"lastModifiedTime">> => [non_neg_integer()],
%%   <<"name">> => [string()],
%%   <<"next">> => list(string()),
%%   <<"owner">> => string(),
%%   <<"previous">> => list(string()),
%%   <<"status">> => string(),
%%   <<"tools">> => list(tool()),
%%   <<"workflowId">> => [string()]
%% }
-type get_workflow_step_group_response() :: #{binary() => any()}.

%% Example:
%% delete_template_response() :: #{}
-type delete_template_response() :: #{}.


%% Example:
%% get_template_step_response() :: #{
%%   <<"creationTime">> => [string()],
%%   <<"description">> => [string()],
%%   <<"id">> => string(),
%%   <<"name">> => [string()],
%%   <<"next">> => list(string()),
%%   <<"outputs">> => list(step_output()),
%%   <<"previous">> => list(string()),
%%   <<"stepActionType">> => string(),
%%   <<"stepAutomationConfiguration">> => step_automation_configuration(),
%%   <<"stepGroupId">> => string(),
%%   <<"templateId">> => string()
%% }
-type get_template_step_response() :: #{binary() => any()}.


%% Example:
%% list_migration_workflow_templates_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"name">> => string(),
%%   <<"nextToken">> => string()
%% }
-type list_migration_workflow_templates_request() :: #{binary() => any()}.

%% Example:
%% get_template_step_group_request() :: #{}
-type get_template_step_group_request() :: #{}.


%% Example:
%% workflow_step_automation_configuration() :: #{
%%   <<"command">> => platform_command(),
%%   <<"runEnvironment">> => string(),
%%   <<"scriptLocationS3Bucket">> => string(),
%%   <<"scriptLocationS3Key">> => platform_script_key(),
%%   <<"targetType">> => string()
%% }
-type workflow_step_automation_configuration() :: #{binary() => any()}.


%% Example:
%% list_migration_workflow_templates_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"templateSummary">> := list(template_summary())
%% }
-type list_migration_workflow_templates_response() :: #{binary() => any()}.


%% Example:
%% list_template_steps_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"templateStepSummaryList">> => list(template_step_summary())
%% }
-type list_template_steps_response() :: #{binary() => any()}.


%% Example:
%% tool() :: #{
%%   <<"name">> => [string()],
%%   <<"url">> => [string()]
%% }
-type tool() :: #{binary() => any()}.


%% Example:
%% list_template_step_groups_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"templateStepGroupSummary">> := list(template_step_group_summary())
%% }
-type list_template_step_groups_response() :: #{binary() => any()}.

%% Example:
%% delete_workflow_step_group_response() :: #{}
-type delete_workflow_step_group_response() :: #{}.


%% Example:
%% delete_workflow_step_group_request() :: #{
%%   <<"workflowId">> := string()
%% }
-type delete_workflow_step_group_request() :: #{binary() => any()}.


%% Example:
%% list_migration_workflows_request() :: #{
%%   <<"adsApplicationConfigurationName">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"name">> => [string()],
%%   <<"nextToken">> => string(),
%%   <<"status">> => string(),
%%   <<"templateId">> => string()
%% }
-type list_migration_workflows_request() :: #{binary() => any()}.

-type create_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type create_workflow_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type create_workflow_step_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type create_workflow_step_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type delete_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_workflow_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_workflow_step_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_workflow_step_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_template_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_template_step_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_template_step_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_workflow_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_workflow_step_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_workflow_step_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_plugins_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type list_template_step_groups_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_template_steps_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_templates_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_workflow_step_groups_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_workflow_steps_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_workflows_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type retry_workflow_step_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type start_workflow_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type stop_workflow_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type update_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_workflow_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_workflow_step_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type update_workflow_step_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a migration workflow template.
-spec create_template(aws_client:aws_client(), create_template_request()) ->
    {ok, create_template_response(), tuple()} |
    {error, any()} |
    {error, create_template_errors(), tuple()}.
create_template(Client, Input) ->
    create_template(Client, Input, []).

-spec create_template(aws_client:aws_client(), create_template_request(), proplists:proplist()) ->
    {ok, create_template_response(), tuple()} |
    {error, any()} |
    {error, create_template_errors(), tuple()}.
create_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/template"],
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

%% @doc Create a workflow to orchestrate your migrations.
-spec create_workflow(aws_client:aws_client(), create_migration_workflow_request()) ->
    {ok, create_migration_workflow_response(), tuple()} |
    {error, any()} |
    {error, create_workflow_errors(), tuple()}.
create_workflow(Client, Input) ->
    create_workflow(Client, Input, []).

-spec create_workflow(aws_client:aws_client(), create_migration_workflow_request(), proplists:proplist()) ->
    {ok, create_migration_workflow_response(), tuple()} |
    {error, any()} |
    {error, create_workflow_errors(), tuple()}.
create_workflow(Client, Input0, Options0) ->
    Method = post,
    Path = ["/migrationworkflow/"],
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

%% @doc Create a step in the migration workflow.
-spec create_workflow_step(aws_client:aws_client(), create_workflow_step_request()) ->
    {ok, create_workflow_step_response(), tuple()} |
    {error, any()} |
    {error, create_workflow_step_errors(), tuple()}.
create_workflow_step(Client, Input) ->
    create_workflow_step(Client, Input, []).

-spec create_workflow_step(aws_client:aws_client(), create_workflow_step_request(), proplists:proplist()) ->
    {ok, create_workflow_step_response(), tuple()} |
    {error, any()} |
    {error, create_workflow_step_errors(), tuple()}.
create_workflow_step(Client, Input0, Options0) ->
    Method = post,
    Path = ["/workflowstep"],
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

%% @doc Create a step group in a migration workflow.
-spec create_workflow_step_group(aws_client:aws_client(), create_workflow_step_group_request()) ->
    {ok, create_workflow_step_group_response(), tuple()} |
    {error, any()} |
    {error, create_workflow_step_group_errors(), tuple()}.
create_workflow_step_group(Client, Input) ->
    create_workflow_step_group(Client, Input, []).

-spec create_workflow_step_group(aws_client:aws_client(), create_workflow_step_group_request(), proplists:proplist()) ->
    {ok, create_workflow_step_group_response(), tuple()} |
    {error, any()} |
    {error, create_workflow_step_group_errors(), tuple()}.
create_workflow_step_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/workflowstepgroups"],
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

%% @doc Deletes a migration workflow template.
-spec delete_template(aws_client:aws_client(), binary() | list(), delete_template_request()) ->
    {ok, delete_template_response(), tuple()} |
    {error, any()} |
    {error, delete_template_errors(), tuple()}.
delete_template(Client, Id, Input) ->
    delete_template(Client, Id, Input, []).

-spec delete_template(aws_client:aws_client(), binary() | list(), delete_template_request(), proplists:proplist()) ->
    {ok, delete_template_response(), tuple()} |
    {error, any()} |
    {error, delete_template_errors(), tuple()}.
delete_template(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/template/", aws_util:encode_uri(Id), ""],
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

%% @doc Delete a migration workflow.
%%
%% You must pause a running workflow in Migration Hub Orchestrator console to
%% delete it.
-spec delete_workflow(aws_client:aws_client(), binary() | list(), delete_migration_workflow_request()) ->
    {ok, delete_migration_workflow_response(), tuple()} |
    {error, any()} |
    {error, delete_workflow_errors(), tuple()}.
delete_workflow(Client, Id, Input) ->
    delete_workflow(Client, Id, Input, []).

-spec delete_workflow(aws_client:aws_client(), binary() | list(), delete_migration_workflow_request(), proplists:proplist()) ->
    {ok, delete_migration_workflow_response(), tuple()} |
    {error, any()} |
    {error, delete_workflow_errors(), tuple()}.
delete_workflow(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/migrationworkflow/", aws_util:encode_uri(Id), ""],
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

%% @doc Delete a step in a migration workflow.
%%
%% Pause the workflow to delete a running
%% step.
-spec delete_workflow_step(aws_client:aws_client(), binary() | list(), delete_workflow_step_request()) ->
    {ok, delete_workflow_step_response(), tuple()} |
    {error, any()} |
    {error, delete_workflow_step_errors(), tuple()}.
delete_workflow_step(Client, Id, Input) ->
    delete_workflow_step(Client, Id, Input, []).

-spec delete_workflow_step(aws_client:aws_client(), binary() | list(), delete_workflow_step_request(), proplists:proplist()) ->
    {ok, delete_workflow_step_response(), tuple()} |
    {error, any()} |
    {error, delete_workflow_step_errors(), tuple()}.
delete_workflow_step(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/workflowstep/", aws_util:encode_uri(Id), ""],
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
                     {<<"stepGroupId">>, <<"stepGroupId">>},
                     {<<"workflowId">>, <<"workflowId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a step group in a migration workflow.
-spec delete_workflow_step_group(aws_client:aws_client(), binary() | list(), delete_workflow_step_group_request()) ->
    {ok, delete_workflow_step_group_response(), tuple()} |
    {error, any()} |
    {error, delete_workflow_step_group_errors(), tuple()}.
delete_workflow_step_group(Client, Id, Input) ->
    delete_workflow_step_group(Client, Id, Input, []).

-spec delete_workflow_step_group(aws_client:aws_client(), binary() | list(), delete_workflow_step_group_request(), proplists:proplist()) ->
    {ok, delete_workflow_step_group_response(), tuple()} |
    {error, any()} |
    {error, delete_workflow_step_group_errors(), tuple()}.
delete_workflow_step_group(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/workflowstepgroup/", aws_util:encode_uri(Id), ""],
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
                     {<<"workflowId">>, <<"workflowId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Get the template you want to use for creating a migration workflow.
-spec get_template(aws_client:aws_client(), binary() | list()) ->
    {ok, get_migration_workflow_template_response(), tuple()} |
    {error, any()} |
    {error, get_template_errors(), tuple()}.
get_template(Client, Id)
  when is_map(Client) ->
    get_template(Client, Id, #{}, #{}).

-spec get_template(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_migration_workflow_template_response(), tuple()} |
    {error, any()} |
    {error, get_template_errors(), tuple()}.
get_template(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_template(Client, Id, QueryMap, HeadersMap, []).

-spec get_template(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_migration_workflow_template_response(), tuple()} |
    {error, any()} |
    {error, get_template_errors(), tuple()}.
get_template(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/migrationworkflowtemplate/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a specific step in a template.
-spec get_template_step(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_template_step_response(), tuple()} |
    {error, any()} |
    {error, get_template_step_errors(), tuple()}.
get_template_step(Client, Id, StepGroupId, TemplateId)
  when is_map(Client) ->
    get_template_step(Client, Id, StepGroupId, TemplateId, #{}, #{}).

-spec get_template_step(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_template_step_response(), tuple()} |
    {error, any()} |
    {error, get_template_step_errors(), tuple()}.
get_template_step(Client, Id, StepGroupId, TemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_template_step(Client, Id, StepGroupId, TemplateId, QueryMap, HeadersMap, []).

-spec get_template_step(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_template_step_response(), tuple()} |
    {error, any()} |
    {error, get_template_step_errors(), tuple()}.
get_template_step(Client, Id, StepGroupId, TemplateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/templatestep/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"stepGroupId">>, StepGroupId},
        {<<"templateId">>, TemplateId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a step group in a template.
-spec get_template_step_group(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_template_step_group_response(), tuple()} |
    {error, any()} |
    {error, get_template_step_group_errors(), tuple()}.
get_template_step_group(Client, Id, TemplateId)
  when is_map(Client) ->
    get_template_step_group(Client, Id, TemplateId, #{}, #{}).

-spec get_template_step_group(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_template_step_group_response(), tuple()} |
    {error, any()} |
    {error, get_template_step_group_errors(), tuple()}.
get_template_step_group(Client, Id, TemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_template_step_group(Client, Id, TemplateId, QueryMap, HeadersMap, []).

-spec get_template_step_group(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_template_step_group_response(), tuple()} |
    {error, any()} |
    {error, get_template_step_group_errors(), tuple()}.
get_template_step_group(Client, Id, TemplateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/templates/", aws_util:encode_uri(TemplateId), "/stepgroups/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get migration workflow.
-spec get_workflow(aws_client:aws_client(), binary() | list()) ->
    {ok, get_migration_workflow_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_errors(), tuple()}.
get_workflow(Client, Id)
  when is_map(Client) ->
    get_workflow(Client, Id, #{}, #{}).

-spec get_workflow(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_migration_workflow_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_errors(), tuple()}.
get_workflow(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_workflow(Client, Id, QueryMap, HeadersMap, []).

-spec get_workflow(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_migration_workflow_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_errors(), tuple()}.
get_workflow(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/migrationworkflow/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a step in the migration workflow.
-spec get_workflow_step(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_workflow_step_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_step_errors(), tuple()}.
get_workflow_step(Client, Id, StepGroupId, WorkflowId)
  when is_map(Client) ->
    get_workflow_step(Client, Id, StepGroupId, WorkflowId, #{}, #{}).

-spec get_workflow_step(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_workflow_step_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_step_errors(), tuple()}.
get_workflow_step(Client, Id, StepGroupId, WorkflowId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_workflow_step(Client, Id, StepGroupId, WorkflowId, QueryMap, HeadersMap, []).

-spec get_workflow_step(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_workflow_step_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_step_errors(), tuple()}.
get_workflow_step(Client, Id, StepGroupId, WorkflowId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workflowstep/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"stepGroupId">>, StepGroupId},
        {<<"workflowId">>, WorkflowId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the step group of a migration workflow.
-spec get_workflow_step_group(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_workflow_step_group_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_step_group_errors(), tuple()}.
get_workflow_step_group(Client, Id, WorkflowId)
  when is_map(Client) ->
    get_workflow_step_group(Client, Id, WorkflowId, #{}, #{}).

-spec get_workflow_step_group(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_workflow_step_group_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_step_group_errors(), tuple()}.
get_workflow_step_group(Client, Id, WorkflowId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_workflow_step_group(Client, Id, WorkflowId, QueryMap, HeadersMap, []).

-spec get_workflow_step_group(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_workflow_step_group_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_step_group_errors(), tuple()}.
get_workflow_step_group(Client, Id, WorkflowId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workflowstepgroup/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"workflowId">>, WorkflowId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List AWS Migration Hub Orchestrator plugins.
-spec list_plugins(aws_client:aws_client()) ->
    {ok, list_plugins_response(), tuple()} |
    {error, any()} |
    {error, list_plugins_errors(), tuple()}.
list_plugins(Client)
  when is_map(Client) ->
    list_plugins(Client, #{}, #{}).

-spec list_plugins(aws_client:aws_client(), map(), map()) ->
    {ok, list_plugins_response(), tuple()} |
    {error, any()} |
    {error, list_plugins_errors(), tuple()}.
list_plugins(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_plugins(Client, QueryMap, HeadersMap, []).

-spec list_plugins(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_plugins_response(), tuple()} |
    {error, any()} |
    {error, list_plugins_errors(), tuple()}.
list_plugins(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/plugins"],
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

%% @doc List the tags added to a resource.
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

%% @doc List the step groups in a template.
-spec list_template_step_groups(aws_client:aws_client(), binary() | list()) ->
    {ok, list_template_step_groups_response(), tuple()} |
    {error, any()} |
    {error, list_template_step_groups_errors(), tuple()}.
list_template_step_groups(Client, TemplateId)
  when is_map(Client) ->
    list_template_step_groups(Client, TemplateId, #{}, #{}).

-spec list_template_step_groups(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_template_step_groups_response(), tuple()} |
    {error, any()} |
    {error, list_template_step_groups_errors(), tuple()}.
list_template_step_groups(Client, TemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_template_step_groups(Client, TemplateId, QueryMap, HeadersMap, []).

-spec list_template_step_groups(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_template_step_groups_response(), tuple()} |
    {error, any()} |
    {error, list_template_step_groups_errors(), tuple()}.
list_template_step_groups(Client, TemplateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/templatestepgroups/", aws_util:encode_uri(TemplateId), ""],
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

%% @doc List the steps in a template.
-spec list_template_steps(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_template_steps_response(), tuple()} |
    {error, any()} |
    {error, list_template_steps_errors(), tuple()}.
list_template_steps(Client, StepGroupId, TemplateId)
  when is_map(Client) ->
    list_template_steps(Client, StepGroupId, TemplateId, #{}, #{}).

-spec list_template_steps(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_template_steps_response(), tuple()} |
    {error, any()} |
    {error, list_template_steps_errors(), tuple()}.
list_template_steps(Client, StepGroupId, TemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_template_steps(Client, StepGroupId, TemplateId, QueryMap, HeadersMap, []).

-spec list_template_steps(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_template_steps_response(), tuple()} |
    {error, any()} |
    {error, list_template_steps_errors(), tuple()}.
list_template_steps(Client, StepGroupId, TemplateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/templatesteps"],
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
        {<<"stepGroupId">>, StepGroupId},
        {<<"templateId">>, TemplateId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the templates available in Migration Hub Orchestrator to create
%% a migration workflow.
-spec list_templates(aws_client:aws_client()) ->
    {ok, list_migration_workflow_templates_response(), tuple()} |
    {error, any()} |
    {error, list_templates_errors(), tuple()}.
list_templates(Client)
  when is_map(Client) ->
    list_templates(Client, #{}, #{}).

-spec list_templates(aws_client:aws_client(), map(), map()) ->
    {ok, list_migration_workflow_templates_response(), tuple()} |
    {error, any()} |
    {error, list_templates_errors(), tuple()}.
list_templates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_templates(Client, QueryMap, HeadersMap, []).

-spec list_templates(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_migration_workflow_templates_response(), tuple()} |
    {error, any()} |
    {error, list_templates_errors(), tuple()}.
list_templates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/migrationworkflowtemplates"],
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
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the step groups in a migration workflow.
-spec list_workflow_step_groups(aws_client:aws_client(), binary() | list()) ->
    {ok, list_workflow_step_groups_response(), tuple()} |
    {error, any()} |
    {error, list_workflow_step_groups_errors(), tuple()}.
list_workflow_step_groups(Client, WorkflowId)
  when is_map(Client) ->
    list_workflow_step_groups(Client, WorkflowId, #{}, #{}).

-spec list_workflow_step_groups(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_workflow_step_groups_response(), tuple()} |
    {error, any()} |
    {error, list_workflow_step_groups_errors(), tuple()}.
list_workflow_step_groups(Client, WorkflowId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_workflow_step_groups(Client, WorkflowId, QueryMap, HeadersMap, []).

-spec list_workflow_step_groups(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_workflow_step_groups_response(), tuple()} |
    {error, any()} |
    {error, list_workflow_step_groups_errors(), tuple()}.
list_workflow_step_groups(Client, WorkflowId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workflowstepgroups"],
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
        {<<"workflowId">>, WorkflowId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the steps in a workflow.
-spec list_workflow_steps(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_workflow_steps_response(), tuple()} |
    {error, any()} |
    {error, list_workflow_steps_errors(), tuple()}.
list_workflow_steps(Client, StepGroupId, WorkflowId)
  when is_map(Client) ->
    list_workflow_steps(Client, StepGroupId, WorkflowId, #{}, #{}).

-spec list_workflow_steps(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_workflow_steps_response(), tuple()} |
    {error, any()} |
    {error, list_workflow_steps_errors(), tuple()}.
list_workflow_steps(Client, StepGroupId, WorkflowId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_workflow_steps(Client, StepGroupId, WorkflowId, QueryMap, HeadersMap, []).

-spec list_workflow_steps(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_workflow_steps_response(), tuple()} |
    {error, any()} |
    {error, list_workflow_steps_errors(), tuple()}.
list_workflow_steps(Client, StepGroupId, WorkflowId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workflow/", aws_util:encode_uri(WorkflowId), "/workflowstepgroups/", aws_util:encode_uri(StepGroupId), "/workflowsteps"],
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

%% @doc List the migration workflows.
-spec list_workflows(aws_client:aws_client()) ->
    {ok, list_migration_workflows_response(), tuple()} |
    {error, any()} |
    {error, list_workflows_errors(), tuple()}.
list_workflows(Client)
  when is_map(Client) ->
    list_workflows(Client, #{}, #{}).

-spec list_workflows(aws_client:aws_client(), map(), map()) ->
    {ok, list_migration_workflows_response(), tuple()} |
    {error, any()} |
    {error, list_workflows_errors(), tuple()}.
list_workflows(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_workflows(Client, QueryMap, HeadersMap, []).

-spec list_workflows(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_migration_workflows_response(), tuple()} |
    {error, any()} |
    {error, list_workflows_errors(), tuple()}.
list_workflows(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/migrationworkflows"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"adsApplicationConfigurationName">>, maps:get(<<"adsApplicationConfigurationName">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)},
        {<<"templateId">>, maps:get(<<"templateId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retry a failed step in a migration workflow.
-spec retry_workflow_step(aws_client:aws_client(), binary() | list(), retry_workflow_step_request()) ->
    {ok, retry_workflow_step_response(), tuple()} |
    {error, any()} |
    {error, retry_workflow_step_errors(), tuple()}.
retry_workflow_step(Client, Id, Input) ->
    retry_workflow_step(Client, Id, Input, []).

-spec retry_workflow_step(aws_client:aws_client(), binary() | list(), retry_workflow_step_request(), proplists:proplist()) ->
    {ok, retry_workflow_step_response(), tuple()} |
    {error, any()} |
    {error, retry_workflow_step_errors(), tuple()}.
retry_workflow_step(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/retryworkflowstep/", aws_util:encode_uri(Id), ""],
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
                     {<<"stepGroupId">>, <<"stepGroupId">>},
                     {<<"workflowId">>, <<"workflowId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Start a migration workflow.
-spec start_workflow(aws_client:aws_client(), binary() | list(), start_migration_workflow_request()) ->
    {ok, start_migration_workflow_response(), tuple()} |
    {error, any()} |
    {error, start_workflow_errors(), tuple()}.
start_workflow(Client, Id, Input) ->
    start_workflow(Client, Id, Input, []).

-spec start_workflow(aws_client:aws_client(), binary() | list(), start_migration_workflow_request(), proplists:proplist()) ->
    {ok, start_migration_workflow_response(), tuple()} |
    {error, any()} |
    {error, start_workflow_errors(), tuple()}.
start_workflow(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/migrationworkflow/", aws_util:encode_uri(Id), "/start"],
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

%% @doc Stop an ongoing migration workflow.
-spec stop_workflow(aws_client:aws_client(), binary() | list(), stop_migration_workflow_request()) ->
    {ok, stop_migration_workflow_response(), tuple()} |
    {error, any()} |
    {error, stop_workflow_errors(), tuple()}.
stop_workflow(Client, Id, Input) ->
    stop_workflow(Client, Id, Input, []).

-spec stop_workflow(aws_client:aws_client(), binary() | list(), stop_migration_workflow_request(), proplists:proplist()) ->
    {ok, stop_migration_workflow_response(), tuple()} |
    {error, any()} |
    {error, stop_workflow_errors(), tuple()}.
stop_workflow(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/migrationworkflow/", aws_util:encode_uri(Id), "/stop"],
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

%% @doc Tag a resource by specifying its Amazon Resource Name (ARN).
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

%% @doc Deletes the tags for a resource.
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

%% @doc Updates a migration workflow template.
-spec update_template(aws_client:aws_client(), binary() | list(), update_template_request()) ->
    {ok, update_template_response(), tuple()} |
    {error, any()} |
    {error, update_template_errors(), tuple()}.
update_template(Client, Id, Input) ->
    update_template(Client, Id, Input, []).

-spec update_template(aws_client:aws_client(), binary() | list(), update_template_request(), proplists:proplist()) ->
    {ok, update_template_response(), tuple()} |
    {error, any()} |
    {error, update_template_errors(), tuple()}.
update_template(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/template/", aws_util:encode_uri(Id), ""],
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

%% @doc Update a migration workflow.
-spec update_workflow(aws_client:aws_client(), binary() | list(), update_migration_workflow_request()) ->
    {ok, update_migration_workflow_response(), tuple()} |
    {error, any()} |
    {error, update_workflow_errors(), tuple()}.
update_workflow(Client, Id, Input) ->
    update_workflow(Client, Id, Input, []).

-spec update_workflow(aws_client:aws_client(), binary() | list(), update_migration_workflow_request(), proplists:proplist()) ->
    {ok, update_migration_workflow_response(), tuple()} |
    {error, any()} |
    {error, update_workflow_errors(), tuple()}.
update_workflow(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/migrationworkflow/", aws_util:encode_uri(Id), ""],
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

%% @doc Update a step in a migration workflow.
-spec update_workflow_step(aws_client:aws_client(), binary() | list(), update_workflow_step_request()) ->
    {ok, update_workflow_step_response(), tuple()} |
    {error, any()} |
    {error, update_workflow_step_errors(), tuple()}.
update_workflow_step(Client, Id, Input) ->
    update_workflow_step(Client, Id, Input, []).

-spec update_workflow_step(aws_client:aws_client(), binary() | list(), update_workflow_step_request(), proplists:proplist()) ->
    {ok, update_workflow_step_response(), tuple()} |
    {error, any()} |
    {error, update_workflow_step_errors(), tuple()}.
update_workflow_step(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/workflowstep/", aws_util:encode_uri(Id), ""],
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

%% @doc Update the step group in a migration workflow.
-spec update_workflow_step_group(aws_client:aws_client(), binary() | list(), update_workflow_step_group_request()) ->
    {ok, update_workflow_step_group_response(), tuple()} |
    {error, any()} |
    {error, update_workflow_step_group_errors(), tuple()}.
update_workflow_step_group(Client, Id, Input) ->
    update_workflow_step_group(Client, Id, Input, []).

-spec update_workflow_step_group(aws_client:aws_client(), binary() | list(), update_workflow_step_group_request(), proplists:proplist()) ->
    {ok, update_workflow_step_group_response(), tuple()} |
    {error, any()} |
    {error, update_workflow_step_group_errors(), tuple()}.
update_workflow_step_group(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/workflowstepgroup/", aws_util:encode_uri(Id), ""],
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
                     {<<"workflowId">>, <<"workflowId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
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
    Client1 = Client#{service => <<"migrationhub-orchestrator">>},
    Host = build_host(<<"migrationhub-orchestrator">>, Client1),
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
