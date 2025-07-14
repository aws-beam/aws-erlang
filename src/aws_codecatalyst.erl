%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the Amazon CodeCatalyst API reference.
%%
%% This reference provides descriptions of operations and data types for
%% Amazon CodeCatalyst. You can use the Amazon CodeCatalyst
%% API to work with the following objects.
%%
%% Spaces, by calling the following:
%%
%% `DeleteSpace', which deletes a space.
%%
%% `GetSpace', which returns information about a space.
%%
%% `GetSubscription', which returns information about the Amazon Web
%% Services account used for billing purposes
%% and the billing plan for the space.
%%
%% `ListSpaces', which retrieves a list of spaces.
%%
%% `UpdateSpace', which changes one or more values for a space.
%%
%% Projects, by calling the following:
%%
%% `CreateProject' which creates a project in a specified space.
%%
%% `GetProject', which returns information about a project.
%%
%% `ListProjects', which retrieves a list of projects in a space.
%%
%% Users, by calling the following:
%%
%% `GetUserDetails', which returns information about a user in Amazon
%% CodeCatalyst.
%%
%% Source repositories, by calling the following:
%%
%% `CreateSourceRepository', which creates an empty Git-based source
%% repository in a specified project.
%%
%% `CreateSourceRepositoryBranch', which creates a branch in a specified
%% repository where you can work on code.
%%
%% `DeleteSourceRepository', which deletes a source repository.
%%
%% `GetSourceRepository', which returns information about a source
%% repository.
%%
%% `GetSourceRepositoryCloneUrls', which returns information about the
%% URLs that can be used with a Git client to clone a source
%% repository.
%%
%% `ListSourceRepositories', which retrieves a list of source
%% repositories in a project.
%%
%% `ListSourceRepositoryBranches', which retrieves a list of branches in
%% a source repository.
%%
%% Dev Environments and the Amazon Web Services Toolkits, by calling the
%% following:
%%
%% `CreateDevEnvironment', which creates a Dev Environment,
%% where you can quickly work on the code stored in the source repositories
%% of your project.
%%
%% `DeleteDevEnvironment', which deletes a Dev Environment.
%%
%% `GetDevEnvironment', which returns information about a Dev
%% Environment.
%%
%% `ListDevEnvironments', which retrieves a list of Dev Environments in a
%% project.
%%
%% `ListDevEnvironmentSessions', which retrieves a list of active Dev
%% Environment sessions in a project.
%%
%% `StartDevEnvironment', which starts a specified Dev Environment and
%% puts it into an active state.
%%
%% `StartDevEnvironmentSession', which starts a session to a specified
%% Dev Environment.
%%
%% `StopDevEnvironment', which stops a specified Dev Environment and puts
%% it into an stopped state.
%%
%% `StopDevEnvironmentSession', which stops a session for a specified Dev
%% Environment.
%%
%% `UpdateDevEnvironment', which changes one or more values for a Dev
%% Environment.
%%
%% Workflows, by calling the following:
%%
%% `GetWorkflow', which returns information about a workflow.
%%
%% `GetWorkflowRun', which returns information about a specified run of a
%% workflow.
%%
%% `ListWorkflowRuns', which retrieves a list of runs of a specified
%% workflow.
%%
%% `ListWorkflows', which retrieves a list of workflows in a specified
%% project.
%%
%% `StartWorkflowRun', which starts a run of a specified workflow.
%%
%% Security, activity, and resource management in Amazon CodeCatalyst, by
%% calling the following:
%%
%% `CreateAccessToken', which creates a personal access token (PAT) for
%% the current user.
%%
%% `DeleteAccessToken', which deletes a specified personal access token
%% (PAT).
%%
%% `ListAccessTokens', which lists all personal access tokens (PATs)
%% associated with a user.
%%
%% `ListEventLogs', which retrieves a list of events that occurred during
%% a specified time period in a space.
%%
%% `VerifySession', which verifies whether the calling user has a valid
%% Amazon CodeCatalyst login and session.
%%
%% If you are using the Amazon CodeCatalyst APIs with an SDK or the CLI, you
%% must configure your computer to work with Amazon CodeCatalyst and single
%% sign-on (SSO).
%% For more information, see Setting up to use the CLI with Amazon
%% CodeCatalyst:
%% https://docs.aws.amazon.com/codecatalyst/latest/userguide/set-up-cli.html
%% and the SSO documentation for your SDK.
-module(aws_codecatalyst).

-export([create_access_token/2,
         create_access_token/3,
         create_dev_environment/4,
         create_dev_environment/5,
         create_project/3,
         create_project/4,
         create_source_repository/5,
         create_source_repository/6,
         create_source_repository_branch/6,
         create_source_repository_branch/7,
         delete_access_token/3,
         delete_access_token/4,
         delete_dev_environment/5,
         delete_dev_environment/6,
         delete_project/4,
         delete_project/5,
         delete_source_repository/5,
         delete_source_repository/6,
         delete_space/3,
         delete_space/4,
         get_dev_environment/4,
         get_dev_environment/6,
         get_dev_environment/7,
         get_project/3,
         get_project/5,
         get_project/6,
         get_source_repository/4,
         get_source_repository/6,
         get_source_repository/7,
         get_source_repository_clone_urls/4,
         get_source_repository_clone_urls/6,
         get_source_repository_clone_urls/7,
         get_space/2,
         get_space/4,
         get_space/5,
         get_subscription/2,
         get_subscription/4,
         get_subscription/5,
         get_user_details/1,
         get_user_details/3,
         get_user_details/4,
         get_workflow/4,
         get_workflow/6,
         get_workflow/7,
         get_workflow_run/4,
         get_workflow_run/6,
         get_workflow_run/7,
         list_access_tokens/2,
         list_access_tokens/3,
         list_dev_environment_sessions/5,
         list_dev_environment_sessions/6,
         list_dev_environments/3,
         list_dev_environments/4,
         list_event_logs/3,
         list_event_logs/4,
         list_projects/3,
         list_projects/4,
         list_source_repositories/4,
         list_source_repositories/5,
         list_source_repository_branches/5,
         list_source_repository_branches/6,
         list_spaces/2,
         list_spaces/3,
         list_workflow_runs/4,
         list_workflow_runs/5,
         list_workflows/4,
         list_workflows/5,
         start_dev_environment/5,
         start_dev_environment/6,
         start_dev_environment_session/5,
         start_dev_environment_session/6,
         start_workflow_run/4,
         start_workflow_run/5,
         stop_dev_environment/5,
         stop_dev_environment/6,
         stop_dev_environment_session/6,
         stop_dev_environment_session/7,
         update_dev_environment/5,
         update_dev_environment/6,
         update_project/4,
         update_project/5,
         update_space/3,
         update_space/4,
         verify_session/1,
         verify_session/3,
         verify_session/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% list_source_repository_branches_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_source_repository_branches_request() :: #{binary() => any()}.

%% Example:
%% delete_space_request() :: #{}
-type delete_space_request() :: #{}.


%% Example:
%% project_information() :: #{
%%   <<"name">> => [string()],
%%   <<"projectId">> => [string()]
%% }
-type project_information() :: #{binary() => any()}.


%% Example:
%% create_access_token_response() :: #{
%%   <<"accessTokenId">> => string(),
%%   <<"expiresTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"secret">> => string()
%% }
-type create_access_token_response() :: #{binary() => any()}.


%% Example:
%% ide_configuration() :: #{
%%   <<"name">> => [string()],
%%   <<"runtime">> => [string()]
%% }
-type ide_configuration() :: #{binary() => any()}.


%% Example:
%% delete_space_response() :: #{
%%   <<"displayName">> => [string()],
%%   <<"name">> => string()
%% }
-type delete_space_response() :: #{binary() => any()}.


