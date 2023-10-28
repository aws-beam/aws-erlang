%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon EMR is a web service that makes it easier to process large
%% amounts of data efficiently.
%%
%% Amazon EMR uses Hadoop processing combined with several Amazon Web
%% Services services to do tasks such as web indexing, data mining, log file
%% analysis, machine learning, scientific simulation, and data warehouse
%% management.
-module(aws_emr).

-export([add_instance_fleet/2,
         add_instance_fleet/3,
         add_instance_groups/2,
         add_instance_groups/3,
         add_job_flow_steps/2,
         add_job_flow_steps/3,
         add_tags/2,
         add_tags/3,
         cancel_steps/2,
         cancel_steps/3,
         create_security_configuration/2,
         create_security_configuration/3,
         create_studio/2,
         create_studio/3,
         create_studio_session_mapping/2,
         create_studio_session_mapping/3,
         delete_security_configuration/2,
         delete_security_configuration/3,
         delete_studio/2,
         delete_studio/3,
         delete_studio_session_mapping/2,
         delete_studio_session_mapping/3,
         describe_cluster/2,
         describe_cluster/3,
         describe_job_flows/2,
         describe_job_flows/3,
         describe_notebook_execution/2,
         describe_notebook_execution/3,
         describe_release_label/2,
         describe_release_label/3,
         describe_security_configuration/2,
         describe_security_configuration/3,
         describe_step/2,
         describe_step/3,
         describe_studio/2,
         describe_studio/3,
         get_auto_termination_policy/2,
         get_auto_termination_policy/3,
         get_block_public_access_configuration/2,
         get_block_public_access_configuration/3,
         get_cluster_session_credentials/2,
         get_cluster_session_credentials/3,
         get_managed_scaling_policy/2,
         get_managed_scaling_policy/3,
         get_studio_session_mapping/2,
         get_studio_session_mapping/3,
         list_bootstrap_actions/2,
         list_bootstrap_actions/3,
         list_clusters/2,
         list_clusters/3,
         list_instance_fleets/2,
         list_instance_fleets/3,
         list_instance_groups/2,
         list_instance_groups/3,
         list_instances/2,
         list_instances/3,
         list_notebook_executions/2,
         list_notebook_executions/3,
         list_release_labels/2,
         list_release_labels/3,
         list_security_configurations/2,
         list_security_configurations/3,
         list_steps/2,
         list_steps/3,
         list_studio_session_mappings/2,
         list_studio_session_mappings/3,
         list_studios/2,
         list_studios/3,
         list_supported_instance_types/2,
         list_supported_instance_types/3,
         modify_cluster/2,
         modify_cluster/3,
         modify_instance_fleet/2,
         modify_instance_fleet/3,
         modify_instance_groups/2,
         modify_instance_groups/3,
         put_auto_scaling_policy/2,
         put_auto_scaling_policy/3,
         put_auto_termination_policy/2,
         put_auto_termination_policy/3,
         put_block_public_access_configuration/2,
         put_block_public_access_configuration/3,
         put_managed_scaling_policy/2,
         put_managed_scaling_policy/3,
         remove_auto_scaling_policy/2,
         remove_auto_scaling_policy/3,
         remove_auto_termination_policy/2,
         remove_auto_termination_policy/3,
         remove_managed_scaling_policy/2,
         remove_managed_scaling_policy/3,
         remove_tags/2,
         remove_tags/3,
         run_job_flow/2,
         run_job_flow/3,
         set_termination_protection/2,
         set_termination_protection/3,
         set_visible_to_all_users/2,
         set_visible_to_all_users/3,
         start_notebook_execution/2,
         start_notebook_execution/3,
         stop_notebook_execution/2,
         stop_notebook_execution/3,
         terminate_job_flows/2,
         terminate_job_flows/3,
         update_studio/2,
         update_studio/3,
         update_studio_session_mapping/2,
         update_studio_session_mapping/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds an instance fleet to a running cluster.
%%
%% The instance fleet configuration is available only in Amazon EMR releases
%% 4.8.0 and higher, excluding 5.0.x.
add_instance_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_instance_fleet(Client, Input, []).
add_instance_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddInstanceFleet">>, Input, Options).

%% @doc Adds one or more instance groups to a running cluster.
add_instance_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_instance_groups(Client, Input, []).
add_instance_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddInstanceGroups">>, Input, Options).

%% @doc AddJobFlowSteps adds new steps to a running cluster.
%%
%% A maximum of 256 steps are allowed in each job flow.
%%
%% If your cluster is long-running (such as a Hive data warehouse) or
%% complex, you may require more than 256 steps to process your data. You can
%% bypass the 256-step limitation in various ways, including using SSH to
%% connect to the master node and submitting queries directly to the software
%% running on the master node, such as Hive and Hadoop.
%%
%% A step specifies the location of a JAR file stored either on the master
%% node of the cluster or in Amazon S3. Each step is performed by the main
%% function of the main class of the JAR file. The main class can be
%% specified either in the manifest of the JAR or by using the MainFunction
%% parameter of the step.
%%
%% Amazon EMR executes each step in the order listed. For a step to be
%% considered complete, the main function must exit with a zero exit code and
%% all Hadoop jobs started while the step was running must have completed and
%% run successfully.
%%
%% You can only add steps to a cluster that is in one of the following
%% states: STARTING, BOOTSTRAPPING, RUNNING, or WAITING.
%%
%% The string values passed into `HadoopJarStep' object cannot exceed a
%% total of 10240 characters.
add_job_flow_steps(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_job_flow_steps(Client, Input, []).
add_job_flow_steps(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddJobFlowSteps">>, Input, Options).

%% @doc Adds tags to an Amazon EMR resource, such as a cluster or an Amazon
%% EMR Studio.
%%
%% Tags make it easier to associate resources in various ways, such as
%% grouping clusters to track your Amazon EMR resource allocation costs. For
%% more information, see Tag Clusters.
add_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags(Client, Input, []).
add_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTags">>, Input, Options).

%% @doc Cancels a pending step or steps in a running cluster.
%%
%% Available only in Amazon EMR versions 4.8.0 and higher, excluding version
%% 5.0.0. A maximum of 256 steps are allowed in each CancelSteps request.
%% CancelSteps is idempotent but asynchronous; it does not guarantee that a
%% step will be canceled, even if the request is successfully submitted. When
%% you use Amazon EMR releases 5.28.0 and higher, you can cancel steps that
%% are in a `PENDING' or `RUNNING' state. In earlier versions of
%% Amazon EMR, you can only cancel steps that are in a `PENDING' state.
cancel_steps(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_steps(Client, Input, []).
cancel_steps(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelSteps">>, Input, Options).

%% @doc Creates a security configuration, which is stored in the service and
%% can be specified when a cluster is created.
create_security_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_security_configuration(Client, Input, []).
create_security_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSecurityConfiguration">>, Input, Options).

%% @doc Creates a new Amazon EMR Studio.
create_studio(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_studio(Client, Input, []).
create_studio(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStudio">>, Input, Options).

%% @doc Maps a user or group to the Amazon EMR Studio specified by
%% `StudioId', and applies a session policy to refine Studio permissions
%% for that user or group.
%%
%% Use `CreateStudioSessionMapping' to assign users to a Studio when you
%% use IAM Identity Center authentication. For instructions on how to assign
%% users to a Studio when you use IAM authentication, see Assign a user or
%% group to your EMR Studio.
create_studio_session_mapping(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_studio_session_mapping(Client, Input, []).
create_studio_session_mapping(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStudioSessionMapping">>, Input, Options).

%% @doc Deletes a security configuration.
delete_security_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_security_configuration(Client, Input, []).
delete_security_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSecurityConfiguration">>, Input, Options).

%% @doc Removes an Amazon EMR Studio from the Studio metadata store.
delete_studio(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_studio(Client, Input, []).
delete_studio(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStudio">>, Input, Options).

%% @doc Removes a user or group from an Amazon EMR Studio.
delete_studio_session_mapping(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_studio_session_mapping(Client, Input, []).
delete_studio_session_mapping(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStudioSessionMapping">>, Input, Options).

%% @doc Provides cluster-level details including status, hardware and
%% software configuration, VPC settings, and so on.
describe_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cluster(Client, Input, []).
describe_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCluster">>, Input, Options).

%% @doc This API is no longer supported and will eventually be removed.
%%
%% We recommend you use `ListClusters', `DescribeCluster',
%% `ListSteps', `ListInstanceGroups' and `ListBootstrapActions'
%% instead.
%%
%% DescribeJobFlows returns a list of job flows that match all of the
%% supplied parameters. The parameters can include a list of job flow IDs,
%% job flow states, and restrictions on job flow creation date and time.
%%
%% Regardless of supplied parameters, only job flows created within the last
%% two months are returned.
%%
%% If no parameters are supplied, then job flows matching either of the
%% following criteria are returned:
%%
%% <ul> <li> Job flows created and completed in the last two weeks
%%
%% </li> <li> Job flows created within the last two months that are in one of
%% the following states: `RUNNING', `WAITING', `SHUTTING_DOWN',
%% `STARTING'
%%
%% </li> </ul> Amazon EMR can return a maximum of 512 job flow descriptions.
describe_job_flows(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_job_flows(Client, Input, []).
describe_job_flows(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeJobFlows">>, Input, Options).

%% @doc Provides details of a notebook execution.
describe_notebook_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_notebook_execution(Client, Input, []).
describe_notebook_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeNotebookExecution">>, Input, Options).

%% @doc Provides Amazon EMR release label details, such as the releases
%% available the Region where the API request is run, and the available
%% applications for a specific Amazon EMR release label.
%%
%% Can also list Amazon EMR releases that support a specified version of
%% Spark.
describe_release_label(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_release_label(Client, Input, []).
describe_release_label(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReleaseLabel">>, Input, Options).

%% @doc Provides the details of a security configuration by returning the
%% configuration JSON.
describe_security_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_security_configuration(Client, Input, []).
describe_security_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSecurityConfiguration">>, Input, Options).

%% @doc Provides more detail about the cluster step.
describe_step(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_step(Client, Input, []).
describe_step(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStep">>, Input, Options).

%% @doc Returns details for the specified Amazon EMR Studio including ID,
%% Name, VPC, Studio access URL, and so on.
describe_studio(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_studio(Client, Input, []).
describe_studio(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStudio">>, Input, Options).

%% @doc Returns the auto-termination policy for an Amazon EMR cluster.
get_auto_termination_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_auto_termination_policy(Client, Input, []).
get_auto_termination_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAutoTerminationPolicy">>, Input, Options).

%% @doc Returns the Amazon EMR block public access configuration for your
%% Amazon Web Services account in the current Region.
%%
%% For more information see Configure Block Public Access for Amazon EMR in
%% the Amazon EMR Management Guide.
get_block_public_access_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_block_public_access_configuration(Client, Input, []).
get_block_public_access_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBlockPublicAccessConfiguration">>, Input, Options).

%% @doc Provides temporary, HTTP basic credentials that are associated with a
%% given runtime IAM role and used by a cluster with fine-grained access
%% control activated.
%%
%% You can use these credentials to connect to cluster endpoints that support
%% username and password authentication.
get_cluster_session_credentials(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_cluster_session_credentials(Client, Input, []).
get_cluster_session_credentials(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetClusterSessionCredentials">>, Input, Options).

%% @doc Fetches the attached managed scaling policy for an Amazon EMR
%% cluster.
get_managed_scaling_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_managed_scaling_policy(Client, Input, []).
get_managed_scaling_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetManagedScalingPolicy">>, Input, Options).

%% @doc Fetches mapping details for the specified Amazon EMR Studio and
%% identity (user or group).
get_studio_session_mapping(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_studio_session_mapping(Client, Input, []).
get_studio_session_mapping(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetStudioSessionMapping">>, Input, Options).

%% @doc Provides information about the bootstrap actions associated with a
%% cluster.
list_bootstrap_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_bootstrap_actions(Client, Input, []).
list_bootstrap_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBootstrapActions">>, Input, Options).

%% @doc Provides the status of all clusters visible to this Amazon Web
%% Services account.
%%
%% Allows you to filter the list of clusters based on certain criteria; for
%% example, filtering by cluster creation date and time or by status. This
%% call returns a maximum of 50 clusters in unsorted order per call, but
%% returns a marker to track the paging of the cluster list across multiple
%% ListClusters calls.
list_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_clusters(Client, Input, []).
list_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListClusters">>, Input, Options).

%% @doc Lists all available details about the instance fleets in a cluster.
%%
%% The instance fleet configuration is available only in Amazon EMR releases
%% 4.8.0 and higher, excluding 5.0.x versions.
list_instance_fleets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_instance_fleets(Client, Input, []).
list_instance_fleets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInstanceFleets">>, Input, Options).

%% @doc Provides all available details about the instance groups in a
%% cluster.
list_instance_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_instance_groups(Client, Input, []).
list_instance_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInstanceGroups">>, Input, Options).

%% @doc Provides information for all active Amazon EC2 instances and Amazon
%% EC2 instances terminated in the last 30 days, up to a maximum of 2,000.
%%
%% Amazon EC2 instances in any of the following states are considered active:
%% AWAITING_FULFILLMENT, PROVISIONING, BOOTSTRAPPING, RUNNING.
list_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_instances(Client, Input, []).
list_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInstances">>, Input, Options).

%% @doc Provides summaries of all notebook executions.
%%
%% You can filter the list based on multiple criteria such as status, time
%% range, and editor id. Returns a maximum of 50 notebook executions and a
%% marker to track the paging of a longer notebook execution list across
%% multiple `ListNotebookExecutions' calls.
list_notebook_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_notebook_executions(Client, Input, []).
list_notebook_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListNotebookExecutions">>, Input, Options).

%% @doc Retrieves release labels of Amazon EMR services in the Region where
%% the API is called.
list_release_labels(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_release_labels(Client, Input, []).
list_release_labels(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListReleaseLabels">>, Input, Options).

%% @doc Lists all the security configurations visible to this account,
%% providing their creation dates and times, and their names.
%%
%% This call returns a maximum of 50 clusters per call, but returns a marker
%% to track the paging of the cluster list across multiple
%% ListSecurityConfigurations calls.
list_security_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_security_configurations(Client, Input, []).
list_security_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSecurityConfigurations">>, Input, Options).

%% @doc Provides a list of steps for the cluster in reverse order unless you
%% specify `stepIds' with the request or filter by `StepStates'.
%%
%% You can specify a maximum of 10 `stepIDs'. The CLI automatically
%% paginates results to return a list greater than 50 steps. To return more
%% than 50 steps using the CLI, specify a `Marker', which is a pagination
%% token that indicates the next set of steps to retrieve.
list_steps(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_steps(Client, Input, []).
list_steps(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSteps">>, Input, Options).

%% @doc Returns a list of all user or group session mappings for the Amazon
%% EMR Studio specified by `StudioId'.
list_studio_session_mappings(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_studio_session_mappings(Client, Input, []).
list_studio_session_mappings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStudioSessionMappings">>, Input, Options).

%% @doc Returns a list of all Amazon EMR Studios associated with the Amazon
%% Web Services account.
%%
%% The list includes details such as ID, Studio Access URL, and creation time
%% for each Studio.
list_studios(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_studios(Client, Input, []).
list_studios(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStudios">>, Input, Options).

%% @doc A list of the instance types that Amazon EMR supports.
%%
%% You can filter the list by Amazon Web Services Region and Amazon EMR
%% release.
list_supported_instance_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_supported_instance_types(Client, Input, []).
list_supported_instance_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSupportedInstanceTypes">>, Input, Options).

%% @doc Modifies the number of steps that can be executed concurrently for
%% the cluster specified using ClusterID.
modify_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_cluster(Client, Input, []).
modify_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyCluster">>, Input, Options).

%% @doc Modifies the target On-Demand and target Spot capacities for the
%% instance fleet with the specified InstanceFleetID within the cluster
%% specified using ClusterID.
%%
%% The call either succeeds or fails atomically.
%%
%% The instance fleet configuration is available only in Amazon EMR releases
%% 4.8.0 and higher, excluding 5.0.x versions.
modify_instance_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_instance_fleet(Client, Input, []).
modify_instance_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyInstanceFleet">>, Input, Options).

%% @doc ModifyInstanceGroups modifies the number of nodes and configuration
%% settings of an instance group.
%%
%% The input parameters include the new target instance count for the group
%% and the instance group ID. The call will either succeed or fail
%% atomically.
modify_instance_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_instance_groups(Client, Input, []).
modify_instance_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyInstanceGroups">>, Input, Options).

%% @doc Creates or updates an automatic scaling policy for a core instance
%% group or task instance group in an Amazon EMR cluster.
%%
%% The automatic scaling policy defines how an instance group dynamically
%% adds and terminates Amazon EC2 instances in response to the value of a
%% CloudWatch metric.
put_auto_scaling_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_auto_scaling_policy(Client, Input, []).
put_auto_scaling_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAutoScalingPolicy">>, Input, Options).

%% @doc Auto-termination is supported in Amazon EMR releases 5.30.0 and 6.1.0
%% and higher.
%%
%% For more information, see Using an auto-termination policy.
%%
%% Creates or updates an auto-termination policy for an Amazon EMR cluster.
%% An auto-termination policy defines the amount of idle time in seconds
%% after which a cluster automatically terminates. For alternative cluster
%% termination options, see Control cluster termination.
put_auto_termination_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_auto_termination_policy(Client, Input, []).
put_auto_termination_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAutoTerminationPolicy">>, Input, Options).

%% @doc Creates or updates an Amazon EMR block public access configuration
%% for your Amazon Web Services account in the current Region.
%%
%% For more information see Configure Block Public Access for Amazon EMR in
%% the Amazon EMR Management Guide.
put_block_public_access_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_block_public_access_configuration(Client, Input, []).
put_block_public_access_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutBlockPublicAccessConfiguration">>, Input, Options).

%% @doc Creates or updates a managed scaling policy for an Amazon EMR
%% cluster.
%%
%% The managed scaling policy defines the limits for resources, such as
%% Amazon EC2 instances that can be added or terminated from a cluster. The
%% policy only applies to the core and task nodes. The master node cannot be
%% scaled after initial configuration.
put_managed_scaling_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_managed_scaling_policy(Client, Input, []).
put_managed_scaling_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutManagedScalingPolicy">>, Input, Options).

%% @doc Removes an automatic scaling policy from a specified instance group
%% within an Amazon EMR cluster.
remove_auto_scaling_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_auto_scaling_policy(Client, Input, []).
remove_auto_scaling_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveAutoScalingPolicy">>, Input, Options).

%% @doc Removes an auto-termination policy from an Amazon EMR cluster.
remove_auto_termination_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_auto_termination_policy(Client, Input, []).
remove_auto_termination_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveAutoTerminationPolicy">>, Input, Options).

%% @doc Removes a managed scaling policy from a specified Amazon EMR cluster.
remove_managed_scaling_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_managed_scaling_policy(Client, Input, []).
remove_managed_scaling_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveManagedScalingPolicy">>, Input, Options).

%% @doc Removes tags from an Amazon EMR resource, such as a cluster or Amazon
%% EMR Studio.
%%
%% Tags make it easier to associate resources in various ways, such as
%% grouping clusters to track your Amazon EMR resource allocation costs. For
%% more information, see Tag Clusters.
%%
%% The following example removes the stack tag with value Prod from a
%% cluster:
remove_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags(Client, Input, []).
remove_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTags">>, Input, Options).

%% @doc RunJobFlow creates and starts running a new cluster (job flow).
%%
%% The cluster runs the steps specified. After the steps complete, the
%% cluster stops and the HDFS partition is lost. To prevent loss of data,
%% configure the last step of the job flow to store results in Amazon S3. If
%% the `JobFlowInstancesConfig' `KeepJobFlowAliveWhenNoSteps'
%% parameter is set to `TRUE', the cluster transitions to the WAITING
%% state rather than shutting down after the steps have completed.
%%
%% For additional protection, you can set the `JobFlowInstancesConfig'
%% `TerminationProtected' parameter to `TRUE' to lock the cluster and
%% prevent it from being terminated by API call, user intervention, or in the
%% event of a job flow error.
%%
%% A maximum of 256 steps are allowed in each job flow.
%%
%% If your cluster is long-running (such as a Hive data warehouse) or
%% complex, you may require more than 256 steps to process your data. You can
%% bypass the 256-step limitation in various ways, including using the SSH
%% shell to connect to the master node and submitting queries directly to the
%% software running on the master node, such as Hive and Hadoop.
%%
%% For long-running clusters, we recommend that you periodically store your
%% results.
%%
%% The instance fleets configuration is available only in Amazon EMR releases
%% 4.8.0 and higher, excluding 5.0.x versions. The RunJobFlow request can
%% contain InstanceFleets parameters or InstanceGroups parameters, but not
%% both.
run_job_flow(Client, Input)
  when is_map(Client), is_map(Input) ->
    run_job_flow(Client, Input, []).
run_job_flow(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RunJobFlow">>, Input, Options).

%% @doc SetTerminationProtection locks a cluster (job flow) so the Amazon EC2
%% instances in the cluster cannot be terminated by user intervention, an API
%% call, or in the event of a job-flow error.
%%
%% The cluster still terminates upon successful completion of the job flow.
%% Calling `SetTerminationProtection' on a cluster is similar to calling
%% the Amazon EC2 `DisableAPITermination' API on all Amazon EC2 instances
%% in a cluster.
%%
%% `SetTerminationProtection' is used to prevent accidental termination
%% of a cluster and to ensure that in the event of an error, the instances
%% persist so that you can recover any data stored in their ephemeral
%% instance storage.
%%
%% To terminate a cluster that has been locked by setting
%% `SetTerminationProtection' to `true', you must first unlock the
%% job flow by a subsequent call to `SetTerminationProtection' in which
%% you set the value to `false'.
%%
%% For more information, seeManaging Cluster Termination in the Amazon EMR
%% Management Guide.
set_termination_protection(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_termination_protection(Client, Input, []).
set_termination_protection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetTerminationProtection">>, Input, Options).

%% @doc The SetVisibleToAllUsers parameter is no longer supported.
%%
%% Your cluster may be visible to all users in your account. To restrict
%% cluster access using an IAM policy, see Identity and Access Management for
%% Amazon EMR.
%%
%% Sets the `Cluster$VisibleToAllUsers' value for an Amazon EMR cluster.
%% When `true', IAM principals in the Amazon Web Services account can
%% perform Amazon EMR cluster actions that their IAM policies allow. When
%% `false', only the IAM principal that created the cluster and the
%% Amazon Web Services account root user can perform Amazon EMR actions on
%% the cluster, regardless of IAM permissions policies attached to other IAM
%% principals.
%%
%% This action works on running clusters. When you create a cluster, use the
%% `RunJobFlowInput$VisibleToAllUsers' parameter.
%%
%% For more information, see Understanding the Amazon EMR Cluster
%% VisibleToAllUsers Setting in the Amazon EMR Management Guide.
set_visible_to_all_users(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_visible_to_all_users(Client, Input, []).
set_visible_to_all_users(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetVisibleToAllUsers">>, Input, Options).

%% @doc Starts a notebook execution.
start_notebook_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_notebook_execution(Client, Input, []).
start_notebook_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartNotebookExecution">>, Input, Options).

%% @doc Stops a notebook execution.
stop_notebook_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_notebook_execution(Client, Input, []).
stop_notebook_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopNotebookExecution">>, Input, Options).

%% @doc TerminateJobFlows shuts a list of clusters (job flows) down.
%%
%% When a job flow is shut down, any step not yet completed is canceled and
%% the Amazon EC2 instances on which the cluster is running are stopped. Any
%% log files not already saved are uploaded to Amazon S3 if a LogUri was
%% specified when the cluster was created.
%%
%% The maximum number of clusters allowed is 10. The call to
%% `TerminateJobFlows' is asynchronous. Depending on the configuration of
%% the cluster, it may take up to 1-5 minutes for the cluster to completely
%% terminate and release allocated resources, such as Amazon EC2 instances.
terminate_job_flows(Client, Input)
  when is_map(Client), is_map(Input) ->
    terminate_job_flows(Client, Input, []).
terminate_job_flows(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TerminateJobFlows">>, Input, Options).

%% @doc Updates an Amazon EMR Studio configuration, including attributes such
%% as name, description, and subnets.
update_studio(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_studio(Client, Input, []).
update_studio(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateStudio">>, Input, Options).

%% @doc Updates the session policy attached to the user or group for the
%% specified Amazon EMR Studio.
update_studio_session_mapping(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_studio_session_mapping(Client, Input, []).
update_studio_session_mapping(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateStudioSessionMapping">>, Input, Options).

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
    Client1 = Client#{service => <<"elasticmapreduce">>},
    Host = build_host(<<"elasticmapreduce">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"ElasticMapReduce.", Action/binary>>}
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
