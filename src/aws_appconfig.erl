%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AppConfig feature flags and dynamic configurations help software
%% builders
%% quickly and securely adjust application behavior in production
%% environments without full
%% code deployments.
%%
%% AppConfig speeds up software release frequency, improves
%% application resiliency, and helps you address emergent issues more
%% quickly. With feature
%% flags, you can gradually release new capabilities to users and measure the
%% impact of those
%% changes before fully deploying the new capabilities to all users. With
%% operational flags
%% and dynamic configurations, you can update block lists, allow lists,
%% throttling limits,
%% logging verbosity, and perform other operational tuning to quickly respond
%% to issues in
%% production environments.
%%
%% AppConfig is a tool in Amazon Web Services Systems Manager.
%%
%% Despite the fact that application configuration content can vary greatly
%% from
%% application to application, AppConfig supports the following use cases,
%% which
%% cover a broad spectrum of customer needs:
%%
%% Feature flags and toggles - Safely release new
%% capabilities to your customers in a controlled environment. Instantly roll
%% back
%% changes if you experience a problem.
%%
%% Application tuning - Carefully introduce
%% application changes while testing the impact of those changes with users
%% in
%% production environments.
%%
%% Allow list or block list - Control access to
%% premium features or instantly block specific users without deploying new
%% code.
%%
%% Centralized configuration storage - Keep your
%% configuration data organized and consistent across all of your workloads.
%% You can use
%% AppConfig to deploy configuration data stored in the AppConfig
%% hosted configuration store, Secrets Manager, Systems Manager, Parameter
%% Store, or Amazon S3.
%%
%% How AppConfig works
%%
%% This section provides a high-level description of how AppConfig works and
%% how
%% you get started.
%%
%% 1. Identify configuration values in code you want to manage in the cloud
%%
%% Before you start creating AppConfig artifacts, we recommend you
%% identify configuration data in your code that you want to dynamically
%% manage using
%% AppConfig. Good examples include feature flags or toggles, allow and
%% block lists, logging verbosity, service limits, and throttling rules, to
%% name a
%% few.
%%
%% If your configuration data already exists in the cloud, you can take
%% advantage
%% of AppConfig validation, deployment, and extension features to further
%% streamline configuration data management.
%%
%% 2. Create an application namespace
%%
%% To create a namespace, you create an AppConfig artifact called an
%% application. An application is simply an organizational construct like a
%% folder.
%%
%% 3. Create environments
%%
%% For each AppConfig application, you define one or more environments.
%% An environment is a logical grouping of targets, such as applications in a
%% `Beta' or `Production' environment, Lambda functions,
%% or containers. You can also define environments for application
%% subcomponents,
%% such as the `Web', `Mobile', and
%% `Back-end'.
%%
%% You can configure Amazon CloudWatch alarms for each environment. The
%% system monitors
%% alarms during a configuration deployment. If an alarm is triggered, the
%% system
%% rolls back the configuration.
%%
%% 4. Create a configuration profile
%%
%% A configuration profile includes, among other things, a URI that enables
%% AppConfig to locate your configuration data in its stored location
%% and a profile type. AppConfig supports two configuration profile types:
%% feature flags and freeform configurations. Feature flag configuration
%% profiles
%% store their data in the AppConfig hosted configuration store and the URI
%% is simply `hosted'. For freeform configuration profiles, you can store
%% your data in the AppConfig hosted configuration store or any Amazon Web
%% Services
%% service that integrates with AppConfig, as described in Creating
%% a free form configuration profile:
%% http://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-free-form-configurations-creating.html
%% in the the AppConfig User Guide.
%%
%% A configuration profile can also include optional validators to ensure
%% your
%% configuration data is syntactically and semantically correct. AppConfig
%% performs a check using the validators when you start a deployment. If any
%% errors
%% are detected, the deployment rolls back to the previous configuration
%% data.
%%
%% 5. Deploy configuration data
%%
%% When you create a new deployment, you specify the following:
%%
%% An application ID
%%
%% A configuration profile ID
%%
%% A configuration version
%%
%% An environment ID where you want to deploy the configuration data
%%
%% A deployment strategy ID that defines how fast you want the changes to
%% take effect
%%
%% When you call the StartDeployment:
%% https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_StartDeployment.html
%% API action, AppConfig performs the following
%% tasks:
%%
%% Retrieves the configuration data from the underlying data store by using
%% the location URI in the configuration profile.
%%
%% Verifies the configuration data is syntactically and semantically correct
%% by using the validators you specified when you created your configuration
%% profile.
%%
%% Caches a copy of the data so it is ready to be retrieved by your
%% application. This cached copy is called the deployed
%% data.
%%
%% 6. Retrieve the configuration
%%
%% You can configure AppConfig Agent as a local host and have the agent
%% poll AppConfig for configuration updates. The agent calls the
%% StartConfigurationSession:
%% https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_StartConfigurationSession.html
%% and GetLatestConfiguration:
%% https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_GetLatestConfiguration.html
%% API actions and caches your configuration data
%% locally. To retrieve the data, your application makes an HTTP call to the
%% localhost server. AppConfig Agent supports several use cases, as
%% described in Simplified
%% retrieval methods:
%% http://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-retrieving-simplified-methods.html
%% in the the AppConfig User
%% Guide.
%%
%% If AppConfig Agent isn't supported for your use case, you can
%% configure your application to poll AppConfig for configuration updates
%% by directly calling the StartConfigurationSession:
%% https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_StartConfigurationSession.html
%% and GetLatestConfiguration:
%% https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_GetLatestConfiguration.html
%% API actions.
%%
%% This reference is intended to be used with the AppConfig User
%% Guide:
%% http://docs.aws.amazon.com/appconfig/latest/userguide/what-is-appconfig.html.
-module(aws_appconfig).

-export([create_application/2,
         create_application/3,
         create_configuration_profile/3,
         create_configuration_profile/4,
         create_deployment_strategy/2,
         create_deployment_strategy/3,
         create_environment/3,
         create_environment/4,
         create_extension/2,
         create_extension/3,
         create_extension_association/2,
         create_extension_association/3,
         create_hosted_configuration_version/4,
         create_hosted_configuration_version/5,
         delete_application/3,
         delete_application/4,
         delete_configuration_profile/4,
         delete_configuration_profile/5,
         delete_deployment_strategy/3,
         delete_deployment_strategy/4,
         delete_environment/4,
         delete_environment/5,
         delete_extension/3,
         delete_extension/4,
         delete_extension_association/3,
         delete_extension_association/4,
         delete_hosted_configuration_version/5,
         delete_hosted_configuration_version/6,
         get_account_settings/1,
         get_account_settings/3,
         get_account_settings/4,
         get_application/2,
         get_application/4,
         get_application/5,
         get_configuration/5,
         get_configuration/7,
         get_configuration/8,
         get_configuration_profile/3,
         get_configuration_profile/5,
         get_configuration_profile/6,
         get_deployment/4,
         get_deployment/6,
         get_deployment/7,
         get_deployment_strategy/2,
         get_deployment_strategy/4,
         get_deployment_strategy/5,
         get_environment/3,
         get_environment/5,
         get_environment/6,
         get_extension/2,
         get_extension/4,
         get_extension/5,
         get_extension_association/2,
         get_extension_association/4,
         get_extension_association/5,
         get_hosted_configuration_version/4,
         get_hosted_configuration_version/6,
         get_hosted_configuration_version/7,
         list_applications/1,
         list_applications/3,
         list_applications/4,
         list_configuration_profiles/2,
         list_configuration_profiles/4,
         list_configuration_profiles/5,
         list_deployment_strategies/1,
         list_deployment_strategies/3,
         list_deployment_strategies/4,
         list_deployments/3,
         list_deployments/5,
         list_deployments/6,
         list_environments/2,
         list_environments/4,
         list_environments/5,
         list_extension_associations/1,
         list_extension_associations/3,
         list_extension_associations/4,
         list_extensions/1,
         list_extensions/3,
         list_extensions/4,
         list_hosted_configuration_versions/3,
         list_hosted_configuration_versions/5,
         list_hosted_configuration_versions/6,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_deployment/4,
         start_deployment/5,
         stop_deployment/5,
         stop_deployment/6,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_account_settings/2,
         update_account_settings/3,
         update_application/3,
         update_application/4,
         update_configuration_profile/4,
         update_configuration_profile/5,
         update_deployment_strategy/3,
         update_deployment_strategy/4,
         update_environment/4,
         update_environment/5,
         update_extension/3,
         update_extension/4,
         update_extension_association/3,
         update_extension_association/4,
         validate_configuration/4,
         validate_configuration/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% list_extensions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"Name">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_extensions_request() :: #{binary() => any()}.


%% Example:
%% applications() :: #{
%%   <<"Items">> => list(application()),
%%   <<"NextToken">> => string()
%% }
-type applications() :: #{binary() => any()}.


%% Example:
%% stop_deployment_request() :: #{
%%   <<"AllowRevert">> => boolean()
%% }
-type stop_deployment_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_deployments_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_deployments_request() :: #{binary() => any()}.