%% Example:
%% get_user_details_request() :: #{
%%   <<"id">> => [string()],
%%   <<"userName">> => [string()]
%% }
-type get_user_details_request() :: #{binary() => any()}.


%% Example:
%% project_summary() :: #{
%%   <<"description">> => [string()],
%%   <<"displayName">> => [string()],
%%   <<"name">> => [string()]
%% }
-type project_summary() :: #{binary() => any()}.

%% Example:
%% workflow_run_sort_criteria() :: #{}
-type workflow_run_sort_criteria() :: #{}.


%% Example:
%% ide() :: #{
%%   <<"name">> => [string()],
%%   <<"runtime">> => [string()]
%% }
-type ide() :: #{binary() => any()}.

%% Example:
%% get_project_request() :: #{}
-type get_project_request() :: #{}.


%% Example:
%% access_token_summary() :: #{
%%   <<"expiresTime">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type access_token_summary() :: #{binary() => any()}.


%% Example:
%% create_source_repository_request() :: #{
%%   <<"description">> => string()
%% }
-type create_source_repository_request() :: #{binary() => any()}.


%% Example:
%% get_dev_environment_response() :: #{
%%   <<"alias">> => [string()],
%%   <<"creatorId">> => [string()],
%%   <<"id">> => string(),
%%   <<"ides">> => list(ide()),
%%   <<"inactivityTimeoutMinutes">> => integer(),
%%   <<"instanceType">> => string(),
%%   <<"lastUpdatedTime">> => non_neg_integer(),
%%   <<"persistentStorage">> => persistent_storage(),
%%   <<"projectName">> => string(),
%%   <<"repositories">> => list(dev_environment_repository_summary()),
%%   <<"spaceName">> => string(),
%%   <<"status">> => string(),
%%   <<"statusReason">> => string(),
%%   <<"vpcConnectionName">> => string()
%% }
-type get_dev_environment_response() :: #{binary() => any()}.

%% Example:
%% stop_dev_environment_request() :: #{}
-type stop_dev_environment_request() :: #{}.


%% Example:
%% user_identity() :: #{
%%   <<"awsAccountId">> => [string()],
%%   <<"principalId">> => [string()],
%%   <<"userName">> => [string()],
%%   <<"userType">> => string()
%% }
-type user_identity() :: #{binary() => any()}.


%% Example:
%% dev_environment_access_details() :: #{
%%   <<"streamUrl">> => string(),
%%   <<"tokenValue">> => string()
%% }
-type dev_environment_access_details() :: #{binary() => any()}.


%% Example:
%% start_dev_environment_session_request() :: #{
%%   <<"sessionConfiguration">> := dev_environment_session_configuration()
%% }
-type start_dev_environment_session_request() :: #{binary() => any()}.

%% Example:
%% get_space_request() :: #{}
-type get_space_request() :: #{}.


%% Example:
%% get_subscription_response() :: #{
%%   <<"awsAccountName">> => string(),
%%   <<"pendingSubscriptionStartTime">> => non_neg_integer(),
%%   <<"pendingSubscriptionType">> => [string()],
%%   <<"subscriptionType">> => [string()]
%% }
-type get_subscription_response() :: #{binary() => any()}.


%% Example:
%% update_project_response() :: #{
%%   <<"description">> => [string()],
%%   <<"displayName">> => [string()],
%%   <<"name">> => string(),
%%   <<"spaceName">> => string()
%% }
-type update_project_response() :: #{binary() => any()}.


%% Example:
%% create_source_repository_branch_request() :: #{
%%   <<"headCommitId">> => [string()]
%% }
-type create_source_repository_branch_request() :: #{binary() => any()}.


%% Example:
%% email_address() :: #{
%%   <<"email">> => [string()],
%%   <<"verified">> => [boolean()]
%% }
-type email_address() :: #{binary() => any()}.


%% Example:
%% event_log_entry() :: #{
%%   <<"errorCode">> => [string()],
%%   <<"eventCategory">> => [string()],
%%   <<"eventName">> => [string()],
%%   <<"eventSource">> => [string()],
%%   <<"eventTime">> => non_neg_integer(),
%%   <<"eventType">> => [string()],
%%   <<"id">> => [string()],
%%   <<"operationType">> => string(),
%%   <<"projectInformation">> => project_information(),
%%   <<"requestId">> => [string()],
%%   <<"requestPayload">> => event_payload(),
%%   <<"responsePayload">> => event_payload(),
%%   <<"sourceIpAddress">> => [string()],
%%   <<"userAgent">> => [string()],
%%   <<"userIdentity">> => user_identity()
%% }
-type event_log_entry() :: #{binary() => any()}.


%% Example:
%% delete_source_repository_response() :: #{
%%   <<"name">> => string(),
%%   <<"projectName">> => string(),
%%   <<"spaceName">> => string()
%% }
-type delete_source_repository_response() :: #{binary() => any()}.

%% Example:
%% get_workflow_request() :: #{}
-type get_workflow_request() :: #{}.


%% Example:
%% repository_input() :: #{
%%   <<"branchName">> => string(),
%%   <<"repositoryName">> => string()
%% }
-type repository_input() :: #{binary() => any()}.


%% Example:
%% get_user_details_response() :: #{
%%   <<"displayName">> => [string()],
%%   <<"primaryEmail">> => email_address(),
%%   <<"userId">> => [string()],
%%   <<"userName">> => [string()],
%%   <<"version">> => [string()]
%% }
-type get_user_details_response() :: #{binary() => any()}.


%% Example:
%% update_dev_environment_response() :: #{
%%   <<"alias">> => [string()],
%%   <<"clientToken">> => string(),
%%   <<"id">> => string(),
%%   <<"ides">> => list(ide_configuration()),
%%   <<"inactivityTimeoutMinutes">> => integer(),
%%   <<"instanceType">> => string(),
%%   <<"projectName">> => string(),
%%   <<"spaceName">> => string()
%% }
-type update_dev_environment_response() :: #{binary() => any()}.


%% Example:
%% list_dev_environment_sessions_response() :: #{
%%   <<"items">> => list(dev_environment_session_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_dev_environment_sessions_response() :: #{binary() => any()}.


%% Example:
%% start_dev_environment_response() :: #{
%%   <<"id">> => string(),
%%   <<"projectName">> => string(),
%%   <<"spaceName">> => string(),
%%   <<"status">> => string()
%% }
-type start_dev_environment_response() :: #{binary() => any()}.

%% Example:
%% get_source_repository_request() :: #{}
-type get_source_repository_request() :: #{}.


%% Example:
%% list_access_tokens_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_access_tokens_request() :: #{binary() => any()}.


%% Example:
%% create_project_response() :: #{
%%   <<"description">> => [string()],
%%   <<"displayName">> => [string()],
%%   <<"name">> => string(),
%%   <<"spaceName">> => string()
%% }
-type create_project_response() :: #{binary() => any()}.


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
%% delete_dev_environment_request() :: #{}
-type delete_dev_environment_request() :: #{}.


%% Example:
%% list_source_repositories_item() :: #{
%%   <<"createdTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedTime">> => non_neg_integer(),
%%   <<"name">> => string()
%% }
-type list_source_repositories_item() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% start_workflow_run_request() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"workflowId">> := string()
%% }
-type start_workflow_run_request() :: #{binary() => any()}.


%% Example:
%% dev_environment_summary() :: #{
%%   <<"alias">> => [string()],
%%   <<"creatorId">> => [string()],
%%   <<"id">> => string(),
%%   <<"ides">> => list(ide()),
%%   <<"inactivityTimeoutMinutes">> => integer(),
%%   <<"instanceType">> => string(),
%%   <<"lastUpdatedTime">> => non_neg_integer(),
%%   <<"persistentStorage">> => persistent_storage(),
%%   <<"projectName">> => string(),
%%   <<"repositories">> => list(dev_environment_repository_summary()),
%%   <<"spaceName">> => string(),
%%   <<"status">> => string(),
%%   <<"statusReason">> => string(),
%%   <<"vpcConnectionName">> => string()
%% }
-type dev_environment_summary() :: #{binary() => any()}.


