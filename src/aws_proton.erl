%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is the Proton Service API Reference.
%%
%% It provides descriptions, syntax and usage examples for each of the
%% actions:
%% https://docs.aws.amazon.com/proton/latest/APIReference/API_Operations.html
%% and data types:
%% https://docs.aws.amazon.com/proton/latest/APIReference/API_Types.html for
%% the Proton
%% service.
%%
%% The documentation for each action shows the Query API request parameters
%% and the XML response.
%%
%% Alternatively, you can use the Amazon Web Services CLI to access an API.
%% For more information, see the Amazon Web Services Command Line Interface
%% User
%% Guide:
%% https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html.
%%
%% The Proton service is a two-pronged automation framework. Administrators
%% create service templates to provide
%% standardized infrastructure and deployment tooling for serverless and
%% container based applications. Developers, in
%% turn, select from the available service templates to automate their
%% application or service deployments.
%%
%% Because administrators define the infrastructure and tooling that Proton
%% deploys and manages, they need
%% permissions to use all of the listed API operations.
%%
%% When developers select a specific infrastructure and tooling set, Proton
%% deploys their applications. To
%% monitor their applications that are running on Proton, developers need
%% permissions to the service
%% create, list, update and delete
%% API operations and the service instance list and update API
%% operations.
%%
%% To learn more about Proton, see the Proton User Guide:
%% https://docs.aws.amazon.com/proton/latest/userguide/Welcome.html.
%%
%% Ensuring Idempotency
%%
%% When you make a mutating API request, the request typically returns a
%% result before the asynchronous workflows
%% of the operation are complete. Operations might also time out or encounter
%% other server issues before they're
%% complete, even if the request already returned a result. This might make
%% it difficult to determine whether the
%% request succeeded. Moreover, you might need to retry the request multiple
%% times to ensure that the operation
%% completes successfully. However, if the original request and the
%% subsequent retries are successful, the operation
%% occurs multiple times. This means that you might create more resources
%% than you intended.
%%
%% Idempotency ensures that an API request action completes no more than one
%% time. With an
%% idempotent request, if the original request action completes successfully,
%% any subsequent retries complete
%% successfully without performing any further actions. However, the result
%% might contain updated information, such as
%% the current creation status.
%%
%% The following lists of APIs are grouped according to methods that ensure
%% idempotency.
%%
%% Idempotent create APIs with a client token
%%
%% The API actions in this list support idempotency with the use of a client
%% token. The
%% corresponding Amazon Web Services CLI commands also support idempotency
%% using a client token. A client token is a unique,
%% case-sensitive string of up to 64 ASCII characters. To make an idempotent
%% API request using one of these actions,
%% specify a client token in the request. We recommend that you don't
%% reuse the same client token
%% for other API requests. If you don’t provide a client token for these
%% APIs, a default client token is automatically
%% provided by SDKs.
%%
%% Given a request action that has succeeded:
%%
%% If you retry the request using the same client token and the same
%% parameters, the retry succeeds without
%% performing any further actions other than returning the original resource
%% detail data in the response.
%%
%% If you retry the request using the same client token, but one or more of
%% the parameters are different, the retry
%% throws a `ValidationException' with an
%% `IdempotentParameterMismatch' error.
%%
%% Client tokens expire eight hours after a request is made. If you retry the
%% request with the expired token, a new
%% resource is created.
%%
%% If the original resource is deleted and you retry the request, a new
%% resource is created.
%%
%% Idempotent create APIs with a client token:
%%
%% CreateEnvironmentTemplateVersion
%%
%% CreateServiceTemplateVersion
%%
%% CreateEnvironmentAccountConnection
%%
%% Idempotent create APIs
%%
%% Given a request action that has succeeded:
%%
%% If you retry the request with an API from this group, and the original
%% resource hasn't been
%% modified, the retry succeeds without performing any further actions other
%% than returning the original resource detail
%% data in the response.
%%
%% If the original resource has been modified, the retry throws a
%% `ConflictException'.
%%
%% If you retry with different input parameters, the retry throws a
%% `ValidationException' with an
%% `IdempotentParameterMismatch' error.
%%
%% Idempotent create APIs:
%%
%% CreateEnvironmentTemplate
%%
%% CreateServiceTemplate
%%
%% CreateEnvironment
%%
%% CreateService
%%
%% Idempotent delete APIs
%%
%% Given a request action that has succeeded:
%%
%% When you retry the request with an API from this group and the resource
%% was deleted, its metadata is returned in
%% the response.
%%
%% If you retry and the resource doesn't exist, the response is empty.
%%
%% In both cases, the retry succeeds.
%%
%% Idempotent delete APIs:
%%
%% DeleteEnvironmentTemplate
%%
%% DeleteEnvironmentTemplateVersion
%%
%% DeleteServiceTemplate
%%
%% DeleteServiceTemplateVersion
%%
%% DeleteEnvironmentAccountConnection
%%
%% Asynchronous idempotent delete APIs
%%
%% Given a request action that has succeeded:
%%
%% If you retry the request with an API from this group, if the original
%% request delete operation status is
%% `DELETE_IN_PROGRESS', the retry returns the resource detail data in
%% the response without performing any
%% further actions.
%%
%% If the original request delete operation is complete, a retry returns an
%% empty response.
%%
%% Asynchronous idempotent delete APIs:
%%
%% DeleteEnvironment
%%
%% DeleteService
-module(aws_proton).

-export([accept_environment_account_connection/2,
         accept_environment_account_connection/3,
         cancel_component_deployment/2,
         cancel_component_deployment/3,
         cancel_environment_deployment/2,
         cancel_environment_deployment/3,
         cancel_service_instance_deployment/2,
         cancel_service_instance_deployment/3,
         cancel_service_pipeline_deployment/2,
         cancel_service_pipeline_deployment/3,
         create_component/2,
         create_component/3,
         create_environment/2,
         create_environment/3,
         create_environment_account_connection/2,
         create_environment_account_connection/3,
         create_environment_template/2,
         create_environment_template/3,
         create_environment_template_version/2,
         create_environment_template_version/3,
         create_repository/2,
         create_repository/3,
         create_service/2,
         create_service/3,
         create_service_instance/2,
         create_service_instance/3,
         create_service_sync_config/2,
         create_service_sync_config/3,
         create_service_template/2,
         create_service_template/3,
         create_service_template_version/2,
         create_service_template_version/3,
         create_template_sync_config/2,
         create_template_sync_config/3,
         delete_component/2,
         delete_component/3,
         delete_deployment/2,
         delete_deployment/3,
         delete_environment/2,
         delete_environment/3,
         delete_environment_account_connection/2,
         delete_environment_account_connection/3,
         delete_environment_template/2,
         delete_environment_template/3,
         delete_environment_template_version/2,
         delete_environment_template_version/3,
         delete_repository/2,
         delete_repository/3,
         delete_service/2,
         delete_service/3,
         delete_service_sync_config/2,
         delete_service_sync_config/3,
         delete_service_template/2,
         delete_service_template/3,
         delete_service_template_version/2,
         delete_service_template_version/3,
         delete_template_sync_config/2,
         delete_template_sync_config/3,
         get_account_settings/2,
         get_account_settings/3,
         get_component/2,
         get_component/3,
         get_deployment/2,
         get_deployment/3,
         get_environment/2,
         get_environment/3,
         get_environment_account_connection/2,
         get_environment_account_connection/3,
         get_environment_template/2,
         get_environment_template/3,
         get_environment_template_version/2,
         get_environment_template_version/3,
         get_repository/2,
         get_repository/3,
         get_repository_sync_status/2,
         get_repository_sync_status/3,
         get_resources_summary/2,
         get_resources_summary/3,
         get_service/2,
         get_service/3,
         get_service_instance/2,
         get_service_instance/3,
         get_service_instance_sync_status/2,
         get_service_instance_sync_status/3,
         get_service_sync_blocker_summary/2,
         get_service_sync_blocker_summary/3,
         get_service_sync_config/2,
         get_service_sync_config/3,
         get_service_template/2,
         get_service_template/3,
         get_service_template_version/2,
         get_service_template_version/3,
         get_template_sync_config/2,
         get_template_sync_config/3,
         get_template_sync_status/2,
         get_template_sync_status/3,
         list_component_outputs/2,
         list_component_outputs/3,
         list_component_provisioned_resources/2,
         list_component_provisioned_resources/3,
         list_components/2,
         list_components/3,
         list_deployments/2,
         list_deployments/3,
         list_environment_account_connections/2,
         list_environment_account_connections/3,
         list_environment_outputs/2,
         list_environment_outputs/3,
         list_environment_provisioned_resources/2,
         list_environment_provisioned_resources/3,
         list_environment_template_versions/2,
         list_environment_template_versions/3,
         list_environment_templates/2,
         list_environment_templates/3,
         list_environments/2,
         list_environments/3,
         list_repositories/2,
         list_repositories/3,
         list_repository_sync_definitions/2,
         list_repository_sync_definitions/3,
         list_service_instance_outputs/2,
         list_service_instance_outputs/3,
         list_service_instance_provisioned_resources/2,
         list_service_instance_provisioned_resources/3,
         list_service_instances/2,
         list_service_instances/3,
         list_service_pipeline_outputs/2,
         list_service_pipeline_outputs/3,
         list_service_pipeline_provisioned_resources/2,
         list_service_pipeline_provisioned_resources/3,
         list_service_template_versions/2,
         list_service_template_versions/3,
         list_service_templates/2,
         list_service_templates/3,
         list_services/2,
         list_services/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         notify_resource_deployment_status_change/2,
         notify_resource_deployment_status_change/3,
         reject_environment_account_connection/2,
         reject_environment_account_connection/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_account_settings/2,
         update_account_settings/3,
         update_component/2,
         update_component/3,
         update_environment/2,
         update_environment/3,
         update_environment_account_connection/2,
         update_environment_account_connection/3,
         update_environment_template/2,
         update_environment_template/3,
         update_environment_template_version/2,
         update_environment_template_version/3,
         update_service/2,
         update_service/3,
         update_service_instance/2,
         update_service_instance/3,
         update_service_pipeline/2,
         update_service_pipeline/3,
         update_service_sync_blocker/2,
         update_service_sync_blocker/3,
         update_service_sync_config/2,
         update_service_sync_config/3,
         update_service_template/2,
         update_service_template/3,
         update_service_template_version/2,
         update_service_template_version/3,
         update_template_sync_config/2,
         update_template_sync_config/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% list_environment_template_versions_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"templateVersions">> := list(environment_template_version_summary())
%% }
-type list_environment_template_versions_output() :: #{binary() => any()}.

%% Example:
%% list_service_pipeline_provisioned_resources_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"provisionedResources">> := list(provisioned_resource())
%% }
-type list_service_pipeline_provisioned_resources_output() :: #{binary() => any()}.

%% Example:
%% get_component_output() :: #{
%%   <<"component">> => component()
%% }
-type get_component_output() :: #{binary() => any()}.

%% Example:
%% update_service_template_version_input() :: #{
%%   <<"compatibleEnvironmentTemplates">> => list(compatible_environment_template_input()),
%%   <<"description">> => string(),
%%   <<"majorVersion">> => string(),
%%   <<"minorVersion">> => string(),
%%   <<"status">> => string(),
%%   <<"supportedComponentSources">> => list(string()),
%%   <<"templateName">> => string()
%% }
-type update_service_template_version_input() :: #{binary() => any()}.

%% Example:
%% repository_branch_input() :: #{
%%   <<"branch">> => string(),
%%   <<"name">> => string(),
%%   <<"provider">> => string()
%% }
-type repository_branch_input() :: #{binary() => any()}.

%% Example:
%% update_environment_template_version_input() :: #{
%%   <<"description">> => string(),
%%   <<"majorVersion">> => string(),
%%   <<"minorVersion">> => string(),
%%   <<"status">> => string(),
%%   <<"templateName">> => string()
%% }
-type update_environment_template_version_input() :: #{binary() => any()}.

%% Example:
%% get_service_input() :: #{
%%   <<"name">> => string()
%% }
-type get_service_input() :: #{binary() => any()}.

%% Example:
%% get_service_instance_sync_status_output() :: #{
%%   <<"desiredState">> => revision(),
%%   <<"latestSuccessfulSync">> => resource_sync_attempt(),
%%   <<"latestSync">> => resource_sync_attempt()
%% }
-type get_service_instance_sync_status_output() :: #{binary() => any()}.

%% Example:
%% environment_template_filter() :: #{
%%   <<"majorVersion">> => string(),
%%   <<"templateName">> => string()
%% }
-type environment_template_filter() :: #{binary() => any()}.

%% Example:
%% accept_environment_account_connection_output() :: #{
%%   <<"environmentAccountConnection">> := environment_account_connection()
%% }
-type accept_environment_account_connection_output() :: #{binary() => any()}.

%% Example:
%% update_component_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"deploymentType">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"serviceInstanceName">> => string(),
%%   <<"serviceName">> => string(),
%%   <<"serviceSpec">> => string(),
%%   <<"templateFile">> => string()
%% }
-type update_component_input() :: #{binary() => any()}.

%% Example:
%% deployment_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"completedAt">> => [non_neg_integer()],
%%   <<"componentName">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"deploymentStatus">> => string(),
%%   <<"environmentName">> => string(),
%%   <<"id">> => string(),
%%   <<"lastAttemptedDeploymentId">> => string(),
%%   <<"lastModifiedAt">> => [non_neg_integer()],
%%   <<"lastSucceededDeploymentId">> => string(),
%%   <<"serviceInstanceName">> => string(),
%%   <<"serviceName">> => string(),
%%   <<"targetArn">> => string(),
%%   <<"targetResourceCreatedAt">> => [non_neg_integer()],
%%   <<"targetResourceType">> => string()
%% }
-type deployment_summary() :: #{binary() => any()}.

%% Example:
%% repository_sync_attempt() :: #{
%%   <<"events">> => list(repository_sync_event()),
%%   <<"startedAt">> => [non_neg_integer()],
%%   <<"status">> => string()
%% }
-type repository_sync_attempt() :: #{binary() => any()}.

%% Example:
%% create_service_instance_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"name">> := string(),
%%   <<"serviceName">> := string(),
%%   <<"spec">> := string(),
%%   <<"tags">> => list(tag()),
%%   <<"templateMajorVersion">> => string(),
%%   <<"templateMinorVersion">> => string()
%% }
-type create_service_instance_input() :: #{binary() => any()}.

%% Example:
%% delete_environment_template_output() :: #{
%%   <<"environmentTemplate">> => environment_template()
%% }
-type delete_environment_template_output() :: #{binary() => any()}.

%% Example:
%% get_repository_input() :: #{
%%   <<"name">> => string(),
%%   <<"provider">> => string()
%% }
-type get_repository_input() :: #{binary() => any()}.

%% Example:
%% update_template_sync_config_output() :: #{
%%   <<"templateSyncConfig">> => template_sync_config()
%% }
-type update_template_sync_config_output() :: #{binary() => any()}.

%% Example:
%% service_sync_config() :: #{
%%   <<"branch">> => string(),
%%   <<"filePath">> => string(),
%%   <<"repositoryName">> => string(),
%%   <<"repositoryProvider">> => string(),
%%   <<"serviceName">> => string()
%% }
-type service_sync_config() :: #{binary() => any()}.

%% Example:
%% create_environment_account_connection_output() :: #{
%%   <<"environmentAccountConnection">> := environment_account_connection()
%% }
-type create_environment_account_connection_output() :: #{binary() => any()}.

%% Example:
%% get_service_sync_config_output() :: #{
%%   <<"serviceSyncConfig">> => service_sync_config()
%% }
-type get_service_sync_config_output() :: #{binary() => any()}.

%% Example:
%% update_service_instance_output() :: #{
%%   <<"serviceInstance">> := service_instance()
%% }
-type update_service_instance_output() :: #{binary() => any()}.

%% Example:
%% list_environment_templates_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"templates">> := list(environment_template_summary())
%% }
-type list_environment_templates_output() :: #{binary() => any()}.

%% Example:
%% accept_environment_account_connection_input() :: #{
%%   <<"id">> => string()
%% }
-type accept_environment_account_connection_input() :: #{binary() => any()}.

%% Example:
%% deployment() :: #{
%%   <<"arn">> => string(),
%%   <<"completedAt">> => [non_neg_integer()],
%%   <<"componentName">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"deploymentStatus">> => string(),
%%   <<"deploymentStatusMessage">> => string(),
%%   <<"environmentName">> => string(),
%%   <<"id">> => string(),
%%   <<"initialState">> => list(),
%%   <<"lastAttemptedDeploymentId">> => string(),
%%   <<"lastModifiedAt">> => [non_neg_integer()],
%%   <<"lastSucceededDeploymentId">> => string(),
%%   <<"serviceInstanceName">> => string(),
%%   <<"serviceName">> => string(),
%%   <<"targetArn">> => string(),
%%   <<"targetResourceCreatedAt">> => [non_neg_integer()],
%%   <<"targetResourceType">> => string(),
%%   <<"targetState">> => list()
%% }
-type deployment() :: #{binary() => any()}.

%% Example:
%% get_environment_output() :: #{
%%   <<"environment">> := environment()
%% }
-type get_environment_output() :: #{binary() => any()}.

