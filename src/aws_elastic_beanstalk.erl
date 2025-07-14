%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Elastic Beanstalk
%%
%% AWS Elastic Beanstalk makes it easy for you to create, deploy, and manage
%% scalable,
%% fault-tolerant applications running on the Amazon Web Services cloud.
%%
%% For more information about this product, go to the AWS Elastic Beanstalk:
%% http://aws.amazon.com/elasticbeanstalk/ details page. The location of the
%% latest AWS Elastic Beanstalk WSDL is
%% [https://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl].
%% To install the Software Development Kits (SDKs), Integrated Development
%% Environment (IDE)
%% Toolkits, and command line tools that enable you to access the API, go to
%% Tools for Amazon Web Services: http://aws.amazon.com/tools/.
%%
%% Endpoints
%%
%% For a list of region-specific endpoints that AWS Elastic Beanstalk
%% supports, go to
%% Regions and Endpoints:
%% https://docs.aws.amazon.com/general/latest/gr/rande.html#elasticbeanstalk_region
%% in the Amazon Web Services
%% Glossary.
-module(aws_elastic_beanstalk).

-export([abort_environment_update/2,
         abort_environment_update/3,
         apply_environment_managed_action/2,
         apply_environment_managed_action/3,
         associate_environment_operations_role/2,
         associate_environment_operations_role/3,
         check_dns_availability/2,
         check_dns_availability/3,
         compose_environments/2,
         compose_environments/3,
         create_application/2,
         create_application/3,
         create_application_version/2,
         create_application_version/3,
         create_configuration_template/2,
         create_configuration_template/3,
         create_environment/2,
         create_environment/3,
         create_platform_version/2,
         create_platform_version/3,
         create_storage_location/2,
         create_storage_location/3,
         delete_application/2,
         delete_application/3,
         delete_application_version/2,
         delete_application_version/3,
         delete_configuration_template/2,
         delete_configuration_template/3,
         delete_environment_configuration/2,
         delete_environment_configuration/3,
         delete_platform_version/2,
         delete_platform_version/3,
         describe_account_attributes/2,
         describe_account_attributes/3,
         describe_application_versions/2,
         describe_application_versions/3,
         describe_applications/2,
         describe_applications/3,
         describe_configuration_options/2,
         describe_configuration_options/3,
         describe_configuration_settings/2,
         describe_configuration_settings/3,
         describe_environment_health/2,
         describe_environment_health/3,
         describe_environment_managed_action_history/2,
         describe_environment_managed_action_history/3,
         describe_environment_managed_actions/2,
         describe_environment_managed_actions/3,
         describe_environment_resources/2,
         describe_environment_resources/3,
         describe_environments/2,
         describe_environments/3,
         describe_events/2,
         describe_events/3,
         describe_instances_health/2,
         describe_instances_health/3,
         describe_platform_version/2,
         describe_platform_version/3,
         disassociate_environment_operations_role/2,
         disassociate_environment_operations_role/3,
         list_available_solution_stacks/2,
         list_available_solution_stacks/3,
         list_platform_branches/2,
         list_platform_branches/3,
         list_platform_versions/2,
         list_platform_versions/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         rebuild_environment/2,
         rebuild_environment/3,
         request_environment_info/2,
         request_environment_info/3,
         restart_app_server/2,
         restart_app_server/3,
         retrieve_environment_info/2,
         retrieve_environment_info/3,
         swap_environment_cnames/2,
         swap_environment_cnames/3,
         terminate_environment/2,
         terminate_environment/3,
         update_application/2,
         update_application/3,
         update_application_resource_lifecycle/2,
         update_application_resource_lifecycle/3,
         update_application_version/2,
         update_application_version/3,
         update_configuration_template/2,
         update_configuration_template/3,
         update_environment/2,
         update_environment/3,
         update_tags_for_resource/2,
         update_tags_for_resource/3,
         validate_configuration_settings/2,
         validate_configuration_settings/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% environment_descriptions_message() :: #{
%%   <<"Environments">> => list(environment_description()),
%%   <<"NextToken">> => string()
%% }
-type environment_descriptions_message() :: #{binary() => any()}.

%% Example:
%% create_platform_version_request() :: #{
%%   <<"EnvironmentName">> => string(),
%%   <<"OptionSettings">> => list(configuration_option_setting()),
%%   <<"PlatformDefinitionBundle">> := s3_location(),
%%   <<"PlatformName">> := string(),
%%   <<"PlatformVersion">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_platform_version_request() :: #{binary() => any()}.

%% Example:
%% disassociate_environment_operations_role_message() :: #{
%%   <<"EnvironmentName">> := string()
%% }
-type disassociate_environment_operations_role_message() :: #{binary() => any()}.

%% Example:
%% c_p_u_utilization() :: #{
%%   <<"IOWait">> => float(),
%%   <<"IRQ">> => float(),
%%   <<"Idle">> => float(),
%%   <<"Nice">> => float(),
%%   <<"Privileged">> => float(),
%%   <<"SoftIRQ">> => float(),
%%   <<"System">> => float(),
%%   <<"User">> => float()
%% }
-type c_p_u_utilization() :: #{binary() => any()}.

%% Example:
%% apply_environment_managed_action_request() :: #{
%%   <<"ActionId">> := string(),
%%   <<"EnvironmentId">> => string(),
%%   <<"EnvironmentName">> => string()
%% }
-type apply_environment_managed_action_request() :: #{binary() => any()}.

%% Example:
%% update_configuration_template_message() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"Description">> => string(),
%%   <<"OptionSettings">> => list(configuration_option_setting()),
%%   <<"OptionsToRemove">> => list(option_specification()),
%%   <<"TemplateName">> := string()
%% }
-type update_configuration_template_message() :: #{binary() => any()}.

%% Example:
%% compose_environments_message() :: #{
%%   <<"ApplicationName">> => string(),
%%   <<"GroupName">> => string(),
%%   <<"VersionLabels">> => list(string())
%% }
-type compose_environments_message() :: #{binary() => any()}.

%% Example:
%% rebuild_environment_message() :: #{
%%   <<"EnvironmentId">> => string(),
%%   <<"EnvironmentName">> => string()
%% }
-type rebuild_environment_message() :: #{binary() => any()}.

%% Example:
%% environment_link() :: #{
%%   <<"EnvironmentName">> => string(),
%%   <<"LinkName">> => string()
%% }
-type environment_link() :: #{binary() => any()}.

%% Example:
%% status_codes() :: #{
%%   <<"Status2xx">> => integer(),
%%   <<"Status3xx">> => integer(),
%%   <<"Status4xx">> => integer(),
%%   <<"Status5xx">> => integer()
%% }
-type status_codes() :: #{binary() => any()}.

%% Example:
%% max_age_rule() :: #{
%%   <<"DeleteSourceFromS3">> => boolean(),
%%   <<"Enabled">> => boolean(),
%%   <<"MaxAgeInDays">> => integer()
%% }
-type max_age_rule() :: #{binary() => any()}.

%% Example:
%% resource_type_not_supported_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_type_not_supported_exception() :: #{binary() => any()}.

%% Example:
%% solution_stack_description() :: #{
%%   <<"PermittedFileTypes">> => list(string()),
%%   <<"SolutionStackName">> => string()
%% }
-type solution_stack_description() :: #{binary() => any()}.

%% Example:
%% delete_platform_version_request() :: #{
%%   <<"PlatformArn">> => string()
%% }
-type delete_platform_version_request() :: #{binary() => any()}.

%% Example:
%% associate_environment_operations_role_message() :: #{
%%   <<"EnvironmentName">> := string(),
%%   <<"OperationsRole">> := string()
%% }
-type associate_environment_operations_role_message() :: #{binary() => any()}.

%% Example:
%% single_instance_health() :: #{
%%   <<"ApplicationMetrics">> => application_metrics(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"Causes">> => list(string()),
%%   <<"Color">> => string(),
%%   <<"Deployment">> => deployment(),
%%   <<"HealthStatus">> => string(),
%%   <<"InstanceId">> => string(),
%%   <<"InstanceType">> => string(),
%%   <<"LaunchedAt">> => non_neg_integer(),
%%   <<"System">> => system_status()
%% }
-type single_instance_health() :: #{binary() => any()}.

%% Example:
%% describe_environments_message() :: #{
%%   <<"ApplicationName">> => string(),
%%   <<"EnvironmentIds">> => list(string()),
%%   <<"EnvironmentNames">> => list(string()),
%%   <<"IncludeDeleted">> => boolean(),
%%   <<"IncludedDeletedBackTo">> => non_neg_integer(),
%%   <<"MaxRecords">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"VersionLabel">> => string()
%% }
-type describe_environments_message() :: #{binary() => any()}.

%% Example:
%% too_many_buckets_exception() :: #{
%%   <<"message">> => string()
%% }
-type too_many_buckets_exception() :: #{binary() => any()}.

%% Example:
%% too_many_environments_exception() :: #{
%%   <<"message">> => string()
%% }
-type too_many_environments_exception() :: #{binary() => any()}.

%% Example:
%% trigger() :: #{
%%   <<"Name">> => string()
%% }
-type trigger() :: #{binary() => any()}.

%% Example:
%% option_restriction_regex() :: #{
%%   <<"Label">> => string(),
%%   <<"Pattern">> => string()
%% }
-type option_restriction_regex() :: #{binary() => any()}.

%% Example:
%% list_platform_versions_request() :: #{
%%   <<"Filters">> => list(platform_filter()),
%%   <<"MaxRecords">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_platform_versions_request() :: #{binary() => any()}.

%% Example:
%% check_dns_availability_result_message() :: #{
%%   <<"Available">> => boolean(),
%%   <<"FullyQualifiedCNAME">> => string()
%% }
-type check_dns_availability_result_message() :: #{binary() => any()}.

%% Example:
%% deployment() :: #{
%%   <<"DeploymentId">> => float(),
%%   <<"DeploymentTime">> => non_neg_integer(),
%%   <<"Status">> => string(),
%%   <<"VersionLabel">> => string()
%% }
-type deployment() :: #{binary() => any()}.