%% Example:
%% list_workflows_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()],
%%   <<"sortBy">> => list(workflow_sort_criteria())
%% }
-type list_workflows_request() :: #{binary() => any()}.


%% Example:
%% list_projects_response() :: #{
%%   <<"items">> => list(project_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_projects_response() :: #{binary() => any()}.


%% Example:
%% stop_dev_environment_response() :: #{
%%   <<"id">> => string(),
%%   <<"projectName">> => string(),
%%   <<"spaceName">> => string(),
%%   <<"status">> => string()
%% }
-type stop_dev_environment_response() :: #{binary() => any()}.


%% Example:
%% get_project_response() :: #{
%%   <<"description">> => [string()],
%%   <<"displayName">> => [string()],
%%   <<"name">> => [string()],
%%   <<"spaceName">> => string()
%% }
-type get_project_response() :: #{binary() => any()}.


%% Example:
%% update_dev_environment_request() :: #{
%%   <<"alias">> => [string()],
%%   <<"clientToken">> => string(),
%%   <<"ides">> => list(ide_configuration()),
%%   <<"inactivityTimeoutMinutes">> => integer(),
%%   <<"instanceType">> => string()
%% }
-type update_dev_environment_request() :: #{binary() => any()}.


%% Example:
%% list_event_logs_request() :: #{
%%   <<"endTime">> := non_neg_integer(),
%%   <<"eventName">> => [string()],
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()],
%%   <<"startTime">> := non_neg_integer()
%% }
-type list_event_logs_request() :: #{binary() => any()}.


%% Example:
%% create_dev_environment_request() :: #{
%%   <<"alias">> => [string()],
%%   <<"clientToken">> => string(),
%%   <<"ides">> => list(ide_configuration()),
%%   <<"inactivityTimeoutMinutes">> => integer(),
%%   <<"instanceType">> := string(),
%%   <<"persistentStorage">> := persistent_storage_configuration(),
%%   <<"repositories">> => list(repository_input()),
%%   <<"vpcConnectionName">> => string()
%% }
-type create_dev_environment_request() :: #{binary() => any()}.


%% Example:
%% start_workflow_run_response() :: #{
%%   <<"id">> => string(),
%%   <<"projectName">> => string(),
%%   <<"spaceName">> => string(),
%%   <<"workflowId">> => string()
%% }
-type start_workflow_run_response() :: #{binary() => any()}.


%% Example:
%% update_space_response() :: #{
%%   <<"description">> => [string()],
%%   <<"displayName">> => [string()],
%%   <<"name">> => string()
%% }
-type update_space_response() :: #{binary() => any()}.


%% Example:
%% list_dev_environment_sessions_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_dev_environment_sessions_request() :: #{binary() => any()}.

%% Example:
%% workflow_run_status_reason() :: #{}
-type workflow_run_status_reason() :: #{}.

%% Example:
%% get_dev_environment_request() :: #{}
-type get_dev_environment_request() :: #{}.


%% Example:
%% list_source_repository_branches_response() :: #{
%%   <<"items">> => list(list_source_repository_branches_item()),
%%   <<"nextToken">> => [string()]
%% }
-type list_source_repository_branches_response() :: #{binary() => any()}.


%% Example:
%% filter() :: #{
%%   <<"comparisonOperator">> => [string()],
%%   <<"key">> => [string()],
%%   <<"values">> => list([string()]())
%% }
-type filter() :: #{binary() => any()}.


%% Example:
%% list_workflow_runs_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()],
%%   <<"sortBy">> => list(workflow_run_sort_criteria()),
%%   <<"workflowId">> => string()
%% }
-type list_workflow_runs_request() :: #{binary() => any()}.

%% Example:
%% get_source_repository_clone_urls_request() :: #{}
-type get_source_repository_clone_urls_request() :: #{}.


%% Example:
%% workflow_summary() :: #{
%%   <<"createdTime">> => non_neg_integer(),
%%   <<"definition">> => workflow_definition_summary(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedTime">> => non_neg_integer(),
%%   <<"name">> => [string()],
%%   <<"runMode">> => string(),
%%   <<"sourceBranchName">> => string(),
%%   <<"sourceRepositoryName">> => string(),
%%   <<"status">> => string()
%% }
-type workflow_summary() :: #{binary() => any()}.


%% Example:
%% start_dev_environment_request() :: #{
%%   <<"ides">> => list(ide_configuration()),
%%   <<"inactivityTimeoutMinutes">> => integer(),
%%   <<"instanceType">> => string()
%% }
-type start_dev_environment_request() :: #{binary() => any()}.

%% Example:
%% delete_source_repository_request() :: #{}
-type delete_source_repository_request() :: #{}.

%% Example:
%% get_subscription_request() :: #{}
-type get_subscription_request() :: #{}.


%% Example:
%% start_dev_environment_session_response() :: #{
%%   <<"accessDetails">> => dev_environment_access_details(),
%%   <<"id">> => string(),
%%   <<"projectName">> => string(),
%%   <<"sessionId">> => [string()],
%%   <<"spaceName">> => string()
%% }
-type start_dev_environment_session_response() :: #{binary() => any()}.


%% Example:
%% workflow_definition_summary() :: #{
%%   <<"path">> => [string()]
%% }
-type workflow_definition_summary() :: #{binary() => any()}.


%% Example:
%% delete_project_response() :: #{
%%   <<"displayName">> => [string()],
%%   <<"name">> => string(),
%%   <<"spaceName">> => string()
%% }
-type delete_project_response() :: #{binary() => any()}.


%% Example:
%% persistent_storage_configuration() :: #{
%%   <<"sizeInGiB">> => [integer()]
%% }
-type persistent_storage_configuration() :: #{binary() => any()}.


%% Example:
%% update_project_request() :: #{
%%   <<"description">> => string()
%% }
-type update_project_request() :: #{binary() => any()}.


%% Example:
%% dev_environment_session_summary() :: #{
%%   <<"devEnvironmentId">> => string(),
%%   <<"id">> => [string()],
%%   <<"projectName">> => string(),
%%   <<"spaceName">> => string(),
%%   <<"startedTime">> => non_neg_integer()
%% }
-type dev_environment_session_summary() :: #{binary() => any()}.


%% Example:
%% get_source_repository_response() :: #{
%%   <<"createdTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"lastUpdatedTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"projectName">> => string(),
%%   <<"spaceName">> => string()
%% }
-type get_source_repository_response() :: #{binary() => any()}.


%% Example:
%% list_dev_environments_request() :: #{
%%   <<"filters">> => list(filter()),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()],
%%   <<"projectName">> => string()
%% }
-type list_dev_environments_request() :: #{binary() => any()}.


%% Example:
%% project_list_filter() :: #{
%%   <<"comparisonOperator">> => string(),
%%   <<"key">> => string(),
%%   <<"values">> => list([string()]())
%% }
-type project_list_filter() :: #{binary() => any()}.


%% Example:
%% stop_dev_environment_session_response() :: #{
%%   <<"id">> => string(),
%%   <<"projectName">> => string(),
%%   <<"sessionId">> => [string()],
%%   <<"spaceName">> => string()
%% }
-type stop_dev_environment_session_response() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% update_space_request() :: #{
%%   <<"description">> => string()
%% }
-type update_space_request() :: #{binary() => any()}.


