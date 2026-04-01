%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Security Agent service documentation.
-module(aws_securityagent).

-export([add_artifact/2,
         add_artifact/3,
         batch_delete_pentests/2,
         batch_delete_pentests/3,
         batch_get_agent_spaces/2,
         batch_get_agent_spaces/3,
         batch_get_artifact_metadata/2,
         batch_get_artifact_metadata/3,
         batch_get_findings/2,
         batch_get_findings/3,
         batch_get_pentest_job_tasks/2,
         batch_get_pentest_job_tasks/3,
         batch_get_pentest_jobs/2,
         batch_get_pentest_jobs/3,
         batch_get_pentests/2,
         batch_get_pentests/3,
         batch_get_target_domains/2,
         batch_get_target_domains/3,
         create_agent_space/2,
         create_agent_space/3,
         create_application/2,
         create_application/3,
         create_integration/2,
         create_integration/3,
         create_membership/2,
         create_membership/3,
         create_pentest/2,
         create_pentest/3,
         create_target_domain/2,
         create_target_domain/3,
         delete_agent_space/2,
         delete_agent_space/3,
         delete_application/2,
         delete_application/3,
         delete_artifact/2,
         delete_artifact/3,
         delete_integration/2,
         delete_integration/3,
         delete_membership/2,
         delete_membership/3,
         delete_target_domain/2,
         delete_target_domain/3,
         get_application/2,
         get_application/3,
         get_artifact/2,
         get_artifact/3,
         get_integration/2,
         get_integration/3,
         initiate_provider_registration/2,
         initiate_provider_registration/3,
         list_agent_spaces/2,
         list_agent_spaces/3,
         list_applications/2,
         list_applications/3,
         list_artifacts/2,
         list_artifacts/3,
         list_discovered_endpoints/2,
         list_discovered_endpoints/3,
         list_findings/2,
         list_findings/3,
         list_integrated_resources/2,
         list_integrated_resources/3,
         list_integrations/2,
         list_integrations/3,
         list_memberships/2,
         list_memberships/3,
         list_pentest_job_tasks/2,
         list_pentest_job_tasks/3,
         list_pentest_jobs_for_pentest/2,
         list_pentest_jobs_for_pentest/3,
         list_pentests/2,
         list_pentests/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_target_domains/2,
         list_target_domains/3,
         start_code_remediation/2,
         start_code_remediation/3,
         start_pentest_job/2,
         start_pentest_job/3,
         stop_pentest_job/2,
         stop_pentest_job/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_agent_space/2,
         update_agent_space/3,
         update_application/2,
         update_application/3,
         update_finding/2,
         update_finding/3,
         update_integrated_resources/2,
         update_integrated_resources/3,
         update_pentest/2,
         update_pentest/3,
         update_target_domain/2,
         update_target_domain/3,
         verify_target_domain/2,
         verify_target_domain/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% create_pentest_output() :: #{
%%   <<"agentSpaceId">> => [string()],
%%   <<"assets">> => assets(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"excludeRiskTypes">> => list(list(any())()),
%%   <<"logConfig">> => cloud_watch_log(),
%%   <<"pentestId">> => [string()],
%%   <<"serviceRole">> => string(),
%%   <<"title">> => [string()],
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type create_pentest_output() :: #{binary() => any()}.


%% Example:
%% git_hub_integration_input() :: #{
%%   <<"code">> => string(),
%%   <<"organizationName">> => [string()],
%%   <<"state">> => string()
%% }
-type git_hub_integration_input() :: #{binary() => any()}.


%% Example:
%% pentest() :: #{
%%   <<"agentSpaceId">> => [string()],
%%   <<"assets">> => assets(),
%%   <<"codeRemediationStrategy">> => list(any()),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"excludeRiskTypes">> => list(list(any())()),
%%   <<"logConfig">> => cloud_watch_log(),
%%   <<"networkTrafficConfig">> => network_traffic_config(),
%%   <<"pentestId">> => [string()],
%%   <<"serviceRole">> => string(),
%%   <<"title">> => [string()],
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"vpcConfig">> => vpc_config()
%% }
-type pentest() :: #{binary() => any()}.


%% Example:
%% artifact_metadata_item() :: #{
%%   <<"agentSpaceId">> => string(),
%%   <<"artifactId">> => string(),
%%   <<"fileName">> => [string()],
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type artifact_metadata_item() :: #{binary() => any()}.


%% Example:
%% task() :: #{
%%   <<"agentSpaceId">> => [string()],
%%   <<"categories">> => list(category()),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => [string()],
%%   <<"executionStatus">> => list(any()),
%%   <<"logsLocation">> => log_location(),
%%   <<"pentestId">> => [string()],
%%   <<"pentestJobId">> => [string()],
%%   <<"riskType">> => list(any()),
%%   <<"targetEndpoint">> => endpoint(),
%%   <<"taskId">> => [string()],
%%   <<"title">> => [string()],
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type task() :: #{binary() => any()}.


%% Example:
%% update_agent_space_input() :: #{
%%   <<"agentSpaceId">> := string(),
%%   <<"awsResources">> => aws_resources(),
%%   <<"codeReviewSettings">> => code_review_settings(),
%%   <<"description">> => [string()],
%%   <<"name">> => string(),
%%   <<"targetDomainIds">> => list([string()]())
%% }
-type update_agent_space_input() :: #{binary() => any()}.


%% Example:
%% batch_get_agent_spaces_input() :: #{
%%   <<"agentSpaceIds">> := list(string())
%% }
-type batch_get_agent_spaces_input() :: #{binary() => any()}.


%% Example:
%% agent_space_summary() :: #{
%%   <<"agentSpaceId">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"name">> => [string()],
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type agent_space_summary() :: #{binary() => any()}.

%% Example:
%% delete_membership_response() :: #{}
-type delete_membership_response() :: #{}.


%% Example:
%% batch_get_target_domains_input() :: #{
%%   <<"targetDomainIds">> := list([string()]())
%% }
-type batch_get_target_domains_input() :: #{binary() => any()}.


%% Example:
%% list_memberships_request() :: #{
%%   <<"agentSpaceId">> := string(),
%%   <<"applicationId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"memberType">> => list(any()),
%%   <<"nextToken">> => string()
%% }
-type list_memberships_request() :: #{binary() => any()}.


%% Example:
%% create_pentest_input() :: #{
%%   <<"agentSpaceId">> := [string()],
%%   <<"assets">> => assets(),
%%   <<"codeRemediationStrategy">> => list(any()),
%%   <<"excludeRiskTypes">> => list(list(any())()),
%%   <<"logConfig">> => cloud_watch_log(),
%%   <<"networkTrafficConfig">> => network_traffic_config(),
%%   <<"serviceRole">> => string(),
%%   <<"title">> := [string()],
%%   <<"vpcConfig">> => vpc_config()
%% }
-type create_pentest_input() :: #{binary() => any()}.


%% Example:
%% get_artifact_input() :: #{
%%   <<"agentSpaceId">> := string(),
%%   <<"artifactId">> := string()
%% }
-type get_artifact_input() :: #{binary() => any()}.

%% Example:
%% delete_artifact_output() :: #{}
-type delete_artifact_output() :: #{}.


%% Example:
%% list_agent_spaces_output() :: #{
%%   <<"agentSpaceSummaries">> => list(agent_space_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_agent_spaces_output() :: #{binary() => any()}.


%% Example:
%% user_metadata() :: #{
%%   <<"email">> => string(),
%%   <<"username">> => [string()]
%% }
-type user_metadata() :: #{binary() => any()}.


%% Example:
%% delete_artifact_input() :: #{
%%   <<"agentSpaceId">> := string(),
%%   <<"artifactId">> := string()
%% }
-type delete_artifact_input() :: #{binary() => any()}.


%% Example:
%% id_c_configuration() :: #{
%%   <<"idcApplicationArn">> => string(),
%%   <<"idcInstanceArn">> => string()
%% }
-type id_c_configuration() :: #{binary() => any()}.


%% Example:
%% finding_summary() :: #{
%%   <<"agentSpaceId">> => [string()],
%%   <<"confidence">> => list(any()),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"findingId">> => [string()],
%%   <<"name">> => [string()],
%%   <<"pentestId">> => [string()],
%%   <<"pentestJobId">> => [string()],
%%   <<"riskLevel">> => list(any()),
%%   <<"riskType">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type finding_summary() :: #{binary() => any()}.


