%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amplify enables developers to develop and deploy cloud-powered mobile
%% and web apps.
%%
%% Amplify Hosting provides a continuous delivery and hosting service for web
%% applications.
%% For more information, see the Amplify Hosting User Guide:
%% https://docs.aws.amazon.com/amplify/latest/userguide/welcome.html. The
%% Amplify Framework is a comprehensive set of SDKs, libraries, tools, and
%% documentation
%% for client app development. For more information, see the Amplify
%% Framework.: https://docs.amplify.aws/
-module(aws_amplify).

-export([create_app/2,
         create_app/3,
         create_backend_environment/3,
         create_backend_environment/4,
         create_branch/3,
         create_branch/4,
         create_deployment/4,
         create_deployment/5,
         create_domain_association/3,
         create_domain_association/4,
         create_webhook/3,
         create_webhook/4,
         delete_app/3,
         delete_app/4,
         delete_backend_environment/4,
         delete_backend_environment/5,
         delete_branch/4,
         delete_branch/5,
         delete_domain_association/4,
         delete_domain_association/5,
         delete_job/5,
         delete_job/6,
         delete_webhook/3,
         delete_webhook/4,
         generate_access_logs/3,
         generate_access_logs/4,
         get_app/2,
         get_app/4,
         get_app/5,
         get_artifact_url/2,
         get_artifact_url/4,
         get_artifact_url/5,
         get_backend_environment/3,
         get_backend_environment/5,
         get_backend_environment/6,
         get_branch/3,
         get_branch/5,
         get_branch/6,
         get_domain_association/3,
         get_domain_association/5,
         get_domain_association/6,
         get_job/4,
         get_job/6,
         get_job/7,
         get_webhook/2,
         get_webhook/4,
         get_webhook/5,
         list_apps/1,
         list_apps/3,
         list_apps/4,
         list_artifacts/4,
         list_artifacts/6,
         list_artifacts/7,
         list_backend_environments/2,
         list_backend_environments/4,
         list_backend_environments/5,
         list_branches/2,
         list_branches/4,
         list_branches/5,
         list_domain_associations/2,
         list_domain_associations/4,
         list_domain_associations/5,
         list_jobs/3,
         list_jobs/5,
         list_jobs/6,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_webhooks/2,
         list_webhooks/4,
         list_webhooks/5,
         start_deployment/4,
         start_deployment/5,
         start_job/4,
         start_job/5,
         stop_job/5,
         stop_job/6,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_app/3,
         update_app/4,
         update_branch/4,
         update_branch/5,
         update_domain_association/4,
         update_domain_association/5,
         update_webhook/3,
         update_webhook/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% app() :: #{
%%   <<"appArn">> => string(),
%%   <<"appId">> => string(),
%%   <<"autoBranchCreationConfig">> => auto_branch_creation_config(),
%%   <<"autoBranchCreationPatterns">> => list(string()()),
%%   <<"basicAuthCredentials">> => string(),
%%   <<"buildSpec">> => string(),
%%   <<"cacheConfig">> => cache_config(),
%%   <<"computeRoleArn">> => string(),
%%   <<"createTime">> => non_neg_integer(),
%%   <<"customHeaders">> => string(),
%%   <<"customRules">> => list(custom_rule()()),
%%   <<"defaultDomain">> => string(),
%%   <<"description">> => string(),
%%   <<"enableAutoBranchCreation">> => boolean(),
%%   <<"enableBasicAuth">> => boolean(),
%%   <<"enableBranchAutoBuild">> => boolean(),
%%   <<"enableBranchAutoDeletion">> => boolean(),
%%   <<"environmentVariables">> => map(),
%%   <<"iamServiceRoleArn">> => string(),
%%   <<"name">> => string(),
%%   <<"platform">> => list(any()),
%%   <<"productionBranch">> => production_branch(),
%%   <<"repository">> => string(),
%%   <<"repositoryCloneMethod">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"updateTime">> => non_neg_integer(),
%%   <<"wafConfiguration">> => waf_configuration(),
%%   <<"webhookCreateTime">> => non_neg_integer()
%% }
-type app() :: #{binary() => any()}.


%% Example:
%% branch() :: #{
%%   <<"activeJobId">> => string(),
%%   <<"associatedResources">> => list(string()()),
%%   <<"backend">> => backend(),
%%   <<"backendEnvironmentArn">> => string(),
%%   <<"basicAuthCredentials">> => string(),
%%   <<"branchArn">> => string(),
%%   <<"branchName">> => string(),
%%   <<"buildSpec">> => string(),
%%   <<"computeRoleArn">> => string(),
%%   <<"createTime">> => non_neg_integer(),
%%   <<"customDomains">> => list(string()()),
%%   <<"description">> => string(),
%%   <<"destinationBranch">> => string(),
%%   <<"displayName">> => string(),
%%   <<"enableAutoBuild">> => boolean(),
%%   <<"enableBasicAuth">> => boolean(),
%%   <<"enableNotification">> => boolean(),
%%   <<"enablePerformanceMode">> => boolean(),
%%   <<"enablePullRequestPreview">> => boolean(),
%%   <<"enableSkewProtection">> => boolean(),
%%   <<"environmentVariables">> => map(),
%%   <<"framework">> => string(),
%%   <<"pullRequestEnvironmentName">> => string(),
%%   <<"sourceBranch">> => string(),
%%   <<"stage">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"thumbnailUrl">> => string(),
%%   <<"totalNumberOfJobs">> => string(),
%%   <<"ttl">> => string(),
%%   <<"updateTime">> => non_neg_integer()
%% }
-type branch() :: #{binary() => any()}.


%% Example:
%% start_job_result() :: #{
%%   <<"jobSummary">> => job_summary()
%% }
-type start_job_result() :: #{binary() => any()}.

%% Example:
%% get_domain_association_request() :: #{}
-type get_domain_association_request() :: #{}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% internal_failure_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_failure_exception() :: #{binary() => any()}.


%% Example:
%% generate_access_logs_result() :: #{
%%   <<"logUrl">> => string()
%% }
-type generate_access_logs_result() :: #{binary() => any()}.


%% Example:
%% sub_domain() :: #{
%%   <<"dnsRecord">> => string(),
%%   <<"subDomainSetting">> => sub_domain_setting(),
%%   <<"verified">> => boolean()
%% }
-type sub_domain() :: #{binary() => any()}.


%% Example:
%% create_app_request() :: #{
%%   <<"accessToken">> => string(),
%%   <<"autoBranchCreationConfig">> => auto_branch_creation_config(),
%%   <<"autoBranchCreationPatterns">> => list(string()()),
%%   <<"basicAuthCredentials">> => string(),
%%   <<"buildSpec">> => string(),
%%   <<"cacheConfig">> => cache_config(),
%%   <<"computeRoleArn">> => string(),
%%   <<"customHeaders">> => string(),
%%   <<"customRules">> => list(custom_rule()()),
%%   <<"description">> => string(),
%%   <<"enableAutoBranchCreation">> => boolean(),
%%   <<"enableBasicAuth">> => boolean(),
%%   <<"enableBranchAutoBuild">> => boolean(),
%%   <<"enableBranchAutoDeletion">> => boolean(),
%%   <<"environmentVariables">> => map(),
%%   <<"iamServiceRoleArn">> => string(),
%%   <<"name">> := string(),
%%   <<"oauthToken">> => string(),
%%   <<"platform">> => list(any()),
%%   <<"repository">> => string(),
%%   <<"tags">> => map()
%% }
-type create_app_request() :: #{binary() => any()}.


