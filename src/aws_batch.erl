%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Batch enables you to run batch computing workloads on the AWS
%% Cloud.
%%
%% Batch computing is a common way for developers, scientists, and engineers
%% to access large amounts of compute resources, and AWS Batch removes the
%% undifferentiated heavy lifting of configuring and managing the required
%% infrastructure. AWS Batch will be familiar to users of traditional batch
%% computing software. This service can efficiently provision resources in
%% response to jobs submitted in order to eliminate capacity constraints,
%% reduce compute costs, and deliver results quickly.
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
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         register_job_definition/2,
         register_job_definition/3,
         submit_job/2,
         submit_job/3,
         tag_resource/3,
         tag_resource/4,
         terminate_job/2,
         terminate_job/3,
         untag_resource/3,
         untag_resource/4,
         update_compute_environment/2,
         update_compute_environment/3,
         update_job_queue/2,
         update_job_queue/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels a job in an AWS Batch job queue.
%%
%% Jobs that are in the `SUBMITTED`, `PENDING`, or `RUNNABLE` state are
%% cancelled. Jobs that have progressed to `STARTING` or `RUNNING` are not
%% cancelled (but the API operation still succeeds, even if no job is
%% cancelled); these jobs must be terminated with the `TerminateJob`
%% operation.
cancel_job(Client, Input) ->
    cancel_job(Client, Input, []).