%% Example:
%% list_pentest_jobs_for_pentest_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"pentestJobSummaries">> => list(pentest_job_summary())
%% }
-type list_pentest_jobs_for_pentest_output() :: #{binary() => any()}.


%% Example:
%% discovered_endpoint() :: #{
%%   <<"agentSpaceId">> => [string()],
%%   <<"description">> => [string()],
%%   <<"evidence">> => [string()],
%%   <<"operation">> => [string()],
%%   <<"pentestJobId">> => [string()],
%%   <<"taskId">> => [string()],
%%   <<"uri">> => [string()]
%% }
-type discovered_endpoint() :: #{binary() => any()}.


%% Example:
%% batch_get_pentests_input() :: #{
%%   <<"agentSpaceId">> := [string()],
%%   <<"pentestIds">> := list([string()]())
%% }
-type batch_get_pentests_input() :: #{binary() => any()}.


%% Example:
%% list_discovered_endpoints_input() :: #{
%%   <<"agentSpaceId">> := [string()],
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"pentestJobId">> := [string()],
%%   <<"prefix">> => [string()]
%% }
-type list_discovered_endpoints_input() :: #{binary() => any()}.


%% Example:
%% integrated_resource_input_item() :: #{
%%   <<"capabilities">> => list(),
%%   <<"resource">> => list()
%% }
-type integrated_resource_input_item() :: #{binary() => any()}.


%% Example:
%% delete_integration_input() :: #{
%%   <<"integrationId">> := string()
%% }
-type delete_integration_input() :: #{binary() => any()}.


%% Example:
%% target_domain_summary() :: #{
%%   <<"domainName">> => [string()],
%%   <<"targetDomainId">> => string(),
%%   <<"verificationStatus">> => list(any())
%% }
-type target_domain_summary() :: #{binary() => any()}.


%% Example:
%% pentest_job() :: #{
%%   <<"actors">> => list(actor()),
%%   <<"allowedDomains">> => list(endpoint()),
%%   <<"codeRemediationStrategy">> => list(any()),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"documents">> => list(document_info()),
%%   <<"endpoints">> => list(endpoint()),
%%   <<"errorInformation">> => error_information(),
%%   <<"excludePaths">> => list(endpoint()),
%%   <<"excludeRiskTypes">> => list(list(any())()),
%%   <<"executionContext">> => list(execution_context()),
%%   <<"integratedRepositories">> => list(integrated_repository()),
%%   <<"logConfig">> => cloud_watch_log(),
%%   <<"networkTrafficConfig">> => network_traffic_config(),
%%   <<"overview">> => [string()],
%%   <<"pentestId">> => [string()],
%%   <<"pentestJobId">> => [string()],
%%   <<"serviceRole">> => string(),
%%   <<"sourceCode">> => list(source_code_repository()),
%%   <<"status">> => list(any()),
%%   <<"steps">> => list(step()),
%%   <<"title">> => [string()],
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"vpcConfig">> => vpc_config()
%% }
-type pentest_job() :: #{binary() => any()}.


%% Example:
%% batch_get_agent_spaces_output() :: #{
%%   <<"agentSpaces">> => list(agent_space()),
%%   <<"notFound">> => list(string())
%% }
-type batch_get_agent_spaces_output() :: #{binary() => any()}.


%% Example:
%% stop_pentest_job_input() :: #{
%%   <<"agentSpaceId">> := [string()],
%%   <<"pentestJobId">> := [string()]
%% }
-type stop_pentest_job_input() :: #{binary() => any()}.


%% Example:
%% task_summary() :: #{
%%   <<"agentSpaceId">> => [string()],
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"executionStatus">> => list(any()),
%%   <<"pentestId">> => [string()],
%%   <<"pentestJobId">> => [string()],
%%   <<"riskType">> => list(any()),
%%   <<"taskId">> => [string()],
%%   <<"title">> => [string()],
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type task_summary() :: #{binary() => any()}.


%% Example:
%% list_pentests_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"pentestSummaries">> => list(pentest_summary())
%% }
-type list_pentests_output() :: #{binary() => any()}.


%% Example:
%% network_traffic_config() :: #{
%%   <<"customHeaders">> => list(custom_header()),
%%   <<"rules">> => list(network_traffic_rule())
%% }
-type network_traffic_config() :: #{binary() => any()}.


%% Example:
%% log_location() :: #{
%%   <<"cloudWatchLog">> => cloud_watch_log(),
%%   <<"logType">> => list(any())
%% }
-type log_location() :: #{binary() => any()}.


%% Example:
%% batch_get_pentest_jobs_input() :: #{
%%   <<"agentSpaceId">> := [string()],
%%   <<"pentestJobIds">> := list([string()]())
%% }
-type batch_get_pentest_jobs_input() :: #{binary() => any()}.


%% Example:
%% create_target_domain_input() :: #{
%%   <<"tags">> => map(),
%%   <<"targetDomainName">> := [string()],
%%   <<"verificationMethod">> := list(any())
%% }
-type create_target_domain_input() :: #{binary() => any()}.


%% Example:
%% integration_summary() :: #{
%%   <<"displayName">> => [string()],
%%   <<"installationId">> => [string()],
%%   <<"integrationId">> => [string()],
%%   <<"provider">> => list(any()),
%%   <<"providerType">> => list(any())
%% }
-type integration_summary() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.


%% Example:
%% list_target_domains_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"targetDomainSummaries">> => list(target_domain_summary())
%% }
-type list_target_domains_output() :: #{binary() => any()}.


%% Example:
%% create_integration_input() :: #{
%%   <<"input">> := list(),
%%   <<"integrationDisplayName">> := [string()],
%%   <<"kmsKeyId">> => string(),
%%   <<"provider">> := list(any()),
%%   <<"tags">> => map()
%% }
-type create_integration_input() :: #{binary() => any()}.


%% Example:
%% add_artifact_output() :: #{
%%   <<"artifactId">> => string()
%% }
-type add_artifact_output() :: #{binary() => any()}.


%% Example:
%% git_hub_repository_resource() :: #{
%%   <<"name">> => string(),
%%   <<"owner">> => string()
%% }
-type git_hub_repository_resource() :: #{binary() => any()}.


%% Example:
%% list_pentest_job_tasks_input() :: #{
%%   <<"agentSpaceId">> := [string()],
%%   <<"categoryName">> => [string()],
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"pentestJobId">> => [string()],
%%   <<"stepName">> => list(any())
%% }
-type list_pentest_job_tasks_input() :: #{binary() => any()}.


%% Example:
%% update_target_domain_input() :: #{
%%   <<"targetDomainId">> := string(),
%%   <<"verificationMethod">> := list(any())
%% }
-type update_target_domain_input() :: #{binary() => any()}.


%% Example:
%% http_verification() :: #{
%%   <<"routePath">> => [string()],
%%   <<"token">> => [string()]
%% }
-type http_verification() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% code_remediation_task_details() :: #{
%%   <<"codeDiffLink">> => [string()],
%%   <<"pullRequestLink">> => [string()],
%%   <<"repoName">> => [string()]
%% }
-type code_remediation_task_details() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% list_integrated_resources_input() :: #{
%%   <<"agentSpaceId">> := string(),
%%   <<"integrationId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceType">> => list(any())
%% }
-type list_integrated_resources_input() :: #{binary() => any()}.


%% Example:
%% user_config() :: #{
%%   <<"role">> => list(any())
%% }
-type user_config() :: #{binary() => any()}.


%% Example:
%% agent_space() :: #{
%%   <<"agentSpaceId">> => string(),
%%   <<"awsResources">> => aws_resources(),
%%   <<"codeReviewSettings">> => code_review_settings(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => [string()],
%%   <<"kmsKeyId">> => string(),
%%   <<"name">> => [string()],
%%   <<"targetDomainIds">> => list([string()]()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type agent_space() :: #{binary() => any()}.


%% Example:
%% get_integration_output() :: #{
%%   <<"displayName">> => [string()],
%%   <<"installationId">> => [string()],
%%   <<"integrationId">> => string(),
%%   <<"kmsKeyId">> => string(),
%%   <<"provider">> => list(any()),
%%   <<"providerType">> => list(any())
%% }
-type get_integration_output() :: #{binary() => any()}.


%% Example:
%% update_pentest_input() :: #{
%%   <<"agentSpaceId">> := [string()],
%%   <<"assets">> => assets(),
%%   <<"codeRemediationStrategy">> => list(any()),
%%   <<"excludeRiskTypes">> => list(list(any())()),
%%   <<"logConfig">> => cloud_watch_log(),
%%   <<"networkTrafficConfig">> => network_traffic_config(),
%%   <<"pentestId">> := [string()],
%%   <<"serviceRole">> => string(),
%%   <<"title">> => [string()],
%%   <<"vpcConfig">> => vpc_config()
%% }
-type update_pentest_input() :: #{binary() => any()}.


