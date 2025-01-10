%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc CodeBuild
%%
%% CodeBuild is a fully managed build service in the cloud.
%%
%% CodeBuild compiles your source code,
%% runs unit tests, and produces artifacts that are ready to deploy.
%% CodeBuild eliminates the
%% need to provision, manage, and scale your own build servers. It provides
%% prepackaged
%% build environments for the most popular programming languages and build
%% tools, such as
%% Apache Maven, Gradle, and more. You can also fully customize build
%% environments in CodeBuild
%% to use your own build tools. CodeBuild scales automatically to meet peak
%% build requests. You
%% pay only for the build time you consume. For more information about
%% CodeBuild, see the
%% CodeBuild User
%% Guide:
%% https://docs.aws.amazon.com/codebuild/latest/userguide/welcome.html.
-module(aws_codebuild).

-export([batch_delete_builds/2,
         batch_delete_builds/3,
         batch_get_build_batches/2,
         batch_get_build_batches/3,
         batch_get_builds/2,
         batch_get_builds/3,
         batch_get_fleets/2,
         batch_get_fleets/3,
         batch_get_projects/2,
         batch_get_projects/3,
         batch_get_report_groups/2,
         batch_get_report_groups/3,
         batch_get_reports/2,
         batch_get_reports/3,
         create_fleet/2,
         create_fleet/3,
         create_project/2,
         create_project/3,
         create_report_group/2,
         create_report_group/3,
         create_webhook/2,
         create_webhook/3,
         delete_build_batch/2,
         delete_build_batch/3,
         delete_fleet/2,
         delete_fleet/3,
         delete_project/2,
         delete_project/3,
         delete_report/2,
         delete_report/3,
         delete_report_group/2,
         delete_report_group/3,
         delete_resource_policy/2,
         delete_resource_policy/3,
         delete_source_credentials/2,
         delete_source_credentials/3,
         delete_webhook/2,
         delete_webhook/3,
         describe_code_coverages/2,
         describe_code_coverages/3,
         describe_test_cases/2,
         describe_test_cases/3,
         get_report_group_trend/2,
         get_report_group_trend/3,
         get_resource_policy/2,
         get_resource_policy/3,
         import_source_credentials/2,
         import_source_credentials/3,
         invalidate_project_cache/2,
         invalidate_project_cache/3,
         list_build_batches/2,
         list_build_batches/3,
         list_build_batches_for_project/2,
         list_build_batches_for_project/3,
         list_builds/2,
         list_builds/3,
         list_builds_for_project/2,
         list_builds_for_project/3,
         list_curated_environment_images/2,
         list_curated_environment_images/3,
         list_fleets/2,
         list_fleets/3,
         list_projects/2,
         list_projects/3,
         list_report_groups/2,
         list_report_groups/3,
         list_reports/2,
         list_reports/3,
         list_reports_for_report_group/2,
         list_reports_for_report_group/3,
         list_shared_projects/2,
         list_shared_projects/3,
         list_shared_report_groups/2,
         list_shared_report_groups/3,
         list_source_credentials/2,
         list_source_credentials/3,
         put_resource_policy/2,
         put_resource_policy/3,
         retry_build/2,
         retry_build/3,
         retry_build_batch/2,
         retry_build_batch/3,
         start_build/2,
         start_build/3,
         start_build_batch/2,
         start_build_batch/3,
         stop_build/2,
         stop_build/3,
         stop_build_batch/2,
         stop_build_batch/3,
         update_fleet/2,
         update_fleet/3,
         update_project/2,
         update_project/3,
         update_project_visibility/2,
         update_project_visibility/3,
         update_report_group/2,
         update_report_group/3,
         update_webhook/2,
         update_webhook/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% update_fleet_output() :: #{
%%   <<"fleet">> => fleet()
%% }
-type update_fleet_output() :: #{binary() => any()}.

%% Example:
%% project_source_version() :: #{
%%   <<"sourceIdentifier">> => string(),
%%   <<"sourceVersion">> => string()
%% }
-type project_source_version() :: #{binary() => any()}.

%% Example:
%% phase_context() :: #{
%%   <<"message">> => string(),
%%   <<"statusCode">> => string()
%% }
-type phase_context() :: #{binary() => any()}.

%% Example:
%% delete_fleet_output() :: #{

%% }
-type delete_fleet_output() :: #{binary() => any()}.

%% Example:
%% list_curated_environment_images_input() :: #{

%% }
-type list_curated_environment_images_input() :: #{binary() => any()}.

%% Example:
%% delete_report_group_input() :: #{
%%   <<"arn">> := string(),
%%   <<"deleteReports">> => boolean()
%% }
-type delete_report_group_input() :: #{binary() => any()}.

%% Example:
%% batch_get_build_batches_input() :: #{
%%   <<"ids">> := list(string()())
%% }
-type batch_get_build_batches_input() :: #{binary() => any()}.

%% Example:
%% list_report_groups_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any())
%% }
-type list_report_groups_input() :: #{binary() => any()}.

%% Example:
%% list_builds_for_project_output() :: #{
%%   <<"ids">> => list(string()()),
%%   <<"nextToken">> => string()
%% }
-type list_builds_for_project_output() :: #{binary() => any()}.

%% Example:
%% stop_build_batch_input() :: #{
%%   <<"id">> := string()
%% }
-type stop_build_batch_input() :: #{binary() => any()}.

%% Example:
%% list_build_batches_for_project_input() :: #{
%%   <<"filter">> => build_batch_filter(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"projectName">> => string(),
%%   <<"sortOrder">> => list(any())
%% }
-type list_build_batches_for_project_input() :: #{binary() => any()}.

%% Example:
%% delete_build_batch_input() :: #{
%%   <<"id">> := string()
%% }
-type delete_build_batch_input() :: #{binary() => any()}.

%% Example:
%% delete_webhook_output() :: #{

%% }
-type delete_webhook_output() :: #{binary() => any()}.

%% Example:
%% git_submodules_config() :: #{
%%   <<"fetchSubmodules">> => boolean()
%% }
-type git_submodules_config() :: #{binary() => any()}.

%% Example:
%% list_build_batches_output() :: #{
%%   <<"ids">> => list(string()()),
%%   <<"nextToken">> => string()
%% }
-type list_build_batches_output() :: #{binary() => any()}.

%% Example:
%% proxy_configuration() :: #{
%%   <<"defaultBehavior">> => list(any()),
%%   <<"orderedProxyRules">> => list(fleet_proxy_rule()())
%% }
-type proxy_configuration() :: #{binary() => any()}.

%% Example:
%% logs_config() :: #{
%%   <<"cloudWatchLogs">> => cloud_watch_logs_config(),
%%   <<"s3Logs">> => s3_logs_config()
%% }
-type logs_config() :: #{binary() => any()}.

%% Example:
%% get_resource_policy_output() :: #{
%%   <<"policy">> => string()
%% }
-type get_resource_policy_output() :: #{binary() => any()}.

%% Example:
%% list_fleets_output() :: #{
%%   <<"fleets">> => list(string()()),
%%   <<"nextToken">> => string()
%% }
-type list_fleets_output() :: #{binary() => any()}.

%% Example:
%% build() :: #{
%%   <<"buildStatus">> => list(any()),
%%   <<"buildNumber">> => float(),
%%   <<"buildBatchArn">> => string(),
%%   <<"exportedEnvironmentVariables">> => list(exported_environment_variable()()),
%%   <<"environment">> => project_environment(),
%%   <<"projectName">> => string(),
%%   <<"reportArns">> => list(string()()),
%%   <<"sourceVersion">> => string(),
%%   <<"id">> => string(),
%%   <<"debugSession">> => debug_session(),
%%   <<"networkInterface">> => network_interface(),
%%   <<"vpcConfig">> => vpc_config(),
%%   <<"encryptionKey">> => string(),
%%   <<"fileSystemLocations">> => list(project_file_system_location()()),
%%   <<"secondarySourceVersions">> => list(project_source_version()()),
%%   <<"queuedTimeoutInMinutes">> => integer(),
%%   <<"initiator">> => string(),
%%   <<"buildComplete">> => boolean(),
%%   <<"currentPhase">> => string(),
%%   <<"secondaryArtifacts">> => list(build_artifacts()()),
%%   <<"phases">> => list(build_phase()()),
%%   <<"arn">> => string(),
%%   <<"resolvedSourceVersion">> => string(),
%%   <<"autoRetryConfig">> => auto_retry_config(),
%%   <<"timeoutInMinutes">> => integer(),
%%   <<"secondarySources">> => list(project_source()()),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"serviceRole">> => string(),
%%   <<"source">> => project_source(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"artifacts">> => build_artifacts(),
%%   <<"logs">> => logs_location(),
%%   <<"cache">> => project_cache()
%% }
-type build() :: #{binary() => any()}.

%% Example:
%% update_project_input() :: #{
%%   <<"artifacts">> => project_artifacts(),
%%   <<"autoRetryLimit">> => integer(),
%%   <<"badgeEnabled">> => boolean(),
%%   <<"buildBatchConfig">> => project_build_batch_config(),
%%   <<"cache">> => project_cache(),
%%   <<"concurrentBuildLimit">> => integer(),
%%   <<"description">> => string(),
%%   <<"encryptionKey">> => string(),
%%   <<"environment">> => project_environment(),
%%   <<"fileSystemLocations">> => list(project_file_system_location()()),
%%   <<"logsConfig">> => logs_config(),
%%   <<"name">> := string(),
%%   <<"queuedTimeoutInMinutes">> => integer(),
%%   <<"secondaryArtifacts">> => list(project_artifacts()()),
%%   <<"secondarySourceVersions">> => list(project_source_version()()),
%%   <<"secondarySources">> => list(project_source()()),
%%   <<"serviceRole">> => string(),
%%   <<"source">> => project_source(),
%%   <<"sourceVersion">> => string(),
%%   <<"tags">> => list(tag()()),
%%   <<"timeoutInMinutes">> => integer(),
%%   <<"vpcConfig">> => vpc_config()
%% }
-type update_project_input() :: #{binary() => any()}.

%% Example:
%% build_group() :: #{
%%   <<"currentBuildSummary">> => build_summary(),
%%   <<"dependsOn">> => list(string()()),
%%   <<"identifier">> => string(),
%%   <<"ignoreFailure">> => boolean(),
%%   <<"priorBuildSummaryList">> => list(build_summary()())
%% }
-type build_group() :: #{binary() => any()}.

%% Example:
%% list_builds_for_project_input() :: #{
%%   <<"nextToken">> => string(),
%%   <<"projectName">> := string(),
%%   <<"sortOrder">> => list(any())
%% }
-type list_builds_for_project_input() :: #{binary() => any()}.

%% Example:
%% batch_get_builds_input() :: #{
%%   <<"ids">> := list(string()())
%% }
-type batch_get_builds_input() :: #{binary() => any()}.

%% Example:
%% stop_build_batch_output() :: #{
%%   <<"buildBatch">> => build_batch()
%% }
-type stop_build_batch_output() :: #{binary() => any()}.

%% Example:
%% project_file_system_location() :: #{
%%   <<"identifier">> => string(),
%%   <<"location">> => string(),
%%   <<"mountOptions">> => string(),
%%   <<"mountPoint">> => string(),
%%   <<"type">> => list(any())
%% }
-type project_file_system_location() :: #{binary() => any()}.

