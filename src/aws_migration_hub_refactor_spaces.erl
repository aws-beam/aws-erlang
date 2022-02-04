%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Migration Hub Refactor Spaces
%%
%% <p>This API reference provides descriptions, syntax, and other details
%% about each of the actions and data types for Amazon Web Services Migration
%% Hub Refactor Spaces (Refactor Spaces).
%%
%% The topic for each action shows the API request parameters and the
%% response. Alternatively, you can use one of the Amazon Web Services SDKs
%% to access an API that is tailored to the programming language or platform
%% that you're using. For more information, see <a
%% href="http://aws.amazon.com/tools/#SDKs">Amazon Web Services SDKs</a>.</p>
-module(aws_migration_hub_refactor_spaces).

-export([create_application/3,
         create_application/4,
         create_environment/2,
         create_environment/3,
         create_route/4,
         create_route/5,
         create_service/4,
         create_service/5,
         delete_application/4,
         delete_application/5,
         delete_environment/3,
         delete_environment/4,
         delete_resource_policy/3,
         delete_resource_policy/4,
         delete_route/5,
         delete_route/6,
         delete_service/5,
         delete_service/6,
         get_application/3,
         get_application/5,
         get_application/6,
         get_environment/2,
         get_environment/4,
         get_environment/5,
         get_resource_policy/2,
         get_resource_policy/4,
         get_resource_policy/5,
         get_route/4,
         get_route/6,
         get_route/7,
         get_service/4,
         get_service/6,
         get_service/7,
         list_applications/2,
         list_applications/4,
         list_applications/5,
         list_environment_vpcs/2,
         list_environment_vpcs/4,
         list_environment_vpcs/5,
         list_environments/1,
         list_environments/3,
         list_environments/4,
         list_routes/3,
         list_routes/5,
         list_routes/6,
         list_services/3,
         list_services/5,
         list_services/6,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_resource_policy/2,
         put_resource_policy/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an Amazon Web Services Migration Hub Refactor Spaces
%% application.
%%
%% The account that owns the environment also owns the applications created
%% inside the environment, regardless of the account that creates the
%% application. Refactor Spaces provisions the Amazon API Gateway and Network
%% Load Balancer for the application proxy inside your account.
create_application(Client, EnvironmentIdentifier, Input) ->
    create_application(Client, EnvironmentIdentifier, Input, []).
create_application(Client, EnvironmentIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/applications"],
    SuccessStatusCode = 200,
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

%% @doc Creates an Amazon Web Services Migration Hub Refactor Spaces
%% environment.
%%
%% The caller owns the environment resource, and they are referred to as the
%% environment owner. The environment owner has cross-account visibility and
%% control of Refactor Spaces resources that are added to the environment by
%% other accounts that the environment is shared with. When creating an
%% environment, Refactor Spaces provisions a transit gateway in your account.
create_environment(Client, Input) ->
    create_environment(Client, Input, []).
create_environment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/environments"],
    SuccessStatusCode = 200,
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

%% @doc Creates an Amazon Web Services Migration Hub Refactor Spaces route.
%%
%% The account owner of the service resource is always the environment owner,
%% regardless of which account creates the route. Routes target a service in
%% the application. If an application does not have any routes, then the
%% first route must be created as a `DEFAULT' `RouteType'.
%%
%% When you create a route, Refactor Spaces configures the Amazon API Gateway
%% to send traffic to the target service as follows:
%%
%% <ul> <li> If the service has a URL endpoint, and the endpoint resolves to
%% a private IP address, Refactor Spaces routes traffic using the API Gateway
%% VPC link.
%%
%% </li> <li> If the service has a URL endpoint, and the endpoint resolves to
%% a public IP address, Refactor Spaces routes traffic over the public
%% internet.
%%
%% </li> <li> If the service has an Lambda function endpoint, then Refactor
%% Spaces uses the API Gateway Lambda integration.
%%
%% </li> </ul> A health check is performed on the service when the route is
%% created. If the health check fails, the route transitions to `FAILED', and
%% no traffic is sent to the service.
%%
%% For Lambda functions, the Lambda function state is checked. If the
%% function is not active, the function configuration is updated so that
%% Lambda resources are provisioned. If the Lambda state is `Failed', then
%% the route creation fails. For more information, see the
%% GetFunctionConfiguration's State response parameter in the Lambda
%% Developer Guide.
%%
%% For public URLs, a connection is opened to the public endpoint. If the URL
%% is not reachable, the health check fails. For private URLs, a target group
%% is created and the target group health check is run.
%%
%% The `HealthCheckProtocol', `HealthCheckPort', and `HealthCheckPath' are
%% the same protocol, port, and path specified in the URL or health URL, if
%% used. All other settings use the default values, as described in Health
%% checks for your target groups. The health check is considered successful
%% if at least one target within the target group transitions to a healthy
%% state.
create_route(Client, ApplicationIdentifier, EnvironmentIdentifier, Input) ->
    create_route(Client, ApplicationIdentifier, EnvironmentIdentifier, Input, []).
create_route(Client, ApplicationIdentifier, EnvironmentIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/applications/", aws_util:encode_uri(ApplicationIdentifier), "/routes"],
    SuccessStatusCode = 200,
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

%% @doc Creates an Amazon Web Services Migration Hub Refactor Spaces service.
%%
%% The account owner of the service is always the environment owner,
%% regardless of which account in the environment creates the service.
%% Services have either a URL endpoint in a virtual private cloud (VPC), or a
%% Lambda function endpoint.
%%
%% If an Amazon Web Services resourceis launched in a service VPC, and you
%% want it to be accessible to all of an environment’s services with VPCs and
%% routes, apply the `RefactorSpacesSecurityGroup' to the resource.
%% Alternatively, to add more cross-account constraints, apply your own
%% security group.
create_service(Client, ApplicationIdentifier, EnvironmentIdentifier, Input) ->
    create_service(Client, ApplicationIdentifier, EnvironmentIdentifier, Input, []).
create_service(Client, ApplicationIdentifier, EnvironmentIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/applications/", aws_util:encode_uri(ApplicationIdentifier), "/services"],
    SuccessStatusCode = 200,
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

%% @doc Deletes an Amazon Web Services Migration Hub Refactor Spaces
%% application.
%%
%% Before you can delete an application, you must first delete any services
%% or routes within the application.
delete_application(Client, ApplicationIdentifier, EnvironmentIdentifier, Input) ->
    delete_application(Client, ApplicationIdentifier, EnvironmentIdentifier, Input, []).
delete_application(Client, ApplicationIdentifier, EnvironmentIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/applications/", aws_util:encode_uri(ApplicationIdentifier), ""],
    SuccessStatusCode = 200,
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

%% @doc Deletes an Amazon Web Services Migration Hub Refactor Spaces
%% environment.
%%
%% Before you can delete an environment, you must first delete any
%% applications and services within the environment.
delete_environment(Client, EnvironmentIdentifier, Input) ->
    delete_environment(Client, EnvironmentIdentifier, Input, []).
delete_environment(Client, EnvironmentIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/environments/", aws_util:encode_uri(EnvironmentIdentifier), ""],
    SuccessStatusCode = 200,
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

%% @doc Deletes the resource policy set for the environment.
delete_resource_policy(Client, Identifier, Input) ->
    delete_resource_policy(Client, Identifier, Input, []).
delete_resource_policy(Client, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/resourcepolicy/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
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

%% @doc Deletes an Amazon Web Services Migration Hub Refactor Spaces route.
delete_route(Client, ApplicationIdentifier, EnvironmentIdentifier, RouteIdentifier, Input) ->
    delete_route(Client, ApplicationIdentifier, EnvironmentIdentifier, RouteIdentifier, Input, []).
delete_route(Client, ApplicationIdentifier, EnvironmentIdentifier, RouteIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/applications/", aws_util:encode_uri(ApplicationIdentifier), "/routes/", aws_util:encode_uri(RouteIdentifier), ""],
    SuccessStatusCode = 200,
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

%% @doc Deletes an Amazon Web Services Migration Hub Refactor Spaces service.
delete_service(Client, ApplicationIdentifier, EnvironmentIdentifier, ServiceIdentifier, Input) ->
    delete_service(Client, ApplicationIdentifier, EnvironmentIdentifier, ServiceIdentifier, Input, []).
delete_service(Client, ApplicationIdentifier, EnvironmentIdentifier, ServiceIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/applications/", aws_util:encode_uri(ApplicationIdentifier), "/services/", aws_util:encode_uri(ServiceIdentifier), ""],
    SuccessStatusCode = 200,
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

%% @doc Gets an Amazon Web Services Migration Hub Refactor Spaces
%% application.
get_application(Client, ApplicationIdentifier, EnvironmentIdentifier)
  when is_map(Client) ->
    get_application(Client, ApplicationIdentifier, EnvironmentIdentifier, #{}, #{}).

get_application(Client, ApplicationIdentifier, EnvironmentIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_application(Client, ApplicationIdentifier, EnvironmentIdentifier, QueryMap, HeadersMap, []).

get_application(Client, ApplicationIdentifier, EnvironmentIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/applications/", aws_util:encode_uri(ApplicationIdentifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an Amazon Web Services Migration Hub Refactor Spaces
%% environment.
get_environment(Client, EnvironmentIdentifier)
  when is_map(Client) ->
    get_environment(Client, EnvironmentIdentifier, #{}, #{}).

get_environment(Client, EnvironmentIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_environment(Client, EnvironmentIdentifier, QueryMap, HeadersMap, []).

get_environment(Client, EnvironmentIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments/", aws_util:encode_uri(EnvironmentIdentifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the resource-based permission policy that is set for the given
%% environment.
get_resource_policy(Client, Identifier)
  when is_map(Client) ->
    get_resource_policy(Client, Identifier, #{}, #{}).

get_resource_policy(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resource_policy(Client, Identifier, QueryMap, HeadersMap, []).

get_resource_policy(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/resourcepolicy/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an Amazon Web Services Migration Hub Refactor Spaces route.
get_route(Client, ApplicationIdentifier, EnvironmentIdentifier, RouteIdentifier)
  when is_map(Client) ->
    get_route(Client, ApplicationIdentifier, EnvironmentIdentifier, RouteIdentifier, #{}, #{}).

get_route(Client, ApplicationIdentifier, EnvironmentIdentifier, RouteIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_route(Client, ApplicationIdentifier, EnvironmentIdentifier, RouteIdentifier, QueryMap, HeadersMap, []).

get_route(Client, ApplicationIdentifier, EnvironmentIdentifier, RouteIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/applications/", aws_util:encode_uri(ApplicationIdentifier), "/routes/", aws_util:encode_uri(RouteIdentifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an Amazon Web Services Migration Hub Refactor Spaces service.
get_service(Client, ApplicationIdentifier, EnvironmentIdentifier, ServiceIdentifier)
  when is_map(Client) ->
    get_service(Client, ApplicationIdentifier, EnvironmentIdentifier, ServiceIdentifier, #{}, #{}).

get_service(Client, ApplicationIdentifier, EnvironmentIdentifier, ServiceIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_service(Client, ApplicationIdentifier, EnvironmentIdentifier, ServiceIdentifier, QueryMap, HeadersMap, []).

get_service(Client, ApplicationIdentifier, EnvironmentIdentifier, ServiceIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/applications/", aws_util:encode_uri(ApplicationIdentifier), "/services/", aws_util:encode_uri(ServiceIdentifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the Amazon Web Services Migration Hub Refactor Spaces
%% applications within an environment.
list_applications(Client, EnvironmentIdentifier)
  when is_map(Client) ->
    list_applications(Client, EnvironmentIdentifier, #{}, #{}).

list_applications(Client, EnvironmentIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_applications(Client, EnvironmentIdentifier, QueryMap, HeadersMap, []).

list_applications(Client, EnvironmentIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/applications"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the virtual private clouds (VPCs) that are part of an
%% Amazon Web Services Migration Hub Refactor Spaces environment.
list_environment_vpcs(Client, EnvironmentIdentifier)
  when is_map(Client) ->
    list_environment_vpcs(Client, EnvironmentIdentifier, #{}, #{}).

list_environment_vpcs(Client, EnvironmentIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_environment_vpcs(Client, EnvironmentIdentifier, QueryMap, HeadersMap, []).

list_environment_vpcs(Client, EnvironmentIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/vpcs"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists Amazon Web Services Migration Hub Refactor Spaces environments
%% owned by a caller account or shared with the caller account.
list_environments(Client)
  when is_map(Client) ->
    list_environments(Client, #{}, #{}).

list_environments(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_environments(Client, QueryMap, HeadersMap, []).

list_environments(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the Amazon Web Services Migration Hub Refactor Spaces
%% routes within an application.
list_routes(Client, ApplicationIdentifier, EnvironmentIdentifier)
  when is_map(Client) ->
    list_routes(Client, ApplicationIdentifier, EnvironmentIdentifier, #{}, #{}).

list_routes(Client, ApplicationIdentifier, EnvironmentIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_routes(Client, ApplicationIdentifier, EnvironmentIdentifier, QueryMap, HeadersMap, []).

list_routes(Client, ApplicationIdentifier, EnvironmentIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/applications/", aws_util:encode_uri(ApplicationIdentifier), "/routes"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the Amazon Web Services Migration Hub Refactor Spaces
%% services within an application.
list_services(Client, ApplicationIdentifier, EnvironmentIdentifier)
  when is_map(Client) ->
    list_services(Client, ApplicationIdentifier, EnvironmentIdentifier, #{}, #{}).

list_services(Client, ApplicationIdentifier, EnvironmentIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_services(Client, ApplicationIdentifier, EnvironmentIdentifier, QueryMap, HeadersMap, []).

list_services(Client, ApplicationIdentifier, EnvironmentIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/applications/", aws_util:encode_uri(ApplicationIdentifier), "/services"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags of a resource.
%%
%% The caller account must be the same as the resource’s `OwnerAccountId'.
%% Listing tags in other accounts is not supported.
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

%% @doc Attaches a resource-based permission policy to the Amazon Web
%% Services Migration Hub Refactor Spaces environment.
%%
%% The policy must contain the same actions and condition statements as the
%% `arn:aws:ram::aws:permission/AWSRAMDefaultPermissionRefactorSpacesEnvironment'
%% permission in Resource Access Manager. The policy must not contain new
%% lines or blank lines.
put_resource_policy(Client, Input) ->
    put_resource_policy(Client, Input, []).
put_resource_policy(Client, Input0, Options0) ->
    Method = put,
    Path = ["/resourcepolicy"],
    SuccessStatusCode = 200,
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

%% @doc Removes the tags of a given resource.
%%
%% Tags are metadata which can be used to manage a resource. To tag a
%% resource, the caller account must be the same as the resource’s
%% `OwnerAccountId'. Tagging resources in other accounts is not supported.
%%
%% Amazon Web Services Migration Hub Refactor Spaces does not propagate tags
%% to orchestrated resources, such as an environment’s transit gateway.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
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

%% @doc Adds to or modifies the tags of the given resource.
%%
%% Tags are metadata which can be used to manage a resource. To untag a
%% resource, the caller account must be the same as the resource’s
%% `OwnerAccountId'. Untagging resources across accounts is not supported.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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
    Client1 = Client#{service => <<"refactor-spaces">>},
    Host = build_host(<<"refactor-spaces">>, Client1),
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