%% Example:
%% list_integrated_resources_output() :: #{
%%   <<"integratedResourceSummaries">> => list(integrated_resource_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_integrated_resources_output() :: #{binary() => any()}.


%% Example:
%% update_pentest_output() :: #{
%%   <<"agentSpaceId">> => [string()],
%%   <<"assets">> => assets(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"excludeRiskTypes">> => list(list(any())()),
%%   <<"logConfig">> => cloud_watch_log(),
%%   <<"pentestId">> => [string()],
%%   <<"serviceRole">> => string(),
%%   <<"title">> => [string()],
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type update_pentest_output() :: #{binary() => any()}.


%% Example:
%% integrated_repository() :: #{
%%   <<"integrationId">> => [string()],
%%   <<"providerResourceId">> => [string()]
%% }
-type integrated_repository() :: #{binary() => any()}.


%% Example:
%% batch_get_pentest_jobs_output() :: #{
%%   <<"notFound">> => list([string()]()),
%%   <<"pentestJobs">> => list(pentest_job())
%% }
-type batch_get_pentest_jobs_output() :: #{binary() => any()}.

%% Example:
%% update_integrated_resources_output() :: #{}
-type update_integrated_resources_output() :: #{}.


%% Example:
%% delete_target_domain_output() :: #{
%%   <<"targetDomainId">> => string()
%% }
-type delete_target_domain_output() :: #{binary() => any()}.


%% Example:
%% list_pentests_input() :: #{
%%   <<"agentSpaceId">> := [string()],
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_pentests_input() :: #{binary() => any()}.


%% Example:
%% update_agent_space_output() :: #{
%%   <<"agentSpaceId">> => string(),
%%   <<"awsResources">> => aws_resources(),
%%   <<"codeReviewSettings">> => code_review_settings(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => [string()],
%%   <<"name">> => string(),
%%   <<"targetDomainIds">> => list([string()]()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type update_agent_space_output() :: #{binary() => any()}.


%% Example:
%% delete_agent_space_input() :: #{
%%   <<"agentSpaceId">> := string()
%% }
-type delete_agent_space_input() :: #{binary() => any()}.


%% Example:
%% vpc_config() :: #{
%%   <<"securityGroupArns">> => list(string()),
%%   <<"subnetArns">> => list(string()),
%%   <<"vpcArn">> => string()
%% }
-type vpc_config() :: #{binary() => any()}.


%% Example:
%% finding() :: #{
%%   <<"agentSpaceId">> => [string()],
%%   <<"attackScript">> => [string()],
%%   <<"codeRemediationTask">> => code_remediation_task(),
%%   <<"confidence">> => list(any()),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => [string()],
%%   <<"findingId">> => [string()],
%%   <<"lastUpdatedBy">> => [string()],
%%   <<"name">> => [string()],
%%   <<"pentestId">> => [string()],
%%   <<"pentestJobId">> => [string()],
%%   <<"reasoning">> => [string()],
%%   <<"riskLevel">> => list(any()),
%%   <<"riskScore">> => [string()],
%%   <<"riskType">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"taskId">> => [string()],
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type finding() :: #{binary() => any()}.


%% Example:
%% authentication() :: #{
%%   <<"providerType">> => list(any()),
%%   <<"value">> => [string()]
%% }
-type authentication() :: #{binary() => any()}.


%% Example:
%% update_finding_input() :: #{
%%   <<"agentSpaceId">> := [string()],
%%   <<"findingId">> := [string()],
%%   <<"riskLevel">> => list(any()),
%%   <<"status">> => list(any())
%% }
-type update_finding_input() :: #{binary() => any()}.


%% Example:
%% create_application_request() :: #{
%%   <<"defaultKmsKeyId">> => string(),
%%   <<"idcInstanceArn">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"tags">> => map()
%% }
-type create_application_request() :: #{binary() => any()}.


%% Example:
%% list_findings_input() :: #{
%%   <<"agentSpaceId">> := [string()],
%%   <<"confidence">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"name">> => [string()],
%%   <<"nextToken">> => string(),
%%   <<"pentestJobId">> := [string()],
%%   <<"riskLevel">> => list(any()),
%%   <<"riskType">> => [string()],
%%   <<"status">> => list(any())
%% }
-type list_findings_input() :: #{binary() => any()}.


%% Example:
%% membership_summary() :: #{
%%   <<"agentSpaceId">> => string(),
%%   <<"applicationId">> => string(),
%%   <<"config">> => list(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdBy">> => [string()],
%%   <<"memberType">> => list(any()),
%%   <<"membershipId">> => string(),
%%   <<"metadata">> => list(),
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"updatedBy">> => [string()]
%% }
-type membership_summary() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"path">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.

%% Example:
%% update_finding_output() :: #{}
-type update_finding_output() :: #{}.


%% Example:
%% git_hub_resource_capabilities() :: #{
%%   <<"leaveComments">> => [boolean()],
%%   <<"remediateCode">> => [boolean()]
%% }
-type git_hub_resource_capabilities() :: #{binary() => any()}.


%% Example:
%% create_application_response() :: #{
%%   <<"applicationId">> => string()
%% }
-type create_application_response() :: #{binary() => any()}.


%% Example:
%% list_discovered_endpoints_output() :: #{
%%   <<"discoveredEndpoints">> => list(discovered_endpoint()),
%%   <<"nextToken">> => string()
%% }
-type list_discovered_endpoints_output() :: #{binary() => any()}.


%% Example:
%% git_hub_repository_metadata() :: #{
%%   <<"accessType">> => list(any()),
%%   <<"name">> => string(),
%%   <<"owner">> => string(),
%%   <<"providerResourceId">> => string()
%% }
-type git_hub_repository_metadata() :: #{binary() => any()}.


%% Example:
%% tag_resource_input() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_input() :: #{binary() => any()}.


%% Example:
%% start_pentest_job_output() :: #{
%%   <<"agentSpaceId">> => [string()],
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"pentestId">> => [string()],
%%   <<"pentestJobId">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"title">> => [string()],
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type start_pentest_job_output() :: #{binary() => any()}.


%% Example:
%% delete_agent_space_output() :: #{
%%   <<"agentSpaceId">> => string()
%% }
-type delete_agent_space_output() :: #{binary() => any()}.


%% Example:
%% verification_details() :: #{
%%   <<"dnsTxt">> => dns_verification(),
%%   <<"httpRoute">> => http_verification(),
%%   <<"method">> => list(any())
%% }
-type verification_details() :: #{binary() => any()}.


%% Example:
%% list_integrations_output() :: #{
%%   <<"integrationSummaries">> => list(integration_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_integrations_output() :: #{binary() => any()}.


%% Example:
%% source_code_repository() :: #{
%%   <<"s3Location">> => [string()]
%% }
-type source_code_repository() :: #{binary() => any()}.


%% Example:
%% endpoint() :: #{
%%   <<"uri">> => [string()]
%% }
-type endpoint() :: #{binary() => any()}.

%% Example:
%% tag_resource_output() :: #{}
-type tag_resource_output() :: #{}.


%% Example:
%% update_application_request() :: #{
%%   <<"applicationId">> := string(),
%%   <<"defaultKmsKeyId">> => string(),
%%   <<"roleArn">> => string()
%% }
-type update_application_request() :: #{binary() => any()}.


%% Example:
%% update_application_response() :: #{
%%   <<"applicationId">> => string()
%% }
-type update_application_response() :: #{binary() => any()}.


%% Example:
%% add_artifact_input() :: #{
%%   <<"agentSpaceId">> := string(),
%%   <<"artifactContent">> := [binary()],
%%   <<"artifactType">> := list(any()),
%%   <<"fileName">> := [string()]
%% }
-type add_artifact_input() :: #{binary() => any()}.