%% Example:
%% create_repository_output() :: #{
%%   <<"repository">> := repository()
%% }
-type create_repository_output() :: #{binary() => any()}.

%% Example:
%% update_template_sync_config_input() :: #{
%%   <<"branch">> := string(),
%%   <<"repositoryName">> := string(),
%%   <<"repositoryProvider">> := string(),
%%   <<"subdirectory">> => string(),
%%   <<"templateName">> := string(),
%%   <<"templateType">> := string()
%% }
-type update_template_sync_config_input() :: #{binary() => any()}.

%% Example:
%% update_service_sync_config_output() :: #{
%%   <<"serviceSyncConfig">> => service_sync_config()
%% }
-type update_service_sync_config_output() :: #{binary() => any()}.

%% Example:
%% update_environment_template_version_output() :: #{
%%   <<"environmentTemplateVersion">> := environment_template_version()
%% }
-type update_environment_template_version_output() :: #{binary() => any()}.

%% Example:
%% create_service_sync_config_input() :: #{
%%   <<"branch">> := string(),
%%   <<"filePath">> := string(),
%%   <<"repositoryName">> := string(),
%%   <<"repositoryProvider">> := string(),
%%   <<"serviceName">> := string()
%% }
-type create_service_sync_config_input() :: #{binary() => any()}.

%% Example:
%% update_service_sync_blocker_input() :: #{
%%   <<"id">> := [string()],
%%   <<"resolvedReason">> := [string()]
%% }
-type update_service_sync_blocker_input() :: #{binary() => any()}.

%% Example:
%% list_environment_template_versions_input() :: #{
%%   <<"majorVersion">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"templateName">> := string()
%% }
-type list_environment_template_versions_input() :: #{binary() => any()}.

%% Example:
%% get_deployment_output() :: #{
%%   <<"deployment">> => deployment()
%% }
-type get_deployment_output() :: #{binary() => any()}.

%% Example:
%% create_environment_input() :: #{
%%   <<"codebuildRoleArn">> => string(),
%%   <<"componentRoleArn">> => string(),
%%   <<"description">> => string(),
%%   <<"environmentAccountConnectionId">> => string(),
%%   <<"name">> := string(),
%%   <<"protonServiceRoleArn">> => string(),
%%   <<"provisioningRepository">> => repository_branch_input(),
%%   <<"spec">> := string(),
%%   <<"tags">> => list(tag()),
%%   <<"templateMajorVersion">> := string(),
%%   <<"templateMinorVersion">> => string(),
%%   <<"templateName">> := string()
%% }
-type create_environment_input() :: #{binary() => any()}.

%% Example:
%% environment_template_version_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"lastModifiedAt">> => [non_neg_integer()],
%%   <<"majorVersion">> => string(),
%%   <<"minorVersion">> => string(),
%%   <<"recommendedMinorVersion">> => string(),
%%   <<"status">> => string(),
%%   <<"statusMessage">> => string(),
%%   <<"templateName">> => string()
%% }
-type environment_template_version_summary() :: #{binary() => any()}.

%% Example:
%% get_environment_account_connection_input() :: #{
%%   <<"id">> => string()
%% }
-type get_environment_account_connection_input() :: #{binary() => any()}.

%% Example:
%% delete_service_sync_config_input() :: #{
%%   <<"serviceName">> := string()
%% }
-type delete_service_sync_config_input() :: #{binary() => any()}.

%% Example:
%% sync_blocker_context() :: #{
%%   <<"key">> => [string()],
%%   <<"value">> => [string()]
%% }
-type sync_blocker_context() :: #{binary() => any()}.

%% Example:
%% get_service_instance_output() :: #{
%%   <<"serviceInstance">> := service_instance()
%% }
-type get_service_instance_output() :: #{binary() => any()}.

%% Example:
%% delete_component_output() :: #{
%%   <<"component">> => component()
%% }
-type delete_component_output() :: #{binary() => any()}.

%% Example:
%% list_component_provisioned_resources_input() :: #{
%%   <<"componentName">> := string(),
%%   <<"nextToken">> => string()
%% }
-type list_component_provisioned_resources_input() :: #{binary() => any()}.

%% Example:
%% repository_branch() :: #{
%%   <<"arn">> => string(),
%%   <<"branch">> => string(),
%%   <<"name">> => string(),
%%   <<"provider">> => string()
%% }
-type repository_branch() :: #{binary() => any()}.

%% Example:
%% environment_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"componentRoleArn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"deploymentStatus">> => string(),
%%   <<"deploymentStatusMessage">> => string(),
%%   <<"description">> => string(),
%%   <<"environmentAccountConnectionId">> => string(),
%%   <<"environmentAccountId">> => string(),
%%   <<"lastAttemptedDeploymentId">> => string(),
%%   <<"lastDeploymentAttemptedAt">> => [non_neg_integer()],
%%   <<"lastDeploymentSucceededAt">> => [non_neg_integer()],
%%   <<"lastSucceededDeploymentId">> => string(),
%%   <<"name">> => string(),
%%   <<"protonServiceRoleArn">> => string(),
%%   <<"provisioning">> => string(),
%%   <<"templateMajorVersion">> => string(),
%%   <<"templateMinorVersion">> => string(),
%%   <<"templateName">> => string()
%% }
-type environment_summary() :: #{binary() => any()}.

%% Example:
%% s3_object_source() :: #{
%%   <<"bucket">> => string(),
%%   <<"key">> => string()
%% }
-type s3_object_source() :: #{binary() => any()}.

%% Example:
%% delete_environment_input() :: #{
%%   <<"name">> => string()
%% }
-type delete_environment_input() :: #{binary() => any()}.

%% Example:
%% list_service_instance_provisioned_resources_input() :: #{
%%   <<"nextToken">> => string(),
%%   <<"serviceInstanceName">> := string(),
%%   <<"serviceName">> := string()
%% }
-type list_service_instance_provisioned_resources_input() :: #{binary() => any()}.

%% Example:
%% get_deployment_input() :: #{
%%   <<"componentName">> => string(),
%%   <<"environmentName">> => string(),
%%   <<"id">> := string(),
%%   <<"serviceInstanceName">> => string(),
%%   <<"serviceName">> => string()
%% }
-type get_deployment_input() :: #{binary() => any()}.

%% Example:
%% get_service_instance_sync_status_input() :: #{
%%   <<"serviceInstanceName">> := string(),
%%   <<"serviceName">> := string()
%% }
-type get_service_instance_sync_status_input() :: #{binary() => any()}.

%% Example:
%% get_environment_template_input() :: #{
%%   <<"name">> := string()
%% }
-type get_environment_template_input() :: #{binary() => any()}.

%% Example:
%% get_environment_template_version_output() :: #{
%%   <<"environmentTemplateVersion">> := environment_template_version()
%% }
-type get_environment_template_version_output() :: #{binary() => any()}.

%% Example:
%% delete_environment_template_input() :: #{
%%   <<"name">> => string()
%% }
-type delete_environment_template_input() :: #{binary() => any()}.

%% Example:
%% list_repositories_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_repositories_input() :: #{binary() => any()}.

%% Example:
%% update_service_output() :: #{
%%   <<"service">> := service()
%% }
-type update_service_output() :: #{binary() => any()}.

%% Example:
%% compatible_environment_template_input() :: #{
%%   <<"majorVersion">> => string(),
%%   <<"templateName">> => string()
%% }
-type compatible_environment_template_input() :: #{binary() => any()}.

%% Example:
%% update_service_instance_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"deploymentType">> => string(),
%%   <<"name">> => string(),
%%   <<"serviceName">> => string(),
%%   <<"spec">> => string(),
%%   <<"templateMajorVersion">> => string(),
%%   <<"templateMinorVersion">> => string()
%% }
-type update_service_instance_input() :: #{binary() => any()}.

%% Example:
%% create_service_instance_output() :: #{
%%   <<"serviceInstance">> := service_instance()
%% }
-type create_service_instance_output() :: #{binary() => any()}.

%% Example:
%% get_repository_output() :: #{
%%   <<"repository">> := repository()
%% }
-type get_repository_output() :: #{binary() => any()}.

%% Example:
%% service_pipeline_state() :: #{
%%   <<"spec">> => string(),
%%   <<"templateMajorVersion">> => string(),
%%   <<"templateMinorVersion">> => string(),
%%   <<"templateName">> => string()
%% }
-type service_pipeline_state() :: #{binary() => any()}.

%% Example:
%% service() :: #{
%%   <<"arn">> => string(),
%%   <<"branchName">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"lastModifiedAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"pipeline">> => service_pipeline(),
%%   <<"repositoryConnectionArn">> => string(),
%%   <<"repositoryId">> => string(),
%%   <<"spec">> => string(),
%%   <<"status">> => string(),
%%   <<"statusMessage">> => string(),
%%   <<"templateName">> => string()
%% }
-type service() :: #{binary() => any()}.

%% Example:
%% cancel_service_pipeline_deployment_input() :: #{
%%   <<"serviceName">> => string()
%% }
-type cancel_service_pipeline_deployment_input() :: #{binary() => any()}.

%% Example:
%% list_service_instance_provisioned_resources_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"provisionedResources">> := list(provisioned_resource())
%% }
-type list_service_instance_provisioned_resources_output() :: #{binary() => any()}.

%% Example:
%% create_service_template_output() :: #{
%%   <<"serviceTemplate">> := service_template()
%% }
-type create_service_template_output() :: #{binary() => any()}.

%% Example:
%% list_environments_input() :: #{
%%   <<"environmentTemplates">> => list(environment_template_filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_environments_input() :: #{binary() => any()}.

%% Example:
%% create_service_sync_config_output() :: #{
%%   <<"serviceSyncConfig">> => service_sync_config()
%% }
-type create_service_sync_config_output() :: #{binary() => any()}.

%% Example:
%% delete_environment_template_version_input() :: #{
%%   <<"majorVersion">> => string(),
%%   <<"minorVersion">> => string(),
%%   <<"templateName">> => string()
%% }
-type delete_environment_template_version_input() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"tags">> := list(tag())
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.

%% Example:
%% component_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"deploymentStatus">> => string(),
%%   <<"deploymentStatusMessage">> => string(),
%%   <<"environmentName">> => string(),
%%   <<"lastAttemptedDeploymentId">> => string(),
%%   <<"lastDeploymentAttemptedAt">> => [non_neg_integer()],
%%   <<"lastDeploymentSucceededAt">> => [non_neg_integer()],
%%   <<"lastModifiedAt">> => [non_neg_integer()],
%%   <<"lastSucceededDeploymentId">> => string(),
%%   <<"name">> => string(),
%%   <<"serviceInstanceName">> => string(),
%%   <<"serviceName">> => string()
%% }
-type component_summary() :: #{binary() => any()}.

%% Example:
%% delete_service_template_output() :: #{
%%   <<"serviceTemplate">> => service_template()
%% }
-type delete_service_template_output() :: #{binary() => any()}.

%% Example:
%% cancel_environment_deployment_output() :: #{
%%   <<"environment">> := environment()
%% }
-type cancel_environment_deployment_output() :: #{binary() => any()}.

%% Example:
%% repository_sync_definition() :: #{
%%   <<"branch">> => string(),
%%   <<"directory">> => [string()],
%%   <<"parent">> => [string()],
%%   <<"target">> => [string()]
%% }
-type repository_sync_definition() :: #{binary() => any()}.

%% Example:
%% environment_template_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"lastModifiedAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"provisioning">> => string(),
%%   <<"recommendedVersion">> => string()
%% }
-type environment_template_summary() :: #{binary() => any()}.

%% Example:
%% list_components_output() :: #{
%%   <<"components">> := list(component_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_components_output() :: #{binary() => any()}.

%% Example:
%% component_state() :: #{
%%   <<"serviceInstanceName">> => string(),
%%   <<"serviceName">> => string(),
%%   <<"serviceSpec">> => string(),
%%   <<"templateFile">> => string()
%% }
-type component_state() :: #{binary() => any()}.

%% Example:
%% create_component_output() :: #{
%%   <<"component">> := component()
%% }
-type create_component_output() :: #{binary() => any()}.

%% Example:
%% create_template_sync_config_input() :: #{
%%   <<"branch">> := string(),
%%   <<"repositoryName">> := string(),
%%   <<"repositoryProvider">> := string(),
%%   <<"subdirectory">> => string(),
%%   <<"templateName">> := string(),
%%   <<"templateType">> := string()
%% }
-type create_template_sync_config_input() :: #{binary() => any()}.

%% Example:
%% reject_environment_account_connection_input() :: #{
%%   <<"id">> => string()
%% }
-type reject_environment_account_connection_input() :: #{binary() => any()}.

%% Example:
%% create_environment_output() :: #{
%%   <<"environment">> := environment()
%% }
-type create_environment_output() :: #{binary() => any()}.

%% Example:
%% service_template_version() :: #{
%%   <<"arn">> => string(),
%%   <<"compatibleEnvironmentTemplates">> => list(compatible_environment_template()),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"lastModifiedAt">> => [non_neg_integer()],
%%   <<"majorVersion">> => string(),
%%   <<"minorVersion">> => string(),
%%   <<"recommendedMinorVersion">> => string(),
%%   <<"schema">> => string(),
%%   <<"status">> => string(),
%%   <<"statusMessage">> => string(),
%%   <<"supportedComponentSources">> => list(string()),
%%   <<"templateName">> => string()
%% }
-type service_template_version() :: #{binary() => any()}.

%% Example:
%% update_environment_account_connection_input() :: #{
%%   <<"codebuildRoleArn">> => string(),
%%   <<"componentRoleArn">> => string(),
%%   <<"id">> => string(),
%%   <<"roleArn">> => string()
%% }
-type update_environment_account_connection_input() :: #{binary() => any()}.

%% Example:
%% create_service_template_version_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"compatibleEnvironmentTemplates">> := list(compatible_environment_template_input()),
%%   <<"description">> => string(),
%%   <<"majorVersion">> => string(),
%%   <<"source">> := list(),
%%   <<"supportedComponentSources">> => list(string()),
%%   <<"tags">> => list(tag()),
%%   <<"templateName">> := string()
%% }
-type create_service_template_version_input() :: #{binary() => any()}.

%% Example:
%% delete_repository_output() :: #{
%%   <<"repository">> => repository()
%% }
-type delete_repository_output() :: #{binary() => any()}.

%% Example:
%% get_service_template_version_output() :: #{
%%   <<"serviceTemplateVersion">> := service_template_version()
%% }
-type get_service_template_version_output() :: #{binary() => any()}.

%% Example:
%% repository_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"connectionArn">> => string(),
%%   <<"name">> => string(),
%%   <<"provider">> => string()
%% }
-type repository_summary() :: #{binary() => any()}.

%% Example:
%% delete_environment_account_connection_output() :: #{
%%   <<"environmentAccountConnection">> => environment_account_connection()
%% }
-type delete_environment_account_connection_output() :: #{binary() => any()}.

%% Example:
%% get_environment_template_version_input() :: #{
%%   <<"majorVersion">> => string(),
%%   <<"minorVersion">> => string(),
%%   <<"templateName">> => string()
%% }
-type get_environment_template_version_input() :: #{binary() => any()}.

%% Example:
%% list_environment_outputs_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"outputs">> := list(output())
%% }
-type list_environment_outputs_output() :: #{binary() => any()}.

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
%% create_environment_template_input() :: #{
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"encryptionKey">> => string(),
%%   <<"name">> := string(),
%%   <<"provisioning">> => string(),
%%   <<"tags">> => list(tag())
%% }
-type create_environment_template_input() :: #{binary() => any()}.

%% Example:
%% get_service_sync_config_input() :: #{
%%   <<"serviceName">> := string()
%% }
-type get_service_sync_config_input() :: #{binary() => any()}.

%% Example:
%% update_environment_template_output() :: #{
%%   <<"environmentTemplate">> := environment_template()
%% }
-type update_environment_template_output() :: #{binary() => any()}.

%% Example:
%% notify_resource_deployment_status_change_input() :: #{
%%   <<"deploymentId">> => string(),
%%   <<"outputs">> => list(output()),
%%   <<"resourceArn">> := string(),
%%   <<"status">> => string(),
%%   <<"statusMessage">> => string()
%% }
-type notify_resource_deployment_status_change_input() :: #{binary() => any()}.

%% Example:
%% update_environment_output() :: #{
%%   <<"environment">> := environment()
%% }
-type update_environment_output() :: #{binary() => any()}.

%% Example:
%% delete_template_sync_config_output() :: #{
%%   <<"templateSyncConfig">> => template_sync_config()
%% }
-type delete_template_sync_config_output() :: #{binary() => any()}.

%% Example:
%% environment_account_connection() :: #{
%%   <<"arn">> => string(),
%%   <<"codebuildRoleArn">> => string(),
%%   <<"componentRoleArn">> => string(),
%%   <<"environmentAccountId">> => string(),
%%   <<"environmentName">> => string(),
%%   <<"id">> => string(),
%%   <<"lastModifiedAt">> => [non_neg_integer()],
%%   <<"managementAccountId">> => string(),
%%   <<"requestedAt">> => [non_neg_integer()],
%%   <<"roleArn">> => string(),
%%   <<"status">> => string()
%% }
-type environment_account_connection() :: #{binary() => any()}.

