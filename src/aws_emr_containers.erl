%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon EMR on EKS provides a deployment option for Amazon EMR that
%% allows
%% you to run open-source big data frameworks on Amazon Elastic Kubernetes
%% Service (Amazon EKS).
%%
%% With this deployment option, you can focus on running analytics workloads
%% while Amazon EMR on EKS builds, configures, and manages containers for
%% open-source applications.
%% For more information about Amazon EMR on EKS concepts and tasks, see What
%% is
%% Amazon EMR on EKS:
%% https://docs.aws.amazon.com/emr/latest/EMR-on-EKS-DevelopmentGuide/emr-eks.html.
%%
%% Amazon EMR containers is the API name for Amazon EMR on EKS. The
%% `emr-containers' prefix is used in the following
%% scenarios:
%%
%% It is the prefix in the CLI commands for Amazon EMR on EKS. For example,
%% `aws emr-containers start-job-run'.
%%
%% It is the prefix before IAM policy actions for Amazon EMR on EKS. For
%% example, `&quot;Action&quot;: [
%% &quot;emr-containers:StartJobRun&quot;]'. For more
%% information, see Policy actions for Amazon EMR on EKS:
%% https://docs.aws.amazon.com/emr/latest/EMR-on-EKS-DevelopmentGuide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-actions.
%%
%% It is the prefix used in Amazon EMR on EKS service endpoints. For example,
%% `emr-containers.us-east-2.amazonaws.com'. For more information, see
%% Amazon EMR on EKSService Endpoints:
%% https://docs.aws.amazon.com/emr/latest/EMR-on-EKS-DevelopmentGuide/service-quotas.html#service-endpoints.
-module(aws_emr_containers).

-export([cancel_job_run/4,
         cancel_job_run/5,
         create_job_template/2,
         create_job_template/3,
         create_managed_endpoint/3,
         create_managed_endpoint/4,
         create_security_configuration/2,
         create_security_configuration/3,
         create_virtual_cluster/2,
         create_virtual_cluster/3,
         delete_job_template/3,
         delete_job_template/4,
         delete_managed_endpoint/4,
         delete_managed_endpoint/5,
         delete_virtual_cluster/3,
         delete_virtual_cluster/4,
         describe_job_run/3,
         describe_job_run/5,
         describe_job_run/6,
         describe_job_template/2,
         describe_job_template/4,
         describe_job_template/5,
         describe_managed_endpoint/3,
         describe_managed_endpoint/5,
         describe_managed_endpoint/6,
         describe_security_configuration/2,
         describe_security_configuration/4,
         describe_security_configuration/5,
         describe_virtual_cluster/2,
         describe_virtual_cluster/4,
         describe_virtual_cluster/5,
         get_managed_endpoint_session_credentials/4,
         get_managed_endpoint_session_credentials/5,
         list_job_runs/2,
         list_job_runs/4,
         list_job_runs/5,
         list_job_templates/1,
         list_job_templates/3,
         list_job_templates/4,
         list_managed_endpoints/2,
         list_managed_endpoints/4,
         list_managed_endpoints/5,
         list_security_configurations/1,
         list_security_configurations/3,
         list_security_configurations/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_virtual_clusters/1,
         list_virtual_clusters/3,
         list_virtual_clusters/4,
         start_job_run/3,
         start_job_run/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% encryption_configuration() :: #{
%%   <<"inTransitEncryptionConfiguration">> => in_transit_encryption_configuration()
%% }
-type encryption_configuration() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% create_job_template_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type create_job_template_response() :: #{binary() => any()}.


%% Example:
%% s3_monitoring_configuration() :: #{
%%   <<"logUri">> => string()
%% }
-type s3_monitoring_configuration() :: #{binary() => any()}.


%% Example:
%% delete_job_template_response() :: #{
%%   <<"id">> => string()
%% }
-type delete_job_template_response() :: #{binary() => any()}.


%% Example:
%% list_security_configurations_request() :: #{
%%   <<"createdAfter">> => non_neg_integer(),
%%   <<"createdBefore">> => non_neg_integer(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_security_configurations_request() :: #{binary() => any()}.


%% Example:
%% job_run() :: #{
%%   <<"arn">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"configurationOverrides">> => configuration_overrides(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"executionRoleArn">> => string(),
%%   <<"failureReason">> => list(any()),
%%   <<"finishedAt">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"jobDriver">> => job_driver(),
%%   <<"name">> => string(),
%%   <<"releaseLabel">> => string(),
%%   <<"retryPolicyConfiguration">> => retry_policy_configuration(),
%%   <<"retryPolicyExecution">> => retry_policy_execution(),
%%   <<"state">> => list(any()),
%%   <<"stateDetails">> => string(),
%%   <<"tags">> => map(),
%%   <<"virtualClusterId">> => string()
%% }
-type job_run() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% describe_job_run_response() :: #{
%%   <<"jobRun">> => job_run()
%% }
-type describe_job_run_response() :: #{binary() => any()}.


%% Example:
%% cloud_watch_monitoring_configuration() :: #{
%%   <<"logGroupName">> => string(),
%%   <<"logStreamNamePrefix">> => string()
%% }
-type cloud_watch_monitoring_configuration() :: #{binary() => any()}.


%% Example:
%% list_job_runs_request() :: #{
%%   <<"createdAfter">> => non_neg_integer(),
%%   <<"createdBefore">> => non_neg_integer(),
%%   <<"maxResults">> => integer(),
%%   <<"name">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"states">> => list(list(any())())
%% }
-type list_job_runs_request() :: #{binary() => any()}.


