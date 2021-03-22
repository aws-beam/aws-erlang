%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS AppConfig
%%
%% Use AWS AppConfig, a capability of AWS Systems Manager, to create, manage,
%% and quickly deploy application configurations.
%%
%% AppConfig supports controlled deployments to applications of any size and
%% includes built-in validation checks and monitoring. You can use AppConfig
%% with applications hosted on Amazon EC2 instances, AWS Lambda, containers,
%% mobile applications, or IoT devices.
%%
%% To prevent errors when deploying application configurations, especially
%% for production systems where a simple typo could cause an unexpected
%% outage, AppConfig includes validators. A validator provides a syntactic or
%% semantic check to ensure that the configuration you want to deploy works
%% as intended. To validate your application configuration data, you provide
%% a schema or a Lambda function that runs against the configuration. The
%% configuration deployment or update can only proceed when the configuration
%% data is valid.
%%
%% During a configuration deployment, AppConfig monitors the application to
%% ensure that the deployment is successful. If the system encounters an
%% error, AppConfig rolls back the change to minimize impact for your
%% application users. You can configure a deployment strategy for each
%% application or environment that includes deployment criteria, including
%% velocity, bake time, and alarms to monitor. Similar to error monitoring,
%% if a deployment triggers an alarm, AppConfig automatically rolls back to
%% the previous version.
%%
%% AppConfig supports multiple use cases. Here are some examples.
%%
%% <ul> <li> Application tuning: Use AppConfig to carefully introduce changes
%% to your application that can only be tested with production traffic.
%%
%% </li> <li> Feature toggle: Use AppConfig to turn on new features that
%% require a timely deployment, such as a product launch or announcement.
%%
%% </li> <li> Allow list: Use AppConfig to allow premium subscribers to
%% access paid content.
%%
%% </li> <li> Operational issues: Use AppConfig to reduce stress on your
%% application when a dependency or other external factor impacts the system.
%%
%% </li> </ul> This reference is intended to be used with the AWS AppConfig
%% User Guide.
-module(aws_appconfig).

