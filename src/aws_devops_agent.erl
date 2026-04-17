%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS DevOps Agent is a frontier agent that resolves and proactively
%% prevents incidents, continuously improving
%% reliability and performance.
%%
%% AWS DevOps Agent investigates incidents and identifies operational
%% improvements as an
%% experienced DevOps engineer.
%%
%% The agent works by:
%%
%% * Learning your resources and their relationships.
%% * Working with your observability tools, runbooks, code repositories, and
%% CI/CD pipelines.
%% * Correlating telemetry, code, and deployment data to understand
%% relationships between your application resources.
%% * Supporting applications in multicloud and hybrid environments.
-module(aws_devops_agent).

-export([associate_service/3,
         associate_service/4,
         create_agent_space/2,
         create_agent_space/3,
         create_backlog_task/3,
         create_backlog_task/4,
         create_chat/3,
         create_chat/4,
         create_private_connection/2,
         create_private_connection/3,
         delete_agent_space/3,
         delete_agent_space/4,
         delete_private_connection/3,
         delete_private_connection/4,
         deregister_service/3,
         deregister_service/4,
         describe_private_connection/2,
         describe_private_connection/4,
         describe_private_connection/5,
         disable_operator_app/3,
         disable_operator_app/4,
         disassociate_service/4,
         disassociate_service/5,
         enable_operator_app/3,
         enable_operator_app/4,
         get_account_usage/1,
         get_account_usage/3,
         get_account_usage/4,
         get_agent_space/2,
         get_agent_space/4,
         get_agent_space/5,
         get_association/3,
         get_association/5,
         get_association/6,
         get_backlog_task/3,
         get_backlog_task/5,
         get_backlog_task/6,
         get_operator_app/2,
         get_operator_app/4,
         get_operator_app/5,
         get_recommendation/3,
         get_recommendation/5,
         get_recommendation/6,
         get_service/2,
         get_service/4,
         get_service/5,
         list_agent_spaces/2,
         list_agent_spaces/3,
         list_associations/3,
         list_associations/4,
         list_backlog_tasks/3,
         list_backlog_tasks/4,
         list_chats/2,
         list_chats/4,
         list_chats/5,
         list_executions/3,
         list_executions/4,
         list_goals/3,
         list_goals/4,
         list_journal_records/3,
         list_journal_records/4,
         list_pending_messages/3,
         list_pending_messages/4,
         list_private_connections/1,
         list_private_connections/3,
         list_private_connections/4,
         list_recommendations/3,
         list_recommendations/4,
         list_services/2,
         list_services/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_webhooks/4,
         list_webhooks/5,
         register_service/3,
         register_service/4,
         send_message/3,
         send_message/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_agent_space/3,
         update_agent_space/4,
         update_association/4,
         update_association/5,
         update_backlog_task/4,
         update_backlog_task/5,
         update_goal/4,
         update_goal/5,
         update_operator_app_idp_config/3,
         update_operator_app_idp_config/4,
         update_private_connection_certificate/3,
         update_private_connection_certificate/4,
         update_recommendation/4,
         update_recommendation/5,
         validate_aws_associations/3,
         validate_aws_associations/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% get_account_usage_output() :: #{
%%   <<"monthlyAccountEvaluationHours">> => usage_metric(),
%%   <<"monthlyAccountInvestigationHours">> => usage_metric(),
%%   <<"monthlyAccountOnDemandHours">> => usage_metric(),
%%   <<"monthlyAccountSystemLearningHours">> => usage_metric(),
%%   <<"usagePeriodEndTime">> => non_neg_integer(),
%%   <<"usagePeriodStartTime">> => non_neg_integer()
%% }
-type get_account_usage_output() :: #{binary() => any()}.


%% Example:
%% m_c_p_server_api_key_config() :: #{
%%   <<"apiKeyHeader">> => [string()],
%%   <<"apiKeyName">> => [string()],
%%   <<"apiKeyValue">> => string()
%% }
-type m_c_p_server_api_key_config() :: #{binary() => any()}.


%% Example:
%% create_chat_response() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"executionId">> => string()
%% }
-type create_chat_response() :: #{binary() => any()}.

%% Example:
%% disassociate_service_input() :: #{}
-type disassociate_service_input() :: #{}.


%% Example:
%% m_c_p_server_configuration() :: #{
%%   <<"tools">> => list([string()]())
%% }
-type m_c_p_server_configuration() :: #{binary() => any()}.


%% Example:
%% registered_grafana_server_details() :: #{
%%   <<"authorizationMethod">> => list(any()),
%%   <<"endpoint">> => [string()]
%% }
-type registered_grafana_server_details() :: #{binary() => any()}.

%% Example:
%% get_service_input() :: #{}
-type get_service_input() :: #{}.


%% Example:
%% task() :: #{
%%   <<"agentSpaceId">> => [string()],
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => [string()],
%%   <<"executionId">> => [string()],
%%   <<"hasLinkedTasks">> => [boolean()],
%%   <<"metadata">> => [any()],
%%   <<"primaryTaskId">> => [string()],
%%   <<"priority">> => list(any()),
%%   <<"reference">> => reference_output(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"supportMetadata">> => [any()],
%%   <<"taskId">> => [string()],
%%   <<"taskType">> => list(any()),
%%   <<"title">> => [string()],
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => [integer()]
%% }
-type task() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% idp_auth_configuration() :: #{
%%   <<"clientId">> => [string()],
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"issuerUrl">> => [string()],
%%   <<"operatorAppRoleArn">> => [string()],
%%   <<"provider">> => [string()],
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type idp_auth_configuration() :: #{binary() => any()}.


%% Example:
%% update_agent_space_input() :: #{
%%   <<"description">> => string(),
%%   <<"locale">> => string(),
%%   <<"name">> => string()
%% }
-type update_agent_space_input() :: #{binary() => any()}.


%% Example:
%% service_now_o_auth_client_credentials_config() :: #{
%%   <<"clientId">> => string(),
%%   <<"clientName">> => [string()],
%%   <<"clientSecret">> => string(),
%%   <<"exchangeParameters">> => map()
%% }
-type service_now_o_auth_client_credentials_config() :: #{binary() => any()}.


%% Example:
%% registered_m_c_p_server_details() :: #{
%%   <<"apiKeyHeader">> => [string()],
%%   <<"authorizationMethod">> => list(any()),
%%   <<"description">> => string(),
%%   <<"endpoint">> => [string()],
%%   <<"name">> => [string()]
%% }
-type registered_m_c_p_server_details() :: #{binary() => any()}.


%% Example:
%% git_lab_configuration() :: #{
%%   <<"instanceIdentifier">> => [string()],
%%   <<"projectId">> => [string()],
%%   <<"projectPath">> => [string()]
%% }
-type git_lab_configuration() :: #{binary() => any()}.


%% Example:
%% update_association_input() :: #{
%%   <<"configuration">> := list()
%% }
-type update_association_input() :: #{binary() => any()}.

%% Example:
%% validate_aws_associations_input() :: #{}
-type validate_aws_associations_input() :: #{}.


%% Example:
%% register_service_input() :: #{
%%   <<"kmsKeyArn">> => string(),
%%   <<"name">> => string(),
%%   <<"privateConnectionName">> => string(),
%%   <<"serviceDetails">> := list(),
%%   <<"tags">> => map()
%% }
-type register_service_input() :: #{binary() => any()}.


%% Example:
%% event_channel_details() :: #{
%%   <<"type">> => list(any())
%% }
-type event_channel_details() :: #{binary() => any()}.


%% Example:
%% create_private_connection_output() :: #{
%%   <<"certificateExpiryTime">> => [non_neg_integer()],
%%   <<"hostAddress">> => string(),
%%   <<"name">> => string(),
%%   <<"resourceConfigurationId">> => string(),
%%   <<"resourceGatewayId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"type">> => list(any()),
%%   <<"vpcId">> => string()
%% }
-type create_private_connection_output() :: #{binary() => any()}.


%% Example:
%% list_agent_spaces_output() :: #{
%%   <<"agentSpaces">> => list(agent_space()),
%%   <<"nextToken">> => string()
%% }
-type list_agent_spaces_output() :: #{binary() => any()}.


%% Example:
%% idc_auth_configuration() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"idcApplicationArn">> => [string()],
%%   <<"idcInstanceArn">> => [string()],
%%   <<"operatorAppRoleArn">> => [string()],
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type idc_auth_configuration() :: #{binary() => any()}.


%% Example:
%% get_operator_app_output() :: #{
%%   <<"iam">> => iam_auth_configuration(),
%%   <<"idc">> => idc_auth_configuration(),
%%   <<"idp">> => idp_auth_configuration()
%% }
-type get_operator_app_output() :: #{binary() => any()}.


%% Example:
%% list_associations_input() :: #{
%%   <<"filterServiceTypes">> => [string()],
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_associations_input() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% list_backlog_tasks_request() :: #{
%%   <<"filter">> => task_filter(),
%%   <<"limit">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"order">> => list(any()),
%%   <<"sortField">> => list(any())
%% }
-type list_backlog_tasks_request() :: #{binary() => any()}.


%% Example:
%% update_backlog_task_response() :: #{
%%   <<"task">> => task()
%% }
-type update_backlog_task_response() :: #{binary() => any()}.


%% Example:
%% git_hub_configuration() :: #{
%%   <<"instanceIdentifier">> => [string()],
%%   <<"owner">> => [string()],
%%   <<"ownerType">> => list(any()),
%%   <<"repoId">> => [string()],
%%   <<"repoName">> => [string()]
%% }
-type git_hub_configuration() :: #{binary() => any()}.