%% Example:
%% create_security_configuration_request() :: #{
%%   <<"clientToken">> := string(),
%%   <<"containerProvider">> => container_provider(),
%%   <<"name">> := string(),
%%   <<"securityConfigurationData">> := security_configuration_data(),
%%   <<"tags">> => map()
%% }
-type create_security_configuration_request() :: #{binary() => any()}.


%% Example:
%% job_template() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"decryptionError">> => string(),
%%   <<"id">> => string(),
%%   <<"jobTemplateData">> => job_template_data(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"name">> => string(),
%%   <<"tags">> => map()
%% }
-type job_template() :: #{binary() => any()}.


%% Example:
%% configuration() :: #{
%%   <<"classification">> => string(),
%%   <<"configurations">> => list(configuration()),
%%   <<"properties">> => map()
%% }
-type configuration() :: #{binary() => any()}.


%% Example:
%% parametric_cloud_watch_monitoring_configuration() :: #{
%%   <<"logGroupName">> => string(),
%%   <<"logStreamNamePrefix">> => string()
%% }
-type parametric_cloud_watch_monitoring_configuration() :: #{binary() => any()}.


%% Example:
%% describe_managed_endpoint_response() :: #{
%%   <<"endpoint">> => endpoint()
%% }
-type describe_managed_endpoint_response() :: #{binary() => any()}.


%% Example:
%% monitoring_configuration() :: #{
%%   <<"cloudWatchMonitoringConfiguration">> => cloud_watch_monitoring_configuration(),
%%   <<"containerLogRotationConfiguration">> => container_log_rotation_configuration(),
%%   <<"managedLogs">> => managed_logs(),
%%   <<"persistentAppUI">> => list(any()),
%%   <<"s3MonitoringConfiguration">> => s3_monitoring_configuration()
%% }
-type monitoring_configuration() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% create_managed_endpoint_response() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"virtualClusterId">> => string()
%% }
-type create_managed_endpoint_response() :: #{binary() => any()}.


%% Example:
%% secure_namespace_info() :: #{
%%   <<"clusterId">> => string(),
%%   <<"namespace">> => string()
%% }
-type secure_namespace_info() :: #{binary() => any()}.


%% Example:
%% virtual_cluster() :: #{
%%   <<"arn">> => string(),
%%   <<"containerProvider">> => container_provider(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"securityConfigurationId">> => string(),
%%   <<"state">> => list(any()),
%%   <<"tags">> => map()
%% }
-type virtual_cluster() :: #{binary() => any()}.

%% Example:
%% delete_job_template_request() :: #{}
-type delete_job_template_request() :: #{}.


%% Example:
%% parametric_s3_monitoring_configuration() :: #{
%%   <<"logUri">> => string()
%% }
-type parametric_s3_monitoring_configuration() :: #{binary() => any()}.


%% Example:
%% eks_info() :: #{
%%   <<"namespace">> => string(),
%%   <<"nodeLabel">> => string()
%% }
-type eks_info() :: #{binary() => any()}.

%% Example:
%% describe_job_run_request() :: #{}
-type describe_job_run_request() :: #{}.

%% Example:
%% describe_virtual_cluster_request() :: #{}
-type describe_virtual_cluster_request() :: #{}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% start_job_run_response() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"virtualClusterId">> => string()
%% }
-type start_job_run_response() :: #{binary() => any()}.


%% Example:
%% cancel_job_run_response() :: #{
%%   <<"id">> => string(),
%%   <<"virtualClusterId">> => string()
%% }
-type cancel_job_run_response() :: #{binary() => any()}.


%% Example:
%% get_managed_endpoint_session_credentials_response() :: #{
%%   <<"credentials">> => list(),
%%   <<"expiresAt">> => non_neg_integer(),
%%   <<"id">> => string()
%% }
-type get_managed_endpoint_session_credentials_response() :: #{binary() => any()}.


%% Example:
%% template_parameter_configuration() :: #{
%%   <<"defaultValue">> => string(),
%%   <<"type">> => list(any())
%% }
-type template_parameter_configuration() :: #{binary() => any()}.

%% Example:
%% describe_job_template_request() :: #{}
-type describe_job_template_request() :: #{}.


%% Example:
%% managed_logs() :: #{
%%   <<"allowAWSToRetainLogs">> => list(any()),
%%   <<"encryptionKeyArn">> => string()
%% }
-type managed_logs() :: #{binary() => any()}.


%% Example:
%% create_managed_endpoint_request() :: #{
%%   <<"certificateArn">> => string(),
%%   <<"clientToken">> := string(),
%%   <<"configurationOverrides">> => configuration_overrides(),
%%   <<"executionRoleArn">> := string(),
%%   <<"name">> := string(),
%%   <<"releaseLabel">> := string(),
%%   <<"tags">> => map(),
%%   <<"type">> := string()
%% }
-type create_managed_endpoint_request() :: #{binary() => any()}.


%% Example:
%% list_job_runs_response() :: #{
%%   <<"jobRuns">> => list(job_run()),
%%   <<"nextToken">> => string()
%% }
-type list_job_runs_response() :: #{binary() => any()}.


%% Example:
%% delete_managed_endpoint_response() :: #{
%%   <<"id">> => string(),
%%   <<"virtualClusterId">> => string()
%% }
-type delete_managed_endpoint_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% describe_job_template_response() :: #{
%%   <<"jobTemplate">> => job_template()
%% }
-type describe_job_template_response() :: #{binary() => any()}.


%% Example:
%% container_log_rotation_configuration() :: #{
%%   <<"maxFilesToKeep">> => integer(),
%%   <<"rotationSize">> => string()
%% }
-type container_log_rotation_configuration() :: #{binary() => any()}.


%% Example:
%% create_security_configuration_response() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type create_security_configuration_response() :: #{binary() => any()}.


