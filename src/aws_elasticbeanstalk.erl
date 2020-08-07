%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <fullname>AWS Elastic Beanstalk</fullname>
%%
%% AWS Elastic Beanstalk makes it easy for you to create, deploy, and manage
%% scalable, fault-tolerant applications running on the Amazon Web Services
%% cloud.
%%
%% For more information about this product, go to the <a
%% href="http://aws.amazon.com/elasticbeanstalk/">AWS Elastic Beanstalk</a>
%% details page. The location of the latest AWS Elastic Beanstalk WSDL is <a
%% href="https://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl">https://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl</a>.
%% To install the Software Development Kits (SDKs), Integrated Development
%% Environment (IDE) Toolkits, and command line tools that enable you to
%% access the API, go to <a href="http://aws.amazon.com/tools/">Tools for
%% Amazon Web Services</a>.
%%
%% <b>Endpoints</b>
%%
%% For a list of region-specific endpoints that AWS Elastic Beanstalk
%% supports, go to <a
%% href="https://docs.aws.amazon.com/general/latest/gr/rande.html#elasticbeanstalk_region">Regions
%% and Endpoints</a> in the <i>Amazon Web Services Glossary</i>.
-module(aws_elasticbeanstalk).

-export([abort_environment_update/2,
         abort_environment_update/3,
         apply_environment_managed_action/2,
         apply_environment_managed_action/3,
         associate_environment_operations_role/2,
         associate_environment_operations_role/3,
         check_d_n_s_availability/2,
         check_d_n_s_availability/3,
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
         swap_environment_c_n_a_m_es/2,
         swap_environment_c_n_a_m_es/3,
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

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels in-progress environment configuration update or application
%% version deployment.
abort_environment_update(Client, Input)
  when is_map(Client), is_map(Input) ->
    abort_environment_update(Client, Input, []).
abort_environment_update(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AbortEnvironmentUpdate">>, Input, Options).

%% @doc Applies a scheduled managed action immediately. A managed action can
%% be applied only if its status is <code>Scheduled</code>. Get the status
%% and action ID of a managed action with
%% <a>DescribeEnvironmentManagedActions</a>.
apply_environment_managed_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    apply_environment_managed_action(Client, Input, []).
apply_environment_managed_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ApplyEnvironmentManagedAction">>, Input, Options).

%% @doc Add or change the operations role used by an environment. After this
%% call is made, Elastic Beanstalk uses the associated operations role for
%% permissions to downstream services during subsequent calls acting on this
%% environment. For more information, see <a
%% href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html">Operations
%% roles</a> in the <i>AWS Elastic Beanstalk Developer Guide</i>.
associate_environment_operations_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_environment_operations_role(Client, Input, []).
associate_environment_operations_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateEnvironmentOperationsRole">>, Input, Options).

%% @doc Checks if the specified CNAME is available.
check_d_n_s_availability(Client, Input)
  when is_map(Client), is_map(Input) ->
    check_d_n_s_availability(Client, Input, []).
check_d_n_s_availability(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CheckDNSAvailability">>, Input, Options).

%% @doc Create or update a group of environments that each run a separate
%% component of a single application. Takes a list of version labels that
%% specify application source bundles for each of the environments to create
%% or update. The name of each environment and other required information
%% must be included in the source bundles in an environment manifest named
%% <code>env.yaml</code>. See <a
%% href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-mgmt-compose.html">Compose
%% Environments</a> for details.
compose_environments(Client, Input)
  when is_map(Client), is_map(Input) ->
    compose_environments(Client, Input, []).
compose_environments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ComposeEnvironments">>, Input, Options).

%% @doc Creates an application that has one configuration template named
%% <code>default</code> and no application versions.
create_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_application(Client, Input, []).
create_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateApplication">>, Input, Options).

%% @doc Creates an application version for the specified application. You can
%% create an application version from a source bundle in Amazon S3, a commit
%% in AWS CodeCommit, or the output of an AWS CodeBuild build as follows:
%%
%% Specify a commit in an AWS CodeCommit repository with
%% <code>SourceBuildInformation</code>.
%%
%% Specify a build in an AWS CodeBuild with
%% <code>SourceBuildInformation</code> and <code>BuildConfiguration</code>.
%%
%% Specify a source bundle in S3 with <code>SourceBundle</code>
%%
%% Omit both <code>SourceBuildInformation</code> and
%% <code>SourceBundle</code> to use the default sample application.
%%
%% <note> After you create an application version with a specified Amazon S3
%% bucket and key location, you can't change that Amazon S3 location. If you
%% change the Amazon S3 location, you receive an exception when you attempt
%% to launch an environment from the application version.
%%
%% </note>
create_application_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_application_version(Client, Input, []).
create_application_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateApplicationVersion">>, Input, Options).

%% @doc Creates an AWS Elastic Beanstalk configuration template, associated
%% with a specific Elastic Beanstalk application. You define application
%% configuration settings in a configuration template. You can then use the
%% configuration template to deploy different versions of the application
%% with the same configuration settings.
%%
%% Templates aren't associated with any environment. The
%% <code>EnvironmentName</code> response element is always <code>null</code>.
%%
%% Related Topics
%%
%% <ul> <li> <a>DescribeConfigurationOptions</a>
%%
%% </li> <li> <a>DescribeConfigurationSettings</a>
%%
%% </li> <li> <a>ListAvailableSolutionStacks</a>
%%
%% </li> </ul>
create_configuration_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_configuration_template(Client, Input, []).
create_configuration_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConfigurationTemplate">>, Input, Options).

%% @doc Launches an AWS Elastic Beanstalk environment for the specified
%% application using the specified configuration.
create_environment(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_environment(Client, Input, []).
create_environment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEnvironment">>, Input, Options).

%% @doc Create a new version of your custom platform.
create_platform_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_platform_version(Client, Input, []).
create_platform_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePlatformVersion">>, Input, Options).

%% @doc Creates a bucket in Amazon S3 to store application versions, logs,
%% and other files used by Elastic Beanstalk environments. The Elastic
%% Beanstalk console and EB CLI call this API the first time you create an
%% environment in a region. If the storage location already exists,
%% <code>CreateStorageLocation</code> still returns the bucket name but does
%% not create a new bucket.
create_storage_location(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_storage_location(Client, Input, []).
create_storage_location(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStorageLocation">>, Input, Options).

%% @doc Deletes the specified application along with all associated versions
%% and configurations. The application versions will not be deleted from your
%% Amazon S3 bucket.
%%
%% <note> You cannot delete an application that has a running environment.
%%
%% </note>
delete_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application(Client, Input, []).
delete_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplication">>, Input, Options).

%% @doc Deletes the specified version from the specified application.
%%
%% <note> You cannot delete an application version that is associated with a
%% running environment.
%%
%% </note>
delete_application_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application_version(Client, Input, []).
delete_application_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplicationVersion">>, Input, Options).

%% @doc Deletes the specified configuration template.
%%
%% <note> When you launch an environment using a configuration template, the
%% environment gets a copy of the template. You can delete or modify the
%% environment's copy of the template without affecting the running
%% environment.
%%
%% </note>
delete_configuration_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_configuration_template(Client, Input, []).
delete_configuration_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConfigurationTemplate">>, Input, Options).

%% @doc Deletes the draft configuration associated with the running
%% environment.
%%
%% Updating a running environment with any configuration changes creates a
%% draft configuration set. You can get the draft configuration using
%% <a>DescribeConfigurationSettings</a> while the update is in progress or if
%% the update fails. The <code>DeploymentStatus</code> for the draft
%% configuration indicates whether the deployment is in process or has
%% failed. The draft configuration remains in existence until it is deleted
%% with this action.
delete_environment_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_environment_configuration(Client, Input, []).
delete_environment_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEnvironmentConfiguration">>, Input, Options).

%% @doc Deletes the specified version of a custom platform.
delete_platform_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_platform_version(Client, Input, []).
delete_platform_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePlatformVersion">>, Input, Options).

%% @doc Returns attributes related to AWS Elastic Beanstalk that are
%% associated with the calling AWS account.
%%
%% The result currently has one set of attributes—resource quotas.
describe_account_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_attributes(Client, Input, []).
describe_account_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountAttributes">>, Input, Options).

%% @doc Retrieve a list of application versions.
describe_application_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_application_versions(Client, Input, []).
describe_application_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApplicationVersions">>, Input, Options).

%% @doc Returns the descriptions of existing applications.
describe_applications(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_applications(Client, Input, []).
describe_applications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApplications">>, Input, Options).

%% @doc Describes the configuration options that are used in a particular
%% configuration template or environment, or that a specified solution stack
%% defines. The description includes the values the options, their default
%% values, and an indication of the required action on a running environment
%% if an option value is changed.
describe_configuration_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_configuration_options(Client, Input, []).
describe_configuration_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConfigurationOptions">>, Input, Options).

%% @doc Returns a description of the settings for the specified configuration
%% set, that is, either a configuration template or the configuration set
%% associated with a running environment.
%%
%% When describing the settings for the configuration set associated with a
%% running environment, it is possible to receive two sets of setting
%% descriptions. One is the deployed configuration set, and the other is a
%% draft configuration of an environment that is either in the process of
%% deployment or that failed to deploy.
%%
%% Related Topics
%%
%% <ul> <li> <a>DeleteEnvironmentConfiguration</a>
%%
%% </li> </ul>
describe_configuration_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_configuration_settings(Client, Input, []).
describe_configuration_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConfigurationSettings">>, Input, Options).

%% @doc Returns information about the overall health of the specified
%% environment. The <b>DescribeEnvironmentHealth</b> operation is only
%% available with AWS Elastic Beanstalk Enhanced Health.
describe_environment_health(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_environment_health(Client, Input, []).
describe_environment_health(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEnvironmentHealth">>, Input, Options).

%% @doc Lists an environment's completed and failed managed actions.
describe_environment_managed_action_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_environment_managed_action_history(Client, Input, []).
describe_environment_managed_action_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEnvironmentManagedActionHistory">>, Input, Options).

%% @doc Lists an environment's upcoming and in-progress managed actions.
describe_environment_managed_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_environment_managed_actions(Client, Input, []).
describe_environment_managed_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEnvironmentManagedActions">>, Input, Options).

%% @doc Returns AWS resources for this environment.
describe_environment_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_environment_resources(Client, Input, []).
describe_environment_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEnvironmentResources">>, Input, Options).

%% @doc Returns descriptions for existing environments.
describe_environments(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_environments(Client, Input, []).
describe_environments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEnvironments">>, Input, Options).

%% @doc Returns list of event descriptions matching criteria up to the last 6
%% weeks.
%%
%% <note> This action returns the most recent 1,000 events from the specified
%% <code>NextToken</code>.
%%
%% </note>
describe_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_events(Client, Input, []).
describe_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEvents">>, Input, Options).

%% @doc Retrieves detailed information about the health of instances in your
%% AWS Elastic Beanstalk. This operation requires <a
%% href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced.html">enhanced
%% health reporting</a>.
describe_instances_health(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instances_health(Client, Input, []).
describe_instances_health(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstancesHealth">>, Input, Options).

%% @doc Describes a platform version. Provides full details. Compare to
%% <a>ListPlatformVersions</a>, which provides summary information about a
%% list of platform versions.
%%
%% For definitions of platform version and other platform-related terms, see
%% <a
%% href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/platforms-glossary.html">AWS
%% Elastic Beanstalk Platforms Glossary</a>.
describe_platform_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_platform_version(Client, Input, []).
describe_platform_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePlatformVersion">>, Input, Options).

%% @doc Disassociate the operations role from an environment. After this call
%% is made, Elastic Beanstalk uses the caller's permissions for permissions
%% to downstream services during subsequent calls acting on this environment.
%% For more information, see <a
%% href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html">Operations
%% roles</a> in the <i>AWS Elastic Beanstalk Developer Guide</i>.
disassociate_environment_operations_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_environment_operations_role(Client, Input, []).
disassociate_environment_operations_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateEnvironmentOperationsRole">>, Input, Options).

%% @doc Returns a list of the available solution stack names, with the public
%% version first and then in reverse chronological order.
list_available_solution_stacks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_available_solution_stacks(Client, Input, []).
list_available_solution_stacks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAvailableSolutionStacks">>, Input, Options).

%% @doc Lists the platform branches available for your account in an AWS
%% Region. Provides summary information about each platform branch.
%%
%% For definitions of platform branch and other platform-related terms, see
%% <a
%% href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/platforms-glossary.html">AWS
%% Elastic Beanstalk Platforms Glossary</a>.
list_platform_branches(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_platform_branches(Client, Input, []).
list_platform_branches(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPlatformBranches">>, Input, Options).

%% @doc Lists the platform versions available for your account in an AWS
%% Region. Provides summary information about each platform version. Compare
%% to <a>DescribePlatformVersion</a>, which provides full details about a
%% single platform version.
%%
%% For definitions of platform version and other platform-related terms, see
%% <a
%% href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/platforms-glossary.html">AWS
%% Elastic Beanstalk Platforms Glossary</a>.
list_platform_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_platform_versions(Client, Input, []).
list_platform_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPlatformVersions">>, Input, Options).

%% @doc Return the tags applied to an AWS Elastic Beanstalk resource. The
%% response contains a list of tag key-value pairs.
%%
%% Elastic Beanstalk supports tagging of all of its resources. For details
%% about resource tagging, see <a
%% href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/applications-tagging-resources.html">Tagging
%% Application Resources</a>.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Deletes and recreates all of the AWS resources (for example: the Auto
%% Scaling group, load balancer, etc.) for a specified environment and forces
%% a restart.
rebuild_environment(Client, Input)
  when is_map(Client), is_map(Input) ->
    rebuild_environment(Client, Input, []).
rebuild_environment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebuildEnvironment">>, Input, Options).

%% @doc Initiates a request to compile the specified type of information of
%% the deployed environment.
%%
%% Setting the <code>InfoType</code> to <code>tail</code> compiles the last
%% lines from the application server log files of every Amazon EC2 instance
%% in your environment.
%%
%% Setting the <code>InfoType</code> to <code>bundle</code> compresses the
%% application server log files for every Amazon EC2 instance into a
%% <code>.zip</code> file. Legacy and .NET containers do not support bundle
%% logs.
%%
%% Use <a>RetrieveEnvironmentInfo</a> to obtain the set of logs.
%%
%% Related Topics
%%
%% <ul> <li> <a>RetrieveEnvironmentInfo</a>
%%
%% </li> </ul>
request_environment_info(Client, Input)
  when is_map(Client), is_map(Input) ->
    request_environment_info(Client, Input, []).
request_environment_info(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RequestEnvironmentInfo">>, Input, Options).

%% @doc Causes the environment to restart the application container server
%% running on each Amazon EC2 instance.
restart_app_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    restart_app_server(Client, Input, []).
restart_app_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestartAppServer">>, Input, Options).

%% @doc Retrieves the compiled information from a
%% <a>RequestEnvironmentInfo</a> request.
%%
%% Related Topics
%%
%% <ul> <li> <a>RequestEnvironmentInfo</a>
%%
%% </li> </ul>
retrieve_environment_info(Client, Input)
  when is_map(Client), is_map(Input) ->
    retrieve_environment_info(Client, Input, []).
retrieve_environment_info(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RetrieveEnvironmentInfo">>, Input, Options).

%% @doc Swaps the CNAMEs of two environments.
swap_environment_c_n_a_m_es(Client, Input)
  when is_map(Client), is_map(Input) ->
    swap_environment_c_n_a_m_es(Client, Input, []).
swap_environment_c_n_a_m_es(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SwapEnvironmentCNAMEs">>, Input, Options).

%% @doc Terminates the specified environment.
terminate_environment(Client, Input)
  when is_map(Client), is_map(Input) ->
    terminate_environment(Client, Input, []).
terminate_environment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TerminateEnvironment">>, Input, Options).

%% @doc Updates the specified application to have the specified properties.
%%
%% <note> If a property (for example, <code>description</code>) is not
%% provided, the value remains unchanged. To clear these properties, specify
%% an empty string.
%%
%% </note>
update_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_application(Client, Input, []).
update_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApplication">>, Input, Options).

%% @doc Modifies lifecycle settings for an application.
update_application_resource_lifecycle(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_application_resource_lifecycle(Client, Input, []).
update_application_resource_lifecycle(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApplicationResourceLifecycle">>, Input, Options).

%% @doc Updates the specified application version to have the specified
%% properties.
%%
%% <note> If a property (for example, <code>description</code>) is not
%% provided, the value remains unchanged. To clear properties, specify an
%% empty string.
%%
%% </note>
update_application_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_application_version(Client, Input, []).
update_application_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApplicationVersion">>, Input, Options).

%% @doc Updates the specified configuration template to have the specified
%% properties or configuration option values.
%%
%% <note> If a property (for example, <code>ApplicationName</code>) is not
%% provided, its value remains unchanged. To clear such properties, specify
%% an empty string.
%%
%% </note> Related Topics
%%
%% <ul> <li> <a>DescribeConfigurationOptions</a>
%%
%% </li> </ul>
update_configuration_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_configuration_template(Client, Input, []).
update_configuration_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateConfigurationTemplate">>, Input, Options).

%% @doc Updates the environment description, deploys a new application
%% version, updates the configuration settings to an entirely new
%% configuration template, or updates select configuration option values in
%% the running environment.
%%
%% Attempting to update both the release and configuration is not allowed and
%% AWS Elastic Beanstalk returns an <code>InvalidParameterCombination</code>
%% error.
%%
%% When updating the configuration settings to a new template or individual
%% settings, a draft configuration is created and
%% <a>DescribeConfigurationSettings</a> for this environment returns two
%% setting descriptions with different <code>DeploymentStatus</code> values.
update_environment(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_environment(Client, Input, []).
update_environment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEnvironment">>, Input, Options).

%% @doc Update the list of tags applied to an AWS Elastic Beanstalk resource.
%% Two lists can be passed: <code>TagsToAdd</code> for tags to add or update,
%% and <code>TagsToRemove</code>.
%%
%% Elastic Beanstalk supports tagging of all of its resources. For details
%% about resource tagging, see <a
%% href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/applications-tagging-resources.html">Tagging
%% Application Resources</a>.
%%
%% If you create a custom IAM user policy to control permission to this
%% operation, specify one of the following two virtual actions (or both)
%% instead of the API operation name:
%%
%% <dl> <dt>elasticbeanstalk:AddTags</dt> <dd> Controls permission to call
%% <code>UpdateTagsForResource</code> and pass a list of tags to add in the
%% <code>TagsToAdd</code> parameter.
%%
%% </dd> <dt>elasticbeanstalk:RemoveTags</dt> <dd> Controls permission to
%% call <code>UpdateTagsForResource</code> and pass a list of tag keys to
%% remove in the <code>TagsToRemove</code> parameter.
%%
%% </dd> </dl> For details about creating a custom user policy, see <a
%% href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/AWSHowTo.iam.managed-policies.html#AWSHowTo.iam.policies">Creating
%% a Custom User Policy</a>.
update_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_tags_for_resource(Client, Input, []).
update_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTagsForResource">>, Input, Options).

%% @doc Takes a set of configuration settings and either a configuration
%% template or environment, and determines whether those values are valid.
%%
%% This action returns a list of messages indicating any errors or warnings
%% associated with the selection of option values.
validate_configuration_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    validate_configuration_settings(Client, Input, []).
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
    Error :: {binary(), binary()}.
request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"elasticbeanstalk">>},
    Host = get_host(<<"elasticbeanstalk">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-www-form-urlencoded">>}
    ],
    Input = Input0#{ <<"Action">> => Action
                   , <<"Version">> => <<"2010-12-01">>
                   },
    Payload = uri_string:compose_query(maps:to_list(Input)),
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
    CodePath = [<<"ErrorResponse">>, <<"Error">>, <<"Code">>],
    Exception = aws_util:get_in(CodePath, Error),
    MessagePath = [<<"ErrorResponse">>, <<"Error">>, <<"Message">>],
    Reason = aws_util:get_in(MessagePath, Error),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, <<".">>, Region, <<".">>, Endpoint], <<"">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