%% Example:
%% update_recommendation_request() :: #{
%%   <<"additionalContext">> => [string()],
%%   <<"clientToken">> => [string()],
%%   <<"status">> => list(any())
%% }
-type update_recommendation_request() :: #{binary() => any()}.


%% Example:
%% iam_auth_configuration() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"operatorAppRoleArn">> => [string()],
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type iam_auth_configuration() :: #{binary() => any()}.


%% Example:
%% datadog_service_details() :: #{
%%   <<"authorizationConfig">> => list(),
%%   <<"description">> => string(),
%%   <<"endpoint">> => [string()],
%%   <<"name">> => [string()]
%% }
-type datadog_service_details() :: #{binary() => any()}.


%% Example:
%% source_aws_configuration() :: #{
%%   <<"accountId">> => [string()],
%%   <<"accountType">> => list(any()),
%%   <<"assumableRoleArn">> => string(),
%%   <<"externalId">> => [string()]
%% }
-type source_aws_configuration() :: #{binary() => any()}.


%% Example:
%% get_association_output() :: #{
%%   <<"association">> => association()
%% }
-type get_association_output() :: #{binary() => any()}.


%% Example:
%% goal_schedule() :: #{
%%   <<"expression">> => [string()],
%%   <<"state">> => list(any())
%% }
-type goal_schedule() :: #{binary() => any()}.

%% Example:
%% m_c_p_server_splunk_configuration() :: #{}
-type m_c_p_server_splunk_configuration() :: #{}.


%% Example:
%% m_c_p_server_new_relic_configuration() :: #{
%%   <<"accountId">> => [string()],
%%   <<"endpoint">> => [string()]
%% }
-type m_c_p_server_new_relic_configuration() :: #{binary() => any()}.


%% Example:
%% grafana_service_details() :: #{
%%   <<"authorizationConfig">> => list(),
%%   <<"description">> => string(),
%%   <<"endpoint">> => [string()],
%%   <<"name">> => [string()]
%% }
-type grafana_service_details() :: #{binary() => any()}.


%% Example:
%% get_backlog_task_response() :: #{
%%   <<"task">> => task()
%% }
-type get_backlog_task_response() :: #{binary() => any()}.


%% Example:
%% create_private_connection_input() :: #{
%%   <<"mode">> := list(),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_private_connection_input() :: #{binary() => any()}.


%% Example:
%% execution() :: #{
%%   <<"agentSpaceId">> => [string()],
%%   <<"agentSubTask">> => [string()],
%%   <<"agentType">> => [string()],
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"executionId">> => [string()],
%%   <<"executionStatus">> => list(any()),
%%   <<"parentExecutionId">> => [string()],
%%   <<"uid">> => [string()],
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type execution() :: #{binary() => any()}.


%% Example:
%% get_recommendation_request() :: #{
%%   <<"recommendationVersion">> => [float()]
%% }
-type get_recommendation_request() :: #{binary() => any()}.


%% Example:
%% generic_webhook() :: #{
%%   <<"apiKey">> => string(),
%%   <<"webhookId">> => [string()],
%%   <<"webhookSecret">> => string(),
%%   <<"webhookType">> => list(any()),
%%   <<"webhookUrl">> => [string()]
%% }
-type generic_webhook() :: #{binary() => any()}.


%% Example:
%% send_message_response_completed_event() :: #{
%%   <<"responseId">> => [string()],
%%   <<"sequenceNumber">> => [integer()],
%%   <<"usage">> => send_message_usage_info()
%% }
-type send_message_response_completed_event() :: #{binary() => any()}.


%% Example:
%% update_private_connection_certificate_output() :: #{
%%   <<"certificateExpiryTime">> => [non_neg_integer()],
%%   <<"hostAddress">> => string(),
%%   <<"name">> => string(),
%%   <<"resourceConfigurationId">> => string(),
%%   <<"resourceGatewayId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any()),
%%   <<"vpcId">> => string()
%% }
-type update_private_connection_certificate_output() :: #{binary() => any()}.


%% Example:
%% registered_azure_identity_details() :: #{
%%   <<"clientId">> => string(),
%%   <<"tenantId">> => string(),
%%   <<"webIdentityRoleArn">> => string(),
%%   <<"webIdentityTokenAudiences">> => list([string()]())
%% }
-type registered_azure_identity_details() :: #{binary() => any()}.


%% Example:
%% list_webhooks_output() :: #{
%%   <<"webhooks">> => list(webhook())
%% }
-type list_webhooks_output() :: #{binary() => any()}.


%% Example:
%% enable_operator_app_output() :: #{
%%   <<"agentSpaceId">> => string(),
%%   <<"iam">> => iam_auth_configuration(),
%%   <<"idc">> => idc_auth_configuration(),
%%   <<"idp">> => idp_auth_configuration()
%% }
-type enable_operator_app_output() :: #{binary() => any()}.


%% Example:
%% dynatrace_configuration() :: #{
%%   <<"envId">> => [string()],
%%   <<"resources">> => list([string()]())
%% }
-type dynatrace_configuration() :: #{binary() => any()}.


%% Example:
%% update_backlog_task_request() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"taskStatus">> => list(any())
%% }
-type update_backlog_task_request() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% pager_duty_details() :: #{
%%   <<"authorizationConfig">> => list(),
%%   <<"scopes">> => list([string()]())
%% }
-type pager_duty_details() :: #{binary() => any()}.


%% Example:
%% azure_dev_ops_configuration() :: #{
%%   <<"organizationName">> => [string()],
%%   <<"projectId">> => [string()],
%%   <<"projectName">> => [string()]
%% }
-type azure_dev_ops_configuration() :: #{binary() => any()}.


%% Example:
%% goal() :: #{
%%   <<"agentSpaceArn">> => [string()],
%%   <<"content">> => goal_content(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"evaluationSchedule">> => goal_schedule(),
%%   <<"goalId">> => [string()],
%%   <<"goalType">> => list(any()),
%%   <<"lastEvaluatedAt">> => non_neg_integer(),
%%   <<"lastSuccessfulTaskId">> => [string()],
%%   <<"lastTaskId">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"title">> => [string()],
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => [integer()]
%% }
-type goal() :: #{binary() => any()}.


%% Example:
%% list_chats_response() :: #{
%%   <<"executions">> => list(chat_execution()),
%%   <<"nextToken">> => [string()]
%% }
-type list_chats_response() :: #{binary() => any()}.


%% Example:
%% chat_execution() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"executionId">> => string(),
%%   <<"summary">> => [string()],
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type chat_execution() :: #{binary() => any()}.


%% Example:
%% o_auth_additional_step_details() :: #{
%%   <<"authorizationUrl">> => [string()]
%% }
-type o_auth_additional_step_details() :: #{binary() => any()}.

%% Example:
%% list_webhooks_input() :: #{}
-type list_webhooks_input() :: #{}.


%% Example:
%% reference_input() :: #{
%%   <<"associationId">> => string(),
%%   <<"referenceId">> => string(),
%%   <<"referenceUrl">> => [string()],
%%   <<"system">> => [string()],
%%   <<"title">> => [string()]
%% }
-type reference_input() :: #{binary() => any()}.


%% Example:
%% registered_git_lab_service_details() :: #{
%%   <<"groupId">> => [string()],
%%   <<"targetUrl">> => [string()],
%%   <<"tokenType">> => list(any())
%% }
-type registered_git_lab_service_details() :: #{binary() => any()}.


%% Example:
%% private_connection_summary() :: #{
%%   <<"certificateExpiryTime">> => [non_neg_integer()],
%%   <<"hostAddress">> => string(),
%%   <<"name">> => string(),
%%   <<"resourceConfigurationId">> => string(),
%%   <<"resourceGatewayId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any()),
%%   <<"vpcId">> => string()
%% }
-type private_connection_summary() :: #{binary() => any()}.


%% Example:
%% list_private_connections_output() :: #{
%%   <<"privateConnections">> => list(private_connection_summary())
%% }
-type list_private_connections_output() :: #{binary() => any()}.


%% Example:
%% send_message_content_block_start_event() :: #{
%%   <<"id">> => [string()],
%%   <<"index">> => [integer()],
%%   <<"parentId">> => [string()],
%%   <<"sequenceNumber">> => [integer()],
%%   <<"type">> => [string()]
%% }
-type send_message_content_block_start_event() :: #{binary() => any()}.


%% Example:
%% disable_operator_app_input() :: #{
%%   <<"authFlow">> => list(any())
%% }
-type disable_operator_app_input() :: #{binary() => any()}.


%% Example:
%% send_message_response_in_progress_event() :: #{
%%   <<"responseId">> => [string()],
%%   <<"sequenceNumber">> => [integer()]
%% }
-type send_message_response_in_progress_event() :: #{binary() => any()}.


%% Example:
%% send_message_context() :: #{
%%   <<"currentPage">> => [string()],
%%   <<"lastMessage">> => [string()],
%%   <<"userActionResponse">> => [string()]
%% }
-type send_message_context() :: #{binary() => any()}.

%% Example:
%% validate_aws_associations_output() :: #{}
-type validate_aws_associations_output() :: #{}.


%% Example:
%% m_c_p_server_authorization_discovery_config() :: #{
%%   <<"returnToEndpoint">> => [string()]
%% }
-type m_c_p_server_authorization_discovery_config() :: #{binary() => any()}.


%% Example:
%% journal_record() :: #{
%%   <<"agentSpaceId">> => [string()],
%%   <<"content">> => [any()],
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"executionId">> => [string()],
%%   <<"recordId">> => [string()],
%%   <<"recordType">> => [string()],
%%   <<"userReference">> => user_reference()
%% }
-type journal_record() :: #{binary() => any()}.