%% Example:
%% too_many_platforms_exception() :: #{
%%   <<"message">> => string()
%% }
-type too_many_platforms_exception() :: #{binary() => any()}.

%% Example:
%% delete_application_message() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"TerminateEnvByForce">> => boolean()
%% }
-type delete_application_message() :: #{binary() => any()}.

%% Example:
%% describe_environment_managed_action_history_result() :: #{
%%   <<"ManagedActionHistoryItems">> => list(managed_action_history_item()),
%%   <<"NextToken">> => string()
%% }
-type describe_environment_managed_action_history_result() :: #{binary() => any()}.

%% Example:
%% listener() :: #{
%%   <<"Port">> => integer(),
%%   <<"Protocol">> => string()
%% }
-type listener() :: #{binary() => any()}.

%% Example:
%% describe_instances_health_result() :: #{
%%   <<"InstanceHealthList">> => list(single_instance_health()),
%%   <<"NextToken">> => string(),
%%   <<"RefreshedAt">> => non_neg_integer()
%% }
-type describe_instances_health_result() :: #{binary() => any()}.

%% Example:
%% managed_action() :: #{
%%   <<"ActionDescription">> => string(),
%%   <<"ActionId">> => string(),
%%   <<"ActionType">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"WindowStartTime">> => non_neg_integer()
%% }
-type managed_action() :: #{binary() => any()}.

%% Example:
%% build_configuration() :: #{
%%   <<"ArtifactName">> => string(),
%%   <<"CodeBuildServiceRole">> => string(),
%%   <<"ComputeType">> => list(any()),
%%   <<"Image">> => string(),
%%   <<"TimeoutInMinutes">> => integer()
%% }
-type build_configuration() :: #{binary() => any()}.

%% Example:
%% describe_instances_health_request() :: #{
%%   <<"AttributeNames">> => list(list(any())()),
%%   <<"EnvironmentId">> => string(),
%%   <<"EnvironmentName">> => string(),
%%   <<"NextToken">> => string()
%% }
-type describe_instances_health_request() :: #{binary() => any()}.

%% Example:
%% apply_environment_managed_action_result() :: #{
%%   <<"ActionDescription">> => string(),
%%   <<"ActionId">> => string(),
%%   <<"ActionType">> => list(any()),
%%   <<"Status">> => string()
%% }
-type apply_environment_managed_action_result() :: #{binary() => any()}.

%% Example:
%% custom_ami() :: #{
%%   <<"ImageId">> => string(),
%%   <<"VirtualizationType">> => string()
%% }
-type custom_ami() :: #{binary() => any()}.

%% Example:
%% event_descriptions_message() :: #{
%%   <<"Events">> => list(event_description()),
%%   <<"NextToken">> => string()
%% }
-type event_descriptions_message() :: #{binary() => any()}.

%% Example:
%% event_description() :: #{
%%   <<"ApplicationName">> => string(),
%%   <<"EnvironmentName">> => string(),
%%   <<"EventDate">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"PlatformArn">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Severity">> => list(any()),
%%   <<"TemplateName">> => string(),
%%   <<"VersionLabel">> => string()
%% }
-type event_description() :: #{binary() => any()}.

%% Example:
%% request_environment_info_message() :: #{
%%   <<"EnvironmentId">> => string(),
%%   <<"EnvironmentName">> => string(),
%%   <<"InfoType">> := list(any())
%% }
-type request_environment_info_message() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_message() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_message() :: #{binary() => any()}.

%% Example:
%% configuration_option_description() :: #{
%%   <<"ChangeSeverity">> => string(),
%%   <<"DefaultValue">> => string(),
%%   <<"MaxLength">> => integer(),
%%   <<"MaxValue">> => integer(),
%%   <<"MinValue">> => integer(),
%%   <<"Name">> => string(),
%%   <<"Namespace">> => string(),
%%   <<"Regex">> => option_restriction_regex(),
%%   <<"UserDefined">> => boolean(),
%%   <<"ValueOptions">> => list(string()),
%%   <<"ValueType">> => list(any())
%% }
-type configuration_option_description() :: #{binary() => any()}.

%% Example:
%% load_balancer_description() :: #{
%%   <<"Domain">> => string(),
%%   <<"Listeners">> => list(listener()),
%%   <<"LoadBalancerName">> => string()
%% }
-type load_balancer_description() :: #{binary() => any()}.

%% Example:
%% queue() :: #{
%%   <<"Name">> => string(),
%%   <<"URL">> => string()
%% }
-type queue() :: #{binary() => any()}.

%% Example:
%% managed_action_invalid_state_exception() :: #{
%%   <<"message">> => string()
%% }
-type managed_action_invalid_state_exception() :: #{binary() => any()}.

%% Example:
%% environment_tier() :: #{
%%   <<"Name">> => string(),
%%   <<"Type">> => string(),
%%   <<"Version">> => string()
%% }
-type environment_tier() :: #{binary() => any()}.

%% Example:
%% list_platform_branches_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PlatformBranchSummaryList">> => list(platform_branch_summary())
%% }
-type list_platform_branches_result() :: #{binary() => any()}.

%% Example:
%% describe_environment_managed_actions_request() :: #{
%%   <<"EnvironmentId">> => string(),
%%   <<"EnvironmentName">> => string(),
%%   <<"Status">> => list(any())
%% }
-type describe_environment_managed_actions_request() :: #{binary() => any()}.

%% Example:
%% platform_version_still_referenced_exception() :: #{
%%   <<"message">> => string()
%% }
-type platform_version_still_referenced_exception() :: #{binary() => any()}.

%% Example:
%% environment_info_description() :: #{
%%   <<"Ec2InstanceId">> => string(),
%%   <<"InfoType">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"SampleTimestamp">> => non_neg_integer()
%% }
-type environment_info_description() :: #{binary() => any()}.

%% Example:
%% platform_framework() :: #{
%%   <<"Name">> => string(),
%%   <<"Version">> => string()
%% }
-type platform_framework() :: #{binary() => any()}.

%% Example:
%% elastic_beanstalk_service_exception() :: #{
%%   <<"message">> => string()
%% }
-type elastic_beanstalk_service_exception() :: #{binary() => any()}.

%% Example:
%% delete_environment_configuration_message() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"EnvironmentName">> := string()
%% }
-type delete_environment_configuration_message() :: #{binary() => any()}.

%% Example:
%% platform_description() :: #{
%%   <<"CustomAmiList">> => list(custom_ami()),
%%   <<"DateCreated">> => non_neg_integer(),
%%   <<"DateUpdated">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Frameworks">> => list(platform_framework()),
%%   <<"Maintainer">> => string(),
%%   <<"OperatingSystemName">> => string(),
%%   <<"OperatingSystemVersion">> => string(),
%%   <<"PlatformArn">> => string(),
%%   <<"PlatformBranchLifecycleState">> => string(),
%%   <<"PlatformBranchName">> => string(),
%%   <<"PlatformCategory">> => string(),
%%   <<"PlatformLifecycleState">> => string(),
%%   <<"PlatformName">> => string(),
%%   <<"PlatformOwner">> => string(),
%%   <<"PlatformStatus">> => list(any()),
%%   <<"PlatformVersion">> => string(),
%%   <<"ProgrammingLanguages">> => list(platform_programming_language()),
%%   <<"SolutionStackName">> => string(),
%%   <<"SupportedAddonList">> => list(string()),
%%   <<"SupportedTierList">> => list(string())
%% }
-type platform_description() :: #{binary() => any()}.

%% Example:
%% retrieve_environment_info_message() :: #{
%%   <<"EnvironmentId">> => string(),
%%   <<"EnvironmentName">> => string(),
%%   <<"InfoType">> := list(any())
%% }
-type retrieve_environment_info_message() :: #{binary() => any()}.

%% Example:
%% builder() :: #{
%%   <<"ARN">> => string()
%% }
-type builder() :: #{binary() => any()}.

%% Example:
%% resource_quota() :: #{
%%   <<"Maximum">> => integer()
%% }
-type resource_quota() :: #{binary() => any()}.

%% Example:
%% environment_resource_description() :: #{
%%   <<"AutoScalingGroups">> => list(auto_scaling_group()),
%%   <<"EnvironmentName">> => string(),
%%   <<"Instances">> => list(instance()),
%%   <<"LaunchConfigurations">> => list(launch_configuration()),
%%   <<"LaunchTemplates">> => list(launch_template()),
%%   <<"LoadBalancers">> => list(load_balancer()),
%%   <<"Queues">> => list(queue()),
%%   <<"Triggers">> => list(trigger())
%% }
-type environment_resource_description() :: #{binary() => any()}.

%% Example:
%% managed_action_history_item() :: #{
%%   <<"ActionDescription">> => string(),
%%   <<"ActionId">> => string(),
%%   <<"ActionType">> => list(any()),
%%   <<"ExecutedTime">> => non_neg_integer(),
%%   <<"FailureDescription">> => string(),
%%   <<"FailureType">> => list(any()),
%%   <<"FinishedTime">> => non_neg_integer(),
%%   <<"Status">> => list(any())
%% }
-type managed_action_history_item() :: #{binary() => any()}.

%% Example:
%% abort_environment_update_message() :: #{
%%   <<"EnvironmentId">> => string(),
%%   <<"EnvironmentName">> => string()
%% }
-type abort_environment_update_message() :: #{binary() => any()}.

%% Example:
%% instance_health_summary() :: #{
%%   <<"Degraded">> => integer(),
%%   <<"Info">> => integer(),
%%   <<"NoData">> => integer(),
%%   <<"Ok">> => integer(),
%%   <<"Pending">> => integer(),
%%   <<"Severe">> => integer(),
%%   <<"Unknown">> => integer(),
%%   <<"Warning">> => integer()
%% }
-type instance_health_summary() :: #{binary() => any()}.

%% Example:
%% configuration_settings_description() :: #{
%%   <<"ApplicationName">> => string(),
%%   <<"DateCreated">> => non_neg_integer(),
%%   <<"DateUpdated">> => non_neg_integer(),
%%   <<"DeploymentStatus">> => list(any()),
%%   <<"Description">> => string(),
%%   <<"EnvironmentName">> => string(),
%%   <<"OptionSettings">> => list(configuration_option_setting()),
%%   <<"PlatformArn">> => string(),
%%   <<"SolutionStackName">> => string(),
%%   <<"TemplateName">> => string()
%% }
-type configuration_settings_description() :: #{binary() => any()}.

