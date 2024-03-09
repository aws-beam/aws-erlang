%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon CloudWatch Application Insights
%%
%% Amazon CloudWatch Application Insights is a service that helps you detect
%% common
%% problems with your applications.
%%
%% It enables you to pinpoint the source of issues in your
%% applications (built with technologies such as Microsoft IIS, .NET, and
%% Microsoft SQL
%% Server), by providing key insights into detected problems.
%%
%% After you onboard your application, CloudWatch Application Insights
%% identifies,
%% recommends, and sets up metrics and logs. It continuously analyzes and
%% correlates your
%% metrics and logs for unusual behavior to surface actionable problems with
%% your application.
%% For example, if your application is slow and unresponsive and leading to
%% HTTP 500 errors in
%% your Application Load Balancer (ALB), Application Insights informs you
%% that a memory
%% pressure problem with your SQL Server database is occurring. It bases this
%% analysis on
%% impactful metrics and log errors.
-module(aws_application_insights).

-export([add_workload/2,
         add_workload/3,
         create_application/2,
         create_application/3,
         create_component/2,
         create_component/3,
         create_log_pattern/2,
         create_log_pattern/3,
         delete_application/2,
         delete_application/3,
         delete_component/2,
         delete_component/3,
         delete_log_pattern/2,
         delete_log_pattern/3,
         describe_application/2,
         describe_application/3,
         describe_component/2,
         describe_component/3,
         describe_component_configuration/2,
         describe_component_configuration/3,
         describe_component_configuration_recommendation/2,
         describe_component_configuration_recommendation/3,
         describe_log_pattern/2,
         describe_log_pattern/3,
         describe_observation/2,
         describe_observation/3,
         describe_problem/2,
         describe_problem/3,
         describe_problem_observations/2,
         describe_problem_observations/3,
         describe_workload/2,
         describe_workload/3,
         list_applications/2,
         list_applications/3,
         list_components/2,
         list_components/3,
         list_configuration_history/2,
         list_configuration_history/3,
         list_log_pattern_sets/2,
         list_log_pattern_sets/3,
         list_log_patterns/2,
         list_log_patterns/3,
         list_problems/2,
         list_problems/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_workloads/2,
         list_workloads/3,
         remove_workload/2,
         remove_workload/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_application/2,
         update_application/3,
         update_component/2,
         update_component/3,
         update_component_configuration/2,
         update_component_configuration/3,
         update_log_pattern/2,
         update_log_pattern/3,
         update_problem/2,
         update_problem/3,
         update_workload/2,
         update_workload/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds a workload to a component.
%%
%% Each component can have at most five workloads.
add_workload(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_workload(Client, Input, []).
add_workload(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddWorkload">>, Input, Options).

%% @doc Adds an application that is created from a resource group.
create_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_application(Client, Input, []).
create_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateApplication">>, Input, Options).

%% @doc Creates a custom component by grouping similar standalone instances
%% to monitor.
create_component(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_component(Client, Input, []).
create_component(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateComponent">>, Input, Options).

%% @doc Adds an log pattern to a `LogPatternSet'.
create_log_pattern(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_log_pattern(Client, Input, []).
create_log_pattern(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLogPattern">>, Input, Options).

%% @doc Removes the specified application from monitoring.
%%
%% Does not delete the
%% application.
delete_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application(Client, Input, []).
delete_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplication">>, Input, Options).

%% @doc Ungroups a custom component.
%%
%% When you ungroup custom components, all applicable monitors
%% that are set up for the component are removed and the instances revert to
%% their standalone
%% status.
delete_component(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_component(Client, Input, []).
delete_component(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteComponent">>, Input, Options).

%% @doc Removes the specified log pattern from a `LogPatternSet'.
delete_log_pattern(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_log_pattern(Client, Input, []).
delete_log_pattern(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLogPattern">>, Input, Options).

%% @doc Describes the application.
describe_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_application(Client, Input, []).
describe_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApplication">>, Input, Options).

%% @doc Describes a component and lists the resources that are grouped
%% together in a
%% component.
describe_component(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_component(Client, Input, []).
describe_component(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeComponent">>, Input, Options).

%% @doc Describes the monitoring configuration of the component.
describe_component_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_component_configuration(Client, Input, []).
describe_component_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeComponentConfiguration">>, Input, Options).

%% @doc Describes the recommended monitoring configuration of the component.
describe_component_configuration_recommendation(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_component_configuration_recommendation(Client, Input, []).
describe_component_configuration_recommendation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeComponentConfigurationRecommendation">>, Input, Options).

%% @doc Describe a specific log pattern from a `LogPatternSet'.
describe_log_pattern(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_log_pattern(Client, Input, []).
describe_log_pattern(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLogPattern">>, Input, Options).

%% @doc Describes an anomaly or error with the application.
describe_observation(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_observation(Client, Input, []).
describe_observation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeObservation">>, Input, Options).

%% @doc Describes an application problem.
describe_problem(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_problem(Client, Input, []).
describe_problem(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProblem">>, Input, Options).

%% @doc Describes the anomalies or errors associated with the problem.
describe_problem_observations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_problem_observations(Client, Input, []).
describe_problem_observations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProblemObservations">>, Input, Options).

%% @doc Describes a workload and its configuration.
describe_workload(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workload(Client, Input, []).
describe_workload(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkload">>, Input, Options).

%% @doc Lists the IDs of the applications that you are monitoring.
list_applications(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_applications(Client, Input, []).
list_applications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApplications">>, Input, Options).

%% @doc Lists the auto-grouped, standalone, and custom components of the
%% application.
list_components(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_components(Client, Input, []).
list_components(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListComponents">>, Input, Options).

%% @doc Lists the INFO, WARN, and ERROR events for periodic configuration
%% updates performed by
%% Application Insights.
%%
%% Examples of events represented are:
%%
%% INFO: creating a new alarm or updating an alarm threshold.
%%
%% WARN: alarm not created due to insufficient data points used to predict
%% thresholds.
%%
%% ERROR: alarm not created due to permission errors or exceeding quotas.
list_configuration_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_configuration_history(Client, Input, []).
list_configuration_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListConfigurationHistory">>, Input, Options).

%% @doc Lists the log pattern sets in the specific application.
list_log_pattern_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_log_pattern_sets(Client, Input, []).
list_log_pattern_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLogPatternSets">>, Input, Options).

%% @doc Lists the log patterns in the specific log `LogPatternSet'.
list_log_patterns(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_log_patterns(Client, Input, []).
list_log_patterns(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLogPatterns">>, Input, Options).

%% @doc Lists the problems with your application.
list_problems(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_problems(Client, Input, []).
list_problems(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProblems">>, Input, Options).

%% @doc Retrieve a list of the tags (keys and values) that are associated
%% with a specified
%% application.
%%
%% A tag is a label that you optionally define and associate
%% with an application. Each tag consists of a required tag key and an
%% optional associated tag value. A tag key is a general label that acts
%% as a category for more specific tag values. A tag value acts as a
%% descriptor within a tag
%% key.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Lists the workloads that are configured on a given component.
list_workloads(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_workloads(Client, Input, []).
list_workloads(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWorkloads">>, Input, Options).

%% @doc Remove workload from a component.
remove_workload(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_workload(Client, Input, []).
remove_workload(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveWorkload">>, Input, Options).

%% @doc Add one or more tags (keys and values) to a specified application.
%%
%% A
%% tag is a label that you optionally define and associate with an
%% application. Tags can help you categorize and manage application in
%% different ways, such as
%% by purpose, owner, environment, or other criteria.
%%
%% Each tag consists of a required tag key and an associated
%% tag value, both of which you define. A tag key is a general label
%% that acts as a category for more specific tag values. A tag value acts as
%% a descriptor
%% within a tag key.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Remove one or more tags (keys and values) from a specified
%% application.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates the application.
update_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_application(Client, Input, []).
update_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApplication">>, Input, Options).

%% @doc Updates the custom component name and/or the list of resources that
%% make up the
%% component.
update_component(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_component(Client, Input, []).
update_component(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateComponent">>, Input, Options).

%% @doc Updates the monitoring configurations for the component.
%%
%% The configuration input
%% parameter is an escaped JSON of the configuration and should match the
%% schema of what is
%% returned by `DescribeComponentConfigurationRecommendation'.
update_component_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_component_configuration(Client, Input, []).
update_component_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateComponentConfiguration">>, Input, Options).

%% @doc Adds a log pattern to a `LogPatternSet'.
update_log_pattern(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_log_pattern(Client, Input, []).
update_log_pattern(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLogPattern">>, Input, Options).

%% @doc Updates the visibility of the problem or specifies the problem as
%% `RESOLVED'.
update_problem(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_problem(Client, Input, []).
update_problem(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProblem">>, Input, Options).

%% @doc Adds a workload to a component.
%%
%% Each component can have at most five workloads.
update_workload(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_workload(Client, Input, []).
update_workload(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateWorkload">>, Input, Options).

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
    Client1 = Client#{service => <<"applicationinsights">>},
    Host = build_host(<<"applicationinsights">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"EC2WindowsBarleyService.", Action/binary>>}
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
