%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Compute Optimizer is a service that analyzes the configuration
%% and utilization metrics of your AWS resources, such as EC2 instances and
%% Auto Scaling groups.
%%
%% It reports whether your resources are optimal, and generates optimization
%% recommendations to reduce the cost and improve the performance of your
%% workloads. Compute Optimizer also provides recent utilization metric data,
%% as well as projected utilization metric data for the recommendations,
%% which you can use to evaluate which recommendation provides the best
%% price-performance trade-off. The analysis of your usage patterns can help
%% you decide when to move or resize your running resources, and still meet
%% your performance and capacity requirements. For more information about
%% Compute Optimizer, including the required permissions to use the service,
%% see the AWS Compute Optimizer User Guide.
-module(aws_compute_optimizer).

-export([describe_recommendation_export_jobs/2,
         describe_recommendation_export_jobs/3,
         export_auto_scaling_group_recommendations/2,
         export_auto_scaling_group_recommendations/3,
         export_e_c2_instance_recommendations/2,
         export_e_c2_instance_recommendations/3,
         get_auto_scaling_group_recommendations/2,
         get_auto_scaling_group_recommendations/3,
         get_e_c2_instance_recommendations/2,
         get_e_c2_instance_recommendations/3,
         get_e_c2_recommendation_projected_metrics/2,
         get_e_c2_recommendation_projected_metrics/3,
         get_enrollment_status/2,
         get_enrollment_status/3,
         get_recommendation_summaries/2,
         get_recommendation_summaries/3,
         update_enrollment_status/2,
         update_enrollment_status/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Describes recommendation export jobs created in the last seven days.
%%
%% Use the `ExportAutoScalingGroupRecommendations' or
%% `ExportEC2InstanceRecommendations' actions to request an export of your
%% recommendations. Then use the `DescribeRecommendationExportJobs' action to
%% view your export jobs.
describe_recommendation_export_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_recommendation_export_jobs(Client, Input, []).
describe_recommendation_export_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRecommendationExportJobs">>, Input, Options).

%% @doc Exports optimization recommendations for Auto Scaling groups.
%%
%% Recommendations are exported in a comma-separated values (.csv) file, and
%% its metadata in a JavaScript Object Notation (.json) file, to an existing
%% Amazon Simple Storage Service (Amazon S3) bucket that you specify. For
%% more information, see Exporting Recommendations in the Compute Optimizer
%% User Guide.
%%
%% You can have only one Auto Scaling group export job in progress per AWS
%% Region.
export_auto_scaling_group_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_auto_scaling_group_recommendations(Client, Input, []).
export_auto_scaling_group_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportAutoScalingGroupRecommendations">>, Input, Options).

%% @doc Exports optimization recommendations for Amazon EC2 instances.
%%
%% Recommendations are exported in a comma-separated values (.csv) file, and
%% its metadata in a JavaScript Object Notation (.json) file, to an existing
%% Amazon Simple Storage Service (Amazon S3) bucket that you specify. For
%% more information, see Exporting Recommendations in the Compute Optimizer
%% User Guide.
%%
%% You can have only one Amazon EC2 instance export job in progress per AWS
%% Region.
export_e_c2_instance_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_e_c2_instance_recommendations(Client, Input, []).
export_e_c2_instance_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportEC2InstanceRecommendations">>, Input, Options).

%% @doc Returns Auto Scaling group recommendations.
%%
%% AWS Compute Optimizer generates recommendations for Amazon EC2 Auto
%% Scaling groups that meet a specific set of requirements. For more
%% information, see the Supported resources and requirements in the AWS
%% Compute Optimizer User Guide.
get_auto_scaling_group_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_auto_scaling_group_recommendations(Client, Input, []).
get_auto_scaling_group_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAutoScalingGroupRecommendations">>, Input, Options).

%% @doc Returns Amazon EC2 instance recommendations.
%%
%% AWS Compute Optimizer generates recommendations for Amazon Elastic Compute
%% Cloud (Amazon EC2) instances that meet a specific set of requirements. For
%% more information, see the Supported resources and requirements in the AWS
%% Compute Optimizer User Guide.
get_e_c2_instance_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_e_c2_instance_recommendations(Client, Input, []).
get_e_c2_instance_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEC2InstanceRecommendations">>, Input, Options).

%% @doc Returns the projected utilization metrics of Amazon EC2 instance
%% recommendations.
%%
%% The `Cpu' and `Memory' metrics are the only projected utilization metrics
%% returned when you run this action. Additionally, the `Memory' metric is
%% returned only for resources that have the unified CloudWatch agent
%% installed on them. For more information, see Enabling Memory Utilization
%% with the CloudWatch Agent.
get_e_c2_recommendation_projected_metrics(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_e_c2_recommendation_projected_metrics(Client, Input, []).
get_e_c2_recommendation_projected_metrics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEC2RecommendationProjectedMetrics">>, Input, Options).

%% @doc Returns the enrollment (opt in) status of an account to the AWS
%% Compute Optimizer service.
%%
%% If the account is the master account of an organization, this action also
%% confirms the enrollment status of member accounts within the organization.
get_enrollment_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_enrollment_status(Client, Input, []).
get_enrollment_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEnrollmentStatus">>, Input, Options).

%% @doc Returns the optimization findings for an account.
%%
%% For example, it returns the number of Amazon EC2 instances in an account
%% that are under-provisioned, over-provisioned, or optimized. It also
%% returns the number of Auto Scaling groups in an account that are not
%% optimized, or optimized.
get_recommendation_summaries(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_recommendation_summaries(Client, Input, []).
get_recommendation_summaries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRecommendationSummaries">>, Input, Options).

%% @doc Updates the enrollment (opt in) status of an account to the AWS
%% Compute Optimizer service.
%%
%% If the account is a master account of an organization, this action can
%% also be used to enroll member accounts within the organization.
update_enrollment_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_enrollment_status(Client, Input, []).
update_enrollment_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEnrollmentStatus">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"compute-optimizer">>},
    Host = build_host(<<"compute-optimizer">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"ComputeOptimizerService.", Action/binary>>}
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
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