%% Example:
%% check_dns_availability_message() :: #{
%%   <<"CNAMEPrefix">> := string()
%% }
-type check_dns_availability_message() :: #{binary() => any()}.

%% Example:
%% configuration_settings_validation_messages() :: #{
%%   <<"Messages">> => list(validation_message())
%% }
-type configuration_settings_validation_messages() :: #{binary() => any()}.

%% Example:
%% search_filter() :: #{
%%   <<"Attribute">> => string(),
%%   <<"Operator">> => string(),
%%   <<"Values">> => list(string())
%% }
-type search_filter() :: #{binary() => any()}.

%% Example:
%% platform_filter() :: #{
%%   <<"Operator">> => string(),
%%   <<"Type">> => string(),
%%   <<"Values">> => list(string())
%% }
-type platform_filter() :: #{binary() => any()}.

%% Example:
%% configuration_option_setting() :: #{
%%   <<"Namespace">> => string(),
%%   <<"OptionName">> => string(),
%%   <<"ResourceName">> => string(),
%%   <<"Value">> => string()
%% }
-type configuration_option_setting() :: #{binary() => any()}.

%% Example:
%% describe_configuration_options_message() :: #{
%%   <<"ApplicationName">> => string(),
%%   <<"EnvironmentName">> => string(),
%%   <<"Options">> => list(option_specification()),
%%   <<"PlatformArn">> => string(),
%%   <<"SolutionStackName">> => string(),
%%   <<"TemplateName">> => string()
%% }
-type describe_configuration_options_message() :: #{binary() => any()}.

%% Example:
%% option_specification() :: #{
%%   <<"Namespace">> => string(),
%%   <<"OptionName">> => string(),
%%   <<"ResourceName">> => string()
%% }
-type option_specification() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% platform_programming_language() :: #{
%%   <<"Name">> => string(),
%%   <<"Version">> => string()
%% }
-type platform_programming_language() :: #{binary() => any()}.

%% Example:
%% update_environment_message() :: #{
%%   <<"ApplicationName">> => string(),
%%   <<"Description">> => string(),
%%   <<"EnvironmentId">> => string(),
%%   <<"EnvironmentName">> => string(),
%%   <<"GroupName">> => string(),
%%   <<"OptionSettings">> => list(configuration_option_setting()),
%%   <<"OptionsToRemove">> => list(option_specification()),
%%   <<"PlatformArn">> => string(),
%%   <<"SolutionStackName">> => string(),
%%   <<"TemplateName">> => string(),
%%   <<"Tier">> => environment_tier(),
%%   <<"VersionLabel">> => string()
%% }
-type update_environment_message() :: #{binary() => any()}.

%% Example:
%% application_resource_lifecycle_description_message() :: #{
%%   <<"ApplicationName">> => string(),
%%   <<"ResourceLifecycleConfig">> => application_resource_lifecycle_config()
%% }
-type application_resource_lifecycle_description_message() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% too_many_applications_exception() :: #{
%%   <<"message">> => string()
%% }
-type too_many_applications_exception() :: #{binary() => any()}.

%% Example:
%% operation_in_progress_exception() :: #{
%%   <<"message">> => string()
%% }
-type operation_in_progress_exception() :: #{binary() => any()}.

%% Example:
%% invalid_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.

%% Example:
%% describe_environment_health_result() :: #{
%%   <<"ApplicationMetrics">> => application_metrics(),
%%   <<"Causes">> => list(string()),
%%   <<"Color">> => string(),
%%   <<"EnvironmentName">> => string(),
%%   <<"HealthStatus">> => string(),
%%   <<"InstancesHealth">> => instance_health_summary(),
%%   <<"RefreshedAt">> => non_neg_integer(),
%%   <<"Status">> => list(any())
%% }
-type describe_environment_health_result() :: #{binary() => any()}.

%% Example:
%% application_version_lifecycle_config() :: #{
%%   <<"MaxAgeRule">> => max_age_rule(),
%%   <<"MaxCountRule">> => max_count_rule()
%% }
-type application_version_lifecycle_config() :: #{binary() => any()}.

%% Example:
%% create_application_version_message() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"AutoCreateApplication">> => boolean(),
%%   <<"BuildConfiguration">> => build_configuration(),
%%   <<"Description">> => string(),
%%   <<"Process">> => boolean(),
%%   <<"SourceBuildInformation">> => source_build_information(),
%%   <<"SourceBundle">> => s3_location(),
%%   <<"Tags">> => list(tag()),
%%   <<"VersionLabel">> := string()
%% }
-type create_application_version_message() :: #{binary() => any()}.

%% Example:
%% application_metrics() :: #{
%%   <<"Duration">> => integer(),
%%   <<"Latency">> => latency(),
%%   <<"RequestCount">> => integer(),
%%   <<"StatusCodes">> => status_codes()
%% }
-type application_metrics() :: #{binary() => any()}.

%% Example:
%% s3_subscription_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type s3_subscription_required_exception() :: #{binary() => any()}.

%% Example:
%% platform_branch_summary() :: #{
%%   <<"BranchName">> => string(),
%%   <<"BranchOrder">> => integer(),
%%   <<"LifecycleState">> => string(),
%%   <<"PlatformName">> => string(),
%%   <<"SupportedTierList">> => list(string())
%% }
-type platform_branch_summary() :: #{binary() => any()}.

%% Example:
%% list_available_solution_stacks_result_message() :: #{
%%   <<"SolutionStackDetails">> => list(solution_stack_description()),
%%   <<"SolutionStacks">> => list(string())
%% }
-type list_available_solution_stacks_result_message() :: #{binary() => any()}.

%% Example:
%% source_configuration() :: #{
%%   <<"ApplicationName">> => string(),
%%   <<"TemplateName">> => string()
%% }
-type source_configuration() :: #{binary() => any()}.

%% Example:
%% delete_application_version_message() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"DeleteSourceBundle">> => boolean(),
%%   <<"VersionLabel">> := string()
%% }
-type delete_application_version_message() :: #{binary() => any()}.

%% Example:
%% s3_location() :: #{
%%   <<"S3Bucket">> => string(),
%%   <<"S3Key">> => string()
%% }
-type s3_location() :: #{binary() => any()}.

%% Example:
%% system_status() :: #{
%%   <<"CPUUtilization">> => c_p_u_utilization(),
%%   <<"LoadAverage">> => list(float())
%% }
-type system_status() :: #{binary() => any()}.

%% Example:
%% latency() :: #{
%%   <<"P10">> => float(),
%%   <<"P50">> => float(),
%%   <<"P75">> => float(),
%%   <<"P85">> => float(),
%%   <<"P90">> => float(),
%%   <<"P95">> => float(),
%%   <<"P99">> => float(),
%%   <<"P999">> => float()
%% }
-type latency() :: #{binary() => any()}.

%% Example:
%% describe_application_versions_message() :: #{
%%   <<"ApplicationName">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"VersionLabels">> => list(string())
%% }
-type describe_application_versions_message() :: #{binary() => any()}.

%% Example:
%% platform_summary() :: #{
%%   <<"OperatingSystemName">> => string(),
%%   <<"OperatingSystemVersion">> => string(),
%%   <<"PlatformArn">> => string(),
%%   <<"PlatformBranchLifecycleState">> => string(),
%%   <<"PlatformBranchName">> => string(),
%%   <<"PlatformCategory">> => string(),
%%   <<"PlatformLifecycleState">> => string(),
%%   <<"PlatformOwner">> => string(),
%%   <<"PlatformStatus">> => list(any()),
%%   <<"PlatformVersion">> => string(),
%%   <<"SupportedAddonList">> => list(string()),
%%   <<"SupportedTierList">> => list(string())
%% }
-type platform_summary() :: #{binary() => any()}.

%% Example:
%% describe_environment_health_request() :: #{
%%   <<"AttributeNames">> => list(list(any())()),
%%   <<"EnvironmentId">> => string(),
%%   <<"EnvironmentName">> => string()
%% }
-type describe_environment_health_request() :: #{binary() => any()}.

%% Example:
%% retrieve_environment_info_result_message() :: #{
%%   <<"EnvironmentInfo">> => list(environment_info_description())
%% }
-type retrieve_environment_info_result_message() :: #{binary() => any()}.

%% Example:
%% s3_location_not_in_service_region_exception() :: #{
%%   <<"message">> => string()
%% }
-type s3_location_not_in_service_region_exception() :: #{binary() => any()}.

%% Example:
%% environment_description() :: #{
%%   <<"AbortableOperationInProgress">> => boolean(),
%%   <<"ApplicationName">> => string(),
%%   <<"CNAME">> => string(),
%%   <<"DateCreated">> => non_neg_integer(),
%%   <<"DateUpdated">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"EndpointURL">> => string(),
%%   <<"EnvironmentArn">> => string(),
%%   <<"EnvironmentId">> => string(),
%%   <<"EnvironmentLinks">> => list(environment_link()),
%%   <<"EnvironmentName">> => string(),
%%   <<"Health">> => list(any()),
%%   <<"HealthStatus">> => list(any()),
%%   <<"OperationsRole">> => string(),
%%   <<"PlatformArn">> => string(),
%%   <<"Resources">> => environment_resources_description(),
%%   <<"SolutionStackName">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"TemplateName">> => string(),
%%   <<"Tier">> => environment_tier(),
%%   <<"VersionLabel">> => string()
%% }
-type environment_description() :: #{binary() => any()}.

%% Example:
%% application_version_description_message() :: #{
%%   <<"ApplicationVersion">> => application_version_description()
%% }
-type application_version_description_message() :: #{binary() => any()}.

%% Example:
%% swap_environment_cnames_message() :: #{
%%   <<"DestinationEnvironmentId">> => string(),
%%   <<"DestinationEnvironmentName">> => string(),
%%   <<"SourceEnvironmentId">> => string(),
%%   <<"SourceEnvironmentName">> => string()
%% }
-type swap_environment_cnames_message() :: #{binary() => any()}.