%% Example:
%% slack_configuration() :: #{
%%   <<"transmissionTarget">> => slack_transmission_target(),
%%   <<"workspaceId">> => [string()],
%%   <<"workspaceName">> => [string()]
%% }
-type slack_configuration() :: #{binary() => any()}.


%% Example:
%% register_service_output() :: #{
%%   <<"additionalStep">> => list(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"serviceId">> => string(),
%%   <<"tags">> => map()
%% }
-type register_service_output() :: #{binary() => any()}.


%% Example:
%% slack_transmission_target() :: #{
%%   <<"opsOncallTarget">> => slack_channel(),
%%   <<"opsSRETarget">> => slack_channel()
%% }
-type slack_transmission_target() :: #{binary() => any()}.


%% Example:
%% dynatrace_service_details() :: #{
%%   <<"accountUrn">> => [string()],
%%   <<"authorizationConfig">> => list()
%% }
-type dynatrace_service_details() :: #{binary() => any()}.


%% Example:
%% update_recommendation_response() :: #{
%%   <<"recommendation">> => recommendation()
%% }
-type update_recommendation_response() :: #{binary() => any()}.


%% Example:
%% identity_center_service_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"underlyingErrorCode">> => [string()]
%% }
-type identity_center_service_exception() :: #{binary() => any()}.


%% Example:
%% list_pending_messages_request() :: #{
%%   <<"executionId">> := string()
%% }
-type list_pending_messages_request() :: #{binary() => any()}.


%% Example:
%% send_message_text_delta() :: #{
%%   <<"text">> => [string()]
%% }
-type send_message_text_delta() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% enable_operator_app_input() :: #{
%%   <<"authFlow">> := list(any()),
%%   <<"idcInstanceArn">> => [string()],
%%   <<"idpClientId">> => string(),
%%   <<"idpClientSecret">> => string(),
%%   <<"issuerUrl">> => [string()],
%%   <<"operatorAppRoleArn">> := string(),
%%   <<"provider">> => [string()]
%% }
-type enable_operator_app_input() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% send_message_content_block_delta_event() :: #{
%%   <<"delta">> => list(),
%%   <<"index">> => [integer()],
%%   <<"sequenceNumber">> => [integer()]
%% }
-type send_message_content_block_delta_event() :: #{binary() => any()}.


%% Example:
%% registered_pager_duty_details() :: #{
%%   <<"scopes">> => list([string()]())
%% }
-type registered_pager_duty_details() :: #{binary() => any()}.

%% Example:
%% get_operator_app_input() :: #{}
-type get_operator_app_input() :: #{}.


%% Example:
%% send_message_summary_event() :: #{
%%   <<"content">> => [string()],
%%   <<"sequenceNumber">> => [integer()]
%% }
-type send_message_summary_event() :: #{binary() => any()}.


%% Example:
%% reference_output() :: #{
%%   <<"associationId">> => [string()],
%%   <<"referenceId">> => [string()],
%%   <<"referenceUrl">> => [string()],
%%   <<"system">> => [string()],
%%   <<"title">> => [string()]
%% }
-type reference_output() :: #{binary() => any()}.


%% Example:
%% git_lab_details() :: #{
%%   <<"groupId">> => [string()],
%%   <<"targetUrl">> => [string()],
%%   <<"tokenType">> => list(any()),
%%   <<"tokenValue">> => string()
%% }
-type git_lab_details() :: #{binary() => any()}.


%% Example:
%% list_executions_response() :: #{
%%   <<"executions">> => list(execution()),
%%   <<"nextToken">> => [string()]
%% }
-type list_executions_response() :: #{binary() => any()}.


%% Example:
%% agent_space() :: #{
%%   <<"agentSpaceId">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"locale">> => string(),
%%   <<"name">> => string(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type agent_space() :: #{binary() => any()}.


%% Example:
%% describe_private_connection_output() :: #{
%%   <<"certificateExpiryTime">> => [non_neg_integer()],
%%   <<"hostAddress">> => string(),
%%   <<"name">> => string(),
%%   <<"resourceConfigurationId">> => string(),
%%   <<"resourceGatewayId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"type">> => list(any()),
%%   <<"vpcId">> => string()
%% }
-type describe_private_connection_output() :: #{binary() => any()}.


%% Example:
%% content_size_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type content_size_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% get_service_output() :: #{
%%   <<"service">> => registered_service(),
%%   <<"tags">> => map()
%% }
-type get_service_output() :: #{binary() => any()}.


%% Example:
%% goal_content() :: #{
%%   <<"description">> => [string()],
%%   <<"objectives">> => [string()]
%% }
-type goal_content() :: #{binary() => any()}.


%% Example:
%% update_association_output() :: #{
%%   <<"association">> => association(),
%%   <<"webhook">> => generic_webhook()
%% }
-type update_association_output() :: #{binary() => any()}.


%% Example:
%% goal_schedule_input() :: #{
%%   <<"state">> => list(any())
%% }
-type goal_schedule_input() :: #{binary() => any()}.

%% Example:
%% disassociate_service_output() :: #{}
-type disassociate_service_output() :: #{}.


%% Example:
%% pager_duty_o_auth_client_credentials_config() :: #{
%%   <<"clientId">> => string(),
%%   <<"clientName">> => [string()],
%%   <<"clientSecret">> => string(),
%%   <<"exchangeParameters">> => map()
%% }
-type pager_duty_o_auth_client_credentials_config() :: #{binary() => any()}.


%% Example:
%% registered_new_relic_details() :: #{
%%   <<"accountId">> => [string()],
%%   <<"description">> => string(),
%%   <<"region">> => list(any())
%% }
-type registered_new_relic_details() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% recommendation() :: #{
%%   <<"additionalContext">> => [string()],
%%   <<"agentSpaceArn">> => [string()],
%%   <<"content">> => recommendation_content(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"goalId">> => [string()],
%%   <<"goalVersion">> => [float()],
%%   <<"priority">> => list(any()),
%%   <<"recommendationId">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"taskId">> => [string()],
%%   <<"title">> => [string()],
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => [float()]
%% }
-type recommendation() :: #{binary() => any()}.

%% Example:
%% get_agent_space_input() :: #{}
-type get_agent_space_input() :: #{}.


%% Example:
%% create_backlog_task_request() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"description">> => string(),
%%   <<"priority">> := list(any()),
%%   <<"reference">> => reference_input(),
%%   <<"taskType">> := list(any()),
%%   <<"title">> := string()
%% }
-type create_backlog_task_request() :: #{binary() => any()}.


%% Example:
%% service_now_service_details() :: #{
%%   <<"authorizationConfig">> => list(),
%%   <<"instanceUrl">> => string()
%% }
-type service_now_service_details() :: #{binary() => any()}.


%% Example:
%% update_agent_space_output() :: #{
%%   <<"agentSpace">> => agent_space()
%% }
-type update_agent_space_output() :: #{binary() => any()}.


%% Example:
%% list_journal_records_request() :: #{
%%   <<"executionId">> := string(),
%%   <<"limit">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"order">> => list(any()),
%%   <<"recordType">> => [string()]
%% }
-type list_journal_records_request() :: #{binary() => any()}.

%% Example:
%% delete_agent_space_input() :: #{}
-type delete_agent_space_input() :: #{}.


%% Example:
%% association() :: #{
%%   <<"agentSpaceId">> => string(),
%%   <<"associationId">> => string(),
%%   <<"configuration">> => list(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"serviceId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type association() :: #{binary() => any()}.


%% Example:
%% create_chat_request() :: #{
%%   <<"userId">> => string(),
%%   <<"userType">> => list(any())
%% }
-type create_chat_request() :: #{binary() => any()}.

%% Example:
%% get_account_usage_input() :: #{}
-type get_account_usage_input() :: #{}.


%% Example:
%% new_relic_service_details() :: #{
%%   <<"authorizationConfig">> => list()
%% }
-type new_relic_service_details() :: #{binary() => any()}.


%% Example:
%% usage_metric() :: #{
%%   <<"limit">> => [integer()],
%%   <<"usage">> => [float()]
%% }
-type usage_metric() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% registered_slack_service_details() :: #{
%%   <<"teamId">> => [string()],
%%   <<"teamName">> => [string()]
%% }
-type registered_slack_service_details() :: #{binary() => any()}.


%% Example:
%% pager_duty_configuration() :: #{
%%   <<"customerEmail">> => string(),
%%   <<"services">> => list([string()]())
%% }
-type pager_duty_configuration() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"path">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% dynatrace_o_auth_client_credentials_config() :: #{
%%   <<"clientId">> => string(),
%%   <<"clientName">> => [string()],
%%   <<"clientSecret">> => string(),
%%   <<"exchangeParameters">> => map()
%% }
-type dynatrace_o_auth_client_credentials_config() :: #{binary() => any()}.


%% Example:
%% registered_service_now_details() :: #{
%%   <<"instanceUrl">> => string()
%% }
-type registered_service_now_details() :: #{binary() => any()}.


%% Example:
%% send_message_response_created_event() :: #{
%%   <<"responseId">> => [string()],
%%   <<"sequenceNumber">> => [integer()]
%% }
-type send_message_response_created_event() :: #{binary() => any()}.


%% Example:
%% list_chats_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()],
%%   <<"userId">> => string()
%% }
-type list_chats_request() :: #{binary() => any()}.


%% Example:
%% list_goals_response() :: #{
%%   <<"goals">> => list(goal()),
%%   <<"nextToken">> => [string()]
%% }
-type list_goals_response() :: #{binary() => any()}.


%% Example:
%% registered_service() :: #{
%%   <<"accessibleResources">> => list([any()]()),
%%   <<"additionalServiceDetails">> => list(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"name">> => string(),
%%   <<"privateConnectionName">> => string(),
%%   <<"serviceId">> => string(),
%%   <<"serviceType">> => list(any())
%% }
-type registered_service() :: #{binary() => any()}.