%% Example:
%% list_workflow_runs_response() :: #{
%%   <<"items">> => list(workflow_run_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_workflow_runs_response() :: #{binary() => any()}.


%% Example:
%% create_dev_environment_response() :: #{
%%   <<"id">> => string(),
%%   <<"projectName">> => string(),
%%   <<"spaceName">> => string(),
%%   <<"vpcConnectionName">> => string()
%% }
-type create_dev_environment_response() :: #{binary() => any()}.

%% Example:
%% delete_access_token_request() :: #{}
-type delete_access_token_request() :: #{}.


%% Example:
%% list_event_logs_response() :: #{
%%   <<"items">> => list(event_log_entry()),
%%   <<"nextToken">> => [string()]
%% }
-type list_event_logs_response() :: #{binary() => any()}.


%% Example:
%% verify_session_response() :: #{
%%   <<"identity">> => [string()]
%% }
-type verify_session_response() :: #{binary() => any()}.


%% Example:
%% persistent_storage() :: #{
%%   <<"sizeInGiB">> => [integer()]
%% }
-type persistent_storage() :: #{binary() => any()}.


%% Example:
%% create_access_token_request() :: #{
%%   <<"expiresTime">> => non_neg_integer(),
%%   <<"name">> := string()
%% }
-type create_access_token_request() :: #{binary() => any()}.


%% Example:
%% list_spaces_response() :: #{
%%   <<"items">> => list(space_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_spaces_response() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% dev_environment_repository_summary() :: #{
%%   <<"branchName">> => string(),
%%   <<"repositoryName">> => string()
%% }
-type dev_environment_repository_summary() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% create_project_request() :: #{
%%   <<"description">> => string(),
%%   <<"displayName">> := string()
%% }
-type create_project_request() :: #{binary() => any()}.


%% Example:
%% list_dev_environments_response() :: #{
%%   <<"items">> => list(dev_environment_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_dev_environments_response() :: #{binary() => any()}.


%% Example:
%% get_space_response() :: #{
%%   <<"description">> => [string()],
%%   <<"displayName">> => [string()],
%%   <<"name">> => string(),
%%   <<"regionName">> => string()
%% }
-type get_space_response() :: #{binary() => any()}.


%% Example:
%% list_projects_request() :: #{
%%   <<"filters">> => list(project_list_filter()),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_projects_request() :: #{binary() => any()}.


%% Example:
%% list_source_repository_branches_item() :: #{
%%   <<"headCommitId">> => [string()],
%%   <<"lastUpdatedTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"ref">> => string()
%% }
-type list_source_repository_branches_item() :: #{binary() => any()}.

%% Example:
%% stop_dev_environment_session_request() :: #{}
-type stop_dev_environment_session_request() :: #{}.

%% Example:
%% get_workflow_run_request() :: #{}
-type get_workflow_run_request() :: #{}.

%% Example:
%% delete_access_token_response() :: #{}
-type delete_access_token_response() :: #{}.


%% Example:
%% execute_command_session_configuration() :: #{
%%   <<"arguments">> => list([string()]()),
%%   <<"command">> => [string()]
%% }
-type execute_command_session_configuration() :: #{binary() => any()}.


%% Example:
%% delete_dev_environment_response() :: #{
%%   <<"id">> => string(),
%%   <<"projectName">> => string(),
%%   <<"spaceName">> => string()
%% }
-type delete_dev_environment_response() :: #{binary() => any()}.


%% Example:
%% workflow_definition() :: #{
%%   <<"path">> => [string()]
%% }
-type workflow_definition() :: #{binary() => any()}.

%% Example:
%% delete_project_request() :: #{}
-type delete_project_request() :: #{}.


%% Example:
%% list_source_repositories_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_source_repositories_request() :: #{binary() => any()}.


%% Example:
%% create_source_repository_response() :: #{
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"projectName">> => string(),
%%   <<"spaceName">> => string()
%% }
-type create_source_repository_response() :: #{binary() => any()}.


%% Example:
%% list_workflows_response() :: #{
%%   <<"items">> => list(workflow_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_workflows_response() :: #{binary() => any()}.


%% Example:
%% get_workflow_run_response() :: #{
%%   <<"endTime">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedTime">> => non_neg_integer(),
%%   <<"projectName">> => string(),
%%   <<"spaceName">> => string(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => string(),
%%   <<"statusReasons">> => list(workflow_run_status_reason()),
%%   <<"workflowId">> => string()
%% }
-type get_workflow_run_response() :: #{binary() => any()}.

%% Example:
%% workflow_sort_criteria() :: #{}
-type workflow_sort_criteria() :: #{}.


%% Example:
%% list_source_repositories_response() :: #{
%%   <<"items">> => list(list_source_repositories_item()),
%%   <<"nextToken">> => [string()]
%% }
-type list_source_repositories_response() :: #{binary() => any()}.


%% Example:
%% workflow_run_summary() :: #{
%%   <<"endTime">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedTime">> => non_neg_integer(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => string(),
%%   <<"statusReasons">> => list(workflow_run_status_reason()),
%%   <<"workflowId">> => string(),
%%   <<"workflowName">> => [string()]
%% }
-type workflow_run_summary() :: #{binary() => any()}.


%% Example:
%% dev_environment_session_configuration() :: #{
%%   <<"executeCommandSessionConfiguration">> => execute_command_session_configuration(),
%%   <<"sessionType">> => string()
%% }
-type dev_environment_session_configuration() :: #{binary() => any()}.


%% Example:
%% list_access_tokens_response() :: #{
%%   <<"items">> => list(access_token_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_access_tokens_response() :: #{binary() => any()}.


%% Example:
%% space_summary() :: #{
%%   <<"description">> => [string()],
%%   <<"displayName">> => [string()],
%%   <<"name">> => string(),
%%   <<"regionName">> => string()
%% }
-type space_summary() :: #{binary() => any()}.


%% Example:
%% get_source_repository_clone_urls_response() :: #{
%%   <<"https">> => [string()]
%% }
-type get_source_repository_clone_urls_response() :: #{binary() => any()}.


%% Example:
%% list_spaces_request() :: #{
%%   <<"nextToken">> => [string()]
%% }
-type list_spaces_request() :: #{binary() => any()}.


%% Example:
%% event_payload() :: #{
%%   <<"contentType">> => [string()],
%%   <<"data">> => [string()]
%% }
-type event_payload() :: #{binary() => any()}.


%% Example:
%% get_workflow_response() :: #{
%%   <<"createdTime">> => non_neg_integer(),
%%   <<"definition">> => workflow_definition(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedTime">> => non_neg_integer(),
%%   <<"name">> => [string()],
%%   <<"projectName">> => string(),
%%   <<"runMode">> => string(),
%%   <<"sourceBranchName">> => string(),
%%   <<"sourceRepositoryName">> => string(),
%%   <<"spaceName">> => string(),
%%   <<"status">> => string()
%% }
-type get_workflow_response() :: #{binary() => any()}.


%% Example:
%% create_source_repository_branch_response() :: #{
%%   <<"headCommitId">> => [string()],
%%   <<"lastUpdatedTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"ref">> => string()
%% }
-type create_source_repository_branch_response() :: #{binary() => any()}.



%%====================================================================
%% API
%%====================================================================

%% @doc Creates a personal access token (PAT) for the current user.
%%
%% A personal access token (PAT) is similar to a password.
%% It is associated with your user identity for use across all spaces and
%% projects in Amazon CodeCatalyst. You use PATs to access CodeCatalyst
%% from resources that include integrated development environments (IDEs) and
%% Git-based source repositories.
%% PATs represent you in Amazon CodeCatalyst and you can manage them in your
%% user settings.For more information, see
%% Managing personal access tokens in Amazon CodeCatalyst:
%% https://docs.aws.amazon.com/codecatalyst/latest/userguide/ipa-tokens-keys.html.
-spec create_access_token(aws_client:aws_client(), create_access_token_request()) ->
    {ok, create_access_token_response(), tuple()} |
    {error, any()}.
