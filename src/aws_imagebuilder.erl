%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc EC2 Image Builder is a fully managed AWS service that makes it easier
%% to automate the creation, management, and deployment of customized,
%% secure, and up-to-date “golden” server images that are pre-installed and
%% pre-configured with software and settings to meet specific IT standards.
-module(aws_imagebuilder).

-export([cancel_image_creation/2,
         cancel_image_creation/3,
         create_component/2,
         create_component/3,
         create_distribution_configuration/2,
         create_distribution_configuration/3,
         create_image/2,
         create_image/3,
         create_image_pipeline/2,
         create_image_pipeline/3,
         create_image_recipe/2,
         create_image_recipe/3,
         create_infrastructure_configuration/2,
         create_infrastructure_configuration/3,
         delete_component/2,
         delete_component/3,
         delete_distribution_configuration/2,
         delete_distribution_configuration/3,
         delete_image/2,
         delete_image/3,
         delete_image_pipeline/2,
         delete_image_pipeline/3,
         delete_image_recipe/2,
         delete_image_recipe/3,
         delete_infrastructure_configuration/2,
         delete_infrastructure_configuration/3,
         get_component/2,
         get_component/3,
         get_component_policy/2,
         get_component_policy/3,
         get_distribution_configuration/2,
         get_distribution_configuration/3,
         get_image/2,
         get_image/3,
         get_image_pipeline/2,
         get_image_pipeline/3,
         get_image_policy/2,
         get_image_policy/3,
         get_image_recipe/2,
         get_image_recipe/3,
         get_image_recipe_policy/2,
         get_image_recipe_policy/3,
         get_infrastructure_configuration/2,
         get_infrastructure_configuration/3,
         import_component/2,
         import_component/3,
         list_component_build_versions/2,
         list_component_build_versions/3,
         list_components/2,
         list_components/3,
         list_distribution_configurations/2,
         list_distribution_configurations/3,
         list_image_build_versions/2,
         list_image_build_versions/3,
         list_image_pipeline_images/2,
         list_image_pipeline_images/3,
         list_image_pipelines/2,
         list_image_pipelines/3,
         list_image_recipes/2,
         list_image_recipes/3,
         list_images/2,
         list_images/3,
         list_infrastructure_configurations/2,
         list_infrastructure_configurations/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_component_policy/2,
         put_component_policy/3,
         put_image_policy/2,
         put_image_policy/3,
         put_image_recipe_policy/2,
         put_image_recipe_policy/3,
         start_image_pipeline_execution/2,
         start_image_pipeline_execution/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_distribution_configuration/2,
         update_distribution_configuration/3,
         update_image_pipeline/2,
         update_image_pipeline/3,
         update_infrastructure_configuration/2,
         update_infrastructure_configuration/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc CancelImageCreation cancels the creation of Image.
%%
%% This operation can only be used on images in a non-terminal state.
cancel_image_creation(Client, Input) ->
    cancel_image_creation(Client, Input, []).
cancel_image_creation(Client, Input0, Options) ->
    Method = put,
    Path = ["/CancelImageCreation"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new component that can be used to build, validate, test,
%% and assess your image.
create_component(Client, Input) ->
    create_component(Client, Input, []).
create_component(Client, Input0, Options) ->
    Method = put,
    Path = ["/CreateComponent"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new distribution configuration.
%%
%% Distribution configurations define and configure the outputs of your
%% pipeline.
create_distribution_configuration(Client, Input) ->
    create_distribution_configuration(Client, Input, []).
create_distribution_configuration(Client, Input0, Options) ->
    Method = put,
    Path = ["/CreateDistributionConfiguration"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new image.
%%
%% This request will create a new image along with all of the configured
%% output resources defined in the distribution configuration.
create_image(Client, Input) ->
    create_image(Client, Input, []).
create_image(Client, Input0, Options) ->
    Method = put,
    Path = ["/CreateImage"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new image pipeline.
%%
%% Image pipelines enable you to automate the creation and distribution of
%% images.
create_image_pipeline(Client, Input) ->
    create_image_pipeline(Client, Input, []).
create_image_pipeline(Client, Input0, Options) ->
    Method = put,
    Path = ["/CreateImagePipeline"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new image recipe.
%%
%% Image recipes define how images are configured, tested, and assessed.
create_image_recipe(Client, Input) ->
    create_image_recipe(Client, Input, []).
create_image_recipe(Client, Input0, Options) ->
    Method = put,
    Path = ["/CreateImageRecipe"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new infrastructure configuration.
%%
%% An infrastructure configuration defines the environment in which your
%% image will be built and tested.
create_infrastructure_configuration(Client, Input) ->
    create_infrastructure_configuration(Client, Input, []).
create_infrastructure_configuration(Client, Input0, Options) ->
    Method = put,
    Path = ["/CreateInfrastructureConfiguration"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a component build version.
delete_component(Client, Input) ->
    delete_component(Client, Input, []).
delete_component(Client, Input0, Options) ->
    Method = delete,
    Path = ["/DeleteComponent"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"componentBuildVersionArn">>, <<"componentBuildVersionArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a distribution configuration.
delete_distribution_configuration(Client, Input) ->
    delete_distribution_configuration(Client, Input, []).
delete_distribution_configuration(Client, Input0, Options) ->
    Method = delete,
    Path = ["/DeleteDistributionConfiguration"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"distributionConfigurationArn">>, <<"distributionConfigurationArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an image.
delete_image(Client, Input) ->
    delete_image(Client, Input, []).
delete_image(Client, Input0, Options) ->
    Method = delete,
    Path = ["/DeleteImage"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"imageBuildVersionArn">>, <<"imageBuildVersionArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an image pipeline.
delete_image_pipeline(Client, Input) ->
    delete_image_pipeline(Client, Input, []).
delete_image_pipeline(Client, Input0, Options) ->
    Method = delete,
    Path = ["/DeleteImagePipeline"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"imagePipelineArn">>, <<"imagePipelineArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an image recipe.
delete_image_recipe(Client, Input) ->
    delete_image_recipe(Client, Input, []).
delete_image_recipe(Client, Input0, Options) ->
    Method = delete,
    Path = ["/DeleteImageRecipe"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"imageRecipeArn">>, <<"imageRecipeArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an infrastructure configuration.
delete_infrastructure_configuration(Client, Input) ->
    delete_infrastructure_configuration(Client, Input, []).
delete_infrastructure_configuration(Client, Input0, Options) ->
    Method = delete,
    Path = ["/DeleteInfrastructureConfiguration"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"infrastructureConfigurationArn">>, <<"infrastructureConfigurationArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a component object.
get_component(Client, ComponentBuildVersionArn)
  when is_map(Client) ->
    get_component(Client, ComponentBuildVersionArn, []).
get_component(Client, ComponentBuildVersionArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/GetComponent"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"componentBuildVersionArn">>, ComponentBuildVersionArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a component policy.
get_component_policy(Client, ComponentArn)
  when is_map(Client) ->
    get_component_policy(Client, ComponentArn, []).
get_component_policy(Client, ComponentArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/GetComponentPolicy"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"componentArn">>, ComponentArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a distribution configuration.
get_distribution_configuration(Client, DistributionConfigurationArn)
  when is_map(Client) ->
    get_distribution_configuration(Client, DistributionConfigurationArn, []).
get_distribution_configuration(Client, DistributionConfigurationArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/GetDistributionConfiguration"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"distributionConfigurationArn">>, DistributionConfigurationArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an image.
get_image(Client, ImageBuildVersionArn)
  when is_map(Client) ->
    get_image(Client, ImageBuildVersionArn, []).
get_image(Client, ImageBuildVersionArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/GetImage"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"imageBuildVersionArn">>, ImageBuildVersionArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an image pipeline.
get_image_pipeline(Client, ImagePipelineArn)
  when is_map(Client) ->
    get_image_pipeline(Client, ImagePipelineArn, []).
get_image_pipeline(Client, ImagePipelineArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/GetImagePipeline"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"imagePipelineArn">>, ImagePipelineArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an image policy.
get_image_policy(Client, ImageArn)
  when is_map(Client) ->
    get_image_policy(Client, ImageArn, []).
get_image_policy(Client, ImageArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/GetImagePolicy"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"imageArn">>, ImageArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an image recipe.
get_image_recipe(Client, ImageRecipeArn)
  when is_map(Client) ->
    get_image_recipe(Client, ImageRecipeArn, []).
get_image_recipe(Client, ImageRecipeArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/GetImageRecipe"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"imageRecipeArn">>, ImageRecipeArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an image recipe policy.
get_image_recipe_policy(Client, ImageRecipeArn)
  when is_map(Client) ->
    get_image_recipe_policy(Client, ImageRecipeArn, []).
get_image_recipe_policy(Client, ImageRecipeArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/GetImageRecipePolicy"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"imageRecipeArn">>, ImageRecipeArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an infrastructure configuration.
get_infrastructure_configuration(Client, InfrastructureConfigurationArn)
  when is_map(Client) ->
    get_infrastructure_configuration(Client, InfrastructureConfigurationArn, []).
get_infrastructure_configuration(Client, InfrastructureConfigurationArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/GetInfrastructureConfiguration"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"infrastructureConfigurationArn">>, InfrastructureConfigurationArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Imports a component and transforms its data into a component
%% document.
import_component(Client, Input) ->
    import_component(Client, Input, []).
import_component(Client, Input0, Options) ->
    Method = put,
    Path = ["/ImportComponent"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the list of component build versions for the specified
%% semantic version.
list_component_build_versions(Client, Input) ->
    list_component_build_versions(Client, Input, []).
list_component_build_versions(Client, Input0, Options) ->
    Method = post,
    Path = ["/ListComponentBuildVersions"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the list of component build versions for the specified
%% semantic version.
list_components(Client, Input) ->
    list_components(Client, Input, []).
list_components(Client, Input0, Options) ->
    Method = post,
    Path = ["/ListComponents"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of distribution configurations.
list_distribution_configurations(Client, Input) ->
    list_distribution_configurations(Client, Input, []).
list_distribution_configurations(Client, Input0, Options) ->
    Method = post,
    Path = ["/ListDistributionConfigurations"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of image build versions.
list_image_build_versions(Client, Input) ->
    list_image_build_versions(Client, Input, []).
list_image_build_versions(Client, Input0, Options) ->
    Method = post,
    Path = ["/ListImageBuildVersions"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of images created by the specified pipeline.
list_image_pipeline_images(Client, Input) ->
    list_image_pipeline_images(Client, Input, []).
list_image_pipeline_images(Client, Input0, Options) ->
    Method = post,
    Path = ["/ListImagePipelineImages"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of image pipelines.
list_image_pipelines(Client, Input) ->
    list_image_pipelines(Client, Input, []).
list_image_pipelines(Client, Input0, Options) ->
    Method = post,
    Path = ["/ListImagePipelines"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of image recipes.
list_image_recipes(Client, Input) ->
    list_image_recipes(Client, Input, []).
list_image_recipes(Client, Input0, Options) ->
    Method = post,
    Path = ["/ListImageRecipes"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the list of images that you have access to.
list_images(Client, Input) ->
    list_images(Client, Input, []).
list_images(Client, Input0, Options) ->
    Method = post,
    Path = ["/ListImages"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of infrastructure configurations.
list_infrastructure_configurations(Client, Input) ->
    list_infrastructure_configurations(Client, Input, []).
list_infrastructure_configurations(Client, Input0, Options) ->
    Method = post,
    Path = ["/ListInfrastructureConfigurations"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the list of tags for the specified resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, []).
list_tags_for_resource(Client, ResourceArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Applies a policy to a component.
%%
%% We recommend that you call the RAM API CreateResourceShare to share
%% resources. If you call the Image Builder API `PutComponentPolicy', you
%% must also call the RAM API PromoteResourceShareCreatedFromPolicy in order
%% for the resource to be visible to all principals with whom the resource is
%% shared.
put_component_policy(Client, Input) ->
    put_component_policy(Client, Input, []).
put_component_policy(Client, Input0, Options) ->
    Method = put,
    Path = ["/PutComponentPolicy"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Applies a policy to an image.
%%
%% We recommend that you call the RAM API CreateResourceShare to share
%% resources. If you call the Image Builder API `PutImagePolicy', you must
%% also call the RAM API PromoteResourceShareCreatedFromPolicy in order for
%% the resource to be visible to all principals with whom the resource is
%% shared.
put_image_policy(Client, Input) ->
    put_image_policy(Client, Input, []).
put_image_policy(Client, Input0, Options) ->
    Method = put,
    Path = ["/PutImagePolicy"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Applies a policy to an image recipe.
%%
%% We recommend that you call the RAM API CreateResourceShare to share
%% resources. If you call the Image Builder API `PutImageRecipePolicy', you
%% must also call the RAM API PromoteResourceShareCreatedFromPolicy in order
%% for the resource to be visible to all principals with whom the resource is
%% shared.
put_image_recipe_policy(Client, Input) ->
    put_image_recipe_policy(Client, Input, []).
put_image_recipe_policy(Client, Input0, Options) ->
    Method = put,
    Path = ["/PutImageRecipePolicy"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Manually triggers a pipeline to create an image.
start_image_pipeline_execution(Client, Input) ->
    start_image_pipeline_execution(Client, Input, []).
start_image_pipeline_execution(Client, Input0, Options) ->
    Method = put,
    Path = ["/StartImagePipelineExecution"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds a tag to a resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a tag from a resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a new distribution configuration.
%%
%% Distribution configurations define and configure the outputs of your
%% pipeline.
update_distribution_configuration(Client, Input) ->
    update_distribution_configuration(Client, Input, []).
update_distribution_configuration(Client, Input0, Options) ->
    Method = put,
    Path = ["/UpdateDistributionConfiguration"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a new image pipeline.
%%
%% Image pipelines enable you to automate the creation and distribution of
%% images.
update_image_pipeline(Client, Input) ->
    update_image_pipeline(Client, Input, []).
update_image_pipeline(Client, Input0, Options) ->
    Method = put,
    Path = ["/UpdateImagePipeline"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a new infrastructure configuration.
%%
%% An infrastructure configuration defines the environment in which your
%% image will be built and tested.
update_infrastructure_configuration(Client, Input) ->
    update_infrastructure_configuration(Client, Input, []).
update_infrastructure_configuration(Client, Input0, Options) ->
    Method = put,
    Path = ["/UpdateInfrastructureConfiguration"],
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
    Client1 = Client#{service => <<"imagebuilder">>},
    Host = build_host(<<"imagebuilder">>, Client1),
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
