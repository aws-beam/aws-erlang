%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Batch enables you to run batch computing workloads on the AWS
%% Cloud. Batch computing is a common way for developers, scientists, and
%% engineers to access large amounts of compute resources, and AWS Batch
%% removes the undifferentiated heavy lifting of configuring and managing the
%% required infrastructure. AWS Batch will be familiar to users of
%% traditional batch computing software. This service can efficiently
%% provision resources in response to jobs submitted in order to eliminate
%% capacity constraints, reduce compute costs, and deliver results quickly.
%%
%% As a fully managed service, AWS Batch enables developers, scientists, and
%% engineers to run batch computing workloads of any scale. AWS Batch
%% automatically provisions compute resources and optimizes the workload
%% distribution based on the quantity and scale of the workloads. With AWS
%% Batch, there is no need to install or manage batch computing software,
%% which allows you to focus on analyzing results and solving problems. AWS
%% Batch reduces operational complexities, saves time, and reduces costs,
%% which makes it easy for developers, scientists, and engineers to run their
%% batch jobs in the AWS Cloud.
-module(aws_batch).

-export([cancel_job/2,
         cancel_job/3,
         create_compute_environment/2,
         create_compute_environment/3,
         create_job_queue/2,
         create_job_queue/3,
         delete_compute_environment/2,
         delete_compute_environment/3,
         delete_job_queue/2,
         delete_job_queue/3,
         deregister_job_definition/2,
         deregister_job_definition/3,
         describe_compute_environments/2,
         describe_compute_environments/3,
         describe_job_definitions/2,
         describe_job_definitions/3,
         describe_job_queues/2,
         describe_job_queues/3,
         describe_jobs/2,
         describe_jobs/3,
         list_jobs/2,
         list_jobs/3,
         register_job_definition/2,
         register_job_definition/3,
         submit_job/2,
         submit_job/3,
         terminate_job/2,
         terminate_job/3,
         update_compute_environment/2,
         update_compute_environment/3,
         update_job_queue/2,
         update_job_queue/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels a job in an AWS Batch job queue. Jobs that are in the
%% <code>SUBMITTED</code>, <code>PENDING</code>, or <code>RUNNABLE</code>
%% state are cancelled. Jobs that have progressed to <code>STARTING</code> or
%% <code>RUNNING</code> are not cancelled (but the API operation still
%% succeeds, even if no job is cancelled); these jobs must be terminated with
%% the <a>TerminateJob</a> operation.
cancel_job(Client, Input) ->
    cancel_job(Client, Input, []).
cancel_job(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/canceljob"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an AWS Batch compute environment. You can create
%% <code>MANAGED</code> or <code>UNMANAGED</code> compute environments.
%%
%% In a managed compute environment, AWS Batch manages the capacity and
%% instance types of the compute resources within the environment. This is
%% based on the compute resource specification that you define or the <a
%% href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html">launch
%% template</a> that you specify when you create the compute environment. You
%% can choose to use Amazon EC2 On-Demand Instances or Spot Instances in your
%% managed compute environment. You can optionally set a maximum price so
%% that Spot Instances only launch when the Spot Instance price is below a
%% specified percentage of the On-Demand price.
%%
%% <note> Multi-node parallel jobs are not supported on Spot Instances.
%%
%% </note> In an unmanaged compute environment, you can manage your own
%% compute resources. This provides more compute resource configuration
%% options, such as using a custom AMI, but you must ensure that your AMI
%% meets the Amazon ECS container instance AMI specification. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container_instance_AMIs.html">Container
%% Instance AMIs</a> in the <i>Amazon Elastic Container Service Developer
%% Guide</i>. After you have created your unmanaged compute environment, you
%% can use the <a>DescribeComputeEnvironments</a> operation to find the
%% Amazon ECS cluster that is associated with it. Then, manually launch your
%% container instances into that Amazon ECS cluster. For more information,
%% see <a
%% href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_container_instance.html">Launching
%% an Amazon ECS Container Instance</a> in the <i>Amazon Elastic Container
%% Service Developer Guide</i>.
%%
%% <note> AWS Batch does not upgrade the AMIs in a compute environment after
%% it is created (for example, when a newer version of the Amazon
%% ECS-optimized AMI is available). You are responsible for the management of
%% the guest operating system (including updates and security patches) and
%% any additional application software or utilities that you install on the
%% compute resources. To use a new AMI for your AWS Batch jobs:
%%
%% <ol> <li> Create a new compute environment with the new AMI.
%%
%% </li> <li> Add the compute environment to an existing job queue.
%%
%% </li> <li> Remove the old compute environment from your job queue.
%%
%% </li> <li> Delete the old compute environment.
%%
%% </li> </ol> </note>
create_compute_environment(Client, Input) ->
    create_compute_environment(Client, Input, []).
create_compute_environment(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/createcomputeenvironment"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an AWS Batch job queue. When you create a job queue, you
%% associate one or more compute environments to the queue and assign an
%% order of preference for the compute environments.
%%
%% You also set a priority to the job queue that determines the order in
%% which the AWS Batch scheduler places jobs onto its associated compute
%% environments. For example, if a compute environment is associated with
%% more than one job queue, the job queue with a higher priority is given
%% preference for scheduling jobs to that compute environment.
create_job_queue(Client, Input) ->
    create_job_queue(Client, Input, []).
create_job_queue(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/createjobqueue"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an AWS Batch compute environment.
%%
%% Before you can delete a compute environment, you must set its state to
%% <code>DISABLED</code> with the <a>UpdateComputeEnvironment</a> API
%% operation and disassociate it from any job queues with the
%% <a>UpdateJobQueue</a> API operation.
delete_compute_environment(Client, Input) ->
    delete_compute_environment(Client, Input, []).
delete_compute_environment(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/deletecomputeenvironment"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified job queue. You must first disable submissions
%% for a queue with the <a>UpdateJobQueue</a> operation. All jobs in the
%% queue are terminated when you delete a job queue.
%%
%% It is not necessary to disassociate compute environments from a queue
%% before submitting a <code>DeleteJobQueue</code> request.
delete_job_queue(Client, Input) ->
    delete_job_queue(Client, Input, []).
delete_job_queue(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/deletejobqueue"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deregisters an AWS Batch job definition. Job definitions will be
%% permanently deleted after 180 days.
deregister_job_definition(Client, Input) ->
    deregister_job_definition(Client, Input, []).
deregister_job_definition(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/deregisterjobdefinition"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Describes one or more of your compute environments.
%%
%% If you are using an unmanaged compute environment, you can use the
%% <code>DescribeComputeEnvironment</code> operation to determine the
%% <code>ecsClusterArn</code> that you should launch your Amazon ECS
%% container instances into.
describe_compute_environments(Client, Input) ->
    describe_compute_environments(Client, Input, []).
describe_compute_environments(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/describecomputeenvironments"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Describes a list of job definitions. You can specify a
%% <code>status</code> (such as <code>ACTIVE</code>) to only return job
%% definitions that match that status.
describe_job_definitions(Client, Input) ->
    describe_job_definitions(Client, Input, []).
describe_job_definitions(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/describejobdefinitions"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Describes one or more of your job queues.
describe_job_queues(Client, Input) ->
    describe_job_queues(Client, Input, []).
describe_job_queues(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/describejobqueues"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Describes a list of AWS Batch jobs.
describe_jobs(Client, Input) ->
    describe_jobs(Client, Input, []).
describe_jobs(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/describejobs"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of AWS Batch jobs.
%%
%% You must specify only one of the following:
%%
%% <ul> <li> a job queue ID to return a list of jobs in that job queue
%%
%% </li> <li> a multi-node parallel job ID to return a list of that job's
%% nodes
%%
%% </li> <li> an array job ID to return a list of that job's children
%%
%% </li> </ul> You can filter the results by job status with the
%% <code>jobStatus</code> parameter. If you do not specify a status, only
%% <code>RUNNING</code> jobs are returned.
list_jobs(Client, Input) ->
    list_jobs(Client, Input, []).
list_jobs(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/listjobs"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Registers an AWS Batch job definition.
register_job_definition(Client, Input) ->
    register_job_definition(Client, Input, []).
register_job_definition(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/registerjobdefinition"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Submits an AWS Batch job from a job definition. Parameters specified
%% during <a>SubmitJob</a> override parameters defined in the job definition.
submit_job(Client, Input) ->
    submit_job(Client, Input, []).
submit_job(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/submitjob"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Terminates a job in a job queue. Jobs that are in the
%% <code>STARTING</code> or <code>RUNNING</code> state are terminated, which
%% causes them to transition to <code>FAILED</code>. Jobs that have not
%% progressed to the <code>STARTING</code> state are cancelled.
terminate_job(Client, Input) ->
    terminate_job(Client, Input, []).
terminate_job(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/terminatejob"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an AWS Batch compute environment.
update_compute_environment(Client, Input) ->
    update_compute_environment(Client, Input, []).
update_compute_environment(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/updatecomputeenvironment"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a job queue.
update_job_queue(Client, Input) ->
    update_job_queue(Client, Input, []).
update_job_queue(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/updatejobqueue"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"batch">>},
    Host = get_host(<<"batch">>, Client1),
    URL0 = get_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),
    Payload = encode_payload(Input),
    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    handle_response(Response, SuccessStatusCode).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
  {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

get_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
