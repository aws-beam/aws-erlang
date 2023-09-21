%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Use AppConfig, a capability of Amazon Web Services Systems Manager,
%% to create, manage, and quickly deploy application configurations.
%%
%% AppConfig supports controlled deployments to applications of any size and
%% includes built-in validation checks and monitoring. You can use AppConfig
%% with applications hosted on Amazon EC2 instances, Lambda, containers,
%% mobile applications, or IoT devices.
%%
%% To prevent errors when deploying application configurations, especially
%% for production systems where a simple typo could cause an unexpected
%% outage, AppConfig includes validators. A validator provides a syntactic or
%% semantic check to ensure that the configuration you want to deploy works
%% as intended. To validate your application configuration data, you provide
%% a schema or an Amazon Web Services Lambda function that runs against the
%% configuration. The configuration deployment or update can only proceed
%% when the configuration data is valid.
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
%% AppConfig supports multiple use cases. Here are some examples:
%%
%% <ul> <li> Feature flags: Use AppConfig to turn on new features that
%% require a timely deployment, such as a product launch or announcement.
%%
%% </li> <li> Application tuning: Use AppConfig to carefully introduce
%% changes to your application that can only be tested with production
%% traffic.
%%
%% </li> <li> Allow list: Use AppConfig to allow premium subscribers to
%% access paid content.
%%
%% </li> <li> Operational issues: Use AppConfig to reduce stress on your
%% application when a dependency or other external factor impacts the system.
%%
%% </li> </ul> This reference is intended to be used with the AppConfig User
%% Guide.
-module(aws_appconfig).