%% Example:
%% unauthorized_exception() :: #{
%%   <<"message">> => string()
%% }
-type unauthorized_exception() :: #{binary() => any()}.


%% Example:
%% create_branch_request() :: #{
%%   <<"backend">> => backend(),
%%   <<"backendEnvironmentArn">> => string(),
%%   <<"basicAuthCredentials">> => string(),
%%   <<"branchName">> := string(),
%%   <<"buildSpec">> => string(),
%%   <<"computeRoleArn">> => string(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"enableAutoBuild">> => boolean(),
%%   <<"enableBasicAuth">> => boolean(),
%%   <<"enableNotification">> => boolean(),
%%   <<"enablePerformanceMode">> => boolean(),
%%   <<"enablePullRequestPreview">> => boolean(),
%%   <<"enableSkewProtection">> => boolean(),
%%   <<"environmentVariables">> => map(),
%%   <<"framework">> => string(),
%%   <<"pullRequestEnvironmentName">> => string(),
%%   <<"stage">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"ttl">> => string()
%% }
-type create_branch_request() :: #{binary() => any()}.


%% Example:
%% list_jobs_result() :: #{
%%   <<"jobSummaries">> => list(job_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_jobs_result() :: #{binary() => any()}.


%% Example:
%% create_backend_environment_result() :: #{
%%   <<"backendEnvironment">> => backend_environment()
%% }
-type create_backend_environment_result() :: #{binary() => any()}.


%% Example:
%% update_domain_association_request() :: #{
%%   <<"autoSubDomainCreationPatterns">> => list(string()()),
%%   <<"autoSubDomainIAMRole">> => string(),
%%   <<"certificateSettings">> => certificate_settings(),
%%   <<"enableAutoSubDomain">> => boolean(),
%%   <<"subDomainSettings">> => list(sub_domain_setting()())
%% }
-type update_domain_association_request() :: #{binary() => any()}.


%% Example:
%% create_domain_association_request() :: #{
%%   <<"autoSubDomainCreationPatterns">> => list(string()()),
%%   <<"autoSubDomainIAMRole">> => string(),
%%   <<"certificateSettings">> => certificate_settings(),
%%   <<"domainName">> := string(),
%%   <<"enableAutoSubDomain">> => boolean(),
%%   <<"subDomainSettings">> := list(sub_domain_setting()())
%% }
-type create_domain_association_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% list_jobs_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_jobs_request() :: #{binary() => any()}.


%% Example:
%% backend() :: #{
%%   <<"stackArn">> => string()
%% }
-type backend() :: #{binary() => any()}.


%% Example:
%% create_webhook_result() :: #{
%%   <<"webhook">> => webhook()
%% }
-type create_webhook_result() :: #{binary() => any()}.


%% Example:
%% create_deployment_request() :: #{
%%   <<"fileMap">> => map()
%% }
-type create_deployment_request() :: #{binary() => any()}.


%% Example:
%% delete_job_result() :: #{
%%   <<"jobSummary">> => job_summary()
%% }
-type delete_job_result() :: #{binary() => any()}.


%% Example:
%% generate_access_logs_request() :: #{
%%   <<"domainName">> := string(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"startTime">> => non_neg_integer()
%% }
-type generate_access_logs_request() :: #{binary() => any()}.


%% Example:
%% list_branches_result() :: #{
%%   <<"branches">> => list(branch()()),
%%   <<"nextToken">> => string()
%% }
-type list_branches_result() :: #{binary() => any()}.

%% Example:
%% get_artifact_url_request() :: #{}
-type get_artifact_url_request() :: #{}.

%% Example:
%% stop_job_request() :: #{}
-type stop_job_request() :: #{}.

%% Example:
%% delete_domain_association_request() :: #{}
-type delete_domain_association_request() :: #{}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_backend_environments_result() :: #{
%%   <<"backendEnvironments">> => list(backend_environment()()),
%%   <<"nextToken">> => string()
%% }
-type list_backend_environments_result() :: #{binary() => any()}.

%% Example:
%% delete_webhook_request() :: #{}
-type delete_webhook_request() :: #{}.


%% Example:
%% list_apps_result() :: #{
%%   <<"apps">> => list(app()()),
%%   <<"nextToken">> => string()
%% }
-type list_apps_result() :: #{binary() => any()}.


%% Example:
%% create_backend_environment_request() :: #{
%%   <<"deploymentArtifacts">> => string(),
%%   <<"environmentName">> := string(),
%%   <<"stackName">> => string()
%% }
-type create_backend_environment_request() :: #{binary() => any()}.


%% Example:
%% delete_backend_environment_result() :: #{
%%   <<"backendEnvironment">> => backend_environment()
%% }
-type delete_backend_environment_result() :: #{binary() => any()}.


%% Example:
%% get_job_result() :: #{
%%   <<"job">> => job()
%% }
-type get_job_result() :: #{binary() => any()}.

%% Example:
%% get_app_request() :: #{}
-type get_app_request() :: #{}.


%% Example:
%% job_summary() :: #{
%%   <<"commitId">> => string(),
%%   <<"commitMessage">> => string(),
%%   <<"commitTime">> => non_neg_integer(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"jobArn">> => string(),
%%   <<"jobId">> => string(),
%%   <<"jobType">> => list(any()),
%%   <<"sourceUrl">> => string(),
%%   <<"sourceUrlType">> => list(any()),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type job_summary() :: #{binary() => any()}.


%% Example:
%% sub_domain_setting() :: #{
%%   <<"branchName">> => string(),
%%   <<"prefix">> => string()
%% }
-type sub_domain_setting() :: #{binary() => any()}.


%% Example:
%% update_app_result() :: #{
%%   <<"app">> => app()
%% }
-type update_app_result() :: #{binary() => any()}.


%% Example:
%% domain_association() :: #{
%%   <<"autoSubDomainCreationPatterns">> => list(string()()),
%%   <<"autoSubDomainIAMRole">> => string(),
%%   <<"certificate">> => certificate(),
%%   <<"certificateVerificationDNSRecord">> => string(),
%%   <<"domainAssociationArn">> => string(),
%%   <<"domainName">> => string(),
%%   <<"domainStatus">> => list(any()),
%%   <<"enableAutoSubDomain">> => boolean(),
%%   <<"statusReason">> => string(),
%%   <<"subDomains">> => list(sub_domain()()),
%%   <<"updateStatus">> => list(any())
%% }
-type domain_association() :: #{binary() => any()}.


%% Example:
%% get_backend_environment_result() :: #{
%%   <<"backendEnvironment">> => backend_environment()
%% }
-type get_backend_environment_result() :: #{binary() => any()}.


%% Example:
%% start_deployment_result() :: #{
%%   <<"jobSummary">> => job_summary()
%% }
-type start_deployment_result() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% dependent_service_failure_exception() :: #{
%%   <<"message">> => string()
%% }
-type dependent_service_failure_exception() :: #{binary() => any()}.