%% Example:
%% list_reports_input() :: #{
%%   <<"filter">> => report_filter(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortOrder">> => list(any())
%% }
-type list_reports_input() :: #{binary() => any()}.

%% Example:
%% list_source_credentials_input() :: #{

%% }
-type list_source_credentials_input() :: #{binary() => any()}.

%% Example:
%% list_report_groups_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"reportGroups">> => list(string()())
%% }
-type list_report_groups_output() :: #{binary() => any()}.

%% Example:
%% list_shared_projects_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any())
%% }
-type list_shared_projects_input() :: #{binary() => any()}.

%% Example:
%% environment_variable() :: #{
%%   <<"name">> => string(),
%%   <<"type">> => list(any()),
%%   <<"value">> => string()
%% }
-type environment_variable() :: #{binary() => any()}.

%% Example:
%% cloud_watch_logs_config() :: #{
%%   <<"groupName">> => string(),
%%   <<"status">> => list(any()),
%%   <<"streamName">> => string()
%% }
-type cloud_watch_logs_config() :: #{binary() => any()}.

%% Example:
%% network_interface() :: #{
%%   <<"networkInterfaceId">> => string(),
%%   <<"subnetId">> => string()
%% }
-type network_interface() :: #{binary() => any()}.

%% Example:
%% retry_build_output() :: #{
%%   <<"build">> => build()
%% }
-type retry_build_output() :: #{binary() => any()}.

%% Example:
%% report_with_raw_data() :: #{
%%   <<"data">> => string(),
%%   <<"reportArn">> => string()
%% }
-type report_with_raw_data() :: #{binary() => any()}.

%% Example:
%% create_report_group_output() :: #{
%%   <<"reportGroup">> => report_group()
%% }
-type create_report_group_output() :: #{binary() => any()}.

%% Example:
%% delete_fleet_input() :: #{
%%   <<"arn">> := string()
%% }
-type delete_fleet_input() :: #{binary() => any()}.

%% Example:
%% update_webhook_output() :: #{
%%   <<"webhook">> => webhook()
%% }
-type update_webhook_output() :: #{binary() => any()}.

%% Example:
%% get_report_group_trend_input() :: #{
%%   <<"numOfReports">> => integer(),
%%   <<"reportGroupArn">> := string(),
%%   <<"trendField">> := list(any())
%% }
-type get_report_group_trend_input() :: #{binary() => any()}.

%% Example:
%% project_artifacts() :: #{
%%   <<"artifactIdentifier">> => string(),
%%   <<"bucketOwnerAccess">> => list(any()),
%%   <<"encryptionDisabled">> => boolean(),
%%   <<"location">> => string(),
%%   <<"name">> => string(),
%%   <<"namespaceType">> => list(any()),
%%   <<"overrideArtifactName">> => boolean(),
%%   <<"packaging">> => list(any()),
%%   <<"path">> => string(),
%%   <<"type">> => list(any())
%% }
-type project_artifacts() :: #{binary() => any()}.

%% Example:
%% exported_environment_variable() :: #{
%%   <<"name">> => string(),
%%   <<"value">> => string()
%% }
-type exported_environment_variable() :: #{binary() => any()}.

%% Example:
%% list_shared_projects_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"projects">> => list(string()())
%% }
-type list_shared_projects_output() :: #{binary() => any()}.

%% Example:
%% batch_get_builds_output() :: #{
%%   <<"builds">> => list(build()()),
%%   <<"buildsNotFound">> => list(string()())
%% }
-type batch_get_builds_output() :: #{binary() => any()}.

%% Example:
%% create_project_output() :: #{
%%   <<"project">> => project()
%% }
-type create_project_output() :: #{binary() => any()}.

%% Example:
%% stop_build_output() :: #{
%%   <<"build">> => build()
%% }
-type stop_build_output() :: #{binary() => any()}.

%% Example:
%% delete_report_output() :: #{

%% }
-type delete_report_output() :: #{binary() => any()}.

%% Example:
%% environment_platform() :: #{
%%   <<"languages">> => list(environment_language()()),
%%   <<"platform">> => list(any())
%% }
-type environment_platform() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_output() :: #{
%%   <<"resourceArn">> => string()
%% }
-type put_resource_policy_output() :: #{binary() => any()}.

%% Example:
%% list_builds_input() :: #{
%%   <<"nextToken">> => string(),
%%   <<"sortOrder">> => list(any())
%% }
-type list_builds_input() :: #{binary() => any()}.

%% Example:
%% report_export_config() :: #{
%%   <<"exportConfigType">> => list(any()),
%%   <<"s3Destination">> => s3_report_export_config()
%% }
-type report_export_config() :: #{binary() => any()}.

%% Example:
%% describe_code_coverages_input() :: #{
%%   <<"maxLineCoveragePercentage">> => float(),
%%   <<"maxResults">> => integer(),
%%   <<"minLineCoveragePercentage">> => float(),
%%   <<"nextToken">> => string(),
%%   <<"reportArn">> := string(),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any())
%% }
-type describe_code_coverages_input() :: #{binary() => any()}.

%% Example:
%% delete_source_credentials_input() :: #{
%%   <<"arn">> := string()
%% }
-type delete_source_credentials_input() :: #{binary() => any()}.

%% Example:
%% code_coverage_report_summary() :: #{
%%   <<"branchCoveragePercentage">> => float(),
%%   <<"branchesCovered">> => integer(),
%%   <<"branchesMissed">> => integer(),
%%   <<"lineCoveragePercentage">> => float(),
%%   <<"linesCovered">> => integer(),
%%   <<"linesMissed">> => integer()
%% }
-type code_coverage_report_summary() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_input() :: #{
%%   <<"resourceArn">> := string()
%% }
-type delete_resource_policy_input() :: #{binary() => any()}.

%% Example:
%% project_cache() :: #{
%%   <<"location">> => string(),
%%   <<"modes">> => list(list(any())()),
%%   <<"type">> => list(any())
%% }
-type project_cache() :: #{binary() => any()}.

%% Example:
%% build_not_deleted() :: #{
%%   <<"id">> => string(),
%%   <<"statusCode">> => string()
%% }
-type build_not_deleted() :: #{binary() => any()}.

%% Example:
%% test_case() :: #{
%%   <<"durationInNanoSeconds">> => float(),
%%   <<"expired">> => non_neg_integer(),
%%   <<"message">> => string(),
%%   <<"name">> => string(),
%%   <<"prefix">> => string(),
%%   <<"reportArn">> => string(),
%%   <<"status">> => string(),
%%   <<"testRawDataPath">> => string()
%% }
-type test_case() :: #{binary() => any()}.

%% Example:
%% update_project_visibility_input() :: #{
%%   <<"projectArn">> := string(),
%%   <<"projectVisibility">> := list(any()),
%%   <<"resourceAccessRole">> => string()
%% }
-type update_project_visibility_input() :: #{binary() => any()}.

%% Example:
%% fleet_status() :: #{
%%   <<"context">> => list(any()),
%%   <<"message">> => string(),
%%   <<"statusCode">> => list(any())
%% }
-type fleet_status() :: #{binary() => any()}.

%% Example:
%% delete_build_batch_output() :: #{
%%   <<"buildsDeleted">> => list(string()()),
%%   <<"buildsNotDeleted">> => list(build_not_deleted()()),
%%   <<"statusCode">> => string()
%% }
-type delete_build_batch_output() :: #{binary() => any()}.

%% Example:
%% build_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"buildStatus">> => list(any()),
%%   <<"primaryArtifact">> => resolved_artifact(),
%%   <<"requestedOn">> => non_neg_integer(),
%%   <<"secondaryArtifacts">> => list(resolved_artifact()())
%% }
-type build_summary() :: #{binary() => any()}.

%% Example:
%% import_source_credentials_input() :: #{
%%   <<"authType">> := list(any()),
%%   <<"serverType">> := list(any()),
%%   <<"shouldOverwrite">> => boolean(),
%%   <<"token">> := string(),
%%   <<"username">> => string()
%% }
-type import_source_credentials_input() :: #{binary() => any()}.

%% Example:
%% batch_get_reports_output() :: #{
%%   <<"reports">> => list(report()()),
%%   <<"reportsNotFound">> => list(string()())
%% }
-type batch_get_reports_output() :: #{binary() => any()}.

%% Example:
%% list_reports_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"reports">> => list(string()())
%% }
-type list_reports_output() :: #{binary() => any()}.

%% Example:
%% create_webhook_output() :: #{
%%   <<"webhook">> => webhook()
%% }
-type create_webhook_output() :: #{binary() => any()}.

%% Example:
%% delete_report_group_output() :: #{

%% }
-type delete_report_group_output() :: #{binary() => any()}.

%% Example:
%% start_build_input() :: #{
%%   <<"cacheOverride">> => project_cache(),
%%   <<"imagePullCredentialsTypeOverride">> => list(any()),
%%   <<"idempotencyToken">> => string(),
%%   <<"sourceAuthOverride">> => source_auth(),
%%   <<"projectName">> := string(),
%%   <<"encryptionKeyOverride">> => string(),
%%   <<"logsConfigOverride">> => logs_config(),
%%   <<"timeoutInMinutesOverride">> => integer(),
%%   <<"sourceVersion">> => string(),
%%   <<"secondarySourcesOverride">> => list(project_source()()),
%%   <<"reportBuildStatusOverride">> => boolean(),
%%   <<"fleetOverride">> => project_fleet(),
%%   <<"secondarySourcesVersionOverride">> => list(project_source_version()()),
%%   <<"sourceLocationOverride">> => string(),
%%   <<"autoRetryLimitOverride">> => integer(),
%%   <<"gitCloneDepthOverride">> => integer(),
%%   <<"buildspecOverride">> => string(),
%%   <<"privilegedModeOverride">> => boolean(),
%%   <<"debugSessionEnabled">> => boolean(),
%%   <<"imageOverride">> => string(),
%%   <<"certificateOverride">> => string(),
%%   <<"artifactsOverride">> => project_artifacts(),
%%   <<"environmentTypeOverride">> => list(any()),
%%   <<"sourceTypeOverride">> => list(any()),
%%   <<"secondaryArtifactsOverride">> => list(project_artifacts()()),
%%   <<"gitSubmodulesConfigOverride">> => git_submodules_config(),
%%   <<"computeTypeOverride">> => list(any()),
%%   <<"serviceRoleOverride">> => string(),
%%   <<"buildStatusConfigOverride">> => build_status_config(),
%%   <<"insecureSslOverride">> => boolean(),
%%   <<"queuedTimeoutInMinutesOverride">> => integer(),
%%   <<"registryCredentialOverride">> => registry_credential(),
%%   <<"environmentVariablesOverride">> => list(environment_variable()())
%% }
-type start_build_input() :: #{binary() => any()}.

%% Example:
%% list_reports_for_report_group_input() :: #{
%%   <<"filter">> => report_filter(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"reportGroupArn">> := string(),
%%   <<"sortOrder">> => list(any())
%% }
-type list_reports_for_report_group_input() :: #{binary() => any()}.