%% Example:
%% service_instance_state() :: #{
%%   <<"lastSuccessfulComponentDeploymentIds">> => list(string()),
%%   <<"lastSuccessfulEnvironmentDeploymentId">> => string(),
%%   <<"lastSuccessfulServicePipelineDeploymentId">> => string(),
%%   <<"spec">> => string(),
%%   <<"templateMajorVersion">> => string(),
%%   <<"templateMinorVersion">> => string(),
%%   <<"templateName">> => string()
%% }
-type service_instance_state() :: #{binary() => any()}.

%% Example:
%% get_service_output() :: #{
%%   <<"service">> => service()
%% }
-type get_service_output() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% create_component_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"environmentName">> => string(),
%%   <<"manifest">> := string(),
%%   <<"name">> := string(),
%%   <<"serviceInstanceName">> => string(),
%%   <<"serviceName">> => string(),
%%   <<"serviceSpec">> => string(),
%%   <<"tags">> => list(tag()),
%%   <<"templateFile">> := string()
%% }
-type create_component_input() :: #{binary() => any()}.

%% Example:
%% environment() :: #{
%%   <<"arn">> => string(),
%%   <<"codebuildRoleArn">> => string(),
%%   <<"componentRoleArn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"deploymentStatus">> => string(),
%%   <<"deploymentStatusMessage">> => string(),
%%   <<"description">> => string(),
%%   <<"environmentAccountConnectionId">> => string(),
%%   <<"environmentAccountId">> => string(),
%%   <<"lastAttemptedDeploymentId">> => string(),
%%   <<"lastDeploymentAttemptedAt">> => [non_neg_integer()],
%%   <<"lastDeploymentSucceededAt">> => [non_neg_integer()],
%%   <<"lastSucceededDeploymentId">> => string(),
%%   <<"name">> => string(),
%%   <<"protonServiceRoleArn">> => string(),
%%   <<"provisioning">> => string(),
%%   <<"provisioningRepository">> => repository_branch(),
%%   <<"spec">> => string(),
%%   <<"templateMajorVersion">> => string(),
%%   <<"templateMinorVersion">> => string(),
%%   <<"templateName">> => string()
%% }
-type environment() :: #{binary() => any()}.

%% Example:
%% get_account_settings_input() :: #{

%% }
-type get_account_settings_input() :: #{binary() => any()}.

%% Example:
%% list_component_outputs_input() :: #{
%%   <<"componentName">> := string(),
%%   <<"deploymentId">> => string(),
%%   <<"nextToken">> => string()
%% }
-type list_component_outputs_input() :: #{binary() => any()}.

%% Example:
%% repository() :: #{
%%   <<"arn">> => string(),
%%   <<"connectionArn">> => string(),
%%   <<"encryptionKey">> => string(),
%%   <<"name">> => string(),
%%   <<"provider">> => string()
%% }
-type repository() :: #{binary() => any()}.

%% Example:
%% get_template_sync_status_input() :: #{
%%   <<"templateName">> := string(),
%%   <<"templateType">> := string(),
%%   <<"templateVersion">> := string()
%% }
-type get_template_sync_status_input() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% service_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"lastModifiedAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"status">> => string(),
%%   <<"statusMessage">> => string(),
%%   <<"templateName">> => string()
%% }
-type service_summary() :: #{binary() => any()}.

%% Example:
%% service_instance() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"deploymentStatus">> => string(),
%%   <<"deploymentStatusMessage">> => string(),
%%   <<"environmentName">> => string(),
%%   <<"lastAttemptedDeploymentId">> => string(),
%%   <<"lastClientRequestToken">> => [string()],
%%   <<"lastDeploymentAttemptedAt">> => [non_neg_integer()],
%%   <<"lastDeploymentSucceededAt">> => [non_neg_integer()],
%%   <<"lastSucceededDeploymentId">> => string(),
%%   <<"name">> => string(),
%%   <<"serviceName">> => string(),
%%   <<"spec">> => string(),
%%   <<"templateMajorVersion">> => string(),
%%   <<"templateMinorVersion">> => string(),
%%   <<"templateName">> => string()
%% }
-type service_instance() :: #{binary() => any()}.

%% Example:
%% cancel_environment_deployment_input() :: #{
%%   <<"environmentName">> => string()
%% }
-type cancel_environment_deployment_input() :: #{binary() => any()}.

%% Example:
%% component() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"deploymentStatus">> => string(),
%%   <<"deploymentStatusMessage">> => string(),
%%   <<"description">> => string(),
%%   <<"environmentName">> => string(),
%%   <<"lastAttemptedDeploymentId">> => string(),
%%   <<"lastClientRequestToken">> => [string()],
%%   <<"lastDeploymentAttemptedAt">> => [non_neg_integer()],
%%   <<"lastDeploymentSucceededAt">> => [non_neg_integer()],
%%   <<"lastModifiedAt">> => [non_neg_integer()],
%%   <<"lastSucceededDeploymentId">> => string(),
%%   <<"name">> => string(),
%%   <<"serviceInstanceName">> => string(),
%%   <<"serviceName">> => string(),
%%   <<"serviceSpec">> => string()
%% }
-type component() :: #{binary() => any()}.

%% Example:
%% resource_counts_summary() :: #{
%%   <<"behindMajor">> => [integer()],
%%   <<"behindMinor">> => [integer()],
%%   <<"failed">> => [integer()],
%%   <<"total">> => [integer()],
%%   <<"upToDate">> => [integer()]
%% }
-type resource_counts_summary() :: #{binary() => any()}.

%% Example:
%% service_pipeline() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"deploymentStatus">> => string(),
%%   <<"deploymentStatusMessage">> => string(),
%%   <<"lastAttemptedDeploymentId">> => string(),
%%   <<"lastDeploymentAttemptedAt">> => [non_neg_integer()],
%%   <<"lastDeploymentSucceededAt">> => [non_neg_integer()],
%%   <<"lastSucceededDeploymentId">> => string(),
%%   <<"spec">> => string(),
%%   <<"templateMajorVersion">> => string(),
%%   <<"templateMinorVersion">> => string(),
%%   <<"templateName">> => string()
%% }
-type service_pipeline() :: #{binary() => any()}.

%% Example:
%% list_service_pipeline_outputs_input() :: #{
%%   <<"deploymentId">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"serviceName">> := string()
%% }
-type list_service_pipeline_outputs_input() :: #{binary() => any()}.

%% Example:
%% list_components_input() :: #{
%%   <<"environmentName">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"serviceInstanceName">> => string(),
%%   <<"serviceName">> => string()
%% }
-type list_components_input() :: #{binary() => any()}.

%% Example:
%% get_environment_input() :: #{
%%   <<"name">> => string()
%% }
-type get_environment_input() :: #{binary() => any()}.

%% Example:
%% list_environments_output() :: #{
%%   <<"environments">> := list(environment_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_environments_output() :: #{binary() => any()}.

%% Example:
%% update_environment_input() :: #{
%%   <<"codebuildRoleArn">> => string(),
%%   <<"componentRoleArn">> => string(),
%%   <<"deploymentType">> => string(),
%%   <<"description">> => string(),
%%   <<"environmentAccountConnectionId">> => string(),
%%   <<"name">> => string(),
%%   <<"protonServiceRoleArn">> => string(),
%%   <<"provisioningRepository">> => repository_branch_input(),
%%   <<"spec">> => string(),
%%   <<"templateMajorVersion">> => string(),
%%   <<"templateMinorVersion">> => string()
%% }
-type update_environment_input() :: #{binary() => any()}.

%% Example:
%% get_repository_sync_status_output() :: #{
%%   <<"latestSync">> => repository_sync_attempt()
%% }
-type get_repository_sync_status_output() :: #{binary() => any()}.

%% Example:
%% list_service_instance_outputs_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"outputs">> := list(output())
%% }
-type list_service_instance_outputs_output() :: #{binary() => any()}.

%% Example:
%% sync_blocker() :: #{
%%   <<"contexts">> => list(sync_blocker_context()),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdReason">> => [string()],
%%   <<"id">> => [string()],
%%   <<"resolvedAt">> => [non_neg_integer()],
%%   <<"resolvedReason">> => [string()],
%%   <<"status">> => string(),
%%   <<"type">> => string()
%% }
-type sync_blocker() :: #{binary() => any()}.

%% Example:
%% get_environment_template_output() :: #{
%%   <<"environmentTemplate">> := environment_template()
%% }
-type get_environment_template_output() :: #{binary() => any()}.

%% Example:
%% environment_state() :: #{
%%   <<"spec">> => string(),
%%   <<"templateMajorVersion">> => string(),
%%   <<"templateMinorVersion">> => string(),
%%   <<"templateName">> => string()
%% }
-type environment_state() :: #{binary() => any()}.

%% Example:
%% notify_resource_deployment_status_change_output() :: #{

%% }
-type notify_resource_deployment_status_change_output() :: #{binary() => any()}.

%% Example:
%% list_service_instances_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"serviceInstances">> := list(service_instance_summary())
%% }
-type list_service_instances_output() :: #{binary() => any()}.

%% Example:
%% environment_account_connection_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"componentRoleArn">> => string(),
%%   <<"environmentAccountId">> => string(),
%%   <<"environmentName">> => string(),
%%   <<"id">> => string(),
%%   <<"lastModifiedAt">> => [non_neg_integer()],
%%   <<"managementAccountId">> => string(),
%%   <<"requestedAt">> => [non_neg_integer()],
%%   <<"roleArn">> => string(),
%%   <<"status">> => string()
%% }
-type environment_account_connection_summary() :: #{binary() => any()}.

%% Example:
%% delete_service_sync_config_output() :: #{
%%   <<"serviceSyncConfig">> => service_sync_config()
%% }
-type delete_service_sync_config_output() :: #{binary() => any()}.

%% Example:
%% list_component_provisioned_resources_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"provisionedResources">> := list(provisioned_resource())
%% }
-type list_component_provisioned_resources_output() :: #{binary() => any()}.

%% Example:
%% create_environment_template_output() :: #{
%%   <<"environmentTemplate">> := environment_template()
%% }
-type create_environment_template_output() :: #{binary() => any()}.

%% Example:
%% delete_service_template_version_input() :: #{
%%   <<"majorVersion">> => string(),
%%   <<"minorVersion">> => string(),
%%   <<"templateName">> => string()
%% }
-type delete_service_template_version_input() :: #{binary() => any()}.

%% Example:
%% update_service_template_output() :: #{
%%   <<"serviceTemplate">> := service_template()
%% }
-type update_service_template_output() :: #{binary() => any()}.

%% Example:
%% delete_deployment_input() :: #{
%%   <<"id">> := string()
%% }
-type delete_deployment_input() :: #{binary() => any()}.

%% Example:
%% list_service_instances_input() :: #{
%%   <<"filters">> => list(list_service_instances_filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"serviceName">> => string(),
%%   <<"sortBy">> => string(),
%%   <<"sortOrder">> => string()
%% }
-type list_service_instances_input() :: #{binary() => any()}.

%% Example:
%% counts_summary() :: #{
%%   <<"components">> => resource_counts_summary(),
%%   <<"environmentTemplates">> => resource_counts_summary(),
%%   <<"environments">> => resource_counts_summary(),
%%   <<"pipelines">> => resource_counts_summary(),
%%   <<"serviceInstances">> => resource_counts_summary(),
%%   <<"serviceTemplates">> => resource_counts_summary(),
%%   <<"services">> => resource_counts_summary()
%% }
-type counts_summary() :: #{binary() => any()}.

%% Example:
%% tag_resource_input() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := list(tag())
%% }
-type tag_resource_input() :: #{binary() => any()}.

%% Example:
%% template_sync_config() :: #{
%%   <<"branch">> => string(),
%%   <<"repositoryName">> => string(),
%%   <<"repositoryProvider">> => string(),
%%   <<"subdirectory">> => string(),
%%   <<"templateName">> => string(),
%%   <<"templateType">> => string()
%% }
-type template_sync_config() :: #{binary() => any()}.

%% Example:
%% delete_service_output() :: #{
%%   <<"service">> => service()
%% }
-type delete_service_output() :: #{binary() => any()}.

%% Example:
%% delete_environment_template_version_output() :: #{
%%   <<"environmentTemplateVersion">> => environment_template_version()
%% }
-type delete_environment_template_version_output() :: #{binary() => any()}.

%% Example:
%% environment_template_version() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"lastModifiedAt">> => [non_neg_integer()],
%%   <<"majorVersion">> => string(),
%%   <<"minorVersion">> => string(),
%%   <<"recommendedMinorVersion">> => string(),
%%   <<"schema">> => string(),
%%   <<"status">> => string(),
%%   <<"statusMessage">> => string(),
%%   <<"templateName">> => string()
%% }
-type environment_template_version() :: #{binary() => any()}.

%% Example:
%% list_service_templates_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"templates">> := list(service_template_summary())
%% }
-type list_service_templates_output() :: #{binary() => any()}.

%% Example:
%% list_environment_templates_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_environment_templates_input() :: #{binary() => any()}.

%% Example:
%% list_repository_sync_definitions_input() :: #{
%%   <<"nextToken">> => string(),
%%   <<"repositoryName">> := string(),
%%   <<"repositoryProvider">> := string(),
%%   <<"syncType">> := string()
%% }
-type list_repository_sync_definitions_input() :: #{binary() => any()}.

%% Example:
%% cancel_service_instance_deployment_input() :: #{
%%   <<"serviceInstanceName">> => string(),
%%   <<"serviceName">> => string()
%% }
-type cancel_service_instance_deployment_input() :: #{binary() => any()}.

%% Example:
%% update_service_template_version_output() :: #{
%%   <<"serviceTemplateVersion">> := service_template_version()
%% }
-type update_service_template_version_output() :: #{binary() => any()}.

%% Example:
%% tag_resource_output() :: #{

%% }
-type tag_resource_output() :: #{binary() => any()}.

%% Example:
%% list_environment_outputs_input() :: #{
%%   <<"deploymentId">> => string(),
%%   <<"environmentName">> := string(),
%%   <<"nextToken">> => string()
%% }
-type list_environment_outputs_input() :: #{binary() => any()}.

%% Example:
%% delete_service_template_version_output() :: #{
%%   <<"serviceTemplateVersion">> => service_template_version()
%% }
-type delete_service_template_version_output() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% list_service_instance_outputs_input() :: #{
%%   <<"deploymentId">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"serviceInstanceName">> := string(),
%%   <<"serviceName">> := string()
%% }
-type list_service_instance_outputs_input() :: #{binary() => any()}.

%% Example:
%% delete_environment_output() :: #{
%%   <<"environment">> => environment()
%% }
-type delete_environment_output() :: #{binary() => any()}.

%% Example:
%% get_component_input() :: #{
%%   <<"name">> => string()
%% }
-type get_component_input() :: #{binary() => any()}.

%% Example:
%% list_service_template_versions_input() :: #{
%%   <<"majorVersion">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"templateName">> := string()
%% }
-type list_service_template_versions_input() :: #{binary() => any()}.

%% Example:
%% update_service_sync_blocker_output() :: #{
%%   <<"serviceInstanceName">> => string(),
%%   <<"serviceName">> := string(),
%%   <<"serviceSyncBlocker">> := sync_blocker()
%% }
-type update_service_sync_blocker_output() :: #{binary() => any()}.

%% Example:
%% update_account_settings_input() :: #{
%%   <<"deletePipelineProvisioningRepository">> => [boolean()],
%%   <<"pipelineCodebuildRoleArn">> => string(),
%%   <<"pipelineProvisioningRepository">> => repository_branch_input(),
%%   <<"pipelineServiceRoleArn">> => string()
%% }
-type update_account_settings_input() :: #{binary() => any()}.

%% Example:
%% delete_repository_input() :: #{
%%   <<"name">> => string(),
%%   <<"provider">> => string()
%% }
-type delete_repository_input() :: #{binary() => any()}.

%% Example:
%% provisioned_resource() :: #{
%%   <<"identifier">> => string(),
%%   <<"name">> => string(),
%%   <<"provisioningEngine">> => string()
%% }
-type provisioned_resource() :: #{binary() => any()}.

%% Example:
%% delete_service_input() :: #{
%%   <<"name">> => string()
%% }
-type delete_service_input() :: #{binary() => any()}.

%% Example:
%% update_account_settings_output() :: #{
%%   <<"accountSettings">> := account_settings()
%% }
-type update_account_settings_output() :: #{binary() => any()}.

%% Example:
%% create_service_template_input() :: #{
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"encryptionKey">> => string(),
%%   <<"name">> := string(),
%%   <<"pipelineProvisioning">> => string(),
%%   <<"tags">> => list(tag())
%% }
-type create_service_template_input() :: #{binary() => any()}.

%% Example:
%% list_environment_provisioned_resources_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"provisionedResources">> := list(provisioned_resource())
%% }
-type list_environment_provisioned_resources_output() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% environment_template() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"encryptionKey">> => string(),
%%   <<"lastModifiedAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"provisioning">> => string(),
%%   <<"recommendedVersion">> => string()
%% }
-type environment_template() :: #{binary() => any()}.

%% Example:
%% untag_resource_input() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_input() :: #{binary() => any()}.

%% Example:
%% list_service_instances_filter() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type list_service_instances_filter() :: #{binary() => any()}.

%% Example:
%% get_environment_account_connection_output() :: #{
%%   <<"environmentAccountConnection">> := environment_account_connection()
%% }
-type get_environment_account_connection_output() :: #{binary() => any()}.