%% Example:
%% delete_webhook_result() :: #{
%%   <<"webhook">> => webhook()
%% }
-type delete_webhook_result() :: #{binary() => any()}.


%% Example:
%% production_branch() :: #{
%%   <<"branchName">> => string(),
%%   <<"lastDeployTime">> => non_neg_integer(),
%%   <<"status">> => string(),
%%   <<"thumbnailUrl">> => string()
%% }
-type production_branch() :: #{binary() => any()}.


%% Example:
%% create_deployment_result() :: #{
%%   <<"fileUploadUrls">> => map(),
%%   <<"jobId">> => string(),
%%   <<"zipUploadUrl">> => string()
%% }
-type create_deployment_result() :: #{binary() => any()}.


%% Example:
%% update_webhook_request() :: #{
%%   <<"branchName">> => string(),
%%   <<"description">> => string()
%% }
-type update_webhook_request() :: #{binary() => any()}.


%% Example:
%% list_webhooks_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"webhooks">> => list(webhook()())
%% }
-type list_webhooks_result() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% create_webhook_request() :: #{
%%   <<"branchName">> := string(),
%%   <<"description">> => string()
%% }
-type create_webhook_request() :: #{binary() => any()}.


%% Example:
%% backend_environment() :: #{
%%   <<"backendEnvironmentArn">> => string(),
%%   <<"createTime">> => non_neg_integer(),
%%   <<"deploymentArtifacts">> => string(),
%%   <<"environmentName">> => string(),
%%   <<"stackName">> => string(),
%%   <<"updateTime">> => non_neg_integer()
%% }
-type backend_environment() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% waf_configuration() :: #{
%%   <<"statusReason">> => string(),
%%   <<"wafStatus">> => list(any()),
%%   <<"webAclArn">> => string()
%% }
-type waf_configuration() :: #{binary() => any()}.


%% Example:
%% delete_app_result() :: #{
%%   <<"app">> => app()
%% }
-type delete_app_result() :: #{binary() => any()}.


%% Example:
%% update_branch_result() :: #{
%%   <<"branch">> => branch()
%% }
-type update_branch_result() :: #{binary() => any()}.

%% Example:
%% get_branch_request() :: #{}
-type get_branch_request() :: #{}.


%% Example:
%% list_domain_associations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_domain_associations_request() :: #{binary() => any()}.


%% Example:
%% start_job_request() :: #{
%%   <<"commitId">> => string(),
%%   <<"commitMessage">> => string(),
%%   <<"commitTime">> => non_neg_integer(),
%%   <<"jobId">> => string(),
%%   <<"jobReason">> => string(),
%%   <<"jobType">> := list(any())
%% }
-type start_job_request() :: #{binary() => any()}.


%% Example:
%% cache_config() :: #{
%%   <<"type">> => list(any())
%% }
-type cache_config() :: #{binary() => any()}.


%% Example:
%% list_backend_environments_request() :: #{
%%   <<"environmentName">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_backend_environments_request() :: #{binary() => any()}.

%% Example:
%% delete_backend_environment_request() :: #{}
-type delete_backend_environment_request() :: #{}.


%% Example:
%% custom_rule() :: #{
%%   <<"condition">> => string(),
%%   <<"source">> => string(),
%%   <<"status">> => string(),
%%   <<"target">> => string()
%% }
-type custom_rule() :: #{binary() => any()}.


%% Example:
%% create_branch_result() :: #{
%%   <<"branch">> => branch()
%% }
-type create_branch_result() :: #{binary() => any()}.


%% Example:
%% certificate() :: #{
%%   <<"certificateVerificationDNSRecord">> => string(),
%%   <<"customCertificateArn">> => string(),
%%   <<"type">> => list(any())
%% }
-type certificate() :: #{binary() => any()}.

%% Example:
%% delete_branch_request() :: #{}
-type delete_branch_request() :: #{}.

%% Example:
%% get_webhook_request() :: #{}
-type get_webhook_request() :: #{}.

%% Example:
%% delete_app_request() :: #{}
-type delete_app_request() :: #{}.


%% Example:
%% update_branch_request() :: #{
%%   <<"backend">> => backend(),
%%   <<"backendEnvironmentArn">> => string(),
%%   <<"basicAuthCredentials">> => string(),
%%   <<"buildSpec">> => string(),
%%   <<"computeRoleArn">> => string(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"enableAutoBuild">> => boolean(),
%%   <<"enableBasicAuth">> => boolean(),
%%   <<"enableNotification">> => boolean(),
%%   <<"enablePerformanceMode">> => boolean(),
%%   <<"enablePullRequestPreview">> => boolean(),
%%   <<"enableSkewProtection">> => boolean(),
%%   <<"environmentVariables">> => map(),
%%   <<"framework">> => string(),
%%   <<"pullRequestEnvironmentName">> => string(),
%%   <<"stage">> => list(any()),
%%   <<"ttl">> => string()
%% }
-type update_branch_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% update_domain_association_result() :: #{
%%   <<"domainAssociation">> => domain_association()
%% }
-type update_domain_association_result() :: #{binary() => any()}.

%% Example:
%% delete_job_request() :: #{}
-type delete_job_request() :: #{}.


%% Example:
%% get_domain_association_result() :: #{
%%   <<"domainAssociation">> => domain_association()
%% }
-type get_domain_association_result() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% job() :: #{
%%   <<"steps">> => list(step()()),
%%   <<"summary">> => job_summary()
%% }
-type job() :: #{binary() => any()}.


%% Example:
%% list_artifacts_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_artifacts_request() :: #{binary() => any()}.


%% Example:
%% update_app_request() :: #{
%%   <<"accessToken">> => string(),
%%   <<"autoBranchCreationConfig">> => auto_branch_creation_config(),
%%   <<"autoBranchCreationPatterns">> => list(string()()),
%%   <<"basicAuthCredentials">> => string(),
%%   <<"buildSpec">> => string(),
%%   <<"cacheConfig">> => cache_config(),
%%   <<"computeRoleArn">> => string(),
%%   <<"customHeaders">> => string(),
%%   <<"customRules">> => list(custom_rule()()),
%%   <<"description">> => string(),
%%   <<"enableAutoBranchCreation">> => boolean(),
%%   <<"enableBasicAuth">> => boolean(),
%%   <<"enableBranchAutoBuild">> => boolean(),
%%   <<"enableBranchAutoDeletion">> => boolean(),
%%   <<"environmentVariables">> => map(),
%%   <<"iamServiceRoleArn">> => string(),
%%   <<"name">> => string(),
%%   <<"oauthToken">> => string(),
%%   <<"platform">> => list(any()),
%%   <<"repository">> => string()
%% }
-type update_app_request() :: #{binary() => any()}.

%% Example:
%% get_job_request() :: #{}
-type get_job_request() :: #{}.


%% Example:
%% certificate_settings() :: #{
%%   <<"customCertificateArn">> => string(),
%%   <<"type">> => list(any())
%% }
-type certificate_settings() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% list_apps_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_apps_request() :: #{binary() => any()}.


%% Example:
%% get_app_result() :: #{
%%   <<"app">> => app()
%% }
-type get_app_result() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% delete_domain_association_result() :: #{
%%   <<"domainAssociation">> => domain_association()
%% }
-type delete_domain_association_result() :: #{binary() => any()}.