%% Example:
%% extension() :: #{
%%   <<"Actions">> => map(),
%%   <<"Arn">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Parameters">> => map(),
%%   <<"VersionNumber">> => integer()
%% }
-type extension() :: #{binary() => any()}.


%% Example:
%% deployment_summary() :: #{
%%   <<"CompletedAt">> => non_neg_integer(),
%%   <<"ConfigurationName">> => string(),
%%   <<"ConfigurationVersion">> => string(),
%%   <<"DeploymentDurationInMinutes">> => integer(),
%%   <<"DeploymentNumber">> => integer(),
%%   <<"FinalBakeTimeInMinutes">> => integer(),
%%   <<"GrowthFactor">> => float(),
%%   <<"GrowthType">> => list(any()),
%%   <<"PercentageComplete">> => float(),
%%   <<"StartedAt">> => non_neg_integer(),
%%   <<"State">> => list(any()),
%%   <<"VersionLabel">> => string()
%% }
-type deployment_summary() :: #{binary() => any()}.


%% Example:
%% extension_associations() :: #{
%%   <<"Items">> => list(extension_association_summary()),
%%   <<"NextToken">> => string()
%% }
-type extension_associations() :: #{binary() => any()}.


%% Example:
%% deployment() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"AppliedExtensions">> => list(applied_extension()),
%%   <<"CompletedAt">> => non_neg_integer(),
%%   <<"ConfigurationLocationUri">> => string(),
%%   <<"ConfigurationName">> => string(),
%%   <<"ConfigurationProfileId">> => string(),
%%   <<"ConfigurationVersion">> => string(),
%%   <<"DeploymentDurationInMinutes">> => integer(),
%%   <<"DeploymentNumber">> => integer(),
%%   <<"DeploymentStrategyId">> => string(),
%%   <<"Description">> => string(),
%%   <<"EnvironmentId">> => string(),
%%   <<"EventLog">> => list(deployment_event()),
%%   <<"FinalBakeTimeInMinutes">> => integer(),
%%   <<"GrowthFactor">> => float(),
%%   <<"GrowthType">> => list(any()),
%%   <<"KmsKeyArn">> => string(),
%%   <<"KmsKeyIdentifier">> => string(),
%%   <<"PercentageComplete">> => float(),
%%   <<"StartedAt">> => non_neg_integer(),
%%   <<"State">> => list(any()),
%%   <<"VersionLabel">> => string()
%% }
-type deployment() :: #{binary() => any()}.


%% Example:
%% invalid_configuration_detail() :: #{
%%   <<"Constraint">> => string(),
%%   <<"Location">> => string(),
%%   <<"Reason">> => string(),
%%   <<"Type">> => string(),
%%   <<"Value">> => string()
%% }
-type invalid_configuration_detail() :: #{binary() => any()}.

%% Example:
%% delete_deployment_strategy_request() :: #{}
-type delete_deployment_strategy_request() :: #{}.


%% Example:
%% get_configuration_request() :: #{
%%   <<"ClientConfigurationVersion">> => string(),
%%   <<"ClientId">> := string()
%% }
-type get_configuration_request() :: #{binary() => any()}.


%% Example:
%% validate_configuration_request() :: #{
%%   <<"ConfigurationVersion">> := string()
%% }
-type validate_configuration_request() :: #{binary() => any()}.


%% Example:
%% resource_tags() :: #{
%%   <<"Tags">> => map()
%% }
-type resource_tags() :: #{binary() => any()}.


%% Example:
%% create_hosted_configuration_version_request() :: #{
%%   <<"Content">> := binary(),
%%   <<"ContentType">> := string(),
%%   <<"Description">> => string(),
%%   <<"LatestVersionNumber">> => integer(),
%%   <<"VersionLabel">> => string()
%% }
-type create_hosted_configuration_version_request() :: #{binary() => any()}.

%% Example:
%% get_environment_request() :: #{}
-type get_environment_request() :: #{}.


%% Example:
%% update_configuration_profile_request() :: #{
%%   <<"Description">> => string(),
%%   <<"KmsKeyIdentifier">> => string(),
%%   <<"Name">> => string(),
%%   <<"RetrievalRoleArn">> => string(),
%%   <<"Validators">> => list(validator())
%% }
-type update_configuration_profile_request() :: #{binary() => any()}.


%% Example:
%% update_deployment_strategy_request() :: #{
%%   <<"DeploymentDurationInMinutes">> => integer(),
%%   <<"Description">> => string(),
%%   <<"FinalBakeTimeInMinutes">> => integer(),
%%   <<"GrowthFactor">> => float(),
%%   <<"GrowthType">> => list(any())
%% }
-type update_deployment_strategy_request() :: #{binary() => any()}.


%% Example:
%% deployment_strategy() :: #{
%%   <<"DeploymentDurationInMinutes">> => integer(),
%%   <<"Description">> => string(),
%%   <<"FinalBakeTimeInMinutes">> => integer(),
%%   <<"GrowthFactor">> => float(),
%%   <<"GrowthType">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"ReplicateTo">> => list(any())
%% }
-type deployment_strategy() :: #{binary() => any()}.


%% Example:
%% deletion_protection_settings() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"ProtectionPeriodInMinutes">> => integer()
%% }
-type deletion_protection_settings() :: #{binary() => any()}.


%% Example:
%% configuration() :: #{
%%   <<"ConfigurationVersion">> => string(),
%%   <<"Content">> => binary(),
%%   <<"ContentType">> => string()
%% }
-type configuration() :: #{binary() => any()}.


%% Example:
%% extension_association_summary() :: #{
%%   <<"ExtensionArn">> => string(),
%%   <<"Id">> => string(),
%%   <<"ResourceArn">> => string()
%% }
-type extension_association_summary() :: #{binary() => any()}.


%% Example:
%% hosted_configuration_versions() :: #{
%%   <<"Items">> => list(hosted_configuration_version_summary()),
%%   <<"NextToken">> => string()
%% }
-type hosted_configuration_versions() :: #{binary() => any()}.


%% Example:
%% applied_extension() :: #{
%%   <<"ExtensionAssociationId">> => string(),
%%   <<"ExtensionId">> => string(),
%%   <<"Parameters">> => map(),
%%   <<"VersionNumber">> => integer()
%% }
-type applied_extension() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% monitor() :: #{
%%   <<"AlarmArn">> => string(),
%%   <<"AlarmRoleArn">> => string()
%% }
-type monitor() :: #{binary() => any()}.


%% Example:
%% extension_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"VersionNumber">> => integer()
%% }
-type extension_summary() :: #{binary() => any()}.

%% Example:
%% delete_hosted_configuration_version_request() :: #{}
-type delete_hosted_configuration_version_request() :: #{}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceName">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% payload_too_large_exception() :: #{
%%   <<"Limit">> => float(),
%%   <<"Measure">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"Size">> => float()
%% }
-type payload_too_large_exception() :: #{binary() => any()}.


%% Example:
%% environment() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"Monitors">> => list(monitor()),
%%   <<"Name">> => string(),
%%   <<"State">> => list(any())
%% }
-type environment() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% get_deployment_request() :: #{}
-type get_deployment_request() :: #{}.


%% Example:
%% delete_configuration_profile_request() :: #{
%%   <<"DeletionProtectionCheck">> => list(any())
%% }
-type delete_configuration_profile_request() :: #{binary() => any()}.


%% Example:
%% application() :: #{
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string()
%% }
-type application() :: #{binary() => any()}.


%% Example:
%% update_extension_association_request() :: #{
%%   <<"Parameters">> => map()
%% }
-type update_extension_association_request() :: #{binary() => any()}.


%% Example:
%% parameter() :: #{
%%   <<"Description">> => string(),
%%   <<"Dynamic">> => boolean(),
%%   <<"Required">> => boolean()
%% }
-type parameter() :: #{binary() => any()}.