%% Example:
%% batch_delete_builds_input() :: #{
%%   <<"ids">> := list(string()())
%% }
-type batch_delete_builds_input() :: #{binary() => any()}.

%% Example:
%% list_curated_environment_images_output() :: #{
%%   <<"platforms">> => list(environment_platform()())
%% }
-type list_curated_environment_images_output() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% describe_code_coverages_output() :: #{
%%   <<"codeCoverages">> => list(code_coverage()()),
%%   <<"nextToken">> => string()
%% }
-type describe_code_coverages_output() :: #{binary() => any()}.

%% Example:
%% list_shared_report_groups_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"reportGroups">> => list(string()())
%% }
-type list_shared_report_groups_output() :: #{binary() => any()}.

%% Example:
%% retry_build_batch_output() :: #{
%%   <<"buildBatch">> => build_batch()
%% }
-type retry_build_batch_output() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% account_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type account_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% retry_build_batch_input() :: #{
%%   <<"id">> => string(),
%%   <<"idempotencyToken">> => string(),
%%   <<"retryType">> => list(any())
%% }
-type retry_build_batch_input() :: #{binary() => any()}.

%% Example:
%% debug_session() :: #{
%%   <<"sessionEnabled">> => boolean(),
%%   <<"sessionTarget">> => string()
%% }
-type debug_session() :: #{binary() => any()}.

%% Example:
%% project() :: #{
%%   <<"arn">> => string(),
%%   <<"artifacts">> => project_artifacts(),
%%   <<"autoRetryLimit">> => integer(),
%%   <<"badge">> => project_badge(),
%%   <<"buildBatchConfig">> => project_build_batch_config(),
%%   <<"cache">> => project_cache(),
%%   <<"concurrentBuildLimit">> => integer(),
%%   <<"created">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"encryptionKey">> => string(),
%%   <<"environment">> => project_environment(),
%%   <<"fileSystemLocations">> => list(project_file_system_location()()),
%%   <<"lastModified">> => non_neg_integer(),
%%   <<"logsConfig">> => logs_config(),
%%   <<"name">> => string(),
%%   <<"projectVisibility">> => list(any()),
%%   <<"publicProjectAlias">> => string(),
%%   <<"queuedTimeoutInMinutes">> => integer(),
%%   <<"resourceAccessRole">> => string(),
%%   <<"secondaryArtifacts">> => list(project_artifacts()()),
%%   <<"secondarySourceVersions">> => list(project_source_version()()),
%%   <<"secondarySources">> => list(project_source()()),
%%   <<"serviceRole">> => string(),
%%   <<"source">> => project_source(),
%%   <<"sourceVersion">> => string(),
%%   <<"tags">> => list(tag()()),
%%   <<"timeoutInMinutes">> => integer(),
%%   <<"vpcConfig">> => vpc_config(),
%%   <<"webhook">> => webhook()
%% }
-type project() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_input() :: #{
%%   <<"policy">> := string(),
%%   <<"resourceArn">> := string()
%% }
-type put_resource_policy_input() :: #{binary() => any()}.

%% Example:
%% batch_get_projects_output() :: #{
%%   <<"projects">> => list(project()()),
%%   <<"projectsNotFound">> => list(string()())
%% }
-type batch_get_projects_output() :: #{binary() => any()}.

%% Example:
%% list_projects_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"projects">> => list(string()())
%% }
-type list_projects_output() :: #{binary() => any()}.

%% Example:
%% project_build_batch_config() :: #{
%%   <<"batchReportMode">> => list(any()),
%%   <<"combineArtifacts">> => boolean(),
%%   <<"restrictions">> => batch_restrictions(),
%%   <<"serviceRole">> => string(),
%%   <<"timeoutInMins">> => integer()
%% }
-type project_build_batch_config() :: #{binary() => any()}.

%% Example:
%% batch_get_build_batches_output() :: #{
%%   <<"buildBatches">> => list(build_batch()()),
%%   <<"buildBatchesNotFound">> => list(string()())
%% }
-type batch_get_build_batches_output() :: #{binary() => any()}.

%% Example:
%% update_report_group_output() :: #{
%%   <<"reportGroup">> => report_group()
%% }
-type update_report_group_output() :: #{binary() => any()}.

%% Example:
%% invalidate_project_cache_input() :: #{
%%   <<"projectName">> := string()
%% }
-type invalidate_project_cache_input() :: #{binary() => any()}.

%% Example:
%% target_tracking_scaling_configuration() :: #{
%%   <<"metricType">> => list(any()),
%%   <<"targetValue">> => float()
%% }
-type target_tracking_scaling_configuration() :: #{binary() => any()}.

%% Example:
%% describe_test_cases_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"testCases">> => list(test_case()())
%% }
-type describe_test_cases_output() :: #{binary() => any()}.

%% Example:
%% vpc_config() :: #{
%%   <<"securityGroupIds">> => list(string()()),
%%   <<"subnets">> => list(string()()),
%%   <<"vpcId">> => string()
%% }
-type vpc_config() :: #{binary() => any()}.

%% Example:
%% auto_retry_config() :: #{
%%   <<"autoRetryLimit">> => integer(),
%%   <<"autoRetryNumber">> => integer(),
%%   <<"nextAutoRetry">> => string(),
%%   <<"previousAutoRetry">> => string()
%% }
-type auto_retry_config() :: #{binary() => any()}.

%% Example:
%% s3_logs_config() :: #{
%%   <<"bucketOwnerAccess">> => list(any()),
%%   <<"encryptionDisabled">> => boolean(),
%%   <<"location">> => string(),
%%   <<"status">> => list(any())
%% }
-type s3_logs_config() :: #{binary() => any()}.

%% Example:
%% invalid_input_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_input_exception() :: #{binary() => any()}.

%% Example:
%% list_source_credentials_output() :: #{
%%   <<"sourceCredentialsInfos">> => list(source_credentials_info()())
%% }
-type list_source_credentials_output() :: #{binary() => any()}.

%% Example:
%% update_project_visibility_output() :: #{
%%   <<"projectArn">> => string(),
%%   <<"projectVisibility">> => list(any()),
%%   <<"publicProjectAlias">> => string()
%% }
-type update_project_visibility_output() :: #{binary() => any()}.

%% Example:
%% start_build_output() :: #{
%%   <<"build">> => build()
%% }
-type start_build_output() :: #{binary() => any()}.

%% Example:
%% o_auth_provider_exception() :: #{
%%   <<"message">> => string()
%% }
-type o_auth_provider_exception() :: #{binary() => any()}.

%% Example:
%% build_status_config() :: #{
%%   <<"context">> => string(),
%%   <<"targetUrl">> => string()
%% }
-type build_status_config() :: #{binary() => any()}.

%% Example:
%% s3_report_export_config() :: #{
%%   <<"bucket">> => string(),
%%   <<"bucketOwner">> => string(),
%%   <<"encryptionDisabled">> => boolean(),
%%   <<"encryptionKey">> => string(),
%%   <<"packaging">> => list(any()),
%%   <<"path">> => string()
%% }
-type s3_report_export_config() :: #{binary() => any()}.

%% Example:
%% start_build_batch_output() :: #{
%%   <<"buildBatch">> => build_batch()
%% }
-type start_build_batch_output() :: #{binary() => any()}.

%% Example:
%% create_fleet_output() :: #{
%%   <<"fleet">> => fleet()
%% }
-type create_fleet_output() :: #{binary() => any()}.

%% Example:
%% create_webhook_input() :: #{
%%   <<"branchFilter">> => string(),
%%   <<"buildType">> => list(any()),
%%   <<"filterGroups">> => list(list(webhook_filter()())()),
%%   <<"manualCreation">> => boolean(),
%%   <<"projectName">> := string(),
%%   <<"scopeConfiguration">> => scope_configuration()
%% }
-type create_webhook_input() :: #{binary() => any()}.

%% Example:
%% delete_report_input() :: #{
%%   <<"arn">> := string()
%% }
-type delete_report_input() :: #{binary() => any()}.

%% Example:
%% batch_get_fleets_output() :: #{
%%   <<"fleets">> => list(fleet()()),
%%   <<"fleetsNotFound">> => list(string()())
%% }
-type batch_get_fleets_output() :: #{binary() => any()}.

%% Example:
%% project_source() :: #{
%%   <<"auth">> => source_auth(),
%%   <<"buildStatusConfig">> => build_status_config(),
%%   <<"buildspec">> => string(),
%%   <<"gitCloneDepth">> => integer(),
%%   <<"gitSubmodulesConfig">> => git_submodules_config(),
%%   <<"insecureSsl">> => boolean(),
%%   <<"location">> => string(),
%%   <<"reportBuildStatus">> => boolean(),
%%   <<"sourceIdentifier">> => string(),
%%   <<"type">> => list(any())
%% }
-type project_source() :: #{binary() => any()}.

%% Example:
%% create_project_input() :: #{
%%   <<"artifacts">> := project_artifacts(),
%%   <<"autoRetryLimit">> => integer(),
%%   <<"badgeEnabled">> => boolean(),
%%   <<"buildBatchConfig">> => project_build_batch_config(),
%%   <<"cache">> => project_cache(),
%%   <<"concurrentBuildLimit">> => integer(),
%%   <<"description">> => string(),
%%   <<"encryptionKey">> => string(),
%%   <<"environment">> := project_environment(),
%%   <<"fileSystemLocations">> => list(project_file_system_location()()),
%%   <<"logsConfig">> => logs_config(),
%%   <<"name">> := string(),
%%   <<"queuedTimeoutInMinutes">> => integer(),
%%   <<"secondaryArtifacts">> => list(project_artifacts()()),
%%   <<"secondarySourceVersions">> => list(project_source_version()()),
%%   <<"secondarySources">> => list(project_source()()),
%%   <<"serviceRole">> := string(),
%%   <<"source">> := project_source(),
%%   <<"sourceVersion">> => string(),
%%   <<"tags">> => list(tag()()),
%%   <<"timeoutInMinutes">> => integer(),
%%   <<"vpcConfig">> => vpc_config()
%% }
-type create_project_input() :: #{binary() => any()}.

%% Example:
%% list_fleets_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any())
%% }
-type list_fleets_input() :: #{binary() => any()}.

%% Example:
%% source_credentials_info() :: #{
%%   <<"arn">> => string(),
%%   <<"authType">> => list(any()),
%%   <<"resource">> => string(),
%%   <<"serverType">> => list(any())
%% }
-type source_credentials_info() :: #{binary() => any()}.

%% Example:
%% update_fleet_input() :: #{
%%   <<"arn">> := string(),
%%   <<"baseCapacity">> => integer(),
%%   <<"computeConfiguration">> => compute_configuration(),
%%   <<"computeType">> => list(any()),
%%   <<"environmentType">> => list(any()),
%%   <<"fleetServiceRole">> => string(),
%%   <<"imageId">> => string(),
%%   <<"overflowBehavior">> => list(any()),
%%   <<"proxyConfiguration">> => proxy_configuration(),
%%   <<"scalingConfiguration">> => scaling_configuration_input(),
%%   <<"tags">> => list(tag()()),
%%   <<"vpcConfig">> => vpc_config()
%% }
-type update_fleet_input() :: #{binary() => any()}.