%% Example:
%% artifact() :: #{
%%   <<"artifactFileName">> => string(),
%%   <<"artifactId">> => string()
%% }
-type artifact() :: #{binary() => any()}.


%% Example:
%% list_artifacts_result() :: #{
%%   <<"artifacts">> => list(artifact()()),
%%   <<"nextToken">> => string()
%% }
-type list_artifacts_result() :: #{binary() => any()}.


%% Example:
%% get_webhook_result() :: #{
%%   <<"webhook">> => webhook()
%% }
-type get_webhook_result() :: #{binary() => any()}.


%% Example:
%% step() :: #{
%%   <<"artifactsUrl">> => string(),
%%   <<"context">> => string(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"logUrl">> => string(),
%%   <<"screenshots">> => map(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => string(),
%%   <<"stepName">> => string(),
%%   <<"testArtifactsUrl">> => string(),
%%   <<"testConfigUrl">> => string()
%% }
-type step() :: #{binary() => any()}.


%% Example:
%% list_webhooks_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_webhooks_request() :: #{binary() => any()}.


%% Example:
%% get_branch_result() :: #{
%%   <<"branch">> => branch()
%% }
-type get_branch_result() :: #{binary() => any()}.


%% Example:
%% delete_branch_result() :: #{
%%   <<"branch">> => branch()
%% }
-type delete_branch_result() :: #{binary() => any()}.


%% Example:
%% create_app_result() :: #{
%%   <<"app">> => app()
%% }
-type create_app_result() :: #{binary() => any()}.

%% Example:
%% get_backend_environment_request() :: #{}
-type get_backend_environment_request() :: #{}.


%% Example:
%% auto_branch_creation_config() :: #{
%%   <<"basicAuthCredentials">> => string(),
%%   <<"buildSpec">> => string(),
%%   <<"enableAutoBuild">> => boolean(),
%%   <<"enableBasicAuth">> => boolean(),
%%   <<"enablePerformanceMode">> => boolean(),
%%   <<"enablePullRequestPreview">> => boolean(),
%%   <<"environmentVariables">> => map(),
%%   <<"framework">> => string(),
%%   <<"pullRequestEnvironmentName">> => string(),
%%   <<"stage">> => list(any())
%% }
-type auto_branch_creation_config() :: #{binary() => any()}.


%% Example:
%% list_branches_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_branches_request() :: #{binary() => any()}.


%% Example:
%% get_artifact_url_result() :: #{
%%   <<"artifactId">> => string(),
%%   <<"artifactUrl">> => string()
%% }
-type get_artifact_url_result() :: #{binary() => any()}.


%% Example:
%% list_domain_associations_result() :: #{
%%   <<"domainAssociations">> => list(domain_association()()),
%%   <<"nextToken">> => string()
%% }
-type list_domain_associations_result() :: #{binary() => any()}.


%% Example:
%% webhook() :: #{
%%   <<"branchName">> => string(),
%%   <<"createTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"updateTime">> => non_neg_integer(),
%%   <<"webhookArn">> => string(),
%%   <<"webhookId">> => string(),
%%   <<"webhookUrl">> => string()
%% }
-type webhook() :: #{binary() => any()}.


%% Example:
%% stop_job_result() :: #{
%%   <<"jobSummary">> => job_summary()
%% }
-type stop_job_result() :: #{binary() => any()}.


%% Example:
%% start_deployment_request() :: #{
%%   <<"jobId">> => string(),
%%   <<"sourceUrl">> => string(),
%%   <<"sourceUrlType">> => list(any())
%% }
-type start_deployment_request() :: #{binary() => any()}.


%% Example:
%% create_domain_association_result() :: #{
%%   <<"domainAssociation">> => domain_association()
%% }
-type create_domain_association_result() :: #{binary() => any()}.


%% Example:
%% update_webhook_result() :: #{
%%   <<"webhook">> => webhook()
%% }
-type update_webhook_result() :: #{binary() => any()}.

-type create_app_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    dependent_service_failure_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type create_backend_environment_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type create_branch_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    dependent_service_failure_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type create_deployment_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type create_domain_association_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    dependent_service_failure_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type create_webhook_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    dependent_service_failure_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type delete_app_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    dependent_service_failure_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type delete_backend_environment_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    dependent_service_failure_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type delete_branch_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    dependent_service_failure_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type delete_domain_association_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    dependent_service_failure_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type delete_job_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type delete_webhook_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type generate_access_logs_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type get_app_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type get_artifact_url_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type get_backend_environment_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type get_branch_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type get_domain_association_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type get_job_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type get_webhook_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_apps_errors() ::
    bad_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_artifacts_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_backend_environments_errors() ::
    bad_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_branches_errors() ::
    bad_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_domain_associations_errors() ::
    bad_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_jobs_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_tags_for_resource_errors() ::
    bad_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_webhooks_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type start_deployment_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type start_job_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type stop_job_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type tag_resource_errors() ::
    bad_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type untag_resource_errors() ::
    bad_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type update_app_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type update_branch_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    dependent_service_failure_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type update_domain_association_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    dependent_service_failure_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type update_webhook_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    dependent_service_failure_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new Amplify app.
-spec create_app(aws_client:aws_client(), create_app_request()) ->
    {ok, create_app_result(), tuple()} |
    {error, any()} |
    {error, create_app_errors(), tuple()}.
create_app(Client, Input) ->
    create_app(Client, Input, []).

-spec create_app(aws_client:aws_client(), create_app_request(), proplists:proplist()) ->
    {ok, create_app_result(), tuple()} |
    {error, any()} |
    {error, create_app_errors(), tuple()}.
create_app(Client, Input0, Options0) ->
    Method = post,
    Path = ["/apps"],
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

%% @doc Creates a new backend environment for an Amplify app.
%%
%% This API is available only to Amplify Gen 1 applications where the
%% backend is created using Amplify Studio or the Amplify
%% command line interface (CLI). This API isn’t available to Amplify Gen 2
%% applications.
%% When you deploy an application with
%% Amplify Gen 2, you provision the app's backend infrastructure using
%% Typescript
%% code.
-spec create_backend_environment(aws_client:aws_client(), binary() | list(), create_backend_environment_request()) ->
    {ok, create_backend_environment_result(), tuple()} |
    {error, any()} |
    {error, create_backend_environment_errors(), tuple()}.
create_backend_environment(Client, AppId, Input) ->
    create_backend_environment(Client, AppId, Input, []).

-spec create_backend_environment(aws_client:aws_client(), binary() | list(), create_backend_environment_request(), proplists:proplist()) ->
    {ok, create_backend_environment_result(), tuple()} |
    {error, any()} |
    {error, create_backend_environment_errors(), tuple()}.
create_backend_environment(Client, AppId, Input0, Options0) ->
    Method = post,
    Path = ["/apps/", aws_util:encode_uri(AppId), "/backendenvironments"],
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

%% @doc Creates a new branch for an Amplify app.
-spec create_branch(aws_client:aws_client(), binary() | list(), create_branch_request()) ->
    {ok, create_branch_result(), tuple()} |
    {error, any()} |
    {error, create_branch_errors(), tuple()}.
create_branch(Client, AppId, Input) ->
    create_branch(Client, AppId, Input, []).