%% Example:
%% max_count_rule() :: #{
%%   <<"DeleteSourceFromS3">> => boolean(),
%%   <<"Enabled">> => boolean(),
%%   <<"MaxCount">> => integer()
%% }
-type max_count_rule() :: #{binary() => any()}.

%% Example:
%% too_many_application_versions_exception() :: #{
%%   <<"message">> => string()
%% }
-type too_many_application_versions_exception() :: #{binary() => any()}.

%% Example:
%% application_description_message() :: #{
%%   <<"Application">> => application_description()
%% }
-type application_description_message() :: #{binary() => any()}.

%% Example:
%% validation_message() :: #{
%%   <<"Message">> => string(),
%%   <<"Namespace">> => string(),
%%   <<"OptionName">> => string(),
%%   <<"Severity">> => list(any())
%% }
-type validation_message() :: #{binary() => any()}.

%% Example:
%% validate_configuration_settings_message() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"EnvironmentName">> => string(),
%%   <<"OptionSettings">> := list(configuration_option_setting()),
%%   <<"TemplateName">> => string()
%% }
-type validate_configuration_settings_message() :: #{binary() => any()}.

%% Example:
%% instance() :: #{
%%   <<"Id">> => string()
%% }
-type instance() :: #{binary() => any()}.

%% Example:
%% update_application_resource_lifecycle_message() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"ResourceLifecycleConfig">> := application_resource_lifecycle_config()
%% }
-type update_application_resource_lifecycle_message() :: #{binary() => any()}.

%% Example:
%% environment_resource_descriptions_message() :: #{
%%   <<"EnvironmentResources">> => environment_resource_description()
%% }
-type environment_resource_descriptions_message() :: #{binary() => any()}.

%% Example:
%% configuration_options_description() :: #{
%%   <<"Options">> => list(configuration_option_description()),
%%   <<"PlatformArn">> => string(),
%%   <<"SolutionStackName">> => string()
%% }
-type configuration_options_description() :: #{binary() => any()}.

%% Example:
%% application_descriptions_message() :: #{
%%   <<"Applications">> => list(application_description())
%% }
-type application_descriptions_message() :: #{binary() => any()}.

%% Example:
%% describe_account_attributes_result() :: #{
%%   <<"ResourceQuotas">> => resource_quotas()
%% }
-type describe_account_attributes_result() :: #{binary() => any()}.

%% Example:
%% describe_configuration_settings_message() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"EnvironmentName">> => string(),
%%   <<"TemplateName">> => string()
%% }
-type describe_configuration_settings_message() :: #{binary() => any()}.

%% Example:
%% terminate_environment_message() :: #{
%%   <<"EnvironmentId">> => string(),
%%   <<"EnvironmentName">> => string(),
%%   <<"ForceTerminate">> => boolean(),
%%   <<"TerminateResources">> => boolean()
%% }
-type terminate_environment_message() :: #{binary() => any()}.

%% Example:
%% describe_environment_resources_message() :: #{
%%   <<"EnvironmentId">> => string(),
%%   <<"EnvironmentName">> => string()
%% }
-type describe_environment_resources_message() :: #{binary() => any()}.

%% Example:
%% describe_events_message() :: #{
%%   <<"ApplicationName">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"EnvironmentId">> => string(),
%%   <<"EnvironmentName">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PlatformArn">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Severity">> => list(any()),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"TemplateName">> => string(),
%%   <<"VersionLabel">> => string()
%% }
-type describe_events_message() :: #{binary() => any()}.

%% Example:
%% load_balancer() :: #{
%%   <<"Name">> => string()
%% }
-type load_balancer() :: #{binary() => any()}.

%% Example:
%% auto_scaling_group() :: #{
%%   <<"Name">> => string()
%% }
-type auto_scaling_group() :: #{binary() => any()}.

%% Example:
%% describe_environment_managed_actions_result() :: #{
%%   <<"ManagedActions">> => list(managed_action())
%% }
-type describe_environment_managed_actions_result() :: #{binary() => any()}.

%% Example:
%% resource_tags_description_message() :: #{
%%   <<"ResourceArn">> => string(),
%%   <<"ResourceTags">> => list(tag())
%% }
-type resource_tags_description_message() :: #{binary() => any()}.

%% Example:
%% insufficient_privileges_exception() :: #{
%%   <<"message">> => string()
%% }
-type insufficient_privileges_exception() :: #{binary() => any()}.

%% Example:
%% configuration_settings_descriptions() :: #{
%%   <<"ConfigurationSettings">> => list(configuration_settings_description())
%% }
-type configuration_settings_descriptions() :: #{binary() => any()}.

%% Example:
%% create_platform_version_result() :: #{
%%   <<"Builder">> => builder(),
%%   <<"PlatformSummary">> => platform_summary()
%% }
-type create_platform_version_result() :: #{binary() => any()}.

%% Example:
%% environment_resources_description() :: #{
%%   <<"LoadBalancer">> => load_balancer_description()
%% }
-type environment_resources_description() :: #{binary() => any()}.

%% Example:
%% application_description() :: #{
%%   <<"ApplicationArn">> => string(),
%%   <<"ApplicationName">> => string(),
%%   <<"ConfigurationTemplates">> => list(string()),
%%   <<"DateCreated">> => non_neg_integer(),
%%   <<"DateUpdated">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"ResourceLifecycleConfig">> => application_resource_lifecycle_config(),
%%   <<"Versions">> => list(string())
%% }
-type application_description() :: #{binary() => any()}.

%% Example:
%% list_platform_branches_request() :: #{
%%   <<"Filters">> => list(search_filter()),
%%   <<"MaxRecords">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_platform_branches_request() :: #{binary() => any()}.

%% Example:
%% launch_template() :: #{
%%   <<"Id">> => string()
%% }
-type launch_template() :: #{binary() => any()}.

%% Example:
%% describe_applications_message() :: #{
%%   <<"ApplicationNames">> => list(string())
%% }
-type describe_applications_message() :: #{binary() => any()}.

%% Example:
%% describe_platform_version_result() :: #{
%%   <<"PlatformDescription">> => platform_description()
%% }
-type describe_platform_version_result() :: #{binary() => any()}.

%% Example:
%% application_version_descriptions_message() :: #{
%%   <<"ApplicationVersions">> => list(application_version_description()),
%%   <<"NextToken">> => string()
%% }
-type application_version_descriptions_message() :: #{binary() => any()}.

%% Example:
%% source_build_information() :: #{
%%   <<"SourceLocation">> => string(),
%%   <<"SourceRepository">> => list(any()),
%%   <<"SourceType">> => list(any())
%% }
-type source_build_information() :: #{binary() => any()}.

%% Example:
%% create_storage_location_result_message() :: #{
%%   <<"S3Bucket">> => string()
%% }
-type create_storage_location_result_message() :: #{binary() => any()}.

%% Example:
%% too_many_configuration_templates_exception() :: #{
%%   <<"message">> => string()
%% }
-type too_many_configuration_templates_exception() :: #{binary() => any()}.

%% Example:
%% launch_configuration() :: #{
%%   <<"Name">> => string()
%% }
-type launch_configuration() :: #{binary() => any()}.

%% Example:
%% create_configuration_template_message() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"Description">> => string(),
%%   <<"EnvironmentId">> => string(),
%%   <<"OptionSettings">> => list(configuration_option_setting()),
%%   <<"PlatformArn">> => string(),
%%   <<"SolutionStackName">> => string(),
%%   <<"SourceConfiguration">> => source_configuration(),
%%   <<"Tags">> => list(tag()),
%%   <<"TemplateName">> := string()
%% }
-type create_configuration_template_message() :: #{binary() => any()}.

%% Example:
%% delete_platform_version_result() :: #{
%%   <<"PlatformSummary">> => platform_summary()
%% }
-type delete_platform_version_result() :: #{binary() => any()}.

%% Example:
%% describe_platform_version_request() :: #{
%%   <<"PlatformArn">> => string()
%% }
-type describe_platform_version_request() :: #{binary() => any()}.

%% Example:
%% application_version_description() :: #{
%%   <<"ApplicationName">> => string(),
%%   <<"ApplicationVersionArn">> => string(),
%%   <<"BuildArn">> => string(),
%%   <<"DateCreated">> => non_neg_integer(),
%%   <<"DateUpdated">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"SourceBuildInformation">> => source_build_information(),
%%   <<"SourceBundle">> => s3_location(),
%%   <<"Status">> => list(any()),
%%   <<"VersionLabel">> => string()
%% }
-type application_version_description() :: #{binary() => any()}.

%% Example:
%% describe_environment_managed_action_history_request() :: #{
%%   <<"EnvironmentId">> => string(),
%%   <<"EnvironmentName">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_environment_managed_action_history_request() :: #{binary() => any()}.

%% Example:
%% resource_quotas() :: #{
%%   <<"ApplicationQuota">> => resource_quota(),
%%   <<"ApplicationVersionQuota">> => resource_quota(),
%%   <<"ConfigurationTemplateQuota">> => resource_quota(),
%%   <<"CustomPlatformQuota">> => resource_quota(),
%%   <<"EnvironmentQuota">> => resource_quota()
%% }
-type resource_quotas() :: #{binary() => any()}.

%% Example:
%% update_application_message() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"Description">> => string()
%% }
-type update_application_message() :: #{binary() => any()}.

%% Example:
%% update_application_version_message() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"Description">> => string(),
%%   <<"VersionLabel">> := string()
%% }
-type update_application_version_message() :: #{binary() => any()}.

%% Example:
%% list_platform_versions_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PlatformSummaryList">> => list(platform_summary())
%% }
-type list_platform_versions_result() :: #{binary() => any()}.

%% Example:
%% delete_configuration_template_message() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"TemplateName">> := string()
%% }
-type delete_configuration_template_message() :: #{binary() => any()}.

%% Example:
%% source_bundle_deletion_exception() :: #{
%%   <<"message">> => string()
%% }
-type source_bundle_deletion_exception() :: #{binary() => any()}.

%% Example:
%% code_build_not_in_service_region_exception() :: #{
%%   <<"message">> => string()
%% }
-type code_build_not_in_service_region_exception() :: #{binary() => any()}.