%% Example:
%% create_fleet_input() :: #{
%%   <<"baseCapacity">> := integer(),
%%   <<"computeConfiguration">> => compute_configuration(),
%%   <<"computeType">> := list(any()),
%%   <<"environmentType">> := list(any()),
%%   <<"fleetServiceRole">> => string(),
%%   <<"imageId">> => string(),
%%   <<"name">> := string(),
%%   <<"overflowBehavior">> => list(any()),
%%   <<"proxyConfiguration">> => proxy_configuration(),
%%   <<"scalingConfiguration">> => scaling_configuration_input(),
%%   <<"tags">> => list(tag()()),
%%   <<"vpcConfig">> => vpc_config()
%% }
-type create_fleet_input() :: #{binary() => any()}.

%% Example:
%% webhook_filter() :: #{
%%   <<"excludeMatchedPattern">> => boolean(),
%%   <<"pattern">> => string(),
%%   <<"type">> => list(any())
%% }
-type webhook_filter() :: #{binary() => any()}.

%% Example:
%% build_batch_phase() :: #{
%%   <<"contexts">> => list(phase_context()()),
%%   <<"durationInSeconds">> => float(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"phaseStatus">> => list(any()),
%%   <<"phaseType">> => list(any()),
%%   <<"startTime">> => non_neg_integer()
%% }
-type build_batch_phase() :: #{binary() => any()}.

%% Example:
%% logs_location() :: #{
%%   <<"cloudWatchLogs">> => cloud_watch_logs_config(),
%%   <<"cloudWatchLogsArn">> => string(),
%%   <<"deepLink">> => string(),
%%   <<"groupName">> => string(),
%%   <<"s3DeepLink">> => string(),
%%   <<"s3Logs">> => s3_logs_config(),
%%   <<"s3LogsArn">> => string(),
%%   <<"streamName">> => string()
%% }
-type logs_location() :: #{binary() => any()}.

%% Example:
%% fleet_proxy_rule() :: #{
%%   <<"effect">> => list(any()),
%%   <<"entities">> => list(string()()),
%%   <<"type">> => list(any())
%% }
-type fleet_proxy_rule() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_output() :: #{

%% }
-type delete_resource_policy_output() :: #{binary() => any()}.

%% Example:
%% scope_configuration() :: #{
%%   <<"domain">> => string(),
%%   <<"name">> => string(),
%%   <<"scope">> => list(any())
%% }
-type scope_configuration() :: #{binary() => any()}.

%% Example:
%% code_coverage() :: #{
%%   <<"branchCoveragePercentage">> => float(),
%%   <<"branchesCovered">> => integer(),
%%   <<"branchesMissed">> => integer(),
%%   <<"expired">> => non_neg_integer(),
%%   <<"filePath">> => string(),
%%   <<"id">> => string(),
%%   <<"lineCoveragePercentage">> => float(),
%%   <<"linesCovered">> => integer(),
%%   <<"linesMissed">> => integer(),
%%   <<"reportARN">> => string()
%% }
-type code_coverage() :: #{binary() => any()}.

%% Example:
%% registry_credential() :: #{
%%   <<"credential">> => string(),
%%   <<"credentialProvider">> => list(any())
%% }
-type registry_credential() :: #{binary() => any()}.

%% Example:
%% build_batch() :: #{
%%   <<"arn">> => string(),
%%   <<"artifacts">> => build_artifacts(),
%%   <<"buildBatchConfig">> => project_build_batch_config(),
%%   <<"buildBatchNumber">> => float(),
%%   <<"buildBatchStatus">> => list(any()),
%%   <<"buildGroups">> => list(build_group()()),
%%   <<"buildTimeoutInMinutes">> => integer(),
%%   <<"cache">> => project_cache(),
%%   <<"complete">> => boolean(),
%%   <<"currentPhase">> => string(),
%%   <<"debugSessionEnabled">> => boolean(),
%%   <<"encryptionKey">> => string(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"environment">> => project_environment(),
%%   <<"fileSystemLocations">> => list(project_file_system_location()()),
%%   <<"id">> => string(),
%%   <<"initiator">> => string(),
%%   <<"logConfig">> => logs_config(),
%%   <<"phases">> => list(build_batch_phase()()),
%%   <<"projectName">> => string(),
%%   <<"queuedTimeoutInMinutes">> => integer(),
%%   <<"resolvedSourceVersion">> => string(),
%%   <<"secondaryArtifacts">> => list(build_artifacts()()),
%%   <<"secondarySourceVersions">> => list(project_source_version()()),
%%   <<"secondarySources">> => list(project_source()()),
%%   <<"serviceRole">> => string(),
%%   <<"source">> => project_source(),
%%   <<"sourceVersion">> => string(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"vpcConfig">> => vpc_config()
%% }
-type build_batch() :: #{binary() => any()}.

%% Example:
%% resolved_artifact() :: #{
%%   <<"identifier">> => string(),
%%   <<"location">> => string(),
%%   <<"type">> => list(any())
%% }
-type resolved_artifact() :: #{binary() => any()}.

%% Example:
%% list_shared_report_groups_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any())
%% }
-type list_shared_report_groups_input() :: #{binary() => any()}.

%% Example:
%% update_project_output() :: #{
%%   <<"project">> => project()
%% }
-type update_project_output() :: #{binary() => any()}.

%% Example:
%% create_report_group_input() :: #{
%%   <<"exportConfig">> := report_export_config(),
%%   <<"name">> := string(),
%%   <<"tags">> => list(tag()()),
%%   <<"type">> := list(any())
%% }
-type create_report_group_input() :: #{binary() => any()}.

%% Example:
%% list_build_batches_input() :: #{
%%   <<"filter">> => build_batch_filter(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortOrder">> => list(any())
%% }
-type list_build_batches_input() :: #{binary() => any()}.

%% Example:
%% test_case_filter() :: #{
%%   <<"keyword">> => string(),
%%   <<"status">> => string()
%% }
-type test_case_filter() :: #{binary() => any()}.

%% Example:
%% get_resource_policy_input() :: #{
%%   <<"resourceArn">> := string()
%% }
-type get_resource_policy_input() :: #{binary() => any()}.

%% Example:
%% list_projects_input() :: #{
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any())
%% }
-type list_projects_input() :: #{binary() => any()}.

%% Example:
%% build_batch_filter() :: #{
%%   <<"status">> => list(any())
%% }
-type build_batch_filter() :: #{binary() => any()}.

%% Example:
%% batch_get_projects_input() :: #{
%%   <<"names">> := list(string()())
%% }
-type batch_get_projects_input() :: #{binary() => any()}.

%% Example:
%% batch_restrictions() :: #{
%%   <<"computeTypesAllowed">> => list(string()()),
%%   <<"fleetsAllowed">> => list(string()()),
%%   <<"maximumBuildsAllowed">> => integer()
%% }
-type batch_restrictions() :: #{binary() => any()}.

%% Example:
%% batch_get_fleets_input() :: #{
%%   <<"names">> := list(string()())
%% }
-type batch_get_fleets_input() :: #{binary() => any()}.

%% Example:
%% report_filter() :: #{
%%   <<"status">> => list(any())
%% }
-type report_filter() :: #{binary() => any()}.

%% Example:
%% scaling_configuration_input() :: #{
%%   <<"maxCapacity">> => integer(),
%%   <<"scalingType">> => list(any()),
%%   <<"targetTrackingScalingConfigs">> => list(target_tracking_scaling_configuration()())
%% }
-type scaling_configuration_input() :: #{binary() => any()}.

%% Example:
%% project_fleet() :: #{
%%   <<"fleetArn">> => string()
%% }
-type project_fleet() :: #{binary() => any()}.

%% Example:
%% delete_webhook_input() :: #{
%%   <<"projectName">> := string()
%% }
-type delete_webhook_input() :: #{binary() => any()}.

%% Example:
%% delete_project_output() :: #{

%% }
-type delete_project_output() :: #{binary() => any()}.

%% Example:
%% delete_project_input() :: #{
%%   <<"name">> := string()
%% }
-type delete_project_input() :: #{binary() => any()}.

%% Example:
%% describe_test_cases_input() :: #{
%%   <<"filter">> => test_case_filter(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"reportArn">> := string()
%% }
-type describe_test_cases_input() :: #{binary() => any()}.

%% Example:
%% environment_image() :: #{
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"versions">> => list(string()())
%% }
-type environment_image() :: #{binary() => any()}.

%% Example:
%% batch_delete_builds_output() :: #{
%%   <<"buildsDeleted">> => list(string()()),
%%   <<"buildsNotDeleted">> => list(build_not_deleted()())
%% }
-type batch_delete_builds_output() :: #{binary() => any()}.

%% Example:
%% update_report_group_input() :: #{
%%   <<"arn">> := string(),
%%   <<"exportConfig">> => report_export_config(),
%%   <<"tags">> => list(tag()())
%% }
-type update_report_group_input() :: #{binary() => any()}.

%% Example:
%% build_phase() :: #{
%%   <<"contexts">> => list(phase_context()()),
%%   <<"durationInSeconds">> => float(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"phaseStatus">> => list(any()),
%%   <<"phaseType">> => list(any()),
%%   <<"startTime">> => non_neg_integer()
%% }
-type build_phase() :: #{binary() => any()}.

%% Example:
%% list_build_batches_for_project_output() :: #{
%%   <<"ids">> => list(string()()),
%%   <<"nextToken">> => string()
%% }
-type list_build_batches_for_project_output() :: #{binary() => any()}.

%% Example:
%% invalidate_project_cache_output() :: #{

%% }
-type invalidate_project_cache_output() :: #{binary() => any()}.

%% Example:
%% retry_build_input() :: #{
%%   <<"id">> => string(),
%%   <<"idempotencyToken">> => string()
%% }
-type retry_build_input() :: #{binary() => any()}.

%% Example:
%% start_build_batch_input() :: #{
%%   <<"artifactsOverride">> => project_artifacts(),
%%   <<"buildBatchConfigOverride">> => project_build_batch_config(),
%%   <<"buildTimeoutInMinutesOverride">> => integer(),
%%   <<"buildspecOverride">> => string(),
%%   <<"cacheOverride">> => project_cache(),
%%   <<"certificateOverride">> => string(),
%%   <<"computeTypeOverride">> => list(any()),
%%   <<"debugSessionEnabled">> => boolean(),
%%   <<"encryptionKeyOverride">> => string(),
%%   <<"environmentTypeOverride">> => list(any()),
%%   <<"environmentVariablesOverride">> => list(environment_variable()()),
%%   <<"gitCloneDepthOverride">> => integer(),
%%   <<"gitSubmodulesConfigOverride">> => git_submodules_config(),
%%   <<"idempotencyToken">> => string(),
%%   <<"imageOverride">> => string(),
%%   <<"imagePullCredentialsTypeOverride">> => list(any()),
%%   <<"insecureSslOverride">> => boolean(),
%%   <<"logsConfigOverride">> => logs_config(),
%%   <<"privilegedModeOverride">> => boolean(),
%%   <<"projectName">> := string(),
%%   <<"queuedTimeoutInMinutesOverride">> => integer(),
%%   <<"registryCredentialOverride">> => registry_credential(),
%%   <<"reportBuildBatchStatusOverride">> => boolean(),
%%   <<"secondaryArtifactsOverride">> => list(project_artifacts()()),
%%   <<"secondarySourcesOverride">> => list(project_source()()),
%%   <<"secondarySourcesVersionOverride">> => list(project_source_version()()),
%%   <<"serviceRoleOverride">> => string(),
%%   <<"sourceAuthOverride">> => source_auth(),
%%   <<"sourceLocationOverride">> => string(),
%%   <<"sourceTypeOverride">> => list(any()),
%%   <<"sourceVersion">> => string()
%% }
-type start_build_batch_input() :: #{binary() => any()}.