%% Example:
%% list_associations_output() :: #{
%%   <<"associations">> => list(association()),
%%   <<"nextToken">> => string()
%% }
-type list_associations_output() :: #{binary() => any()}.


%% Example:
%% user_reference() :: #{
%%   <<"userId">> => [string()],
%%   <<"userType">> => list(any())
%% }
-type user_reference() :: #{binary() => any()}.


%% Example:
%% m_c_p_server_o_auth3_l_o_config() :: #{
%%   <<"authorizationUrl">> => [string()],
%%   <<"clientId">> => string(),
%%   <<"clientName">> => [string()],
%%   <<"clientSecret">> => string(),
%%   <<"exchangeParameters">> => map(),
%%   <<"exchangeUrl">> => [string()],
%%   <<"returnToEndpoint">> => [string()],
%%   <<"scopes">> => list([string()]()),
%%   <<"supportCodeChallenge">> => [boolean()]
%% }
-type m_c_p_server_o_auth3_l_o_config() :: #{binary() => any()}.

%% Example:
%% delete_agent_space_output() :: #{}
-type delete_agent_space_output() :: #{}.


%% Example:
%% send_message_content_block_stop_event() :: #{
%%   <<"index">> => [integer()],
%%   <<"last">> => [boolean()],
%%   <<"sequenceNumber">> => [integer()],
%%   <<"text">> => [string()],
%%   <<"type">> => [string()]
%% }
-type send_message_content_block_stop_event() :: #{binary() => any()}.

%% Example:
%% delete_private_connection_input() :: #{}
-type delete_private_connection_input() :: #{}.


%% Example:
%% service_now_configuration() :: #{
%%   <<"authScopes">> => list([string()]()),
%%   <<"instanceId">> => [string()]
%% }
-type service_now_configuration() :: #{binary() => any()}.

%% Example:
%% m_c_p_server_datadog_configuration() :: #{}
-type m_c_p_server_datadog_configuration() :: #{}.


%% Example:
%% create_agent_space_output() :: #{
%%   <<"agentSpace">> => agent_space(),
%%   <<"tags">> => map()
%% }
-type create_agent_space_output() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% delete_private_connection_output() :: #{
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type delete_private_connection_output() :: #{binary() => any()}.


%% Example:
%% m_c_p_server_grafana_configuration() :: #{
%%   <<"endpoint">> => [string()],
%%   <<"organizationId">> => [string()],
%%   <<"tools">> => list([string()]())
%% }
-type m_c_p_server_grafana_configuration() :: #{binary() => any()}.


%% Example:
%% new_relic_api_key_config() :: #{
%%   <<"accountId">> => [string()],
%%   <<"alertPolicyIds">> => list([string()]()),
%%   <<"apiKey">> => string(),
%%   <<"applicationIds">> => list([string()]()),
%%   <<"entityGuids">> => list([string()]()),
%%   <<"region">> => list(any())
%% }
-type new_relic_api_key_config() :: #{binary() => any()}.


%% Example:
%% create_agent_space_input() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"description">> => string(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"locale">> => string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_agent_space_input() :: #{binary() => any()}.


%% Example:
%% m_c_p_server_details() :: #{
%%   <<"authorizationConfig">> => list(),
%%   <<"description">> => string(),
%%   <<"endpoint">> => [string()],
%%   <<"name">> => [string()]
%% }
-type m_c_p_server_details() :: #{binary() => any()}.

%% Example:
%% deregister_service_input() :: #{}
-type deregister_service_input() :: #{}.


%% Example:
%% list_pending_messages_response() :: #{
%%   <<"agentSpaceId">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"executionId">> => [string()],
%%   <<"messages">> => list(pending_message())
%% }
-type list_pending_messages_response() :: #{binary() => any()}.


%% Example:
%% list_backlog_tasks_response() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"tasks">> => list(task())
%% }
-type list_backlog_tasks_response() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.


%% Example:
%% create_backlog_task_response() :: #{
%%   <<"task">> => task()
%% }
-type create_backlog_task_response() :: #{binary() => any()}.


%% Example:
%% azure_configuration() :: #{
%%   <<"subscriptionId">> => [string()]
%% }
-type azure_configuration() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% send_message_json_delta() :: #{
%%   <<"partialJson">> => [string()]
%% }
-type send_message_json_delta() :: #{binary() => any()}.


%% Example:
%% self_managed_input() :: #{
%%   <<"certificate">> => string(),
%%   <<"resourceConfigurationId">> => string()
%% }
-type self_managed_input() :: #{binary() => any()}.


%% Example:
%% recommendation_content() :: #{
%%   <<"spec">> => [string()],
%%   <<"summary">> => [string()]
%% }
-type recommendation_content() :: #{binary() => any()}.


%% Example:
%% list_journal_records_response() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"records">> => list(journal_record())
%% }
-type list_journal_records_response() :: #{binary() => any()}.


%% Example:
%% m_c_p_server_bearer_token_config() :: #{
%%   <<"authorizationHeader">> => [string()],
%%   <<"tokenName">> => [string()],
%%   <<"tokenValue">> => string()
%% }
-type m_c_p_server_bearer_token_config() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% update_operator_app_idp_config_input() :: #{
%%   <<"idpClientSecret">> => string()
%% }
-type update_operator_app_idp_config_input() :: #{binary() => any()}.


%% Example:
%% send_message_response_failed_event() :: #{
%%   <<"errorCode">> => [string()],
%%   <<"errorMessage">> => [string()],
%%   <<"responseId">> => [string()],
%%   <<"sequenceNumber">> => [integer()]
%% }
-type send_message_response_failed_event() :: #{binary() => any()}.


%% Example:
%% update_goal_response() :: #{
%%   <<"goal">> => goal()
%% }
-type update_goal_response() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% deregister_service_output() :: #{}
-type deregister_service_output() :: #{}.


%% Example:
%% registered_azure_dev_ops_service_details() :: #{
%%   <<"organizationName">> => [string()]
%% }
-type registered_azure_dev_ops_service_details() :: #{binary() => any()}.


%% Example:
%% pending_message() :: #{
%%   <<"message">> => list(),
%%   <<"messageId">> => [string()]
%% }
-type pending_message() :: #{binary() => any()}.


%% Example:
%% service_managed_input() :: #{
%%   <<"certificate">> => string(),
%%   <<"hostAddress">> => string(),
%%   <<"ipAddressType">> => list(any()),
%%   <<"ipv4AddressesPerEni">> => integer(),
%%   <<"portRanges">> => list(string()),
%%   <<"securityGroupIds">> => list(string()),
%%   <<"subnetIds">> => list(string()),
%%   <<"vpcId">> => string()
%% }
-type service_managed_input() :: #{binary() => any()}.


%% Example:
%% send_message_request() :: #{
%%   <<"content">> := string(),
%%   <<"context">> => send_message_context(),
%%   <<"executionId">> := string(),
%%   <<"userId">> => string()
%% }
-type send_message_request() :: #{binary() => any()}.


%% Example:
%% send_message_usage_info() :: #{
%%   <<"inputTokens">> => [integer()],
%%   <<"outputTokens">> => [integer()],
%%   <<"totalTokens">> => [integer()]
%% }
-type send_message_usage_info() :: #{binary() => any()}.


%% Example:
%% slack_channel() :: #{
%%   <<"channelId">> => [string()],
%%   <<"channelName">> => [string()]
%% }
-type slack_channel() :: #{binary() => any()}.


%% Example:
%% update_goal_request() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"evaluationSchedule">> => goal_schedule_input()
%% }
-type update_goal_request() :: #{binary() => any()}.


%% Example:
%% update_operator_app_idp_config_output() :: #{
%%   <<"agentSpaceId">> => string(),
%%   <<"idp">> => idp_auth_configuration()
%% }
-type update_operator_app_idp_config_output() :: #{binary() => any()}.

%% Example:
%% list_private_connections_input() :: #{}
-type list_private_connections_input() :: #{}.


%% Example:
%% list_goals_request() :: #{
%%   <<"goalType">> => list(any()),
%%   <<"limit">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"status">> => list(any())
%% }
-type list_goals_request() :: #{binary() => any()}.


%% Example:
%% aws_configuration() :: #{
%%   <<"accountId">> => [string()],
%%   <<"accountType">> => list(any()),
%%   <<"assumableRoleArn">> => string()
%% }
-type aws_configuration() :: #{binary() => any()}.


%% Example:
%% get_agent_space_output() :: #{
%%   <<"agentSpace">> => agent_space(),
%%   <<"tags">> => map()
%% }
-type get_agent_space_output() :: #{binary() => any()}.


%% Example:
%% list_agent_spaces_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_agent_spaces_input() :: #{binary() => any()}.

%% Example:
%% describe_private_connection_input() :: #{}
-type describe_private_connection_input() :: #{}.

%% Example:
%% get_backlog_task_request() :: #{}
-type get_backlog_task_request() :: #{}.

%% Example:
%% event_channel_configuration() :: #{}
-type event_channel_configuration() :: #{}.


%% Example:
%% associate_service_input() :: #{
%%   <<"configuration">> := list(),
%%   <<"serviceId">> := string()
%% }
-type associate_service_input() :: #{binary() => any()}.


%% Example:
%% send_message_response() :: #{
%%   <<"events">> => list()
%% }
-type send_message_response() :: #{binary() => any()}.


%% Example:
%% list_recommendations_response() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"recommendations">> => list(recommendation())
%% }
-type list_recommendations_response() :: #{binary() => any()}.