%% Example:
%% create_agent_space_output() :: #{
%%   <<"agentSpaceId">> => string(),
%%   <<"awsResources">> => aws_resources(),
%%   <<"codeReviewSettings">> => code_review_settings(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => [string()],
%%   <<"kmsKeyId">> => string(),
%%   <<"name">> => string(),
%%   <<"targetDomainIds">> => list([string()]()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type create_agent_space_output() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_artifacts_input() :: #{
%%   <<"agentSpaceId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_artifacts_input() :: #{binary() => any()}.


%% Example:
%% get_application_response() :: #{
%%   <<"applicationId">> => string(),
%%   <<"applicationName">> => [string()],
%%   <<"defaultKmsKeyId">> => string(),
%%   <<"domain">> => string(),
%%   <<"idcConfiguration">> => id_c_configuration(),
%%   <<"roleArn">> => string()
%% }
-type get_application_response() :: #{binary() => any()}.


%% Example:
%% get_artifact_output() :: #{
%%   <<"agentSpaceId">> => string(),
%%   <<"artifact">> => artifact(),
%%   <<"artifactId">> => string(),
%%   <<"fileName">> => [string()],
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type get_artifact_output() :: #{binary() => any()}.


%% Example:
%% batch_get_pentest_job_tasks_output() :: #{
%%   <<"notFound">> => list([string()]()),
%%   <<"tasks">> => list(task())
%% }
-type batch_get_pentest_job_tasks_output() :: #{binary() => any()}.


%% Example:
%% list_findings_output() :: #{
%%   <<"findingsSummaries">> => list(finding_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_findings_output() :: #{binary() => any()}.


%% Example:
%% list_target_domains_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_target_domains_input() :: #{binary() => any()}.


%% Example:
%% update_integrated_resources_input() :: #{
%%   <<"agentSpaceId">> := string(),
%%   <<"integrationId">> := string(),
%%   <<"items">> := list(integrated_resource_input_item())
%% }
-type update_integrated_resources_input() :: #{binary() => any()}.


%% Example:
%% create_agent_space_input() :: #{
%%   <<"awsResources">> => aws_resources(),
%%   <<"codeReviewSettings">> => code_review_settings(),
%%   <<"description">> => [string()],
%%   <<"kmsKeyId">> => string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map(),
%%   <<"targetDomainIds">> => list([string()]())
%% }
-type create_agent_space_input() :: #{binary() => any()}.

%% Example:
%% delete_integration_output() :: #{}
-type delete_integration_output() :: #{}.


%% Example:
%% batch_get_findings_output() :: #{
%%   <<"findings">> => list(finding()),
%%   <<"notFound">> => list([string()]())
%% }
-type batch_get_findings_output() :: #{binary() => any()}.


%% Example:
%% list_pentest_jobs_for_pentest_input() :: #{
%%   <<"agentSpaceId">> := [string()],
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"pentestId">> := [string()]
%% }
-type list_pentest_jobs_for_pentest_input() :: #{binary() => any()}.


%% Example:
%% list_applications_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_applications_request() :: #{binary() => any()}.


%% Example:
%% artifact_summary() :: #{
%%   <<"artifactId">> => string(),
%%   <<"artifactType">> => list(any()),
%%   <<"fileName">> => [string()]
%% }
-type artifact_summary() :: #{binary() => any()}.


%% Example:
%% update_target_domain_output() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"domainName">> => [string()],
%%   <<"targetDomainId">> => string(),
%%   <<"verificationDetails">> => verification_details(),
%%   <<"verificationStatus">> => list(any()),
%%   <<"verifiedAt">> => [non_neg_integer()]
%% }
-type update_target_domain_output() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% verify_target_domain_input() :: #{
%%   <<"targetDomainId">> := string()
%% }
-type verify_target_domain_input() :: #{binary() => any()}.


%% Example:
%% pentest_summary() :: #{
%%   <<"agentSpaceId">> => [string()],
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"pentestId">> => [string()],
%%   <<"title">> => [string()],
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type pentest_summary() :: #{binary() => any()}.


%% Example:
%% untag_resource_input() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_input() :: #{binary() => any()}.


%% Example:
%% list_memberships_response() :: #{
%%   <<"membershipSummaries">> => list(membership_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_memberships_response() :: #{binary() => any()}.


%% Example:
%% create_integration_output() :: #{
%%   <<"integrationId">> => string()
%% }
-type create_integration_output() :: #{binary() => any()}.


%% Example:
%% pentest_job_summary() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"pentestId">> => [string()],
%%   <<"pentestJobId">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"title">> => [string()],
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type pentest_job_summary() :: #{binary() => any()}.


%% Example:
%% start_code_remediation_input() :: #{
%%   <<"agentSpaceId">> := [string()],
%%   <<"findingIds">> := list([string()]()),
%%   <<"pentestJobId">> := [string()]
%% }
-type start_code_remediation_input() :: #{binary() => any()}.


%% Example:
%% dns_verification() :: #{
%%   <<"dnsRecordName">> => [string()],
%%   <<"dnsRecordType">> => list(any()),
%%   <<"token">> => [string()]
%% }
-type dns_verification() :: #{binary() => any()}.


%% Example:
%% code_review_settings() :: #{
%%   <<"controlsScanning">> => [boolean()],
%%   <<"generalPurposeScanning">> => [boolean()]
%% }
-type code_review_settings() :: #{binary() => any()}.


%% Example:
%% batch_get_pentests_output() :: #{
%%   <<"notFound">> => list([string()]()),
%%   <<"pentests">> => list(pentest())
%% }
-type batch_get_pentests_output() :: #{binary() => any()}.


%% Example:
%% start_pentest_job_input() :: #{
%%   <<"agentSpaceId">> := [string()],
%%   <<"pentestId">> := [string()]
%% }
-type start_pentest_job_input() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{}
-type list_tags_for_resource_input() :: #{}.

%% Example:
%% untag_resource_output() :: #{}
-type untag_resource_output() :: #{}.


%% Example:
%% initiate_provider_registration_output() :: #{
%%   <<"csrfState">> => string(),
%%   <<"redirectTo">> => string()
%% }
-type initiate_provider_registration_output() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"serviceCode">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% integrated_resource_summary() :: #{
%%   <<"capabilities">> => list(),
%%   <<"integrationId">> => string(),
%%   <<"resource">> => list()
%% }
-type integrated_resource_summary() :: #{binary() => any()}.


%% Example:
%% batch_get_findings_input() :: #{
%%   <<"agentSpaceId">> := [string()],
%%   <<"findingIds">> := list([string()]())
%% }
-type batch_get_findings_input() :: #{binary() => any()}.


%% Example:
%% create_target_domain_output() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"domainName">> => [string()],
%%   <<"targetDomainId">> => string(),
%%   <<"verificationDetails">> => verification_details(),
%%   <<"verificationStatus">> => list(any()),
%%   <<"verifiedAt">> => [non_neg_integer()]
%% }
-type create_target_domain_output() :: #{binary() => any()}.


%% Example:
%% delete_pentest_failure() :: #{
%%   <<"pentestId">> => [string()],
%%   <<"reason">> => [string()]
%% }
-type delete_pentest_failure() :: #{binary() => any()}.


%% Example:
%% application_summary() :: #{
%%   <<"applicationId">> => string(),
%%   <<"applicationName">> => [string()],
%%   <<"defaultKmsKeyId">> => string(),
%%   <<"domain">> => string()
%% }
-type application_summary() :: #{binary() => any()}.


%% Example:
%% actor() :: #{
%%   <<"authentication">> => authentication(),
%%   <<"description">> => [string()],
%%   <<"identifier">> => [string()],
%%   <<"uris">> => list([string()]())
%% }
-type actor() :: #{binary() => any()}.


%% Example:
%% network_traffic_rule() :: #{
%%   <<"effect">> => list(any()),
%%   <<"networkTrafficRuleType">> => list(any()),
%%   <<"pattern">> => [string()]
%% }
-type network_traffic_rule() :: #{binary() => any()}.


%% Example:
%% category() :: #{
%%   <<"isPrimary">> => [boolean()],
%%   <<"name">> => [string()]
%% }
-type category() :: #{binary() => any()}.


%% Example:
%% cloud_watch_log() :: #{
%%   <<"logGroup">> => [string()],
%%   <<"logStream">> => [string()]
%% }
-type cloud_watch_log() :: #{binary() => any()}.


%% Example:
%% create_membership_request() :: #{
%%   <<"agentSpaceId">> := string(),
%%   <<"applicationId">> := string(),
%%   <<"config">> => list(),
%%   <<"memberType">> := list(any()),
%%   <<"membershipId">> := string()
%% }
-type create_membership_request() :: #{binary() => any()}.