%% Example:
%% update_tags_for_resource_message() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagsToAdd">> => list(tag()),
%%   <<"TagsToRemove">> => list(string())
%% }
-type update_tags_for_resource_message() :: #{binary() => any()}.

%% Example:
%% restart_app_server_message() :: #{
%%   <<"EnvironmentId">> => string(),
%%   <<"EnvironmentName">> => string()
%% }
-type restart_app_server_message() :: #{binary() => any()}.

%% Example:
%% too_many_tags_exception() :: #{
%%   <<"message">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.

%% Example:
%% create_application_message() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"Description">> => string(),
%%   <<"ResourceLifecycleConfig">> => application_resource_lifecycle_config(),
%%   <<"Tags">> => list(tag())
%% }
-type create_application_message() :: #{binary() => any()}.

%% Example:
%% application_resource_lifecycle_config() :: #{
%%   <<"ServiceRole">> => string(),
%%   <<"VersionLifecycleConfig">> => application_version_lifecycle_config()
%% }
-type application_resource_lifecycle_config() :: #{binary() => any()}.

%% Example:
%% create_environment_message() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"CNAMEPrefix">> => string(),
%%   <<"Description">> => string(),
%%   <<"EnvironmentName">> => string(),
%%   <<"GroupName">> => string(),
%%   <<"OperationsRole">> => string(),
%%   <<"OptionSettings">> => list(configuration_option_setting()),
%%   <<"OptionsToRemove">> => list(option_specification()),
%%   <<"PlatformArn">> => string(),
%%   <<"SolutionStackName">> => string(),
%%   <<"Tags">> => list(tag()),
%%   <<"TemplateName">> => string(),
%%   <<"Tier">> => environment_tier(),
%%   <<"VersionLabel">> => string()
%% }
-type create_environment_message() :: #{binary() => any()}.

-type abort_environment_update_errors() ::
    insufficient_privileges_exception().

-type apply_environment_managed_action_errors() ::
    elastic_beanstalk_service_exception() | 
    managed_action_invalid_state_exception().

-type associate_environment_operations_role_errors() ::
    insufficient_privileges_exception().

-type compose_environments_errors() ::
    insufficient_privileges_exception() | 
    too_many_environments_exception().

-type create_application_errors() ::
    too_many_applications_exception().

-type create_application_version_errors() ::
    code_build_not_in_service_region_exception() | 
    insufficient_privileges_exception() | 
    too_many_application_versions_exception() | 
    s3_location_not_in_service_region_exception() | 
    too_many_applications_exception().

-type create_configuration_template_errors() ::
    too_many_configuration_templates_exception() | 
    insufficient_privileges_exception() | 
    too_many_buckets_exception().

-type create_environment_errors() ::
    insufficient_privileges_exception() | 
    too_many_environments_exception().

-type create_platform_version_errors() ::
    insufficient_privileges_exception() | 
    elastic_beanstalk_service_exception() | 
    too_many_platforms_exception().

-type create_storage_location_errors() ::
    insufficient_privileges_exception() | 
    s3_subscription_required_exception() | 
    too_many_buckets_exception().

-type delete_application_errors() ::
    operation_in_progress_exception().

-type delete_application_version_errors() ::
    source_bundle_deletion_exception() | 
    insufficient_privileges_exception() | 
    s3_location_not_in_service_region_exception() | 
    operation_in_progress_exception().

-type delete_configuration_template_errors() ::
    operation_in_progress_exception().

-type delete_platform_version_errors() ::
    insufficient_privileges_exception() | 
    operation_in_progress_exception() | 
    elastic_beanstalk_service_exception() | 
    platform_version_still_referenced_exception().

-type describe_account_attributes_errors() ::
    insufficient_privileges_exception().

-type describe_configuration_options_errors() ::
    too_many_buckets_exception().

-type describe_configuration_settings_errors() ::
    too_many_buckets_exception().

-type describe_environment_health_errors() ::
    invalid_request_exception() | 
    elastic_beanstalk_service_exception().

-type describe_environment_managed_action_history_errors() ::
    elastic_beanstalk_service_exception().

-type describe_environment_managed_actions_errors() ::
    elastic_beanstalk_service_exception().

-type describe_environment_resources_errors() ::
    insufficient_privileges_exception().

-type describe_instances_health_errors() ::
    invalid_request_exception() | 
    elastic_beanstalk_service_exception().

-type describe_platform_version_errors() ::
    insufficient_privileges_exception() | 
    elastic_beanstalk_service_exception().

-type disassociate_environment_operations_role_errors() ::
    insufficient_privileges_exception().

-type list_platform_versions_errors() ::
    insufficient_privileges_exception() | 
    elastic_beanstalk_service_exception().

-type list_tags_for_resource_errors() ::
    insufficient_privileges_exception() | 
    resource_not_found_exception() | 
    resource_type_not_supported_exception().

-type rebuild_environment_errors() ::
    insufficient_privileges_exception().

-type terminate_environment_errors() ::
    insufficient_privileges_exception().

-type update_application_resource_lifecycle_errors() ::
    insufficient_privileges_exception().

-type update_configuration_template_errors() ::
    insufficient_privileges_exception() | 
    too_many_buckets_exception().

-type update_environment_errors() ::
    insufficient_privileges_exception() | 
    too_many_buckets_exception().

-type update_tags_for_resource_errors() ::
    too_many_tags_exception() | 
    insufficient_privileges_exception() | 
    operation_in_progress_exception() | 
    resource_not_found_exception() | 
    resource_type_not_supported_exception().

-type validate_configuration_settings_errors() ::
    insufficient_privileges_exception() | 
    too_many_buckets_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels in-progress environment configuration update or application
%% version
%% deployment.
-spec abort_environment_update(aws_client:aws_client(), abort_environment_update_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, abort_environment_update_errors(), tuple()}.
abort_environment_update(Client, Input)
  when is_map(Client), is_map(Input) ->
    abort_environment_update(Client, Input, []).