%% Example:
%% container_provider() :: #{
%%   <<"id">> => string(),
%%   <<"info">> => list(),
%%   <<"type">> => list(any())
%% }
-type container_provider() :: #{binary() => any()}.


%% Example:
%% e_k_s_request_throttled_exception() :: #{
%%   <<"message">> => string()
%% }
-type e_k_s_request_throttled_exception() :: #{binary() => any()}.


%% Example:
%% endpoint() :: #{
%%   <<"arn">> => string(),
%%   <<"certificateArn">> => string(),
%%   <<"certificateAuthority">> => certificate(),
%%   <<"configurationOverrides">> => configuration_overrides(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"executionRoleArn">> => string(),
%%   <<"failureReason">> => list(any()),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"releaseLabel">> => string(),
%%   <<"securityGroup">> => string(),
%%   <<"serverUrl">> => string(),
%%   <<"state">> => list(any()),
%%   <<"stateDetails">> => string(),
%%   <<"subnetIds">> => list(string()),
%%   <<"tags">> => map(),
%%   <<"type">> => string(),
%%   <<"virtualClusterId">> => string()
%% }
-type endpoint() :: #{binary() => any()}.


%% Example:
%% parametric_configuration_overrides() :: #{
%%   <<"applicationConfiguration">> => list(configuration()),
%%   <<"monitoringConfiguration">> => parametric_monitoring_configuration()
%% }
-type parametric_configuration_overrides() :: #{binary() => any()}.


%% Example:
%% create_virtual_cluster_response() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type create_virtual_cluster_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% certificate() :: #{
%%   <<"certificateArn">> => string(),
%%   <<"certificateData">> => string()
%% }
-type certificate() :: #{binary() => any()}.


%% Example:
%% start_job_run_request() :: #{
%%   <<"clientToken">> := string(),
%%   <<"configurationOverrides">> => configuration_overrides(),
%%   <<"executionRoleArn">> => string(),
%%   <<"jobDriver">> => job_driver(),
%%   <<"jobTemplateId">> => string(),
%%   <<"jobTemplateParameters">> => map(),
%%   <<"name">> => string(),
%%   <<"releaseLabel">> => string(),
%%   <<"retryPolicyConfiguration">> => retry_policy_configuration(),
%%   <<"tags">> => map()
%% }
-type start_job_run_request() :: #{binary() => any()}.


%% Example:
%% create_virtual_cluster_request() :: #{
%%   <<"clientToken">> := string(),
%%   <<"containerProvider">> := container_provider(),
%%   <<"name">> := string(),
%%   <<"securityConfigurationId">> => string(),
%%   <<"tags">> => map()
%% }
-type create_virtual_cluster_request() :: #{binary() => any()}.


%% Example:
%% list_job_templates_request() :: #{
%%   <<"createdAfter">> => non_neg_integer(),
%%   <<"createdBefore">> => non_neg_integer(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_job_templates_request() :: #{binary() => any()}.


%% Example:
%% parametric_monitoring_configuration() :: #{
%%   <<"cloudWatchMonitoringConfiguration">> => parametric_cloud_watch_monitoring_configuration(),
%%   <<"persistentAppUI">> => string(),
%%   <<"s3MonitoringConfiguration">> => parametric_s3_monitoring_configuration()
%% }
-type parametric_monitoring_configuration() :: #{binary() => any()}.


%% Example:
%% retry_policy_execution() :: #{
%%   <<"currentAttemptCount">> => integer()
%% }
-type retry_policy_execution() :: #{binary() => any()}.


%% Example:
%% in_transit_encryption_configuration() :: #{
%%   <<"tlsCertificateConfiguration">> => t_l_s_certificate_configuration()
%% }
-type in_transit_encryption_configuration() :: #{binary() => any()}.


%% Example:
%% t_l_s_certificate_configuration() :: #{
%%   <<"certificateProviderType">> => list(any()),
%%   <<"privateCertificateSecretArn">> => string(),
%%   <<"publicCertificateSecretArn">> => string()
%% }
-type t_l_s_certificate_configuration() :: #{binary() => any()}.


%% Example:
%% create_job_template_request() :: #{
%%   <<"clientToken">> := string(),
%%   <<"jobTemplateData">> := job_template_data(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_job_template_request() :: #{binary() => any()}.

%% Example:
%% describe_managed_endpoint_request() :: #{}
-type describe_managed_endpoint_request() :: #{}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% security_configuration() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"securityConfigurationData">> => security_configuration_data(),
%%   <<"tags">> => map()
%% }
-type security_configuration() :: #{binary() => any()}.


%% Example:
%% describe_security_configuration_response() :: #{
%%   <<"securityConfiguration">> => security_configuration()
%% }
-type describe_security_configuration_response() :: #{binary() => any()}.


%% Example:
%% job_template_data() :: #{
%%   <<"configurationOverrides">> => parametric_configuration_overrides(),
%%   <<"executionRoleArn">> => string(),
%%   <<"jobDriver">> => job_driver(),
%%   <<"jobTags">> => map(),
%%   <<"parameterConfiguration">> => map(),
%%   <<"releaseLabel">> => string()
%% }
-type job_template_data() :: #{binary() => any()}.


%% Example:
%% list_managed_endpoints_response() :: #{
%%   <<"endpoints">> => list(endpoint()),
%%   <<"nextToken">> => string()
%% }
-type list_managed_endpoints_response() :: #{binary() => any()}.


%% Example:
%% request_throttled_exception() :: #{
%%   <<"message">> => string()
%% }
-type request_throttled_exception() :: #{binary() => any()}.

%% Example:
%% delete_managed_endpoint_request() :: #{}
-type delete_managed_endpoint_request() :: #{}.