%% Example:
%% assets() :: #{
%%   <<"actors">> => list(actor()),
%%   <<"documents">> => list(document_info()),
%%   <<"endpoints">> => list(endpoint()),
%%   <<"integratedRepositories">> => list(integrated_repository()),
%%   <<"sourceCode">> => list(source_code_repository())
%% }
-type assets() :: #{binary() => any()}.


%% Example:
%% batch_get_target_domains_output() :: #{
%%   <<"notFound">> => list([string()]()),
%%   <<"targetDomains">> => list(target_domain())
%% }
-type batch_get_target_domains_output() :: #{binary() => any()}.


%% Example:
%% list_applications_response() :: #{
%%   <<"applicationSummaries">> => list(application_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_applications_response() :: #{binary() => any()}.


%% Example:
%% get_integration_input() :: #{
%%   <<"integrationId">> := string()
%% }
-type get_integration_input() :: #{binary() => any()}.


%% Example:
%% batch_get_artifact_metadata_input() :: #{
%%   <<"agentSpaceId">> := string(),
%%   <<"artifactIds">> := list(string())
%% }
-type batch_get_artifact_metadata_input() :: #{binary() => any()}.


%% Example:
%% aws_resources() :: #{
%%   <<"iamRoles">> => list(string()),
%%   <<"lambdaFunctionArns">> => list(string()),
%%   <<"logGroups">> => list(string()),
%%   <<"s3Buckets">> => list(string()),
%%   <<"secretArns">> => list(string()),
%%   <<"vpcs">> => list(vpc_config())
%% }
-type aws_resources() :: #{binary() => any()}.


%% Example:
%% list_agent_spaces_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_agent_spaces_input() :: #{binary() => any()}.


%% Example:
%% list_artifacts_output() :: #{
%%   <<"artifactSummaries">> => list(artifact_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_artifacts_output() :: #{binary() => any()}.


%% Example:
%% verify_target_domain_output() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"domainName">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"targetDomainId">> => string(),
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"verifiedAt">> => [non_neg_integer()]
%% }
-type verify_target_domain_output() :: #{binary() => any()}.


%% Example:
%% error_information() :: #{
%%   <<"code">> => list(any()),
%%   <<"message">> => [string()]
%% }
-type error_information() :: #{binary() => any()}.


%% Example:
%% artifact() :: #{
%%   <<"contents">> => [string()],
%%   <<"type">> => list(any())
%% }
-type artifact() :: #{binary() => any()}.


%% Example:
%% step() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"name">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type step() :: #{binary() => any()}.

%% Example:
%% stop_pentest_job_output() :: #{}
-type stop_pentest_job_output() :: #{}.


%% Example:
%% delete_membership_request() :: #{
%%   <<"agentSpaceId">> := string(),
%%   <<"applicationId">> := string(),
%%   <<"memberType">> => list(any()),
%%   <<"membershipId">> := string()
%% }
-type delete_membership_request() :: #{binary() => any()}.

%% Example:
%% start_code_remediation_output() :: #{}
-type start_code_remediation_output() :: #{}.


%% Example:
%% batch_get_pentest_job_tasks_input() :: #{
%%   <<"agentSpaceId">> := [string()],
%%   <<"taskIds">> := list([string()]())
%% }
-type batch_get_pentest_job_tasks_input() :: #{binary() => any()}.


%% Example:
%% delete_target_domain_input() :: #{
%%   <<"targetDomainId">> := string()
%% }
-type delete_target_domain_input() :: #{binary() => any()}.


%% Example:
%% custom_header() :: #{
%%   <<"name">> => [string()],
%%   <<"value">> => [string()]
%% }
-type custom_header() :: #{binary() => any()}.


%% Example:
%% code_remediation_task() :: #{
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"taskDetails">> => list(code_remediation_task_details())
%% }
-type code_remediation_task() :: #{binary() => any()}.

%% Example:
%% create_membership_response() :: #{}
-type create_membership_response() :: #{}.


%% Example:
%% execution_context() :: #{
%%   <<"context">> => [string()],
%%   <<"contextType">> => list(any()),
%%   <<"timestamp">> => [non_neg_integer()]
%% }
-type execution_context() :: #{binary() => any()}.


%% Example:
%% get_application_request() :: #{
%%   <<"applicationId">> := string()
%% }
-type get_application_request() :: #{binary() => any()}.


%% Example:
%% list_integrations_input() :: #{
%%   <<"filter">> => list(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_integrations_input() :: #{binary() => any()}.


%% Example:
%% document_info() :: #{
%%   <<"artifactId">> => [string()],
%%   <<"s3Location">> => [string()]
%% }
-type document_info() :: #{binary() => any()}.


%% Example:
%% batch_delete_pentests_output() :: #{
%%   <<"deleted">> => list(pentest()),
%%   <<"failed">> => list(delete_pentest_failure())
%% }
-type batch_delete_pentests_output() :: #{binary() => any()}.


%% Example:
%% list_pentest_job_tasks_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"taskSummaries">> => list(task_summary())
%% }
-type list_pentest_job_tasks_output() :: #{binary() => any()}.


%% Example:
%% batch_get_artifact_metadata_output() :: #{
%%   <<"artifactMetadataList">> => list(artifact_metadata_item())
%% }
-type batch_get_artifact_metadata_output() :: #{binary() => any()}.


%% Example:
%% initiate_provider_registration_input() :: #{
%%   <<"provider">> := list(any())
%% }
-type initiate_provider_registration_input() :: #{binary() => any()}.


%% Example:
%% delete_application_request() :: #{
%%   <<"applicationId">> := string()
%% }
-type delete_application_request() :: #{binary() => any()}.


%% Example:
%% batch_delete_pentests_input() :: #{
%%   <<"agentSpaceId">> := [string()],
%%   <<"pentestIds">> := list([string()]())
%% }
-type batch_delete_pentests_input() :: #{binary() => any()}.


%% Example:
%% target_domain() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"domainName">> => [string()],
%%   <<"targetDomainId">> => string(),
%%   <<"verificationDetails">> => verification_details(),
%%   <<"verificationStatus">> => list(any()),
%%   <<"verifiedAt">> => [non_neg_integer()]
%% }
-type target_domain() :: #{binary() => any()}.

-type add_artifact_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type batch_get_artifact_metadata_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_integration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_artifact_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_integration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_artifact_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_integration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type initiate_provider_registration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_artifacts_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_integrated_resources_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_integrations_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_integrated_resources_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds an Artifact for the given agent space
-spec add_artifact(aws_client:aws_client(), add_artifact_input()) ->
    {ok, add_artifact_output(), tuple()} |
    {error, any()} |
    {error, add_artifact_errors(), tuple()}.
add_artifact(Client, Input) ->
    add_artifact(Client, Input, []).

-spec add_artifact(aws_client:aws_client(), add_artifact_input(), proplists:proplist()) ->
    {ok, add_artifact_output(), tuple()} |
    {error, any()} |
    {error, add_artifact_errors(), tuple()}.
add_artifact(Client, Input0, Options0) ->
    Method = post,
    Path = ["/AddArtifact"],
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

%% @doc Deletes multiple pentests in a single request
-spec batch_delete_pentests(aws_client:aws_client(), batch_delete_pentests_input()) ->
    {ok, batch_delete_pentests_output(), tuple()} |
    {error, any()}.
batch_delete_pentests(Client, Input) ->
    batch_delete_pentests(Client, Input, []).

-spec batch_delete_pentests(aws_client:aws_client(), batch_delete_pentests_input(), proplists:proplist()) ->
    {ok, batch_delete_pentests_output(), tuple()} |
    {error, any()}.
batch_delete_pentests(Client, Input0, Options0) ->
    Method = post,
    Path = ["/BatchDeletePentests"],
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

%% @doc Retrieves multiple agent spaces in a single request
-spec batch_get_agent_spaces(aws_client:aws_client(), batch_get_agent_spaces_input()) ->
    {ok, batch_get_agent_spaces_output(), tuple()} |
    {error, any()}.
batch_get_agent_spaces(Client, Input) ->
    batch_get_agent_spaces(Client, Input, []).

-spec batch_get_agent_spaces(aws_client:aws_client(), batch_get_agent_spaces_input(), proplists:proplist()) ->
    {ok, batch_get_agent_spaces_output(), tuple()} |
    {error, any()}.
batch_get_agent_spaces(Client, Input0, Options0) ->
    Method = post,
    Path = ["/BatchGetAgentSpaces"],
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