-spec create_branch(aws_client:aws_client(), binary() | list(), create_branch_request(), proplists:proplist()) ->
    {ok, create_branch_result(), tuple()} |
    {error, any()} |
    {error, create_branch_errors(), tuple()}.
create_branch(Client, AppId, Input0, Options0) ->
    Method = post,
    Path = ["/apps/", aws_util:encode_uri(AppId), "/branches"],
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

%% @doc Creates a deployment for a manually deployed Amplify app.
%%
%% Manually deployed apps are
%% not connected to a Git repository.
%%
%% The maximum duration between the `CreateDeployment' call and the
%% `StartDeployment' call cannot exceed 8 hours. If the duration exceeds
%% 8
%% hours, the `StartDeployment' call and the associated `Job' will
%% fail.
-spec create_deployment(aws_client:aws_client(), binary() | list(), binary() | list(), create_deployment_request()) ->
    {ok, create_deployment_result(), tuple()} |
    {error, any()} |
    {error, create_deployment_errors(), tuple()}.
create_deployment(Client, AppId, BranchName, Input) ->
    create_deployment(Client, AppId, BranchName, Input, []).

-spec create_deployment(aws_client:aws_client(), binary() | list(), binary() | list(), create_deployment_request(), proplists:proplist()) ->
    {ok, create_deployment_result(), tuple()} |
    {error, any()} |
    {error, create_deployment_errors(), tuple()}.
create_deployment(Client, AppId, BranchName, Input0, Options0) ->
    Method = post,
    Path = ["/apps/", aws_util:encode_uri(AppId), "/branches/", aws_util:encode_uri(BranchName), "/deployments"],
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

%% @doc Creates a new domain association for an Amplify app.
%%
%% This action associates a custom
%% domain with the Amplify app
-spec create_domain_association(aws_client:aws_client(), binary() | list(), create_domain_association_request()) ->
    {ok, create_domain_association_result(), tuple()} |
    {error, any()} |
    {error, create_domain_association_errors(), tuple()}.
create_domain_association(Client, AppId, Input) ->
    create_domain_association(Client, AppId, Input, []).

-spec create_domain_association(aws_client:aws_client(), binary() | list(), create_domain_association_request(), proplists:proplist()) ->
    {ok, create_domain_association_result(), tuple()} |
    {error, any()} |
    {error, create_domain_association_errors(), tuple()}.
create_domain_association(Client, AppId, Input0, Options0) ->
    Method = post,
    Path = ["/apps/", aws_util:encode_uri(AppId), "/domains"],
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

%% @doc Creates a new webhook on an Amplify app.
-spec create_webhook(aws_client:aws_client(), binary() | list(), create_webhook_request()) ->
    {ok, create_webhook_result(), tuple()} |
    {error, any()} |
    {error, create_webhook_errors(), tuple()}.
create_webhook(Client, AppId, Input) ->
    create_webhook(Client, AppId, Input, []).

-spec create_webhook(aws_client:aws_client(), binary() | list(), create_webhook_request(), proplists:proplist()) ->
    {ok, create_webhook_result(), tuple()} |
    {error, any()} |
    {error, create_webhook_errors(), tuple()}.
create_webhook(Client, AppId, Input0, Options0) ->
    Method = post,
    Path = ["/apps/", aws_util:encode_uri(AppId), "/webhooks"],
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

%% @doc Deletes an existing Amplify app specified by an app ID.
-spec delete_app(aws_client:aws_client(), binary() | list(), delete_app_request()) ->
    {ok, delete_app_result(), tuple()} |
    {error, any()} |
    {error, delete_app_errors(), tuple()}.
delete_app(Client, AppId, Input) ->
    delete_app(Client, AppId, Input, []).

-spec delete_app(aws_client:aws_client(), binary() | list(), delete_app_request(), proplists:proplist()) ->
    {ok, delete_app_result(), tuple()} |
    {error, any()} |
    {error, delete_app_errors(), tuple()}.
delete_app(Client, AppId, Input0, Options0) ->
    Method = delete,
    Path = ["/apps/", aws_util:encode_uri(AppId), ""],
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

%% @doc Deletes a backend environment for an Amplify app.
%%
%% This API is available only to Amplify Gen 1 applications where the
%% backend is created using Amplify Studio or the Amplify
%% command line interface (CLI). This API isn’t available to Amplify Gen 2
%% applications.
%% When you deploy an application with
%% Amplify Gen 2, you provision the app's backend infrastructure using
%% Typescript
%% code.
-spec delete_backend_environment(aws_client:aws_client(), binary() | list(), binary() | list(), delete_backend_environment_request()) ->
    {ok, delete_backend_environment_result(), tuple()} |
    {error, any()} |
    {error, delete_backend_environment_errors(), tuple()}.
delete_backend_environment(Client, AppId, EnvironmentName, Input) ->
    delete_backend_environment(Client, AppId, EnvironmentName, Input, []).

-spec delete_backend_environment(aws_client:aws_client(), binary() | list(), binary() | list(), delete_backend_environment_request(), proplists:proplist()) ->
    {ok, delete_backend_environment_result(), tuple()} |
    {error, any()} |
    {error, delete_backend_environment_errors(), tuple()}.
delete_backend_environment(Client, AppId, EnvironmentName, Input0, Options0) ->
    Method = delete,
    Path = ["/apps/", aws_util:encode_uri(AppId), "/backendenvironments/", aws_util:encode_uri(EnvironmentName), ""],
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

%% @doc Deletes a branch for an Amplify app.
-spec delete_branch(aws_client:aws_client(), binary() | list(), binary() | list(), delete_branch_request()) ->
    {ok, delete_branch_result(), tuple()} |
    {error, any()} |
    {error, delete_branch_errors(), tuple()}.
delete_branch(Client, AppId, BranchName, Input) ->
    delete_branch(Client, AppId, BranchName, Input, []).

-spec delete_branch(aws_client:aws_client(), binary() | list(), binary() | list(), delete_branch_request(), proplists:proplist()) ->
    {ok, delete_branch_result(), tuple()} |
    {error, any()} |
    {error, delete_branch_errors(), tuple()}.
delete_branch(Client, AppId, BranchName, Input0, Options0) ->
    Method = delete,
    Path = ["/apps/", aws_util:encode_uri(AppId), "/branches/", aws_util:encode_uri(BranchName), ""],
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

%% @doc Deletes a domain association for an Amplify app.
-spec delete_domain_association(aws_client:aws_client(), binary() | list(), binary() | list(), delete_domain_association_request()) ->
    {ok, delete_domain_association_result(), tuple()} |
    {error, any()} |
    {error, delete_domain_association_errors(), tuple()}.
delete_domain_association(Client, AppId, DomainName, Input) ->
    delete_domain_association(Client, AppId, DomainName, Input, []).

-spec delete_domain_association(aws_client:aws_client(), binary() | list(), binary() | list(), delete_domain_association_request(), proplists:proplist()) ->
    {ok, delete_domain_association_result(), tuple()} |
    {error, any()} |
    {error, delete_domain_association_errors(), tuple()}.
delete_domain_association(Client, AppId, DomainName, Input0, Options0) ->
    Method = delete,
    Path = ["/apps/", aws_util:encode_uri(AppId), "/domains/", aws_util:encode_uri(DomainName), ""],
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