%% Example:
%% environment_language() :: #{
%%   <<"images">> => list(environment_image()()),
%%   <<"language">> => list(any())
%% }
-type environment_language() :: #{binary() => any()}.

%% Example:
%% scaling_configuration_output() :: #{
%%   <<"desiredCapacity">> => integer(),
%%   <<"maxCapacity">> => integer(),
%%   <<"scalingType">> => list(any()),
%%   <<"targetTrackingScalingConfigs">> => list(target_tracking_scaling_configuration()())
%% }
-type scaling_configuration_output() :: #{binary() => any()}.

%% Example:
%% report() :: #{
%%   <<"arn">> => string(),
%%   <<"codeCoverageSummary">> => code_coverage_report_summary(),
%%   <<"created">> => non_neg_integer(),
%%   <<"executionId">> => string(),
%%   <<"expired">> => non_neg_integer(),
%%   <<"exportConfig">> => report_export_config(),
%%   <<"name">> => string(),
%%   <<"reportGroupArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"testSummary">> => test_report_summary(),
%%   <<"truncated">> => boolean(),
%%   <<"type">> => list(any())
%% }
-type report() :: #{binary() => any()}.

%% Example:
%% resource_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% batch_get_reports_input() :: #{
%%   <<"reportArns">> := list(string()())
%% }
-type batch_get_reports_input() :: #{binary() => any()}.

%% Example:
%% stop_build_input() :: #{
%%   <<"id">> := string()
%% }
-type stop_build_input() :: #{binary() => any()}.

%% Example:
%% build_artifacts() :: #{
%%   <<"artifactIdentifier">> => string(),
%%   <<"bucketOwnerAccess">> => list(any()),
%%   <<"encryptionDisabled">> => boolean(),
%%   <<"location">> => string(),
%%   <<"md5sum">> => string(),
%%   <<"overrideArtifactName">> => boolean(),
%%   <<"sha256sum">> => string()
%% }
-type build_artifacts() :: #{binary() => any()}.

%% Example:
%% import_source_credentials_output() :: #{
%%   <<"arn">> => string()
%% }
-type import_source_credentials_output() :: #{binary() => any()}.

%% Example:
%% test_report_summary() :: #{
%%   <<"durationInNanoSeconds">> => float(),
%%   <<"statusCounts">> => map(),
%%   <<"total">> => integer()
%% }
-type test_report_summary() :: #{binary() => any()}.

%% Example:
%% webhook() :: #{
%%   <<"branchFilter">> => string(),
%%   <<"buildType">> => list(any()),
%%   <<"filterGroups">> => list(list(webhook_filter()())()),
%%   <<"lastModifiedSecret">> => non_neg_integer(),
%%   <<"manualCreation">> => boolean(),
%%   <<"payloadUrl">> => string(),
%%   <<"scopeConfiguration">> => scope_configuration(),
%%   <<"secret">> => string(),
%%   <<"url">> => string()
%% }
-type webhook() :: #{binary() => any()}.

%% Example:
%% batch_get_report_groups_output() :: #{
%%   <<"reportGroups">> => list(report_group()()),
%%   <<"reportGroupsNotFound">> => list(string()())
%% }
-type batch_get_report_groups_output() :: #{binary() => any()}.

%% Example:
%% update_webhook_input() :: #{
%%   <<"branchFilter">> => string(),
%%   <<"buildType">> => list(any()),
%%   <<"filterGroups">> => list(list(webhook_filter()())()),
%%   <<"projectName">> := string(),
%%   <<"rotateSecret">> => boolean()
%% }
-type update_webhook_input() :: #{binary() => any()}.

%% Example:
%% fleet() :: #{
%%   <<"arn">> => string(),
%%   <<"baseCapacity">> => integer(),
%%   <<"computeConfiguration">> => compute_configuration(),
%%   <<"computeType">> => list(any()),
%%   <<"created">> => non_neg_integer(),
%%   <<"environmentType">> => list(any()),
%%   <<"fleetServiceRole">> => string(),
%%   <<"id">> => string(),
%%   <<"imageId">> => string(),
%%   <<"lastModified">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"overflowBehavior">> => list(any()),
%%   <<"proxyConfiguration">> => proxy_configuration(),
%%   <<"scalingConfiguration">> => scaling_configuration_output(),
%%   <<"status">> => fleet_status(),
%%   <<"tags">> => list(tag()()),
%%   <<"vpcConfig">> => vpc_config()
%% }
-type fleet() :: #{binary() => any()}.

%% Example:
%% project_badge() :: #{
%%   <<"badgeEnabled">> => boolean(),
%%   <<"badgeRequestUrl">> => string()
%% }
-type project_badge() :: #{binary() => any()}.

%% Example:
%% get_report_group_trend_output() :: #{
%%   <<"rawData">> => list(report_with_raw_data()()),
%%   <<"stats">> => report_group_trend_stats()
%% }
-type get_report_group_trend_output() :: #{binary() => any()}.

%% Example:
%% list_reports_for_report_group_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"reports">> => list(string()())
%% }
-type list_reports_for_report_group_output() :: #{binary() => any()}.

%% Example:
%% project_environment() :: #{
%%   <<"certificate">> => string(),
%%   <<"computeConfiguration">> => compute_configuration(),
%%   <<"computeType">> => list(any()),
%%   <<"environmentVariables">> => list(environment_variable()()),
%%   <<"fleet">> => project_fleet(),
%%   <<"image">> => string(),
%%   <<"imagePullCredentialsType">> => list(any()),
%%   <<"privilegedMode">> => boolean(),
%%   <<"registryCredential">> => registry_credential(),
%%   <<"type">> => list(any())
%% }
-type project_environment() :: #{binary() => any()}.

%% Example:
%% list_builds_output() :: #{
%%   <<"ids">> => list(string()()),
%%   <<"nextToken">> => string()
%% }
-type list_builds_output() :: #{binary() => any()}.

%% Example:
%% batch_get_report_groups_input() :: #{
%%   <<"reportGroupArns">> := list(string()())
%% }
-type batch_get_report_groups_input() :: #{binary() => any()}.

%% Example:
%% compute_configuration() :: #{
%%   <<"disk">> => float(),
%%   <<"machineType">> => list(any()),
%%   <<"memory">> => float(),
%%   <<"vCpu">> => float()
%% }
-type compute_configuration() :: #{binary() => any()}.

%% Example:
%% report_group() :: #{
%%   <<"arn">> => string(),
%%   <<"created">> => non_neg_integer(),
%%   <<"exportConfig">> => report_export_config(),
%%   <<"lastModified">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => list(tag()()),
%%   <<"type">> => list(any())
%% }
-type report_group() :: #{binary() => any()}.

%% Example:
%% source_auth() :: #{
%%   <<"resource">> => string(),
%%   <<"type">> => list(any())
%% }
-type source_auth() :: #{binary() => any()}.

%% Example:
%% report_group_trend_stats() :: #{
%%   <<"average">> => string(),
%%   <<"max">> => string(),
%%   <<"min">> => string()
%% }
-type report_group_trend_stats() :: #{binary() => any()}.

%% Example:
%% delete_source_credentials_output() :: #{
%%   <<"arn">> => string()
%% }
-type delete_source_credentials_output() :: #{binary() => any()}.

-type batch_delete_builds_errors() ::
    invalid_input_exception().

-type batch_get_build_batches_errors() ::
    invalid_input_exception().

-type batch_get_builds_errors() ::
    invalid_input_exception().

-type batch_get_fleets_errors() ::
    invalid_input_exception().

-type batch_get_projects_errors() ::
    invalid_input_exception().

-type batch_get_report_groups_errors() ::
    invalid_input_exception().

-type batch_get_reports_errors() ::
    invalid_input_exception().

-type create_fleet_errors() ::
    resource_already_exists_exception() | 
    invalid_input_exception() | 
    account_limit_exceeded_exception().

-type create_project_errors() ::
    resource_already_exists_exception() | 
    invalid_input_exception() | 
    account_limit_exceeded_exception().

-type create_report_group_errors() ::
    resource_already_exists_exception() | 
    invalid_input_exception() | 
    account_limit_exceeded_exception().

-type create_webhook_errors() ::
    resource_already_exists_exception() | 
    o_auth_provider_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type delete_build_batch_errors() ::
    invalid_input_exception().

-type delete_fleet_errors() ::
    invalid_input_exception().

-type delete_project_errors() ::
    invalid_input_exception().

-type delete_report_errors() ::
    invalid_input_exception().

-type delete_report_group_errors() ::
    invalid_input_exception().

-type delete_resource_policy_errors() ::
    invalid_input_exception().

-type delete_source_credentials_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type delete_webhook_errors() ::
    o_auth_provider_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_code_coverages_errors() ::
    invalid_input_exception().

-type describe_test_cases_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type get_report_group_trend_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type get_resource_policy_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type import_source_credentials_errors() ::
    resource_already_exists_exception() | 
    invalid_input_exception() | 
    account_limit_exceeded_exception().

-type invalidate_project_cache_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type list_build_batches_errors() ::
    invalid_input_exception().

-type list_build_batches_for_project_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type list_builds_errors() ::
    invalid_input_exception().

-type list_builds_for_project_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type list_fleets_errors() ::
    invalid_input_exception().

-type list_projects_errors() ::
    invalid_input_exception().

-type list_report_groups_errors() ::
    invalid_input_exception().

-type list_reports_errors() ::
    invalid_input_exception().

-type list_reports_for_report_group_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type list_shared_projects_errors() ::
    invalid_input_exception().

-type list_shared_report_groups_errors() ::
    invalid_input_exception().

-type list_source_credentials_errors() ::
    invalid_input_exception().

-type put_resource_policy_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type retry_build_errors() ::
    invalid_input_exception() | 
    account_limit_exceeded_exception() | 
    resource_not_found_exception().

-type retry_build_batch_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type start_build_errors() ::
    invalid_input_exception() | 
    account_limit_exceeded_exception() | 
    resource_not_found_exception().

-type start_build_batch_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type stop_build_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type stop_build_batch_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type update_fleet_errors() ::
    invalid_input_exception() | 
    account_limit_exceeded_exception() | 
    resource_not_found_exception().

-type update_project_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type update_project_visibility_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type update_report_group_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type update_webhook_errors() ::
    o_auth_provider_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes one or more builds.
-spec batch_delete_builds(aws_client:aws_client(), batch_delete_builds_input()) ->
    {ok, batch_delete_builds_output(), tuple()} |
    {error, any()} |
    {error, batch_delete_builds_errors(), tuple()}.