%% @doc Retrieve the list of artifact metadata for the given agent space
-spec batch_get_artifact_metadata(aws_client:aws_client(), batch_get_artifact_metadata_input()) ->
    {ok, batch_get_artifact_metadata_output(), tuple()} |
    {error, any()} |
    {error, batch_get_artifact_metadata_errors(), tuple()}.
batch_get_artifact_metadata(Client, Input) ->
    batch_get_artifact_metadata(Client, Input, []).

-spec batch_get_artifact_metadata(aws_client:aws_client(), batch_get_artifact_metadata_input(), proplists:proplist()) ->
    {ok, batch_get_artifact_metadata_output(), tuple()} |
    {error, any()} |
    {error, batch_get_artifact_metadata_errors(), tuple()}.
batch_get_artifact_metadata(Client, Input0, Options0) ->
    Method = post,
    Path = ["/BatchGetArtifactMetadata"],
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

%% @doc Retrieves multiple findings in a single request
-spec batch_get_findings(aws_client:aws_client(), batch_get_findings_input()) ->
    {ok, batch_get_findings_output(), tuple()} |
    {error, any()}.
batch_get_findings(Client, Input) ->
    batch_get_findings(Client, Input, []).

-spec batch_get_findings(aws_client:aws_client(), batch_get_findings_input(), proplists:proplist()) ->
    {ok, batch_get_findings_output(), tuple()} |
    {error, any()}.
batch_get_findings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/BatchGetFindings"],
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

%% @doc Retrieves multiple tasks for a pentest job in a single request
-spec batch_get_pentest_job_tasks(aws_client:aws_client(), batch_get_pentest_job_tasks_input()) ->
    {ok, batch_get_pentest_job_tasks_output(), tuple()} |
    {error, any()}.
batch_get_pentest_job_tasks(Client, Input) ->
    batch_get_pentest_job_tasks(Client, Input, []).

-spec batch_get_pentest_job_tasks(aws_client:aws_client(), batch_get_pentest_job_tasks_input(), proplists:proplist()) ->
    {ok, batch_get_pentest_job_tasks_output(), tuple()} |
    {error, any()}.
batch_get_pentest_job_tasks(Client, Input0, Options0) ->
    Method = post,
    Path = ["/BatchGetPentestJobTasks"],
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

%% @doc Retrieves multiple pentest jobs in a single request
-spec batch_get_pentest_jobs(aws_client:aws_client(), batch_get_pentest_jobs_input()) ->
    {ok, batch_get_pentest_jobs_output(), tuple()} |
    {error, any()}.
batch_get_pentest_jobs(Client, Input) ->
    batch_get_pentest_jobs(Client, Input, []).

-spec batch_get_pentest_jobs(aws_client:aws_client(), batch_get_pentest_jobs_input(), proplists:proplist()) ->
    {ok, batch_get_pentest_jobs_output(), tuple()} |
    {error, any()}.
batch_get_pentest_jobs(Client, Input0, Options0) ->
    Method = post,
    Path = ["/BatchGetPentestJobs"],
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

%% @doc Retrieves multiple pentests in a single request
-spec batch_get_pentests(aws_client:aws_client(), batch_get_pentests_input()) ->
    {ok, batch_get_pentests_output(), tuple()} |
    {error, any()}.
batch_get_pentests(Client, Input) ->
    batch_get_pentests(Client, Input, []).

-spec batch_get_pentests(aws_client:aws_client(), batch_get_pentests_input(), proplists:proplist()) ->
    {ok, batch_get_pentests_output(), tuple()} |
    {error, any()}.
batch_get_pentests(Client, Input0, Options0) ->
    Method = post,
    Path = ["/BatchGetPentests"],
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

%% @doc Retrieves multiple target domains in a single request
-spec batch_get_target_domains(aws_client:aws_client(), batch_get_target_domains_input()) ->
    {ok, batch_get_target_domains_output(), tuple()} |
    {error, any()}.
batch_get_target_domains(Client, Input) ->
    batch_get_target_domains(Client, Input, []).

-spec batch_get_target_domains(aws_client:aws_client(), batch_get_target_domains_input(), proplists:proplist()) ->
    {ok, batch_get_target_domains_output(), tuple()} |
    {error, any()}.
batch_get_target_domains(Client, Input0, Options0) ->
    Method = post,
    Path = ["/BatchGetTargetDomains"],
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

%% @doc Creates an agent space record
-spec create_agent_space(aws_client:aws_client(), create_agent_space_input()) ->
    {ok, create_agent_space_output(), tuple()} |
    {error, any()}.
create_agent_space(Client, Input) ->
    create_agent_space(Client, Input, []).

-spec create_agent_space(aws_client:aws_client(), create_agent_space_input(), proplists:proplist()) ->
    {ok, create_agent_space_output(), tuple()} |
    {error, any()}.