%% Example:
%% task_filter() :: #{
%%   <<"createdAfter">> => non_neg_integer(),
%%   <<"createdBefore">> => non_neg_integer(),
%%   <<"primaryTaskId">> => string(),
%%   <<"priority">> => list(list(any())()),
%%   <<"status">> => list(list(any())()),
%%   <<"taskType">> => list(list(any())())
%% }
-type task_filter() :: #{binary() => any()}.


%% Example:
%% update_private_connection_certificate_input() :: #{
%%   <<"certificate">> := string()
%% }
-type update_private_connection_certificate_input() :: #{binary() => any()}.


%% Example:
%% get_recommendation_response() :: #{
%%   <<"recommendation">> => recommendation()
%% }
-type get_recommendation_response() :: #{binary() => any()}.

%% Example:
%% get_association_input() :: #{}
-type get_association_input() :: #{}.


%% Example:
%% m_c_p_server_o_auth_client_credentials_config() :: #{
%%   <<"clientId">> => string(),
%%   <<"clientName">> => [string()],
%%   <<"clientSecret">> => string(),
%%   <<"exchangeParameters">> => map(),
%%   <<"exchangeUrl">> => [string()],
%%   <<"scopes">> => list([string()]())
%% }
-type m_c_p_server_o_auth_client_credentials_config() :: #{binary() => any()}.


%% Example:
%% webhook() :: #{
%%   <<"webhookId">> => [string()],
%%   <<"webhookType">> => list(any()),
%%   <<"webhookUrl">> => [string()]
%% }
-type webhook() :: #{binary() => any()}.


%% Example:
%% list_services_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"services">> => list(registered_service())
%% }
-type list_services_output() :: #{binary() => any()}.

%% Example:
%% send_message_heartbeat_event() :: #{}
-type send_message_heartbeat_event() :: #{}.


%% Example:
%% associate_service_output() :: #{
%%   <<"association">> => association(),
%%   <<"webhook">> => generic_webhook()
%% }
-type associate_service_output() :: #{binary() => any()}.


%% Example:
%% list_executions_request() :: #{
%%   <<"limit">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"taskId">> := string()
%% }
-type list_executions_request() :: #{binary() => any()}.


%% Example:
%% list_recommendations_request() :: #{
%%   <<"goalId">> => string(),
%%   <<"limit">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"priority">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"taskId">> => string()
%% }
-type list_recommendations_request() :: #{binary() => any()}.


%% Example:
%% list_services_input() :: #{
%%   <<"filterServiceType">> => list(any()),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_services_input() :: #{binary() => any()}.


%% Example:
%% registered_github_service_details() :: #{
%%   <<"owner">> => [string()],
%%   <<"ownerType">> => list(any()),
%%   <<"targetUrl">> => [string()]
%% }
-type registered_github_service_details() :: #{binary() => any()}.

-type associate_service_errors() ::
    throttling_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_agent_space_errors() ::
    throttling_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_backlog_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_chat_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_private_connection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type delete_agent_space_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_private_connection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type deregister_service_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_private_connection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type disable_operator_app_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    identity_center_service_exception().

-type disassociate_service_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type enable_operator_app_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    identity_center_service_exception().

-type get_account_usage_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_agent_space_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_backlog_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_operator_app_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception().

-type get_recommendation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_service_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_agent_spaces_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception().

-type list_associations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_backlog_tasks_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_chats_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_executions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type list_goals_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_journal_records_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type list_pending_messages_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_private_connections_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_recommendations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_services_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_webhooks_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type register_service_errors() ::
    validation_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type send_message_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_agent_space_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_backlog_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_goal_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_operator_app_idp_config_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_private_connection_certificate_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_recommendation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type validate_aws_associations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds a specific service association to an AgentSpace.
%%
%% It overwrites the existing association of the same service. Returns 201
%% Created on success.
-spec associate_service(aws_client:aws_client(), binary() | list(), associate_service_input()) ->
    {ok, associate_service_output(), tuple()} |
    {error, any()} |
    {error, associate_service_errors(), tuple()}.
associate_service(Client, AgentSpaceId, Input) ->
    associate_service(Client, AgentSpaceId, Input, []).

-spec associate_service(aws_client:aws_client(), binary() | list(), associate_service_input(), proplists:proplist()) ->
    {ok, associate_service_output(), tuple()} |
    {error, any()} |
    {error, associate_service_errors(), tuple()}.