-spec abort_environment_update(aws_client:aws_client(), abort_environment_update_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, abort_environment_update_errors(), tuple()}.
abort_environment_update(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AbortEnvironmentUpdate">>, Input, Options).

%% @doc Applies a scheduled managed action immediately.
%%
%% A managed action can be applied only if
%% its status is `Scheduled'. Get the status and action ID of a managed
%% action with
%% `DescribeEnvironmentManagedActions'.
-spec apply_environment_managed_action(aws_client:aws_client(), apply_environment_managed_action_request()) ->
    {ok, apply_environment_managed_action_result(), tuple()} |
    {error, any()} |
    {error, apply_environment_managed_action_errors(), tuple()}.
apply_environment_managed_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    apply_environment_managed_action(Client, Input, []).

-spec apply_environment_managed_action(aws_client:aws_client(), apply_environment_managed_action_request(), proplists:proplist()) ->
    {ok, apply_environment_managed_action_result(), tuple()} |
    {error, any()} |
    {error, apply_environment_managed_action_errors(), tuple()}.
apply_environment_managed_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ApplyEnvironmentManagedAction">>, Input, Options).

%% @doc Add or change the operations role used by an environment.
%%
%% After this call is made, Elastic Beanstalk
%% uses the associated operations role for permissions to downstream services
%% during subsequent
%% calls acting on this environment. For more information, see Operations
%% roles:
%% https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html
%% in the
%% AWS Elastic Beanstalk Developer Guide.
-spec associate_environment_operations_role(aws_client:aws_client(), associate_environment_operations_role_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_environment_operations_role_errors(), tuple()}.
associate_environment_operations_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_environment_operations_role(Client, Input, []).

-spec associate_environment_operations_role(aws_client:aws_client(), associate_environment_operations_role_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_environment_operations_role_errors(), tuple()}.
associate_environment_operations_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateEnvironmentOperationsRole">>, Input, Options).

%% @doc Checks if the specified CNAME is available.
-spec check_dns_availability(aws_client:aws_client(), check_dns_availability_message()) ->
    {ok, check_dns_availability_result_message(), tuple()} |
    {error, any()}.
check_dns_availability(Client, Input)
  when is_map(Client), is_map(Input) ->
    check_dns_availability(Client, Input, []).

-spec check_dns_availability(aws_client:aws_client(), check_dns_availability_message(), proplists:proplist()) ->
    {ok, check_dns_availability_result_message(), tuple()} |
    {error, any()}.
check_dns_availability(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CheckDNSAvailability">>, Input, Options).

%% @doc Create or update a group of environments that each run a separate
%% component of a single
%% application.
%%
%% Takes a list of version labels that specify application source bundles for
%% each
%% of the environments to create or update. The name of each environment and
%% other required
%% information must be included in the source bundles in an environment
%% manifest named
%% `env.yaml'. See Compose Environments:
%% https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-mgmt-compose.html
%% for details.
-spec compose_environments(aws_client:aws_client(), compose_environments_message()) ->
    {ok, environment_descriptions_message(), tuple()} |
    {error, any()} |
    {error, compose_environments_errors(), tuple()}.
compose_environments(Client, Input)
  when is_map(Client), is_map(Input) ->
    compose_environments(Client, Input, []).

-spec compose_environments(aws_client:aws_client(), compose_environments_message(), proplists:proplist()) ->
    {ok, environment_descriptions_message(), tuple()} |
    {error, any()} |
    {error, compose_environments_errors(), tuple()}.
compose_environments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ComposeEnvironments">>, Input, Options).

%% @doc Creates an application that has one configuration template named
%% `default'
%% and no application versions.
-spec create_application(aws_client:aws_client(), create_application_message()) ->
    {ok, application_description_message(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_application(Client, Input, []).

-spec create_application(aws_client:aws_client(), create_application_message(), proplists:proplist()) ->
    {ok, application_description_message(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateApplication">>, Input, Options).

%% @doc Creates an application version for the specified application.
%%
%% You can create an
%% application version from a source bundle in Amazon S3, a commit in AWS
%% CodeCommit, or the
%% output of an AWS CodeBuild build as follows:
%%
%% Specify a commit in an AWS CodeCommit repository with
%% `SourceBuildInformation'.
%%
%% Specify a build in an AWS CodeBuild with `SourceBuildInformation' and
%% `BuildConfiguration'.
%%
%% Specify a source bundle in S3 with `SourceBundle'
%%
%% Omit both `SourceBuildInformation' and `SourceBundle' to use the
%% default sample application.
%%
%% After you create an application version with a specified Amazon S3 bucket
%% and key
%% location, you can't change that Amazon S3 location. If you change the
%% Amazon S3 location,
%% you receive an exception when you attempt to launch an environment from
%% the application
%% version.
-spec create_application_version(aws_client:aws_client(), create_application_version_message()) ->
    {ok, application_version_description_message(), tuple()} |
    {error, any()} |
    {error, create_application_version_errors(), tuple()}.
create_application_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_application_version(Client, Input, []).

-spec create_application_version(aws_client:aws_client(), create_application_version_message(), proplists:proplist()) ->
    {ok, application_version_description_message(), tuple()} |
    {error, any()} |
    {error, create_application_version_errors(), tuple()}.
create_application_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateApplicationVersion">>, Input, Options).

%% @doc Creates an AWS Elastic Beanstalk configuration template, associated
%% with a specific Elastic Beanstalk
%% application.
%%
%% You define application configuration settings in a configuration template.
%% You
%% can then use the configuration template to deploy different versions of
%% the application with
%% the same configuration settings.
%%
%% Templates aren't associated with any environment. The
%% `EnvironmentName'
%% response element is always `null'.
%%
%% Related Topics
%%
%% `DescribeConfigurationOptions'
%%
%% `DescribeConfigurationSettings'
%%
%% `ListAvailableSolutionStacks'
-spec create_configuration_template(aws_client:aws_client(), create_configuration_template_message()) ->
    {ok, configuration_settings_description(), tuple()} |
    {error, any()} |
    {error, create_configuration_template_errors(), tuple()}.
create_configuration_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_configuration_template(Client, Input, []).

-spec create_configuration_template(aws_client:aws_client(), create_configuration_template_message(), proplists:proplist()) ->
    {ok, configuration_settings_description(), tuple()} |
    {error, any()} |
    {error, create_configuration_template_errors(), tuple()}.
create_configuration_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConfigurationTemplate">>, Input, Options).

%% @doc Launches an AWS Elastic Beanstalk environment for the specified
%% application using the specified
%% configuration.
-spec create_environment(aws_client:aws_client(), create_environment_message()) ->
    {ok, environment_description(), tuple()} |
    {error, any()} |
    {error, create_environment_errors(), tuple()}.
create_environment(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_environment(Client, Input, []).

-spec create_environment(aws_client:aws_client(), create_environment_message(), proplists:proplist()) ->
    {ok, environment_description(), tuple()} |
    {error, any()} |
    {error, create_environment_errors(), tuple()}.
create_environment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEnvironment">>, Input, Options).

%% @doc Create a new version of your custom platform.
-spec create_platform_version(aws_client:aws_client(), create_platform_version_request()) ->
    {ok, create_platform_version_result(), tuple()} |
    {error, any()} |
    {error, create_platform_version_errors(), tuple()}.
create_platform_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_platform_version(Client, Input, []).

-spec create_platform_version(aws_client:aws_client(), create_platform_version_request(), proplists:proplist()) ->
    {ok, create_platform_version_result(), tuple()} |
    {error, any()} |
    {error, create_platform_version_errors(), tuple()}.
create_platform_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePlatformVersion">>, Input, Options).

%% @doc Creates a bucket in Amazon S3 to store application versions, logs,
%% and other files used
%% by Elastic Beanstalk environments.
%%
%% The Elastic Beanstalk console and EB CLI call this API the
%% first time you create an environment in a region. If the storage location
%% already exists,
%% `CreateStorageLocation' still returns the bucket name but does not
%% create a new
%% bucket.
-spec create_storage_location(aws_client:aws_client(), #{}) ->
    {ok, create_storage_location_result_message(), tuple()} |
    {error, any()} |
    {error, create_storage_location_errors(), tuple()}.
create_storage_location(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_storage_location(Client, Input, []).

-spec create_storage_location(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, create_storage_location_result_message(), tuple()} |
    {error, any()} |
    {error, create_storage_location_errors(), tuple()}.
create_storage_location(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStorageLocation">>, Input, Options).

%% @doc Deletes the specified application along with all associated versions
%% and
%% configurations.
%%
%% The application versions will not be deleted from your Amazon S3
%% bucket.
%%
%% You cannot delete an application that has a running environment.
-spec delete_application(aws_client:aws_client(), delete_application_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application(Client, Input, []).

-spec delete_application(aws_client:aws_client(), delete_application_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplication">>, Input, Options).

%% @doc Deletes the specified version from the specified application.
%%
%% You cannot delete an application version that is associated with a running
%% environment.
-spec delete_application_version(aws_client:aws_client(), delete_application_version_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_application_version_errors(), tuple()}.
delete_application_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application_version(Client, Input, []).

-spec delete_application_version(aws_client:aws_client(), delete_application_version_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_application_version_errors(), tuple()}.
delete_application_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplicationVersion">>, Input, Options).

%% @doc Deletes the specified configuration template.
%%
%% When you launch an environment using a configuration template, the
%% environment gets a
%% copy of the template. You can delete or modify the environment's copy
%% of the template
%% without affecting the running environment.
-spec delete_configuration_template(aws_client:aws_client(), delete_configuration_template_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_configuration_template_errors(), tuple()}.
delete_configuration_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_configuration_template(Client, Input, []).

-spec delete_configuration_template(aws_client:aws_client(), delete_configuration_template_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_configuration_template_errors(), tuple()}.
delete_configuration_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConfigurationTemplate">>, Input, Options).

%% @doc Deletes the draft configuration associated with the running
%% environment.
%%
%% Updating a running environment with any configuration changes creates a
%% draft
%% configuration set. You can get the draft configuration using
%% `DescribeConfigurationSettings' while the update is in progress or if
%% the update
%% fails. The `DeploymentStatus' for the draft configuration indicates
%% whether the
%% deployment is in process or has failed. The draft configuration remains in
%% existence until it
%% is deleted with this action.
-spec delete_environment_configuration(aws_client:aws_client(), delete_environment_configuration_message()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_environment_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_environment_configuration(Client, Input, []).

-spec delete_environment_configuration(aws_client:aws_client(), delete_environment_configuration_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_environment_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEnvironmentConfiguration">>, Input, Options).

%% @doc Deletes the specified version of a custom platform.
-spec delete_platform_version(aws_client:aws_client(), delete_platform_version_request()) ->
    {ok, delete_platform_version_result(), tuple()} |
    {error, any()} |
    {error, delete_platform_version_errors(), tuple()}.
delete_platform_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_platform_version(Client, Input, []).

-spec delete_platform_version(aws_client:aws_client(), delete_platform_version_request(), proplists:proplist()) ->
    {ok, delete_platform_version_result(), tuple()} |
    {error, any()} |
    {error, delete_platform_version_errors(), tuple()}.
delete_platform_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePlatformVersion">>, Input, Options).

%% @doc Returns attributes related to AWS Elastic Beanstalk that are
%% associated with the calling AWS
%% account.
%%
%% The result currently has one set of attributes—resource quotas.
-spec describe_account_attributes(aws_client:aws_client(), #{}) ->
    {ok, describe_account_attributes_result(), tuple()} |
    {error, any()} |
    {error, describe_account_attributes_errors(), tuple()}.
describe_account_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_attributes(Client, Input, []).

-spec describe_account_attributes(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, describe_account_attributes_result(), tuple()} |
    {error, any()} |
    {error, describe_account_attributes_errors(), tuple()}.
describe_account_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountAttributes">>, Input, Options).

%% @doc Retrieve a list of application versions.
-spec describe_application_versions(aws_client:aws_client(), describe_application_versions_message()) ->
    {ok, application_version_descriptions_message(), tuple()} |
    {error, any()}.
describe_application_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_application_versions(Client, Input, []).

-spec describe_application_versions(aws_client:aws_client(), describe_application_versions_message(), proplists:proplist()) ->
    {ok, application_version_descriptions_message(), tuple()} |
    {error, any()}.
describe_application_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApplicationVersions">>, Input, Options).

%% @doc Returns the descriptions of existing applications.
-spec describe_applications(aws_client:aws_client(), describe_applications_message()) ->
    {ok, application_descriptions_message(), tuple()} |
    {error, any()}.
describe_applications(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_applications(Client, Input, []).

-spec describe_applications(aws_client:aws_client(), describe_applications_message(), proplists:proplist()) ->
    {ok, application_descriptions_message(), tuple()} |
    {error, any()}.
describe_applications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApplications">>, Input, Options).

%% @doc Describes the configuration options that are used in a particular
%% configuration
%% template or environment, or that a specified solution stack defines.
%%
%% The description includes
%% the values the options, their default values, and an indication of the
%% required action on a
%% running environment if an option value is changed.
-spec describe_configuration_options(aws_client:aws_client(), describe_configuration_options_message()) ->
    {ok, configuration_options_description(), tuple()} |
    {error, any()} |
    {error, describe_configuration_options_errors(), tuple()}.
describe_configuration_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_configuration_options(Client, Input, []).

-spec describe_configuration_options(aws_client:aws_client(), describe_configuration_options_message(), proplists:proplist()) ->
    {ok, configuration_options_description(), tuple()} |
    {error, any()} |
    {error, describe_configuration_options_errors(), tuple()}.
describe_configuration_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConfigurationOptions">>, Input, Options).

%% @doc Returns a description of the settings for the specified configuration
%% set, that is,
%% either a configuration template or the configuration set associated with a
%% running
%% environment.
%%
%% When describing the settings for the configuration set associated with a
%% running
%% environment, it is possible to receive two sets of setting descriptions.
%% One is the deployed
%% configuration set, and the other is a draft configuration of an
%% environment that is either in
%% the process of deployment or that failed to deploy.
%%
%% Related Topics
%%
%% `DeleteEnvironmentConfiguration'
-spec describe_configuration_settings(aws_client:aws_client(), describe_configuration_settings_message()) ->
    {ok, configuration_settings_descriptions(), tuple()} |
    {error, any()} |
    {error, describe_configuration_settings_errors(), tuple()}.
describe_configuration_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_configuration_settings(Client, Input, []).

-spec describe_configuration_settings(aws_client:aws_client(), describe_configuration_settings_message(), proplists:proplist()) ->
    {ok, configuration_settings_descriptions(), tuple()} |
    {error, any()} |
    {error, describe_configuration_settings_errors(), tuple()}.
describe_configuration_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConfigurationSettings">>, Input, Options).

%% @doc Returns information about the overall health of the specified
%% environment.
%%
%% The
%% DescribeEnvironmentHealth operation is only available with
%% AWS Elastic Beanstalk Enhanced Health.
-spec describe_environment_health(aws_client:aws_client(), describe_environment_health_request()) ->
    {ok, describe_environment_health_result(), tuple()} |
    {error, any()} |
    {error, describe_environment_health_errors(), tuple()}.
describe_environment_health(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_environment_health(Client, Input, []).

-spec describe_environment_health(aws_client:aws_client(), describe_environment_health_request(), proplists:proplist()) ->
    {ok, describe_environment_health_result(), tuple()} |
    {error, any()} |
    {error, describe_environment_health_errors(), tuple()}.
describe_environment_health(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEnvironmentHealth">>, Input, Options).

%% @doc Lists an environment's completed and failed managed actions.
-spec describe_environment_managed_action_history(aws_client:aws_client(), describe_environment_managed_action_history_request()) ->
    {ok, describe_environment_managed_action_history_result(), tuple()} |
    {error, any()} |
    {error, describe_environment_managed_action_history_errors(), tuple()}.
describe_environment_managed_action_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_environment_managed_action_history(Client, Input, []).

-spec describe_environment_managed_action_history(aws_client:aws_client(), describe_environment_managed_action_history_request(), proplists:proplist()) ->
    {ok, describe_environment_managed_action_history_result(), tuple()} |
    {error, any()} |
    {error, describe_environment_managed_action_history_errors(), tuple()}.
describe_environment_managed_action_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEnvironmentManagedActionHistory">>, Input, Options).

%% @doc Lists an environment's upcoming and in-progress managed actions.
-spec describe_environment_managed_actions(aws_client:aws_client(), describe_environment_managed_actions_request()) ->
    {ok, describe_environment_managed_actions_result(), tuple()} |
    {error, any()} |
    {error, describe_environment_managed_actions_errors(), tuple()}.
describe_environment_managed_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_environment_managed_actions(Client, Input, []).

-spec describe_environment_managed_actions(aws_client:aws_client(), describe_environment_managed_actions_request(), proplists:proplist()) ->
    {ok, describe_environment_managed_actions_result(), tuple()} |
    {error, any()} |
    {error, describe_environment_managed_actions_errors(), tuple()}.
describe_environment_managed_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEnvironmentManagedActions">>, Input, Options).

%% @doc Returns AWS resources for this environment.
-spec describe_environment_resources(aws_client:aws_client(), describe_environment_resources_message()) ->
    {ok, environment_resource_descriptions_message(), tuple()} |
    {error, any()} |
    {error, describe_environment_resources_errors(), tuple()}.
describe_environment_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_environment_resources(Client, Input, []).

-spec describe_environment_resources(aws_client:aws_client(), describe_environment_resources_message(), proplists:proplist()) ->
    {ok, environment_resource_descriptions_message(), tuple()} |
    {error, any()} |
    {error, describe_environment_resources_errors(), tuple()}.
describe_environment_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEnvironmentResources">>, Input, Options).

%% @doc Returns descriptions for existing environments.
-spec describe_environments(aws_client:aws_client(), describe_environments_message()) ->
    {ok, environment_descriptions_message(), tuple()} |
    {error, any()}.
describe_environments(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_environments(Client, Input, []).

-spec describe_environments(aws_client:aws_client(), describe_environments_message(), proplists:proplist()) ->
    {ok, environment_descriptions_message(), tuple()} |
    {error, any()}.
describe_environments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEnvironments">>, Input, Options).

%% @doc Returns list of event descriptions matching criteria up to the last 6
%% weeks.
%%
%% This action returns the most recent 1,000 events from the specified
%% `NextToken'.
-spec describe_events(aws_client:aws_client(), describe_events_message()) ->
    {ok, event_descriptions_message(), tuple()} |
    {error, any()}.
describe_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_events(Client, Input, []).

-spec describe_events(aws_client:aws_client(), describe_events_message(), proplists:proplist()) ->
    {ok, event_descriptions_message(), tuple()} |
    {error, any()}.
describe_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEvents">>, Input, Options).

%% @doc Retrieves detailed information about the health of instances in your
%% AWS Elastic
%% Beanstalk.
%%
%% This operation requires enhanced health
%% reporting:
%% https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced.html.
-spec describe_instances_health(aws_client:aws_client(), describe_instances_health_request()) ->
    {ok, describe_instances_health_result(), tuple()} |
    {error, any()} |
    {error, describe_instances_health_errors(), tuple()}.
describe_instances_health(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instances_health(Client, Input, []).

-spec describe_instances_health(aws_client:aws_client(), describe_instances_health_request(), proplists:proplist()) ->
    {ok, describe_instances_health_result(), tuple()} |
    {error, any()} |
    {error, describe_instances_health_errors(), tuple()}.
describe_instances_health(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstancesHealth">>, Input, Options).

%% @doc Describes a platform version.
%%
%% Provides full details. Compare to `ListPlatformVersions', which
%% provides summary information about a list of
%% platform versions.
%%
%% For definitions of platform version and other platform-related terms, see
%% AWS Elastic Beanstalk
%% Platforms Glossary:
%% https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/platforms-glossary.html.
-spec describe_platform_version(aws_client:aws_client(), describe_platform_version_request()) ->
    {ok, describe_platform_version_result(), tuple()} |
    {error, any()} |
    {error, describe_platform_version_errors(), tuple()}.
describe_platform_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_platform_version(Client, Input, []).

-spec describe_platform_version(aws_client:aws_client(), describe_platform_version_request(), proplists:proplist()) ->
    {ok, describe_platform_version_result(), tuple()} |
    {error, any()} |
    {error, describe_platform_version_errors(), tuple()}.
describe_platform_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePlatformVersion">>, Input, Options).

%% @doc Disassociate the operations role from an environment.
%%
%% After this call is made, Elastic Beanstalk uses
%% the caller's permissions for permissions to downstream services during
%% subsequent calls acting
%% on this environment. For more information, see Operations roles:
%% https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html
%% in the
%% AWS Elastic Beanstalk Developer Guide.
-spec disassociate_environment_operations_role(aws_client:aws_client(), disassociate_environment_operations_role_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_environment_operations_role_errors(), tuple()}.
disassociate_environment_operations_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_environment_operations_role(Client, Input, []).

-spec disassociate_environment_operations_role(aws_client:aws_client(), disassociate_environment_operations_role_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_environment_operations_role_errors(), tuple()}.
disassociate_environment_operations_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateEnvironmentOperationsRole">>, Input, Options).

%% @doc Returns a list of the available solution stack names, with the public
%% version first and
%% then in reverse chronological order.
-spec list_available_solution_stacks(aws_client:aws_client(), #{}) ->
    {ok, list_available_solution_stacks_result_message(), tuple()} |
    {error, any()}.
list_available_solution_stacks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_available_solution_stacks(Client, Input, []).

-spec list_available_solution_stacks(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, list_available_solution_stacks_result_message(), tuple()} |
    {error, any()}.
list_available_solution_stacks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAvailableSolutionStacks">>, Input, Options).

%% @doc Lists the platform branches available for your account in an AWS
%% Region.
%%
%% Provides
%% summary information about each platform branch.
%%
%% For definitions of platform branch and other platform-related terms, see
%% AWS Elastic Beanstalk
%% Platforms Glossary:
%% https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/platforms-glossary.html.
-spec list_platform_branches(aws_client:aws_client(), list_platform_branches_request()) ->
    {ok, list_platform_branches_result(), tuple()} |
    {error, any()}.
list_platform_branches(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_platform_branches(Client, Input, []).

-spec list_platform_branches(aws_client:aws_client(), list_platform_branches_request(), proplists:proplist()) ->
    {ok, list_platform_branches_result(), tuple()} |
    {error, any()}.
list_platform_branches(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPlatformBranches">>, Input, Options).

%% @doc Lists the platform versions available for your account in an AWS
%% Region.
%%
%% Provides
%% summary information about each platform version. Compare to
%% `DescribePlatformVersion', which provides full details about a single
%% platform
%% version.
%%
%% For definitions of platform version and other platform-related terms, see
%% AWS Elastic Beanstalk
%% Platforms Glossary:
%% https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/platforms-glossary.html.
-spec list_platform_versions(aws_client:aws_client(), list_platform_versions_request()) ->
    {ok, list_platform_versions_result(), tuple()} |
    {error, any()} |
    {error, list_platform_versions_errors(), tuple()}.
list_platform_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_platform_versions(Client, Input, []).

-spec list_platform_versions(aws_client:aws_client(), list_platform_versions_request(), proplists:proplist()) ->
    {ok, list_platform_versions_result(), tuple()} |
    {error, any()} |
    {error, list_platform_versions_errors(), tuple()}.
list_platform_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPlatformVersions">>, Input, Options).

%% @doc Return the tags applied to an AWS Elastic Beanstalk resource.
%%
%% The response contains a list of tag key-value pairs.
%%
%% Elastic Beanstalk supports tagging of all of its resources. For details
%% about resource tagging, see
%% Tagging Application
%% Resources:
%% https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/applications-tagging-resources.html.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_message()) ->
    {ok, resource_tags_description_message(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_message(), proplists:proplist()) ->
    {ok, resource_tags_description_message(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Deletes and recreates all of the AWS resources (for example: the Auto
%% Scaling group,
%% load balancer, etc.) for a specified environment and forces a restart.
-spec rebuild_environment(aws_client:aws_client(), rebuild_environment_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, rebuild_environment_errors(), tuple()}.
rebuild_environment(Client, Input)
  when is_map(Client), is_map(Input) ->
    rebuild_environment(Client, Input, []).

-spec rebuild_environment(aws_client:aws_client(), rebuild_environment_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, rebuild_environment_errors(), tuple()}.
rebuild_environment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebuildEnvironment">>, Input, Options).

%% @doc Initiates a request to compile the specified type of information of
%% the deployed
%% environment.
%%
%% Setting the `InfoType' to `tail' compiles the last lines from
%% the application server log files of every Amazon EC2 instance in your
%% environment.
%%
%% Setting the `InfoType' to `bundle' compresses the application
%% server log files for every Amazon EC2 instance into a `.zip' file.
%% Legacy and .NET
%% containers do not support bundle logs.
%%
%% Use `RetrieveEnvironmentInfo' to obtain the set of logs.
%%
%% Related Topics
%%
%% `RetrieveEnvironmentInfo'
-spec request_environment_info(aws_client:aws_client(), request_environment_info_message()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
request_environment_info(Client, Input)
  when is_map(Client), is_map(Input) ->
    request_environment_info(Client, Input, []).

-spec request_environment_info(aws_client:aws_client(), request_environment_info_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
request_environment_info(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RequestEnvironmentInfo">>, Input, Options).

%% @doc Causes the environment to restart the application container server
%% running on each
%% Amazon EC2 instance.
-spec restart_app_server(aws_client:aws_client(), restart_app_server_message()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
restart_app_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    restart_app_server(Client, Input, []).

-spec restart_app_server(aws_client:aws_client(), restart_app_server_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
restart_app_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestartAppServer">>, Input, Options).

%% @doc Retrieves the compiled information from a
%% `RequestEnvironmentInfo'
%% request.
%%
%% Related Topics
%%
%% `RequestEnvironmentInfo'
-spec retrieve_environment_info(aws_client:aws_client(), retrieve_environment_info_message()) ->
    {ok, retrieve_environment_info_result_message(), tuple()} |
    {error, any()}.
retrieve_environment_info(Client, Input)
  when is_map(Client), is_map(Input) ->
    retrieve_environment_info(Client, Input, []).

-spec retrieve_environment_info(aws_client:aws_client(), retrieve_environment_info_message(), proplists:proplist()) ->
    {ok, retrieve_environment_info_result_message(), tuple()} |
    {error, any()}.
retrieve_environment_info(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RetrieveEnvironmentInfo">>, Input, Options).

%% @doc Swaps the CNAMEs of two environments.
-spec swap_environment_cnames(aws_client:aws_client(), swap_environment_cnames_message()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
swap_environment_cnames(Client, Input)
  when is_map(Client), is_map(Input) ->
    swap_environment_cnames(Client, Input, []).

-spec swap_environment_cnames(aws_client:aws_client(), swap_environment_cnames_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
swap_environment_cnames(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SwapEnvironmentCNAMEs">>, Input, Options).

%% @doc Terminates the specified environment.
-spec terminate_environment(aws_client:aws_client(), terminate_environment_message()) ->
    {ok, environment_description(), tuple()} |
    {error, any()} |
    {error, terminate_environment_errors(), tuple()}.
terminate_environment(Client, Input)
  when is_map(Client), is_map(Input) ->
    terminate_environment(Client, Input, []).

-spec terminate_environment(aws_client:aws_client(), terminate_environment_message(), proplists:proplist()) ->
    {ok, environment_description(), tuple()} |
    {error, any()} |
    {error, terminate_environment_errors(), tuple()}.
terminate_environment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TerminateEnvironment">>, Input, Options).

%% @doc Updates the specified application to have the specified properties.
%%
%% If a property (for example, `description') is not provided, the value
%% remains unchanged. To clear these properties, specify an empty string.
-spec update_application(aws_client:aws_client(), update_application_message()) ->
    {ok, application_description_message(), tuple()} |
    {error, any()}.
update_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_application(Client, Input, []).

-spec update_application(aws_client:aws_client(), update_application_message(), proplists:proplist()) ->
    {ok, application_description_message(), tuple()} |
    {error, any()}.
update_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApplication">>, Input, Options).

%% @doc Modifies lifecycle settings for an application.
-spec update_application_resource_lifecycle(aws_client:aws_client(), update_application_resource_lifecycle_message()) ->
    {ok, application_resource_lifecycle_description_message(), tuple()} |
    {error, any()} |
    {error, update_application_resource_lifecycle_errors(), tuple()}.
update_application_resource_lifecycle(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_application_resource_lifecycle(Client, Input, []).

-spec update_application_resource_lifecycle(aws_client:aws_client(), update_application_resource_lifecycle_message(), proplists:proplist()) ->
    {ok, application_resource_lifecycle_description_message(), tuple()} |
    {error, any()} |
    {error, update_application_resource_lifecycle_errors(), tuple()}.
update_application_resource_lifecycle(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApplicationResourceLifecycle">>, Input, Options).

%% @doc Updates the specified application version to have the specified
%% properties.
%%
%% If a property (for example, `description') is not provided, the value
%% remains unchanged. To clear properties, specify an empty string.
-spec update_application_version(aws_client:aws_client(), update_application_version_message()) ->
    {ok, application_version_description_message(), tuple()} |
    {error, any()}.
update_application_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_application_version(Client, Input, []).

-spec update_application_version(aws_client:aws_client(), update_application_version_message(), proplists:proplist()) ->
    {ok, application_version_description_message(), tuple()} |
    {error, any()}.
update_application_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApplicationVersion">>, Input, Options).

%% @doc Updates the specified configuration template to have the specified
%% properties or
%% configuration option values.
%%
%% If a property (for example, `ApplicationName') is not provided, its
%% value
%% remains unchanged. To clear such properties, specify an empty string.
%%
%% Related Topics
%%
%% `DescribeConfigurationOptions'
-spec update_configuration_template(aws_client:aws_client(), update_configuration_template_message()) ->
    {ok, configuration_settings_description(), tuple()} |
    {error, any()} |
    {error, update_configuration_template_errors(), tuple()}.
update_configuration_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_configuration_template(Client, Input, []).

-spec update_configuration_template(aws_client:aws_client(), update_configuration_template_message(), proplists:proplist()) ->
    {ok, configuration_settings_description(), tuple()} |
    {error, any()} |
    {error, update_configuration_template_errors(), tuple()}.
update_configuration_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateConfigurationTemplate">>, Input, Options).

%% @doc Updates the environment description, deploys a new application
%% version, updates the
%% configuration settings to an entirely new configuration template, or
%% updates select
%% configuration option values in the running environment.
%%
%% Attempting to update both the release and configuration is not allowed and
%% AWS Elastic
%% Beanstalk returns an `InvalidParameterCombination' error.
%%
%% When updating the configuration settings to a new template or individual
%% settings, a
%% draft configuration is created and `DescribeConfigurationSettings' for
%% this
%% environment returns two setting descriptions with different
%% `DeploymentStatus'
%% values.
-spec update_environment(aws_client:aws_client(), update_environment_message()) ->
    {ok, environment_description(), tuple()} |
    {error, any()} |
    {error, update_environment_errors(), tuple()}.
update_environment(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_environment(Client, Input, []).

-spec update_environment(aws_client:aws_client(), update_environment_message(), proplists:proplist()) ->
    {ok, environment_description(), tuple()} |
    {error, any()} |
    {error, update_environment_errors(), tuple()}.
update_environment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEnvironment">>, Input, Options).

%% @doc Update the list of tags applied to an AWS Elastic Beanstalk resource.
%%
%% Two lists can be passed: `TagsToAdd'
%% for tags to add or update, and `TagsToRemove'.
%%
%% Elastic Beanstalk supports tagging of all of its resources. For details
%% about resource tagging, see
%% Tagging Application
%% Resources:
%% https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/applications-tagging-resources.html.
%%
%% If you create a custom IAM user policy to control permission to this
%% operation, specify
%% one of the following two virtual actions (or both) instead of the API
%% operation name:
%%
%% elasticbeanstalk:AddTags
%%
%% Controls permission to call `UpdateTagsForResource' and pass a list of
%% tags to add in the `TagsToAdd'
%% parameter.
%%
%% elasticbeanstalk:RemoveTags
%%
%% Controls permission to call `UpdateTagsForResource' and pass a list of
%% tag keys to remove in the `TagsToRemove'
%% parameter.
%%
%% For details about creating a custom user policy, see Creating a Custom
%% User Policy:
%% https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/AWSHowTo.iam.managed-policies.html#AWSHowTo.iam.policies.
-spec update_tags_for_resource(aws_client:aws_client(), update_tags_for_resource_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_tags_for_resource_errors(), tuple()}.
update_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_tags_for_resource(Client, Input, []).

-spec update_tags_for_resource(aws_client:aws_client(), update_tags_for_resource_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_tags_for_resource_errors(), tuple()}.
update_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTagsForResource">>, Input, Options).

%% @doc Takes a set of configuration settings and either a configuration
%% template or
%% environment, and determines whether those values are valid.
%%
%% This action returns a list of messages indicating any errors or warnings
%% associated
%% with the selection of option values.
-spec validate_configuration_settings(aws_client:aws_client(), validate_configuration_settings_message()) ->
    {ok, configuration_settings_validation_messages(), tuple()} |
    {error, any()} |
    {error, validate_configuration_settings_errors(), tuple()}.
validate_configuration_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    validate_configuration_settings(Client, Input, []).

-spec validate_configuration_settings(aws_client:aws_client(), validate_configuration_settings_message(), proplists:proplist()) ->
    {ok, configuration_settings_validation_messages(), tuple()} |
    {error, any()} |
    {error, validate_configuration_settings_errors(), tuple()}.
validate_configuration_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ValidateConfigurationSettings">>, Input, Options).

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
    Client1 = Client#{service => <<"elasticbeanstalk">>},
    Host = build_host(<<"elasticbeanstalk">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-www-form-urlencoded">>}
    ],

    Input = Input0#{ <<"Action">> => Action
                   , <<"Version">> => <<"2010-12-01">>
                   },

    Payload = aws_util:encode_query(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = aws_util:decode_xml(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = aws_util:decode_xml(Body),
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