-export([create_application/2,
         create_application/3,
         create_configuration_profile/3,
         create_configuration_profile/4,
         create_deployment_strategy/2,
         create_deployment_strategy/3,
         create_environment/3,
         create_environment/4,
         create_extension/2,
         create_extension/3,
         create_extension_association/2,
         create_extension_association/3,
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
         delete_extension/3,
         delete_extension/4,
         delete_extension_association/3,
         delete_extension_association/4,
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
         get_extension/2,
         get_extension/4,
         get_extension/5,
         get_extension_association/2,
         get_extension_association/4,
         get_extension_association/5,
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
         list_extension_associations/1,
         list_extension_associations/3,
         list_extension_associations/4,
         list_extensions/1,
         list_extensions/3,
         list_extensions/4,
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
         update_extension/3,
         update_extension/4,
         update_extension_association/3,
         update_extension_association/4,
         validate_configuration/4,
         validate_configuration/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an application.
%%
%% In AppConfig, an application is simply an organizational construct like a
%% folder. This organizational construct has a relationship with some unit of
%% executable code. For example, you could create an application called
%% MyMobileApp to organize and manage configuration data for a mobile
%% application installed by your users.
create_application(Client, Input) ->
    create_application(Client, Input, []).
create_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/applications"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a configuration profile, which is information that enables
%% AppConfig to access the configuration source.
%%
%% Valid configuration sources include the following:
%%
%% <ul> <li> Configuration data in YAML, JSON, and other formats stored in
%% the AppConfig hosted configuration store
%%
%% </li> <li> Configuration data stored as objects in an Amazon Simple
%% Storage Service (Amazon S3) bucket
%%
%% </li> <li> Pipelines stored in CodePipeline
%%
%% </li> <li> Secrets stored in Secrets Manager
%%
%% </li> <li> Standard and secure string parameters stored in Amazon Web
%% Services Systems Manager Parameter Store
%%
%% </li> <li> Configuration data in SSM documents stored in the Systems
%% Manager document store
%%
%% </li> </ul> A configuration profile includes the following information:
%%
%% <ul> <li> The URI location of the configuration data.
%%
%% </li> <li> The Identity and Access Management (IAM) role that provides
%% access to the configuration data.
%%
%% </li> <li> A validator for the configuration data. Available validators
%% include either a JSON Schema or an Amazon Web Services Lambda function.
%%
%% </li> </ul> For more information, see Create a Configuration and a
%% Configuration Profile in the AppConfig User Guide.
create_configuration_profile(Client, ApplicationId, Input) ->
    create_configuration_profile(Client, ApplicationId, Input, []).
create_configuration_profile(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/configurationprofiles"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a deployment strategy that defines important criteria for
%% rolling out your configuration to the designated targets.
%%
%% A deployment strategy includes the overall duration required, a percentage
%% of targets to receive the deployment during each interval, an algorithm
%% that defines how percentage grows, and bake time.
create_deployment_strategy(Client, Input) ->
    create_deployment_strategy(Client, Input, []).
create_deployment_strategy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deploymentstrategies"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an environment.
%%
%% For each application, you define one or more environments. An environment
%% is a deployment group of AppConfig targets, such as applications in a
%% `Beta' or `Production' environment. You can also define
%% environments for application subcomponents such as the `Web',
%% `Mobile' and `Back-end' components for your application. You can
%% configure Amazon CloudWatch alarms for each environment. The system
%% monitors alarms during a configuration deployment. If an alarm is
%% triggered, the system rolls back the configuration.
create_environment(Client, ApplicationId, Input) ->
    create_environment(Client, ApplicationId, Input, []).
create_environment(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/environments"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an AppConfig extension.
%%
%% An extension augments your ability to inject logic or behavior at
%% different points during the AppConfig workflow of creating or deploying a
%% configuration.
%%
%% You can create your own extensions or use the Amazon Web Services authored
%% extensions provided by AppConfig. For an AppConfig extension that uses
%% Lambda, you must create a Lambda function to perform any computation and
%% processing defined in the extension. If you plan to create custom versions
%% of the Amazon Web Services authored notification extensions, you only need
%% to specify an Amazon Resource Name (ARN) in the `Uri' field for the
%% new extension version.
%%
%% <ul> <li> For a custom EventBridge notification extension, enter the ARN
%% of the EventBridge default events in the `Uri' field.
%%
%% </li> <li> For a custom Amazon SNS notification extension, enter the ARN
%% of an Amazon SNS topic in the `Uri' field.
%%
%% </li> <li> For a custom Amazon SQS notification extension, enter the ARN
%% of an Amazon SQS message queue in the `Uri' field.
%%
%% </li> </ul> For more information about extensions, see Working with
%% AppConfig extensions in the AppConfig User Guide.
create_extension(Client, Input) ->
    create_extension(Client, Input, []).
create_extension(Client, Input0, Options0) ->
    Method = post,
    Path = ["/extensions"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"Latest-Version-Number">>, <<"LatestVersionNumber">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc When you create an extension or configure an Amazon Web Services
%% authored extension, you associate the extension with an AppConfig
%% application, environment, or configuration profile.
%%
%% For example, you can choose to run the `AppConfig deployment events to
%% Amazon SNS' Amazon Web Services authored extension and receive
%% notifications on an Amazon SNS topic anytime a configuration deployment is
%% started for a specific application. Defining which extension to associate
%% with an AppConfig resource is called an extension association. An
%% extension association is a specified relationship between an extension and
%% an AppConfig resource, such as an application or a configuration profile.
%% For more information about extensions and associations, see Working with
%% AppConfig extensions in the AppConfig User Guide.
create_extension_association(Client, Input) ->
    create_extension_association(Client, Input, []).
create_extension_association(Client, Input0, Options0) ->
    Method = post,
    Path = ["/extensionassociations"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new configuration in the AppConfig hosted configuration
%% store.
create_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, Input) ->
    create_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, Input, []).
create_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/configurationprofiles/", aws_util:encode_uri(ConfigurationProfileId), "/hostedconfigurationversions"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"Content-Type">>, <<"ContentType">>},
                       {<<"Description">>, <<"Description">>},
                       {<<"Latest-Version-Number">>, <<"LatestVersionNumber">>},
                       {<<"VersionLabel">>, <<"VersionLabel">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Application-Id">>, <<"ApplicationId">>},
            {<<"Configuration-Profile-Id">>, <<"ConfigurationProfileId">>},
            {<<"Content-Type">>, <<"ContentType">>},
            {<<"Description">>, <<"Description">>},
            {<<"VersionLabel">>, <<"VersionLabel">>},
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

%% @doc Deletes an application.
%%
%% Deleting an application does not delete a configuration from a host.
delete_application(Client, ApplicationId, Input) ->
    delete_application(Client, ApplicationId, Input, []).
delete_application(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a configuration profile.
%%
%% Deleting a configuration profile does not delete a configuration from a
%% host.
delete_configuration_profile(Client, ApplicationId, ConfigurationProfileId, Input) ->
    delete_configuration_profile(Client, ApplicationId, ConfigurationProfileId, Input, []).
delete_configuration_profile(Client, ApplicationId, ConfigurationProfileId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/configurationprofiles/", aws_util:encode_uri(ConfigurationProfileId), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a deployment strategy.
%%
%% Deleting a deployment strategy does not delete a configuration from a
%% host.
delete_deployment_strategy(Client, DeploymentStrategyId, Input) ->
    delete_deployment_strategy(Client, DeploymentStrategyId, Input, []).
delete_deployment_strategy(Client, DeploymentStrategyId, Input0, Options0) ->
    Method = delete,
    Path = ["/deployementstrategies/", aws_util:encode_uri(DeploymentStrategyId), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an environment.
%%
%% Deleting an environment does not delete a configuration from a host.
delete_environment(Client, ApplicationId, EnvironmentId, Input) ->
    delete_environment(Client, ApplicationId, EnvironmentId, Input, []).
delete_environment(Client, ApplicationId, EnvironmentId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/environments/", aws_util:encode_uri(EnvironmentId), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an AppConfig extension.
%%
%% You must delete all associations to an extension before you delete the
%% extension.
delete_extension(Client, ExtensionIdentifier, Input) ->
    delete_extension(Client, ExtensionIdentifier, Input, []).
delete_extension(Client, ExtensionIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/extensions/", aws_util:encode_uri(ExtensionIdentifier), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"version">>, <<"VersionNumber">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an extension association.
%%
%% This action doesn't delete extensions defined in the association.
delete_extension_association(Client, ExtensionAssociationId, Input) ->
    delete_extension_association(Client, ExtensionAssociationId, Input, []).
delete_extension_association(Client, ExtensionAssociationId, Input0, Options0) ->
    Method = delete,
    Path = ["/extensionassociations/", aws_util:encode_uri(ExtensionAssociationId), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a version of a configuration from the AppConfig hosted
%% configuration store.
delete_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, VersionNumber, Input) ->
    delete_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, VersionNumber, Input, []).
delete_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, VersionNumber, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/configurationprofiles/", aws_util:encode_uri(ConfigurationProfileId), "/hostedconfigurationversions/", aws_util:encode_uri(VersionNumber), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves information about an application.
get_application(Client, ApplicationId)
  when is_map(Client) ->
    get_application(Client, ApplicationId, #{}, #{}).

get_application(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_application(Client, ApplicationId, QueryMap, HeadersMap, []).

get_application(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc (Deprecated) Retrieves the latest deployed configuration.
%%
%% Note the following important information.
%%
%% This API action is deprecated. Calls to receive configuration data should
%% use the StartConfigurationSession and GetLatestConfiguration APIs instead.
%%
%% `GetConfiguration' is a priced call. For more information, see
%% Pricing.
get_configuration(Client, Application, Configuration, Environment, ClientId)
  when is_map(Client) ->
    get_configuration(Client, Application, Configuration, Environment, ClientId, #{}, #{}).

get_configuration(Client, Application, Configuration, Environment, ClientId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_configuration(Client, Application, Configuration, Environment, ClientId, QueryMap, HeadersMap, []).

get_configuration(Client, Application, Configuration, Environment, ClientId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(Application), "/environments/", aws_util:encode_uri(Environment), "/configurations/", aws_util:encode_uri(Configuration), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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

%% @doc Retrieves information about a configuration profile.
get_configuration_profile(Client, ApplicationId, ConfigurationProfileId)
  when is_map(Client) ->
    get_configuration_profile(Client, ApplicationId, ConfigurationProfileId, #{}, #{}).

get_configuration_profile(Client, ApplicationId, ConfigurationProfileId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_configuration_profile(Client, ApplicationId, ConfigurationProfileId, QueryMap, HeadersMap, []).

get_configuration_profile(Client, ApplicationId, ConfigurationProfileId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/configurationprofiles/", aws_util:encode_uri(ConfigurationProfileId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a configuration deployment.
get_deployment(Client, ApplicationId, DeploymentNumber, EnvironmentId)
  when is_map(Client) ->
    get_deployment(Client, ApplicationId, DeploymentNumber, EnvironmentId, #{}, #{}).

get_deployment(Client, ApplicationId, DeploymentNumber, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_deployment(Client, ApplicationId, DeploymentNumber, EnvironmentId, QueryMap, HeadersMap, []).

get_deployment(Client, ApplicationId, DeploymentNumber, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/environments/", aws_util:encode_uri(EnvironmentId), "/deployments/", aws_util:encode_uri(DeploymentNumber), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a deployment strategy.
%%
%% A deployment strategy defines important criteria for rolling out your
%% configuration to the designated targets. A deployment strategy includes
%% the overall duration required, a percentage of targets to receive the
%% deployment during each interval, an algorithm that defines how percentage
%% grows, and bake time.
get_deployment_strategy(Client, DeploymentStrategyId)
  when is_map(Client) ->
    get_deployment_strategy(Client, DeploymentStrategyId, #{}, #{}).

get_deployment_strategy(Client, DeploymentStrategyId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_deployment_strategy(Client, DeploymentStrategyId, QueryMap, HeadersMap, []).

get_deployment_strategy(Client, DeploymentStrategyId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/deploymentstrategies/", aws_util:encode_uri(DeploymentStrategyId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an environment.
%%
%% An environment is a deployment group of AppConfig applications, such as
%% applications in a `Production' environment or in an `EU_Region'
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

get_environment(Client, ApplicationId, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/environments/", aws_util:encode_uri(EnvironmentId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about an AppConfig extension.
get_extension(Client, ExtensionIdentifier)
  when is_map(Client) ->
    get_extension(Client, ExtensionIdentifier, #{}, #{}).

get_extension(Client, ExtensionIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_extension(Client, ExtensionIdentifier, QueryMap, HeadersMap, []).

get_extension(Client, ExtensionIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/extensions/", aws_util:encode_uri(ExtensionIdentifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"version_number">>, maps:get(<<"version_number">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about an AppConfig extension association.
%%
%% For more information about extensions and associations, see Working with
%% AppConfig extensions in the AppConfig User Guide.
get_extension_association(Client, ExtensionAssociationId)
  when is_map(Client) ->
    get_extension_association(Client, ExtensionAssociationId, #{}, #{}).

get_extension_association(Client, ExtensionAssociationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_extension_association(Client, ExtensionAssociationId, QueryMap, HeadersMap, []).

get_extension_association(Client, ExtensionAssociationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/extensionassociations/", aws_util:encode_uri(ExtensionAssociationId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a specific configuration version.
get_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, VersionNumber)
  when is_map(Client) ->
    get_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, VersionNumber, #{}, #{}).

get_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, VersionNumber, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, VersionNumber, QueryMap, HeadersMap, []).

get_hosted_configuration_version(Client, ApplicationId, ConfigurationProfileId, VersionNumber, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/configurationprofiles/", aws_util:encode_uri(ConfigurationProfileId), "/hostedconfigurationversions/", aws_util:encode_uri(VersionNumber), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
            {<<"VersionLabel">>, <<"VersionLabel">>},
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

%% @doc Lists all applications in your Amazon Web Services account.
list_applications(Client)
  when is_map(Client) ->
    list_applications(Client, #{}, #{}).

list_applications(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_applications(Client, QueryMap, HeadersMap, []).

list_applications(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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

list_configuration_profiles(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/configurationprofiles"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)},
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists deployment strategies.
list_deployment_strategies(Client)
  when is_map(Client) ->
    list_deployment_strategies(Client, #{}, #{}).

list_deployment_strategies(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_deployment_strategies(Client, QueryMap, HeadersMap, []).

list_deployment_strategies(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/deploymentstrategies"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the deployments for an environment in descending deployment
%% number order.
list_deployments(Client, ApplicationId, EnvironmentId)
  when is_map(Client) ->
    list_deployments(Client, ApplicationId, EnvironmentId, #{}, #{}).

list_deployments(Client, ApplicationId, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_deployments(Client, ApplicationId, EnvironmentId, QueryMap, HeadersMap, []).

list_deployments(Client, ApplicationId, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/environments/", aws_util:encode_uri(EnvironmentId), "/deployments"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the environments for an application.
list_environments(Client, ApplicationId)
  when is_map(Client) ->
    list_environments(Client, ApplicationId, #{}, #{}).

list_environments(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_environments(Client, ApplicationId, QueryMap, HeadersMap, []).

list_environments(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/environments"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all AppConfig extension associations in the account.
%%
%% For more information about extensions and associations, see Working with
%% AppConfig extensions in the AppConfig User Guide.
list_extension_associations(Client)
  when is_map(Client) ->
    list_extension_associations(Client, #{}, #{}).

list_extension_associations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_extension_associations(Client, QueryMap, HeadersMap, []).

list_extension_associations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/extensionassociations"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"extension_identifier">>, maps:get(<<"extension_identifier">>, QueryMap, undefined)},
        {<<"extension_version_number">>, maps:get(<<"extension_version_number">>, QueryMap, undefined)},
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)},
        {<<"resource_identifier">>, maps:get(<<"resource_identifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all custom and Amazon Web Services authored AppConfig
%% extensions in the account.
%%
%% For more information about extensions, see Working with AppConfig
%% extensions in the AppConfig User Guide.
list_extensions(Client)
  when is_map(Client) ->
    list_extensions(Client, #{}, #{}).

list_extensions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_extensions(Client, QueryMap, HeadersMap, []).

list_extensions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/extensions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists configurations stored in the AppConfig hosted configuration
%% store by version.
list_hosted_configuration_versions(Client, ApplicationId, ConfigurationProfileId)
  when is_map(Client) ->
    list_hosted_configuration_versions(Client, ApplicationId, ConfigurationProfileId, #{}, #{}).

list_hosted_configuration_versions(Client, ApplicationId, ConfigurationProfileId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_hosted_configuration_versions(Client, ApplicationId, ConfigurationProfileId, QueryMap, HeadersMap, []).

list_hosted_configuration_versions(Client, ApplicationId, ConfigurationProfileId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/configurationprofiles/", aws_util:encode_uri(ConfigurationProfileId), "/hostedconfigurationversions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)},
        {<<"version_label">>, maps:get(<<"version_label">>, QueryMap, undefined)}
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

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Starts a deployment.
start_deployment(Client, ApplicationId, EnvironmentId, Input) ->
    start_deployment(Client, ApplicationId, EnvironmentId, Input, []).
start_deployment(Client, ApplicationId, EnvironmentId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/environments/", aws_util:encode_uri(EnvironmentId), "/deployments"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Stops a deployment.
%%
%% This API action works only on deployments that have a status of
%% `DEPLOYING'. This action moves the deployment to a status of
%% `ROLLED_BACK'.
stop_deployment(Client, ApplicationId, DeploymentNumber, EnvironmentId, Input) ->
    stop_deployment(Client, ApplicationId, DeploymentNumber, EnvironmentId, Input, []).
stop_deployment(Client, ApplicationId, DeploymentNumber, EnvironmentId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/environments/", aws_util:encode_uri(EnvironmentId), "/deployments/", aws_util:encode_uri(DeploymentNumber), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Assigns metadata to an AppConfig resource.
%%
%% Tags help organize and categorize your AppConfig resources. Each tag
%% consists of a key and an optional value, both of which you define. You can
%% specify a maximum of 50 tags for a resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a tag key and value from an AppConfig resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an application.
update_application(Client, ApplicationId, Input) ->
    update_application(Client, ApplicationId, Input, []).
update_application(Client, ApplicationId, Input0, Options0) ->
    Method = patch,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a configuration profile.
update_configuration_profile(Client, ApplicationId, ConfigurationProfileId, Input) ->
    update_configuration_profile(Client, ApplicationId, ConfigurationProfileId, Input, []).
update_configuration_profile(Client, ApplicationId, ConfigurationProfileId, Input0, Options0) ->
    Method = patch,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/configurationprofiles/", aws_util:encode_uri(ConfigurationProfileId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a deployment strategy.
update_deployment_strategy(Client, DeploymentStrategyId, Input) ->
    update_deployment_strategy(Client, DeploymentStrategyId, Input, []).
update_deployment_strategy(Client, DeploymentStrategyId, Input0, Options0) ->
    Method = patch,
    Path = ["/deploymentstrategies/", aws_util:encode_uri(DeploymentStrategyId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an environment.
update_environment(Client, ApplicationId, EnvironmentId, Input) ->
    update_environment(Client, ApplicationId, EnvironmentId, Input, []).
update_environment(Client, ApplicationId, EnvironmentId, Input0, Options0) ->
    Method = patch,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/environments/", aws_util:encode_uri(EnvironmentId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an AppConfig extension.
%%
%% For more information about extensions, see Working with AppConfig
%% extensions in the AppConfig User Guide.
update_extension(Client, ExtensionIdentifier, Input) ->
    update_extension(Client, ExtensionIdentifier, Input, []).
update_extension(Client, ExtensionIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/extensions/", aws_util:encode_uri(ExtensionIdentifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an association.
%%
%% For more information about extensions and associations, see Working with
%% AppConfig extensions in the AppConfig User Guide.
update_extension_association(Client, ExtensionAssociationId, Input) ->
    update_extension_association(Client, ExtensionAssociationId, Input, []).
update_extension_association(Client, ExtensionAssociationId, Input0, Options0) ->
    Method = patch,
    Path = ["/extensionassociations/", aws_util:encode_uri(ExtensionAssociationId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Uses the validators in a configuration profile to validate a
%% configuration.
validate_configuration(Client, ApplicationId, ConfigurationProfileId, Input) ->
    validate_configuration(Client, ApplicationId, ConfigurationProfileId, Input, []).
validate_configuration(Client, ApplicationId, ConfigurationProfileId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/configurationprofiles/", aws_util:encode_uri(ConfigurationProfileId), "/validators"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"configuration_version">>, <<"ConfigurationVersion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
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
    Client1 = Client#{service => <<"appconfig">>},
    Host = build_host(<<"appconfig">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,
    AdditionalHeaders = case proplists:get_value(append_sha256_content_hash, Options, false) of
                          true ->
                            add_checksum_hash_header(AdditionalHeaders1, Payload);
                          false ->
                            AdditionalHeaders1
                        end,
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

add_checksum_hash_header(Headers, Body) ->
  [ {<<"X-Amz-CheckSum-SHA256">>, base64:encode(crypto:hash(sha256, Body))}
  | Headers
  ].

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
                       true ->
                         try
                           jsx:decode(Body)
                         catch
                           Error:Reason:Stack ->
                             erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
                         end;
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, _ResponseHeaders, _Client}, _, _DecodeBody)
  when StatusCode =:= 503 ->
  %% Retriable error if retries are enabled
  {error, service_unavailable};
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    try
      DecodedError = jsx:decode(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = aws_client:proto(Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