create_access_token(Client, Input) ->
    create_access_token(Client, Input, []).

-spec create_access_token(aws_client:aws_client(), create_access_token_request(), proplists:proplist()) ->
    {ok, create_access_token_response(), tuple()} |
    {error, any()}.
create_access_token(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v1/accessTokens"],
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

%% @doc Creates a Dev Environment in Amazon CodeCatalyst, a cloud-based
%% development environment that you can use to quickly work on the code
%% stored
%% in the source repositories of your project.
%%
%% When created in the Amazon CodeCatalyst console, by default a Dev
%% Environment is configured to have a 2 core processor, 4GB of RAM, and 16GB
%% of persistent storage. None of these
%% defaults apply to a Dev Environment created programmatically.
-spec create_dev_environment(aws_client:aws_client(), binary() | list(), binary() | list(), create_dev_environment_request()) ->
    {ok, create_dev_environment_response(), tuple()} |
    {error, any()}.
create_dev_environment(Client, ProjectName, SpaceName, Input) ->
    create_dev_environment(Client, ProjectName, SpaceName, Input, []).

-spec create_dev_environment(aws_client:aws_client(), binary() | list(), binary() | list(), create_dev_environment_request(), proplists:proplist()) ->
    {ok, create_dev_environment_response(), tuple()} |
    {error, any()}.
create_dev_environment(Client, ProjectName, SpaceName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/spaces/", aws_util:encode_uri(SpaceName), "/projects/", aws_util:encode_uri(ProjectName), "/devEnvironments"],
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

%% @doc Creates a project in a specified space.
-spec create_project(aws_client:aws_client(), binary() | list(), create_project_request()) ->
    {ok, create_project_response(), tuple()} |
    {error, any()}.
create_project(Client, SpaceName, Input) ->
    create_project(Client, SpaceName, Input, []).

-spec create_project(aws_client:aws_client(), binary() | list(), create_project_request(), proplists:proplist()) ->
    {ok, create_project_response(), tuple()} |
    {error, any()}.
create_project(Client, SpaceName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/spaces/", aws_util:encode_uri(SpaceName), "/projects"],
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

%% @doc Creates an empty Git-based source repository in a specified project.
%%
%% The repository is
%% created with an initial empty commit with a default branch named
%% `main'.
-spec create_source_repository(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), create_source_repository_request()) ->
    {ok, create_source_repository_response(), tuple()} |
    {error, any()}.
create_source_repository(Client, Name, ProjectName, SpaceName, Input) ->
    create_source_repository(Client, Name, ProjectName, SpaceName, Input, []).

-spec create_source_repository(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), create_source_repository_request(), proplists:proplist()) ->
    {ok, create_source_repository_response(), tuple()} |
    {error, any()}.
create_source_repository(Client, Name, ProjectName, SpaceName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/spaces/", aws_util:encode_uri(SpaceName), "/projects/", aws_util:encode_uri(ProjectName), "/sourceRepositories/", aws_util:encode_uri(Name), ""],
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

%% @doc Creates a branch in a specified source repository in Amazon
%% CodeCatalyst.
%%
%% This API only creates a branch in a source repository hosted in Amazon
%% CodeCatalyst. You cannot use this API to create a branch in a linked
%% repository.
-spec create_source_repository_branch(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), create_source_repository_branch_request()) ->
    {ok, create_source_repository_branch_response(), tuple()} |
    {error, any()}.
create_source_repository_branch(Client, Name, ProjectName, SourceRepositoryName, SpaceName, Input) ->
    create_source_repository_branch(Client, Name, ProjectName, SourceRepositoryName, SpaceName, Input, []).

-spec create_source_repository_branch(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), create_source_repository_branch_request(), proplists:proplist()) ->
    {ok, create_source_repository_branch_response(), tuple()} |
    {error, any()}.
create_source_repository_branch(Client, Name, ProjectName, SourceRepositoryName, SpaceName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/spaces/", aws_util:encode_uri(SpaceName), "/projects/", aws_util:encode_uri(ProjectName), "/sourceRepositories/", aws_util:encode_uri(SourceRepositoryName), "/branches/", aws_util:encode_uri(Name), ""],
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

%% @doc Deletes a specified personal access token (PAT).
%%
%% A personal access token can only be deleted by the user who created it.
-spec delete_access_token(aws_client:aws_client(), binary() | list(), delete_access_token_request()) ->
    {ok, delete_access_token_response(), tuple()} |
    {error, any()}.
delete_access_token(Client, Id, Input) ->
    delete_access_token(Client, Id, Input, []).

-spec delete_access_token(aws_client:aws_client(), binary() | list(), delete_access_token_request(), proplists:proplist()) ->
    {ok, delete_access_token_response(), tuple()} |
    {error, any()}.
delete_access_token(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/accessTokens/", aws_util:encode_uri(Id), ""],
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

%% @doc Deletes a Dev Environment.
-spec delete_dev_environment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_dev_environment_request()) ->
    {ok, delete_dev_environment_response(), tuple()} |
    {error, any()}.
delete_dev_environment(Client, Id, ProjectName, SpaceName, Input) ->
    delete_dev_environment(Client, Id, ProjectName, SpaceName, Input, []).

-spec delete_dev_environment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_dev_environment_request(), proplists:proplist()) ->
    {ok, delete_dev_environment_response(), tuple()} |
    {error, any()}.
delete_dev_environment(Client, Id, ProjectName, SpaceName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/spaces/", aws_util:encode_uri(SpaceName), "/projects/", aws_util:encode_uri(ProjectName), "/devEnvironments/", aws_util:encode_uri(Id), ""],
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

%% @doc Deletes a project in a space.
-spec delete_project(aws_client:aws_client(), binary() | list(), binary() | list(), delete_project_request()) ->
    {ok, delete_project_response(), tuple()} |
    {error, any()}.
delete_project(Client, Name, SpaceName, Input) ->
    delete_project(Client, Name, SpaceName, Input, []).

-spec delete_project(aws_client:aws_client(), binary() | list(), binary() | list(), delete_project_request(), proplists:proplist()) ->
    {ok, delete_project_response(), tuple()} |
    {error, any()}.
delete_project(Client, Name, SpaceName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/spaces/", aws_util:encode_uri(SpaceName), "/projects/", aws_util:encode_uri(Name), ""],
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

%% @doc Deletes a source repository in Amazon CodeCatalyst.
%%
%% You cannot use this API to delete a linked repository. It can only be used
%% to delete a Amazon CodeCatalyst source repository.
-spec delete_source_repository(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_source_repository_request()) ->
    {ok, delete_source_repository_response(), tuple()} |
    {error, any()}.
delete_source_repository(Client, Name, ProjectName, SpaceName, Input) ->
    delete_source_repository(Client, Name, ProjectName, SpaceName, Input, []).

-spec delete_source_repository(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_source_repository_request(), proplists:proplist()) ->
    {ok, delete_source_repository_response(), tuple()} |
    {error, any()}.
delete_source_repository(Client, Name, ProjectName, SpaceName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/spaces/", aws_util:encode_uri(SpaceName), "/projects/", aws_util:encode_uri(ProjectName), "/sourceRepositories/", aws_util:encode_uri(Name), ""],
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

%% @doc Deletes a space.
%%
%% Deleting a space cannot be undone. Additionally, since space names must be
%% unique across Amazon CodeCatalyst, you cannot reuse names of deleted
%% spaces.
-spec delete_space(aws_client:aws_client(), binary() | list(), delete_space_request()) ->
    {ok, delete_space_response(), tuple()} |
    {error, any()}.
delete_space(Client, Name, Input) ->
    delete_space(Client, Name, Input, []).

-spec delete_space(aws_client:aws_client(), binary() | list(), delete_space_request(), proplists:proplist()) ->
    {ok, delete_space_response(), tuple()} |
    {error, any()}.
delete_space(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/spaces/", aws_util:encode_uri(Name), ""],
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

%% @doc Returns information about a Dev Environment for a source repository
%% in a project.
%%
%% Dev Environments are specific to the user who creates them.
-spec get_dev_environment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_dev_environment_response(), tuple()} |
    {error, any()}.
get_dev_environment(Client, Id, ProjectName, SpaceName)
  when is_map(Client) ->
    get_dev_environment(Client, Id, ProjectName, SpaceName, #{}, #{}).

-spec get_dev_environment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_dev_environment_response(), tuple()} |
    {error, any()}.
get_dev_environment(Client, Id, ProjectName, SpaceName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_dev_environment(Client, Id, ProjectName, SpaceName, QueryMap, HeadersMap, []).

-spec get_dev_environment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_dev_environment_response(), tuple()} |
    {error, any()}.
get_dev_environment(Client, Id, ProjectName, SpaceName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/spaces/", aws_util:encode_uri(SpaceName), "/projects/", aws_util:encode_uri(ProjectName), "/devEnvironments/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a project.
-spec get_project(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_project_response(), tuple()} |
    {error, any()}.
get_project(Client, Name, SpaceName)
  when is_map(Client) ->
    get_project(Client, Name, SpaceName, #{}, #{}).

-spec get_project(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_project_response(), tuple()} |
    {error, any()}.
get_project(Client, Name, SpaceName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_project(Client, Name, SpaceName, QueryMap, HeadersMap, []).

-spec get_project(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_project_response(), tuple()} |
    {error, any()}.
get_project(Client, Name, SpaceName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/spaces/", aws_util:encode_uri(SpaceName), "/projects/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a source repository.
-spec get_source_repository(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_source_repository_response(), tuple()} |
    {error, any()}.
get_source_repository(Client, Name, ProjectName, SpaceName)
  when is_map(Client) ->
    get_source_repository(Client, Name, ProjectName, SpaceName, #{}, #{}).

-spec get_source_repository(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_source_repository_response(), tuple()} |
    {error, any()}.
get_source_repository(Client, Name, ProjectName, SpaceName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_source_repository(Client, Name, ProjectName, SpaceName, QueryMap, HeadersMap, []).

-spec get_source_repository(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_source_repository_response(), tuple()} |
    {error, any()}.
get_source_repository(Client, Name, ProjectName, SpaceName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/spaces/", aws_util:encode_uri(SpaceName), "/projects/", aws_util:encode_uri(ProjectName), "/sourceRepositories/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the URLs that can be used with a Git client
%% to clone a source
%% repository.
-spec get_source_repository_clone_urls(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_source_repository_clone_urls_response(), tuple()} |
    {error, any()}.
get_source_repository_clone_urls(Client, ProjectName, SourceRepositoryName, SpaceName)
  when is_map(Client) ->
    get_source_repository_clone_urls(Client, ProjectName, SourceRepositoryName, SpaceName, #{}, #{}).

-spec get_source_repository_clone_urls(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_source_repository_clone_urls_response(), tuple()} |
    {error, any()}.
get_source_repository_clone_urls(Client, ProjectName, SourceRepositoryName, SpaceName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_source_repository_clone_urls(Client, ProjectName, SourceRepositoryName, SpaceName, QueryMap, HeadersMap, []).

-spec get_source_repository_clone_urls(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_source_repository_clone_urls_response(), tuple()} |
    {error, any()}.
get_source_repository_clone_urls(Client, ProjectName, SourceRepositoryName, SpaceName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/spaces/", aws_util:encode_uri(SpaceName), "/projects/", aws_util:encode_uri(ProjectName), "/sourceRepositories/", aws_util:encode_uri(SourceRepositoryName), "/cloneUrls"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about an space.
-spec get_space(aws_client:aws_client(), binary() | list()) ->
    {ok, get_space_response(), tuple()} |
    {error, any()}.
get_space(Client, Name)
  when is_map(Client) ->
    get_space(Client, Name, #{}, #{}).

-spec get_space(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_space_response(), tuple()} |
    {error, any()}.
get_space(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_space(Client, Name, QueryMap, HeadersMap, []).

-spec get_space(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_space_response(), tuple()} |
    {error, any()}.
get_space(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/spaces/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the Amazon Web Services account used for
%% billing purposes
%% and the billing plan for the space.
-spec get_subscription(aws_client:aws_client(), binary() | list()) ->
    {ok, get_subscription_response(), tuple()} |
    {error, any()}.
get_subscription(Client, SpaceName)
  when is_map(Client) ->
    get_subscription(Client, SpaceName, #{}, #{}).

-spec get_subscription(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_subscription_response(), tuple()} |
    {error, any()}.
get_subscription(Client, SpaceName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_subscription(Client, SpaceName, QueryMap, HeadersMap, []).

-spec get_subscription(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_subscription_response(), tuple()} |
    {error, any()}.
get_subscription(Client, SpaceName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/spaces/", aws_util:encode_uri(SpaceName), "/subscription"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a user.
-spec get_user_details(aws_client:aws_client()) ->
    {ok, get_user_details_response(), tuple()} |
    {error, any()}.
get_user_details(Client)
  when is_map(Client) ->
    get_user_details(Client, #{}, #{}).

-spec get_user_details(aws_client:aws_client(), map(), map()) ->
    {ok, get_user_details_response(), tuple()} |
    {error, any()}.
get_user_details(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_user_details(Client, QueryMap, HeadersMap, []).

-spec get_user_details(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_user_details_response(), tuple()} |
    {error, any()}.
get_user_details(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/userDetails"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"id">>, maps:get(<<"id">>, QueryMap, undefined)},
        {<<"userName">>, maps:get(<<"userName">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a workflow.
-spec get_workflow(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_workflow_response(), tuple()} |
    {error, any()}.
get_workflow(Client, Id, ProjectName, SpaceName)
  when is_map(Client) ->
    get_workflow(Client, Id, ProjectName, SpaceName, #{}, #{}).

-spec get_workflow(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_workflow_response(), tuple()} |
    {error, any()}.
get_workflow(Client, Id, ProjectName, SpaceName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_workflow(Client, Id, ProjectName, SpaceName, QueryMap, HeadersMap, []).

-spec get_workflow(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_workflow_response(), tuple()} |
    {error, any()}.
get_workflow(Client, Id, ProjectName, SpaceName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/spaces/", aws_util:encode_uri(SpaceName), "/projects/", aws_util:encode_uri(ProjectName), "/workflows/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a specified run of a workflow.
-spec get_workflow_run(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_workflow_run_response(), tuple()} |
    {error, any()}.
get_workflow_run(Client, Id, ProjectName, SpaceName)
  when is_map(Client) ->
    get_workflow_run(Client, Id, ProjectName, SpaceName, #{}, #{}).

-spec get_workflow_run(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_workflow_run_response(), tuple()} |
    {error, any()}.
get_workflow_run(Client, Id, ProjectName, SpaceName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_workflow_run(Client, Id, ProjectName, SpaceName, QueryMap, HeadersMap, []).

-spec get_workflow_run(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_workflow_run_response(), tuple()} |
    {error, any()}.
get_workflow_run(Client, Id, ProjectName, SpaceName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/spaces/", aws_util:encode_uri(SpaceName), "/projects/", aws_util:encode_uri(ProjectName), "/workflowRuns/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all personal access tokens (PATs) associated with the user who
%% calls the API.
%%
%% You can only list PATs associated with your Amazon Web Services Builder
%% ID.
-spec list_access_tokens(aws_client:aws_client(), list_access_tokens_request()) ->
    {ok, list_access_tokens_response(), tuple()} |
    {error, any()}.
list_access_tokens(Client, Input) ->
    list_access_tokens(Client, Input, []).

-spec list_access_tokens(aws_client:aws_client(), list_access_tokens_request(), proplists:proplist()) ->
    {ok, list_access_tokens_response(), tuple()} |
    {error, any()}.
list_access_tokens(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/accessTokens"],
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

%% @doc Retrieves a list of active sessions for a Dev Environment in a
%% project.
-spec list_dev_environment_sessions(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), list_dev_environment_sessions_request()) ->
    {ok, list_dev_environment_sessions_response(), tuple()} |
    {error, any()}.
list_dev_environment_sessions(Client, DevEnvironmentId, ProjectName, SpaceName, Input) ->
    list_dev_environment_sessions(Client, DevEnvironmentId, ProjectName, SpaceName, Input, []).

-spec list_dev_environment_sessions(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), list_dev_environment_sessions_request(), proplists:proplist()) ->
    {ok, list_dev_environment_sessions_response(), tuple()} |
    {error, any()}.
list_dev_environment_sessions(Client, DevEnvironmentId, ProjectName, SpaceName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/spaces/", aws_util:encode_uri(SpaceName), "/projects/", aws_util:encode_uri(ProjectName), "/devEnvironments/", aws_util:encode_uri(DevEnvironmentId), "/sessions"],
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

%% @doc Retrieves a list of Dev Environments in a project.
-spec list_dev_environments(aws_client:aws_client(), binary() | list(), list_dev_environments_request()) ->
    {ok, list_dev_environments_response(), tuple()} |
    {error, any()}.
list_dev_environments(Client, SpaceName, Input) ->
    list_dev_environments(Client, SpaceName, Input, []).

-spec list_dev_environments(aws_client:aws_client(), binary() | list(), list_dev_environments_request(), proplists:proplist()) ->
    {ok, list_dev_environments_response(), tuple()} |
    {error, any()}.
list_dev_environments(Client, SpaceName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/spaces/", aws_util:encode_uri(SpaceName), "/devEnvironments"],
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

%% @doc Retrieves a list of events that occurred during a specific time in a
%% space.
%%
%% You can
%% use these events to audit user and system activity in a space. For more
%% information, see
%% Monitoring:
%% https://docs.aws.amazon.com/codecatalyst/latest/userguide/ipa-monitoring.html
%% in the Amazon CodeCatalyst User Guide.
%%
%% ListEventLogs guarantees events for the last 30 days in a given space. You
%% can also
%% view and retrieve a list of management events over the last 90 days for
%% Amazon CodeCatalyst in the
%% CloudTrail console by viewing Event history, or by creating a trail to
%% create
%% and maintain a record of events that extends past 90 days. For more
%% information, see Working with CloudTrail Event History:
%% https://docs.aws.amazon.com/awscloudtrail/latest/userguide/view-cloudtrail-events.html
%% and Working with
%% CloudTrail trails:
%% https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-getting-started.html.
-spec list_event_logs(aws_client:aws_client(), binary() | list(), list_event_logs_request()) ->
    {ok, list_event_logs_response(), tuple()} |
    {error, any()}.
list_event_logs(Client, SpaceName, Input) ->
    list_event_logs(Client, SpaceName, Input, []).

-spec list_event_logs(aws_client:aws_client(), binary() | list(), list_event_logs_request(), proplists:proplist()) ->
    {ok, list_event_logs_response(), tuple()} |
    {error, any()}.
list_event_logs(Client, SpaceName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/spaces/", aws_util:encode_uri(SpaceName), "/eventLogs"],
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

%% @doc Retrieves a list of projects.
-spec list_projects(aws_client:aws_client(), binary() | list(), list_projects_request()) ->
    {ok, list_projects_response(), tuple()} |
    {error, any()}.
list_projects(Client, SpaceName, Input) ->
    list_projects(Client, SpaceName, Input, []).

-spec list_projects(aws_client:aws_client(), binary() | list(), list_projects_request(), proplists:proplist()) ->
    {ok, list_projects_response(), tuple()} |
    {error, any()}.
list_projects(Client, SpaceName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/spaces/", aws_util:encode_uri(SpaceName), "/projects"],
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

%% @doc Retrieves a list of source repositories in a project.
-spec list_source_repositories(aws_client:aws_client(), binary() | list(), binary() | list(), list_source_repositories_request()) ->
    {ok, list_source_repositories_response(), tuple()} |
    {error, any()}.
list_source_repositories(Client, ProjectName, SpaceName, Input) ->
    list_source_repositories(Client, ProjectName, SpaceName, Input, []).

-spec list_source_repositories(aws_client:aws_client(), binary() | list(), binary() | list(), list_source_repositories_request(), proplists:proplist()) ->
    {ok, list_source_repositories_response(), tuple()} |
    {error, any()}.
list_source_repositories(Client, ProjectName, SpaceName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/spaces/", aws_util:encode_uri(SpaceName), "/projects/", aws_util:encode_uri(ProjectName), "/sourceRepositories"],
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

%% @doc Retrieves a list of branches in a specified source repository.
-spec list_source_repository_branches(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), list_source_repository_branches_request()) ->
    {ok, list_source_repository_branches_response(), tuple()} |
    {error, any()}.
list_source_repository_branches(Client, ProjectName, SourceRepositoryName, SpaceName, Input) ->
    list_source_repository_branches(Client, ProjectName, SourceRepositoryName, SpaceName, Input, []).

-spec list_source_repository_branches(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), list_source_repository_branches_request(), proplists:proplist()) ->
    {ok, list_source_repository_branches_response(), tuple()} |
    {error, any()}.
list_source_repository_branches(Client, ProjectName, SourceRepositoryName, SpaceName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/spaces/", aws_util:encode_uri(SpaceName), "/projects/", aws_util:encode_uri(ProjectName), "/sourceRepositories/", aws_util:encode_uri(SourceRepositoryName), "/branches"],
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

%% @doc Retrieves a list of spaces.
-spec list_spaces(aws_client:aws_client(), list_spaces_request()) ->
    {ok, list_spaces_response(), tuple()} |
    {error, any()}.
list_spaces(Client, Input) ->
    list_spaces(Client, Input, []).

-spec list_spaces(aws_client:aws_client(), list_spaces_request(), proplists:proplist()) ->
    {ok, list_spaces_response(), tuple()} |
    {error, any()}.
list_spaces(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/spaces"],
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

%% @doc Retrieves a list of workflow runs of a specified workflow.
-spec list_workflow_runs(aws_client:aws_client(), binary() | list(), binary() | list(), list_workflow_runs_request()) ->
    {ok, list_workflow_runs_response(), tuple()} |
    {error, any()}.
list_workflow_runs(Client, ProjectName, SpaceName, Input) ->
    list_workflow_runs(Client, ProjectName, SpaceName, Input, []).

-spec list_workflow_runs(aws_client:aws_client(), binary() | list(), binary() | list(), list_workflow_runs_request(), proplists:proplist()) ->
    {ok, list_workflow_runs_response(), tuple()} |
    {error, any()}.
list_workflow_runs(Client, ProjectName, SpaceName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/spaces/", aws_util:encode_uri(SpaceName), "/projects/", aws_util:encode_uri(ProjectName), "/workflowRuns"],
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
                     {<<"workflowId">>, <<"workflowId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a list of workflows in a specified project.
-spec list_workflows(aws_client:aws_client(), binary() | list(), binary() | list(), list_workflows_request()) ->
    {ok, list_workflows_response(), tuple()} |
    {error, any()}.
list_workflows(Client, ProjectName, SpaceName, Input) ->
    list_workflows(Client, ProjectName, SpaceName, Input, []).

-spec list_workflows(aws_client:aws_client(), binary() | list(), binary() | list(), list_workflows_request(), proplists:proplist()) ->
    {ok, list_workflows_response(), tuple()} |
    {error, any()}.
list_workflows(Client, ProjectName, SpaceName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/spaces/", aws_util:encode_uri(SpaceName), "/projects/", aws_util:encode_uri(ProjectName), "/workflows"],
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

%% @doc Starts a specified Dev Environment and puts it into an active state.
-spec start_dev_environment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), start_dev_environment_request()) ->
    {ok, start_dev_environment_response(), tuple()} |
    {error, any()}.
start_dev_environment(Client, Id, ProjectName, SpaceName, Input) ->
    start_dev_environment(Client, Id, ProjectName, SpaceName, Input, []).

-spec start_dev_environment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), start_dev_environment_request(), proplists:proplist()) ->
    {ok, start_dev_environment_response(), tuple()} |
    {error, any()}.
start_dev_environment(Client, Id, ProjectName, SpaceName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/spaces/", aws_util:encode_uri(SpaceName), "/projects/", aws_util:encode_uri(ProjectName), "/devEnvironments/", aws_util:encode_uri(Id), "/start"],
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

%% @doc Starts a session for a specified Dev Environment.
-spec start_dev_environment_session(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), start_dev_environment_session_request()) ->
    {ok, start_dev_environment_session_response(), tuple()} |
    {error, any()}.
start_dev_environment_session(Client, Id, ProjectName, SpaceName, Input) ->
    start_dev_environment_session(Client, Id, ProjectName, SpaceName, Input, []).

-spec start_dev_environment_session(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), start_dev_environment_session_request(), proplists:proplist()) ->
    {ok, start_dev_environment_session_response(), tuple()} |
    {error, any()}.
start_dev_environment_session(Client, Id, ProjectName, SpaceName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/spaces/", aws_util:encode_uri(SpaceName), "/projects/", aws_util:encode_uri(ProjectName), "/devEnvironments/", aws_util:encode_uri(Id), "/session"],
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

%% @doc Begins a run of a specified workflow.
-spec start_workflow_run(aws_client:aws_client(), binary() | list(), binary() | list(), start_workflow_run_request()) ->
    {ok, start_workflow_run_response(), tuple()} |
    {error, any()}.
start_workflow_run(Client, ProjectName, SpaceName, Input) ->
    start_workflow_run(Client, ProjectName, SpaceName, Input, []).

-spec start_workflow_run(aws_client:aws_client(), binary() | list(), binary() | list(), start_workflow_run_request(), proplists:proplist()) ->
    {ok, start_workflow_run_response(), tuple()} |
    {error, any()}.
start_workflow_run(Client, ProjectName, SpaceName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/spaces/", aws_util:encode_uri(SpaceName), "/projects/", aws_util:encode_uri(ProjectName), "/workflowRuns"],
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
                     {<<"workflowId">>, <<"workflowId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Pauses a specified Dev Environment and places it in a non-running
%% state.
%%
%% Stopped Dev Environments do not consume compute minutes.
-spec stop_dev_environment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), stop_dev_environment_request()) ->
    {ok, stop_dev_environment_response(), tuple()} |
    {error, any()}.
stop_dev_environment(Client, Id, ProjectName, SpaceName, Input) ->
    stop_dev_environment(Client, Id, ProjectName, SpaceName, Input, []).

-spec stop_dev_environment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), stop_dev_environment_request(), proplists:proplist()) ->
    {ok, stop_dev_environment_response(), tuple()} |
    {error, any()}.
stop_dev_environment(Client, Id, ProjectName, SpaceName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/spaces/", aws_util:encode_uri(SpaceName), "/projects/", aws_util:encode_uri(ProjectName), "/devEnvironments/", aws_util:encode_uri(Id), "/stop"],
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

%% @doc Stops a session for a specified Dev Environment.
-spec stop_dev_environment_session(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), stop_dev_environment_session_request()) ->
    {ok, stop_dev_environment_session_response(), tuple()} |
    {error, any()}.
stop_dev_environment_session(Client, Id, ProjectName, SessionId, SpaceName, Input) ->
    stop_dev_environment_session(Client, Id, ProjectName, SessionId, SpaceName, Input, []).

-spec stop_dev_environment_session(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), stop_dev_environment_session_request(), proplists:proplist()) ->
    {ok, stop_dev_environment_session_response(), tuple()} |
    {error, any()}.
stop_dev_environment_session(Client, Id, ProjectName, SessionId, SpaceName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/spaces/", aws_util:encode_uri(SpaceName), "/projects/", aws_util:encode_uri(ProjectName), "/devEnvironments/", aws_util:encode_uri(Id), "/session/", aws_util:encode_uri(SessionId), ""],
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

%% @doc Changes one or more values for a Dev Environment.
%%
%% Updating certain values of the Dev Environment will cause a restart.
-spec update_dev_environment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_dev_environment_request()) ->
    {ok, update_dev_environment_response(), tuple()} |
    {error, any()}.
update_dev_environment(Client, Id, ProjectName, SpaceName, Input) ->
    update_dev_environment(Client, Id, ProjectName, SpaceName, Input, []).

-spec update_dev_environment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_dev_environment_request(), proplists:proplist()) ->
    {ok, update_dev_environment_response(), tuple()} |
    {error, any()}.
update_dev_environment(Client, Id, ProjectName, SpaceName, Input0, Options0) ->
    Method = patch,
    Path = ["/v1/spaces/", aws_util:encode_uri(SpaceName), "/projects/", aws_util:encode_uri(ProjectName), "/devEnvironments/", aws_util:encode_uri(Id), ""],
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

%% @doc Changes one or more values for a project.
-spec update_project(aws_client:aws_client(), binary() | list(), binary() | list(), update_project_request()) ->
    {ok, update_project_response(), tuple()} |
    {error, any()}.
update_project(Client, Name, SpaceName, Input) ->
    update_project(Client, Name, SpaceName, Input, []).

-spec update_project(aws_client:aws_client(), binary() | list(), binary() | list(), update_project_request(), proplists:proplist()) ->
    {ok, update_project_response(), tuple()} |
    {error, any()}.
update_project(Client, Name, SpaceName, Input0, Options0) ->
    Method = patch,
    Path = ["/v1/spaces/", aws_util:encode_uri(SpaceName), "/projects/", aws_util:encode_uri(Name), ""],
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

%% @doc Changes one or more values for a space.
-spec update_space(aws_client:aws_client(), binary() | list(), update_space_request()) ->
    {ok, update_space_response(), tuple()} |
    {error, any()}.
update_space(Client, Name, Input) ->
    update_space(Client, Name, Input, []).

-spec update_space(aws_client:aws_client(), binary() | list(), update_space_request(), proplists:proplist()) ->
    {ok, update_space_response(), tuple()} |
    {error, any()}.
update_space(Client, Name, Input0, Options0) ->
    Method = patch,
    Path = ["/v1/spaces/", aws_util:encode_uri(Name), ""],
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

%% @doc Verifies whether the calling user has a valid Amazon CodeCatalyst
%% login and session.
%%
%% If successful, this returns the ID of the user in Amazon CodeCatalyst.
-spec verify_session(aws_client:aws_client()) ->
    {ok, verify_session_response(), tuple()} |
    {error, any()}.
verify_session(Client)
  when is_map(Client) ->
    verify_session(Client, #{}, #{}).

-spec verify_session(aws_client:aws_client(), map(), map()) ->
    {ok, verify_session_response(), tuple()} |
    {error, any()}.
verify_session(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    verify_session(Client, QueryMap, HeadersMap, []).

-spec verify_session(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, verify_session_response(), tuple()} |
    {error, any()}.
verify_session(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/session"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

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
    Client1 = Client#{service => <<"codecatalyst">>,
                      region => <<"">>},
    Host = build_host(<<"codecatalyst">>, Client1),
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
build_host(EndpointPrefix, #{endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Endpoint], <<".">>).

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