%% Example:
%% get_resources_summary_input() :: #{

%% }
-type get_resources_summary_input() :: #{binary() => any()}.

%% Example:
%% delete_deployment_output() :: #{
%%   <<"deployment">> => deployment()
%% }
-type delete_deployment_output() :: #{binary() => any()}.

%% Example:
%% cancel_component_deployment_input() :: #{
%%   <<"componentName">> => string()
%% }
-type cancel_component_deployment_input() :: #{binary() => any()}.

%% Example:
%% list_service_template_versions_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"templateVersions">> := list(service_template_version_summary())
%% }
-type list_service_template_versions_output() :: #{binary() => any()}.

%% Example:
%% delete_environment_account_connection_input() :: #{
%%   <<"id">> => string()
%% }
-type delete_environment_account_connection_input() :: #{binary() => any()}.

%% Example:
%% get_service_sync_blocker_summary_input() :: #{
%%   <<"serviceInstanceName">> => string(),
%%   <<"serviceName">> := string()
%% }
-type get_service_sync_blocker_summary_input() :: #{binary() => any()}.

%% Example:
%% create_service_output() :: #{
%%   <<"service">> := service()
%% }
-type create_service_output() :: #{binary() => any()}.

%% Example:
%% list_service_templates_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_service_templates_input() :: #{binary() => any()}.

%% Example:
%% get_service_template_input() :: #{
%%   <<"name">> => string()
%% }
-type get_service_template_input() :: #{binary() => any()}.

%% Example:
%% list_service_pipeline_provisioned_resources_input() :: #{
%%   <<"nextToken">> => string(),
%%   <<"serviceName">> := string()
%% }
-type list_service_pipeline_provisioned_resources_input() :: #{binary() => any()}.

%% Example:
%% account_settings() :: #{
%%   <<"pipelineCodebuildRoleArn">> => string(),
%%   <<"pipelineProvisioningRepository">> => repository_branch(),
%%   <<"pipelineServiceRoleArn">> => string()
%% }
-type account_settings() :: #{binary() => any()}.

%% Example:
%% update_service_pipeline_output() :: #{
%%   <<"pipeline">> := service_pipeline()
%% }
-type update_service_pipeline_output() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => [string()],
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_input() :: #{binary() => any()}.

%% Example:
%% update_component_output() :: #{
%%   <<"component">> := component()
%% }
-type update_component_output() :: #{binary() => any()}.

%% Example:
%% list_service_pipeline_outputs_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"outputs">> := list(output())
%% }
-type list_service_pipeline_outputs_output() :: #{binary() => any()}.

%% Example:
%% resource_sync_attempt() :: #{
%%   <<"events">> => list(resource_sync_event()),
%%   <<"initialRevision">> => revision(),
%%   <<"startedAt">> => [non_neg_integer()],
%%   <<"status">> => string(),
%%   <<"target">> => [string()],
%%   <<"targetRevision">> => revision()
%% }
-type resource_sync_attempt() :: #{binary() => any()}.

%% Example:
%% create_service_template_version_output() :: #{
%%   <<"serviceTemplateVersion">> := service_template_version()
%% }
-type create_service_template_version_output() :: #{binary() => any()}.

%% Example:
%% untag_resource_output() :: #{

%% }
-type untag_resource_output() :: #{binary() => any()}.

%% Example:
%% list_environment_account_connections_input() :: #{
%%   <<"environmentName">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"requestedBy">> := string(),
%%   <<"statuses">> => list(string())
%% }
-type list_environment_account_connections_input() :: #{binary() => any()}.

%% Example:
%% list_repositories_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"repositories">> := list(repository_summary())
%% }
-type list_repositories_output() :: #{binary() => any()}.

%% Example:
%% get_template_sync_config_input() :: #{
%%   <<"templateName">> := string(),
%%   <<"templateType">> := string()
%% }
-type get_template_sync_config_input() :: #{binary() => any()}.

%% Example:
%% create_environment_account_connection_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"codebuildRoleArn">> => string(),
%%   <<"componentRoleArn">> => string(),
%%   <<"environmentName">> := string(),
%%   <<"managementAccountId">> := string(),
%%   <<"roleArn">> => string(),
%%   <<"tags">> => list(tag())
%% }
-type create_environment_account_connection_input() :: #{binary() => any()}.

%% Example:
%% create_environment_template_version_output() :: #{
%%   <<"environmentTemplateVersion">> := environment_template_version()
%% }
-type create_environment_template_version_output() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% get_account_settings_output() :: #{
%%   <<"accountSettings">> => account_settings()
%% }
-type get_account_settings_output() :: #{binary() => any()}.

%% Example:
%% get_repository_sync_status_input() :: #{
%%   <<"branch">> := string(),
%%   <<"repositoryName">> := string(),
%%   <<"repositoryProvider">> := string(),
%%   <<"syncType">> := string()
%% }
-type get_repository_sync_status_input() :: #{binary() => any()}.

%% Example:
%% service_instance_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"deploymentStatus">> => string(),
%%   <<"deploymentStatusMessage">> => string(),
%%   <<"environmentName">> => string(),
%%   <<"lastAttemptedDeploymentId">> => string(),
%%   <<"lastDeploymentAttemptedAt">> => [non_neg_integer()],
%%   <<"lastDeploymentSucceededAt">> => [non_neg_integer()],
%%   <<"lastSucceededDeploymentId">> => string(),
%%   <<"name">> => string(),
%%   <<"serviceName">> => string(),
%%   <<"templateMajorVersion">> => string(),
%%   <<"templateMinorVersion">> => string(),
%%   <<"templateName">> => string()
%% }
-type service_instance_summary() :: #{binary() => any()}.

%% Example:
%% service_template_version_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"lastModifiedAt">> => [non_neg_integer()],
%%   <<"majorVersion">> => string(),
%%   <<"minorVersion">> => string(),
%%   <<"recommendedMinorVersion">> => string(),
%%   <<"status">> => string(),
%%   <<"statusMessage">> => string(),
%%   <<"templateName">> => string()
%% }
-type service_template_version_summary() :: #{binary() => any()}.

%% Example:
%% list_repository_sync_definitions_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"syncDefinitions">> := list(repository_sync_definition())
%% }
-type list_repository_sync_definitions_output() :: #{binary() => any()}.

%% Example:
%% get_service_template_version_input() :: #{
%%   <<"majorVersion">> => string(),
%%   <<"minorVersion">> => string(),
%%   <<"templateName">> => string()
%% }
-type get_service_template_version_input() :: #{binary() => any()}.

%% Example:
%% update_environment_account_connection_output() :: #{
%%   <<"environmentAccountConnection">> := environment_account_connection()
%% }
-type update_environment_account_connection_output() :: #{binary() => any()}.

%% Example:
%% get_service_sync_blocker_summary_output() :: #{
%%   <<"serviceSyncBlockerSummary">> => service_sync_blocker_summary()
%% }
-type get_service_sync_blocker_summary_output() :: #{binary() => any()}.

%% Example:
%% update_environment_template_input() :: #{
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"name">> => string()
%% }
-type update_environment_template_input() :: #{binary() => any()}.

%% Example:
%% list_environment_provisioned_resources_input() :: #{
%%   <<"environmentName">> := string(),
%%   <<"nextToken">> => string()
%% }
-type list_environment_provisioned_resources_input() :: #{binary() => any()}.

%% Example:
%% cancel_service_instance_deployment_output() :: #{
%%   <<"serviceInstance">> := service_instance()
%% }
-type cancel_service_instance_deployment_output() :: #{binary() => any()}.

%% Example:
%% delete_service_template_input() :: #{
%%   <<"name">> => string()
%% }
-type delete_service_template_input() :: #{binary() => any()}.

%% Example:
%% get_resources_summary_output() :: #{
%%   <<"counts">> := counts_summary()
%% }
-type get_resources_summary_output() :: #{binary() => any()}.

%% Example:
%% list_deployments_output() :: #{
%%   <<"deployments">> => list(deployment_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_deployments_output() :: #{binary() => any()}.

%% Example:
%% create_service_input() :: #{
%%   <<"branchName">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"repositoryConnectionArn">> => string(),
%%   <<"repositoryId">> => string(),
%%   <<"spec">> := string(),
%%   <<"tags">> => list(tag()),
%%   <<"templateMajorVersion">> := string(),
%%   <<"templateMinorVersion">> => string(),
%%   <<"templateName">> := string()
%% }
-type create_service_input() :: #{binary() => any()}.

%% Example:
%% list_deployments_input() :: #{
%%   <<"componentName">> => string(),
%%   <<"environmentName">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"serviceInstanceName">> => string(),
%%   <<"serviceName">> => string()
%% }
-type list_deployments_input() :: #{binary() => any()}.

%% Example:
%% create_repository_input() :: #{
%%   <<"connectionArn">> := string(),
%%   <<"encryptionKey">> => string(),
%%   <<"name">> := string(),
%%   <<"provider">> := string(),
%%   <<"tags">> => list(tag())
%% }
-type create_repository_input() :: #{binary() => any()}.

%% Example:
%% delete_component_input() :: #{
%%   <<"name">> => string()
%% }
-type delete_component_input() :: #{binary() => any()}.

%% Example:
%% update_service_pipeline_input() :: #{
%%   <<"deploymentType">> => string(),
%%   <<"serviceName">> => string(),
%%   <<"spec">> => string(),
%%   <<"templateMajorVersion">> => string(),
%%   <<"templateMinorVersion">> => string()
%% }
-type update_service_pipeline_input() :: #{binary() => any()}.

%% Example:
%% get_service_template_output() :: #{
%%   <<"serviceTemplate">> := service_template()
%% }
-type get_service_template_output() :: #{binary() => any()}.

%% Example:
%% cancel_component_deployment_output() :: #{
%%   <<"component">> := component()
%% }
-type cancel_component_deployment_output() :: #{binary() => any()}.

%% Example:
%% list_component_outputs_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"outputs">> := list(output())
%% }
-type list_component_outputs_output() :: #{binary() => any()}.

%% Example:
%% get_template_sync_status_output() :: #{
%%   <<"desiredState">> => revision(),
%%   <<"latestSuccessfulSync">> => resource_sync_attempt(),
%%   <<"latestSync">> => resource_sync_attempt()
%% }
-type get_template_sync_status_output() :: #{binary() => any()}.

%% Example:
%% update_service_sync_config_input() :: #{
%%   <<"branch">> := string(),
%%   <<"filePath">> := string(),
%%   <<"repositoryName">> := string(),
%%   <<"repositoryProvider">> := string(),
%%   <<"serviceName">> := string()
%% }
-type update_service_sync_config_input() :: #{binary() => any()}.

%% Example:
%% update_service_input() :: #{
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"spec">> => string()
%% }
-type update_service_input() :: #{binary() => any()}.

%% Example:
%% resource_sync_event() :: #{
%%   <<"event">> => [string()],
%%   <<"externalId">> => [string()],
%%   <<"time">> => [non_neg_integer()],
%%   <<"type">> => [string()]
%% }
-type resource_sync_event() :: #{binary() => any()}.

%% Example:
%% service_template_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"lastModifiedAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"pipelineProvisioning">> => string(),
%%   <<"recommendedVersion">> => string()
%% }
-type service_template_summary() :: #{binary() => any()}.

%% Example:
%% create_environment_template_version_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"majorVersion">> => string(),
%%   <<"source">> := list(),
%%   <<"tags">> => list(tag()),
%%   <<"templateName">> := string()
%% }
-type create_environment_template_version_input() :: #{binary() => any()}.

%% Example:
%% repository_sync_event() :: #{
%%   <<"event">> => [string()],
%%   <<"externalId">> => [string()],
%%   <<"time">> => [non_neg_integer()],
%%   <<"type">> => [string()]
%% }
-type repository_sync_event() :: #{binary() => any()}.

%% Example:
%% get_service_instance_input() :: #{
%%   <<"name">> => string(),
%%   <<"serviceName">> => string()
%% }
-type get_service_instance_input() :: #{binary() => any()}.

%% Example:
%% revision() :: #{
%%   <<"branch">> => string(),
%%   <<"directory">> => [string()],
%%   <<"repositoryName">> => string(),
%%   <<"repositoryProvider">> => string(),
%%   <<"sha">> => string()
%% }
-type revision() :: #{binary() => any()}.

%% Example:
%% compatible_environment_template() :: #{
%%   <<"majorVersion">> => string(),
%%   <<"templateName">> => string()
%% }
-type compatible_environment_template() :: #{binary() => any()}.

%% Example:
%% list_services_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"services">> := list(service_summary())
%% }
-type list_services_output() :: #{binary() => any()}.

%% Example:
%% cancel_service_pipeline_deployment_output() :: #{
%%   <<"pipeline">> := service_pipeline()
%% }
-type cancel_service_pipeline_deployment_output() :: #{binary() => any()}.

%% Example:
%% delete_template_sync_config_input() :: #{
%%   <<"templateName">> := string(),
%%   <<"templateType">> := string()
%% }
-type delete_template_sync_config_input() :: #{binary() => any()}.

%% Example:
%% service_template() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"encryptionKey">> => string(),
%%   <<"lastModifiedAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"pipelineProvisioning">> => string(),
%%   <<"recommendedVersion">> => string()
%% }
-type service_template() :: #{binary() => any()}.

%% Example:
%% reject_environment_account_connection_output() :: #{
%%   <<"environmentAccountConnection">> := environment_account_connection()
%% }
-type reject_environment_account_connection_output() :: #{binary() => any()}.

%% Example:
%% create_template_sync_config_output() :: #{
%%   <<"templateSyncConfig">> => template_sync_config()
%% }
-type create_template_sync_config_output() :: #{binary() => any()}.

%% Example:
%% output() :: #{
%%   <<"key">> => string(),
%%   <<"valueString">> => string()
%% }
-type output() :: #{binary() => any()}.

%% Example:
%% update_service_template_input() :: #{
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"name">> => string()
%% }
-type update_service_template_input() :: #{binary() => any()}.

%% Example:
%% list_environment_account_connections_output() :: #{
%%   <<"environmentAccountConnections">> := list(environment_account_connection_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_environment_account_connections_output() :: #{binary() => any()}.

%% Example:
%% list_services_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_services_input() :: #{binary() => any()}.

%% Example:
%% service_sync_blocker_summary() :: #{
%%   <<"latestBlockers">> => list(sync_blocker()),
%%   <<"serviceInstanceName">> => [string()],
%%   <<"serviceName">> => [string()]
%% }
-type service_sync_blocker_summary() :: #{binary() => any()}.

%% Example:
%% get_template_sync_config_output() :: #{
%%   <<"templateSyncConfig">> => template_sync_config()
%% }
-type get_template_sync_config_output() :: #{binary() => any()}.

-type accept_environment_account_connection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type cancel_component_deployment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type cancel_environment_deployment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type cancel_service_instance_deployment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type cancel_service_pipeline_deployment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_component_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_environment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_environment_account_connection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_environment_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_environment_template_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_repository_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_service_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_service_instance_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_service_sync_config_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_service_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_service_template_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_template_sync_config_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_component_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_deployment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_environment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_environment_account_connection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_environment_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_environment_template_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_repository_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_service_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_service_sync_config_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_service_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_service_template_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_template_sync_config_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_account_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_component_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_deployment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_environment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_environment_account_connection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_environment_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_environment_template_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_repository_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_repository_sync_status_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_resources_summary_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_service_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_service_instance_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_service_instance_sync_status_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_service_sync_blocker_summary_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_service_sync_config_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_service_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_service_template_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_template_sync_config_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_template_sync_status_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_component_outputs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_component_provisioned_resources_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_components_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_deployments_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_environment_account_connections_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_environment_outputs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_environment_provisioned_resources_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_environment_template_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_environment_templates_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_environments_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_repositories_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_repository_sync_definitions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_service_instance_outputs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_service_instance_provisioned_resources_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_service_instances_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_service_pipeline_outputs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_service_pipeline_provisioned_resources_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_service_template_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_service_templates_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_services_errors() ::
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

-type notify_resource_deployment_status_change_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type reject_environment_account_connection_errors() ::
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
    resource_not_found_exception() | 
    conflict_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_account_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type update_component_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_environment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_environment_account_connection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_environment_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_environment_template_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_service_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_service_instance_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_service_pipeline_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_service_sync_blocker_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_service_sync_config_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_service_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_service_template_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_template_sync_config_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc In a management account, an environment account connection request is
%% accepted.
%%
%% When the environment account connection request is accepted, Proton
%% can use the associated IAM role to provision environment infrastructure
%% resources in the associated environment account.
%%
%% For more information, see Environment account
%% connections:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html
%% in the Proton User guide.
-spec accept_environment_account_connection(aws_client:aws_client(), accept_environment_account_connection_input()) ->
    {ok, accept_environment_account_connection_output(), tuple()} |
    {error, any()} |
    {error, accept_environment_account_connection_errors(), tuple()}.
accept_environment_account_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_environment_account_connection(Client, Input, []).

-spec accept_environment_account_connection(aws_client:aws_client(), accept_environment_account_connection_input(), proplists:proplist()) ->
    {ok, accept_environment_account_connection_output(), tuple()} |
    {error, any()} |
    {error, accept_environment_account_connection_errors(), tuple()}.