%% Example:
%% create_deployment_strategy_request() :: #{
%%   <<"DeploymentDurationInMinutes">> := integer(),
%%   <<"Description">> => string(),
%%   <<"FinalBakeTimeInMinutes">> => integer(),
%%   <<"GrowthFactor">> := float(),
%%   <<"GrowthType">> => list(any()),
%%   <<"Name">> := string(),
%%   <<"ReplicateTo">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type create_deployment_strategy_request() :: #{binary() => any()}.


%% Example:
%% configuration_profile() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"KmsKeyArn">> => string(),
%%   <<"KmsKeyIdentifier">> => string(),
%%   <<"LocationUri">> => string(),
%%   <<"Name">> => string(),
%%   <<"RetrievalRoleArn">> => string(),
%%   <<"Type">> => string(),
%%   <<"Validators">> => list(validator())
%% }
-type configuration_profile() :: #{binary() => any()}.


%% Example:
%% create_application_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_application_request() :: #{binary() => any()}.


%% Example:
%% list_environments_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_environments_request() :: #{binary() => any()}.


%% Example:
%% get_extension_request() :: #{
%%   <<"VersionNumber">> => integer()
%% }
-type get_extension_request() :: #{binary() => any()}.

%% Example:
%% get_hosted_configuration_version_request() :: #{}
-type get_hosted_configuration_version_request() :: #{}.


%% Example:
%% action_invocation() :: #{
%%   <<"ActionName">> => string(),
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"ExtensionIdentifier">> => string(),
%%   <<"InvocationId">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"Uri">> => string()
%% }
-type action_invocation() :: #{binary() => any()}.


%% Example:
%% update_account_settings_request() :: #{
%%   <<"DeletionProtection">> => deletion_protection_settings()
%% }
-type update_account_settings_request() :: #{binary() => any()}.


%% Example:
%% environments() :: #{
%%   <<"Items">> => list(environment()),
%%   <<"NextToken">> => string()
%% }
-type environments() :: #{binary() => any()}.

%% Example:
%% get_configuration_profile_request() :: #{}
-type get_configuration_profile_request() :: #{}.

%% Example:
%% get_deployment_strategy_request() :: #{}
-type get_deployment_strategy_request() :: #{}.


%% Example:
%% deployment_strategies() :: #{
%%   <<"Items">> => list(deployment_strategy()),
%%   <<"NextToken">> => string()
%% }
-type deployment_strategies() :: #{binary() => any()}.


%% Example:
%% hosted_configuration_version_summary() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"ConfigurationProfileId">> => string(),
%%   <<"ContentType">> => string(),
%%   <<"Description">> => string(),
%%   <<"KmsKeyArn">> => string(),
%%   <<"VersionLabel">> => string(),
%%   <<"VersionNumber">> => integer()
%% }
-type hosted_configuration_version_summary() :: #{binary() => any()}.


%% Example:
%% update_application_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> => string()
%% }
-type update_application_request() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_configuration_profiles_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Type">> => string()
%% }
-type list_configuration_profiles_request() :: #{binary() => any()}.


%% Example:
%% delete_environment_request() :: #{
%%   <<"DeletionProtectionCheck">> => list(any())
%% }
-type delete_environment_request() :: #{binary() => any()}.


%% Example:
%% create_extension_association_request() :: #{
%%   <<"ExtensionIdentifier">> := string(),
%%   <<"ExtensionVersionNumber">> => integer(),
%%   <<"Parameters">> => map(),
%%   <<"ResourceIdentifier">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_extension_association_request() :: #{binary() => any()}.


%% Example:
%% configuration_profiles() :: #{
%%   <<"Items">> => list(configuration_profile_summary()),
%%   <<"NextToken">> => string()
%% }
-type configuration_profiles() :: #{binary() => any()}.


%% Example:
%% action() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"Uri">> => string()
%% }
-type action() :: #{binary() => any()}.


%% Example:
%% list_applications_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_applications_request() :: #{binary() => any()}.


%% Example:
%% extensions() :: #{
%%   <<"Items">> => list(extension_summary()),
%%   <<"NextToken">> => string()
%% }
-type extensions() :: #{binary() => any()}.


%% Example:
%% account_settings() :: #{
%%   <<"DeletionProtection">> => deletion_protection_settings()
%% }
-type account_settings() :: #{binary() => any()}.


%% Example:
%% create_configuration_profile_request() :: #{
%%   <<"Description">> => string(),
%%   <<"KmsKeyIdentifier">> => string(),
%%   <<"LocationUri">> := string(),
%%   <<"Name">> := string(),
%%   <<"RetrievalRoleArn">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Type">> => string(),
%%   <<"Validators">> => list(validator())
%% }
-type create_configuration_profile_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% list_extension_associations_request() :: #{
%%   <<"ExtensionIdentifier">> => string(),
%%   <<"ExtensionVersionNumber">> => integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceIdentifier">> => string()
%% }
-type list_extension_associations_request() :: #{binary() => any()}.

%% Example:
%% get_extension_association_request() :: #{}
-type get_extension_association_request() :: #{}.


%% Example:
%% create_extension_request() :: #{
%%   <<"Actions">> := map(),
%%   <<"Description">> => string(),
%%   <<"LatestVersionNumber">> => integer(),
%%   <<"Name">> := string(),
%%   <<"Parameters">> => map(),
%%   <<"Tags">> => map()
%% }
-type create_extension_request() :: #{binary() => any()}.


%% Example:
%% list_deployment_strategies_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_deployment_strategies_request() :: #{binary() => any()}.

%% Example:
%% delete_extension_association_request() :: #{}
-type delete_extension_association_request() :: #{}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"Details">> => list(),
%%   <<"Message">> => string(),
%%   <<"Reason">> => list(any())
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% hosted_configuration_version() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"ConfigurationProfileId">> => string(),
%%   <<"Content">> => binary(),
%%   <<"ContentType">> => string(),
%%   <<"Description">> => string(),
%%   <<"KmsKeyArn">> => string(),
%%   <<"VersionLabel">> => string(),
%%   <<"VersionNumber">> => integer()
%% }
-type hosted_configuration_version() :: #{binary() => any()}.


%% Example:
%% validator() :: #{
%%   <<"Content">> => string(),
%%   <<"Type">> => list(any())
%% }
-type validator() :: #{binary() => any()}.


%% Example:
%% update_extension_request() :: #{
%%   <<"Actions">> => map(),
%%   <<"Description">> => string(),
%%   <<"Parameters">> => map(),
%%   <<"VersionNumber">> => integer()
%% }
-type update_extension_request() :: #{binary() => any()}.


%% Example:
%% create_environment_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Monitors">> => list(monitor()),
%%   <<"Name">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_environment_request() :: #{binary() => any()}.


%% Example:
%% deployment_event() :: #{
%%   <<"ActionInvocations">> => list(action_invocation()),
%%   <<"Description">> => string(),
%%   <<"EventType">> => list(any()),
%%   <<"OccurredAt">> => non_neg_integer(),
%%   <<"TriggeredBy">> => list(any())
%% }
-type deployment_event() :: #{binary() => any()}.


%% Example:
%% update_environment_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Monitors">> => list(monitor()),
%%   <<"Name">> => string()
%% }
-type update_environment_request() :: #{binary() => any()}.


%% Example:
%% delete_extension_request() :: #{
%%   <<"VersionNumber">> => integer()
%% }
-type delete_extension_request() :: #{binary() => any()}.


%% Example:
%% configuration_profile_summary() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"Id">> => string(),
%%   <<"LocationUri">> => string(),
%%   <<"Name">> => string(),
%%   <<"Type">> => string(),
%%   <<"ValidatorTypes">> => list(list(any())())
%% }
-type configuration_profile_summary() :: #{binary() => any()}.


%% Example:
%% deployments() :: #{
%%   <<"Items">> => list(deployment_summary()),
%%   <<"NextToken">> => string()
%% }
-type deployments() :: #{binary() => any()}.

%% Example:
%% get_application_request() :: #{}
-type get_application_request() :: #{}.


%% Example:
%% start_deployment_request() :: #{
%%   <<"ConfigurationProfileId">> := string(),
%%   <<"ConfigurationVersion">> := string(),
%%   <<"DeploymentStrategyId">> := string(),
%%   <<"Description">> => string(),
%%   <<"DynamicExtensionParameters">> => map(),
%%   <<"KmsKeyIdentifier">> => string(),
%%   <<"Tags">> => map()
%% }
-type start_deployment_request() :: #{binary() => any()}.


%% Example:
%% list_hosted_configuration_versions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"VersionLabel">> => string()
%% }
-type list_hosted_configuration_versions_request() :: #{binary() => any()}.