associate_service(Client, AgentSpaceId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/agentspaces/", aws_util:encode_uri(AgentSpaceId), "/associations"],
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

%% @doc Creates a new AgentSpace with the specified name and description.
%%
%% Duplicate space names are allowed.
-spec create_agent_space(aws_client:aws_client(), create_agent_space_input()) ->
    {ok, create_agent_space_output(), tuple()} |
    {error, any()} |
    {error, create_agent_space_errors(), tuple()}.
create_agent_space(Client, Input) ->
    create_agent_space(Client, Input, []).

-spec create_agent_space(aws_client:aws_client(), create_agent_space_input(), proplists:proplist()) ->
    {ok, create_agent_space_output(), tuple()} |
    {error, any()} |
    {error, create_agent_space_errors(), tuple()}.
create_agent_space(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/agentspaces"],
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

%% @doc Creates a new backlog task in the specified agent space
-spec create_backlog_task(aws_client:aws_client(), binary() | list(), create_backlog_task_request()) ->
    {ok, create_backlog_task_response(), tuple()} |
    {error, any()} |
    {error, create_backlog_task_errors(), tuple()}.
create_backlog_task(Client, AgentSpaceId, Input) ->
    create_backlog_task(Client, AgentSpaceId, Input, []).

-spec create_backlog_task(aws_client:aws_client(), binary() | list(), create_backlog_task_request(), proplists:proplist()) ->
    {ok, create_backlog_task_response(), tuple()} |
    {error, any()} |
    {error, create_backlog_task_errors(), tuple()}.
create_backlog_task(Client, AgentSpaceId, Input0, Options0) ->
    Method = post,
    Path = ["/backlog/agent-space/", aws_util:encode_uri(AgentSpaceId), "/tasks"],
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

%% @doc Creates a new chat execution in the specified agent space
-spec create_chat(aws_client:aws_client(), binary() | list(), create_chat_request()) ->
    {ok, create_chat_response(), tuple()} |
    {error, any()} |
    {error, create_chat_errors(), tuple()}.
create_chat(Client, AgentSpaceId, Input) ->
    create_chat(Client, AgentSpaceId, Input, []).

-spec create_chat(aws_client:aws_client(), binary() | list(), create_chat_request(), proplists:proplist()) ->
    {ok, create_chat_response(), tuple()} |
    {error, any()} |
    {error, create_chat_errors(), tuple()}.
create_chat(Client, AgentSpaceId, Input0, Options0) ->
    Method = post,
    Path = ["/agents/agent-space/", aws_util:encode_uri(AgentSpaceId), "/chat/create"],
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
                     {<<"userId">>, <<"userId">>},
                     {<<"userType">>, <<"userType">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a Private Connection to a target resource.
-spec create_private_connection(aws_client:aws_client(), create_private_connection_input()) ->
    {ok, create_private_connection_output(), tuple()} |
    {error, any()} |
    {error, create_private_connection_errors(), tuple()}.
create_private_connection(Client, Input) ->
    create_private_connection(Client, Input, []).

-spec create_private_connection(aws_client:aws_client(), create_private_connection_input(), proplists:proplist()) ->
    {ok, create_private_connection_output(), tuple()} |
    {error, any()} |
    {error, create_private_connection_errors(), tuple()}.
create_private_connection(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/private-connections"],
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

%% @doc Deletes an AgentSpace.
%%
%% This operation is idempotent and returns a 204 No Content response on
%% success.
-spec delete_agent_space(aws_client:aws_client(), binary() | list(), delete_agent_space_input()) ->
    {ok, delete_agent_space_output(), tuple()} |
    {error, any()} |
    {error, delete_agent_space_errors(), tuple()}.
delete_agent_space(Client, AgentSpaceId, Input) ->
    delete_agent_space(Client, AgentSpaceId, Input, []).

-spec delete_agent_space(aws_client:aws_client(), binary() | list(), delete_agent_space_input(), proplists:proplist()) ->
    {ok, delete_agent_space_output(), tuple()} |
    {error, any()} |
    {error, delete_agent_space_errors(), tuple()}.
delete_agent_space(Client, AgentSpaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/agentspaces/", aws_util:encode_uri(AgentSpaceId), ""],
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

%% @doc Deletes a Private Connection.
%%
%% The deletion is asynchronous and returns DELETE_IN_PROGRESS status.
-spec delete_private_connection(aws_client:aws_client(), binary() | list(), delete_private_connection_input()) ->
    {ok, delete_private_connection_output(), tuple()} |
    {error, any()} |
    {error, delete_private_connection_errors(), tuple()}.
delete_private_connection(Client, Name, Input) ->
    delete_private_connection(Client, Name, Input, []).

-spec delete_private_connection(aws_client:aws_client(), binary() | list(), delete_private_connection_input(), proplists:proplist()) ->
    {ok, delete_private_connection_output(), tuple()} |
    {error, any()} |
    {error, delete_private_connection_errors(), tuple()}.
delete_private_connection(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/private-connections/", aws_util:encode_uri(Name), ""],
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

%% @doc Deregister a service
-spec deregister_service(aws_client:aws_client(), binary() | list(), deregister_service_input()) ->
    {ok, deregister_service_output(), tuple()} |
    {error, any()} |
    {error, deregister_service_errors(), tuple()}.
deregister_service(Client, ServiceId, Input) ->
    deregister_service(Client, ServiceId, Input, []).

-spec deregister_service(aws_client:aws_client(), binary() | list(), deregister_service_input(), proplists:proplist()) ->
    {ok, deregister_service_output(), tuple()} |
    {error, any()} |
    {error, deregister_service_errors(), tuple()}.
deregister_service(Client, ServiceId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/services/", aws_util:encode_uri(ServiceId), ""],
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

%% @doc Retrieves details of an existing Private Connection.
-spec describe_private_connection(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_private_connection_output(), tuple()} |
    {error, any()} |
    {error, describe_private_connection_errors(), tuple()}.
describe_private_connection(Client, Name)
  when is_map(Client) ->
    describe_private_connection(Client, Name, #{}, #{}).

-spec describe_private_connection(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_private_connection_output(), tuple()} |
    {error, any()} |
    {error, describe_private_connection_errors(), tuple()}.
describe_private_connection(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_private_connection(Client, Name, QueryMap, HeadersMap, []).

-spec describe_private_connection(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_private_connection_output(), tuple()} |
    {error, any()} |
    {error, describe_private_connection_errors(), tuple()}.
describe_private_connection(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/private-connections/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Disable the Operator App for the specified AgentSpace
-spec disable_operator_app(aws_client:aws_client(), binary() | list(), disable_operator_app_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disable_operator_app_errors(), tuple()}.
disable_operator_app(Client, AgentSpaceId, Input) ->
    disable_operator_app(Client, AgentSpaceId, Input, []).

-spec disable_operator_app(aws_client:aws_client(), binary() | list(), disable_operator_app_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disable_operator_app_errors(), tuple()}.
disable_operator_app(Client, AgentSpaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/agentspaces/", aws_util:encode_uri(AgentSpaceId), "/operator"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amzn-app-auth-flow">>, <<"authFlow">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a specific service association from an AgentSpace.
%%
%% This operation is idempotent and returns a 204 No Content response on
%% success.
-spec disassociate_service(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_service_input()) ->
    {ok, disassociate_service_output(), tuple()} |
    {error, any()} |
    {error, disassociate_service_errors(), tuple()}.
disassociate_service(Client, AgentSpaceId, AssociationId, Input) ->
    disassociate_service(Client, AgentSpaceId, AssociationId, Input, []).

-spec disassociate_service(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_service_input(), proplists:proplist()) ->
    {ok, disassociate_service_output(), tuple()} |
    {error, any()} |
    {error, disassociate_service_errors(), tuple()}.
disassociate_service(Client, AgentSpaceId, AssociationId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/agentspaces/", aws_util:encode_uri(AgentSpaceId), "/associations/", aws_util:encode_uri(AssociationId), ""],
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

%% @doc Enable the Operator App to access the given AgentSpace
-spec enable_operator_app(aws_client:aws_client(), binary() | list(), enable_operator_app_input()) ->
    {ok, enable_operator_app_output(), tuple()} |
    {error, any()} |
    {error, enable_operator_app_errors(), tuple()}.
enable_operator_app(Client, AgentSpaceId, Input) ->
    enable_operator_app(Client, AgentSpaceId, Input, []).

-spec enable_operator_app(aws_client:aws_client(), binary() | list(), enable_operator_app_input(), proplists:proplist()) ->
    {ok, enable_operator_app_output(), tuple()} |
    {error, any()} |
    {error, enable_operator_app_errors(), tuple()}.
enable_operator_app(Client, AgentSpaceId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/agentspaces/", aws_util:encode_uri(AgentSpaceId), "/operator"],
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

%% @doc Retrieves monthly account usage metrics and limits for the AWS
%% account.
-spec get_account_usage(aws_client:aws_client()) ->
    {ok, get_account_usage_output(), tuple()} |
    {error, any()} |
    {error, get_account_usage_errors(), tuple()}.
get_account_usage(Client)
  when is_map(Client) ->
    get_account_usage(Client, #{}, #{}).

-spec get_account_usage(aws_client:aws_client(), map(), map()) ->
    {ok, get_account_usage_output(), tuple()} |
    {error, any()} |
    {error, get_account_usage_errors(), tuple()}.
get_account_usage(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_account_usage(Client, QueryMap, HeadersMap, []).

-spec get_account_usage(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_account_usage_output(), tuple()} |
    {error, any()} |
    {error, get_account_usage_errors(), tuple()}.
get_account_usage(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/usage/account"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves detailed information about a specific AgentSpace.
-spec get_agent_space(aws_client:aws_client(), binary() | list()) ->
    {ok, get_agent_space_output(), tuple()} |
    {error, any()} |
    {error, get_agent_space_errors(), tuple()}.
get_agent_space(Client, AgentSpaceId)
  when is_map(Client) ->
    get_agent_space(Client, AgentSpaceId, #{}, #{}).

-spec get_agent_space(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_agent_space_output(), tuple()} |
    {error, any()} |
    {error, get_agent_space_errors(), tuple()}.
get_agent_space(Client, AgentSpaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_agent_space(Client, AgentSpaceId, QueryMap, HeadersMap, []).

-spec get_agent_space(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_agent_space_output(), tuple()} |
    {error, any()} |
    {error, get_agent_space_errors(), tuple()}.
get_agent_space(Client, AgentSpaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/agentspaces/", aws_util:encode_uri(AgentSpaceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves given associations configured for a specific AgentSpace.
-spec get_association(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_association_output(), tuple()} |
    {error, any()} |
    {error, get_association_errors(), tuple()}.
get_association(Client, AgentSpaceId, AssociationId)
  when is_map(Client) ->
    get_association(Client, AgentSpaceId, AssociationId, #{}, #{}).

-spec get_association(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_association_output(), tuple()} |
    {error, any()} |
    {error, get_association_errors(), tuple()}.
get_association(Client, AgentSpaceId, AssociationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_association(Client, AgentSpaceId, AssociationId, QueryMap, HeadersMap, []).

-spec get_association(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_association_output(), tuple()} |
    {error, any()} |
    {error, get_association_errors(), tuple()}.
get_association(Client, AgentSpaceId, AssociationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/agentspaces/", aws_util:encode_uri(AgentSpaceId), "/associations/", aws_util:encode_uri(AssociationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a backlog task for the specified agent space and task id
-spec get_backlog_task(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_backlog_task_response(), tuple()} |
    {error, any()} |
    {error, get_backlog_task_errors(), tuple()}.
get_backlog_task(Client, AgentSpaceId, TaskId)
  when is_map(Client) ->
    get_backlog_task(Client, AgentSpaceId, TaskId, #{}, #{}).

-spec get_backlog_task(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_backlog_task_response(), tuple()} |
    {error, any()} |
    {error, get_backlog_task_errors(), tuple()}.
get_backlog_task(Client, AgentSpaceId, TaskId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_backlog_task(Client, AgentSpaceId, TaskId, QueryMap, HeadersMap, []).

-spec get_backlog_task(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_backlog_task_response(), tuple()} |
    {error, any()} |
    {error, get_backlog_task_errors(), tuple()}.
get_backlog_task(Client, AgentSpaceId, TaskId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/backlog/agent-space/", aws_util:encode_uri(AgentSpaceId), "/tasks/", aws_util:encode_uri(TaskId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the full auth configuration of operator including any enabled
%% auth flow
-spec get_operator_app(aws_client:aws_client(), binary() | list()) ->
    {ok, get_operator_app_output(), tuple()} |
    {error, any()} |
    {error, get_operator_app_errors(), tuple()}.
get_operator_app(Client, AgentSpaceId)
  when is_map(Client) ->
    get_operator_app(Client, AgentSpaceId, #{}, #{}).

-spec get_operator_app(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_operator_app_output(), tuple()} |
    {error, any()} |
    {error, get_operator_app_errors(), tuple()}.
get_operator_app(Client, AgentSpaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_operator_app(Client, AgentSpaceId, QueryMap, HeadersMap, []).

-spec get_operator_app(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_operator_app_output(), tuple()} |
    {error, any()} |
    {error, get_operator_app_errors(), tuple()}.
get_operator_app(Client, AgentSpaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/agentspaces/", aws_util:encode_uri(AgentSpaceId), "/operator"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a specific recommendation by its ID
-spec get_recommendation(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_recommendation_response(), tuple()} |
    {error, any()} |
    {error, get_recommendation_errors(), tuple()}.
get_recommendation(Client, AgentSpaceId, RecommendationId)
  when is_map(Client) ->
    get_recommendation(Client, AgentSpaceId, RecommendationId, #{}, #{}).

-spec get_recommendation(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_recommendation_response(), tuple()} |
    {error, any()} |
    {error, get_recommendation_errors(), tuple()}.
get_recommendation(Client, AgentSpaceId, RecommendationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_recommendation(Client, AgentSpaceId, RecommendationId, QueryMap, HeadersMap, []).

-spec get_recommendation(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_recommendation_response(), tuple()} |
    {error, any()} |
    {error, get_recommendation_errors(), tuple()}.
get_recommendation(Client, AgentSpaceId, RecommendationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/backlog/agent-space/", aws_util:encode_uri(AgentSpaceId), "/recommendations/", aws_util:encode_uri(RecommendationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"recommendationVersion">>, maps:get(<<"recommendationVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves given service by it's unique identifier
-spec get_service(aws_client:aws_client(), binary() | list()) ->
    {ok, get_service_output(), tuple()} |
    {error, any()} |
    {error, get_service_errors(), tuple()}.
get_service(Client, ServiceId)
  when is_map(Client) ->
    get_service(Client, ServiceId, #{}, #{}).

-spec get_service(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_service_output(), tuple()} |
    {error, any()} |
    {error, get_service_errors(), tuple()}.
get_service(Client, ServiceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_service(Client, ServiceId, QueryMap, HeadersMap, []).

-spec get_service(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_service_output(), tuple()} |
    {error, any()} |
    {error, get_service_errors(), tuple()}.
get_service(Client, ServiceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/services/", aws_util:encode_uri(ServiceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all AgentSpaces with optional pagination.
-spec list_agent_spaces(aws_client:aws_client(), list_agent_spaces_input()) ->
    {ok, list_agent_spaces_output(), tuple()} |
    {error, any()} |
    {error, list_agent_spaces_errors(), tuple()}.
list_agent_spaces(Client, Input) ->
    list_agent_spaces(Client, Input, []).

-spec list_agent_spaces(aws_client:aws_client(), list_agent_spaces_input(), proplists:proplist()) ->
    {ok, list_agent_spaces_output(), tuple()} |
    {error, any()} |
    {error, list_agent_spaces_errors(), tuple()}.
list_agent_spaces(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/agentspaces/list"],
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

%% @doc List all associations for given AgentSpace
-spec list_associations(aws_client:aws_client(), binary() | list(), list_associations_input()) ->
    {ok, list_associations_output(), tuple()} |
    {error, any()} |
    {error, list_associations_errors(), tuple()}.
list_associations(Client, AgentSpaceId, Input) ->
    list_associations(Client, AgentSpaceId, Input, []).

-spec list_associations(aws_client:aws_client(), binary() | list(), list_associations_input(), proplists:proplist()) ->
    {ok, list_associations_output(), tuple()} |
    {error, any()} |
    {error, list_associations_errors(), tuple()}.
list_associations(Client, AgentSpaceId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/agentspaces/", aws_util:encode_uri(AgentSpaceId), "/associations/list"],
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
                     {<<"filterServiceTypes">>, <<"filterServiceTypes">>},
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists backlog tasks in the specified agent space with optional
%% filtering and sorting
-spec list_backlog_tasks(aws_client:aws_client(), binary() | list(), list_backlog_tasks_request()) ->
    {ok, list_backlog_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_backlog_tasks_errors(), tuple()}.
list_backlog_tasks(Client, AgentSpaceId, Input) ->
    list_backlog_tasks(Client, AgentSpaceId, Input, []).

-spec list_backlog_tasks(aws_client:aws_client(), binary() | list(), list_backlog_tasks_request(), proplists:proplist()) ->
    {ok, list_backlog_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_backlog_tasks_errors(), tuple()}.
list_backlog_tasks(Client, AgentSpaceId, Input0, Options0) ->
    Method = post,
    Path = ["/backlog/agent-space/", aws_util:encode_uri(AgentSpaceId), "/tasks/list"],
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

%% @doc Retrieves a paginated list of the user's recent chat executions
-spec list_chats(aws_client:aws_client(), binary() | list()) ->
    {ok, list_chats_response(), tuple()} |
    {error, any()} |
    {error, list_chats_errors(), tuple()}.
list_chats(Client, AgentSpaceId)
  when is_map(Client) ->
    list_chats(Client, AgentSpaceId, #{}, #{}).

-spec list_chats(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_chats_response(), tuple()} |
    {error, any()} |
    {error, list_chats_errors(), tuple()}.
list_chats(Client, AgentSpaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_chats(Client, AgentSpaceId, QueryMap, HeadersMap, []).

-spec list_chats(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_chats_response(), tuple()} |
    {error, any()} |
    {error, list_chats_errors(), tuple()}.
list_chats(Client, AgentSpaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/agents/agent-space/", aws_util:encode_uri(AgentSpaceId), "/chat/list"],
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
        {<<"userId">>, maps:get(<<"userId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List executions
-spec list_executions(aws_client:aws_client(), binary() | list(), list_executions_request()) ->
    {ok, list_executions_response(), tuple()} |
    {error, any()} |
    {error, list_executions_errors(), tuple()}.
list_executions(Client, AgentSpaceId, Input) ->
    list_executions(Client, AgentSpaceId, Input, []).

-spec list_executions(aws_client:aws_client(), binary() | list(), list_executions_request(), proplists:proplist()) ->
    {ok, list_executions_response(), tuple()} |
    {error, any()} |
    {error, list_executions_errors(), tuple()}.
list_executions(Client, AgentSpaceId, Input0, Options0) ->
    Method = post,
    Path = ["/journal/agent-space/", aws_util:encode_uri(AgentSpaceId), "/executions"],
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

%% @doc Lists goals in the specified agent space with optional filtering
-spec list_goals(aws_client:aws_client(), binary() | list(), list_goals_request()) ->
    {ok, list_goals_response(), tuple()} |
    {error, any()} |
    {error, list_goals_errors(), tuple()}.
list_goals(Client, AgentSpaceId, Input) ->
    list_goals(Client, AgentSpaceId, Input, []).

-spec list_goals(aws_client:aws_client(), binary() | list(), list_goals_request(), proplists:proplist()) ->
    {ok, list_goals_response(), tuple()} |
    {error, any()} |
    {error, list_goals_errors(), tuple()}.
list_goals(Client, AgentSpaceId, Input0, Options0) ->
    Method = post,
    Path = ["/backlog/agent-space/", aws_util:encode_uri(AgentSpaceId), "/goals/list"],
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

%% @doc List journal records for a specific execution
-spec list_journal_records(aws_client:aws_client(), binary() | list(), list_journal_records_request()) ->
    {ok, list_journal_records_response(), tuple()} |
    {error, any()} |
    {error, list_journal_records_errors(), tuple()}.
list_journal_records(Client, AgentSpaceId, Input) ->
    list_journal_records(Client, AgentSpaceId, Input, []).

-spec list_journal_records(aws_client:aws_client(), binary() | list(), list_journal_records_request(), proplists:proplist()) ->
    {ok, list_journal_records_response(), tuple()} |
    {error, any()} |
    {error, list_journal_records_errors(), tuple()}.
list_journal_records(Client, AgentSpaceId, Input0, Options0) ->
    Method = post,
    Path = ["/journal/agent-space/", aws_util:encode_uri(AgentSpaceId), "/journalRecords"],
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

%% @doc List pending messages for a specific execution.
-spec list_pending_messages(aws_client:aws_client(), binary() | list(), list_pending_messages_request()) ->
    {ok, list_pending_messages_response(), tuple()} |
    {error, any()} |
    {error, list_pending_messages_errors(), tuple()}.
list_pending_messages(Client, AgentSpaceId, Input) ->
    list_pending_messages(Client, AgentSpaceId, Input, []).

-spec list_pending_messages(aws_client:aws_client(), binary() | list(), list_pending_messages_request(), proplists:proplist()) ->
    {ok, list_pending_messages_response(), tuple()} |
    {error, any()} |
    {error, list_pending_messages_errors(), tuple()}.
list_pending_messages(Client, AgentSpaceId, Input0, Options0) ->
    Method = post,
    Path = ["/agents/agent-space/", aws_util:encode_uri(AgentSpaceId), "/pendingMessages"],
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

%% @doc Lists all Private Connections in the caller's account.
-spec list_private_connections(aws_client:aws_client()) ->
    {ok, list_private_connections_output(), tuple()} |
    {error, any()} |
    {error, list_private_connections_errors(), tuple()}.
list_private_connections(Client)
  when is_map(Client) ->
    list_private_connections(Client, #{}, #{}).

-spec list_private_connections(aws_client:aws_client(), map(), map()) ->
    {ok, list_private_connections_output(), tuple()} |
    {error, any()} |
    {error, list_private_connections_errors(), tuple()}.
list_private_connections(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_private_connections(Client, QueryMap, HeadersMap, []).

-spec list_private_connections(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_private_connections_output(), tuple()} |
    {error, any()} |
    {error, list_private_connections_errors(), tuple()}.
list_private_connections(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/private-connections"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists recommendations for the specified agent space
-spec list_recommendations(aws_client:aws_client(), binary() | list(), list_recommendations_request()) ->
    {ok, list_recommendations_response(), tuple()} |
    {error, any()} |
    {error, list_recommendations_errors(), tuple()}.
list_recommendations(Client, AgentSpaceId, Input) ->
    list_recommendations(Client, AgentSpaceId, Input, []).

-spec list_recommendations(aws_client:aws_client(), binary() | list(), list_recommendations_request(), proplists:proplist()) ->
    {ok, list_recommendations_response(), tuple()} |
    {error, any()} |
    {error, list_recommendations_errors(), tuple()}.
list_recommendations(Client, AgentSpaceId, Input0, Options0) ->
    Method = post,
    Path = ["/backlog/agent-space/", aws_util:encode_uri(AgentSpaceId), "/recommendations/list"],
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

%% @doc List a list of registered service on the account level.
-spec list_services(aws_client:aws_client(), list_services_input()) ->
    {ok, list_services_output(), tuple()} |
    {error, any()} |
    {error, list_services_errors(), tuple()}.
list_services(Client, Input) ->
    list_services(Client, Input, []).

-spec list_services(aws_client:aws_client(), list_services_input(), proplists:proplist()) ->
    {ok, list_services_output(), tuple()} |
    {error, any()} |
    {error, list_services_errors(), tuple()}.
list_services(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/services/list"],
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
                     {<<"filterServiceType">>, <<"filterServiceType">>},
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists tags for the specified AWS DevOps Agent resource.
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

%% @doc List all webhooks for given Association
-spec list_webhooks(aws_client:aws_client(), binary() | list(), binary() | list(), list_webhooks_input()) ->
    {ok, list_webhooks_output(), tuple()} |
    {error, any()} |
    {error, list_webhooks_errors(), tuple()}.
list_webhooks(Client, AgentSpaceId, AssociationId, Input) ->
    list_webhooks(Client, AgentSpaceId, AssociationId, Input, []).

-spec list_webhooks(aws_client:aws_client(), binary() | list(), binary() | list(), list_webhooks_input(), proplists:proplist()) ->
    {ok, list_webhooks_output(), tuple()} |
    {error, any()} |
    {error, list_webhooks_errors(), tuple()}.
list_webhooks(Client, AgentSpaceId, AssociationId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/agentspaces/", aws_util:encode_uri(AgentSpaceId), "/associations/", aws_util:encode_uri(AssociationId), "/webhooks/list"],
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

%% @doc This operation registers the specified service
-spec register_service(aws_client:aws_client(), binary() | list(), register_service_input()) ->
    {ok, register_service_output(), tuple()} |
    {error, any()} |
    {error, register_service_errors(), tuple()}.
register_service(Client, Service, Input) ->
    register_service(Client, Service, Input, []).

-spec register_service(aws_client:aws_client(), binary() | list(), register_service_input(), proplists:proplist()) ->
    {ok, register_service_output(), tuple()} |
    {error, any()} |
    {error, register_service_errors(), tuple()}.
register_service(Client, Service, Input0, Options0) ->
    Method = post,
    Path = ["/v1/register/", aws_util:encode_uri(Service), ""],
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

%% @doc Sends a chat message and streams the response for the specified agent
%% space execution
-spec send_message(aws_client:aws_client(), binary() | list(), send_message_request()) ->
    {ok, send_message_response(), tuple()} |
    {error, any()} |
    {error, send_message_errors(), tuple()}.
send_message(Client, AgentSpaceId, Input) ->
    send_message(Client, AgentSpaceId, Input, []).

-spec send_message(aws_client:aws_client(), binary() | list(), send_message_request(), proplists:proplist()) ->
    {ok, send_message_response(), tuple()} |
    {error, any()} |
    {error, send_message_errors(), tuple()}.
send_message(Client, AgentSpaceId, Input0, Options0) ->
    Method = post,
    Path = ["/agents/agent-space/", aws_util:encode_uri(AgentSpaceId), "/chat/sendMessage"],
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

%% @doc Adds or overwrites tags for the specified AWS DevOps Agent resource.
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

%% @doc Removes tags from the specified AWS DevOps Agent resource.
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

%% @doc Updates the information of an existing AgentSpace.
-spec update_agent_space(aws_client:aws_client(), binary() | list(), update_agent_space_input()) ->
    {ok, update_agent_space_output(), tuple()} |
    {error, any()} |
    {error, update_agent_space_errors(), tuple()}.
update_agent_space(Client, AgentSpaceId, Input) ->
    update_agent_space(Client, AgentSpaceId, Input, []).

-spec update_agent_space(aws_client:aws_client(), binary() | list(), update_agent_space_input(), proplists:proplist()) ->
    {ok, update_agent_space_output(), tuple()} |
    {error, any()} |
    {error, update_agent_space_errors(), tuple()}.
update_agent_space(Client, AgentSpaceId, Input0, Options0) ->
    Method = patch,
    Path = ["/v1/agentspaces/", aws_util:encode_uri(AgentSpaceId), ""],
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

%% @doc Partially updates the configuration of an existing service
%% association for an AgentSpace.
%%
%% Present fields are fully replaced; absent fields are left unchanged.
%% Returns 200 OK on success.
-spec update_association(aws_client:aws_client(), binary() | list(), binary() | list(), update_association_input()) ->
    {ok, update_association_output(), tuple()} |
    {error, any()} |
    {error, update_association_errors(), tuple()}.
update_association(Client, AgentSpaceId, AssociationId, Input) ->
    update_association(Client, AgentSpaceId, AssociationId, Input, []).

-spec update_association(aws_client:aws_client(), binary() | list(), binary() | list(), update_association_input(), proplists:proplist()) ->
    {ok, update_association_output(), tuple()} |
    {error, any()} |
    {error, update_association_errors(), tuple()}.
update_association(Client, AgentSpaceId, AssociationId, Input0, Options0) ->
    Method = patch,
    Path = ["/v1/agentspaces/", aws_util:encode_uri(AgentSpaceId), "/associations/", aws_util:encode_uri(AssociationId), ""],
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

%% @doc Update an existing backlog task.
-spec update_backlog_task(aws_client:aws_client(), binary() | list(), binary() | list(), update_backlog_task_request()) ->
    {ok, update_backlog_task_response(), tuple()} |
    {error, any()} |
    {error, update_backlog_task_errors(), tuple()}.
update_backlog_task(Client, AgentSpaceId, TaskId, Input) ->
    update_backlog_task(Client, AgentSpaceId, TaskId, Input, []).

-spec update_backlog_task(aws_client:aws_client(), binary() | list(), binary() | list(), update_backlog_task_request(), proplists:proplist()) ->
    {ok, update_backlog_task_response(), tuple()} |
    {error, any()} |
    {error, update_backlog_task_errors(), tuple()}.
update_backlog_task(Client, AgentSpaceId, TaskId, Input0, Options0) ->
    Method = patch,
    Path = ["/backlog/agent-space/", aws_util:encode_uri(AgentSpaceId), "/tasks/", aws_util:encode_uri(TaskId), ""],
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

%% @doc Update an existing goal
-spec update_goal(aws_client:aws_client(), binary() | list(), binary() | list(), update_goal_request()) ->
    {ok, update_goal_response(), tuple()} |
    {error, any()} |
    {error, update_goal_errors(), tuple()}.
update_goal(Client, AgentSpaceId, GoalId, Input) ->
    update_goal(Client, AgentSpaceId, GoalId, Input, []).

-spec update_goal(aws_client:aws_client(), binary() | list(), binary() | list(), update_goal_request(), proplists:proplist()) ->
    {ok, update_goal_response(), tuple()} |
    {error, any()} |
    {error, update_goal_errors(), tuple()}.
update_goal(Client, AgentSpaceId, GoalId, Input0, Options0) ->
    Method = patch,
    Path = ["/backlog/agent-space/", aws_util:encode_uri(AgentSpaceId), "/goals/", aws_util:encode_uri(GoalId), ""],
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

%% @doc Update the external Identity Provider configuration for the Operator
%% App
-spec update_operator_app_idp_config(aws_client:aws_client(), binary() | list(), update_operator_app_idp_config_input()) ->
    {ok, update_operator_app_idp_config_output(), tuple()} |
    {error, any()} |
    {error, update_operator_app_idp_config_errors(), tuple()}.
update_operator_app_idp_config(Client, AgentSpaceId, Input) ->
    update_operator_app_idp_config(Client, AgentSpaceId, Input, []).

-spec update_operator_app_idp_config(aws_client:aws_client(), binary() | list(), update_operator_app_idp_config_input(), proplists:proplist()) ->
    {ok, update_operator_app_idp_config_output(), tuple()} |
    {error, any()} |
    {error, update_operator_app_idp_config_errors(), tuple()}.
update_operator_app_idp_config(Client, AgentSpaceId, Input0, Options0) ->
    Method = patch,
    Path = ["/v1/agentspaces/", aws_util:encode_uri(AgentSpaceId), "/operator/idp"],
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

%% @doc Updates the certificate associated with a Private Connection.
-spec update_private_connection_certificate(aws_client:aws_client(), binary() | list(), update_private_connection_certificate_input()) ->
    {ok, update_private_connection_certificate_output(), tuple()} |
    {error, any()} |
    {error, update_private_connection_certificate_errors(), tuple()}.
update_private_connection_certificate(Client, Name, Input) ->
    update_private_connection_certificate(Client, Name, Input, []).

-spec update_private_connection_certificate(aws_client:aws_client(), binary() | list(), update_private_connection_certificate_input(), proplists:proplist()) ->
    {ok, update_private_connection_certificate_output(), tuple()} |
    {error, any()} |
    {error, update_private_connection_certificate_errors(), tuple()}.
update_private_connection_certificate(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/v1/private-connections/", aws_util:encode_uri(Name), "/certificate"],
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

%% @doc Updates an existing recommendation with new content, status, or
%% metadata
-spec update_recommendation(aws_client:aws_client(), binary() | list(), binary() | list(), update_recommendation_request()) ->
    {ok, update_recommendation_response(), tuple()} |
    {error, any()} |
    {error, update_recommendation_errors(), tuple()}.
update_recommendation(Client, AgentSpaceId, RecommendationId, Input) ->
    update_recommendation(Client, AgentSpaceId, RecommendationId, Input, []).

-spec update_recommendation(aws_client:aws_client(), binary() | list(), binary() | list(), update_recommendation_request(), proplists:proplist()) ->
    {ok, update_recommendation_response(), tuple()} |
    {error, any()} |
    {error, update_recommendation_errors(), tuple()}.
update_recommendation(Client, AgentSpaceId, RecommendationId, Input0, Options0) ->
    Method = patch,
    Path = ["/backlog/agent-space/", aws_util:encode_uri(AgentSpaceId), "/recommendations/", aws_util:encode_uri(RecommendationId), ""],
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

%% @doc Validates an aws association and set status and returns a 204 No
%% Content response on success.
-spec validate_aws_associations(aws_client:aws_client(), binary() | list(), validate_aws_associations_input()) ->
    {ok, validate_aws_associations_output(), tuple()} |
    {error, any()} |
    {error, validate_aws_associations_errors(), tuple()}.
validate_aws_associations(Client, AgentSpaceId, Input) ->
    validate_aws_associations(Client, AgentSpaceId, Input, []).

-spec validate_aws_associations(aws_client:aws_client(), binary() | list(), validate_aws_associations_input(), proplists:proplist()) ->
    {ok, validate_aws_associations_output(), tuple()} |
    {error, any()} |
    {error, validate_aws_associations_errors(), tuple()}.
validate_aws_associations(Client, AgentSpaceId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/agentspaces/", aws_util:encode_uri(AgentSpaceId), "/associations/validate"],
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
    Client1 = Client#{service => <<"aidevops">>},
    Host = build_host(<<"aidevops">>, Client1),
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