%% @doc Deletes a job for a branch of an Amplify app.
-spec delete_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_job_request()) ->
    {ok, delete_job_result(), tuple()} |
    {error, any()} |
    {error, delete_job_errors(), tuple()}.
delete_job(Client, AppId, BranchName, JobId, Input) ->
    delete_job(Client, AppId, BranchName, JobId, Input, []).

-spec delete_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_job_request(), proplists:proplist()) ->
    {ok, delete_job_result(), tuple()} |
    {error, any()} |
    {error, delete_job_errors(), tuple()}.
delete_job(Client, AppId, BranchName, JobId, Input0, Options0) ->
    Method = delete,
    Path = ["/apps/", aws_util:encode_uri(AppId), "/branches/", aws_util:encode_uri(BranchName), "/jobs/", aws_util:encode_uri(JobId), ""],
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

%% @doc Deletes a webhook.
-spec delete_webhook(aws_client:aws_client(), binary() | list(), delete_webhook_request()) ->
    {ok, delete_webhook_result(), tuple()} |
    {error, any()} |
    {error, delete_webhook_errors(), tuple()}.
delete_webhook(Client, WebhookId, Input) ->
    delete_webhook(Client, WebhookId, Input, []).

-spec delete_webhook(aws_client:aws_client(), binary() | list(), delete_webhook_request(), proplists:proplist()) ->
    {ok, delete_webhook_result(), tuple()} |
    {error, any()} |
    {error, delete_webhook_errors(), tuple()}.
delete_webhook(Client, WebhookId, Input0, Options0) ->
    Method = delete,
    Path = ["/webhooks/", aws_util:encode_uri(WebhookId), ""],
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

%% @doc Returns the website access logs for a specific time range using a
%% presigned URL.
-spec generate_access_logs(aws_client:aws_client(), binary() | list(), generate_access_logs_request()) ->
    {ok, generate_access_logs_result(), tuple()} |
    {error, any()} |
    {error, generate_access_logs_errors(), tuple()}.
generate_access_logs(Client, AppId, Input) ->
    generate_access_logs(Client, AppId, Input, []).

-spec generate_access_logs(aws_client:aws_client(), binary() | list(), generate_access_logs_request(), proplists:proplist()) ->
    {ok, generate_access_logs_result(), tuple()} |
    {error, any()} |
    {error, generate_access_logs_errors(), tuple()}.
generate_access_logs(Client, AppId, Input0, Options0) ->
    Method = post,
    Path = ["/apps/", aws_util:encode_uri(AppId), "/accesslogs"],
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

%% @doc Returns an existing Amplify app specified by an app ID.
-spec get_app(aws_client:aws_client(), binary() | list()) ->
    {ok, get_app_result(), tuple()} |
    {error, any()} |
    {error, get_app_errors(), tuple()}.
