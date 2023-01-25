%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Compute Optimizer is a service that analyzes the configuration and
%% utilization metrics of your Amazon Web Services compute resources, such as
%% Amazon EC2 instances, Amazon EC2 Auto Scaling groups, Lambda functions,
%% Amazon EBS volumes, and Amazon ECS services on Fargate.
%%
%% It reports whether your resources are optimal, and generates optimization
%% recommendations to reduce the cost and improve the performance of your
%% workloads. Compute Optimizer also provides recent utilization metric data,
%% in addition to projected utilization metric data for the recommendations,
%% which you can use to evaluate which recommendation provides the best
%% price-performance trade-off. The analysis of your usage patterns can help
%% you decide when to move or resize your running resources, and still meet
%% your performance and capacity requirements. For more information about
%% Compute Optimizer, including the required permissions to use the service,
%% see the Compute Optimizer User Guide.
-module(aws_compute_optimizer).

-export([delete_recommendation_preferences/2,
         delete_recommendation_preferences/3,
         describe_recommendation_export_jobs/2,
         describe_recommendation_export_jobs/3,
         export_auto_scaling_group_recommendations/2,
         export_auto_scaling_group_recommendations/3,
         export_e_c_s_service_recommendations/2,
         export_e_c_s_service_recommendations/3,
         export_ebs_volume_recommendations/2,
         export_ebs_volume_recommendations/3,
         export_ec2_instance_recommendations/2,
         export_ec2_instance_recommendations/3,
         export_lambda_function_recommendations/2,
         export_lambda_function_recommendations/3,
         get_auto_scaling_group_recommendations/2,
         get_auto_scaling_group_recommendations/3,
         get_e_c_s_service_recommendation_projected_metrics/2,
         get_e_c_s_service_recommendation_projected_metrics/3,
         get_e_c_s_service_recommendations/2,
         get_e_c_s_service_recommendations/3,
         get_ebs_volume_recommendations/2,
         get_ebs_volume_recommendations/3,
         get_ec2_instance_recommendations/2,
         get_ec2_instance_recommendations/3,
         get_ec2_recommendation_projected_metrics/2,
         get_ec2_recommendation_projected_metrics/3,
         get_effective_recommendation_preferences/2,
         get_effective_recommendation_preferences/3,
         get_enrollment_status/2,
         get_enrollment_status/3,
         get_enrollment_statuses_for_organization/2,
         get_enrollment_statuses_for_organization/3,
         get_lambda_function_recommendations/2,
         get_lambda_function_recommendations/3,
         get_recommendation_preferences/2,
         get_recommendation_preferences/3,
         get_recommendation_summaries/2,
         get_recommendation_summaries/3,
         put_recommendation_preferences/2,
         put_recommendation_preferences/3,
         update_enrollment_status/2,
         update_enrollment_status/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes a recommendation preference, such as enhanced infrastructure
%% metrics.
%%
%% For more information, see Activating enhanced infrastructure metrics in
%% the Compute Optimizer User Guide.
delete_recommendation_preferences(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_recommendation_preferences(Client, Input, []).
delete_recommendation_preferences(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRecommendationPreferences">>, Input, Options).

%% @doc Describes recommendation export jobs created in the last seven days.
%%
%% Use the `ExportAutoScalingGroupRecommendations' or
%% `ExportEC2InstanceRecommendations' actions to request an export of
%% your recommendations. Then use the `DescribeRecommendationExportJobs'
%% action to view your export jobs.
describe_recommendation_export_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_recommendation_export_jobs(Client, Input, []).
describe_recommendation_export_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRecommendationExportJobs">>, Input, Options).

%% @doc Exports optimization recommendations for Auto Scaling groups.
%%
%% Recommendations are exported in a comma-separated values (.csv) file, and
%% its metadata in a JavaScript Object Notation (JSON) (.json) file, to an
%% existing Amazon Simple Storage Service (Amazon S3) bucket that you
%% specify. For more information, see Exporting Recommendations in the
%% Compute Optimizer User Guide.
%%
%% You can have only one Auto Scaling group export job in progress per Amazon
%% Web Services Region.
export_auto_scaling_group_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_auto_scaling_group_recommendations(Client, Input, []).
export_auto_scaling_group_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportAutoScalingGroupRecommendations">>, Input, Options).

%% @doc Exports optimization recommendations for Amazon ECS services on
%% Fargate.
%%
%% Recommendations are exported in a CSV file, and its metadata in a JSON
%% file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that
%% you specify. For more information, see Exporting Recommendations in the
%% Compute Optimizer User Guide.
%%
%% You can only have one Amazon ECS service export job in progress per Amazon
%% Web Services Region.
export_e_c_s_service_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_e_c_s_service_recommendations(Client, Input, []).
export_e_c_s_service_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportECSServiceRecommendations">>, Input, Options).

%% @doc Exports optimization recommendations for Amazon EBS volumes.
%%
%% Recommendations are exported in a comma-separated values (.csv) file, and
%% its metadata in a JavaScript Object Notation (JSON) (.json) file, to an
%% existing Amazon Simple Storage Service (Amazon S3) bucket that you
%% specify. For more information, see Exporting Recommendations in the
%% Compute Optimizer User Guide.
%%
%% You can have only one Amazon EBS volume export job in progress per Amazon
%% Web Services Region.
export_ebs_volume_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_ebs_volume_recommendations(Client, Input, []).
export_ebs_volume_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportEBSVolumeRecommendations">>, Input, Options).

%% @doc Exports optimization recommendations for Amazon EC2 instances.
%%
%% Recommendations are exported in a comma-separated values (.csv) file, and
%% its metadata in a JavaScript Object Notation (JSON) (.json) file, to an
%% existing Amazon Simple Storage Service (Amazon S3) bucket that you
%% specify. For more information, see Exporting Recommendations in the
%% Compute Optimizer User Guide.
%%
%% You can have only one Amazon EC2 instance export job in progress per
%% Amazon Web Services Region.
export_ec2_instance_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_ec2_instance_recommendations(Client, Input, []).
export_ec2_instance_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportEC2InstanceRecommendations">>, Input, Options).

%% @doc Exports optimization recommendations for Lambda functions.
%%
%% Recommendations are exported in a comma-separated values (.csv) file, and
%% its metadata in a JavaScript Object Notation (JSON) (.json) file, to an
%% existing Amazon Simple Storage Service (Amazon S3) bucket that you
%% specify. For more information, see Exporting Recommendations in the
%% Compute Optimizer User Guide.
%%
%% You can have only one Lambda function export job in progress per Amazon
%% Web Services Region.
export_lambda_function_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_lambda_function_recommendations(Client, Input, []).
export_lambda_function_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportLambdaFunctionRecommendations">>, Input, Options).

%% @doc Returns Auto Scaling group recommendations.
%%
%% Compute Optimizer generates recommendations for Amazon EC2 Auto Scaling
%% groups that meet a specific set of requirements. For more information, see
%% the Supported resources and requirements in the Compute Optimizer User
%% Guide.
get_auto_scaling_group_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_auto_scaling_group_recommendations(Client, Input, []).
get_auto_scaling_group_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAutoScalingGroupRecommendations">>, Input, Options).

%% @doc Returns the projected metrics of Amazon ECS service recommendations.
get_e_c_s_service_recommendation_projected_metrics(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_e_c_s_service_recommendation_projected_metrics(Client, Input, []).
get_e_c_s_service_recommendation_projected_metrics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetECSServiceRecommendationProjectedMetrics">>, Input, Options).

%% @doc Returns Amazon ECS service recommendations.
%%
%% Compute Optimizer generates recommendations for Amazon ECS services on
%% Fargate that meet a specific set of requirements. For more information,
%% see the Supported resources and requirements in the Compute Optimizer User
%% Guide.
get_e_c_s_service_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_e_c_s_service_recommendations(Client, Input, []).
get_e_c_s_service_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetECSServiceRecommendations">>, Input, Options).

%% @doc Returns Amazon Elastic Block Store (Amazon EBS) volume
%% recommendations.
%%
%% Compute Optimizer generates recommendations for Amazon EBS volumes that
%% meet a specific set of requirements. For more information, see the
%% Supported resources and requirements in the Compute Optimizer User Guide.
get_ebs_volume_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ebs_volume_recommendations(Client, Input, []).
get_ebs_volume_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEBSVolumeRecommendations">>, Input, Options).

%% @doc Returns Amazon EC2 instance recommendations.
%%
%% Compute Optimizer generates recommendations for Amazon Elastic Compute
%% Cloud (Amazon EC2) instances that meet a specific set of requirements. For
%% more information, see the Supported resources and requirements in the
%% Compute Optimizer User Guide.
get_ec2_instance_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ec2_instance_recommendations(Client, Input, []).
get_ec2_instance_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEC2InstanceRecommendations">>, Input, Options).

%% @doc Returns the projected utilization metrics of Amazon EC2 instance
%% recommendations.
%%
%% The `Cpu' and `Memory' metrics are the only projected utilization
%% metrics returned when you run this action. Additionally, the `Memory'
%% metric is returned only for resources that have the unified CloudWatch
%% agent installed on them. For more information, see Enabling Memory
%% Utilization with the CloudWatch Agent.
get_ec2_recommendation_projected_metrics(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ec2_recommendation_projected_metrics(Client, Input, []).
get_ec2_recommendation_projected_metrics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEC2RecommendationProjectedMetrics">>, Input, Options).

%% @doc Returns the recommendation preferences that are in effect for a given
%% resource, such as enhanced infrastructure metrics.
%%
%% Considers all applicable preferences that you might have set at the
%% resource, account, and organization level.
%%
%% When you create a recommendation preference, you can set its status to
%% `Active' or `Inactive'. Use this action to view the recommendation
%% preferences that are in effect, or `Active'.
get_effective_recommendation_preferences(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_effective_recommendation_preferences(Client, Input, []).
get_effective_recommendation_preferences(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEffectiveRecommendationPreferences">>, Input, Options).

%% @doc Returns the enrollment (opt in) status of an account to the Compute
%% Optimizer service.
%%
%% If the account is the management account of an organization, this action
%% also confirms the enrollment status of member accounts of the
%% organization. Use the `GetEnrollmentStatusesForOrganization' action to
%% get detailed information about the enrollment status of member accounts of
%% an organization.
get_enrollment_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_enrollment_status(Client, Input, []).
get_enrollment_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEnrollmentStatus">>, Input, Options).

%% @doc Returns the Compute Optimizer enrollment (opt-in) status of
%% organization member accounts, if your account is an organization
%% management account.
%%
%% To get the enrollment status of standalone accounts, use the
%% `GetEnrollmentStatus' action.
get_enrollment_statuses_for_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_enrollment_statuses_for_organization(Client, Input, []).
get_enrollment_statuses_for_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEnrollmentStatusesForOrganization">>, Input, Options).

%% @doc Returns Lambda function recommendations.
%%
%% Compute Optimizer generates recommendations for functions that meet a
%% specific set of requirements. For more information, see the Supported
%% resources and requirements in the Compute Optimizer User Guide.
get_lambda_function_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_lambda_function_recommendations(Client, Input, []).
get_lambda_function_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLambdaFunctionRecommendations">>, Input, Options).

%% @doc Returns existing recommendation preferences, such as enhanced
%% infrastructure metrics.
%%
%% Use the `scope' parameter to specify which preferences to return. You
%% can specify to return preferences for an organization, a specific account
%% ID, or a specific EC2 instance or Auto Scaling group Amazon Resource Name
%% (ARN).
%%
%% For more information, see Activating enhanced infrastructure metrics in
%% the Compute Optimizer User Guide.
get_recommendation_preferences(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_recommendation_preferences(Client, Input, []).
get_recommendation_preferences(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRecommendationPreferences">>, Input, Options).

%% @doc Returns the optimization findings for an account.
%%
%% It returns the number of:
%%
%% <ul> <li> Amazon EC2 instances in an account that are
%% `Underprovisioned', `Overprovisioned', or `Optimized'.
%%
%% </li> <li> Auto Scaling groups in an account that are `NotOptimized',
%% or `Optimized'.
%%
%% </li> <li> Amazon EBS volumes in an account that are `NotOptimized',
%% or `Optimized'.
%%
%% </li> <li> Lambda functions in an account that are `NotOptimized', or
%% `Optimized'.
%%
%% </li> <li> Amazon ECS services in an account that are
%% `Underprovisioned', `Overprovisioned', or `Optimized'.
%%
%% </li> </ul>
get_recommendation_summaries(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_recommendation_summaries(Client, Input, []).
get_recommendation_summaries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRecommendationSummaries">>, Input, Options).

%% @doc Creates a new recommendation preference or updates an existing
%% recommendation preference, such as enhanced infrastructure metrics.
%%
%% For more information, see Activating enhanced infrastructure metrics in
%% the Compute Optimizer User Guide.
put_recommendation_preferences(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_recommendation_preferences(Client, Input, []).
put_recommendation_preferences(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRecommendationPreferences">>, Input, Options).

%% @doc Updates the enrollment (opt in and opt out) status of an account to
%% the Compute Optimizer service.
%%
%% If the account is a management account of an organization, this action can
%% also be used to enroll member accounts of the organization.
%%
%% You must have the appropriate permissions to opt in to Compute Optimizer,
%% to view its recommendations, and to opt out. For more information, see
%% Controlling access with Amazon Web Services Identity and Access Management
%% in the Compute Optimizer User Guide.
%%
%% When you opt in, Compute Optimizer automatically creates a service-linked
%% role in your account to access its data. For more information, see Using
%% Service-Linked Roles for Compute Optimizer in the Compute Optimizer User
%% Guide.
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
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
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
