%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc Amazon Elastic MapReduce (Amazon EMR) is a web service that makes it
%% easy to process large amounts of data efficiently. Amazon EMR uses Hadoop
%% processing combined with several AWS products to do tasks such as web
%% indexing, data mining, log file analysis, machine learning, scientific
%% simulation, and data warehousing.
-module(aws_emr).

-export([add_instance_groups/2,
         add_instance_groups/3,
         add_job_flow_steps/2,
         add_job_flow_steps/3,
         add_tags/2,
         add_tags/3,
         describe_cluster/2,
         describe_cluster/3,
         describe_job_flows/2,
         describe_job_flows/3,
         describe_step/2,
         describe_step/3,
         list_bootstrap_actions/2,
         list_bootstrap_actions/3,
         list_clusters/2,
         list_clusters/3,
         list_instance_groups/2,
         list_instance_groups/3,
         list_instances/2,
         list_instances/3,
         list_steps/2,
         list_steps/3,
         modify_instance_groups/2,
         modify_instance_groups/3,
         remove_tags/2,
         remove_tags/3,
         run_job_flow/2,
         run_job_flow/3,
         set_termination_protection/2,
         set_termination_protection/3,
         set_visible_to_all_users/2,
         set_visible_to_all_users/3,
         terminate_job_flows/2,
         terminate_job_flows/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc AddInstanceGroups adds an instance group to a running cluster.
add_instance_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_instance_groups(Client, Input, []).
add_instance_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddInstanceGroups">>, Input, Options).

%% @doc AddJobFlowSteps adds new steps to a running job flow. A maximum of
%% 256 steps are allowed in each job flow.
%%
%% If your job flow is long-running (such as a Hive data warehouse) or
%% complex, you may require more than 256 steps to process your data. You can
%% bypass the 256-step limitation in various ways, including using the SSH
%% shell to connect to the master node and submitting queries directly to the
%% software running on the master node, such as Hive and Hadoop. For more
%% information on how to do this, go to <a
%% href="http://docs.aws.amazon.com/ElasticMapReduce/latest/DeveloperGuide/AddMoreThan256Steps.html">Add
%% More than 256 Steps to a Job Flow</a> in the <i>Amazon Elastic MapReduce
%% Developer's Guide</i>.
%%
%% A step specifies the location of a JAR file stored either on the master
%% node of the job flow or in Amazon S3. Each step is performed by the main
%% function of the main class of the JAR file. The main class can be
%% specified either in the manifest of the JAR or by using the MainFunction
%% parameter of the step.
%%
%% Elastic MapReduce executes each step in the order listed. For a step to be
%% considered complete, the main function must exit with a zero exit code and
%% all Hadoop jobs started while the step was running must have completed and
%% run successfully.
%%
%% You can only add steps to a job flow that is in one of the following
%% states: STARTING, BOOTSTRAPPING, RUNNING, or WAITING.
add_job_flow_steps(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_job_flow_steps(Client, Input, []).
add_job_flow_steps(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddJobFlowSteps">>, Input, Options).

%% @doc Adds tags to an Amazon EMR resource. Tags make it easier to associate
%% clusters in various ways, such as grouping clusters to track your Amazon
%% EMR resource allocation costs. For more information, see <a
%% href="http://docs.aws.amazon.com/ElasticMapReduce/latest/DeveloperGuide/emr-plan-tags.html">Tagging
%% Amazon EMR Resources</a>.
add_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags(Client, Input, []).
add_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTags">>, Input, Options).

%% @doc Provides cluster-level details including status, hardware and
%% software configuration, VPC settings, and so on. For information about the
%% cluster steps, see <a>ListSteps</a>.
describe_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cluster(Client, Input, []).
describe_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCluster">>, Input, Options).

%% @doc This API is deprecated and will eventually be removed. We recommend
%% you use <a>ListClusters</a>, <a>DescribeCluster</a>, <a>ListSteps</a>,
%% <a>ListInstanceGroups</a> and <a>ListBootstrapActions</a> instead.
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
%% <ul> <li>Job flows created and completed in the last two weeks</li> <li>
%% Job flows created within the last two months that are in one of the
%% following states: <code>RUNNING</code>, <code>WAITING</code>,
%% <code>SHUTTING_DOWN</code>, <code>STARTING</code> </li> </ul> Amazon
%% Elastic MapReduce can return a maximum of 512 job flow descriptions.
describe_job_flows(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_job_flows(Client, Input, []).
describe_job_flows(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeJobFlows">>, Input, Options).

%% @doc Provides more detail about the cluster step.
describe_step(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_step(Client, Input, []).
describe_step(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStep">>, Input, Options).

%% @doc Provides information about the bootstrap actions associated with a
%% cluster.
list_bootstrap_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_bootstrap_actions(Client, Input, []).
list_bootstrap_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBootstrapActions">>, Input, Options).

%% @doc Provides the status of all clusters visible to this AWS account.
%% Allows you to filter the list of clusters based on certain criteria; for
%% example, filtering by cluster creation date and time or by status. This
%% call returns a maximum of 50 clusters per call, but returns a marker to
%% track the paging of the cluster list across multiple ListClusters calls.
list_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_clusters(Client, Input, []).
list_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListClusters">>, Input, Options).

%% @doc Provides all available details about the instance groups in a
%% cluster.
list_instance_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_instance_groups(Client, Input, []).
list_instance_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInstanceGroups">>, Input, Options).

%% @doc Provides information about the cluster instances that Amazon EMR
%% provisions on behalf of a user when it creates the cluster. For example,
%% this operation indicates when the EC2 instances reach the Ready state,
%% when instances become available to Amazon EMR to use for jobs, and the IP
%% addresses for cluster instances, etc.
list_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_instances(Client, Input, []).
list_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInstances">>, Input, Options).

%% @doc Provides a list of steps for the cluster.
list_steps(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_steps(Client, Input, []).
list_steps(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSteps">>, Input, Options).

%% @doc ModifyInstanceGroups modifies the number of nodes and configuration
%% settings of an instance group. The input parameters include the new target
%% instance count for the group and the instance group ID. The call will
%% either succeed or fail atomically.
modify_instance_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_instance_groups(Client, Input, []).
modify_instance_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyInstanceGroups">>, Input, Options).

%% @doc Removes tags from an Amazon EMR resource. Tags make it easier to
%% associate clusters in various ways, such as grouping clusters to track
%% your Amazon EMR resource allocation costs. For more information, see <a
%% href="http://docs.aws.amazon.com/ElasticMapReduce/latest/DeveloperGuide/emr-plan-tags.html">Tagging
%% Amazon EMR Resources</a>.
%%
%% The following example removes the stack tag with value Prod from a
%% cluster:
remove_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags(Client, Input, []).
remove_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTags">>, Input, Options).

%% @doc RunJobFlow creates and starts running a new job flow. The job flow
%% will run the steps specified. Once the job flow completes, the cluster is
%% stopped and the HDFS partition is lost. To prevent loss of data, configure
%% the last step of the job flow to store results in Amazon S3. If the
%% <a>JobFlowInstancesConfig</a> <code>KeepJobFlowAliveWhenNoSteps</code>
%% parameter is set to <code>TRUE</code>, the job flow will transition to the
%% WAITING state rather than shutting down once the steps have completed.
%%
%% For additional protection, you can set the <a>JobFlowInstancesConfig</a>
%% <code>TerminationProtected</code> parameter to <code>TRUE</code> to lock
%% the job flow and prevent it from being terminated by API call, user
%% intervention, or in the event of a job flow error.
%%
%% A maximum of 256 steps are allowed in each job flow.
%%
%% If your job flow is long-running (such as a Hive data warehouse) or
%% complex, you may require more than 256 steps to process your data. You can
%% bypass the 256-step limitation in various ways, including using the SSH
%% shell to connect to the master node and submitting queries directly to the
%% software running on the master node, such as Hive and Hadoop. For more
%% information on how to do this, go to <a
%% href="http://docs.aws.amazon.com/ElasticMapReduce/latest/DeveloperGuide/AddMoreThan256Steps.html">Add
%% More than 256 Steps to a Job Flow</a> in the <i>Amazon Elastic MapReduce
%% Developer's Guide</i>.
%%
%% For long running job flows, we recommend that you periodically store your
%% results.
run_job_flow(Client, Input)
  when is_map(Client), is_map(Input) ->
    run_job_flow(Client, Input, []).
run_job_flow(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RunJobFlow">>, Input, Options).

%% @doc SetTerminationProtection locks a job flow so the Amazon EC2 instances
%% in the cluster cannot be terminated by user intervention, an API call, or
%% in the event of a job-flow error. The cluster still terminates upon
%% successful completion of the job flow. Calling SetTerminationProtection on
%% a job flow is analogous to calling the Amazon EC2 DisableAPITermination
%% API on all of the EC2 instances in a cluster.
%%
%% SetTerminationProtection is used to prevent accidental termination of a
%% job flow and to ensure that in the event of an error, the instances will
%% persist so you can recover any data stored in their ephemeral instance
%% storage.
%%
%% To terminate a job flow that has been locked by setting
%% SetTerminationProtection to <code>true</code>, you must first unlock the
%% job flow by a subsequent call to SetTerminationProtection in which you set
%% the value to <code>false</code>.
%%
%% For more information, go to <a
%% href="http://docs.aws.amazon.com/ElasticMapReduce/latest/DeveloperGuide/UsingEMR_TerminationProtection.html">Protecting
%% a Job Flow from Termination</a> in the <i>Amazon Elastic MapReduce
%% Developer's Guide.</i>
set_termination_protection(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_termination_protection(Client, Input, []).
set_termination_protection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetTerminationProtection">>, Input, Options).

%% @doc Sets whether all AWS Identity and Access Management (IAM) users under
%% your account can access the specified job flows. This action works on
%% running job flows. You can also set the visibility of a job flow when you
%% launch it using the <code>VisibleToAllUsers</code> parameter of
%% <a>RunJobFlow</a>. The SetVisibleToAllUsers action can be called only by
%% an IAM user who created the job flow or the AWS account that owns the job
%% flow.
set_visible_to_all_users(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_visible_to_all_users(Client, Input, []).
set_visible_to_all_users(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetVisibleToAllUsers">>, Input, Options).

%% @doc TerminateJobFlows shuts a list of job flows down. When a job flow is
%% shut down, any step not yet completed is canceled and the EC2 instances on
%% which the job flow is running are stopped. Any log files not already saved
%% are uploaded to Amazon S3 if a LogUri was specified when the job flow was
%% created.
%%
%% The maximum number of JobFlows allowed is 10. The call to
%% TerminateJobFlows is asynchronous. Depending on the configuration of the
%% job flow, it may take up to 5-20 minutes for the job flow to completely
%% terminate and release allocated resources, such as Amazon EC2 instances.
terminate_job_flows(Client, Input)
  when is_map(Client), is_map(Input) ->
    terminate_job_flows(Client, Input, []).
terminate_job_flows(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TerminateJobFlows">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: {binary(), binary()}.
request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"elasticmapreduce">>},
    Host = aws_util:binary_join([<<"elasticmapreduce.">>,
                                 maps:get(region, Client1),
                                 <<".">>,
                                 maps:get(endpoint, Client1)],
                                <<"">>),
    URL = aws_util:binary_join([<<"https://">>, Host, <<"/">>], <<"">>),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"ElasticMapReduce.">>/binary, Action/binary>>}],
    Payload = jsx:encode(Input),
    Headers1 = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, Headers1, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    #{<<"__type">> := Exception,
      <<"message">> := Reason} = jsx:decode(Body, [return_maps]),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.