get_app(Client, AppId)
  when is_map(Client) ->
    get_app(Client, AppId, #{}, #{}).

-spec get_app(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_app_result(), tuple()} |
    {error, any()} |
    {error, get_app_errors(), tuple()}.
get_app(Client, AppId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_app(Client, AppId, QueryMap, HeadersMap, []).

-spec get_app(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_app_result(), tuple()} |
    {error, any()} |
    {error, get_app_errors(), tuple()}.
get_app(Client, AppId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/apps/", aws_util:encode_uri(AppId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the artifact info that corresponds to an artifact id.
-spec get_artifact_url(aws_client:aws_client(), binary() | list()) ->
    {ok, get_artifact_url_result(), tuple()} |
    {error, any()} |
    {error, get_artifact_url_errors(), tuple()}.
get_artifact_url(Client, ArtifactId)
  when is_map(Client) ->
    get_artifact_url(Client, ArtifactId, #{}, #{}).

-spec get_artifact_url(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_artifact_url_result(), tuple()} |
    {error, any()} |
    {error, get_artifact_url_errors(), tuple()}.
get_artifact_url(Client, ArtifactId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_artifact_url(Client, ArtifactId, QueryMap, HeadersMap, []).

-spec get_artifact_url(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_artifact_url_result(), tuple()} |
    {error, any()} |
    {error, get_artifact_url_errors(), tuple()}.
get_artifact_url(Client, ArtifactId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/artifacts/", aws_util:encode_uri(ArtifactId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a backend environment for an Amplify app.
%%
%% This API is available only to Amplify Gen 1 applications where the
%% backend is created using Amplify Studio or the Amplify
%% command line interface (CLI). This API isn’t available to Amplify Gen 2
%% applications.
%% When you deploy an application with
%% Amplify Gen 2, you provision the app's backend infrastructure using
%% Typescript
%% code.
-spec get_backend_environment(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_backend_environment_result(), tuple()} |
    {error, any()} |
    {error, get_backend_environment_errors(), tuple()}.
get_backend_environment(Client, AppId, EnvironmentName)
  when is_map(Client) ->
    get_backend_environment(Client, AppId, EnvironmentName, #{}, #{}).

-spec get_backend_environment(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_backend_environment_result(), tuple()} |
    {error, any()} |
    {error, get_backend_environment_errors(), tuple()}.
get_backend_environment(Client, AppId, EnvironmentName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_backend_environment(Client, AppId, EnvironmentName, QueryMap, HeadersMap, []).

-spec get_backend_environment(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_backend_environment_result(), tuple()} |
    {error, any()} |
    {error, get_backend_environment_errors(), tuple()}.
get_backend_environment(Client, AppId, EnvironmentName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/apps/", aws_util:encode_uri(AppId), "/backendenvironments/", aws_util:encode_uri(EnvironmentName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a branch for an Amplify app.
-spec get_branch(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_branch_result(), tuple()} |
    {error, any()} |
    {error, get_branch_errors(), tuple()}.
get_branch(Client, AppId, BranchName)
  when is_map(Client) ->
    get_branch(Client, AppId, BranchName, #{}, #{}).

-spec get_branch(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_branch_result(), tuple()} |
    {error, any()} |
    {error, get_branch_errors(), tuple()}.
get_branch(Client, AppId, BranchName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_branch(Client, AppId, BranchName, QueryMap, HeadersMap, []).

-spec get_branch(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_branch_result(), tuple()} |
    {error, any()} |
    {error, get_branch_errors(), tuple()}.
get_branch(Client, AppId, BranchName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/apps/", aws_util:encode_uri(AppId), "/branches/", aws_util:encode_uri(BranchName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the domain information for an Amplify app.
-spec get_domain_association(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_domain_association_result(), tuple()} |
    {error, any()} |
    {error, get_domain_association_errors(), tuple()}.
get_domain_association(Client, AppId, DomainName)
  when is_map(Client) ->
    get_domain_association(Client, AppId, DomainName, #{}, #{}).

-spec get_domain_association(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_domain_association_result(), tuple()} |
    {error, any()} |
    {error, get_domain_association_errors(), tuple()}.
get_domain_association(Client, AppId, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_domain_association(Client, AppId, DomainName, QueryMap, HeadersMap, []).

-spec get_domain_association(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_domain_association_result(), tuple()} |
    {error, any()} |
    {error, get_domain_association_errors(), tuple()}.
get_domain_association(Client, AppId, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/apps/", aws_util:encode_uri(AppId), "/domains/", aws_util:encode_uri(DomainName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a job for a branch of an Amplify app.
-spec get_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_job_result(), tuple()} |
    {error, any()} |
    {error, get_job_errors(), tuple()}.
get_job(Client, AppId, BranchName, JobId)
  when is_map(Client) ->
    get_job(Client, AppId, BranchName, JobId, #{}, #{}).

-spec get_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_job_result(), tuple()} |
    {error, any()} |
    {error, get_job_errors(), tuple()}.
get_job(Client, AppId, BranchName, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_job(Client, AppId, BranchName, JobId, QueryMap, HeadersMap, []).

-spec get_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_job_result(), tuple()} |
    {error, any()} |
    {error, get_job_errors(), tuple()}.
get_job(Client, AppId, BranchName, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/apps/", aws_util:encode_uri(AppId), "/branches/", aws_util:encode_uri(BranchName), "/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the webhook information that corresponds to a specified
%% webhook ID.
-spec get_webhook(aws_client:aws_client(), binary() | list()) ->
    {ok, get_webhook_result(), tuple()} |
    {error, any()} |
    {error, get_webhook_errors(), tuple()}.
get_webhook(Client, WebhookId)
  when is_map(Client) ->
    get_webhook(Client, WebhookId, #{}, #{}).

-spec get_webhook(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_webhook_result(), tuple()} |
    {error, any()} |
    {error, get_webhook_errors(), tuple()}.
get_webhook(Client, WebhookId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_webhook(Client, WebhookId, QueryMap, HeadersMap, []).

-spec get_webhook(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_webhook_result(), tuple()} |
    {error, any()} |
    {error, get_webhook_errors(), tuple()}.
get_webhook(Client, WebhookId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/webhooks/", aws_util:encode_uri(WebhookId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the existing Amplify apps.
-spec list_apps(aws_client:aws_client()) ->
    {ok, list_apps_result(), tuple()} |
    {error, any()} |
    {error, list_apps_errors(), tuple()}.
list_apps(Client)
  when is_map(Client) ->
    list_apps(Client, #{}, #{}).

-spec list_apps(aws_client:aws_client(), map(), map()) ->
    {ok, list_apps_result(), tuple()} |
    {error, any()} |
    {error, list_apps_errors(), tuple()}.
list_apps(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_apps(Client, QueryMap, HeadersMap, []).

-spec list_apps(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_apps_result(), tuple()} |
    {error, any()} |
    {error, list_apps_errors(), tuple()}.
list_apps(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/apps"],
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

%% @doc Returns a list of artifacts for a specified app, branch, and job.
-spec list_artifacts(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, list_artifacts_result(), tuple()} |
    {error, any()} |
    {error, list_artifacts_errors(), tuple()}.
list_artifacts(Client, AppId, BranchName, JobId)
  when is_map(Client) ->
    list_artifacts(Client, AppId, BranchName, JobId, #{}, #{}).

-spec list_artifacts(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_artifacts_result(), tuple()} |
    {error, any()} |
    {error, list_artifacts_errors(), tuple()}.
list_artifacts(Client, AppId, BranchName, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_artifacts(Client, AppId, BranchName, JobId, QueryMap, HeadersMap, []).

-spec list_artifacts(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_artifacts_result(), tuple()} |
    {error, any()} |
    {error, list_artifacts_errors(), tuple()}.
list_artifacts(Client, AppId, BranchName, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/apps/", aws_util:encode_uri(AppId), "/branches/", aws_util:encode_uri(BranchName), "/jobs/", aws_util:encode_uri(JobId), "/artifacts"],
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

%% @doc Lists the backend environments for an Amplify app.
%%
%% This API is available only to Amplify Gen 1 applications where the
%% backend is created using Amplify Studio or the Amplify
%% command line interface (CLI). This API isn’t available to Amplify Gen 2
%% applications.
%% When you deploy an application with
%% Amplify Gen 2, you provision the app's backend infrastructure using
%% Typescript
%% code.
-spec list_backend_environments(aws_client:aws_client(), binary() | list()) ->
    {ok, list_backend_environments_result(), tuple()} |
    {error, any()} |
    {error, list_backend_environments_errors(), tuple()}.
list_backend_environments(Client, AppId)
  when is_map(Client) ->
    list_backend_environments(Client, AppId, #{}, #{}).

-spec list_backend_environments(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_backend_environments_result(), tuple()} |
    {error, any()} |
    {error, list_backend_environments_errors(), tuple()}.
list_backend_environments(Client, AppId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_backend_environments(Client, AppId, QueryMap, HeadersMap, []).

-spec list_backend_environments(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_backend_environments_result(), tuple()} |
    {error, any()} |
    {error, list_backend_environments_errors(), tuple()}.
list_backend_environments(Client, AppId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/apps/", aws_util:encode_uri(AppId), "/backendenvironments"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"environmentName">>, maps:get(<<"environmentName">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the branches of an Amplify app.
-spec list_branches(aws_client:aws_client(), binary() | list()) ->
    {ok, list_branches_result(), tuple()} |
    {error, any()} |
    {error, list_branches_errors(), tuple()}.
list_branches(Client, AppId)
  when is_map(Client) ->
    list_branches(Client, AppId, #{}, #{}).

-spec list_branches(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_branches_result(), tuple()} |
    {error, any()} |
    {error, list_branches_errors(), tuple()}.
list_branches(Client, AppId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_branches(Client, AppId, QueryMap, HeadersMap, []).

-spec list_branches(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_branches_result(), tuple()} |
    {error, any()} |
    {error, list_branches_errors(), tuple()}.
list_branches(Client, AppId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/apps/", aws_util:encode_uri(AppId), "/branches"],
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

%% @doc Returns the domain associations for an Amplify app.
-spec list_domain_associations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_domain_associations_result(), tuple()} |
    {error, any()} |
    {error, list_domain_associations_errors(), tuple()}.
list_domain_associations(Client, AppId)
  when is_map(Client) ->
    list_domain_associations(Client, AppId, #{}, #{}).

-spec list_domain_associations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_domain_associations_result(), tuple()} |
    {error, any()} |
    {error, list_domain_associations_errors(), tuple()}.
list_domain_associations(Client, AppId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_domain_associations(Client, AppId, QueryMap, HeadersMap, []).

-spec list_domain_associations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_domain_associations_result(), tuple()} |
    {error, any()} |
    {error, list_domain_associations_errors(), tuple()}.
list_domain_associations(Client, AppId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/apps/", aws_util:encode_uri(AppId), "/domains"],
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

%% @doc Lists the jobs for a branch of an Amplify app.
-spec list_jobs(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_jobs_result(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client, AppId, BranchName)
  when is_map(Client) ->
    list_jobs(Client, AppId, BranchName, #{}, #{}).

-spec list_jobs(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_jobs_result(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client, AppId, BranchName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_jobs(Client, AppId, BranchName, QueryMap, HeadersMap, []).

-spec list_jobs(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_jobs_result(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client, AppId, BranchName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/apps/", aws_util:encode_uri(AppId), "/branches/", aws_util:encode_uri(BranchName), "/jobs"],
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

%% @doc Returns a list of tags for a specified Amazon Resource Name (ARN).
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

%% @doc Returns a list of webhooks for an Amplify app.
-spec list_webhooks(aws_client:aws_client(), binary() | list()) ->
    {ok, list_webhooks_result(), tuple()} |
    {error, any()} |
    {error, list_webhooks_errors(), tuple()}.
list_webhooks(Client, AppId)
  when is_map(Client) ->
    list_webhooks(Client, AppId, #{}, #{}).

-spec list_webhooks(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_webhooks_result(), tuple()} |
    {error, any()} |
    {error, list_webhooks_errors(), tuple()}.
list_webhooks(Client, AppId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_webhooks(Client, AppId, QueryMap, HeadersMap, []).

-spec list_webhooks(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_webhooks_result(), tuple()} |
    {error, any()} |
    {error, list_webhooks_errors(), tuple()}.
list_webhooks(Client, AppId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/apps/", aws_util:encode_uri(AppId), "/webhooks"],
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

%% @doc Starts a deployment for a manually deployed app.
%%
%% Manually deployed apps are not
%% connected to a Git repository.
%%
%% The maximum duration between the `CreateDeployment' call and the
%% `StartDeployment' call cannot exceed 8 hours. If the duration exceeds
%% 8
%% hours, the `StartDeployment' call and the associated `Job' will
%% fail.
-spec start_deployment(aws_client:aws_client(), binary() | list(), binary() | list(), start_deployment_request()) ->
    {ok, start_deployment_result(), tuple()} |
    {error, any()} |
    {error, start_deployment_errors(), tuple()}.
start_deployment(Client, AppId, BranchName, Input) ->
    start_deployment(Client, AppId, BranchName, Input, []).

-spec start_deployment(aws_client:aws_client(), binary() | list(), binary() | list(), start_deployment_request(), proplists:proplist()) ->
    {ok, start_deployment_result(), tuple()} |
    {error, any()} |
    {error, start_deployment_errors(), tuple()}.
start_deployment(Client, AppId, BranchName, Input0, Options0) ->
    Method = post,
    Path = ["/apps/", aws_util:encode_uri(AppId), "/branches/", aws_util:encode_uri(BranchName), "/deployments/start"],
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

%% @doc Starts a new job for a branch of an Amplify app.
-spec start_job(aws_client:aws_client(), binary() | list(), binary() | list(), start_job_request()) ->
    {ok, start_job_result(), tuple()} |
    {error, any()} |
    {error, start_job_errors(), tuple()}.
start_job(Client, AppId, BranchName, Input) ->
    start_job(Client, AppId, BranchName, Input, []).

-spec start_job(aws_client:aws_client(), binary() | list(), binary() | list(), start_job_request(), proplists:proplist()) ->
    {ok, start_job_result(), tuple()} |
    {error, any()} |
    {error, start_job_errors(), tuple()}.
start_job(Client, AppId, BranchName, Input0, Options0) ->
    Method = post,
    Path = ["/apps/", aws_util:encode_uri(AppId), "/branches/", aws_util:encode_uri(BranchName), "/jobs"],
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

%% @doc Stops a job that is in progress for a branch of an Amplify app.
-spec stop_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), stop_job_request()) ->
    {ok, stop_job_result(), tuple()} |
    {error, any()} |
    {error, stop_job_errors(), tuple()}.
stop_job(Client, AppId, BranchName, JobId, Input) ->
    stop_job(Client, AppId, BranchName, JobId, Input, []).

-spec stop_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), stop_job_request(), proplists:proplist()) ->
    {ok, stop_job_result(), tuple()} |
    {error, any()} |
    {error, stop_job_errors(), tuple()}.
stop_job(Client, AppId, BranchName, JobId, Input0, Options0) ->
    Method = delete,
    Path = ["/apps/", aws_util:encode_uri(AppId), "/branches/", aws_util:encode_uri(BranchName), "/jobs/", aws_util:encode_uri(JobId), "/stop"],
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

%% @doc Tags the resource with a tag key and value.
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

%% @doc Untags a resource with a specified Amazon Resource Name (ARN).
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

%% @doc Updates an existing Amplify app.
-spec update_app(aws_client:aws_client(), binary() | list(), update_app_request()) ->
    {ok, update_app_result(), tuple()} |
    {error, any()} |
    {error, update_app_errors(), tuple()}.
update_app(Client, AppId, Input) ->
    update_app(Client, AppId, Input, []).

-spec update_app(aws_client:aws_client(), binary() | list(), update_app_request(), proplists:proplist()) ->
    {ok, update_app_result(), tuple()} |
    {error, any()} |
    {error, update_app_errors(), tuple()}.
update_app(Client, AppId, Input0, Options0) ->
    Method = post,
    Path = ["/apps/", aws_util:encode_uri(AppId), ""],
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

%% @doc Updates a branch for an Amplify app.
-spec update_branch(aws_client:aws_client(), binary() | list(), binary() | list(), update_branch_request()) ->
    {ok, update_branch_result(), tuple()} |
    {error, any()} |
    {error, update_branch_errors(), tuple()}.
update_branch(Client, AppId, BranchName, Input) ->
    update_branch(Client, AppId, BranchName, Input, []).

-spec update_branch(aws_client:aws_client(), binary() | list(), binary() | list(), update_branch_request(), proplists:proplist()) ->
    {ok, update_branch_result(), tuple()} |
    {error, any()} |
    {error, update_branch_errors(), tuple()}.
update_branch(Client, AppId, BranchName, Input0, Options0) ->
    Method = post,
    Path = ["/apps/", aws_util:encode_uri(AppId), "/branches/", aws_util:encode_uri(BranchName), ""],
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

%% @doc Creates a new domain association for an Amplify app.
-spec update_domain_association(aws_client:aws_client(), binary() | list(), binary() | list(), update_domain_association_request()) ->
    {ok, update_domain_association_result(), tuple()} |
    {error, any()} |
    {error, update_domain_association_errors(), tuple()}.
update_domain_association(Client, AppId, DomainName, Input) ->
    update_domain_association(Client, AppId, DomainName, Input, []).

-spec update_domain_association(aws_client:aws_client(), binary() | list(), binary() | list(), update_domain_association_request(), proplists:proplist()) ->
    {ok, update_domain_association_result(), tuple()} |
    {error, any()} |
    {error, update_domain_association_errors(), tuple()}.
update_domain_association(Client, AppId, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/apps/", aws_util:encode_uri(AppId), "/domains/", aws_util:encode_uri(DomainName), ""],
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

%% @doc Updates a webhook.
-spec update_webhook(aws_client:aws_client(), binary() | list(), update_webhook_request()) ->
    {ok, update_webhook_result(), tuple()} |
    {error, any()} |
    {error, update_webhook_errors(), tuple()}.
update_webhook(Client, WebhookId, Input) ->
    update_webhook(Client, WebhookId, Input, []).

-spec update_webhook(aws_client:aws_client(), binary() | list(), update_webhook_request(), proplists:proplist()) ->
    {ok, update_webhook_result(), tuple()} |
    {error, any()} |
    {error, update_webhook_errors(), tuple()}.
update_webhook(Client, WebhookId, Input0, Options0) ->
    Method = post,
    Path = ["/webhooks/", aws_util:encode_uri(WebhookId), ""],
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
    Client1 = Client#{service => <<"amplify">>},
    Host = build_host(<<"amplify">>, Client1),
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