cancel_job(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/canceljob"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an AWS Batch compute environment.
%%
%% You can create `MANAGED` or `UNMANAGED` compute environments.
%%
%% In a managed compute environment, AWS Batch manages the capacity and
%% instance types of the compute resources within the environment. This is
%% based on the compute resource specification that you define or the launch
%% template that you specify when you create the compute environment. You can
%% choose to use Amazon EC2 On-Demand Instances or Spot Instances in your
%% managed compute environment. You can optionally set a maximum price so
%% that Spot Instances only launch when the Spot Instance price is below a
%% specified percentage of the On-Demand price.
%%
%% Multi-node parallel jobs are not supported on Spot Instances.
%%
%% In an unmanaged compute environment, you can manage your own compute
%% resources. This provides more compute resource configuration options, such
%% as using a custom AMI, but you must ensure that your AMI meets the Amazon
%% ECS container instance AMI specification. For more information, see
%% Container Instance AMIs in the Amazon Elastic Container Service Developer
%% Guide. After you have created your unmanaged compute environment, you can
%% use the `DescribeComputeEnvironments` operation to find the Amazon ECS
%% cluster that is associated with it. Then, manually launch your container
%% instances into that Amazon ECS cluster. For more information, see
%% Launching an Amazon ECS Container Instance in the Amazon Elastic Container
%% Service Developer Guide.
%%
%% AWS Batch does not upgrade the AMIs in a compute environment after it is
%% created (for example, when a newer version of the Amazon ECS-optimized AMI
%% is available). You are responsible for the management of the guest
%% operating system (including updates and security patches) and any
%% additional application software or utilities that you install on the
%% compute resources. To use a new AMI for your AWS Batch jobs:
%%
%% Create a new compute environment with the new AMI.
%%
%% Add the compute environment to an existing job queue.
%%
%% Remove the old compute environment from your job queue.
%%
%% Delete the old compute environment.
create_compute_environment(Client, Input) ->
    create_compute_environment(Client, Input, []).
create_compute_environment(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/createcomputeenvironment"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an AWS Batch job queue.
%%
%% When you create a job queue, you associate one or more compute
%% environments to the queue and assign an order of preference for the
%% compute environments.
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

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an AWS Batch compute environment.
%%
%% Before you can delete a compute environment, you must set its state to
%% `DISABLED` with the `UpdateComputeEnvironment` API operation and
%% disassociate it from any job queues with the `UpdateJobQueue` API
%% operation.
delete_compute_environment(Client, Input) ->
    delete_compute_environment(Client, Input, []).
delete_compute_environment(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/deletecomputeenvironment"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified job queue.
%%
%% You must first disable submissions for a queue with the `UpdateJobQueue`
%% operation. All jobs in the queue are terminated when you delete a job
%% queue.
%%
%% It is not necessary to disassociate compute environments from a queue
%% before submitting a `DeleteJobQueue` request.
delete_job_queue(Client, Input) ->
    delete_job_queue(Client, Input, []).
delete_job_queue(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/deletejobqueue"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deregisters an AWS Batch job definition.
%%
%% Job definitions will be permanently deleted after 180 days.
deregister_job_definition(Client, Input) ->
    deregister_job_definition(Client, Input, []).
deregister_job_definition(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/deregisterjobdefinition"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Describes one or more of your compute environments.
%%
%% If you are using an unmanaged compute environment, you can use the
%% `DescribeComputeEnvironment` operation to determine the `ecsClusterArn`
%% that you should launch your Amazon ECS container instances into.
describe_compute_environments(Client, Input) ->
    describe_compute_environments(Client, Input, []).
describe_compute_environments(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/describecomputeenvironments"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Describes a list of job definitions.
%%
%% You can specify a `status` (such as `ACTIVE`) to only return job
%% definitions that match that status.
describe_job_definitions(Client, Input) ->
    describe_job_definitions(Client, Input, []).
describe_job_definitions(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/describejobdefinitions"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Describes one or more of your job queues.
describe_job_queues(Client, Input) ->
    describe_job_queues(Client, Input, []).
describe_job_queues(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/describejobqueues"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Describes a list of AWS Batch jobs.
describe_jobs(Client, Input) ->
    describe_jobs(Client, Input, []).
describe_jobs(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/describejobs"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

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
%% </li> </ul> You can filter the results by job status with the `jobStatus`
%% parameter. If you do not specify a status, only `RUNNING` jobs are
%% returned.
list_jobs(Client, Input) ->
    list_jobs(Client, Input, []).
list_jobs(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/listjobs"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc List the tags for an AWS Batch resource.
%%
%% AWS Batch resources that support tags are compute environments, jobs, job
%% definitions, and job queues. ARNs for child jobs of array and multi-node
%% parallel (MNP) jobs are not supported.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, []).
list_tags_for_resource(Client, ResourceArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/tags/", http_uri:encode(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Registers an AWS Batch job definition.
register_job_definition(Client, Input) ->
    register_job_definition(Client, Input, []).
register_job_definition(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/registerjobdefinition"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Submits an AWS Batch job from a job definition.
%%
%% Parameters specified during `SubmitJob` override parameters defined in the
%% job definition.
submit_job(Client, Input) ->
    submit_job(Client, Input, []).
submit_job(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/submitjob"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Associates the specified tags to a resource with the specified
%% `resourceArn`.
%%
%% If existing tags on a resource are not specified in the request
%% parameters, they are not changed. When a resource is deleted, the tags
%% associated with that resource are deleted as well. AWS Batch resources
%% that support tags are compute environments, jobs, job definitions, and job
%% queues. ARNs for child jobs of array and multi-node parallel (MNP) jobs
%% are not supported.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/v1/tags/", http_uri:encode(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Terminates a job in a job queue.
%%
%% Jobs that are in the `STARTING` or `RUNNING` state are terminated, which
%% causes them to transition to `FAILED`. Jobs that have not progressed to
%% the `STARTING` state are cancelled.
terminate_job(Client, Input) ->
    terminate_job(Client, Input, []).
terminate_job(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/terminatejob"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes specified tags from an AWS Batch resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/v1/tags/", http_uri:encode(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an AWS Batch compute environment.
update_compute_environment(Client, Input) ->
    update_compute_environment(Client, Input, []).
update_compute_environment(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/updatecomputeenvironment"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a job queue.
update_job_queue(Client, Input) ->
    update_job_queue(Client, Input, []).
update_job_queue(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/updatejobqueue"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

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
    Host = build_host(<<"batch">>, Client1),
    URL0 = build_url(Host, Path, Client1),
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

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
