%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS IoT Greengrass brings local compute, messaging, data management,
%% sync, and ML inference capabilities to edge devices.
%%
%% This enables devices to collect and analyze data closer to the source of
%% information, react autonomously to local events, and communicate securely
%% with each other on local networks. Local devices can also communicate
%% securely with AWS IoT Core and export IoT data to the AWS Cloud. AWS IoT
%% Greengrass developers can use AWS Lambda functions and components to
%% create and deploy applications to fleets of edge devices for local
%% operation.
%%
%% AWS IoT Greengrass Version 2 provides a new major version of the AWS IoT
%% Greengrass Core software, new APIs, and a new console. Use this API
%% reference to learn how to use the AWS IoT Greengrass V2 API operations to
%% manage components, manage deployments, and core devices.
%%
%% For more information, see What is AWS IoT Greengrass? in the AWS IoT
%% Greengrass V2 Developer Guide.
-module(aws_greengrassv2).

-export([cancel_deployment/3,
         cancel_deployment/4,
         create_component_version/2,
         create_component_version/3,
         create_deployment/2,
         create_deployment/3,
         delete_component/3,
         delete_component/4,
         delete_core_device/3,
         delete_core_device/4,
         describe_component/2,
         describe_component/4,
         describe_component/5,
         get_component/2,
         get_component/4,
         get_component/5,
         get_component_version_artifact/3,
         get_component_version_artifact/5,
         get_component_version_artifact/6,
         get_core_device/2,
         get_core_device/4,
         get_core_device/5,
         get_deployment/2,
         get_deployment/4,
         get_deployment/5,
         list_component_versions/2,
         list_component_versions/4,
         list_component_versions/5,
         list_components/1,
         list_components/3,
         list_components/4,
         list_core_devices/1,
         list_core_devices/3,
         list_core_devices/4,
         list_deployments/1,
         list_deployments/3,
         list_deployments/4,
         list_effective_deployments/2,
         list_effective_deployments/4,
         list_effective_deployments/5,
         list_installed_components/2,
         list_installed_components/4,
         list_installed_components/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         resolve_component_candidates/2,
         resolve_component_candidates/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels a deployment.
%%
%% This operation cancels the deployment for devices that haven't yet
%% received it. If a device already received the deployment, this operation
%% doesn't change anything for that device.
cancel_deployment(Client, DeploymentId, Input) ->
    cancel_deployment(Client, DeploymentId, Input, []).
cancel_deployment(Client, DeploymentId, Input0, Options0) ->
    Method = post,
    Path = ["/greengrass/v2/deployments/", aws_util:encode_uri(DeploymentId), "/cancel"],
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

%% @doc Creates a component.
%%
%% Components are software that run on AWS IoT Greengrass core devices. After
%% you develop and test a component on your core device, you can use this
%% operation to upload your component to AWS IoT Greengrass. Then, you can
%% deploy the component to other core devices.
%%
%% You can use this operation to do the following:
%%
%% <ul> <li> Create components from recipes
%%
%% Create a component from a recipe, which is a file that defines the
%% component's metadata, parameters, dependencies, lifecycle, artifacts, and
%% platform capability. For more information, see AWS IoT Greengrass
%% component recipe reference in the AWS IoT Greengrass V2 Developer Guide.
%%
%% To create a component from a recipe, specify `inlineRecipe' when you call
%% this operation.
%%
%% </li> <li> Create components from Lambda functions
%%
%% Create a component from an AWS Lambda function that runs on AWS IoT
%% Greengrass. This creates a recipe and artifacts from the Lambda function's
%% deployment package. You can use this operation to migrate Lambda functions
%% from AWS IoT Greengrass V1 to AWS IoT Greengrass V2.
%%
%% This function only accepts Lambda functions that use the following
%% runtimes:
%%
%% <ul> <li> Python 2.7 – `python2.7'
%%
%% </li> <li> Python 3.7 – `python3.7'
%%
%% </li> <li> Python 3.8 – `python3.8'
%%
%% </li> <li> Java 8 – `java8'
%%
%% </li> <li> Node.js 10 – `nodejs10.x'
%%
%% </li> <li> Node.js 12 – `nodejs12.x'
%%
%% </li> </ul> To create a component from a Lambda function, specify
%% `lambdaFunction' when you call this operation.
%%
%% </li> </ul>
create_component_version(Client, Input) ->
    create_component_version(Client, Input, []).
create_component_version(Client, Input0, Options0) ->
    Method = post,
    Path = ["/greengrass/v2/createComponentVersion"],
    SuccessStatusCode = 201,
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

%% @doc Creates a continuous deployment for a target, which is a AWS IoT
%% Greengrass core device or group of core devices.
%%
%% When you add a new core device to a group of core devices that has a
%% deployment, AWS IoT Greengrass deploys that group's deployment to the new
%% device.
%%
%% You can define one deployment for each target. When you create a new
%% deployment for a target that has an existing deployment, you replace the
%% previous deployment. AWS IoT Greengrass applies the new deployment to the
%% target devices.
%%
%% Every deployment has a revision number that indicates how many deployment
%% revisions you define for a target. Use this operation to create a new
%% revision of an existing deployment. This operation returns the revision
%% number of the new deployment when you create it.
%%
%% For more information, see the Create deployments in the AWS IoT Greengrass
%% V2 Developer Guide.
create_deployment(Client, Input) ->
    create_deployment(Client, Input, []).
create_deployment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/greengrass/v2/deployments"],
    SuccessStatusCode = 201,
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

%% @doc Deletes a version of a component from AWS IoT Greengrass.
%%
%% This operation deletes the component's recipe and artifacts. As a result,
%% deployments that refer to this component version will fail. If you have
%% deployments that use this component version, you can remove the component
%% from the deployment or update the deployment to use a valid version.
delete_component(Client, Arn, Input) ->
    delete_component(Client, Arn, Input, []).
delete_component(Client, Arn, Input0, Options0) ->
    Method = delete,
    Path = ["/greengrass/v2/components/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes a AWS IoT Greengrass core device, which is an AWS IoT thing.
%%
%% This operation removes the core device from the list of core devices. This
%% operation doesn't delete the AWS IoT thing. For more information about how
%% to delete the AWS IoT thing, see DeleteThing in the AWS IoT API Reference.
delete_core_device(Client, CoreDeviceThingName, Input) ->
    delete_core_device(Client, CoreDeviceThingName, Input, []).
delete_core_device(Client, CoreDeviceThingName, Input0, Options0) ->
    Method = delete,
    Path = ["/greengrass/v2/coreDevices/", aws_util:encode_uri(CoreDeviceThingName), ""],
    SuccessStatusCode = 204,
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

%% @doc Retrieves metadata for a version of a component.
describe_component(Client, Arn)
  when is_map(Client) ->
    describe_component(Client, Arn, #{}, #{}).

describe_component(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_component(Client, Arn, QueryMap, HeadersMap, []).

describe_component(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/v2/components/", aws_util:encode_uri(Arn), "/metadata"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the recipe for a version of a component.
%%
%% Core devices can call this operation to identify the artifacts and
%% requirements to install a component.
get_component(Client, Arn)
  when is_map(Client) ->
    get_component(Client, Arn, #{}, #{}).

get_component(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_component(Client, Arn, QueryMap, HeadersMap, []).

get_component(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/v2/components/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"recipeOutputFormat">>, maps:get(<<"recipeOutputFormat">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the pre-signed URL to download a public component artifact.
%%
%% Core devices call this operation to identify the URL that they can use to
%% download an artifact to install.
get_component_version_artifact(Client, Arn, ArtifactName)
  when is_map(Client) ->
    get_component_version_artifact(Client, Arn, ArtifactName, #{}, #{}).

get_component_version_artifact(Client, Arn, ArtifactName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_component_version_artifact(Client, Arn, ArtifactName, QueryMap, HeadersMap, []).

get_component_version_artifact(Client, Arn, ArtifactName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/v2/components/", aws_util:encode_uri(Arn), "/artifacts/", aws_util:encode_multi_segment_uri(ArtifactName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves metadata for a AWS IoT Greengrass core device.
get_core_device(Client, CoreDeviceThingName)
  when is_map(Client) ->
    get_core_device(Client, CoreDeviceThingName, #{}, #{}).

get_core_device(Client, CoreDeviceThingName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_core_device(Client, CoreDeviceThingName, QueryMap, HeadersMap, []).

get_core_device(Client, CoreDeviceThingName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/v2/coreDevices/", aws_util:encode_uri(CoreDeviceThingName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a deployment.
%%
%% Deployments define the components that run on AWS IoT Greengrass core
%% devices.
get_deployment(Client, DeploymentId)
  when is_map(Client) ->
    get_deployment(Client, DeploymentId, #{}, #{}).

get_deployment(Client, DeploymentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_deployment(Client, DeploymentId, QueryMap, HeadersMap, []).

get_deployment(Client, DeploymentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/v2/deployments/", aws_util:encode_uri(DeploymentId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of all versions for a component.
list_component_versions(Client, Arn)
  when is_map(Client) ->
    list_component_versions(Client, Arn, #{}, #{}).

list_component_versions(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_component_versions(Client, Arn, QueryMap, HeadersMap, []).

list_component_versions(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/v2/components/", aws_util:encode_uri(Arn), "/versions"],
    SuccessStatusCode = undefined,
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

%% @doc Retrieves a paginated list of component summaries.
%%
%% This list includes components that you have permission to view.
list_components(Client)
  when is_map(Client) ->
    list_components(Client, #{}, #{}).

list_components(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_components(Client, QueryMap, HeadersMap, []).

list_components(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/v2/components"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"scope">>, maps:get(<<"scope">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of AWS IoT Greengrass core devices.
list_core_devices(Client)
  when is_map(Client) ->
    list_core_devices(Client, #{}, #{}).

list_core_devices(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_core_devices(Client, QueryMap, HeadersMap, []).

list_core_devices(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/v2/coreDevices"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)},
        {<<"thingGroupArn">>, maps:get(<<"thingGroupArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of deployments.
list_deployments(Client)
  when is_map(Client) ->
    list_deployments(Client, #{}, #{}).

list_deployments(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_deployments(Client, QueryMap, HeadersMap, []).

list_deployments(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/v2/deployments"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"historyFilter">>, maps:get(<<"historyFilter">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"targetArn">>, maps:get(<<"targetArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of deployment jobs that AWS IoT Greengrass
%% sends to AWS IoT Greengrass core devices.
list_effective_deployments(Client, CoreDeviceThingName)
  when is_map(Client) ->
    list_effective_deployments(Client, CoreDeviceThingName, #{}, #{}).

list_effective_deployments(Client, CoreDeviceThingName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_effective_deployments(Client, CoreDeviceThingName, QueryMap, HeadersMap, []).

list_effective_deployments(Client, CoreDeviceThingName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/v2/coreDevices/", aws_util:encode_uri(CoreDeviceThingName), "/effectiveDeployments"],
    SuccessStatusCode = undefined,
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

%% @doc Retrieves a paginated list of the components that a AWS IoT
%% Greengrass core device runs.
list_installed_components(Client, CoreDeviceThingName)
  when is_map(Client) ->
    list_installed_components(Client, CoreDeviceThingName, #{}, #{}).

list_installed_components(Client, CoreDeviceThingName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_installed_components(Client, CoreDeviceThingName, QueryMap, HeadersMap, []).

list_installed_components(Client, CoreDeviceThingName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/v2/coreDevices/", aws_util:encode_uri(CoreDeviceThingName), "/installedComponents"],
    SuccessStatusCode = undefined,
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

%% @doc Retrieves the list of tags for an AWS IoT Greengrass resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of components that meet the component, version, and
%% platform requirements of a deployment.
%%
%% AWS IoT Greengrass core devices call this operation when they receive a
%% deployment to identify the components to install.
%%
%% This operation identifies components that meet all dependency requirements
%% for a deployment. If the requirements conflict, then this operation
%% returns an error and the deployment fails. For example, this occurs if
%% component `A' requires version `>2.0.0' and component `B' requires version
%% `<2.0.0' of a component dependency.
%%
%% When you specify the component candidates to resolve, AWS IoT Greengrass
%% compares each component's digest from the core device with the component's
%% digest in the AWS Cloud. If the digests don't match, then AWS IoT
%% Greengrass specifies to use the version from the AWS Cloud.
%%
%% To use this operation, you must use the data plane API endpoint and
%% authenticate with an AWS IoT device certificate. For more information, see
%% AWS IoT Greengrass endpoints and quotas.
resolve_component_candidates(Client, Input) ->
    resolve_component_candidates(Client, Input, []).
resolve_component_candidates(Client, Input0, Options0) ->
    Method = post,
    Path = ["/greengrass/v2/resolveComponentCandidates"],
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

%% @doc Adds tags to an AWS IoT Greengrass resource.
%%
%% If a tag already exists for the resource, this operation updates the tag's
%% value.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes a tag from an AWS IoT Greengrass resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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
    Client1 = Client#{service => <<"greengrass">>},
    Host = build_host(<<"greengrass">>, Client1),
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

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
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