%% Example:
%% extension_association() :: #{
%%   <<"Arn">> => string(),
%%   <<"ExtensionArn">> => string(),
%%   <<"ExtensionVersionNumber">> => integer(),
%%   <<"Id">> => string(),
%%   <<"Parameters">> => map(),
%%   <<"ResourceArn">> => string()
%% }
-type extension_association() :: #{binary() => any()}.

%% Example:
%% delete_application_request() :: #{}
-type delete_application_request() :: #{}.

-type create_application_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type create_configuration_profile_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type create_deployment_strategy_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type create_environment_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type create_extension_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_extension_association_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type create_hosted_configuration_version_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    payload_too_large_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_application_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_configuration_profile_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_deployment_strategy_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_environment_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_extension_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_extension_association_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_hosted_configuration_version_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_account_settings_errors() ::
    bad_request_exception() | 
    internal_server_exception().

-type get_application_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_configuration_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_configuration_profile_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_deployment_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_deployment_strategy_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_environment_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_extension_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_extension_association_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_hosted_configuration_version_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_applications_errors() ::
    bad_request_exception() | 
    internal_server_exception().

-type list_configuration_profiles_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_deployment_strategies_errors() ::
    bad_request_exception() | 
    internal_server_exception().

-type list_deployments_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_environments_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_extension_associations_errors() ::
    bad_request_exception() | 
    internal_server_exception().

-type list_extensions_errors() ::
    bad_request_exception() | 
    internal_server_exception().

-type list_hosted_configuration_versions_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type start_deployment_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_deployment_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_account_settings_errors() ::
    bad_request_exception() | 
    internal_server_exception().

-type update_application_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_configuration_profile_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_deployment_strategy_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_environment_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_extension_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_extension_association_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type validate_configuration_errors() ::
    bad_request_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an application.