%% Example:
%% list_managed_endpoints_request() :: #{
%%   <<"createdAfter">> => non_neg_integer(),
%%   <<"createdBefore">> => non_neg_integer(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"states">> => list(list(any())()),
%%   <<"types">> => list(string())
%% }
-type list_managed_endpoints_request() :: #{binary() => any()}.


%% Example:
%% security_configuration_data() :: #{
%%   <<"authorizationConfiguration">> => authorization_configuration()
%% }
-type security_configuration_data() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% delete_virtual_cluster_response() :: #{
%%   <<"id">> => string()
%% }
-type delete_virtual_cluster_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% configuration_overrides() :: #{
%%   <<"applicationConfiguration">> => list(configuration()),
%%   <<"monitoringConfiguration">> => monitoring_configuration()
%% }
-type configuration_overrides() :: #{binary() => any()}.


%% Example:
%% get_managed_endpoint_session_credentials_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"credentialType">> := string(),
%%   <<"durationInSeconds">> => integer(),
%%   <<"executionRoleArn">> := string(),
%%   <<"logContext">> => string()
%% }
-type get_managed_endpoint_session_credentials_request() :: #{binary() => any()}.


%% Example:
%% spark_sql_job_driver() :: #{
%%   <<"entryPoint">> => string(),
%%   <<"sparkSqlParameters">> => string()
%% }
-type spark_sql_job_driver() :: #{binary() => any()}.


%% Example:
%% list_security_configurations_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"securityConfigurations">> => list(security_configuration())
%% }
-type list_security_configurations_response() :: #{binary() => any()}.


%% Example:
%% describe_virtual_cluster_response() :: #{
%%   <<"virtualCluster">> => virtual_cluster()
%% }
-type describe_virtual_cluster_response() :: #{binary() => any()}.


%% Example:
%% job_driver() :: #{
%%   <<"sparkSqlJobDriver">> => spark_sql_job_driver(),
%%   <<"sparkSubmitJobDriver">> => spark_submit_job_driver()
%% }
-type job_driver() :: #{binary() => any()}.

%% Example:
%% cancel_job_run_request() :: #{}
-type cancel_job_run_request() :: #{}.

%% Example:
%% describe_security_configuration_request() :: #{}
-type describe_security_configuration_request() :: #{}.


%% Example:
%% list_job_templates_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"templates">> => list(job_template())
%% }
-type list_job_templates_response() :: #{binary() => any()}.


%% Example:
%% retry_policy_configuration() :: #{
%%   <<"maxAttempts">> => integer()
%% }
-type retry_policy_configuration() :: #{binary() => any()}.


%% Example:
%% authorization_configuration() :: #{
%%   <<"encryptionConfiguration">> => encryption_configuration(),
%%   <<"lakeFormationConfiguration">> => lake_formation_configuration()
%% }
-type authorization_configuration() :: #{binary() => any()}.


%% Example:
%% list_virtual_clusters_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"virtualClusters">> => list(virtual_cluster())
%% }
-type list_virtual_clusters_response() :: #{binary() => any()}.

%% Example:
%% delete_virtual_cluster_request() :: #{}
-type delete_virtual_cluster_request() :: #{}.


%% Example:
%% lake_formation_configuration() :: #{
%%   <<"authorizedSessionTagValue">> => string(),
%%   <<"queryEngineRoleArn">> => string(),
%%   <<"secureNamespaceInfo">> => secure_namespace_info()
%% }
-type lake_formation_configuration() :: #{binary() => any()}.


%% Example:
%% spark_submit_job_driver() :: #{
%%   <<"entryPoint">> => string(),
%%   <<"entryPointArguments">> => list(string()),
%%   <<"sparkSubmitParameters">> => string()
%% }
-type spark_submit_job_driver() :: #{binary() => any()}.


%% Example:
%% list_virtual_clusters_request() :: #{
%%   <<"containerProviderId">> => string(),
%%   <<"containerProviderType">> => list(any()),
%%   <<"createdAfter">> => non_neg_integer(),
%%   <<"createdBefore">> => non_neg_integer(),
%%   <<"eksAccessEntryIntegrated">> => boolean(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"states">> => list(list(any())())
%% }
-type list_virtual_clusters_request() :: #{binary() => any()}.

-type cancel_job_run_errors() ::
    validation_exception() | 
    internal_server_exception().

-type create_job_template_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_managed_endpoint_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_security_configuration_errors() ::
    validation_exception() | 
    internal_server_exception().

-type create_virtual_cluster_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    e_k_s_request_throttled_exception() | 
    resource_not_found_exception().

-type delete_job_template_errors() ::
    validation_exception() | 
    internal_server_exception().

-type delete_managed_endpoint_errors() ::
    validation_exception() | 
    internal_server_exception().

-type delete_virtual_cluster_errors() ::
    validation_exception() | 
    internal_server_exception().

-type describe_job_run_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_job_template_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_managed_endpoint_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_security_configuration_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_virtual_cluster_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_managed_endpoint_session_credentials_errors() ::
    validation_exception() | 
    request_throttled_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_job_runs_errors() ::
    validation_exception() | 
    internal_server_exception().

-type list_job_templates_errors() ::
    validation_exception() | 
    internal_server_exception().

-type list_managed_endpoints_errors() ::
    validation_exception() | 
    internal_server_exception().

-type list_security_configurations_errors() ::
    validation_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_virtual_clusters_errors() ::
    validation_exception() | 
    internal_server_exception().

-type start_job_run_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels a job run.
%%
%% A job run is a unit of work, such as a Spark jar, PySpark script, or
%% SparkSQL query, that you submit to Amazon EMR on EKS.
-spec cancel_job_run(aws_client:aws_client(), binary() | list(), binary() | list(), cancel_job_run_request()) ->
    {ok, cancel_job_run_response(), tuple()} |
    {error, any()} |
    {error, cancel_job_run_errors(), tuple()}.
