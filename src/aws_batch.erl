%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Batch
%%
%% Using Batch, you can run batch computing workloads on the Amazon Web
%% Services Cloud.
%%
%% Batch computing is a common means for developers, scientists, and
%% engineers to access large amounts of compute resources. Batch uses the
%% advantages of this computing workload to remove the undifferentiated heavy
%% lifting of configuring and managing required infrastructure. At the same
%% time, it also adopts a familiar batch computing software approach. Given
%% these advantages, Batch can help you to efficiently provision resources in
%% response to jobs submitted, thus effectively helping you to eliminate
%% capacity constraints, reduce compute costs, and deliver your results more
%% quickly.
%%
%% As a fully managed service, Batch can run batch computing workloads of any
%% scale. Batch automatically provisions compute resources and optimizes
%% workload distribution based on the quantity and scale of your specific
%% workloads. With Batch, there's no need to install or manage batch
%% computing software. This means that you can focus your time and energy on
%% analyzing results and solving your specific problems.
-module(aws_batch).

-export([cancel_job/2,
         cancel_job/3,
         create_compute_environment/2,
         create_compute_environment/3,
         create_job_queue/2,
         create_job_queue/3,
         create_scheduling_policy/2,
         create_scheduling_policy/3,
         delete_compute_environment/2,
         delete_compute_environment/3,
         delete_job_queue/2,
         delete_job_queue/3,
         delete_scheduling_policy/2,
         delete_scheduling_policy/3,
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
         describe_scheduling_policies/2,
         describe_scheduling_policies/3,
         list_jobs/2,
         list_jobs/3,
         list_scheduling_policies/2,
         list_scheduling_policies/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
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
         update_job_queue/3,
         update_scheduling_policy/2,
         update_scheduling_policy/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels a job in an Batch job queue.
%%
%% Jobs that are in the `SUBMITTED', `PENDING', or `RUNNABLE' state are
%% canceled. Jobs that have progressed to `STARTING' or `RUNNING' aren't
%% canceled, but the API operation still succeeds, even if no job is
%% canceled. These jobs must be terminated with the `TerminateJob' operation.
cancel_job(Client, Input) ->
    cancel_job(Client, Input, []).
cancel_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/canceljob"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an Batch compute environment.
%%
%% You can create `MANAGED' or `UNMANAGED' compute environments. `MANAGED'
%% compute environments can use Amazon EC2 or Fargate resources. `UNMANAGED'
%% compute environments can only use EC2 resources.
%%
%% In a managed compute environment, Batch manages the capacity and instance
%% types of the compute resources within the environment. This is based on
%% the compute resource specification that you define or the launch template
%% that you specify when you create the compute environment. Either, you can
%% choose to use EC2 On-Demand Instances and EC2 Spot Instances. Or, you can
%% use Fargate and Fargate Spot capacity in your managed compute environment.
%% You can optionally set a maximum price so that Spot Instances only launch
%% when the Spot Instance price is less than a specified percentage of the
%% On-Demand price.
%%
%% Multi-node parallel jobs aren't supported on Spot Instances.
%%
%% In an unmanaged compute environment, you can manage your own EC2 compute
%% resources and have a lot of flexibility with how you configure your
%% compute resources. For example, you can use custom AMIs. However, you must
%% verify that each of your AMIs meet the Amazon ECS container instance AMI
%% specification. For more information, see container instance AMIs in the
%% Amazon Elastic Container Service Developer Guide. After you created your
%% unmanaged compute environment, you can use the
%% `DescribeComputeEnvironments' operation to find the Amazon ECS cluster
%% that's associated with it. Then, launch your container instances into that
%% Amazon ECS cluster. For more information, see Launching an Amazon ECS
%% container instance in the Amazon Elastic Container Service Developer
%% Guide.
%%
%% Batch doesn't upgrade the AMIs in a compute environment after the
%% environment is created. For example, it doesn't update the AMIs when a
%% newer version of the Amazon ECS optimized AMI is available. Therefore,
%% you're responsible for managing the guest operating system (including its
%% updates and security patches) and any additional application software or
%% utilities that you install on the compute resources. To use a new AMI for
%% your Batch jobs, complete these steps:
%%
%% Create a new compute environment with the new AMI.
%%
%% Add the compute environment to an existing job queue.
%%
%% Remove the earlier compute environment from your job queue.
%%
%% Delete the earlier compute environment.
create_compute_environment(Client, Input) ->
    create_compute_environment(Client, Input, []).
create_compute_environment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/createcomputeenvironment"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an Batch job queue.
%%
%% When you create a job queue, you associate one or more compute
%% environments to the queue and assign an order of preference for the
%% compute environments.
%%
%% You also set a priority to the job queue that determines the order that
%% the Batch scheduler places jobs onto its associated compute environments.
%% For example, if a compute environment is associated with more than one job
%% queue, the job queue with a higher priority is given preference for
%% scheduling jobs to that compute environment.
create_job_queue(Client, Input) ->
    create_job_queue(Client, Input, []).
create_job_queue(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/createjobqueue"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an Batch scheduling policy.
create_scheduling_policy(Client, Input) ->
    create_scheduling_policy(Client, Input, []).
create_scheduling_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/createschedulingpolicy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an Batch compute environment.
%%
%% Before you can delete a compute environment, you must set its state to
%% `DISABLED' with the `UpdateComputeEnvironment' API operation and
%% disassociate it from any job queues with the `UpdateJobQueue' API
%% operation. Compute environments that use Fargate resources must terminate
%% all active jobs on that compute environment before deleting the compute
%% environment. If this isn't done, the compute environment enters an invalid
%% state.
delete_compute_environment(Client, Input) ->
    delete_compute_environment(Client, Input, []).
delete_compute_environment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/deletecomputeenvironment"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified job queue.
%%
%% You must first disable submissions for a queue with the `UpdateJobQueue'
%% operation. All jobs in the queue are eventually terminated when you delete
%% a job queue. The jobs are terminated at a rate of about 16 jobs each
%% second.
%%
%% It's not necessary to disassociate compute environments from a queue
%% before submitting a `DeleteJobQueue' request.
delete_job_queue(Client, Input) ->
    delete_job_queue(Client, Input, []).
delete_job_queue(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/deletejobqueue"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified scheduling policy.
%%
%% You can't delete a scheduling policy that is used in any job queues.
delete_scheduling_policy(Client, Input) ->
    delete_scheduling_policy(Client, Input, []).
delete_scheduling_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/deleteschedulingpolicy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deregisters an Batch job definition.
%%
%% Job definitions are permanently deleted after 180 days.
deregister_job_definition(Client, Input) ->
    deregister_job_definition(Client, Input, []).
deregister_job_definition(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/deregisterjobdefinition"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Describes one or more of your compute environments.
%%
%% If you're using an unmanaged compute environment, you can use the
%% `DescribeComputeEnvironment' operation to determine the `ecsClusterArn'
%% that you should launch your Amazon ECS container instances into.
describe_compute_environments(Client, Input) ->
    describe_compute_environments(Client, Input, []).
describe_compute_environments(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/describecomputeenvironments"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Describes a list of job definitions.
%%
%% You can specify a `status' (such as `ACTIVE') to only return job
%% definitions that match that status.
describe_job_definitions(Client, Input) ->
    describe_job_definitions(Client, Input, []).
describe_job_definitions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/describejobdefinitions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Describes one or more of your job queues.
describe_job_queues(Client, Input) ->
    describe_job_queues(Client, Input, []).
describe_job_queues(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/describejobqueues"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Describes a list of Batch jobs.
describe_jobs(Client, Input) ->
    describe_jobs(Client, Input, []).
describe_jobs(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/describejobs"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Describes one or more of your scheduling policies.
describe_scheduling_policies(Client, Input) ->
    describe_scheduling_policies(Client, Input, []).
describe_scheduling_policies(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/describeschedulingpolicies"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of Batch jobs.
%%
%% You must specify only one of the following items:
%%
%% <ul> <li> A job queue ID to return a list of jobs in that job queue
%%
%% </li> <li> A multi-node parallel job ID to return a list of nodes for that
%% job
%%
%% </li> <li> An array job ID to return a list of the children for that job
%%
%% </li> </ul> You can filter the results by job status with the `jobStatus'
%% parameter. If you don't specify a status, only `RUNNING' jobs are
%% returned.
list_jobs(Client, Input) ->
    list_jobs(Client, Input, []).
list_jobs(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/listjobs"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of Batch scheduling policies.
list_scheduling_policies(Client, Input) ->
    list_scheduling_policies(Client, Input, []).
list_scheduling_policies(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/listschedulingpolicies"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the tags for an Batch resource.
%%
%% Batch resources that support tags are compute environments, jobs, job
%% definitions, job queues, and scheduling policies. ARNs for child jobs of
%% array and multi-node parallel (MNP) jobs are not supported.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Registers an Batch job definition.
register_job_definition(Client, Input) ->
    register_job_definition(Client, Input, []).
register_job_definition(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/registerjobdefinition"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Submits an Batch job from a job definition.
%%
%% Parameters that are specified during `SubmitJob' override parameters
%% defined in the job definition. vCPU and memory requirements that are
%% specified in the `resourceRequirements' objects in the job definition are
%% the exception. They can't be overridden this way using the `memory' and
%% `vcpus' parameters. Rather, you must specify updates to job definition
%% parameters in a `ResourceRequirements' object that's included in the
%% `containerOverrides' parameter.
%%
%% Job queues with a scheduling policy are limited to 500 active fair share
%% identifiers at a time.
%%
%% Jobs that run on Fargate resources can't be guaranteed to run for more
%% than 14 days. This is because, after 14 days, Fargate resources might
%% become unavailable and job might be terminated.
submit_job(Client, Input) ->
    submit_job(Client, Input, []).
submit_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/submitjob"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates the specified tags to a resource with the specified
%% `resourceArn'.
%%
%% If existing tags on a resource aren't specified in the request parameters,
%% they aren't changed. When a resource is deleted, the tags that are
%% associated with that resource are deleted as well. Batch resources that
%% support tags are compute environments, jobs, job definitions, job queues,
%% and scheduling policies. ARNs for child jobs of array and multi-node
%% parallel (MNP) jobs are not supported.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Terminates a job in a job queue.
%%
%% Jobs that are in the `STARTING' or `RUNNING' state are terminated, which
%% causes them to transition to `FAILED'. Jobs that have not progressed to
%% the `STARTING' state are cancelled.
terminate_job(Client, Input) ->
    terminate_job(Client, Input, []).
terminate_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/terminatejob"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes specified tags from an Batch resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an Batch compute environment.
update_compute_environment(Client, Input) ->
    update_compute_environment(Client, Input, []).
update_compute_environment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/updatecomputeenvironment"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a job queue.
update_job_queue(Client, Input) ->
    update_job_queue(Client, Input, []).
update_job_queue(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/updatejobqueue"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a scheduling policy.
update_scheduling_policy(Client, Input) ->
    update_scheduling_policy(Client, Input, []).
update_scheduling_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/updateschedulingpolicy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    Client1 = Client#{service => <<"batch">>},
    Host = build_host(<<"batch">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

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
                       true -> jsx:decode(Body);
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _, _DecodeBody) ->
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