%%
%% In AppConfig, an application is simply an
%% organizational construct like a folder. This organizational construct has
%% a relationship
%% with some unit of executable code. For example, you could create an
%% application called
%% MyMobileApp to organize and manage configuration data for a mobile
%% application installed by
%% your users.
-spec create_application(aws_client:aws_client(), create_application_request()) ->
    {ok, application(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, Input) ->
    create_application(Client, Input, []).

-spec create_application(aws_client:aws_client(), create_application_request(), proplists:proplist()) ->
    {ok, application(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/applications"],
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

%% @doc Creates a configuration profile, which is information that enables
%% AppConfig
%% to access the configuration source.
%%
%% Valid configuration sources include the
%% following:
%%
%% Configuration data in YAML, JSON, and other formats stored in the
%% AppConfig hosted configuration store
%%
%% Configuration data stored as objects in an Amazon Simple Storage Service
%% (Amazon S3)
%% bucket
%%
%% Pipelines stored in CodePipeline
%%
%% Secrets stored in Secrets Manager
%%
%% Standard and secure string parameters stored in Amazon Web Services
%% Systems Manager Parameter Store
%%
%% Configuration data in SSM documents stored in the Systems Manager document
%% store
%%
%% A configuration profile includes the following information:
%%
%% The URI location of the configuration data.
%%
%% The Identity and Access Management (IAM) role that provides access to the
%% configuration data.
%%
%% A validator for the configuration data. Available validators include
%% either a JSON
%% Schema or an Amazon Web Services Lambda function.
%%
%% For more information, see Create a
%% Configuration and a Configuration Profile:
%% http://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-creating-configuration-and-profile.html
%% in the AppConfig
%% User Guide.
-spec create_configuration_profile(aws_client:aws_client(), binary() | list(), create_configuration_profile_request()) ->
    {ok, configuration_profile(), tuple()} |
    {error, any()} |
    {error, create_configuration_profile_errors(), tuple()}.
create_configuration_profile(Client, ApplicationId, Input) ->
    create_configuration_profile(Client, ApplicationId, Input, []).

-spec create_configuration_profile(aws_client:aws_client(), binary() | list(), create_configuration_profile_request(), proplists:proplist()) ->
    {ok, configuration_profile(), tuple()} |
    {error, any()} |
    {error, create_configuration_profile_errors(), tuple()}.
create_configuration_profile(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/configurationprofiles"],
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

%% @doc Creates a deployment strategy that defines important criteria for
%% rolling out your
%% configuration to the designated targets.
%%
%% A deployment strategy includes the overall
%% duration required, a percentage of targets to receive the deployment
%% during each interval,
%% an algorithm that defines how percentage grows, and bake time.
-spec create_deployment_strategy(aws_client:aws_client(), create_deployment_strategy_request()) ->
    {ok, deployment_strategy(), tuple()} |
    {error, any()} |
    {error, create_deployment_strategy_errors(), tuple()}.
create_deployment_strategy(Client, Input) ->
    create_deployment_strategy(Client, Input, []).

-spec create_deployment_strategy(aws_client:aws_client(), create_deployment_strategy_request(), proplists:proplist()) ->
    {ok, deployment_strategy(), tuple()} |
    {error, any()} |
    {error, create_deployment_strategy_errors(), tuple()}.
create_deployment_strategy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deploymentstrategies"],
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

%% @doc Creates an environment.
%%
%% For each application, you define one or more environments. An
%% environment is a deployment group of AppConfig targets, such as
%% applications in a
%% `Beta' or `Production' environment. You can also define
%% environments for application subcomponents such as the `Web',
%% `Mobile' and `Back-end' components for your application. You can
%% configure Amazon CloudWatch alarms for each environment. The system
%% monitors alarms during a
%% configuration deployment. If an alarm is triggered, the system rolls back
%% the
%% configuration.
-spec create_environment(aws_client:aws_client(), binary() | list(), create_environment_request()) ->
    {ok, environment(), tuple()} |
    {error, any()} |
    {error, create_environment_errors(), tuple()}.
create_environment(Client, ApplicationId, Input) ->
    create_environment(Client, ApplicationId, Input, []).

-spec create_environment(aws_client:aws_client(), binary() | list(), create_environment_request(), proplists:proplist()) ->
    {ok, environment(), tuple()} |
    {error, any()} |
    {error, create_environment_errors(), tuple()}.
create_environment(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/environments"],
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

%% @doc Creates an AppConfig extension.
%%
%% An extension augments your ability to inject
%% logic or behavior at different points during the AppConfig workflow of
%% creating
%% or deploying a configuration.
%%
%% You can create your own extensions or use the Amazon Web Services authored
%% extensions provided by
%% AppConfig. For an AppConfig extension that uses Lambda, you must create a
%% Lambda function to perform any computation and processing
%% defined in the extension. If you plan to create custom versions of the
%% Amazon Web Services
%% authored notification extensions, you only need to specify an Amazon
%% Resource Name (ARN) in
%% the `Uri' field for the new extension version.
%%
%% For a custom EventBridge notification extension, enter the ARN of the
%% EventBridge
%% default events in the `Uri' field.
%%
%% For a custom Amazon SNS notification extension, enter the ARN of an Amazon
%% SNS
%% topic in the `Uri' field.
%%
%% For a custom Amazon SQS notification extension, enter the ARN of an Amazon
%% SQS
%% message queue in the `Uri' field.
%%
%% For more information about extensions, see Extending
%% workflows:
%% https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html
%% in the AppConfig User Guide.
-spec create_extension(aws_client:aws_client(), create_extension_request()) ->
    {ok, extension(), tuple()} |
    {error, any()} |
    {error, create_extension_errors(), tuple()}.
create_extension(Client, Input) ->
    create_extension(Client, Input, []).

-spec create_extension(aws_client:aws_client(), create_extension_request(), proplists:proplist()) ->
    {ok, extension(), tuple()} |
    {error, any()} |
    {error, create_extension_errors(), tuple()}.
create_extension(Client, Input0, Options0) ->
    Method = post,
    Path = ["/extensions"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Latest-Version-Number">>, <<"LatestVersionNumber">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc When you create an extension or configure an Amazon Web Services
%% authored extension, you
%% associate the extension with an AppConfig application, environment, or
%% configuration profile.
%%
%% For example, you can choose to run the
%% ```
%% AppConfig deployment events to Amazon SNS'''
%% Amazon Web Services authored extension and receive notifications on an
%% Amazon SNS
%% topic anytime a configuration deployment is started for a specific
%% application. Defining
%% which extension to associate with an AppConfig resource is called an
%% extension association. An extension association is a specified
%% relationship between an extension and an AppConfig resource, such as an
%% application or a configuration profile. For more information about
%% extensions and
%% associations, see Extending
%% workflows:
%% https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html
%% in the AppConfig User Guide.
-spec create_extension_association(aws_client:aws_client(), create_extension_association_request()) ->
    {ok, extension_association(), tuple()} |
    {error, any()} |
    {error, create_extension_association_errors(), tuple()}.
create_extension_association(Client, Input) ->
    create_extension_association(Client, Input, []).

-spec create_extension_association(aws_client:aws_client(), create_extension_association_request(), proplists:proplist()) ->
    {ok, extension_association(), tuple()} |
    {error, any()} |
    {error, create_extension_association_errors(), tuple()}.
create_extension_association(Client, Input0, Options0) ->
    Method = post,
    Path = ["/extensionassociations"],
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

%% @doc Creates a new configuration in the AppConfig hosted configuration
%% store.
%%
%% If
%% you're creating a feature flag, we recommend you familiarize yourself
%% with the JSON schema
%% for feature flag data. For more information, see Type reference for
%% AWS.AppConfig.FeatureFlags:
%% https://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-creating-configuration-and-profile-feature-flags.html#appconfig-type-reference-feature-flags
%% in the
%% AppConfig User Guide.
-spec create_hosted_configuration_version(aws_client:aws_client(), binary() | list(), binary() | list(), create_hosted_configuration_version_request()) ->
    {ok, hosted_configuration_version(), tuple()} |
    {error, any()} |
    {error, create_hosted_configuration_version_errors(), tuple()}.
create_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, Input) ->
    create_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, Input, []).

-spec create_hosted_configuration_version(aws_client:aws_client(), binary() | list(), binary() | list(), create_hosted_configuration_version_request(), proplists:proplist()) ->
    {ok, hosted_configuration_version(), tuple()} |
    {error, any()} |
    {error, create_hosted_configuration_version_errors(), tuple()}.
create_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/configurationprofiles/", aws_util:encode_uri(ConfigurationProfileId), "/hostedconfigurationversions"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Content-Type">>, <<"ContentType">>},
                       {<<"Description">>, <<"Description">>},
                       {<<"Latest-Version-Number">>, <<"LatestVersionNumber">>},
                       {<<"VersionLabel">>, <<"VersionLabel">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Application-Id">>, <<"ApplicationId">>},
            {<<"Configuration-Profile-Id">>, <<"ConfigurationProfileId">>},
            {<<"Content-Type">>, <<"ContentType">>},
            {<<"Description">>, <<"Description">>},
            {<<"KmsKeyArn">>, <<"KmsKeyArn">>},
            {<<"VersionLabel">>, <<"VersionLabel">>},
            {<<"Version-Number">>, <<"VersionNumber">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Deletes an application.
-spec delete_application(aws_client:aws_client(), binary() | list(), delete_application_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, ApplicationId, Input) ->
    delete_application(Client, ApplicationId, Input, []).

-spec delete_application(aws_client:aws_client(), binary() | list(), delete_application_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
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

%% @doc Deletes a configuration profile.
%%
%% To prevent users from unintentionally deleting actively-used configuration
%% profiles,
%% enable deletion
%% protection:
%% https://docs.aws.amazon.com/appconfig/latest/userguide/deletion-protection.html.
-spec delete_configuration_profile(aws_client:aws_client(), binary() | list(), binary() | list(), delete_configuration_profile_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_configuration_profile_errors(), tuple()}.
delete_configuration_profile(Client, ApplicationId, ConfigurationProfileId, Input) ->
    delete_configuration_profile(Client, ApplicationId, ConfigurationProfileId, Input, []).

-spec delete_configuration_profile(aws_client:aws_client(), binary() | list(), binary() | list(), delete_configuration_profile_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_configuration_profile_errors(), tuple()}.
delete_configuration_profile(Client, ApplicationId, ConfigurationProfileId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/configurationprofiles/", aws_util:encode_uri(ConfigurationProfileId), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amzn-deletion-protection-check">>, <<"DeletionProtectionCheck">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a deployment strategy.
-spec delete_deployment_strategy(aws_client:aws_client(), binary() | list(), delete_deployment_strategy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_deployment_strategy_errors(), tuple()}.
delete_deployment_strategy(Client, DeploymentStrategyId, Input) ->
    delete_deployment_strategy(Client, DeploymentStrategyId, Input, []).

-spec delete_deployment_strategy(aws_client:aws_client(), binary() | list(), delete_deployment_strategy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_deployment_strategy_errors(), tuple()}.
delete_deployment_strategy(Client, DeploymentStrategyId, Input0, Options0) ->
    Method = delete,
    Path = ["/deployementstrategies/", aws_util:encode_uri(DeploymentStrategyId), ""],
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

%% @doc Deletes an environment.
%%
%% To prevent users from unintentionally deleting actively-used environments,
%% enable deletion
%% protection:
%% https://docs.aws.amazon.com/appconfig/latest/userguide/deletion-protection.html.
-spec delete_environment(aws_client:aws_client(), binary() | list(), binary() | list(), delete_environment_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_environment_errors(), tuple()}.
delete_environment(Client, ApplicationId, EnvironmentId, Input) ->
    delete_environment(Client, ApplicationId, EnvironmentId, Input, []).

-spec delete_environment(aws_client:aws_client(), binary() | list(), binary() | list(), delete_environment_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_environment_errors(), tuple()}.
delete_environment(Client, ApplicationId, EnvironmentId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/environments/", aws_util:encode_uri(EnvironmentId), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amzn-deletion-protection-check">>, <<"DeletionProtectionCheck">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an AppConfig extension.
%%
%% You must delete all associations to an
%% extension before you delete the extension.
-spec delete_extension(aws_client:aws_client(), binary() | list(), delete_extension_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_extension_errors(), tuple()}.
delete_extension(Client, ExtensionIdentifier, Input) ->
    delete_extension(Client, ExtensionIdentifier, Input, []).

-spec delete_extension(aws_client:aws_client(), binary() | list(), delete_extension_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_extension_errors(), tuple()}.
delete_extension(Client, ExtensionIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/extensions/", aws_util:encode_uri(ExtensionIdentifier), ""],
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
                     {<<"version">>, <<"VersionNumber">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an extension association.
%%
%% This action doesn't delete extensions defined in the
%% association.
-spec delete_extension_association(aws_client:aws_client(), binary() | list(), delete_extension_association_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_extension_association_errors(), tuple()}.
delete_extension_association(Client, ExtensionAssociationId, Input) ->
    delete_extension_association(Client, ExtensionAssociationId, Input, []).

-spec delete_extension_association(aws_client:aws_client(), binary() | list(), delete_extension_association_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_extension_association_errors(), tuple()}.
delete_extension_association(Client, ExtensionAssociationId, Input0, Options0) ->
    Method = delete,
    Path = ["/extensionassociations/", aws_util:encode_uri(ExtensionAssociationId), ""],
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

%% @doc Deletes a version of a configuration from the AppConfig hosted
%% configuration
%% store.
-spec delete_hosted_configuration_version(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_hosted_configuration_version_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_hosted_configuration_version_errors(), tuple()}.
delete_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, VersionNumber, Input) ->
    delete_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, VersionNumber, Input, []).

-spec delete_hosted_configuration_version(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_hosted_configuration_version_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_hosted_configuration_version_errors(), tuple()}.
delete_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, VersionNumber, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/configurationprofiles/", aws_util:encode_uri(ConfigurationProfileId), "/hostedconfigurationversions/", aws_util:encode_uri(VersionNumber), ""],
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

%% @doc Returns information about the status of the `DeletionProtection'
%% parameter.
-spec get_account_settings(aws_client:aws_client()) ->
    {ok, account_settings(), tuple()} |
    {error, any()} |
    {error, get_account_settings_errors(), tuple()}.
get_account_settings(Client)
  when is_map(Client) ->
    get_account_settings(Client, #{}, #{}).

-spec get_account_settings(aws_client:aws_client(), map(), map()) ->
    {ok, account_settings(), tuple()} |
    {error, any()} |
    {error, get_account_settings_errors(), tuple()}.
get_account_settings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_account_settings(Client, QueryMap, HeadersMap, []).

-spec get_account_settings(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, account_settings(), tuple()} |
    {error, any()} |
    {error, get_account_settings_errors(), tuple()}.
get_account_settings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/settings"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an application.
-spec get_application(aws_client:aws_client(), binary() | list()) ->
    {ok, application(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, ApplicationId)
  when is_map(Client) ->
    get_application(Client, ApplicationId, #{}, #{}).

-spec get_application(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, application(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_application(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec get_application(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, application(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc (Deprecated) Retrieves the latest deployed configuration.
%%
%% Note the following important information.
%%
%% This API action is deprecated. Calls to receive configuration data should
%% use
%% the StartConfigurationSession:
%% https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_StartConfigurationSession.html
%% and GetLatestConfiguration:
%% https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_GetLatestConfiguration.html
%% APIs instead.
%%
%% `GetConfiguration' is a priced call. For more information, see
%% Pricing: https://aws.amazon.com/systems-manager/pricing/.
-spec get_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, configuration(), tuple()} |
    {error, any()} |
    {error, get_configuration_errors(), tuple()}.
get_configuration(Client, Application, Configuration, Environment, ClientId)
  when is_map(Client) ->
    get_configuration(Client, Application, Configuration, Environment, ClientId, #{}, #{}).

-spec get_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, configuration(), tuple()} |
    {error, any()} |
    {error, get_configuration_errors(), tuple()}.
get_configuration(Client, Application, Configuration, Environment, ClientId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_configuration(Client, Application, Configuration, Environment, ClientId, QueryMap, HeadersMap, []).

-spec get_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, configuration(), tuple()} |
    {error, any()} |
    {error, get_configuration_errors(), tuple()}.
get_configuration(Client, Application, Configuration, Environment, ClientId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(Application), "/environments/", aws_util:encode_uri(Environment), "/configurations/", aws_util:encode_uri(Configuration), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"client_configuration_version">>, maps:get(<<"client_configuration_version">>, QueryMap, undefined)},
        {<<"client_id">>, ClientId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Configuration-Version">>, <<"ConfigurationVersion">>},
            {<<"Content-Type">>, <<"ContentType">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Retrieves information about a configuration profile.
-spec get_configuration_profile(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, configuration_profile(), tuple()} |
    {error, any()} |
    {error, get_configuration_profile_errors(), tuple()}.
get_configuration_profile(Client, ApplicationId, ConfigurationProfileId)
  when is_map(Client) ->
    get_configuration_profile(Client, ApplicationId, ConfigurationProfileId, #{}, #{}).

-spec get_configuration_profile(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, configuration_profile(), tuple()} |
    {error, any()} |
    {error, get_configuration_profile_errors(), tuple()}.
get_configuration_profile(Client, ApplicationId, ConfigurationProfileId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_configuration_profile(Client, ApplicationId, ConfigurationProfileId, QueryMap, HeadersMap, []).

-spec get_configuration_profile(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, configuration_profile(), tuple()} |
    {error, any()} |
    {error, get_configuration_profile_errors(), tuple()}.
get_configuration_profile(Client, ApplicationId, ConfigurationProfileId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/configurationprofiles/", aws_util:encode_uri(ConfigurationProfileId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a configuration deployment.
-spec get_deployment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, deployment(), tuple()} |
    {error, any()} |
    {error, get_deployment_errors(), tuple()}.
get_deployment(Client, ApplicationId, DeploymentNumber, EnvironmentId)
  when is_map(Client) ->
    get_deployment(Client, ApplicationId, DeploymentNumber, EnvironmentId, #{}, #{}).

-spec get_deployment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, deployment(), tuple()} |
    {error, any()} |
    {error, get_deployment_errors(), tuple()}.
get_deployment(Client, ApplicationId, DeploymentNumber, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_deployment(Client, ApplicationId, DeploymentNumber, EnvironmentId, QueryMap, HeadersMap, []).

-spec get_deployment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, deployment(), tuple()} |
    {error, any()} |
    {error, get_deployment_errors(), tuple()}.
get_deployment(Client, ApplicationId, DeploymentNumber, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/environments/", aws_util:encode_uri(EnvironmentId), "/deployments/", aws_util:encode_uri(DeploymentNumber), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a deployment strategy.
%%
%% A deployment strategy defines
%% important criteria for rolling out your configuration to the designated
%% targets. A
%% deployment strategy includes the overall duration required, a percentage
%% of targets to
%% receive the deployment during each interval, an algorithm that defines how
%% percentage
%% grows, and bake time.
-spec get_deployment_strategy(aws_client:aws_client(), binary() | list()) ->
    {ok, deployment_strategy(), tuple()} |
    {error, any()} |
    {error, get_deployment_strategy_errors(), tuple()}.
get_deployment_strategy(Client, DeploymentStrategyId)
  when is_map(Client) ->
    get_deployment_strategy(Client, DeploymentStrategyId, #{}, #{}).

-spec get_deployment_strategy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, deployment_strategy(), tuple()} |
    {error, any()} |
    {error, get_deployment_strategy_errors(), tuple()}.
get_deployment_strategy(Client, DeploymentStrategyId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_deployment_strategy(Client, DeploymentStrategyId, QueryMap, HeadersMap, []).

-spec get_deployment_strategy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, deployment_strategy(), tuple()} |
    {error, any()} |
    {error, get_deployment_strategy_errors(), tuple()}.
get_deployment_strategy(Client, DeploymentStrategyId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/deploymentstrategies/", aws_util:encode_uri(DeploymentStrategyId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an environment.
%%
%% An environment is a deployment group of
%% AppConfig applications, such as applications in a `Production'
%% environment or in an `EU_Region' environment. Each configuration
%% deployment
%% targets an environment. You can enable one or more Amazon CloudWatch
%% alarms for an environment. If
%% an alarm is triggered during a deployment, AppConfig roles back the
%% configuration.
-spec get_environment(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, environment(), tuple()} |
    {error, any()} |
    {error, get_environment_errors(), tuple()}.
get_environment(Client, ApplicationId, EnvironmentId)
  when is_map(Client) ->
    get_environment(Client, ApplicationId, EnvironmentId, #{}, #{}).

-spec get_environment(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, environment(), tuple()} |
    {error, any()} |
    {error, get_environment_errors(), tuple()}.
get_environment(Client, ApplicationId, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_environment(Client, ApplicationId, EnvironmentId, QueryMap, HeadersMap, []).

-spec get_environment(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, environment(), tuple()} |
    {error, any()} |
    {error, get_environment_errors(), tuple()}.
get_environment(Client, ApplicationId, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/environments/", aws_util:encode_uri(EnvironmentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about an AppConfig extension.
-spec get_extension(aws_client:aws_client(), binary() | list()) ->
    {ok, extension(), tuple()} |
    {error, any()} |
    {error, get_extension_errors(), tuple()}.
get_extension(Client, ExtensionIdentifier)
  when is_map(Client) ->
    get_extension(Client, ExtensionIdentifier, #{}, #{}).

-spec get_extension(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, extension(), tuple()} |
    {error, any()} |
    {error, get_extension_errors(), tuple()}.
get_extension(Client, ExtensionIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_extension(Client, ExtensionIdentifier, QueryMap, HeadersMap, []).

-spec get_extension(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, extension(), tuple()} |
    {error, any()} |
    {error, get_extension_errors(), tuple()}.
get_extension(Client, ExtensionIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/extensions/", aws_util:encode_uri(ExtensionIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"version_number">>, maps:get(<<"version_number">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about an AppConfig extension association.
%%
%% For more
%% information about extensions and associations, see Extending
%% workflows:
%% https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html
%% in the AppConfig User Guide.
-spec get_extension_association(aws_client:aws_client(), binary() | list()) ->
    {ok, extension_association(), tuple()} |
    {error, any()} |
    {error, get_extension_association_errors(), tuple()}.
get_extension_association(Client, ExtensionAssociationId)
  when is_map(Client) ->
    get_extension_association(Client, ExtensionAssociationId, #{}, #{}).

-spec get_extension_association(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, extension_association(), tuple()} |
    {error, any()} |
    {error, get_extension_association_errors(), tuple()}.
get_extension_association(Client, ExtensionAssociationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_extension_association(Client, ExtensionAssociationId, QueryMap, HeadersMap, []).

-spec get_extension_association(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, extension_association(), tuple()} |
    {error, any()} |
    {error, get_extension_association_errors(), tuple()}.
get_extension_association(Client, ExtensionAssociationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/extensionassociations/", aws_util:encode_uri(ExtensionAssociationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a specific configuration version.
-spec get_hosted_configuration_version(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, hosted_configuration_version(), tuple()} |
    {error, any()} |
    {error, get_hosted_configuration_version_errors(), tuple()}.
get_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, VersionNumber)
  when is_map(Client) ->
    get_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, VersionNumber, #{}, #{}).

-spec get_hosted_configuration_version(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, hosted_configuration_version(), tuple()} |
    {error, any()} |
    {error, get_hosted_configuration_version_errors(), tuple()}.
get_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, VersionNumber, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, VersionNumber, QueryMap, HeadersMap, []).

-spec get_hosted_configuration_version(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, hosted_configuration_version(), tuple()} |
    {error, any()} |
    {error, get_hosted_configuration_version_errors(), tuple()}.
get_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, VersionNumber, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/configurationprofiles/", aws_util:encode_uri(ConfigurationProfileId), "/hostedconfigurationversions/", aws_util:encode_uri(VersionNumber), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Application-Id">>, <<"ApplicationId">>},
            {<<"Configuration-Profile-Id">>, <<"ConfigurationProfileId">>},
            {<<"Content-Type">>, <<"ContentType">>},
            {<<"Description">>, <<"Description">>},
            {<<"KmsKeyArn">>, <<"KmsKeyArn">>},
            {<<"VersionLabel">>, <<"VersionLabel">>},
            {<<"Version-Number">>, <<"VersionNumber">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Lists all applications in your Amazon Web Services account.
-spec list_applications(aws_client:aws_client()) ->
    {ok, applications(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client)
  when is_map(Client) ->
    list_applications(Client, #{}, #{}).

-spec list_applications(aws_client:aws_client(), map(), map()) ->
    {ok, applications(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_applications(Client, QueryMap, HeadersMap, []).

-spec list_applications(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, applications(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the configuration profiles for an application.
-spec list_configuration_profiles(aws_client:aws_client(), binary() | list()) ->
    {ok, configuration_profiles(), tuple()} |
    {error, any()} |
    {error, list_configuration_profiles_errors(), tuple()}.
list_configuration_profiles(Client, ApplicationId)
  when is_map(Client) ->
    list_configuration_profiles(Client, ApplicationId, #{}, #{}).

-spec list_configuration_profiles(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, configuration_profiles(), tuple()} |
    {error, any()} |
    {error, list_configuration_profiles_errors(), tuple()}.
list_configuration_profiles(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_configuration_profiles(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec list_configuration_profiles(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, configuration_profiles(), tuple()} |
    {error, any()} |
    {error, list_configuration_profiles_errors(), tuple()}.
list_configuration_profiles(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/configurationprofiles"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)},
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists deployment strategies.
-spec list_deployment_strategies(aws_client:aws_client()) ->
    {ok, deployment_strategies(), tuple()} |
    {error, any()} |
    {error, list_deployment_strategies_errors(), tuple()}.
list_deployment_strategies(Client)
  when is_map(Client) ->
    list_deployment_strategies(Client, #{}, #{}).

-spec list_deployment_strategies(aws_client:aws_client(), map(), map()) ->
    {ok, deployment_strategies(), tuple()} |
    {error, any()} |
    {error, list_deployment_strategies_errors(), tuple()}.
list_deployment_strategies(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_deployment_strategies(Client, QueryMap, HeadersMap, []).

-spec list_deployment_strategies(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, deployment_strategies(), tuple()} |
    {error, any()} |
    {error, list_deployment_strategies_errors(), tuple()}.
list_deployment_strategies(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/deploymentstrategies"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the deployments for an environment in descending deployment
%% number order.
-spec list_deployments(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, deployments(), tuple()} |
    {error, any()} |
    {error, list_deployments_errors(), tuple()}.
list_deployments(Client, ApplicationId, EnvironmentId)
  when is_map(Client) ->
    list_deployments(Client, ApplicationId, EnvironmentId, #{}, #{}).

-spec list_deployments(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, deployments(), tuple()} |
    {error, any()} |
    {error, list_deployments_errors(), tuple()}.
list_deployments(Client, ApplicationId, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_deployments(Client, ApplicationId, EnvironmentId, QueryMap, HeadersMap, []).

-spec list_deployments(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, deployments(), tuple()} |
    {error, any()} |
    {error, list_deployments_errors(), tuple()}.
list_deployments(Client, ApplicationId, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/environments/", aws_util:encode_uri(EnvironmentId), "/deployments"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the environments for an application.
-spec list_environments(aws_client:aws_client(), binary() | list()) ->
    {ok, environments(), tuple()} |
    {error, any()} |
    {error, list_environments_errors(), tuple()}.
list_environments(Client, ApplicationId)
  when is_map(Client) ->
    list_environments(Client, ApplicationId, #{}, #{}).

-spec list_environments(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, environments(), tuple()} |
    {error, any()} |
    {error, list_environments_errors(), tuple()}.
list_environments(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_environments(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec list_environments(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, environments(), tuple()} |
    {error, any()} |
    {error, list_environments_errors(), tuple()}.
list_environments(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/environments"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all AppConfig extension associations in the account.
%%
%% For more
%% information about extensions and associations, see Extending
%% workflows:
%% https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html
%% in the AppConfig User Guide.
-spec list_extension_associations(aws_client:aws_client()) ->
    {ok, extension_associations(), tuple()} |
    {error, any()} |
    {error, list_extension_associations_errors(), tuple()}.
list_extension_associations(Client)
  when is_map(Client) ->
    list_extension_associations(Client, #{}, #{}).

-spec list_extension_associations(aws_client:aws_client(), map(), map()) ->
    {ok, extension_associations(), tuple()} |
    {error, any()} |
    {error, list_extension_associations_errors(), tuple()}.
list_extension_associations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_extension_associations(Client, QueryMap, HeadersMap, []).

-spec list_extension_associations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, extension_associations(), tuple()} |
    {error, any()} |
    {error, list_extension_associations_errors(), tuple()}.
list_extension_associations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/extensionassociations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"extension_identifier">>, maps:get(<<"extension_identifier">>, QueryMap, undefined)},
        {<<"extension_version_number">>, maps:get(<<"extension_version_number">>, QueryMap, undefined)},
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)},
        {<<"resource_identifier">>, maps:get(<<"resource_identifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all custom and Amazon Web Services authored AppConfig
%% extensions in the
%% account.
%%
%% For more information about extensions, see Extending
%% workflows:
%% https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html
%% in the AppConfig User Guide.
-spec list_extensions(aws_client:aws_client()) ->
    {ok, extensions(), tuple()} |
    {error, any()} |
    {error, list_extensions_errors(), tuple()}.
list_extensions(Client)
  when is_map(Client) ->
    list_extensions(Client, #{}, #{}).

-spec list_extensions(aws_client:aws_client(), map(), map()) ->
    {ok, extensions(), tuple()} |
    {error, any()} |
    {error, list_extensions_errors(), tuple()}.
list_extensions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_extensions(Client, QueryMap, HeadersMap, []).

-spec list_extensions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, extensions(), tuple()} |
    {error, any()} |
    {error, list_extensions_errors(), tuple()}.
list_extensions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/extensions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists configurations stored in the AppConfig hosted configuration
%% store by
%% version.
-spec list_hosted_configuration_versions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, hosted_configuration_versions(), tuple()} |
    {error, any()} |
    {error, list_hosted_configuration_versions_errors(), tuple()}.
list_hosted_configuration_versions(Client, ApplicationId, ConfigurationProfileId)
  when is_map(Client) ->
    list_hosted_configuration_versions(Client, ApplicationId, ConfigurationProfileId, #{}, #{}).

-spec list_hosted_configuration_versions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, hosted_configuration_versions(), tuple()} |
    {error, any()} |
    {error, list_hosted_configuration_versions_errors(), tuple()}.
list_hosted_configuration_versions(Client, ApplicationId, ConfigurationProfileId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_hosted_configuration_versions(Client, ApplicationId, ConfigurationProfileId, QueryMap, HeadersMap, []).

-spec list_hosted_configuration_versions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, hosted_configuration_versions(), tuple()} |
    {error, any()} |
    {error, list_hosted_configuration_versions_errors(), tuple()}.
list_hosted_configuration_versions(Client, ApplicationId, ConfigurationProfileId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/configurationprofiles/", aws_util:encode_uri(ConfigurationProfileId), "/hostedconfigurationversions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)},
        {<<"version_label">>, maps:get(<<"version_label">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the list of key-value tags assigned to the resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, resource_tags(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, resource_tags(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, resource_tags(), tuple()} |
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

%% @doc Starts a deployment.
-spec start_deployment(aws_client:aws_client(), binary() | list(), binary() | list(), start_deployment_request()) ->
    {ok, deployment(), tuple()} |
    {error, any()} |
    {error, start_deployment_errors(), tuple()}.
start_deployment(Client, ApplicationId, EnvironmentId, Input) ->
    start_deployment(Client, ApplicationId, EnvironmentId, Input, []).

-spec start_deployment(aws_client:aws_client(), binary() | list(), binary() | list(), start_deployment_request(), proplists:proplist()) ->
    {ok, deployment(), tuple()} |
    {error, any()} |
    {error, start_deployment_errors(), tuple()}.
start_deployment(Client, ApplicationId, EnvironmentId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/environments/", aws_util:encode_uri(EnvironmentId), "/deployments"],
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

%% @doc Stops a deployment.
%%
%% This API action works only on deployments that have a status of
%% `DEPLOYING', unless an `AllowRevert' parameter is supplied. If the
%% `AllowRevert' parameter is supplied, the status of an in-progress
%% deployment
%% will be `ROLLED_BACK'. The status of a completed deployment will be
%% `REVERTED'. AppConfig only allows a revert within 72 hours of
%% deployment completion.
-spec stop_deployment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), stop_deployment_request()) ->
    {ok, deployment(), tuple()} |
    {error, any()} |
    {error, stop_deployment_errors(), tuple()}.
stop_deployment(Client, ApplicationId, DeploymentNumber, EnvironmentId, Input) ->
    stop_deployment(Client, ApplicationId, DeploymentNumber, EnvironmentId, Input, []).

-spec stop_deployment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), stop_deployment_request(), proplists:proplist()) ->
    {ok, deployment(), tuple()} |
    {error, any()} |
    {error, stop_deployment_errors(), tuple()}.
stop_deployment(Client, ApplicationId, DeploymentNumber, EnvironmentId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/environments/", aws_util:encode_uri(EnvironmentId), "/deployments/", aws_util:encode_uri(DeploymentNumber), ""],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Allow-Revert">>, <<"AllowRevert">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Assigns metadata to an AppConfig resource.
%%
%% Tags help organize and categorize
%% your AppConfig resources. Each tag consists of a key and an optional
%% value, both
%% of which you define. You can specify a maximum of 50 tags for a resource.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
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

%% @doc Deletes a tag key and value from an AppConfig resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
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
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the value of the `DeletionProtection' parameter.
-spec update_account_settings(aws_client:aws_client(), update_account_settings_request()) ->
    {ok, account_settings(), tuple()} |
    {error, any()} |
    {error, update_account_settings_errors(), tuple()}.
update_account_settings(Client, Input) ->
    update_account_settings(Client, Input, []).

-spec update_account_settings(aws_client:aws_client(), update_account_settings_request(), proplists:proplist()) ->
    {ok, account_settings(), tuple()} |
    {error, any()} |
    {error, update_account_settings_errors(), tuple()}.
update_account_settings(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/settings"],
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

%% @doc Updates an application.
-spec update_application(aws_client:aws_client(), binary() | list(), update_application_request()) ->
    {ok, application(), tuple()} |
    {error, any()} |
    {error, update_application_errors(), tuple()}.
update_application(Client, ApplicationId, Input) ->
    update_application(Client, ApplicationId, Input, []).

-spec update_application(aws_client:aws_client(), binary() | list(), update_application_request(), proplists:proplist()) ->
    {ok, application(), tuple()} |
    {error, any()} |
    {error, update_application_errors(), tuple()}.
update_application(Client, ApplicationId, Input0, Options0) ->
    Method = patch,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
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

%% @doc Updates a configuration profile.
-spec update_configuration_profile(aws_client:aws_client(), binary() | list(), binary() | list(), update_configuration_profile_request()) ->
    {ok, configuration_profile(), tuple()} |
    {error, any()} |
    {error, update_configuration_profile_errors(), tuple()}.
update_configuration_profile(Client, ApplicationId, ConfigurationProfileId, Input) ->
    update_configuration_profile(Client, ApplicationId, ConfigurationProfileId, Input, []).

-spec update_configuration_profile(aws_client:aws_client(), binary() | list(), binary() | list(), update_configuration_profile_request(), proplists:proplist()) ->
    {ok, configuration_profile(), tuple()} |
    {error, any()} |
    {error, update_configuration_profile_errors(), tuple()}.
update_configuration_profile(Client, ApplicationId, ConfigurationProfileId, Input0, Options0) ->
    Method = patch,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/configurationprofiles/", aws_util:encode_uri(ConfigurationProfileId), ""],
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

%% @doc Updates a deployment strategy.
-spec update_deployment_strategy(aws_client:aws_client(), binary() | list(), update_deployment_strategy_request()) ->
    {ok, deployment_strategy(), tuple()} |
    {error, any()} |
    {error, update_deployment_strategy_errors(), tuple()}.
update_deployment_strategy(Client, DeploymentStrategyId, Input) ->
    update_deployment_strategy(Client, DeploymentStrategyId, Input, []).

-spec update_deployment_strategy(aws_client:aws_client(), binary() | list(), update_deployment_strategy_request(), proplists:proplist()) ->
    {ok, deployment_strategy(), tuple()} |
    {error, any()} |
    {error, update_deployment_strategy_errors(), tuple()}.
update_deployment_strategy(Client, DeploymentStrategyId, Input0, Options0) ->
    Method = patch,
    Path = ["/deploymentstrategies/", aws_util:encode_uri(DeploymentStrategyId), ""],
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

%% @doc Updates an environment.
-spec update_environment(aws_client:aws_client(), binary() | list(), binary() | list(), update_environment_request()) ->
    {ok, environment(), tuple()} |
    {error, any()} |
    {error, update_environment_errors(), tuple()}.
update_environment(Client, ApplicationId, EnvironmentId, Input) ->
    update_environment(Client, ApplicationId, EnvironmentId, Input, []).

-spec update_environment(aws_client:aws_client(), binary() | list(), binary() | list(), update_environment_request(), proplists:proplist()) ->
    {ok, environment(), tuple()} |
    {error, any()} |
    {error, update_environment_errors(), tuple()}.
update_environment(Client, ApplicationId, EnvironmentId, Input0, Options0) ->
    Method = patch,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/environments/", aws_util:encode_uri(EnvironmentId), ""],
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

%% @doc Updates an AppConfig extension.
%%
%% For more information about extensions, see
%% Extending
%% workflows:
%% https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html
%% in the AppConfig User Guide.
-spec update_extension(aws_client:aws_client(), binary() | list(), update_extension_request()) ->
    {ok, extension(), tuple()} |
    {error, any()} |
    {error, update_extension_errors(), tuple()}.
update_extension(Client, ExtensionIdentifier, Input) ->
    update_extension(Client, ExtensionIdentifier, Input, []).

-spec update_extension(aws_client:aws_client(), binary() | list(), update_extension_request(), proplists:proplist()) ->
    {ok, extension(), tuple()} |
    {error, any()} |
    {error, update_extension_errors(), tuple()}.
update_extension(Client, ExtensionIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/extensions/", aws_util:encode_uri(ExtensionIdentifier), ""],
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

%% @doc Updates an association.
%%
%% For more information about extensions and associations, see
%% Extending
%% workflows:
%% https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html
%% in the AppConfig User Guide.
-spec update_extension_association(aws_client:aws_client(), binary() | list(), update_extension_association_request()) ->
    {ok, extension_association(), tuple()} |
    {error, any()} |
    {error, update_extension_association_errors(), tuple()}.
update_extension_association(Client, ExtensionAssociationId, Input) ->
    update_extension_association(Client, ExtensionAssociationId, Input, []).

-spec update_extension_association(aws_client:aws_client(), binary() | list(), update_extension_association_request(), proplists:proplist()) ->
    {ok, extension_association(), tuple()} |
    {error, any()} |
    {error, update_extension_association_errors(), tuple()}.
update_extension_association(Client, ExtensionAssociationId, Input0, Options0) ->
    Method = patch,
    Path = ["/extensionassociations/", aws_util:encode_uri(ExtensionAssociationId), ""],
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

%% @doc Uses the validators in a configuration profile to validate a
%% configuration.
-spec validate_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), validate_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, validate_configuration_errors(), tuple()}.
validate_configuration(Client, ApplicationId, ConfigurationProfileId, Input) ->
    validate_configuration(Client, ApplicationId, ConfigurationProfileId, Input, []).

-spec validate_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), validate_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, validate_configuration_errors(), tuple()}.
validate_configuration(Client, ApplicationId, ConfigurationProfileId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/configurationprofiles/", aws_util:encode_uri(ConfigurationProfileId), "/validators"],
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
                     {<<"configuration_version">>, <<"ConfigurationVersion">>}
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
    Client1 = Client#{service => <<"appconfig">>},
    Host = build_host(<<"appconfig">>, Client1),
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