cancel_job_run(Client, Id, VirtualClusterId, Input) ->
    cancel_job_run(Client, Id, VirtualClusterId, Input, []).

-spec cancel_job_run(aws_client:aws_client(), binary() | list(), binary() | list(), cancel_job_run_request(), proplists:proplist()) ->
    {ok, cancel_job_run_response(), tuple()} |
    {error, any()} |
    {error, cancel_job_run_errors(), tuple()}.
cancel_job_run(Client, Id, VirtualClusterId, Input0, Options0) ->
    Method = delete,
    Path = ["/virtualclusters/", aws_util:encode_uri(VirtualClusterId), "/jobruns/", aws_util:encode_uri(Id), ""],
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

%% @doc Creates a job template.
%%
%% Job template stores values of StartJobRun API request in a
%% template and can be used to start a job run. Job template allows two use
%% cases: avoid
%% repeating recurring StartJobRun API request values, enforcing certain
%% values in StartJobRun
%% API request.
-spec create_job_template(aws_client:aws_client(), create_job_template_request()) ->
    {ok, create_job_template_response(), tuple()} |
    {error, any()} |
    {error, create_job_template_errors(), tuple()}.
create_job_template(Client, Input) ->
    create_job_template(Client, Input, []).

-spec create_job_template(aws_client:aws_client(), create_job_template_request(), proplists:proplist()) ->
    {ok, create_job_template_response(), tuple()} |
    {error, any()} |
    {error, create_job_template_errors(), tuple()}.
create_job_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/jobtemplates"],
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

%% @doc Creates a managed endpoint.
%%
%% A managed endpoint is a gateway that connects Amazon EMR Studio to Amazon
%% EMR on EKS so that Amazon EMR Studio can
%% communicate with your virtual cluster.
-spec create_managed_endpoint(aws_client:aws_client(), binary() | list(), create_managed_endpoint_request()) ->
    {ok, create_managed_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_managed_endpoint_errors(), tuple()}.
create_managed_endpoint(Client, VirtualClusterId, Input) ->
    create_managed_endpoint(Client, VirtualClusterId, Input, []).

-spec create_managed_endpoint(aws_client:aws_client(), binary() | list(), create_managed_endpoint_request(), proplists:proplist()) ->
    {ok, create_managed_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_managed_endpoint_errors(), tuple()}.
create_managed_endpoint(Client, VirtualClusterId, Input0, Options0) ->
    Method = post,
    Path = ["/virtualclusters/", aws_util:encode_uri(VirtualClusterId), "/endpoints"],
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

%% @doc Creates a security configuration.
%%
%% Security configurations in Amazon EMR on EKS are
%% templates for different security setups. You can use security
%% configurations to configure
%% the Lake Formation integration setup. You can also create a security
%% configuration
%% to re-use a security setup each time you create a virtual cluster.
-spec create_security_configuration(aws_client:aws_client(), create_security_configuration_request()) ->
    {ok, create_security_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_security_configuration_errors(), tuple()}.
create_security_configuration(Client, Input) ->
    create_security_configuration(Client, Input, []).

-spec create_security_configuration(aws_client:aws_client(), create_security_configuration_request(), proplists:proplist()) ->
    {ok, create_security_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_security_configuration_errors(), tuple()}.
create_security_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/securityconfigurations"],
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

%% @doc Creates a virtual cluster.
%%
%% Virtual cluster is a managed entity on Amazon EMR on EKS. You can create,
%% describe, list and delete virtual clusters. They do not consume any
%% additional resource in your system. A single virtual cluster maps to a
%% single Kubernetes
%% namespace. Given this relationship, you can model virtual clusters the
%% same way you model
%% Kubernetes namespaces to meet your requirements.
-spec create_virtual_cluster(aws_client:aws_client(), create_virtual_cluster_request()) ->
    {ok, create_virtual_cluster_response(), tuple()} |
    {error, any()} |
    {error, create_virtual_cluster_errors(), tuple()}.
create_virtual_cluster(Client, Input) ->
    create_virtual_cluster(Client, Input, []).

-spec create_virtual_cluster(aws_client:aws_client(), create_virtual_cluster_request(), proplists:proplist()) ->
    {ok, create_virtual_cluster_response(), tuple()} |
    {error, any()} |
    {error, create_virtual_cluster_errors(), tuple()}.
create_virtual_cluster(Client, Input0, Options0) ->
    Method = post,
    Path = ["/virtualclusters"],
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

%% @doc Deletes a job template.
%%
%% Job template stores values of StartJobRun API request in a
%% template and can be used to start a job run. Job template allows two use
%% cases: avoid
%% repeating recurring StartJobRun API request values, enforcing certain
%% values in StartJobRun
%% API request.
-spec delete_job_template(aws_client:aws_client(), binary() | list(), delete_job_template_request()) ->
    {ok, delete_job_template_response(), tuple()} |
    {error, any()} |
    {error, delete_job_template_errors(), tuple()}.
delete_job_template(Client, Id, Input) ->
    delete_job_template(Client, Id, Input, []).

-spec delete_job_template(aws_client:aws_client(), binary() | list(), delete_job_template_request(), proplists:proplist()) ->
    {ok, delete_job_template_response(), tuple()} |
    {error, any()} |
    {error, delete_job_template_errors(), tuple()}.
delete_job_template(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/jobtemplates/", aws_util:encode_uri(Id), ""],
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

%% @doc Deletes a managed endpoint.
%%
%% A managed endpoint is a gateway that connects Amazon EMR Studio to Amazon
%% EMR on EKS so that Amazon EMR Studio can
%% communicate with your virtual cluster.
-spec delete_managed_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), delete_managed_endpoint_request()) ->
    {ok, delete_managed_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_managed_endpoint_errors(), tuple()}.