batch_delete_builds(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_delete_builds(Client, Input, []).

-spec batch_delete_builds(aws_client:aws_client(), batch_delete_builds_input(), proplists:proplist()) ->
    {ok, batch_delete_builds_output(), tuple()} |
    {error, any()} |
    {error, batch_delete_builds_errors(), tuple()}.
batch_delete_builds(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDeleteBuilds">>, Input, Options).

%% @doc Retrieves information about one or more batch builds.
-spec batch_get_build_batches(aws_client:aws_client(), batch_get_build_batches_input()) ->
    {ok, batch_get_build_batches_output(), tuple()} |
    {error, any()} |
    {error, batch_get_build_batches_errors(), tuple()}.
batch_get_build_batches(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_build_batches(Client, Input, []).

-spec batch_get_build_batches(aws_client:aws_client(), batch_get_build_batches_input(), proplists:proplist()) ->
    {ok, batch_get_build_batches_output(), tuple()} |
    {error, any()} |
    {error, batch_get_build_batches_errors(), tuple()}.
batch_get_build_batches(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetBuildBatches">>, Input, Options).

%% @doc Gets information about one or more builds.
-spec batch_get_builds(aws_client:aws_client(), batch_get_builds_input()) ->
    {ok, batch_get_builds_output(), tuple()} |
    {error, any()} |
    {error, batch_get_builds_errors(), tuple()}.
batch_get_builds(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_builds(Client, Input, []).

-spec batch_get_builds(aws_client:aws_client(), batch_get_builds_input(), proplists:proplist()) ->
    {ok, batch_get_builds_output(), tuple()} |
    {error, any()} |
    {error, batch_get_builds_errors(), tuple()}.
batch_get_builds(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetBuilds">>, Input, Options).

%% @doc Gets information about one or more compute fleets.
-spec batch_get_fleets(aws_client:aws_client(), batch_get_fleets_input()) ->
    {ok, batch_get_fleets_output(), tuple()} |
    {error, any()} |
    {error, batch_get_fleets_errors(), tuple()}.
batch_get_fleets(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_fleets(Client, Input, []).

-spec batch_get_fleets(aws_client:aws_client(), batch_get_fleets_input(), proplists:proplist()) ->
    {ok, batch_get_fleets_output(), tuple()} |
    {error, any()} |
    {error, batch_get_fleets_errors(), tuple()}.
batch_get_fleets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetFleets">>, Input, Options).

%% @doc Gets information about one or more build projects.
-spec batch_get_projects(aws_client:aws_client(), batch_get_projects_input()) ->
    {ok, batch_get_projects_output(), tuple()} |
    {error, any()} |
    {error, batch_get_projects_errors(), tuple()}.
batch_get_projects(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_projects(Client, Input, []).

-spec batch_get_projects(aws_client:aws_client(), batch_get_projects_input(), proplists:proplist()) ->
    {ok, batch_get_projects_output(), tuple()} |
    {error, any()} |
    {error, batch_get_projects_errors(), tuple()}.
batch_get_projects(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetProjects">>, Input, Options).

%% @doc
%% Returns an array of report groups.
-spec batch_get_report_groups(aws_client:aws_client(), batch_get_report_groups_input()) ->
    {ok, batch_get_report_groups_output(), tuple()} |
    {error, any()} |
    {error, batch_get_report_groups_errors(), tuple()}.
batch_get_report_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_report_groups(Client, Input, []).

-spec batch_get_report_groups(aws_client:aws_client(), batch_get_report_groups_input(), proplists:proplist()) ->
    {ok, batch_get_report_groups_output(), tuple()} |
    {error, any()} |
    {error, batch_get_report_groups_errors(), tuple()}.
batch_get_report_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetReportGroups">>, Input, Options).

%% @doc
%% Returns an array of reports.
-spec batch_get_reports(aws_client:aws_client(), batch_get_reports_input()) ->
    {ok, batch_get_reports_output(), tuple()} |
    {error, any()} |
    {error, batch_get_reports_errors(), tuple()}.
batch_get_reports(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_reports(Client, Input, []).

-spec batch_get_reports(aws_client:aws_client(), batch_get_reports_input(), proplists:proplist()) ->
    {ok, batch_get_reports_output(), tuple()} |
    {error, any()} |
    {error, batch_get_reports_errors(), tuple()}.
batch_get_reports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetReports">>, Input, Options).

%% @doc Creates a compute fleet.
-spec create_fleet(aws_client:aws_client(), create_fleet_input()) ->
    {ok, create_fleet_output(), tuple()} |
    {error, any()} |
    {error, create_fleet_errors(), tuple()}.
create_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_fleet(Client, Input, []).

-spec create_fleet(aws_client:aws_client(), create_fleet_input(), proplists:proplist()) ->
    {ok, create_fleet_output(), tuple()} |
    {error, any()} |
    {error, create_fleet_errors(), tuple()}.
create_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFleet">>, Input, Options).

%% @doc Creates a build project.
-spec create_project(aws_client:aws_client(), create_project_input()) ->
    {ok, create_project_output(), tuple()} |
    {error, any()} |
    {error, create_project_errors(), tuple()}.
create_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_project(Client, Input, []).

-spec create_project(aws_client:aws_client(), create_project_input(), proplists:proplist()) ->
    {ok, create_project_output(), tuple()} |
    {error, any()} |
    {error, create_project_errors(), tuple()}.
create_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProject">>, Input, Options).

%% @doc
%% Creates a report group.
%%
%% A report group contains a collection of reports.
-spec create_report_group(aws_client:aws_client(), create_report_group_input()) ->
    {ok, create_report_group_output(), tuple()} |
    {error, any()} |
    {error, create_report_group_errors(), tuple()}.
create_report_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_report_group(Client, Input, []).

-spec create_report_group(aws_client:aws_client(), create_report_group_input(), proplists:proplist()) ->
    {ok, create_report_group_output(), tuple()} |
    {error, any()} |
    {error, create_report_group_errors(), tuple()}.
create_report_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateReportGroup">>, Input, Options).

%% @doc For an existing CodeBuild build project that has its source code
%% stored in a GitHub or
%% Bitbucket repository, enables CodeBuild to start rebuilding the source
%% code every time a
%% code change is pushed to the repository.
%%
%% If you enable webhooks for an CodeBuild project, and the project is used
%% as a build
%% step in CodePipeline, then two identical builds are created for each
%% commit. One build is
%% triggered through webhooks, and one through CodePipeline. Because billing
%% is on a per-build
%% basis, you are billed for both builds. Therefore, if you are using
%% CodePipeline, we
%% recommend that you disable webhooks in CodeBuild. In the CodeBuild
%% console, clear the
%% Webhook box. For more information, see step 5 in Change a Build
%% Project's Settings:
%% https://docs.aws.amazon.com/codebuild/latest/userguide/change-project.html#change-project-console.
-spec create_webhook(aws_client:aws_client(), create_webhook_input()) ->
    {ok, create_webhook_output(), tuple()} |
    {error, any()} |
    {error, create_webhook_errors(), tuple()}.
create_webhook(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_webhook(Client, Input, []).

-spec create_webhook(aws_client:aws_client(), create_webhook_input(), proplists:proplist()) ->
    {ok, create_webhook_output(), tuple()} |
    {error, any()} |
    {error, create_webhook_errors(), tuple()}.
create_webhook(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWebhook">>, Input, Options).

%% @doc Deletes a batch build.
-spec delete_build_batch(aws_client:aws_client(), delete_build_batch_input()) ->
    {ok, delete_build_batch_output(), tuple()} |
    {error, any()} |
    {error, delete_build_batch_errors(), tuple()}.
delete_build_batch(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_build_batch(Client, Input, []).

-spec delete_build_batch(aws_client:aws_client(), delete_build_batch_input(), proplists:proplist()) ->
    {ok, delete_build_batch_output(), tuple()} |
    {error, any()} |
    {error, delete_build_batch_errors(), tuple()}.
delete_build_batch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBuildBatch">>, Input, Options).

%% @doc Deletes a compute fleet.
%%
%% When you delete a compute fleet, its builds are not deleted.
-spec delete_fleet(aws_client:aws_client(), delete_fleet_input()) ->
    {ok, delete_fleet_output(), tuple()} |
    {error, any()} |
    {error, delete_fleet_errors(), tuple()}.
delete_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_fleet(Client, Input, []).

-spec delete_fleet(aws_client:aws_client(), delete_fleet_input(), proplists:proplist()) ->
    {ok, delete_fleet_output(), tuple()} |
    {error, any()} |
    {error, delete_fleet_errors(), tuple()}.
delete_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFleet">>, Input, Options).

%% @doc Deletes a build project.
%%
%% When you delete a project, its builds are not deleted.
-spec delete_project(aws_client:aws_client(), delete_project_input()) ->
    {ok, delete_project_output(), tuple()} |
    {error, any()} |
    {error, delete_project_errors(), tuple()}.
delete_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_project(Client, Input, []).

-spec delete_project(aws_client:aws_client(), delete_project_input(), proplists:proplist()) ->
    {ok, delete_project_output(), tuple()} |
    {error, any()} |
    {error, delete_project_errors(), tuple()}.
delete_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProject">>, Input, Options).

%% @doc
%% Deletes a report.
-spec delete_report(aws_client:aws_client(), delete_report_input()) ->
    {ok, delete_report_output(), tuple()} |
    {error, any()} |
    {error, delete_report_errors(), tuple()}.
delete_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_report(Client, Input, []).

-spec delete_report(aws_client:aws_client(), delete_report_input(), proplists:proplist()) ->
    {ok, delete_report_output(), tuple()} |
    {error, any()} |
    {error, delete_report_errors(), tuple()}.
delete_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteReport">>, Input, Options).

%% @doc Deletes a report group.
%%
%% Before you delete a report group, you must delete its reports.
-spec delete_report_group(aws_client:aws_client(), delete_report_group_input()) ->
    {ok, delete_report_group_output(), tuple()} |
    {error, any()} |
    {error, delete_report_group_errors(), tuple()}.
delete_report_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_report_group(Client, Input, []).

-spec delete_report_group(aws_client:aws_client(), delete_report_group_input(), proplists:proplist()) ->
    {ok, delete_report_group_output(), tuple()} |
    {error, any()} |
    {error, delete_report_group_errors(), tuple()}.
delete_report_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteReportGroup">>, Input, Options).

%% @doc Deletes a resource policy that is identified by its resource ARN.
-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_input()) ->
    {ok, delete_resource_policy_output(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_policy(Client, Input, []).

-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_input(), proplists:proplist()) ->
    {ok, delete_resource_policy_output(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourcePolicy">>, Input, Options).

%% @doc Deletes a set of GitHub, GitHub Enterprise, or Bitbucket source
%% credentials.
-spec delete_source_credentials(aws_client:aws_client(), delete_source_credentials_input()) ->
    {ok, delete_source_credentials_output(), tuple()} |
    {error, any()} |
    {error, delete_source_credentials_errors(), tuple()}.
delete_source_credentials(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_source_credentials(Client, Input, []).

-spec delete_source_credentials(aws_client:aws_client(), delete_source_credentials_input(), proplists:proplist()) ->
    {ok, delete_source_credentials_output(), tuple()} |
    {error, any()} |
    {error, delete_source_credentials_errors(), tuple()}.
delete_source_credentials(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSourceCredentials">>, Input, Options).

%% @doc For an existing CodeBuild build project that has its source code
%% stored in a GitHub or
%% Bitbucket repository, stops CodeBuild from rebuilding the source code
%% every time a code
%% change is pushed to the repository.
-spec delete_webhook(aws_client:aws_client(), delete_webhook_input()) ->
    {ok, delete_webhook_output(), tuple()} |
    {error, any()} |
    {error, delete_webhook_errors(), tuple()}.
delete_webhook(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_webhook(Client, Input, []).

-spec delete_webhook(aws_client:aws_client(), delete_webhook_input(), proplists:proplist()) ->
    {ok, delete_webhook_output(), tuple()} |
    {error, any()} |
    {error, delete_webhook_errors(), tuple()}.
delete_webhook(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWebhook">>, Input, Options).

%% @doc Retrieves one or more code coverage reports.
-spec describe_code_coverages(aws_client:aws_client(), describe_code_coverages_input()) ->
    {ok, describe_code_coverages_output(), tuple()} |
    {error, any()} |
    {error, describe_code_coverages_errors(), tuple()}.
describe_code_coverages(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_code_coverages(Client, Input, []).

-spec describe_code_coverages(aws_client:aws_client(), describe_code_coverages_input(), proplists:proplist()) ->
    {ok, describe_code_coverages_output(), tuple()} |
    {error, any()} |
    {error, describe_code_coverages_errors(), tuple()}.
describe_code_coverages(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCodeCoverages">>, Input, Options).

%% @doc
%% Returns a list of details about test cases for a report.
-spec describe_test_cases(aws_client:aws_client(), describe_test_cases_input()) ->
    {ok, describe_test_cases_output(), tuple()} |
    {error, any()} |
    {error, describe_test_cases_errors(), tuple()}.
describe_test_cases(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_test_cases(Client, Input, []).

-spec describe_test_cases(aws_client:aws_client(), describe_test_cases_input(), proplists:proplist()) ->
    {ok, describe_test_cases_output(), tuple()} |
    {error, any()} |
    {error, describe_test_cases_errors(), tuple()}.
describe_test_cases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTestCases">>, Input, Options).

%% @doc Analyzes and accumulates test report values for the specified test
%% reports.
-spec get_report_group_trend(aws_client:aws_client(), get_report_group_trend_input()) ->
    {ok, get_report_group_trend_output(), tuple()} |
    {error, any()} |
    {error, get_report_group_trend_errors(), tuple()}.
get_report_group_trend(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_report_group_trend(Client, Input, []).

-spec get_report_group_trend(aws_client:aws_client(), get_report_group_trend_input(), proplists:proplist()) ->
    {ok, get_report_group_trend_output(), tuple()} |
    {error, any()} |
    {error, get_report_group_trend_errors(), tuple()}.
get_report_group_trend(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetReportGroupTrend">>, Input, Options).

%% @doc Gets a resource policy that is identified by its resource ARN.
-spec get_resource_policy(aws_client:aws_client(), get_resource_policy_input()) ->
    {ok, get_resource_policy_output(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_policy(Client, Input, []).

-spec get_resource_policy(aws_client:aws_client(), get_resource_policy_input(), proplists:proplist()) ->
    {ok, get_resource_policy_output(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourcePolicy">>, Input, Options).

%% @doc Imports the source repository credentials for an CodeBuild project
%% that has its
%% source code stored in a GitHub, GitHub Enterprise, GitLab, GitLab Self
%% Managed, or Bitbucket repository.
-spec import_source_credentials(aws_client:aws_client(), import_source_credentials_input()) ->
    {ok, import_source_credentials_output(), tuple()} |
    {error, any()} |
    {error, import_source_credentials_errors(), tuple()}.
import_source_credentials(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_source_credentials(Client, Input, []).

-spec import_source_credentials(aws_client:aws_client(), import_source_credentials_input(), proplists:proplist()) ->
    {ok, import_source_credentials_output(), tuple()} |
    {error, any()} |
    {error, import_source_credentials_errors(), tuple()}.
import_source_credentials(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportSourceCredentials">>, Input, Options).

%% @doc Resets the cache for a project.
-spec invalidate_project_cache(aws_client:aws_client(), invalidate_project_cache_input()) ->
    {ok, invalidate_project_cache_output(), tuple()} |
    {error, any()} |
    {error, invalidate_project_cache_errors(), tuple()}.
invalidate_project_cache(Client, Input)
  when is_map(Client), is_map(Input) ->
    invalidate_project_cache(Client, Input, []).

-spec invalidate_project_cache(aws_client:aws_client(), invalidate_project_cache_input(), proplists:proplist()) ->
    {ok, invalidate_project_cache_output(), tuple()} |
    {error, any()} |
    {error, invalidate_project_cache_errors(), tuple()}.
invalidate_project_cache(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"InvalidateProjectCache">>, Input, Options).

%% @doc Retrieves the identifiers of your build batches in the current
%% region.
-spec list_build_batches(aws_client:aws_client(), list_build_batches_input()) ->
    {ok, list_build_batches_output(), tuple()} |
    {error, any()} |
    {error, list_build_batches_errors(), tuple()}.
list_build_batches(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_build_batches(Client, Input, []).

-spec list_build_batches(aws_client:aws_client(), list_build_batches_input(), proplists:proplist()) ->
    {ok, list_build_batches_output(), tuple()} |
    {error, any()} |
    {error, list_build_batches_errors(), tuple()}.
list_build_batches(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBuildBatches">>, Input, Options).

%% @doc Retrieves the identifiers of the build batches for a specific
%% project.
-spec list_build_batches_for_project(aws_client:aws_client(), list_build_batches_for_project_input()) ->
    {ok, list_build_batches_for_project_output(), tuple()} |
    {error, any()} |
    {error, list_build_batches_for_project_errors(), tuple()}.
list_build_batches_for_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_build_batches_for_project(Client, Input, []).

-spec list_build_batches_for_project(aws_client:aws_client(), list_build_batches_for_project_input(), proplists:proplist()) ->
    {ok, list_build_batches_for_project_output(), tuple()} |
    {error, any()} |
    {error, list_build_batches_for_project_errors(), tuple()}.
list_build_batches_for_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBuildBatchesForProject">>, Input, Options).

%% @doc Gets a list of build IDs, with each build ID representing a single
%% build.
-spec list_builds(aws_client:aws_client(), list_builds_input()) ->
    {ok, list_builds_output(), tuple()} |
    {error, any()} |
    {error, list_builds_errors(), tuple()}.
list_builds(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_builds(Client, Input, []).

-spec list_builds(aws_client:aws_client(), list_builds_input(), proplists:proplist()) ->
    {ok, list_builds_output(), tuple()} |
    {error, any()} |
    {error, list_builds_errors(), tuple()}.
list_builds(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBuilds">>, Input, Options).

%% @doc Gets a list of build identifiers for the specified build project,
%% with each build
%% identifier representing a single build.
-spec list_builds_for_project(aws_client:aws_client(), list_builds_for_project_input()) ->
    {ok, list_builds_for_project_output(), tuple()} |
    {error, any()} |
    {error, list_builds_for_project_errors(), tuple()}.
list_builds_for_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_builds_for_project(Client, Input, []).

-spec list_builds_for_project(aws_client:aws_client(), list_builds_for_project_input(), proplists:proplist()) ->
    {ok, list_builds_for_project_output(), tuple()} |
    {error, any()} |
    {error, list_builds_for_project_errors(), tuple()}.
list_builds_for_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBuildsForProject">>, Input, Options).

%% @doc Gets information about Docker images that are managed by CodeBuild.
-spec list_curated_environment_images(aws_client:aws_client(), list_curated_environment_images_input()) ->
    {ok, list_curated_environment_images_output(), tuple()} |
    {error, any()}.
list_curated_environment_images(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_curated_environment_images(Client, Input, []).

-spec list_curated_environment_images(aws_client:aws_client(), list_curated_environment_images_input(), proplists:proplist()) ->
    {ok, list_curated_environment_images_output(), tuple()} |
    {error, any()}.
list_curated_environment_images(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCuratedEnvironmentImages">>, Input, Options).

%% @doc Gets a list of compute fleet names with each compute fleet name
%% representing a single compute fleet.
-spec list_fleets(aws_client:aws_client(), list_fleets_input()) ->
    {ok, list_fleets_output(), tuple()} |
    {error, any()} |
    {error, list_fleets_errors(), tuple()}.
list_fleets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_fleets(Client, Input, []).

-spec list_fleets(aws_client:aws_client(), list_fleets_input(), proplists:proplist()) ->
    {ok, list_fleets_output(), tuple()} |
    {error, any()} |
    {error, list_fleets_errors(), tuple()}.
list_fleets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFleets">>, Input, Options).

%% @doc Gets a list of build project names, with each build project name
%% representing a single
%% build project.
-spec list_projects(aws_client:aws_client(), list_projects_input()) ->
    {ok, list_projects_output(), tuple()} |
    {error, any()} |
    {error, list_projects_errors(), tuple()}.
list_projects(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_projects(Client, Input, []).

-spec list_projects(aws_client:aws_client(), list_projects_input(), proplists:proplist()) ->
    {ok, list_projects_output(), tuple()} |
    {error, any()} |
    {error, list_projects_errors(), tuple()}.
list_projects(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProjects">>, Input, Options).

%% @doc
%% Gets a list ARNs for the report groups in the current Amazon Web Services
%% account.
-spec list_report_groups(aws_client:aws_client(), list_report_groups_input()) ->
    {ok, list_report_groups_output(), tuple()} |
    {error, any()} |
    {error, list_report_groups_errors(), tuple()}.
list_report_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_report_groups(Client, Input, []).

-spec list_report_groups(aws_client:aws_client(), list_report_groups_input(), proplists:proplist()) ->
    {ok, list_report_groups_output(), tuple()} |
    {error, any()} |
    {error, list_report_groups_errors(), tuple()}.
list_report_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListReportGroups">>, Input, Options).

%% @doc
%% Returns a list of ARNs for the reports in the current Amazon Web Services
%% account.
-spec list_reports(aws_client:aws_client(), list_reports_input()) ->
    {ok, list_reports_output(), tuple()} |
    {error, any()} |
    {error, list_reports_errors(), tuple()}.
list_reports(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_reports(Client, Input, []).

-spec list_reports(aws_client:aws_client(), list_reports_input(), proplists:proplist()) ->
    {ok, list_reports_output(), tuple()} |
    {error, any()} |
    {error, list_reports_errors(), tuple()}.
list_reports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListReports">>, Input, Options).

%% @doc
%% Returns a list of ARNs for the reports that belong to a `ReportGroup'.
-spec list_reports_for_report_group(aws_client:aws_client(), list_reports_for_report_group_input()) ->
    {ok, list_reports_for_report_group_output(), tuple()} |
    {error, any()} |
    {error, list_reports_for_report_group_errors(), tuple()}.
list_reports_for_report_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_reports_for_report_group(Client, Input, []).

-spec list_reports_for_report_group(aws_client:aws_client(), list_reports_for_report_group_input(), proplists:proplist()) ->
    {ok, list_reports_for_report_group_output(), tuple()} |
    {error, any()} |
    {error, list_reports_for_report_group_errors(), tuple()}.
list_reports_for_report_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListReportsForReportGroup">>, Input, Options).

%% @doc Gets a list of projects that are shared with other Amazon Web
%% Services accounts or users.
-spec list_shared_projects(aws_client:aws_client(), list_shared_projects_input()) ->
    {ok, list_shared_projects_output(), tuple()} |
    {error, any()} |
    {error, list_shared_projects_errors(), tuple()}.
list_shared_projects(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_shared_projects(Client, Input, []).

-spec list_shared_projects(aws_client:aws_client(), list_shared_projects_input(), proplists:proplist()) ->
    {ok, list_shared_projects_output(), tuple()} |
    {error, any()} |
    {error, list_shared_projects_errors(), tuple()}.
list_shared_projects(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSharedProjects">>, Input, Options).

%% @doc Gets a list of report groups that are shared with other Amazon Web
%% Services accounts or users.
-spec list_shared_report_groups(aws_client:aws_client(), list_shared_report_groups_input()) ->
    {ok, list_shared_report_groups_output(), tuple()} |
    {error, any()} |
    {error, list_shared_report_groups_errors(), tuple()}.
list_shared_report_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_shared_report_groups(Client, Input, []).

-spec list_shared_report_groups(aws_client:aws_client(), list_shared_report_groups_input(), proplists:proplist()) ->
    {ok, list_shared_report_groups_output(), tuple()} |
    {error, any()} |
    {error, list_shared_report_groups_errors(), tuple()}.
list_shared_report_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSharedReportGroups">>, Input, Options).

%% @doc Returns a list of `SourceCredentialsInfo' objects.
-spec list_source_credentials(aws_client:aws_client(), list_source_credentials_input()) ->
    {ok, list_source_credentials_output(), tuple()} |
    {error, any()} |
    {error, list_source_credentials_errors(), tuple()}.
list_source_credentials(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_source_credentials(Client, Input, []).

-spec list_source_credentials(aws_client:aws_client(), list_source_credentials_input(), proplists:proplist()) ->
    {ok, list_source_credentials_output(), tuple()} |
    {error, any()} |
    {error, list_source_credentials_errors(), tuple()}.
list_source_credentials(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSourceCredentials">>, Input, Options).

%% @doc Stores a resource policy for the ARN of a `Project' or
%% `ReportGroup' object.
-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_input()) ->
    {ok, put_resource_policy_output(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resource_policy(Client, Input, []).

-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_input(), proplists:proplist()) ->
    {ok, put_resource_policy_output(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResourcePolicy">>, Input, Options).

%% @doc Restarts a build.
-spec retry_build(aws_client:aws_client(), retry_build_input()) ->
    {ok, retry_build_output(), tuple()} |
    {error, any()} |
    {error, retry_build_errors(), tuple()}.
retry_build(Client, Input)
  when is_map(Client), is_map(Input) ->
    retry_build(Client, Input, []).

-spec retry_build(aws_client:aws_client(), retry_build_input(), proplists:proplist()) ->
    {ok, retry_build_output(), tuple()} |
    {error, any()} |
    {error, retry_build_errors(), tuple()}.
retry_build(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RetryBuild">>, Input, Options).

%% @doc Restarts a failed batch build.
%%
%% Only batch builds that have failed can be retried.
-spec retry_build_batch(aws_client:aws_client(), retry_build_batch_input()) ->
    {ok, retry_build_batch_output(), tuple()} |
    {error, any()} |
    {error, retry_build_batch_errors(), tuple()}.
retry_build_batch(Client, Input)
  when is_map(Client), is_map(Input) ->
    retry_build_batch(Client, Input, []).

-spec retry_build_batch(aws_client:aws_client(), retry_build_batch_input(), proplists:proplist()) ->
    {ok, retry_build_batch_output(), tuple()} |
    {error, any()} |
    {error, retry_build_batch_errors(), tuple()}.
retry_build_batch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RetryBuildBatch">>, Input, Options).

%% @doc Starts running a build with the settings defined in the project.
%%
%% These setting include: how to run a build,
%% where to get the source code, which build environment to use, which build
%% commands to run, and where to store the build output.
%%
%% You can also start a build run by overriding some of the build settings in
%% the project. The overrides only apply for that
%% specific start build request. The settings in the project are unaltered.
-spec start_build(aws_client:aws_client(), start_build_input()) ->
    {ok, start_build_output(), tuple()} |
    {error, any()} |
    {error, start_build_errors(), tuple()}.
start_build(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_build(Client, Input, []).

-spec start_build(aws_client:aws_client(), start_build_input(), proplists:proplist()) ->
    {ok, start_build_output(), tuple()} |
    {error, any()} |
    {error, start_build_errors(), tuple()}.
start_build(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartBuild">>, Input, Options).

%% @doc Starts a batch build for a project.
-spec start_build_batch(aws_client:aws_client(), start_build_batch_input()) ->
    {ok, start_build_batch_output(), tuple()} |
    {error, any()} |
    {error, start_build_batch_errors(), tuple()}.
start_build_batch(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_build_batch(Client, Input, []).

-spec start_build_batch(aws_client:aws_client(), start_build_batch_input(), proplists:proplist()) ->
    {ok, start_build_batch_output(), tuple()} |
    {error, any()} |
    {error, start_build_batch_errors(), tuple()}.
start_build_batch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartBuildBatch">>, Input, Options).

%% @doc Attempts to stop running a build.
-spec stop_build(aws_client:aws_client(), stop_build_input()) ->
    {ok, stop_build_output(), tuple()} |
    {error, any()} |
    {error, stop_build_errors(), tuple()}.
stop_build(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_build(Client, Input, []).

-spec stop_build(aws_client:aws_client(), stop_build_input(), proplists:proplist()) ->
    {ok, stop_build_output(), tuple()} |
    {error, any()} |
    {error, stop_build_errors(), tuple()}.
stop_build(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopBuild">>, Input, Options).

%% @doc Stops a running batch build.
-spec stop_build_batch(aws_client:aws_client(), stop_build_batch_input()) ->
    {ok, stop_build_batch_output(), tuple()} |
    {error, any()} |
    {error, stop_build_batch_errors(), tuple()}.
stop_build_batch(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_build_batch(Client, Input, []).

-spec stop_build_batch(aws_client:aws_client(), stop_build_batch_input(), proplists:proplist()) ->
    {ok, stop_build_batch_output(), tuple()} |
    {error, any()} |
    {error, stop_build_batch_errors(), tuple()}.
stop_build_batch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopBuildBatch">>, Input, Options).

%% @doc Updates a compute fleet.
-spec update_fleet(aws_client:aws_client(), update_fleet_input()) ->
    {ok, update_fleet_output(), tuple()} |
    {error, any()} |
    {error, update_fleet_errors(), tuple()}.
update_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_fleet(Client, Input, []).

-spec update_fleet(aws_client:aws_client(), update_fleet_input(), proplists:proplist()) ->
    {ok, update_fleet_output(), tuple()} |
    {error, any()} |
    {error, update_fleet_errors(), tuple()}.
update_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFleet">>, Input, Options).

%% @doc Changes the settings of a build project.
-spec update_project(aws_client:aws_client(), update_project_input()) ->
    {ok, update_project_output(), tuple()} |
    {error, any()} |
    {error, update_project_errors(), tuple()}.
update_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_project(Client, Input, []).

-spec update_project(aws_client:aws_client(), update_project_input(), proplists:proplist()) ->
    {ok, update_project_output(), tuple()} |
    {error, any()} |
    {error, update_project_errors(), tuple()}.
update_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProject">>, Input, Options).

%% @doc Changes the public visibility for a project.
%%
%% The project's build results, logs, and
%% artifacts are available to the general public. For more information, see
%% Public build
%% projects:
%% https://docs.aws.amazon.com/codebuild/latest/userguide/public-builds.html
%% in the CodeBuild User Guide.
%%
%% The following should be kept in mind when making your projects public:
%%
%% All of a project's build results, logs, and artifacts, including
%% builds that were run
%% when the project was private, are available to the general public.
%%
%% All build logs and artifacts are available to the public. Environment
%% variables, source
%% code, and other sensitive information may have been output to the build
%% logs and artifacts.
%% You must be careful about what information is output to the build logs.
%% Some best practice
%% are:
%%
%% Do not store sensitive values in environment variables. We recommend that
%% you use an Amazon EC2 Systems Manager Parameter Store
%% or Secrets Manager to store sensitive values.
%%
%% Follow Best
%% practices for using webhooks:
%% https://docs.aws.amazon.com/codebuild/latest/userguide/webhooks.html#webhook-best-practices
%% in the CodeBuild User
%% Guide to limit which entities can trigger a build, and do
%% not store the buildspec in the project itself, to ensure that your
%% webhooks are as
%% secure as possible.
%%
%% A malicious user can use public builds to distribute malicious artifacts.
%% We recommend
%% that you review all pull requests to verify that the pull request is a
%% legitimate change. We
%% also recommend that you validate any artifacts with their checksums to
%% make sure that the
%% correct artifacts are being downloaded.
-spec update_project_visibility(aws_client:aws_client(), update_project_visibility_input()) ->
    {ok, update_project_visibility_output(), tuple()} |
    {error, any()} |
    {error, update_project_visibility_errors(), tuple()}.
update_project_visibility(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_project_visibility(Client, Input, []).

-spec update_project_visibility(aws_client:aws_client(), update_project_visibility_input(), proplists:proplist()) ->
    {ok, update_project_visibility_output(), tuple()} |
    {error, any()} |
    {error, update_project_visibility_errors(), tuple()}.
update_project_visibility(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProjectVisibility">>, Input, Options).

%% @doc
%% Updates a report group.
-spec update_report_group(aws_client:aws_client(), update_report_group_input()) ->
    {ok, update_report_group_output(), tuple()} |
    {error, any()} |
    {error, update_report_group_errors(), tuple()}.
update_report_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_report_group(Client, Input, []).

-spec update_report_group(aws_client:aws_client(), update_report_group_input(), proplists:proplist()) ->
    {ok, update_report_group_output(), tuple()} |
    {error, any()} |
    {error, update_report_group_errors(), tuple()}.
update_report_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateReportGroup">>, Input, Options).

%% @doc Updates the webhook associated with an CodeBuild build project.
%%
%% If you use Bitbucket for your repository, `rotateSecret' is ignored.
-spec update_webhook(aws_client:aws_client(), update_webhook_input()) ->
    {ok, update_webhook_output(), tuple()} |
    {error, any()} |
    {error, update_webhook_errors(), tuple()}.
update_webhook(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_webhook(Client, Input, []).

-spec update_webhook(aws_client:aws_client(), update_webhook_input(), proplists:proplist()) ->
    {ok, update_webhook_output(), tuple()} |
    {error, any()} |
    {error, update_webhook_errors(), tuple()}.
update_webhook(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateWebhook">>, Input, Options).

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
    Client1 = Client#{service => <<"codebuild">>},
    Host = build_host(<<"codebuild">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"CodeBuild_20161006.", Action/binary>>}
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