create_agent_space(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateAgentSpace"],
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

%% @doc Creates a new application
-spec create_application(aws_client:aws_client(), create_application_request()) ->
    {ok, create_application_response(), tuple()} |
    {error, any()}.
create_application(Client, Input) ->
    create_application(Client, Input, []).

-spec create_application(aws_client:aws_client(), create_application_request(), proplists:proplist()) ->
    {ok, create_application_response(), tuple()} |
    {error, any()}.
create_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateApplication"],
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

%% @doc Creates the Integration of the Security Agent App with an external
%% Provider
-spec create_integration(aws_client:aws_client(), create_integration_input()) ->
    {ok, create_integration_output(), tuple()} |
    {error, any()} |
    {error, create_integration_errors(), tuple()}.
create_integration(Client, Input) ->
    create_integration(Client, Input, []).

-spec create_integration(aws_client:aws_client(), create_integration_input(), proplists:proplist()) ->
    {ok, create_integration_output(), tuple()} |
    {error, any()} |
    {error, create_integration_errors(), tuple()}.
create_integration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateIntegration"],
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

%% @doc Adds a single member to an agent space with specified role
-spec create_membership(aws_client:aws_client(), create_membership_request()) ->
    {ok, create_membership_response(), tuple()} |
    {error, any()}.
create_membership(Client, Input) ->
    create_membership(Client, Input, []).

-spec create_membership(aws_client:aws_client(), create_membership_request(), proplists:proplist()) ->
    {ok, create_membership_response(), tuple()} |
    {error, any()}.
create_membership(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateMembership"],
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

%% @doc Creates a new pentest configuration
-spec create_pentest(aws_client:aws_client(), create_pentest_input()) ->
    {ok, create_pentest_output(), tuple()} |
    {error, any()}.
create_pentest(Client, Input) ->
    create_pentest(Client, Input, []).

-spec create_pentest(aws_client:aws_client(), create_pentest_input(), proplists:proplist()) ->
    {ok, create_pentest_output(), tuple()} |
    {error, any()}.
create_pentest(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreatePentest"],
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

%% @doc Creates a target domain record
-spec create_target_domain(aws_client:aws_client(), create_target_domain_input()) ->
    {ok, create_target_domain_output(), tuple()} |
    {error, any()}.
create_target_domain(Client, Input) ->
    create_target_domain(Client, Input, []).

-spec create_target_domain(aws_client:aws_client(), create_target_domain_input(), proplists:proplist()) ->
    {ok, create_target_domain_output(), tuple()} |
    {error, any()}.
create_target_domain(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateTargetDomain"],
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

%% @doc Deletes an agent space record
-spec delete_agent_space(aws_client:aws_client(), delete_agent_space_input()) ->
    {ok, delete_agent_space_output(), tuple()} |
    {error, any()}.
delete_agent_space(Client, Input) ->
    delete_agent_space(Client, Input, []).

-spec delete_agent_space(aws_client:aws_client(), delete_agent_space_input(), proplists:proplist()) ->
    {ok, delete_agent_space_output(), tuple()} |
    {error, any()}.
delete_agent_space(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteAgentSpace"],
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

%% @doc Deletes an application
-spec delete_application(aws_client:aws_client(), delete_application_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_application(Client, Input) ->
    delete_application(Client, Input, []).

-spec delete_application(aws_client:aws_client(), delete_application_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteApplication"],
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

%% @doc Delete an Artifact from the given agent space
-spec delete_artifact(aws_client:aws_client(), delete_artifact_input()) ->
    {ok, delete_artifact_output(), tuple()} |
    {error, any()} |
    {error, delete_artifact_errors(), tuple()}.
delete_artifact(Client, Input) ->
    delete_artifact(Client, Input, []).

-spec delete_artifact(aws_client:aws_client(), delete_artifact_input(), proplists:proplist()) ->
    {ok, delete_artifact_output(), tuple()} |
    {error, any()} |
    {error, delete_artifact_errors(), tuple()}.
delete_artifact(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteArtifact"],
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

%% @doc Deletes the Integration of the Security Agent App with an external
%% Provider
-spec delete_integration(aws_client:aws_client(), delete_integration_input()) ->
    {ok, delete_integration_output(), tuple()} |
    {error, any()} |
    {error, delete_integration_errors(), tuple()}.
delete_integration(Client, Input) ->
    delete_integration(Client, Input, []).

-spec delete_integration(aws_client:aws_client(), delete_integration_input(), proplists:proplist()) ->
    {ok, delete_integration_output(), tuple()} |
    {error, any()} |
    {error, delete_integration_errors(), tuple()}.
delete_integration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteIntegration"],
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

%% @doc Removes a single member associated to an agent space
-spec delete_membership(aws_client:aws_client(), delete_membership_request()) ->
    {ok, delete_membership_response(), tuple()} |
    {error, any()}.
delete_membership(Client, Input) ->
    delete_membership(Client, Input, []).

-spec delete_membership(aws_client:aws_client(), delete_membership_request(), proplists:proplist()) ->
    {ok, delete_membership_response(), tuple()} |
    {error, any()}.
delete_membership(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteMembership"],
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

%% @doc Deletes a target domain record
-spec delete_target_domain(aws_client:aws_client(), delete_target_domain_input()) ->
    {ok, delete_target_domain_output(), tuple()} |
    {error, any()}.
delete_target_domain(Client, Input) ->
    delete_target_domain(Client, Input, []).

-spec delete_target_domain(aws_client:aws_client(), delete_target_domain_input(), proplists:proplist()) ->
    {ok, delete_target_domain_output(), tuple()} |
    {error, any()}.
delete_target_domain(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteTargetDomain"],
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

%% @doc Retrieves application details by application ID
-spec get_application(aws_client:aws_client(), get_application_request()) ->
    {ok, get_application_response(), tuple()} |
    {error, any()}.
get_application(Client, Input) ->
    get_application(Client, Input, []).

-spec get_application(aws_client:aws_client(), get_application_request(), proplists:proplist()) ->
    {ok, get_application_response(), tuple()} |
    {error, any()}.
get_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetApplication"],
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

%% @doc Retrieve an Artifact for the given agent space
-spec get_artifact(aws_client:aws_client(), get_artifact_input()) ->
    {ok, get_artifact_output(), tuple()} |
    {error, any()} |
    {error, get_artifact_errors(), tuple()}.
get_artifact(Client, Input) ->
    get_artifact(Client, Input, []).

-spec get_artifact(aws_client:aws_client(), get_artifact_input(), proplists:proplist()) ->
    {ok, get_artifact_output(), tuple()} |
    {error, any()} |
    {error, get_artifact_errors(), tuple()}.
get_artifact(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetArtifact"],
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

%% @doc Gets Integration metadata from the provided id
-spec get_integration(aws_client:aws_client(), get_integration_input()) ->
    {ok, get_integration_output(), tuple()} |
    {error, any()} |
    {error, get_integration_errors(), tuple()}.
get_integration(Client, Input) ->
    get_integration(Client, Input, []).

-spec get_integration(aws_client:aws_client(), get_integration_input(), proplists:proplist()) ->
    {ok, get_integration_output(), tuple()} |
    {error, any()} |
    {error, get_integration_errors(), tuple()}.
get_integration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetIntegration"],
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

%% @doc Initiates the registration of Security Agent App for an external
%% Provider
-spec initiate_provider_registration(aws_client:aws_client(), initiate_provider_registration_input()) ->
    {ok, initiate_provider_registration_output(), tuple()} |
    {error, any()} |
    {error, initiate_provider_registration_errors(), tuple()}.
initiate_provider_registration(Client, Input) ->
    initiate_provider_registration(Client, Input, []).

-spec initiate_provider_registration(aws_client:aws_client(), initiate_provider_registration_input(), proplists:proplist()) ->
    {ok, initiate_provider_registration_output(), tuple()} |
    {error, any()} |
    {error, initiate_provider_registration_errors(), tuple()}.
initiate_provider_registration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/oauth2/provider/register"],
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

%% @doc Lists agent spaces
-spec list_agent_spaces(aws_client:aws_client(), list_agent_spaces_input()) ->
    {ok, list_agent_spaces_output(), tuple()} |
    {error, any()}.
list_agent_spaces(Client, Input) ->
    list_agent_spaces(Client, Input, []).

-spec list_agent_spaces(aws_client:aws_client(), list_agent_spaces_input(), proplists:proplist()) ->
    {ok, list_agent_spaces_output(), tuple()} |
    {error, any()}.
list_agent_spaces(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListAgentSpaces"],
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

%% @doc Lists all applications in the account
-spec list_applications(aws_client:aws_client(), list_applications_request()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()}.
list_applications(Client, Input) ->
    list_applications(Client, Input, []).

-spec list_applications(aws_client:aws_client(), list_applications_request(), proplists:proplist()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()}.
list_applications(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListApplications"],
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

%% @doc Lists the artifacts for the associated agent space
-spec list_artifacts(aws_client:aws_client(), list_artifacts_input()) ->
    {ok, list_artifacts_output(), tuple()} |
    {error, any()} |
    {error, list_artifacts_errors(), tuple()}.
list_artifacts(Client, Input) ->
    list_artifacts(Client, Input, []).

-spec list_artifacts(aws_client:aws_client(), list_artifacts_input(), proplists:proplist()) ->
    {ok, list_artifacts_output(), tuple()} |
    {error, any()} |
    {error, list_artifacts_errors(), tuple()}.
list_artifacts(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListArtifacts"],
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

%% @doc Lists discovered endpoints associated with a pentest job with
%% optional URI prefix filtering
-spec list_discovered_endpoints(aws_client:aws_client(), list_discovered_endpoints_input()) ->
    {ok, list_discovered_endpoints_output(), tuple()} |
    {error, any()}.
list_discovered_endpoints(Client, Input) ->
    list_discovered_endpoints(Client, Input, []).

-spec list_discovered_endpoints(aws_client:aws_client(), list_discovered_endpoints_input(), proplists:proplist()) ->
    {ok, list_discovered_endpoints_output(), tuple()} |
    {error, any()}.
list_discovered_endpoints(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListDiscoveredEndpoints"],
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

%% @doc Lists findings with filtering and pagination support.
%%
%% When filters are applied, the actual number of results returned may be
%% less than the specified limit
-spec list_findings(aws_client:aws_client(), list_findings_input()) ->
    {ok, list_findings_output(), tuple()} |
    {error, any()}.
list_findings(Client, Input) ->
    list_findings(Client, Input, []).

-spec list_findings(aws_client:aws_client(), list_findings_input(), proplists:proplist()) ->
    {ok, list_findings_output(), tuple()} |
    {error, any()}.
list_findings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListFindings"],
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

%% @doc Lists the integrated resources for an agent space
-spec list_integrated_resources(aws_client:aws_client(), list_integrated_resources_input()) ->
    {ok, list_integrated_resources_output(), tuple()} |
    {error, any()} |
    {error, list_integrated_resources_errors(), tuple()}.
list_integrated_resources(Client, Input) ->
    list_integrated_resources(Client, Input, []).

-spec list_integrated_resources(aws_client:aws_client(), list_integrated_resources_input(), proplists:proplist()) ->
    {ok, list_integrated_resources_output(), tuple()} |
    {error, any()} |
    {error, list_integrated_resources_errors(), tuple()}.
list_integrated_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListIntegratedResources"],
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

%% @doc Retrieves the Integrations associated with the user's account
-spec list_integrations(aws_client:aws_client(), list_integrations_input()) ->
    {ok, list_integrations_output(), tuple()} |
    {error, any()} |
    {error, list_integrations_errors(), tuple()}.
list_integrations(Client, Input) ->
    list_integrations(Client, Input, []).

-spec list_integrations(aws_client:aws_client(), list_integrations_input(), proplists:proplist()) ->
    {ok, list_integrations_output(), tuple()} |
    {error, any()} |
    {error, list_integrations_errors(), tuple()}.
list_integrations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListIntegrations"],
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

%% @doc Lists all members associated to an agent space with pagination
%% support
-spec list_memberships(aws_client:aws_client(), list_memberships_request()) ->
    {ok, list_memberships_response(), tuple()} |
    {error, any()}.
list_memberships(Client, Input) ->
    list_memberships(Client, Input, []).

-spec list_memberships(aws_client:aws_client(), list_memberships_request(), proplists:proplist()) ->
    {ok, list_memberships_response(), tuple()} |
    {error, any()}.
list_memberships(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListMemberships"],
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

%% @doc Lists tasks associated with a specific pentest job
-spec list_pentest_job_tasks(aws_client:aws_client(), list_pentest_job_tasks_input()) ->
    {ok, list_pentest_job_tasks_output(), tuple()} |
    {error, any()}.
list_pentest_job_tasks(Client, Input) ->
    list_pentest_job_tasks(Client, Input, []).

-spec list_pentest_job_tasks(aws_client:aws_client(), list_pentest_job_tasks_input(), proplists:proplist()) ->
    {ok, list_pentest_job_tasks_output(), tuple()} |
    {error, any()}.
list_pentest_job_tasks(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListPentestJobTasks"],
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

%% @doc Lists pentest jobs associated with a pentest
-spec list_pentest_jobs_for_pentest(aws_client:aws_client(), list_pentest_jobs_for_pentest_input()) ->
    {ok, list_pentest_jobs_for_pentest_output(), tuple()} |
    {error, any()}.
list_pentest_jobs_for_pentest(Client, Input) ->
    list_pentest_jobs_for_pentest(Client, Input, []).

-spec list_pentest_jobs_for_pentest(aws_client:aws_client(), list_pentest_jobs_for_pentest_input(), proplists:proplist()) ->
    {ok, list_pentest_jobs_for_pentest_output(), tuple()} |
    {error, any()}.
list_pentest_jobs_for_pentest(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListPentestJobsForPentest"],
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

%% @doc Lists pentests with optional filtering by status
-spec list_pentests(aws_client:aws_client(), list_pentests_input()) ->
    {ok, list_pentests_output(), tuple()} |
    {error, any()}.
list_pentests(Client, Input) ->
    list_pentests(Client, Input, []).

-spec list_pentests(aws_client:aws_client(), list_pentests_input(), proplists:proplist()) ->
    {ok, list_pentests_output(), tuple()} |
    {error, any()}.
list_pentests(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListPentests"],
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

%% @doc Lists tags for a Security Agent resource
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
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

%% @doc Lists target domains
-spec list_target_domains(aws_client:aws_client(), list_target_domains_input()) ->
    {ok, list_target_domains_output(), tuple()} |
    {error, any()}.
list_target_domains(Client, Input) ->
    list_target_domains(Client, Input, []).

-spec list_target_domains(aws_client:aws_client(), list_target_domains_input(), proplists:proplist()) ->
    {ok, list_target_domains_output(), tuple()} |
    {error, any()}.
list_target_domains(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListTargetDomains"],
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

%% @doc Starts code remediation for the specified findings
-spec start_code_remediation(aws_client:aws_client(), start_code_remediation_input()) ->
    {ok, start_code_remediation_output(), tuple()} |
    {error, any()}.
start_code_remediation(Client, Input) ->
    start_code_remediation(Client, Input, []).

-spec start_code_remediation(aws_client:aws_client(), start_code_remediation_input(), proplists:proplist()) ->
    {ok, start_code_remediation_output(), tuple()} |
    {error, any()}.
start_code_remediation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StartCodeRemediation"],
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

%% @doc Initiates the execution of a pentest
-spec start_pentest_job(aws_client:aws_client(), start_pentest_job_input()) ->
    {ok, start_pentest_job_output(), tuple()} |
    {error, any()}.
start_pentest_job(Client, Input) ->
    start_pentest_job(Client, Input, []).

-spec start_pentest_job(aws_client:aws_client(), start_pentest_job_input(), proplists:proplist()) ->
    {ok, start_pentest_job_output(), tuple()} |
    {error, any()}.
start_pentest_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StartPentestJob"],
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

%% @doc Stops the execution of a running pentest
-spec stop_pentest_job(aws_client:aws_client(), stop_pentest_job_input()) ->
    {ok, stop_pentest_job_output(), tuple()} |
    {error, any()}.
stop_pentest_job(Client, Input) ->
    stop_pentest_job(Client, Input, []).

-spec stop_pentest_job(aws_client:aws_client(), stop_pentest_job_input(), proplists:proplist()) ->
    {ok, stop_pentest_job_output(), tuple()} |
    {error, any()}.
stop_pentest_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StopPentestJob"],
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

%% @doc Adds tags to a Security Agent resource
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input(), proplists:proplist()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()}.
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

%% @doc Removes tags from a Security Agent resource
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input(), proplists:proplist()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()}.
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

%% @doc Updates an agent space record
-spec update_agent_space(aws_client:aws_client(), update_agent_space_input()) ->
    {ok, update_agent_space_output(), tuple()} |
    {error, any()}.
update_agent_space(Client, Input) ->
    update_agent_space(Client, Input, []).

-spec update_agent_space(aws_client:aws_client(), update_agent_space_input(), proplists:proplist()) ->
    {ok, update_agent_space_output(), tuple()} |
    {error, any()}.
update_agent_space(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateAgentSpace"],
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

%% @doc Updates application configuration
-spec update_application(aws_client:aws_client(), update_application_request()) ->
    {ok, update_application_response(), tuple()} |
    {error, any()}.
update_application(Client, Input) ->
    update_application(Client, Input, []).

-spec update_application(aws_client:aws_client(), update_application_request(), proplists:proplist()) ->
    {ok, update_application_response(), tuple()} |
    {error, any()}.
update_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateApplication"],
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

%% @doc Updates an existing security finding with new details or status
-spec update_finding(aws_client:aws_client(), update_finding_input()) ->
    {ok, update_finding_output(), tuple()} |
    {error, any()}.
update_finding(Client, Input) ->
    update_finding(Client, Input, []).

-spec update_finding(aws_client:aws_client(), update_finding_input(), proplists:proplist()) ->
    {ok, update_finding_output(), tuple()} |
    {error, any()}.
update_finding(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateFinding"],
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

%% @doc Updates the integrated resources for an agent space
-spec update_integrated_resources(aws_client:aws_client(), update_integrated_resources_input()) ->
    {ok, update_integrated_resources_output(), tuple()} |
    {error, any()} |
    {error, update_integrated_resources_errors(), tuple()}.
update_integrated_resources(Client, Input) ->
    update_integrated_resources(Client, Input, []).

-spec update_integrated_resources(aws_client:aws_client(), update_integrated_resources_input(), proplists:proplist()) ->
    {ok, update_integrated_resources_output(), tuple()} |
    {error, any()} |
    {error, update_integrated_resources_errors(), tuple()}.
update_integrated_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateIntegratedResources"],
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

%% @doc Updates an existing pentest with new configuration or settings
-spec update_pentest(aws_client:aws_client(), update_pentest_input()) ->
    {ok, update_pentest_output(), tuple()} |
    {error, any()}.
update_pentest(Client, Input) ->
    update_pentest(Client, Input, []).

-spec update_pentest(aws_client:aws_client(), update_pentest_input(), proplists:proplist()) ->
    {ok, update_pentest_output(), tuple()} |
    {error, any()}.
update_pentest(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdatePentest"],
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

%% @doc Updates a target domain record
-spec update_target_domain(aws_client:aws_client(), update_target_domain_input()) ->
    {ok, update_target_domain_output(), tuple()} |
    {error, any()}.
update_target_domain(Client, Input) ->
    update_target_domain(Client, Input, []).

-spec update_target_domain(aws_client:aws_client(), update_target_domain_input(), proplists:proplist()) ->
    {ok, update_target_domain_output(), tuple()} |
    {error, any()}.
update_target_domain(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateTargetDomain"],
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

%% @doc Verifies ownership for a registered target domain
-spec verify_target_domain(aws_client:aws_client(), verify_target_domain_input()) ->
    {ok, verify_target_domain_output(), tuple()} |
    {error, any()}.
verify_target_domain(Client, Input) ->
    verify_target_domain(Client, Input, []).

-spec verify_target_domain(aws_client:aws_client(), verify_target_domain_input(), proplists:proplist()) ->
    {ok, verify_target_domain_output(), tuple()} |
    {error, any()}.
verify_target_domain(Client, Input0, Options0) ->
    Method = post,
    Path = ["/VerifyTargetDomain"],
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
    Client1 = Client#{service => <<"securityagent">>},
    Host = build_host(<<"securityagent">>, Client1),
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