delete_managed_endpoint(Client, Id, VirtualClusterId, Input) ->
    delete_managed_endpoint(Client, Id, VirtualClusterId, Input, []).

-spec delete_managed_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), delete_managed_endpoint_request(), proplists:proplist()) ->
    {ok, delete_managed_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_managed_endpoint_errors(), tuple()}.
delete_managed_endpoint(Client, Id, VirtualClusterId, Input0, Options0) ->
    Method = delete,
    Path = ["/virtualclusters/", aws_util:encode_uri(VirtualClusterId), "/endpoints/", aws_util:encode_uri(Id), ""],
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

%% @doc Deletes a virtual cluster.
%%
%% Virtual cluster is a managed entity on Amazon EMR on EKS. You can create,
%% describe, list and delete virtual clusters. They do not consume any
%% additional resource in your system. A single virtual cluster maps to a
%% single Kubernetes
%% namespace. Given this relationship, you can model virtual clusters the
%% same way you model
%% Kubernetes namespaces to meet your requirements.
-spec delete_virtual_cluster(aws_client:aws_client(), binary() | list(), delete_virtual_cluster_request()) ->
    {ok, delete_virtual_cluster_response(), tuple()} |
    {error, any()} |
    {error, delete_virtual_cluster_errors(), tuple()}.
delete_virtual_cluster(Client, Id, Input) ->
    delete_virtual_cluster(Client, Id, Input, []).

-spec delete_virtual_cluster(aws_client:aws_client(), binary() | list(), delete_virtual_cluster_request(), proplists:proplist()) ->
    {ok, delete_virtual_cluster_response(), tuple()} |
    {error, any()} |
    {error, delete_virtual_cluster_errors(), tuple()}.