-export([create_application/2,
         create_application/3,
         create_configuration_profile/3,
         create_configuration_profile/4,
         create_deployment_strategy/2,
         create_deployment_strategy/3,
         create_environment/3,
         create_environment/4,
         create_hosted_configuration_version/4,
         create_hosted_configuration_version/5,
         delete_application/3,
         delete_application/4,
         delete_configuration_profile/4,
         delete_configuration_profile/5,
         delete_deployment_strategy/3,
         delete_deployment_strategy/4,
         delete_environment/4,
         delete_environment/5,
         delete_hosted_configuration_version/5,
         delete_hosted_configuration_version/6,
         get_application/2,
         get_application/4,
         get_application/5,
         get_configuration/5,
         get_configuration/7,
         get_configuration/8,
         get_configuration_profile/3,
         get_configuration_profile/5,
         get_configuration_profile/6,
         get_deployment/4,
         get_deployment/6,
         get_deployment/7,
         get_deployment_strategy/2,
         get_deployment_strategy/4,
         get_deployment_strategy/5,
         get_environment/3,
         get_environment/5,
         get_environment/6,
         get_hosted_configuration_version/4,
         get_hosted_configuration_version/6,
         get_hosted_configuration_version/7,
         list_applications/1,
         list_applications/3,
         list_applications/4,
         list_configuration_profiles/2,
         list_configuration_profiles/4,
         list_configuration_profiles/5,
         list_deployment_strategies/1,
         list_deployment_strategies/3,
         list_deployment_strategies/4,
         list_deployments/3,
         list_deployments/5,
         list_deployments/6,
         list_environments/2,
         list_environments/4,
         list_environments/5,
         list_hosted_configuration_versions/3,
         list_hosted_configuration_versions/5,
         list_hosted_configuration_versions/6,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_deployment/4,
         start_deployment/5,
         stop_deployment/5,
         stop_deployment/6,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_application/3,
         update_application/4,
         update_configuration_profile/4,
         update_configuration_profile/5,
         update_deployment_strategy/3,
         update_deployment_strategy/4,
         update_environment/4,
         update_environment/5,
         validate_configuration/4,
         validate_configuration/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc An application in AppConfig is a logical unit of code that provides
%% capabilities for your customers.
%%
%% For example, an application can be a microservice that runs on Amazon EC2
%% instances, a mobile application installed by your users, a serverless
%% application using Amazon API Gateway and AWS Lambda, or any system you run
%% on behalf of others.
create_application(Client, Input) ->
    create_application(Client, Input, []).
create_application(Client, Input0, Options) ->
    Method = post,
    Path = ["/applications"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Information that enables AppConfig to access the configuration
%% source.
%%
%% Valid configuration sources include Systems Manager (SSM) documents, SSM
%% Parameter Store parameters, and Amazon S3 objects. A configuration profile
%% includes the following information.
%%
%% <ul> <li> The Uri location of the configuration data.
%%
%% </li> <li> The AWS Identity and Access Management (IAM) role that provides
%% access to the configuration data.
%%
%% </li> <li> A validator for the configuration data. Available validators
%% include either a JSON Schema or an AWS Lambda function.
%%
%% </li> </ul> For more information, see Create a Configuration and a
%% Configuration Profile in the AWS AppConfig User Guide.
create_configuration_profile(Client, ApplicationId, Input) ->
    create_configuration_profile(Client, ApplicationId, Input, []).
create_configuration_profile(Client, ApplicationId, Input0, Options) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/configurationprofiles"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc A deployment strategy defines important criteria for rolling out your
%% configuration to the designated targets.
%%
%% A deployment strategy includes: the overall duration required, a
%% percentage of targets to receive the deployment during each interval, an
%% algorithm that defines how percentage grows, and bake time.
create_deployment_strategy(Client, Input) ->
    create_deployment_strategy(Client, Input, []).
create_deployment_strategy(Client, Input0, Options) ->
    Method = post,
    Path = ["/deploymentstrategies"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc For each application, you define one or more environments.
%%
%% An environment is a logical deployment group of AppConfig targets, such as
%% applications in a `Beta' or `Production' environment. You can also define
%% environments for application subcomponents such as the `Web', `Mobile' and
%% `Back-end' components for your application. You can configure Amazon
%% CloudWatch alarms for each environment. The system monitors alarms during
%% a configuration deployment. If an alarm is triggered, the system rolls
%% back the configuration.
create_environment(Client, ApplicationId, Input) ->
    create_environment(Client, ApplicationId, Input, []).
create_environment(Client, ApplicationId, Input0, Options) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/environments"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Create a new configuration in the AppConfig configuration store.
create_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, Input) ->
    create_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, Input, []).
create_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, Input0, Options) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/configurationprofiles/", aws_util:encode_uri(ConfigurationProfileId), "/hostedconfigurationversions"],
    SuccessStatusCode = 201,

    HeadersMapping = [
                       {<<"Content-Type">>, <<"ContentType">>},
                       {<<"Description">>, <<"Description">>},
                       {<<"Latest-Version-Number">>, <<"LatestVersionNumber">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Application-Id">>, <<"ApplicationId">>},
            {<<"Configuration-Profile-Id">>, <<"ConfigurationProfileId">>},
            {<<"Content-Type">>, <<"ContentType">>},
            {<<"Description">>, <<"Description">>},
            {<<"Version-Number">>, <<"VersionNumber">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Delete an application.
%%
%% Deleting an application does not delete a configuration from a host.
delete_application(Client, ApplicationId, Input) ->
    delete_application(Client, ApplicationId, Input, []).
delete_application(Client, ApplicationId, Input0, Options) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a configuration profile.
%%
%% Deleting a configuration profile does not delete a configuration from a
%% host.
delete_configuration_profile(Client, ApplicationId, ConfigurationProfileId, Input) ->
    delete_configuration_profile(Client, ApplicationId, ConfigurationProfileId, Input, []).
delete_configuration_profile(Client, ApplicationId, ConfigurationProfileId, Input0, Options) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/configurationprofiles/", aws_util:encode_uri(ConfigurationProfileId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a deployment strategy.
%%
%% Deleting a deployment strategy does not delete a configuration from a
%% host.
delete_deployment_strategy(Client, DeploymentStrategyId, Input) ->
    delete_deployment_strategy(Client, DeploymentStrategyId, Input, []).
delete_deployment_strategy(Client, DeploymentStrategyId, Input0, Options) ->
    Method = delete,
    Path = ["/deployementstrategies/", aws_util:encode_uri(DeploymentStrategyId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Delete an environment.
%%
%% Deleting an environment does not delete a configuration from a host.
delete_environment(Client, ApplicationId, EnvironmentId, Input) ->
    delete_environment(Client, ApplicationId, EnvironmentId, Input, []).
delete_environment(Client, ApplicationId, EnvironmentId, Input0, Options) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/environments/", aws_util:encode_uri(EnvironmentId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a version of a configuration from the AppConfig configuration
%% store.
delete_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, VersionNumber, Input) ->
    delete_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, VersionNumber, Input, []).
delete_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, VersionNumber, Input0, Options) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/configurationprofiles/", aws_util:encode_uri(ConfigurationProfileId), "/hostedconfigurationversions/", aws_util:encode_uri(VersionNumber), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieve information about an application.
get_application(Client, ApplicationId)
  when is_map(Client) ->
    get_application(Client, ApplicationId, #{}, #{}).

get_application(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_application(Client, ApplicationId, QueryMap, HeadersMap, []).

get_application(Client, ApplicationId, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Receive information about a configuration.
%%
%% AWS AppConfig uses the value of the `ClientConfigurationVersion' parameter
%% to identify the configuration version on your clients. If you don’t send
%% `ClientConfigurationVersion' with each call to `GetConfiguration', your
%% clients receive the current configuration. You are charged each time your
%% clients receive a configuration.
%%
%% To avoid excess charges, we recommend that you include the
%% `ClientConfigurationVersion' value with every call to `GetConfiguration'.
%% This value must be saved on your client. Subsequent calls to
%% `GetConfiguration' must pass this value by using the
%% `ClientConfigurationVersion' parameter.
get_configuration(Client, Application, Configuration, Environment, ClientId)
  when is_map(Client) ->
    get_configuration(Client, Application, Configuration, Environment, ClientId, #{}, #{}).

get_configuration(Client, Application, Configuration, Environment, ClientId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_configuration(Client, Application, Configuration, Environment, ClientId, QueryMap, HeadersMap, []).

get_configuration(Client, Application, Configuration, Environment, ClientId, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/applications/", aws_util:encode_uri(Application), "/environments/", aws_util:encode_uri(Environment), "/configurations/", aws_util:encode_uri(Configuration), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"client_configuration_version">>, maps:get(<<"client_configuration_version">>, QueryMap, undefined)},
        {<<"client_id">>, ClientId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Configuration-Version">>, <<"ConfigurationVersion">>},
            {<<"Content-Type">>, <<"ContentType">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Retrieve information about a configuration profile.
get_configuration_profile(Client, ApplicationId, ConfigurationProfileId)
  when is_map(Client) ->
    get_configuration_profile(Client, ApplicationId, ConfigurationProfileId, #{}, #{}).

get_configuration_profile(Client, ApplicationId, ConfigurationProfileId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_configuration_profile(Client, ApplicationId, ConfigurationProfileId, QueryMap, HeadersMap, []).

get_configuration_profile(Client, ApplicationId, ConfigurationProfileId, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/configurationprofiles/", aws_util:encode_uri(ConfigurationProfileId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve information about a configuration deployment.
get_deployment(Client, ApplicationId, DeploymentNumber, EnvironmentId)
  when is_map(Client) ->
    get_deployment(Client, ApplicationId, DeploymentNumber, EnvironmentId, #{}, #{}).

get_deployment(Client, ApplicationId, DeploymentNumber, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_deployment(Client, ApplicationId, DeploymentNumber, EnvironmentId, QueryMap, HeadersMap, []).

get_deployment(Client, ApplicationId, DeploymentNumber, EnvironmentId, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/environments/", aws_util:encode_uri(EnvironmentId), "/deployments/", aws_util:encode_uri(DeploymentNumber), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve information about a deployment strategy.
%%
%% A deployment strategy defines important criteria for rolling out your
%% configuration to the designated targets. A deployment strategy includes:
%% the overall duration required, a percentage of targets to receive the
%% deployment during each interval, an algorithm that defines how percentage
%% grows, and bake time.
get_deployment_strategy(Client, DeploymentStrategyId)
  when is_map(Client) ->
    get_deployment_strategy(Client, DeploymentStrategyId, #{}, #{}).

get_deployment_strategy(Client, DeploymentStrategyId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_deployment_strategy(Client, DeploymentStrategyId, QueryMap, HeadersMap, []).

get_deployment_strategy(Client, DeploymentStrategyId, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/deploymentstrategies/", aws_util:encode_uri(DeploymentStrategyId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve information about an environment.
%%
%% An environment is a logical deployment group of AppConfig applications,
%% such as applications in a `Production' environment or in an `EU_Region'
%% environment. Each configuration deployment targets an environment. You can
%% enable one or more Amazon CloudWatch alarms for an environment. If an
%% alarm is triggered during a deployment, AppConfig roles back the
%% configuration.
get_environment(Client, ApplicationId, EnvironmentId)
  when is_map(Client) ->
    get_environment(Client, ApplicationId, EnvironmentId, #{}, #{}).

get_environment(Client, ApplicationId, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_environment(Client, ApplicationId, EnvironmentId, QueryMap, HeadersMap, []).

get_environment(Client, ApplicationId, EnvironmentId, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/environments/", aws_util:encode_uri(EnvironmentId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get information about a specific configuration version.
get_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, VersionNumber)
  when is_map(Client) ->
    get_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, VersionNumber, #{}, #{}).

get_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, VersionNumber, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, VersionNumber, QueryMap, HeadersMap, []).

get_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, VersionNumber, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/configurationprofiles/", aws_util:encode_uri(ConfigurationProfileId), "/hostedconfigurationversions/", aws_util:encode_uri(VersionNumber), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Application-Id">>, <<"ApplicationId">>},
            {<<"Configuration-Profile-Id">>, <<"ConfigurationProfileId">>},
            {<<"Content-Type">>, <<"ContentType">>},
            {<<"Description">>, <<"Description">>},
            {<<"Version-Number">>, <<"VersionNumber">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc List all applications in your AWS account.
list_applications(Client)
  when is_map(Client) ->
    list_applications(Client, #{}, #{}).

list_applications(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_applications(Client, QueryMap, HeadersMap, []).

list_applications(Client, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/applications"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the configuration profiles for an application.
list_configuration_profiles(Client, ApplicationId)
  when is_map(Client) ->
    list_configuration_profiles(Client, ApplicationId, #{}, #{}).

list_configuration_profiles(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_configuration_profiles(Client, ApplicationId, QueryMap, HeadersMap, []).

list_configuration_profiles(Client, ApplicationId, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/configurationprofiles"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List deployment strategies.
list_deployment_strategies(Client)
  when is_map(Client) ->
    list_deployment_strategies(Client, #{}, #{}).

list_deployment_strategies(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_deployment_strategies(Client, QueryMap, HeadersMap, []).

list_deployment_strategies(Client, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/deploymentstrategies"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the deployments for an environment.
list_deployments(Client, ApplicationId, EnvironmentId)
  when is_map(Client) ->
    list_deployments(Client, ApplicationId, EnvironmentId, #{}, #{}).

list_deployments(Client, ApplicationId, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_deployments(Client, ApplicationId, EnvironmentId, QueryMap, HeadersMap, []).

list_deployments(Client, ApplicationId, EnvironmentId, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/environments/", aws_util:encode_uri(EnvironmentId), "/deployments"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the environments for an application.
list_environments(Client, ApplicationId)
  when is_map(Client) ->
    list_environments(Client, ApplicationId, #{}, #{}).

list_environments(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_environments(Client, ApplicationId, QueryMap, HeadersMap, []).

list_environments(Client, ApplicationId, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/environments"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc View a list of configurations stored in the AppConfig configuration
%% store by version.
list_hosted_configuration_versions(Client, ApplicationId, ConfigurationProfileId)
  when is_map(Client) ->
    list_hosted_configuration_versions(Client, ApplicationId, ConfigurationProfileId, #{}, #{}).

list_hosted_configuration_versions(Client, ApplicationId, ConfigurationProfileId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_hosted_configuration_versions(Client, ApplicationId, ConfigurationProfileId, QueryMap, HeadersMap, []).

list_hosted_configuration_versions(Client, ApplicationId, ConfigurationProfileId, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/configurationprofiles/", aws_util:encode_uri(ConfigurationProfileId), "/hostedconfigurationversions"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the list of key-value tags assigned to the resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Starts a deployment.
start_deployment(Client, ApplicationId, EnvironmentId, Input) ->
    start_deployment(Client, ApplicationId, EnvironmentId, Input, []).
start_deployment(Client, ApplicationId, EnvironmentId, Input0, Options) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/environments/", aws_util:encode_uri(EnvironmentId), "/deployments"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Stops a deployment.
%%
%% This API action works only on deployments that have a status of
%% `DEPLOYING'. This action moves the deployment to a status of
%% `ROLLED_BACK'.
stop_deployment(Client, ApplicationId, DeploymentNumber, EnvironmentId, Input) ->
    stop_deployment(Client, ApplicationId, DeploymentNumber, EnvironmentId, Input, []).
stop_deployment(Client, ApplicationId, DeploymentNumber, EnvironmentId, Input0, Options) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/environments/", aws_util:encode_uri(EnvironmentId), "/deployments/", aws_util:encode_uri(DeploymentNumber), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Metadata to assign to an AppConfig resource.
%%
%% Tags help organize and categorize your AppConfig resources. Each tag
%% consists of a key and an optional value, both of which you define. You can
%% specify a maximum of 50 tags for a resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a tag key and value from an AppConfig resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an application.
update_application(Client, ApplicationId, Input) ->
    update_application(Client, ApplicationId, Input, []).
update_application(Client, ApplicationId, Input0, Options) ->
    Method = patch,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a configuration profile.
update_configuration_profile(Client, ApplicationId, ConfigurationProfileId, Input) ->
    update_configuration_profile(Client, ApplicationId, ConfigurationProfileId, Input, []).
update_configuration_profile(Client, ApplicationId, ConfigurationProfileId, Input0, Options) ->
    Method = patch,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/configurationprofiles/", aws_util:encode_uri(ConfigurationProfileId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a deployment strategy.
update_deployment_strategy(Client, DeploymentStrategyId, Input) ->
    update_deployment_strategy(Client, DeploymentStrategyId, Input, []).
update_deployment_strategy(Client, DeploymentStrategyId, Input0, Options) ->
    Method = patch,
    Path = ["/deploymentstrategies/", aws_util:encode_uri(DeploymentStrategyId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an environment.
update_environment(Client, ApplicationId, EnvironmentId, Input) ->
    update_environment(Client, ApplicationId, EnvironmentId, Input, []).
update_environment(Client, ApplicationId, EnvironmentId, Input0, Options) ->
    Method = patch,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/environments/", aws_util:encode_uri(EnvironmentId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Uses the validators in a configuration profile to validate a
%% configuration.
validate_configuration(Client, ApplicationId, ConfigurationProfileId, Input) ->
    validate_configuration(Client, ApplicationId, ConfigurationProfileId, Input, []).
validate_configuration(Client, ApplicationId, ConfigurationProfileId, Input0, Options) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/configurationprofiles/", aws_util:encode_uri(ConfigurationProfileId), "/validators"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"configuration_version">>, <<"ConfigurationVersion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
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
    Client1 = Client#{service => <<"appconfig">>},
    Host = build_host(<<"appconfig">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(should_send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        undefined ->
          encode_payload(Input)
      end,

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