accept_environment_account_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptEnvironmentAccountConnection">>, Input, Options).

%% @doc Attempts to cancel a component deployment (for a component that is in
%% the `IN_PROGRESS' deployment status).
%%
%% For more information about components, see
%% Proton components:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html in
%% the
%% Proton User Guide.
-spec cancel_component_deployment(aws_client:aws_client(), cancel_component_deployment_input()) ->
    {ok, cancel_component_deployment_output(), tuple()} |
    {error, any()} |
    {error, cancel_component_deployment_errors(), tuple()}.
cancel_component_deployment(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_component_deployment(Client, Input, []).

-spec cancel_component_deployment(aws_client:aws_client(), cancel_component_deployment_input(), proplists:proplist()) ->
    {ok, cancel_component_deployment_output(), tuple()} |
    {error, any()} |
    {error, cancel_component_deployment_errors(), tuple()}.
cancel_component_deployment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelComponentDeployment">>, Input, Options).

%% @doc Attempts to cancel an environment deployment on an
%% `UpdateEnvironment' action, if the deployment is `IN_PROGRESS'.
%%
%% For more
%% information, see Update an environment:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-env-update.html in
%% the Proton
%% User guide.
%%
%% The following list includes potential cancellation scenarios.
%%
%% If the cancellation attempt succeeds, the resulting deployment state is
%% `CANCELLED'.
%%
%% If the cancellation attempt fails, the resulting deployment state is
%% `FAILED'.
%%
%% If the current `UpdateEnvironment' action succeeds before the
%% cancellation attempt starts, the resulting deployment state is
%% `SUCCEEDED' and the cancellation attempt has no effect.
-spec cancel_environment_deployment(aws_client:aws_client(), cancel_environment_deployment_input()) ->
    {ok, cancel_environment_deployment_output(), tuple()} |
    {error, any()} |
    {error, cancel_environment_deployment_errors(), tuple()}.
cancel_environment_deployment(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_environment_deployment(Client, Input, []).

-spec cancel_environment_deployment(aws_client:aws_client(), cancel_environment_deployment_input(), proplists:proplist()) ->
    {ok, cancel_environment_deployment_output(), tuple()} |
    {error, any()} |
    {error, cancel_environment_deployment_errors(), tuple()}.
cancel_environment_deployment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelEnvironmentDeployment">>, Input, Options).

%% @doc Attempts to cancel a service instance deployment on an
%% `UpdateServiceInstance' action, if the deployment is
%% `IN_PROGRESS'.
%%
%% For
%% more information, see Update a service instance:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-svc-instance-update.html
%% in the Proton User guide.
%%
%% The following list includes potential cancellation scenarios.
%%
%% If the cancellation attempt succeeds, the resulting deployment state is
%% `CANCELLED'.
%%
%% If the cancellation attempt fails, the resulting deployment state is
%% `FAILED'.
%%
%% If the current `UpdateServiceInstance' action succeeds before the
%% cancellation attempt starts, the resulting deployment state is
%% `SUCCEEDED' and
%% the cancellation attempt has no effect.
-spec cancel_service_instance_deployment(aws_client:aws_client(), cancel_service_instance_deployment_input()) ->
    {ok, cancel_service_instance_deployment_output(), tuple()} |
    {error, any()} |
    {error, cancel_service_instance_deployment_errors(), tuple()}.
cancel_service_instance_deployment(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_service_instance_deployment(Client, Input, []).

-spec cancel_service_instance_deployment(aws_client:aws_client(), cancel_service_instance_deployment_input(), proplists:proplist()) ->
    {ok, cancel_service_instance_deployment_output(), tuple()} |
    {error, any()} |
    {error, cancel_service_instance_deployment_errors(), tuple()}.
cancel_service_instance_deployment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelServiceInstanceDeployment">>, Input, Options).

%% @doc Attempts to cancel a service pipeline deployment on an
%% `UpdateServicePipeline' action, if the deployment is
%% `IN_PROGRESS'.
%%
%% For
%% more information, see Update a service pipeline:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-svc-pipeline-update.html
%% in the Proton User guide.
%%
%% The following list includes potential cancellation scenarios.
%%
%% If the cancellation attempt succeeds, the resulting deployment state is
%% `CANCELLED'.
%%
%% If the cancellation attempt fails, the resulting deployment state is
%% `FAILED'.
%%
%% If the current `UpdateServicePipeline' action succeeds before the
%% cancellation attempt starts, the resulting deployment state is
%% `SUCCEEDED' and
%% the cancellation attempt has no effect.
-spec cancel_service_pipeline_deployment(aws_client:aws_client(), cancel_service_pipeline_deployment_input()) ->
    {ok, cancel_service_pipeline_deployment_output(), tuple()} |
    {error, any()} |
    {error, cancel_service_pipeline_deployment_errors(), tuple()}.
cancel_service_pipeline_deployment(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_service_pipeline_deployment(Client, Input, []).

-spec cancel_service_pipeline_deployment(aws_client:aws_client(), cancel_service_pipeline_deployment_input(), proplists:proplist()) ->
    {ok, cancel_service_pipeline_deployment_output(), tuple()} |
    {error, any()} |
    {error, cancel_service_pipeline_deployment_errors(), tuple()}.
cancel_service_pipeline_deployment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelServicePipelineDeployment">>, Input, Options).

%% @doc Create an Proton component.
%%
%% A component is an infrastructure extension for a service instance.
%%
%% For more information about components, see
%% Proton components:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html in
%% the
%% Proton User Guide.
-spec create_component(aws_client:aws_client(), create_component_input()) ->
    {ok, create_component_output(), tuple()} |
    {error, any()} |
    {error, create_component_errors(), tuple()}.
create_component(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_component(Client, Input, []).

-spec create_component(aws_client:aws_client(), create_component_input(), proplists:proplist()) ->
    {ok, create_component_output(), tuple()} |
    {error, any()} |
    {error, create_component_errors(), tuple()}.
create_component(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateComponent">>, Input, Options).

%% @doc Deploy a new environment.
%%
%% An Proton environment is created from an environment template that defines
%% infrastructure and resources that can be
%% shared across services.
%%
%% == You can provision environments using the following methods: ==
%%
%% Amazon Web Services-managed provisioning: Proton makes direct calls to
%% provision your resources.
%%
%% Self-managed provisioning: Proton makes pull requests on your repository
%% to provide compiled infrastructure as code (IaC) files that your IaC
%% engine uses to provision resources.
%%
%% For more information, see Environments:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-environments.html
%% and Provisioning methods:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-works-prov-methods.html
%% in the Proton User
%% Guide.
-spec create_environment(aws_client:aws_client(), create_environment_input()) ->
    {ok, create_environment_output(), tuple()} |
    {error, any()} |
    {error, create_environment_errors(), tuple()}.
create_environment(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_environment(Client, Input, []).

-spec create_environment(aws_client:aws_client(), create_environment_input(), proplists:proplist()) ->
    {ok, create_environment_output(), tuple()} |
    {error, any()} |
    {error, create_environment_errors(), tuple()}.
create_environment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEnvironment">>, Input, Options).

%% @doc Create an environment account connection in an environment account so
%% that environment infrastructure resources can be provisioned in the
%% environment
%% account from a management account.
%%
%% An environment account connection is a secure bi-directional connection
%% between a management account and an environment
%% account that maintains authorization and permissions. For more
%% information, see Environment account connections:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html
%% in the Proton User
%% guide.
-spec create_environment_account_connection(aws_client:aws_client(), create_environment_account_connection_input()) ->
    {ok, create_environment_account_connection_output(), tuple()} |
    {error, any()} |
    {error, create_environment_account_connection_errors(), tuple()}.
create_environment_account_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_environment_account_connection(Client, Input, []).

-spec create_environment_account_connection(aws_client:aws_client(), create_environment_account_connection_input(), proplists:proplist()) ->
    {ok, create_environment_account_connection_output(), tuple()} |
    {error, any()} |
    {error, create_environment_account_connection_errors(), tuple()}.
create_environment_account_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEnvironmentAccountConnection">>, Input, Options).

%% @doc Create an environment template for Proton.
%%
%% For more information, see Environment Templates:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-templates.html in
%% the Proton User Guide.
%%
%% You can create an environment template in one of the two following ways:
%%
%% Register and publish a standard environment template that instructs Proton
%% to deploy and manage environment
%% infrastructure.
%%
%% Register and publish a customer managed environment template that connects
%% Proton to your existing provisioned
%% infrastructure that you manage. Proton doesn't manage your existing
%% provisioned infrastructure. To create an environment
%% template for customer provisioned and managed infrastructure, include the
%% `provisioning' parameter and set the value to
%% `CUSTOMER_MANAGED'. For more information, see Register
%% and publish an environment template:
%% https://docs.aws.amazon.com/proton/latest/userguide/template-create.html
%% in the Proton User Guide.
-spec create_environment_template(aws_client:aws_client(), create_environment_template_input()) ->
    {ok, create_environment_template_output(), tuple()} |
    {error, any()} |
    {error, create_environment_template_errors(), tuple()}.
create_environment_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_environment_template(Client, Input, []).

-spec create_environment_template(aws_client:aws_client(), create_environment_template_input(), proplists:proplist()) ->
    {ok, create_environment_template_output(), tuple()} |
    {error, any()} |
    {error, create_environment_template_errors(), tuple()}.
create_environment_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEnvironmentTemplate">>, Input, Options).

%% @doc Create a new major or minor version of an environment template.
%%
%% A major version of an environment template is a version that
%% isn't backwards compatible. A minor version of an environment template
%% is a version that's backwards compatible within its major
%% version.
-spec create_environment_template_version(aws_client:aws_client(), create_environment_template_version_input()) ->
    {ok, create_environment_template_version_output(), tuple()} |
    {error, any()} |
    {error, create_environment_template_version_errors(), tuple()}.
create_environment_template_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_environment_template_version(Client, Input, []).

-spec create_environment_template_version(aws_client:aws_client(), create_environment_template_version_input(), proplists:proplist()) ->
    {ok, create_environment_template_version_output(), tuple()} |
    {error, any()} |
    {error, create_environment_template_version_errors(), tuple()}.
create_environment_template_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEnvironmentTemplateVersion">>, Input, Options).

%% @doc Create and register a link to a repository.
%%
%% Proton uses the link to repeatedly access the repository, to either push
%% to it (self-managed
%% provisioning) or pull from it (template sync). You can share a linked
%% repository across multiple resources (like environments using self-managed
%% provisioning, or synced templates). When you create a repository link,
%% Proton creates a service-linked role:
%% https://docs.aws.amazon.com/proton/latest/userguide/using-service-linked-roles.html
%% for you.
%%
%% For more information, see Self-managed provisioning:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-works-prov-methods.html#ag-works-prov-methods-self,
%% Template bundles:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-template-authoring.html#ag-template-bundles,
%% and
%% Template sync configurations:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-template-sync-configs.html
%% in the Proton
%% User Guide.
-spec create_repository(aws_client:aws_client(), create_repository_input()) ->
    {ok, create_repository_output(), tuple()} |
    {error, any()} |
    {error, create_repository_errors(), tuple()}.
create_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_repository(Client, Input, []).

-spec create_repository(aws_client:aws_client(), create_repository_input(), proplists:proplist()) ->
    {ok, create_repository_output(), tuple()} |
    {error, any()} |
    {error, create_repository_errors(), tuple()}.
create_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRepository">>, Input, Options).

%% @doc Create an Proton service.
%%
%% An Proton service is an instantiation of a service
%% template and often includes several service instances and pipeline. For
%% more information, see
%% Services:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-services.html
%% in the Proton User Guide.
-spec create_service(aws_client:aws_client(), create_service_input()) ->
    {ok, create_service_output(), tuple()} |
    {error, any()} |
    {error, create_service_errors(), tuple()}.
create_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_service(Client, Input, []).

-spec create_service(aws_client:aws_client(), create_service_input(), proplists:proplist()) ->
    {ok, create_service_output(), tuple()} |
    {error, any()} |
    {error, create_service_errors(), tuple()}.
create_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateService">>, Input, Options).

%% @doc Create a service instance.
-spec create_service_instance(aws_client:aws_client(), create_service_instance_input()) ->
    {ok, create_service_instance_output(), tuple()} |
    {error, any()} |
    {error, create_service_instance_errors(), tuple()}.
create_service_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_service_instance(Client, Input, []).

-spec create_service_instance(aws_client:aws_client(), create_service_instance_input(), proplists:proplist()) ->
    {ok, create_service_instance_output(), tuple()} |
    {error, any()} |
    {error, create_service_instance_errors(), tuple()}.
create_service_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateServiceInstance">>, Input, Options).

%% @doc Create the Proton Ops configuration file.
-spec create_service_sync_config(aws_client:aws_client(), create_service_sync_config_input()) ->
    {ok, create_service_sync_config_output(), tuple()} |
    {error, any()} |
    {error, create_service_sync_config_errors(), tuple()}.
create_service_sync_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_service_sync_config(Client, Input, []).

-spec create_service_sync_config(aws_client:aws_client(), create_service_sync_config_input(), proplists:proplist()) ->
    {ok, create_service_sync_config_output(), tuple()} |
    {error, any()} |
    {error, create_service_sync_config_errors(), tuple()}.
create_service_sync_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateServiceSyncConfig">>, Input, Options).

%% @doc Create a service template.
%%
%% The administrator creates a service template to define
%% standardized infrastructure and an optional CI/CD service pipeline.
%% Developers, in turn,
%% select the service template from Proton. If the selected service template
%% includes a
%% service pipeline definition, they provide a link to their source code
%% repository. Proton
%% then deploys and manages the infrastructure defined by the selected
%% service template. For more
%% information, see Proton templates:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-templates.html in
%% the Proton User Guide.
-spec create_service_template(aws_client:aws_client(), create_service_template_input()) ->
    {ok, create_service_template_output(), tuple()} |
    {error, any()} |
    {error, create_service_template_errors(), tuple()}.
create_service_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_service_template(Client, Input, []).

-spec create_service_template(aws_client:aws_client(), create_service_template_input(), proplists:proplist()) ->
    {ok, create_service_template_output(), tuple()} |
    {error, any()} |
    {error, create_service_template_errors(), tuple()}.
create_service_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateServiceTemplate">>, Input, Options).

%% @doc Create a new major or minor version of a service template.
%%
%% A major version of a service
%% template is a version that isn't backward compatible. A minor version
%% of
%% a service template is a version that's backward compatible within its
%% major version.
-spec create_service_template_version(aws_client:aws_client(), create_service_template_version_input()) ->
    {ok, create_service_template_version_output(), tuple()} |
    {error, any()} |
    {error, create_service_template_version_errors(), tuple()}.
create_service_template_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_service_template_version(Client, Input, []).

-spec create_service_template_version(aws_client:aws_client(), create_service_template_version_input(), proplists:proplist()) ->
    {ok, create_service_template_version_output(), tuple()} |
    {error, any()} |
    {error, create_service_template_version_errors(), tuple()}.
create_service_template_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateServiceTemplateVersion">>, Input, Options).

%% @doc Set up a template to create new template versions automatically by
%% tracking a linked repository.
%%
%% A linked repository is a repository that has
%% been registered with Proton. For more information, see
%% `CreateRepository'.
%%
%% When a commit is pushed to your linked repository, Proton checks for
%% changes to your repository template bundles. If it detects a template
%% bundle change, a new major or minor version of its template is created, if
%% the version doesn’t already exist. For more information, see Template sync
%% configurations:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-template-sync-configs.html
%% in the Proton
%% User Guide.
-spec create_template_sync_config(aws_client:aws_client(), create_template_sync_config_input()) ->
    {ok, create_template_sync_config_output(), tuple()} |
    {error, any()} |
    {error, create_template_sync_config_errors(), tuple()}.
create_template_sync_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_template_sync_config(Client, Input, []).

-spec create_template_sync_config(aws_client:aws_client(), create_template_sync_config_input(), proplists:proplist()) ->
    {ok, create_template_sync_config_output(), tuple()} |
    {error, any()} |
    {error, create_template_sync_config_errors(), tuple()}.
create_template_sync_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTemplateSyncConfig">>, Input, Options).

%% @doc Delete an Proton component resource.
%%
%% For more information about components, see
%% Proton components:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html in
%% the
%% Proton User Guide.
-spec delete_component(aws_client:aws_client(), delete_component_input()) ->
    {ok, delete_component_output(), tuple()} |
    {error, any()} |
    {error, delete_component_errors(), tuple()}.
delete_component(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_component(Client, Input, []).

-spec delete_component(aws_client:aws_client(), delete_component_input(), proplists:proplist()) ->
    {ok, delete_component_output(), tuple()} |
    {error, any()} |
    {error, delete_component_errors(), tuple()}.
delete_component(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteComponent">>, Input, Options).

%% @doc Delete the deployment.
-spec delete_deployment(aws_client:aws_client(), delete_deployment_input()) ->
    {ok, delete_deployment_output(), tuple()} |
    {error, any()} |
    {error, delete_deployment_errors(), tuple()}.
delete_deployment(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_deployment(Client, Input, []).

-spec delete_deployment(aws_client:aws_client(), delete_deployment_input(), proplists:proplist()) ->
    {ok, delete_deployment_output(), tuple()} |
    {error, any()} |
    {error, delete_deployment_errors(), tuple()}.
delete_deployment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDeployment">>, Input, Options).

%% @doc Delete an environment.
-spec delete_environment(aws_client:aws_client(), delete_environment_input()) ->
    {ok, delete_environment_output(), tuple()} |
    {error, any()} |
    {error, delete_environment_errors(), tuple()}.
delete_environment(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_environment(Client, Input, []).

-spec delete_environment(aws_client:aws_client(), delete_environment_input(), proplists:proplist()) ->
    {ok, delete_environment_output(), tuple()} |
    {error, any()} |
    {error, delete_environment_errors(), tuple()}.
delete_environment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEnvironment">>, Input, Options).

%% @doc In an environment account, delete an environment account connection.
%%
%% After you delete an environment account connection that’s in use by an
%% Proton environment, Proton can’t manage the
%% environment infrastructure resources until a new environment account
%% connection is accepted for the environment account and associated
%% environment. You're
%% responsible for cleaning up provisioned resources that remain without an
%% environment connection.
%%
%% For more information, see Environment account
%% connections:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html
%% in the Proton User guide.
-spec delete_environment_account_connection(aws_client:aws_client(), delete_environment_account_connection_input()) ->
    {ok, delete_environment_account_connection_output(), tuple()} |
    {error, any()} |
    {error, delete_environment_account_connection_errors(), tuple()}.
delete_environment_account_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_environment_account_connection(Client, Input, []).

-spec delete_environment_account_connection(aws_client:aws_client(), delete_environment_account_connection_input(), proplists:proplist()) ->
    {ok, delete_environment_account_connection_output(), tuple()} |
    {error, any()} |
    {error, delete_environment_account_connection_errors(), tuple()}.
delete_environment_account_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEnvironmentAccountConnection">>, Input, Options).

%% @doc If no other major or minor versions of an environment template exist,
%% delete the environment template.
-spec delete_environment_template(aws_client:aws_client(), delete_environment_template_input()) ->
    {ok, delete_environment_template_output(), tuple()} |
    {error, any()} |
    {error, delete_environment_template_errors(), tuple()}.
delete_environment_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_environment_template(Client, Input, []).

-spec delete_environment_template(aws_client:aws_client(), delete_environment_template_input(), proplists:proplist()) ->
    {ok, delete_environment_template_output(), tuple()} |
    {error, any()} |
    {error, delete_environment_template_errors(), tuple()}.
delete_environment_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEnvironmentTemplate">>, Input, Options).

%% @doc If no other minor versions of an environment template exist, delete a
%% major version of the environment template if it's not the
%% `Recommended' version.
%%
%% Delete the `Recommended' version of the environment template if no
%% other major versions or minor versions
%% of the environment template exist. A major version of an environment
%% template is a version that's not backward compatible.
%%
%% Delete a minor version of an environment template if it isn't the
%% `Recommended' version. Delete a
%% `Recommended' minor version of the environment template if no other
%% minor versions of the environment template exist. A minor version of an
%% environment template is a version that's backward compatible.
-spec delete_environment_template_version(aws_client:aws_client(), delete_environment_template_version_input()) ->
    {ok, delete_environment_template_version_output(), tuple()} |
    {error, any()} |
    {error, delete_environment_template_version_errors(), tuple()}.
delete_environment_template_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_environment_template_version(Client, Input, []).

-spec delete_environment_template_version(aws_client:aws_client(), delete_environment_template_version_input(), proplists:proplist()) ->
    {ok, delete_environment_template_version_output(), tuple()} |
    {error, any()} |
    {error, delete_environment_template_version_errors(), tuple()}.
delete_environment_template_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEnvironmentTemplateVersion">>, Input, Options).

%% @doc De-register and unlink your repository.
-spec delete_repository(aws_client:aws_client(), delete_repository_input()) ->
    {ok, delete_repository_output(), tuple()} |
    {error, any()} |
    {error, delete_repository_errors(), tuple()}.
delete_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_repository(Client, Input, []).

-spec delete_repository(aws_client:aws_client(), delete_repository_input(), proplists:proplist()) ->
    {ok, delete_repository_output(), tuple()} |
    {error, any()} |
    {error, delete_repository_errors(), tuple()}.
delete_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRepository">>, Input, Options).

%% @doc Delete a service, with its instances and pipeline.
%%
%% You can't delete a service if it has any service instances that have
%% components attached
%% to them.
%%
%% For more information about components, see
%% Proton components:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html in
%% the
%% Proton User Guide.
-spec delete_service(aws_client:aws_client(), delete_service_input()) ->
    {ok, delete_service_output(), tuple()} |
    {error, any()} |
    {error, delete_service_errors(), tuple()}.
delete_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_service(Client, Input, []).

-spec delete_service(aws_client:aws_client(), delete_service_input(), proplists:proplist()) ->
    {ok, delete_service_output(), tuple()} |
    {error, any()} |
    {error, delete_service_errors(), tuple()}.
delete_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteService">>, Input, Options).

%% @doc Delete the Proton Ops file.
-spec delete_service_sync_config(aws_client:aws_client(), delete_service_sync_config_input()) ->
    {ok, delete_service_sync_config_output(), tuple()} |
    {error, any()} |
    {error, delete_service_sync_config_errors(), tuple()}.
delete_service_sync_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_service_sync_config(Client, Input, []).

-spec delete_service_sync_config(aws_client:aws_client(), delete_service_sync_config_input(), proplists:proplist()) ->
    {ok, delete_service_sync_config_output(), tuple()} |
    {error, any()} |
    {error, delete_service_sync_config_errors(), tuple()}.
delete_service_sync_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteServiceSyncConfig">>, Input, Options).

%% @doc If no other major or minor versions of the service template exist,
%% delete the service
%% template.
-spec delete_service_template(aws_client:aws_client(), delete_service_template_input()) ->
    {ok, delete_service_template_output(), tuple()} |
    {error, any()} |
    {error, delete_service_template_errors(), tuple()}.
delete_service_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_service_template(Client, Input, []).

-spec delete_service_template(aws_client:aws_client(), delete_service_template_input(), proplists:proplist()) ->
    {ok, delete_service_template_output(), tuple()} |
    {error, any()} |
    {error, delete_service_template_errors(), tuple()}.
delete_service_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteServiceTemplate">>, Input, Options).

%% @doc If no other minor versions of a service template exist, delete a
%% major version of the
%% service template if it's not the `Recommended' version.
%%
%% Delete the
%% `Recommended' version of the service template if no other major
%% versions or minor
%% versions of the service template exist. A major version of a service
%% template is a version
%% that isn't backwards compatible.
%%
%% Delete a minor version of a service template if it's not the
%% `Recommended'
%% version. Delete a `Recommended' minor version of the service template
%% if no other
%% minor versions of the service template exist. A minor version of a service
%% template is a
%% version that's backwards compatible.
-spec delete_service_template_version(aws_client:aws_client(), delete_service_template_version_input()) ->
    {ok, delete_service_template_version_output(), tuple()} |
    {error, any()} |
    {error, delete_service_template_version_errors(), tuple()}.
delete_service_template_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_service_template_version(Client, Input, []).

-spec delete_service_template_version(aws_client:aws_client(), delete_service_template_version_input(), proplists:proplist()) ->
    {ok, delete_service_template_version_output(), tuple()} |
    {error, any()} |
    {error, delete_service_template_version_errors(), tuple()}.
delete_service_template_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteServiceTemplateVersion">>, Input, Options).

%% @doc Delete a template sync configuration.
-spec delete_template_sync_config(aws_client:aws_client(), delete_template_sync_config_input()) ->
    {ok, delete_template_sync_config_output(), tuple()} |
    {error, any()} |
    {error, delete_template_sync_config_errors(), tuple()}.
delete_template_sync_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_template_sync_config(Client, Input, []).

-spec delete_template_sync_config(aws_client:aws_client(), delete_template_sync_config_input(), proplists:proplist()) ->
    {ok, delete_template_sync_config_output(), tuple()} |
    {error, any()} |
    {error, delete_template_sync_config_errors(), tuple()}.
delete_template_sync_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTemplateSyncConfig">>, Input, Options).

%% @doc Get detail data for Proton account-wide settings.
-spec get_account_settings(aws_client:aws_client(), get_account_settings_input()) ->
    {ok, get_account_settings_output(), tuple()} |
    {error, any()} |
    {error, get_account_settings_errors(), tuple()}.
get_account_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_account_settings(Client, Input, []).

-spec get_account_settings(aws_client:aws_client(), get_account_settings_input(), proplists:proplist()) ->
    {ok, get_account_settings_output(), tuple()} |
    {error, any()} |
    {error, get_account_settings_errors(), tuple()}.
get_account_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccountSettings">>, Input, Options).

%% @doc Get detailed data for a component.
%%
%% For more information about components, see
%% Proton components:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html in
%% the
%% Proton User Guide.
-spec get_component(aws_client:aws_client(), get_component_input()) ->
    {ok, get_component_output(), tuple()} |
    {error, any()} |
    {error, get_component_errors(), tuple()}.
get_component(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_component(Client, Input, []).

-spec get_component(aws_client:aws_client(), get_component_input(), proplists:proplist()) ->
    {ok, get_component_output(), tuple()} |
    {error, any()} |
    {error, get_component_errors(), tuple()}.
get_component(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetComponent">>, Input, Options).

%% @doc Get detailed data for a deployment.
-spec get_deployment(aws_client:aws_client(), get_deployment_input()) ->
    {ok, get_deployment_output(), tuple()} |
    {error, any()} |
    {error, get_deployment_errors(), tuple()}.
get_deployment(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_deployment(Client, Input, []).

-spec get_deployment(aws_client:aws_client(), get_deployment_input(), proplists:proplist()) ->
    {ok, get_deployment_output(), tuple()} |
    {error, any()} |
    {error, get_deployment_errors(), tuple()}.
get_deployment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDeployment">>, Input, Options).

%% @doc Get detailed data for an environment.
-spec get_environment(aws_client:aws_client(), get_environment_input()) ->
    {ok, get_environment_output(), tuple()} |
    {error, any()} |
    {error, get_environment_errors(), tuple()}.
get_environment(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_environment(Client, Input, []).

-spec get_environment(aws_client:aws_client(), get_environment_input(), proplists:proplist()) ->
    {ok, get_environment_output(), tuple()} |
    {error, any()} |
    {error, get_environment_errors(), tuple()}.
get_environment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEnvironment">>, Input, Options).

%% @doc In an environment account, get the detailed data for an environment
%% account connection.
%%
%% For more information, see Environment account
%% connections:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html
%% in the Proton User guide.
-spec get_environment_account_connection(aws_client:aws_client(), get_environment_account_connection_input()) ->
    {ok, get_environment_account_connection_output(), tuple()} |
    {error, any()} |
    {error, get_environment_account_connection_errors(), tuple()}.
get_environment_account_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_environment_account_connection(Client, Input, []).

-spec get_environment_account_connection(aws_client:aws_client(), get_environment_account_connection_input(), proplists:proplist()) ->
    {ok, get_environment_account_connection_output(), tuple()} |
    {error, any()} |
    {error, get_environment_account_connection_errors(), tuple()}.
get_environment_account_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEnvironmentAccountConnection">>, Input, Options).

%% @doc Get detailed data for an environment template.
-spec get_environment_template(aws_client:aws_client(), get_environment_template_input()) ->
    {ok, get_environment_template_output(), tuple()} |
    {error, any()} |
    {error, get_environment_template_errors(), tuple()}.
get_environment_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_environment_template(Client, Input, []).

-spec get_environment_template(aws_client:aws_client(), get_environment_template_input(), proplists:proplist()) ->
    {ok, get_environment_template_output(), tuple()} |
    {error, any()} |
    {error, get_environment_template_errors(), tuple()}.
get_environment_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEnvironmentTemplate">>, Input, Options).

%% @doc Get detailed data for a major or minor version of an environment
%% template.
-spec get_environment_template_version(aws_client:aws_client(), get_environment_template_version_input()) ->
    {ok, get_environment_template_version_output(), tuple()} |
    {error, any()} |
    {error, get_environment_template_version_errors(), tuple()}.
get_environment_template_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_environment_template_version(Client, Input, []).

-spec get_environment_template_version(aws_client:aws_client(), get_environment_template_version_input(), proplists:proplist()) ->
    {ok, get_environment_template_version_output(), tuple()} |
    {error, any()} |
    {error, get_environment_template_version_errors(), tuple()}.
get_environment_template_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEnvironmentTemplateVersion">>, Input, Options).

%% @doc Get detail data for a linked repository.
-spec get_repository(aws_client:aws_client(), get_repository_input()) ->
    {ok, get_repository_output(), tuple()} |
    {error, any()} |
    {error, get_repository_errors(), tuple()}.
get_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_repository(Client, Input, []).

-spec get_repository(aws_client:aws_client(), get_repository_input(), proplists:proplist()) ->
    {ok, get_repository_output(), tuple()} |
    {error, any()} |
    {error, get_repository_errors(), tuple()}.
get_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRepository">>, Input, Options).

%% @doc Get the sync status of a repository used for Proton template sync.
%%
%% For more information about template sync, see .
%%
%% A repository sync status isn't tied to the Proton Repository resource
%% (or any other Proton resource). Therefore, tags on an Proton Repository
%% resource
%% have no effect on this action. Specifically, you can't use these tags
%% to control access to this action using Attribute-based access control
%% (ABAC).
%%
%% For more information about ABAC, see ABAC:
%% https://docs.aws.amazon.com/proton/latest/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-tags
%% in the Proton User
%% Guide.
-spec get_repository_sync_status(aws_client:aws_client(), get_repository_sync_status_input()) ->
    {ok, get_repository_sync_status_output(), tuple()} |
    {error, any()} |
    {error, get_repository_sync_status_errors(), tuple()}.
get_repository_sync_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_repository_sync_status(Client, Input, []).

-spec get_repository_sync_status(aws_client:aws_client(), get_repository_sync_status_input(), proplists:proplist()) ->
    {ok, get_repository_sync_status_output(), tuple()} |
    {error, any()} |
    {error, get_repository_sync_status_errors(), tuple()}.
get_repository_sync_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRepositorySyncStatus">>, Input, Options).

%% @doc Get counts of Proton resources.
%%
%% For infrastructure-provisioning resources (environments, services, service
%% instances, pipelines), the action returns staleness counts. A
%% resource is stale when it's behind the recommended version of the
%% Proton template that it uses and it needs an update to become current.
%%
%% The action returns staleness counts (counts of resources that are
%% up-to-date, behind a template major version, or behind a template minor
%% version), the total number of resources, and the number of resources that
%% are in a failed state, grouped by resource type. Components,
%% environments, and service templates return less information - see the
%% `components', `environments', and
%% `serviceTemplates' field descriptions.
%%
%% For context, the action also returns the total number of each type of
%% Proton template in the Amazon Web Services account.
%%
%% For more information, see Proton dashboard:
%% https://docs.aws.amazon.com/proton/latest/userguide/monitoring-dashboard.html
%% in the
%% Proton User Guide.
-spec get_resources_summary(aws_client:aws_client(), get_resources_summary_input()) ->
    {ok, get_resources_summary_output(), tuple()} |
    {error, any()} |
    {error, get_resources_summary_errors(), tuple()}.
get_resources_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resources_summary(Client, Input, []).

-spec get_resources_summary(aws_client:aws_client(), get_resources_summary_input(), proplists:proplist()) ->
    {ok, get_resources_summary_output(), tuple()} |
    {error, any()} |
    {error, get_resources_summary_errors(), tuple()}.
get_resources_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourcesSummary">>, Input, Options).

%% @doc Get detailed data for a service.
-spec get_service(aws_client:aws_client(), get_service_input()) ->
    {ok, get_service_output(), tuple()} |
    {error, any()} |
    {error, get_service_errors(), tuple()}.
get_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_service(Client, Input, []).

-spec get_service(aws_client:aws_client(), get_service_input(), proplists:proplist()) ->
    {ok, get_service_output(), tuple()} |
    {error, any()} |
    {error, get_service_errors(), tuple()}.
get_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetService">>, Input, Options).

%% @doc Get detailed data for a service instance.
%%
%% A service instance is an instantiation of
%% service template and it runs in a specific environment.
-spec get_service_instance(aws_client:aws_client(), get_service_instance_input()) ->
    {ok, get_service_instance_output(), tuple()} |
    {error, any()} |
    {error, get_service_instance_errors(), tuple()}.
get_service_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_service_instance(Client, Input, []).

-spec get_service_instance(aws_client:aws_client(), get_service_instance_input(), proplists:proplist()) ->
    {ok, get_service_instance_output(), tuple()} |
    {error, any()} |
    {error, get_service_instance_errors(), tuple()}.
get_service_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetServiceInstance">>, Input, Options).

%% @doc Get the status of the synced service instance.
-spec get_service_instance_sync_status(aws_client:aws_client(), get_service_instance_sync_status_input()) ->
    {ok, get_service_instance_sync_status_output(), tuple()} |
    {error, any()} |
    {error, get_service_instance_sync_status_errors(), tuple()}.
get_service_instance_sync_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_service_instance_sync_status(Client, Input, []).

-spec get_service_instance_sync_status(aws_client:aws_client(), get_service_instance_sync_status_input(), proplists:proplist()) ->
    {ok, get_service_instance_sync_status_output(), tuple()} |
    {error, any()} |
    {error, get_service_instance_sync_status_errors(), tuple()}.
get_service_instance_sync_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetServiceInstanceSyncStatus">>, Input, Options).

%% @doc Get detailed data for the service sync blocker summary.
-spec get_service_sync_blocker_summary(aws_client:aws_client(), get_service_sync_blocker_summary_input()) ->
    {ok, get_service_sync_blocker_summary_output(), tuple()} |
    {error, any()} |
    {error, get_service_sync_blocker_summary_errors(), tuple()}.
get_service_sync_blocker_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_service_sync_blocker_summary(Client, Input, []).

-spec get_service_sync_blocker_summary(aws_client:aws_client(), get_service_sync_blocker_summary_input(), proplists:proplist()) ->
    {ok, get_service_sync_blocker_summary_output(), tuple()} |
    {error, any()} |
    {error, get_service_sync_blocker_summary_errors(), tuple()}.
get_service_sync_blocker_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetServiceSyncBlockerSummary">>, Input, Options).

%% @doc Get detailed information for the service sync configuration.
-spec get_service_sync_config(aws_client:aws_client(), get_service_sync_config_input()) ->
    {ok, get_service_sync_config_output(), tuple()} |
    {error, any()} |
    {error, get_service_sync_config_errors(), tuple()}.
get_service_sync_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_service_sync_config(Client, Input, []).

-spec get_service_sync_config(aws_client:aws_client(), get_service_sync_config_input(), proplists:proplist()) ->
    {ok, get_service_sync_config_output(), tuple()} |
    {error, any()} |
    {error, get_service_sync_config_errors(), tuple()}.
get_service_sync_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetServiceSyncConfig">>, Input, Options).

%% @doc Get detailed data for a service template.
-spec get_service_template(aws_client:aws_client(), get_service_template_input()) ->
    {ok, get_service_template_output(), tuple()} |
    {error, any()} |
    {error, get_service_template_errors(), tuple()}.
get_service_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_service_template(Client, Input, []).

-spec get_service_template(aws_client:aws_client(), get_service_template_input(), proplists:proplist()) ->
    {ok, get_service_template_output(), tuple()} |
    {error, any()} |
    {error, get_service_template_errors(), tuple()}.
get_service_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetServiceTemplate">>, Input, Options).

%% @doc Get detailed data for a major or minor version of a service template.
-spec get_service_template_version(aws_client:aws_client(), get_service_template_version_input()) ->
    {ok, get_service_template_version_output(), tuple()} |
    {error, any()} |
    {error, get_service_template_version_errors(), tuple()}.
get_service_template_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_service_template_version(Client, Input, []).

-spec get_service_template_version(aws_client:aws_client(), get_service_template_version_input(), proplists:proplist()) ->
    {ok, get_service_template_version_output(), tuple()} |
    {error, any()} |
    {error, get_service_template_version_errors(), tuple()}.
get_service_template_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetServiceTemplateVersion">>, Input, Options).

%% @doc Get detail data for a template sync configuration.
-spec get_template_sync_config(aws_client:aws_client(), get_template_sync_config_input()) ->
    {ok, get_template_sync_config_output(), tuple()} |
    {error, any()} |
    {error, get_template_sync_config_errors(), tuple()}.
get_template_sync_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_template_sync_config(Client, Input, []).

-spec get_template_sync_config(aws_client:aws_client(), get_template_sync_config_input(), proplists:proplist()) ->
    {ok, get_template_sync_config_output(), tuple()} |
    {error, any()} |
    {error, get_template_sync_config_errors(), tuple()}.
get_template_sync_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTemplateSyncConfig">>, Input, Options).

%% @doc Get the status of a template sync.
-spec get_template_sync_status(aws_client:aws_client(), get_template_sync_status_input()) ->
    {ok, get_template_sync_status_output(), tuple()} |
    {error, any()} |
    {error, get_template_sync_status_errors(), tuple()}.
get_template_sync_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_template_sync_status(Client, Input, []).

-spec get_template_sync_status(aws_client:aws_client(), get_template_sync_status_input(), proplists:proplist()) ->
    {ok, get_template_sync_status_output(), tuple()} |
    {error, any()} |
    {error, get_template_sync_status_errors(), tuple()}.
get_template_sync_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTemplateSyncStatus">>, Input, Options).

%% @doc Get a list of component Infrastructure as Code (IaC) outputs.
%%
%% For more information about components, see
%% Proton components:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html in
%% the
%% Proton User Guide.
-spec list_component_outputs(aws_client:aws_client(), list_component_outputs_input()) ->
    {ok, list_component_outputs_output(), tuple()} |
    {error, any()} |
    {error, list_component_outputs_errors(), tuple()}.
list_component_outputs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_component_outputs(Client, Input, []).

-spec list_component_outputs(aws_client:aws_client(), list_component_outputs_input(), proplists:proplist()) ->
    {ok, list_component_outputs_output(), tuple()} |
    {error, any()} |
    {error, list_component_outputs_errors(), tuple()}.
list_component_outputs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListComponentOutputs">>, Input, Options).

%% @doc List provisioned resources for a component with details.
%%
%% For more information about components, see
%% Proton components:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html in
%% the
%% Proton User Guide.
-spec list_component_provisioned_resources(aws_client:aws_client(), list_component_provisioned_resources_input()) ->
    {ok, list_component_provisioned_resources_output(), tuple()} |
    {error, any()} |
    {error, list_component_provisioned_resources_errors(), tuple()}.
list_component_provisioned_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_component_provisioned_resources(Client, Input, []).

-spec list_component_provisioned_resources(aws_client:aws_client(), list_component_provisioned_resources_input(), proplists:proplist()) ->
    {ok, list_component_provisioned_resources_output(), tuple()} |
    {error, any()} |
    {error, list_component_provisioned_resources_errors(), tuple()}.
list_component_provisioned_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListComponentProvisionedResources">>, Input, Options).

%% @doc List components with summary data.
%%
%% You can filter the result list by environment, service, or a single
%% service instance.
%%
%% For more information about components, see
%% Proton components:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html in
%% the
%% Proton User Guide.
-spec list_components(aws_client:aws_client(), list_components_input()) ->
    {ok, list_components_output(), tuple()} |
    {error, any()} |
    {error, list_components_errors(), tuple()}.
list_components(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_components(Client, Input, []).

-spec list_components(aws_client:aws_client(), list_components_input(), proplists:proplist()) ->
    {ok, list_components_output(), tuple()} |
    {error, any()} |
    {error, list_components_errors(), tuple()}.
list_components(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListComponents">>, Input, Options).

%% @doc List deployments.
%%
%% You can filter the result list by environment, service, or a single
%% service instance.
-spec list_deployments(aws_client:aws_client(), list_deployments_input()) ->
    {ok, list_deployments_output(), tuple()} |
    {error, any()} |
    {error, list_deployments_errors(), tuple()}.
list_deployments(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_deployments(Client, Input, []).

-spec list_deployments(aws_client:aws_client(), list_deployments_input(), proplists:proplist()) ->
    {ok, list_deployments_output(), tuple()} |
    {error, any()} |
    {error, list_deployments_errors(), tuple()}.
list_deployments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDeployments">>, Input, Options).

%% @doc View a list of environment account connections.
%%
%% For more information, see Environment account
%% connections:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html
%% in the Proton User guide.
-spec list_environment_account_connections(aws_client:aws_client(), list_environment_account_connections_input()) ->
    {ok, list_environment_account_connections_output(), tuple()} |
    {error, any()} |
    {error, list_environment_account_connections_errors(), tuple()}.
list_environment_account_connections(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_environment_account_connections(Client, Input, []).

-spec list_environment_account_connections(aws_client:aws_client(), list_environment_account_connections_input(), proplists:proplist()) ->
    {ok, list_environment_account_connections_output(), tuple()} |
    {error, any()} |
    {error, list_environment_account_connections_errors(), tuple()}.
list_environment_account_connections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEnvironmentAccountConnections">>, Input, Options).

%% @doc List the infrastructure as code outputs for your environment.
-spec list_environment_outputs(aws_client:aws_client(), list_environment_outputs_input()) ->
    {ok, list_environment_outputs_output(), tuple()} |
    {error, any()} |
    {error, list_environment_outputs_errors(), tuple()}.
list_environment_outputs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_environment_outputs(Client, Input, []).

-spec list_environment_outputs(aws_client:aws_client(), list_environment_outputs_input(), proplists:proplist()) ->
    {ok, list_environment_outputs_output(), tuple()} |
    {error, any()} |
    {error, list_environment_outputs_errors(), tuple()}.
list_environment_outputs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEnvironmentOutputs">>, Input, Options).

%% @doc List the provisioned resources for your environment.
-spec list_environment_provisioned_resources(aws_client:aws_client(), list_environment_provisioned_resources_input()) ->
    {ok, list_environment_provisioned_resources_output(), tuple()} |
    {error, any()} |
    {error, list_environment_provisioned_resources_errors(), tuple()}.
list_environment_provisioned_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_environment_provisioned_resources(Client, Input, []).

-spec list_environment_provisioned_resources(aws_client:aws_client(), list_environment_provisioned_resources_input(), proplists:proplist()) ->
    {ok, list_environment_provisioned_resources_output(), tuple()} |
    {error, any()} |
    {error, list_environment_provisioned_resources_errors(), tuple()}.
list_environment_provisioned_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEnvironmentProvisionedResources">>, Input, Options).

%% @doc List major or minor versions of an environment template with detail
%% data.
-spec list_environment_template_versions(aws_client:aws_client(), list_environment_template_versions_input()) ->
    {ok, list_environment_template_versions_output(), tuple()} |
    {error, any()} |
    {error, list_environment_template_versions_errors(), tuple()}.
list_environment_template_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_environment_template_versions(Client, Input, []).

-spec list_environment_template_versions(aws_client:aws_client(), list_environment_template_versions_input(), proplists:proplist()) ->
    {ok, list_environment_template_versions_output(), tuple()} |
    {error, any()} |
    {error, list_environment_template_versions_errors(), tuple()}.
list_environment_template_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEnvironmentTemplateVersions">>, Input, Options).

%% @doc List environment templates.
-spec list_environment_templates(aws_client:aws_client(), list_environment_templates_input()) ->
    {ok, list_environment_templates_output(), tuple()} |
    {error, any()} |
    {error, list_environment_templates_errors(), tuple()}.
list_environment_templates(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_environment_templates(Client, Input, []).

-spec list_environment_templates(aws_client:aws_client(), list_environment_templates_input(), proplists:proplist()) ->
    {ok, list_environment_templates_output(), tuple()} |
    {error, any()} |
    {error, list_environment_templates_errors(), tuple()}.
list_environment_templates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEnvironmentTemplates">>, Input, Options).

%% @doc List environments with detail data summaries.
-spec list_environments(aws_client:aws_client(), list_environments_input()) ->
    {ok, list_environments_output(), tuple()} |
    {error, any()} |
    {error, list_environments_errors(), tuple()}.
list_environments(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_environments(Client, Input, []).

-spec list_environments(aws_client:aws_client(), list_environments_input(), proplists:proplist()) ->
    {ok, list_environments_output(), tuple()} |
    {error, any()} |
    {error, list_environments_errors(), tuple()}.
list_environments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEnvironments">>, Input, Options).

%% @doc List linked repositories with detail data.
-spec list_repositories(aws_client:aws_client(), list_repositories_input()) ->
    {ok, list_repositories_output(), tuple()} |
    {error, any()} |
    {error, list_repositories_errors(), tuple()}.
list_repositories(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_repositories(Client, Input, []).

-spec list_repositories(aws_client:aws_client(), list_repositories_input(), proplists:proplist()) ->
    {ok, list_repositories_output(), tuple()} |
    {error, any()} |
    {error, list_repositories_errors(), tuple()}.
list_repositories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRepositories">>, Input, Options).

%% @doc List repository sync definitions with detail data.
-spec list_repository_sync_definitions(aws_client:aws_client(), list_repository_sync_definitions_input()) ->
    {ok, list_repository_sync_definitions_output(), tuple()} |
    {error, any()} |
    {error, list_repository_sync_definitions_errors(), tuple()}.
list_repository_sync_definitions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_repository_sync_definitions(Client, Input, []).

-spec list_repository_sync_definitions(aws_client:aws_client(), list_repository_sync_definitions_input(), proplists:proplist()) ->
    {ok, list_repository_sync_definitions_output(), tuple()} |
    {error, any()} |
    {error, list_repository_sync_definitions_errors(), tuple()}.
list_repository_sync_definitions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRepositorySyncDefinitions">>, Input, Options).

%% @doc Get a list service of instance Infrastructure as Code (IaC) outputs.
-spec list_service_instance_outputs(aws_client:aws_client(), list_service_instance_outputs_input()) ->
    {ok, list_service_instance_outputs_output(), tuple()} |
    {error, any()} |
    {error, list_service_instance_outputs_errors(), tuple()}.
list_service_instance_outputs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_service_instance_outputs(Client, Input, []).

-spec list_service_instance_outputs(aws_client:aws_client(), list_service_instance_outputs_input(), proplists:proplist()) ->
    {ok, list_service_instance_outputs_output(), tuple()} |
    {error, any()} |
    {error, list_service_instance_outputs_errors(), tuple()}.
list_service_instance_outputs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServiceInstanceOutputs">>, Input, Options).

%% @doc List provisioned resources for a service instance with details.
-spec list_service_instance_provisioned_resources(aws_client:aws_client(), list_service_instance_provisioned_resources_input()) ->
    {ok, list_service_instance_provisioned_resources_output(), tuple()} |
    {error, any()} |
    {error, list_service_instance_provisioned_resources_errors(), tuple()}.
list_service_instance_provisioned_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_service_instance_provisioned_resources(Client, Input, []).

-spec list_service_instance_provisioned_resources(aws_client:aws_client(), list_service_instance_provisioned_resources_input(), proplists:proplist()) ->
    {ok, list_service_instance_provisioned_resources_output(), tuple()} |
    {error, any()} |
    {error, list_service_instance_provisioned_resources_errors(), tuple()}.
list_service_instance_provisioned_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServiceInstanceProvisionedResources">>, Input, Options).

%% @doc List service instances with summary data.
%%
%% This action lists service instances of all
%% services in the Amazon Web Services account.
-spec list_service_instances(aws_client:aws_client(), list_service_instances_input()) ->
    {ok, list_service_instances_output(), tuple()} |
    {error, any()} |
    {error, list_service_instances_errors(), tuple()}.
list_service_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_service_instances(Client, Input, []).

-spec list_service_instances(aws_client:aws_client(), list_service_instances_input(), proplists:proplist()) ->
    {ok, list_service_instances_output(), tuple()} |
    {error, any()} |
    {error, list_service_instances_errors(), tuple()}.
list_service_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServiceInstances">>, Input, Options).

%% @doc Get a list of service pipeline Infrastructure as Code (IaC) outputs.
-spec list_service_pipeline_outputs(aws_client:aws_client(), list_service_pipeline_outputs_input()) ->
    {ok, list_service_pipeline_outputs_output(), tuple()} |
    {error, any()} |
    {error, list_service_pipeline_outputs_errors(), tuple()}.
list_service_pipeline_outputs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_service_pipeline_outputs(Client, Input, []).

-spec list_service_pipeline_outputs(aws_client:aws_client(), list_service_pipeline_outputs_input(), proplists:proplist()) ->
    {ok, list_service_pipeline_outputs_output(), tuple()} |
    {error, any()} |
    {error, list_service_pipeline_outputs_errors(), tuple()}.
list_service_pipeline_outputs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServicePipelineOutputs">>, Input, Options).

%% @doc List provisioned resources for a service and pipeline with details.
-spec list_service_pipeline_provisioned_resources(aws_client:aws_client(), list_service_pipeline_provisioned_resources_input()) ->
    {ok, list_service_pipeline_provisioned_resources_output(), tuple()} |
    {error, any()} |
    {error, list_service_pipeline_provisioned_resources_errors(), tuple()}.
list_service_pipeline_provisioned_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_service_pipeline_provisioned_resources(Client, Input, []).

-spec list_service_pipeline_provisioned_resources(aws_client:aws_client(), list_service_pipeline_provisioned_resources_input(), proplists:proplist()) ->
    {ok, list_service_pipeline_provisioned_resources_output(), tuple()} |
    {error, any()} |
    {error, list_service_pipeline_provisioned_resources_errors(), tuple()}.
list_service_pipeline_provisioned_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServicePipelineProvisionedResources">>, Input, Options).

%% @doc List major or minor versions of a service template with detail data.
-spec list_service_template_versions(aws_client:aws_client(), list_service_template_versions_input()) ->
    {ok, list_service_template_versions_output(), tuple()} |
    {error, any()} |
    {error, list_service_template_versions_errors(), tuple()}.
list_service_template_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_service_template_versions(Client, Input, []).

-spec list_service_template_versions(aws_client:aws_client(), list_service_template_versions_input(), proplists:proplist()) ->
    {ok, list_service_template_versions_output(), tuple()} |
    {error, any()} |
    {error, list_service_template_versions_errors(), tuple()}.
list_service_template_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServiceTemplateVersions">>, Input, Options).

%% @doc List service templates with detail data.
-spec list_service_templates(aws_client:aws_client(), list_service_templates_input()) ->
    {ok, list_service_templates_output(), tuple()} |
    {error, any()} |
    {error, list_service_templates_errors(), tuple()}.
list_service_templates(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_service_templates(Client, Input, []).

-spec list_service_templates(aws_client:aws_client(), list_service_templates_input(), proplists:proplist()) ->
    {ok, list_service_templates_output(), tuple()} |
    {error, any()} |
    {error, list_service_templates_errors(), tuple()}.
list_service_templates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServiceTemplates">>, Input, Options).

%% @doc List services with summaries of detail data.
-spec list_services(aws_client:aws_client(), list_services_input()) ->
    {ok, list_services_output(), tuple()} |
    {error, any()} |
    {error, list_services_errors(), tuple()}.
list_services(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_services(Client, Input, []).

-spec list_services(aws_client:aws_client(), list_services_input(), proplists:proplist()) ->
    {ok, list_services_output(), tuple()} |
    {error, any()} |
    {error, list_services_errors(), tuple()}.
list_services(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServices">>, Input, Options).

%% @doc List tags for a resource.
%%
%% For more information, see Proton
%% resources and tagging:
%% https://docs.aws.amazon.com/proton/latest/userguide/resources.html in the
%% Proton User Guide.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_input()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_input(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Notify Proton of status changes to a provisioned resource when you
%% use self-managed provisioning.
%%
%% For more information, see Self-managed provisioning:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-works-prov-methods.html#ag-works-prov-methods-self
%% in the Proton User Guide.
-spec notify_resource_deployment_status_change(aws_client:aws_client(), notify_resource_deployment_status_change_input()) ->
    {ok, notify_resource_deployment_status_change_output(), tuple()} |
    {error, any()} |
    {error, notify_resource_deployment_status_change_errors(), tuple()}.
notify_resource_deployment_status_change(Client, Input)
  when is_map(Client), is_map(Input) ->
    notify_resource_deployment_status_change(Client, Input, []).

-spec notify_resource_deployment_status_change(aws_client:aws_client(), notify_resource_deployment_status_change_input(), proplists:proplist()) ->
    {ok, notify_resource_deployment_status_change_output(), tuple()} |
    {error, any()} |
    {error, notify_resource_deployment_status_change_errors(), tuple()}.
notify_resource_deployment_status_change(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"NotifyResourceDeploymentStatusChange">>, Input, Options).

%% @doc In a management account, reject an environment account connection
%% from another environment account.
%%
%% After you reject an environment account connection request, you can't
%% accept or use the rejected environment account
%% connection.
%%
%% You can’t reject an environment account connection that's connected to
%% an environment.
%%
%% For more information, see Environment account
%% connections:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html
%% in the Proton User guide.
-spec reject_environment_account_connection(aws_client:aws_client(), reject_environment_account_connection_input()) ->
    {ok, reject_environment_account_connection_output(), tuple()} |
    {error, any()} |
    {error, reject_environment_account_connection_errors(), tuple()}.
reject_environment_account_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    reject_environment_account_connection(Client, Input, []).

-spec reject_environment_account_connection(aws_client:aws_client(), reject_environment_account_connection_input(), proplists:proplist()) ->
    {ok, reject_environment_account_connection_output(), tuple()} |
    {error, any()} |
    {error, reject_environment_account_connection_errors(), tuple()}.
reject_environment_account_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RejectEnvironmentAccountConnection">>, Input, Options).

%% @doc Tag a resource.
%%
%% A tag is a key-value pair of metadata that you associate with an Proton
%% resource.
%%
%% For more information, see Proton resources and tagging:
%% https://docs.aws.amazon.com/proton/latest/userguide/resources.html in
%% the Proton User Guide.
-spec tag_resource(aws_client:aws_client(), tag_resource_input()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_input(), proplists:proplist()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Remove a customer tag from a resource.
%%
%% A tag is a key-value pair of metadata associated with an Proton resource.
%%
%% For more information, see Proton resources and tagging:
%% https://docs.aws.amazon.com/proton/latest/userguide/resources.html in
%% the Proton User Guide.
-spec untag_resource(aws_client:aws_client(), untag_resource_input()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_input(), proplists:proplist()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Update Proton settings that are used for multiple services in the
%% Amazon Web Services account.
-spec update_account_settings(aws_client:aws_client(), update_account_settings_input()) ->
    {ok, update_account_settings_output(), tuple()} |
    {error, any()} |
    {error, update_account_settings_errors(), tuple()}.
update_account_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_account_settings(Client, Input, []).

-spec update_account_settings(aws_client:aws_client(), update_account_settings_input(), proplists:proplist()) ->
    {ok, update_account_settings_output(), tuple()} |
    {error, any()} |
    {error, update_account_settings_errors(), tuple()}.
update_account_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAccountSettings">>, Input, Options).

%% @doc Update a component.
%%
%% There are a few modes for updating a component. The `deploymentType'
%% field defines the mode.
%%
%% You can't update a component while its deployment status, or the
%% deployment status of a service instance attached to it, is
%% `IN_PROGRESS'.
%%
%% For more information about components, see
%% Proton components:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html in
%% the
%% Proton User Guide.
-spec update_component(aws_client:aws_client(), update_component_input()) ->
    {ok, update_component_output(), tuple()} |
    {error, any()} |
    {error, update_component_errors(), tuple()}.
update_component(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_component(Client, Input, []).

-spec update_component(aws_client:aws_client(), update_component_input(), proplists:proplist()) ->
    {ok, update_component_output(), tuple()} |
    {error, any()} |
    {error, update_component_errors(), tuple()}.
update_component(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateComponent">>, Input, Options).

%% @doc Update an environment.
%%
%% If the environment is associated with an environment account connection,
%% don't update or include the
%% `protonServiceRoleArn' and `provisioningRepository' parameter to
%% update or connect to an environment account connection.
%%
%% You can only update to a new environment account connection if that
%% connection was created in the same environment account that the current
%% environment account connection was created in. The account connection must
%% also be associated with the current environment.
%%
%% If the environment isn't associated with an environment account
%% connection, don't update or include the
%% `environmentAccountConnectionId' parameter. You can't update or
%% connect the environment to an environment account
%% connection if it isn't already associated with an environment
%% connection.
%%
%% You can update either the `environmentAccountConnectionId' or
%% `protonServiceRoleArn' parameter and value. You can’t update
%% both.
%%
%% If the environment was configured for Amazon Web Services-managed
%% provisioning, omit the `provisioningRepository' parameter.
%%
%% If the environment was configured for self-managed provisioning, specify
%% the `provisioningRepository' parameter and omit the
%% `protonServiceRoleArn' and `environmentAccountConnectionId'
%% parameters.
%%
%% For more information, see Environments:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-environments.html
%% and Provisioning methods:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-works-prov-methods.html
%% in the Proton User
%% Guide.
%%
%% There are four modes for updating an environment. The `deploymentType'
%% field defines the mode.
%%
%% `NONE'
%%
%% In this mode, a deployment doesn't occur. Only the requested metadata
%% parameters are updated.
%%
%% `CURRENT_VERSION'
%%
%% In this mode, the environment is deployed and updated with the new spec
%% that you provide. Only requested parameters are updated.
%% Don’t include minor or major version parameters when you use this
%% `deployment-type'.
%%
%% `MINOR_VERSION'
%%
%% In this mode, the environment is deployed and updated with the published,
%% recommended (latest) minor version of the current major version in
%% use, by default. You can also specify a different minor version of the
%% current major version in use.
%%
%% `MAJOR_VERSION'
%%
%% In this mode, the environment is deployed and updated with the published,
%% recommended (latest) major and minor version of the current template,
%% by default. You can also specify a different major version that's
%% higher than the major version in use and a minor version.
-spec update_environment(aws_client:aws_client(), update_environment_input()) ->
    {ok, update_environment_output(), tuple()} |
    {error, any()} |
    {error, update_environment_errors(), tuple()}.
update_environment(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_environment(Client, Input, []).

-spec update_environment(aws_client:aws_client(), update_environment_input(), proplists:proplist()) ->
    {ok, update_environment_output(), tuple()} |
    {error, any()} |
    {error, update_environment_errors(), tuple()}.
update_environment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEnvironment">>, Input, Options).

%% @doc In an environment account, update an environment account connection
%% to use a new IAM role.
%%
%% For more information, see Environment account
%% connections:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html
%% in the Proton User guide.
-spec update_environment_account_connection(aws_client:aws_client(), update_environment_account_connection_input()) ->
    {ok, update_environment_account_connection_output(), tuple()} |
    {error, any()} |
    {error, update_environment_account_connection_errors(), tuple()}.
update_environment_account_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_environment_account_connection(Client, Input, []).

-spec update_environment_account_connection(aws_client:aws_client(), update_environment_account_connection_input(), proplists:proplist()) ->
    {ok, update_environment_account_connection_output(), tuple()} |
    {error, any()} |
    {error, update_environment_account_connection_errors(), tuple()}.
update_environment_account_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEnvironmentAccountConnection">>, Input, Options).

%% @doc Update an environment template.
-spec update_environment_template(aws_client:aws_client(), update_environment_template_input()) ->
    {ok, update_environment_template_output(), tuple()} |
    {error, any()} |
    {error, update_environment_template_errors(), tuple()}.
update_environment_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_environment_template(Client, Input, []).

-spec update_environment_template(aws_client:aws_client(), update_environment_template_input(), proplists:proplist()) ->
    {ok, update_environment_template_output(), tuple()} |
    {error, any()} |
    {error, update_environment_template_errors(), tuple()}.
update_environment_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEnvironmentTemplate">>, Input, Options).

%% @doc Update a major or minor version of an environment template.
-spec update_environment_template_version(aws_client:aws_client(), update_environment_template_version_input()) ->
    {ok, update_environment_template_version_output(), tuple()} |
    {error, any()} |
    {error, update_environment_template_version_errors(), tuple()}.
update_environment_template_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_environment_template_version(Client, Input, []).

-spec update_environment_template_version(aws_client:aws_client(), update_environment_template_version_input(), proplists:proplist()) ->
    {ok, update_environment_template_version_output(), tuple()} |
    {error, any()} |
    {error, update_environment_template_version_errors(), tuple()}.
update_environment_template_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEnvironmentTemplateVersion">>, Input, Options).

%% @doc Edit a service description or use a spec to add and delete service
%% instances.
%%
%% Existing service instances and the service pipeline can't be edited
%% using this API. They can only be deleted.
%%
%% Use the `description' parameter to modify the description.
%%
%% Edit the `spec' parameter to add or delete instances.
%%
%% You can't delete a service instance (remove it from the spec) if it
%% has an attached
%% component.
%%
%% For more information about components, see
%% Proton components:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html in
%% the
%% Proton User Guide.
-spec update_service(aws_client:aws_client(), update_service_input()) ->
    {ok, update_service_output(), tuple()} |
    {error, any()} |
    {error, update_service_errors(), tuple()}.
update_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_service(Client, Input, []).

-spec update_service(aws_client:aws_client(), update_service_input(), proplists:proplist()) ->
    {ok, update_service_output(), tuple()} |
    {error, any()} |
    {error, update_service_errors(), tuple()}.
update_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateService">>, Input, Options).

%% @doc Update a service instance.
%%
%% There are a few modes for updating a service instance. The
%% `deploymentType'
%% field defines the mode.
%%
%% You can't update a service instance while its deployment status, or
%% the deployment
%% status of a component attached to it, is `IN_PROGRESS'.
%%
%% For more information about components, see
%% Proton components:
%% https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html in
%% the
%% Proton User Guide.
-spec update_service_instance(aws_client:aws_client(), update_service_instance_input()) ->
    {ok, update_service_instance_output(), tuple()} |
    {error, any()} |
    {error, update_service_instance_errors(), tuple()}.
update_service_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_service_instance(Client, Input, []).

-spec update_service_instance(aws_client:aws_client(), update_service_instance_input(), proplists:proplist()) ->
    {ok, update_service_instance_output(), tuple()} |
    {error, any()} |
    {error, update_service_instance_errors(), tuple()}.
update_service_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateServiceInstance">>, Input, Options).

%% @doc Update the service pipeline.
%%
%% There are four modes for updating a service pipeline. The
%% `deploymentType'
%% field defines the mode.
%%
%% `NONE'
%%
%% In this mode, a deployment doesn't occur. Only the requested
%% metadata parameters are updated.
%%
%% `CURRENT_VERSION'
%%
%% In this mode, the service pipeline is deployed and updated with the new
%% spec that
%% you provide. Only requested parameters are updated. Don’t include
%% major or minor version parameters when you use this `deployment-type'.
%%
%% `MINOR_VERSION'
%%
%% In this mode, the service pipeline is deployed and updated with the
%% published,
%% recommended (latest) minor version of the current major version in use, by
%% default. You
%% can specify a different minor version of the current major version in use.
%%
%% `MAJOR_VERSION'
%%
%% In this mode, the service pipeline is deployed and updated with the
%% published,
%% recommended (latest) major and minor version of the current template by
%% default. You can
%% specify a different major version that's higher than the major version
%% in use and a
%% minor version.
-spec update_service_pipeline(aws_client:aws_client(), update_service_pipeline_input()) ->
    {ok, update_service_pipeline_output(), tuple()} |
    {error, any()} |
    {error, update_service_pipeline_errors(), tuple()}.
update_service_pipeline(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_service_pipeline(Client, Input, []).

-spec update_service_pipeline(aws_client:aws_client(), update_service_pipeline_input(), proplists:proplist()) ->
    {ok, update_service_pipeline_output(), tuple()} |
    {error, any()} |
    {error, update_service_pipeline_errors(), tuple()}.
update_service_pipeline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateServicePipeline">>, Input, Options).

%% @doc Update the service sync blocker by resolving it.
-spec update_service_sync_blocker(aws_client:aws_client(), update_service_sync_blocker_input()) ->
    {ok, update_service_sync_blocker_output(), tuple()} |
    {error, any()} |
    {error, update_service_sync_blocker_errors(), tuple()}.
update_service_sync_blocker(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_service_sync_blocker(Client, Input, []).

-spec update_service_sync_blocker(aws_client:aws_client(), update_service_sync_blocker_input(), proplists:proplist()) ->
    {ok, update_service_sync_blocker_output(), tuple()} |
    {error, any()} |
    {error, update_service_sync_blocker_errors(), tuple()}.
update_service_sync_blocker(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateServiceSyncBlocker">>, Input, Options).

%% @doc Update the Proton Ops config file.
-spec update_service_sync_config(aws_client:aws_client(), update_service_sync_config_input()) ->
    {ok, update_service_sync_config_output(), tuple()} |
    {error, any()} |
    {error, update_service_sync_config_errors(), tuple()}.
update_service_sync_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_service_sync_config(Client, Input, []).

-spec update_service_sync_config(aws_client:aws_client(), update_service_sync_config_input(), proplists:proplist()) ->
    {ok, update_service_sync_config_output(), tuple()} |
    {error, any()} |
    {error, update_service_sync_config_errors(), tuple()}.
update_service_sync_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateServiceSyncConfig">>, Input, Options).

%% @doc Update a service template.
-spec update_service_template(aws_client:aws_client(), update_service_template_input()) ->
    {ok, update_service_template_output(), tuple()} |
    {error, any()} |
    {error, update_service_template_errors(), tuple()}.
update_service_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_service_template(Client, Input, []).

-spec update_service_template(aws_client:aws_client(), update_service_template_input(), proplists:proplist()) ->
    {ok, update_service_template_output(), tuple()} |
    {error, any()} |
    {error, update_service_template_errors(), tuple()}.
update_service_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateServiceTemplate">>, Input, Options).

%% @doc Update a major or minor version of a service template.
-spec update_service_template_version(aws_client:aws_client(), update_service_template_version_input()) ->
    {ok, update_service_template_version_output(), tuple()} |
    {error, any()} |
    {error, update_service_template_version_errors(), tuple()}.
update_service_template_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_service_template_version(Client, Input, []).

-spec update_service_template_version(aws_client:aws_client(), update_service_template_version_input(), proplists:proplist()) ->
    {ok, update_service_template_version_output(), tuple()} |
    {error, any()} |
    {error, update_service_template_version_errors(), tuple()}.
update_service_template_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateServiceTemplateVersion">>, Input, Options).

%% @doc Update template sync configuration parameters, except for the
%% `templateName' and `templateType'.
%%
%% Repository details
%% (branch, name, and provider) should be of a linked repository. A linked
%% repository is a repository that has been registered with Proton. For
%% more information, see `CreateRepository'.
-spec update_template_sync_config(aws_client:aws_client(), update_template_sync_config_input()) ->
    {ok, update_template_sync_config_output(), tuple()} |
    {error, any()} |
    {error, update_template_sync_config_errors(), tuple()}.
update_template_sync_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_template_sync_config(Client, Input, []).

-spec update_template_sync_config(aws_client:aws_client(), update_template_sync_config_input(), proplists:proplist()) ->
    {ok, update_template_sync_config_output(), tuple()} |
    {error, any()} |
    {error, update_template_sync_config_errors(), tuple()}.
update_template_sync_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTemplateSyncConfig">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"proton">>},
    Host = build_host(<<"proton">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"AwsProton20200720.", Action/binary>>}
    ],

    Input = Input0,

    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