delete_virtual_cluster(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/virtualclusters/", aws_util:encode_uri(Id), ""],
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

%% @doc Displays detailed information about a job run.
%%
%% A job run is a unit of work, such as a
%% Spark jar, PySpark script, or SparkSQL query, that you submit to Amazon
%% EMR on EKS.
-spec describe_job_run(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_job_run_response(), tuple()} |
    {error, any()} |
    {error, describe_job_run_errors(), tuple()}.
describe_job_run(Client, Id, VirtualClusterId)
  when is_map(Client) ->
    describe_job_run(Client, Id, VirtualClusterId, #{}, #{}).

-spec describe_job_run(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_job_run_response(), tuple()} |
    {error, any()} |
    {error, describe_job_run_errors(), tuple()}.
describe_job_run(Client, Id, VirtualClusterId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_job_run(Client, Id, VirtualClusterId, QueryMap, HeadersMap, []).

-spec describe_job_run(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_job_run_response(), tuple()} |
    {error, any()} |
    {error, describe_job_run_errors(), tuple()}.
describe_job_run(Client, Id, VirtualClusterId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/virtualclusters/", aws_util:encode_uri(VirtualClusterId), "/jobruns/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays detailed information about a specified job template.
%%
%% Job template stores values
%% of StartJobRun API request in a template and can be used to start a job
%% run. Job template
%% allows two use cases: avoid repeating recurring StartJobRun API request
%% values, enforcing
%% certain values in StartJobRun API request.
-spec describe_job_template(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_job_template_response(), tuple()} |
    {error, any()} |
    {error, describe_job_template_errors(), tuple()}.
describe_job_template(Client, Id)
  when is_map(Client) ->
    describe_job_template(Client, Id, #{}, #{}).

-spec describe_job_template(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_job_template_response(), tuple()} |
    {error, any()} |
    {error, describe_job_template_errors(), tuple()}.
describe_job_template(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_job_template(Client, Id, QueryMap, HeadersMap, []).

-spec describe_job_template(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_job_template_response(), tuple()} |
    {error, any()} |
    {error, describe_job_template_errors(), tuple()}.
describe_job_template(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/jobtemplates/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays detailed information about a managed endpoint.
%%
%% A managed endpoint is a gateway
%% that connects Amazon EMR Studio to Amazon EMR on EKS so that Amazon EMR
%% Studio can communicate with your virtual cluster.
-spec describe_managed_endpoint(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_managed_endpoint_response(), tuple()} |
    {error, any()} |
    {error, describe_managed_endpoint_errors(), tuple()}.
describe_managed_endpoint(Client, Id, VirtualClusterId)
  when is_map(Client) ->
    describe_managed_endpoint(Client, Id, VirtualClusterId, #{}, #{}).

-spec describe_managed_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_managed_endpoint_response(), tuple()} |
    {error, any()} |
    {error, describe_managed_endpoint_errors(), tuple()}.
describe_managed_endpoint(Client, Id, VirtualClusterId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_managed_endpoint(Client, Id, VirtualClusterId, QueryMap, HeadersMap, []).

-spec describe_managed_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_managed_endpoint_response(), tuple()} |
    {error, any()} |
    {error, describe_managed_endpoint_errors(), tuple()}.
describe_managed_endpoint(Client, Id, VirtualClusterId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/virtualclusters/", aws_util:encode_uri(VirtualClusterId), "/endpoints/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays detailed information about a specified security
%% configuration.
%%
%% Security
%% configurations in Amazon EMR on EKS are templates for different security
%% setups. You
%% can use security configurations to configure the Lake Formation
%% integration setup.
%% You can also create a security configuration to re-use a security setup
%% each time you
%% create a virtual cluster.
-spec describe_security_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_security_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_security_configuration_errors(), tuple()}.
describe_security_configuration(Client, Id)
  when is_map(Client) ->
    describe_security_configuration(Client, Id, #{}, #{}).

-spec describe_security_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_security_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_security_configuration_errors(), tuple()}.
describe_security_configuration(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_security_configuration(Client, Id, QueryMap, HeadersMap, []).

-spec describe_security_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_security_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_security_configuration_errors(), tuple()}.
describe_security_configuration(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/securityconfigurations/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays detailed information about a specified virtual cluster.
%%
%% Virtual cluster is a
%% managed entity on Amazon EMR on EKS. You can create, describe, list and
%% delete virtual
%% clusters. They do not consume any additional resource in your system. A
%% single virtual
%% cluster maps to a single Kubernetes namespace. Given this relationship,
%% you can model
%% virtual clusters the same way you model Kubernetes namespaces to meet your
%% requirements.
-spec describe_virtual_cluster(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_virtual_cluster_response(), tuple()} |
    {error, any()} |
    {error, describe_virtual_cluster_errors(), tuple()}.
describe_virtual_cluster(Client, Id)
  when is_map(Client) ->
    describe_virtual_cluster(Client, Id, #{}, #{}).

-spec describe_virtual_cluster(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_virtual_cluster_response(), tuple()} |
    {error, any()} |
    {error, describe_virtual_cluster_errors(), tuple()}.
describe_virtual_cluster(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_virtual_cluster(Client, Id, QueryMap, HeadersMap, []).

-spec describe_virtual_cluster(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_virtual_cluster_response(), tuple()} |
    {error, any()} |
    {error, describe_virtual_cluster_errors(), tuple()}.
describe_virtual_cluster(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/virtualclusters/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Generate a session token to connect to a managed endpoint.
-spec get_managed_endpoint_session_credentials(aws_client:aws_client(), binary() | list(), binary() | list(), get_managed_endpoint_session_credentials_request()) ->
    {ok, get_managed_endpoint_session_credentials_response(), tuple()} |
    {error, any()} |
    {error, get_managed_endpoint_session_credentials_errors(), tuple()}.
get_managed_endpoint_session_credentials(Client, EndpointIdentifier, VirtualClusterIdentifier, Input) ->
    get_managed_endpoint_session_credentials(Client, EndpointIdentifier, VirtualClusterIdentifier, Input, []).

-spec get_managed_endpoint_session_credentials(aws_client:aws_client(), binary() | list(), binary() | list(), get_managed_endpoint_session_credentials_request(), proplists:proplist()) ->
    {ok, get_managed_endpoint_session_credentials_response(), tuple()} |
    {error, any()} |
    {error, get_managed_endpoint_session_credentials_errors(), tuple()}.
get_managed_endpoint_session_credentials(Client, EndpointIdentifier, VirtualClusterIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/virtualclusters/", aws_util:encode_uri(VirtualClusterIdentifier), "/endpoints/", aws_util:encode_uri(EndpointIdentifier), "/credentials"],
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

%% @doc Lists job runs based on a set of parameters.
%%
%% A job run is a unit of work, such as a
%% Spark jar, PySpark script, or SparkSQL query, that you submit to Amazon
%% EMR on EKS.
-spec list_job_runs(aws_client:aws_client(), binary() | list()) ->
    {ok, list_job_runs_response(), tuple()} |
    {error, any()} |
    {error, list_job_runs_errors(), tuple()}.
list_job_runs(Client, VirtualClusterId)
  when is_map(Client) ->
    list_job_runs(Client, VirtualClusterId, #{}, #{}).

-spec list_job_runs(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_job_runs_response(), tuple()} |
    {error, any()} |
    {error, list_job_runs_errors(), tuple()}.
list_job_runs(Client, VirtualClusterId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_job_runs(Client, VirtualClusterId, QueryMap, HeadersMap, []).

-spec list_job_runs(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_job_runs_response(), tuple()} |
    {error, any()} |
    {error, list_job_runs_errors(), tuple()}.
list_job_runs(Client, VirtualClusterId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/virtualclusters/", aws_util:encode_uri(VirtualClusterId), "/jobruns"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"createdAfter">>, maps:get(<<"createdAfter">>, QueryMap, undefined)},
        {<<"createdBefore">>, maps:get(<<"createdBefore">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"states">>, maps:get(<<"states">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists job templates based on a set of parameters.
%%
%% Job template stores values of
%% StartJobRun API request in a template and can be used to start a job run.
%% Job template
%% allows two use cases: avoid repeating recurring StartJobRun API request
%% values, enforcing
%% certain values in StartJobRun API request.
-spec list_job_templates(aws_client:aws_client()) ->
    {ok, list_job_templates_response(), tuple()} |
    {error, any()} |
    {error, list_job_templates_errors(), tuple()}.
list_job_templates(Client)
  when is_map(Client) ->
    list_job_templates(Client, #{}, #{}).

-spec list_job_templates(aws_client:aws_client(), map(), map()) ->
    {ok, list_job_templates_response(), tuple()} |
    {error, any()} |
    {error, list_job_templates_errors(), tuple()}.
list_job_templates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_job_templates(Client, QueryMap, HeadersMap, []).

-spec list_job_templates(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_job_templates_response(), tuple()} |
    {error, any()} |
    {error, list_job_templates_errors(), tuple()}.
list_job_templates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/jobtemplates"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"createdAfter">>, maps:get(<<"createdAfter">>, QueryMap, undefined)},
        {<<"createdBefore">>, maps:get(<<"createdBefore">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists managed endpoints based on a set of parameters.
%%
%% A managed endpoint is a gateway
%% that connects Amazon EMR Studio to Amazon EMR on EKS so that Amazon EMR
%% Studio can communicate with your virtual cluster.
-spec list_managed_endpoints(aws_client:aws_client(), binary() | list()) ->
    {ok, list_managed_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_managed_endpoints_errors(), tuple()}.
list_managed_endpoints(Client, VirtualClusterId)
  when is_map(Client) ->
    list_managed_endpoints(Client, VirtualClusterId, #{}, #{}).

-spec list_managed_endpoints(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_managed_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_managed_endpoints_errors(), tuple()}.
list_managed_endpoints(Client, VirtualClusterId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_managed_endpoints(Client, VirtualClusterId, QueryMap, HeadersMap, []).

-spec list_managed_endpoints(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_managed_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_managed_endpoints_errors(), tuple()}.
list_managed_endpoints(Client, VirtualClusterId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/virtualclusters/", aws_util:encode_uri(VirtualClusterId), "/endpoints"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"createdAfter">>, maps:get(<<"createdAfter">>, QueryMap, undefined)},
        {<<"createdBefore">>, maps:get(<<"createdBefore">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"states">>, maps:get(<<"states">>, QueryMap, undefined)},
        {<<"types">>, maps:get(<<"types">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists security configurations based on a set of parameters.
%%
%% Security configurations in
%% Amazon EMR on EKS are templates for different security setups. You can use
%% security
%% configurations to configure the Lake Formation integration setup. You can
%% also
%% create a security configuration to re-use a security setup each time you
%% create a virtual
%% cluster.
-spec list_security_configurations(aws_client:aws_client()) ->
    {ok, list_security_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_security_configurations_errors(), tuple()}.
list_security_configurations(Client)
  when is_map(Client) ->
    list_security_configurations(Client, #{}, #{}).

-spec list_security_configurations(aws_client:aws_client(), map(), map()) ->
    {ok, list_security_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_security_configurations_errors(), tuple()}.
list_security_configurations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_security_configurations(Client, QueryMap, HeadersMap, []).

-spec list_security_configurations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_security_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_security_configurations_errors(), tuple()}.
list_security_configurations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/securityconfigurations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"createdAfter">>, maps:get(<<"createdAfter">>, QueryMap, undefined)},
        {<<"createdBefore">>, maps:get(<<"createdBefore">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags assigned to the resources.
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

%% @doc Lists information about the specified virtual cluster.
%%
%% Virtual cluster is a managed
%% entity on Amazon EMR on EKS. You can create, describe, list and delete
%% virtual
%% clusters. They do not consume any additional resource in your system. A
%% single virtual
%% cluster maps to a single Kubernetes namespace. Given this relationship,
%% you can model
%% virtual clusters the same way you model Kubernetes namespaces to meet your
%% requirements.
-spec list_virtual_clusters(aws_client:aws_client()) ->
    {ok, list_virtual_clusters_response(), tuple()} |
    {error, any()} |
    {error, list_virtual_clusters_errors(), tuple()}.
list_virtual_clusters(Client)
  when is_map(Client) ->
    list_virtual_clusters(Client, #{}, #{}).

-spec list_virtual_clusters(aws_client:aws_client(), map(), map()) ->
    {ok, list_virtual_clusters_response(), tuple()} |
    {error, any()} |
    {error, list_virtual_clusters_errors(), tuple()}.
list_virtual_clusters(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_virtual_clusters(Client, QueryMap, HeadersMap, []).

-spec list_virtual_clusters(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_virtual_clusters_response(), tuple()} |
    {error, any()} |
    {error, list_virtual_clusters_errors(), tuple()}.
list_virtual_clusters(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/virtualclusters"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"containerProviderId">>, maps:get(<<"containerProviderId">>, QueryMap, undefined)},
        {<<"containerProviderType">>, maps:get(<<"containerProviderType">>, QueryMap, undefined)},
        {<<"createdAfter">>, maps:get(<<"createdAfter">>, QueryMap, undefined)},
        {<<"createdBefore">>, maps:get(<<"createdBefore">>, QueryMap, undefined)},
        {<<"eksAccessEntryIntegrated">>, maps:get(<<"eksAccessEntryIntegrated">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"states">>, maps:get(<<"states">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Starts a job run.
%%
%% A job run is a unit of work, such as a Spark jar, PySpark script, or
%% SparkSQL query, that you submit to Amazon EMR on EKS.
-spec start_job_run(aws_client:aws_client(), binary() | list(), start_job_run_request()) ->
    {ok, start_job_run_response(), tuple()} |
    {error, any()} |
    {error, start_job_run_errors(), tuple()}.
start_job_run(Client, VirtualClusterId, Input) ->
    start_job_run(Client, VirtualClusterId, Input, []).

-spec start_job_run(aws_client:aws_client(), binary() | list(), start_job_run_request(), proplists:proplist()) ->
    {ok, start_job_run_response(), tuple()} |
    {error, any()} |
    {error, start_job_run_errors(), tuple()}.
start_job_run(Client, VirtualClusterId, Input0, Options0) ->
    Method = post,
    Path = ["/virtualclusters/", aws_util:encode_uri(VirtualClusterId), "/jobruns"],
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

%% @doc Assigns tags to resources.
%%
%% A tag is a label that you assign to an Amazon Web Services
%% resource. Each tag consists of a key and an optional value, both of which
%% you define. Tags
%% enable you to categorize your Amazon Web Services resources by attributes
%% such as purpose,
%% owner, or environment. When you have many resources of the same type, you
%% can quickly
%% identify a specific resource based on the tags you've assigned to it.
%% For example, you can
%% define a set of tags for your Amazon EMR on EKS clusters to help you track
%% each
%% cluster's owner and stack level. We recommend that you devise a
%% consistent set of tag keys
%% for each resource type. You can then search and filter the resources based
%% on the tags that
%% you add.
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

%% @doc Removes tags from resources.
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
    Client1 = Client#{service => <<"emr-containers">>},
    Host = build_host(<<"emr-containers">>, Client1),
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
