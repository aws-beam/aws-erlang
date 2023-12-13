%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc EC2 Image Builder is a fully managed Amazon Web Services service that
%% makes it easier to automate the creation, management, and deployment of
%% customized, secure, and up-to-date &quot;golden&quot; server images that
%% are pre-installed and pre-configured with software and settings to meet
%% specific IT standards.
-module(aws_imagebuilder).

-export([cancel_image_creation/2,
         cancel_image_creation/3,
         cancel_lifecycle_execution/2,
         cancel_lifecycle_execution/3,
         create_component/2,
         create_component/3,
         create_container_recipe/2,
         create_container_recipe/3,
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
         create_lifecycle_policy/2,
         create_lifecycle_policy/3,
         create_workflow/2,
         create_workflow/3,
         delete_component/2,
         delete_component/3,
         delete_container_recipe/2,
         delete_container_recipe/3,
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
         delete_lifecycle_policy/2,
         delete_lifecycle_policy/3,
         delete_workflow/2,
         delete_workflow/3,
         get_component/2,
         get_component/4,
         get_component/5,
         get_component_policy/2,
         get_component_policy/4,
         get_component_policy/5,
         get_container_recipe/2,
         get_container_recipe/4,
         get_container_recipe/5,
         get_container_recipe_policy/2,
         get_container_recipe_policy/4,
         get_container_recipe_policy/5,
         get_distribution_configuration/2,
         get_distribution_configuration/4,
         get_distribution_configuration/5,
         get_image/2,
         get_image/4,
         get_image/5,
         get_image_pipeline/2,
         get_image_pipeline/4,
         get_image_pipeline/5,
         get_image_policy/2,
         get_image_policy/4,
         get_image_policy/5,
         get_image_recipe/2,
         get_image_recipe/4,
         get_image_recipe/5,
         get_image_recipe_policy/2,
         get_image_recipe_policy/4,
         get_image_recipe_policy/5,
         get_infrastructure_configuration/2,
         get_infrastructure_configuration/4,
         get_infrastructure_configuration/5,
         get_lifecycle_execution/2,
         get_lifecycle_execution/4,
         get_lifecycle_execution/5,
         get_lifecycle_policy/2,
         get_lifecycle_policy/4,
         get_lifecycle_policy/5,
         get_workflow/2,
         get_workflow/4,
         get_workflow/5,
         get_workflow_execution/2,
         get_workflow_execution/4,
         get_workflow_execution/5,
         get_workflow_step_execution/2,
         get_workflow_step_execution/4,
         get_workflow_step_execution/5,
         import_component/2,
         import_component/3,
         import_vm_image/2,
         import_vm_image/3,
         list_component_build_versions/2,
         list_component_build_versions/3,
         list_components/2,
         list_components/3,
         list_container_recipes/2,
         list_container_recipes/3,
         list_distribution_configurations/2,
         list_distribution_configurations/3,
         list_image_build_versions/2,
         list_image_build_versions/3,
         list_image_packages/2,
         list_image_packages/3,
         list_image_pipeline_images/2,
         list_image_pipeline_images/3,
         list_image_pipelines/2,
         list_image_pipelines/3,
         list_image_recipes/2,
         list_image_recipes/3,
         list_image_scan_finding_aggregations/2,
         list_image_scan_finding_aggregations/3,
         list_image_scan_findings/2,
         list_image_scan_findings/3,
         list_images/2,
         list_images/3,
         list_infrastructure_configurations/2,
         list_infrastructure_configurations/3,
         list_lifecycle_execution_resources/2,
         list_lifecycle_execution_resources/3,
         list_lifecycle_executions/2,
         list_lifecycle_executions/3,
         list_lifecycle_policies/2,
         list_lifecycle_policies/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_waiting_workflow_steps/2,
         list_waiting_workflow_steps/3,
         list_workflow_build_versions/2,
         list_workflow_build_versions/3,
         list_workflow_executions/2,
         list_workflow_executions/3,
         list_workflow_step_executions/2,
         list_workflow_step_executions/3,
         list_workflows/2,
         list_workflows/3,
         put_component_policy/2,
         put_component_policy/3,
         put_container_recipe_policy/2,
         put_container_recipe_policy/3,
         put_image_policy/2,
         put_image_policy/3,
         put_image_recipe_policy/2,
         put_image_recipe_policy/3,
         send_workflow_step_action/2,
         send_workflow_step_action/3,
         start_image_pipeline_execution/2,
         start_image_pipeline_execution/3,
         start_resource_state_update/2,
         start_resource_state_update/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_distribution_configuration/2,
         update_distribution_configuration/3,
         update_image_pipeline/2,
         update_image_pipeline/3,
         update_infrastructure_configuration/2,
         update_infrastructure_configuration/3,
         update_lifecycle_policy/2,
         update_lifecycle_policy/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc CancelImageCreation cancels the creation of Image.
%%
%% This operation can only be used on images in a non-terminal state.
cancel_image_creation(Client, Input) ->
    cancel_image_creation(Client, Input, []).
cancel_image_creation(Client, Input0, Options0) ->
    Method = put,
    Path = ["/CancelImageCreation"],
    SuccessStatusCode = undefined,
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

%% @doc Cancel a specific image lifecycle policy runtime instance.
cancel_lifecycle_execution(Client, Input) ->
    cancel_lifecycle_execution(Client, Input, []).
cancel_lifecycle_execution(Client, Input0, Options0) ->
    Method = put,
    Path = ["/CancelLifecycleExecution"],
    SuccessStatusCode = undefined,
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

%% @doc Creates a new component that can be used to build, validate, test,
%% and assess your image.
%%
%% The component is based on a YAML document that you specify using exactly
%% one of the following methods:
%%
%% <ul> <li> Inline, using the `data' property in the request body.
%%
%% </li> <li> A URL that points to a YAML document file stored in Amazon S3,
%% using the `uri' property in the request body.
%%
%% </li> </ul>
create_component(Client, Input) ->
    create_component(Client, Input, []).
create_component(Client, Input0, Options0) ->
    Method = put,
    Path = ["/CreateComponent"],
    SuccessStatusCode = undefined,
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

%% @doc Creates a new container recipe.
%%
%% Container recipes define how images are configured, tested, and assessed.
create_container_recipe(Client, Input) ->
    create_container_recipe(Client, Input, []).
create_container_recipe(Client, Input0, Options0) ->
    Method = put,
    Path = ["/CreateContainerRecipe"],
    SuccessStatusCode = undefined,
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

%% @doc Creates a new distribution configuration.
%%
%% Distribution configurations define and configure the outputs of your
%% pipeline.
create_distribution_configuration(Client, Input) ->
    create_distribution_configuration(Client, Input, []).
create_distribution_configuration(Client, Input0, Options0) ->
    Method = put,
    Path = ["/CreateDistributionConfiguration"],
    SuccessStatusCode = undefined,
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

%% @doc Creates a new image.
%%
%% This request will create a new image along with all of the configured
%% output resources defined in the distribution configuration. You must
%% specify exactly one recipe for your image, using either a
%% ContainerRecipeArn or an ImageRecipeArn.
create_image(Client, Input) ->
    create_image(Client, Input, []).
create_image(Client, Input0, Options0) ->
    Method = put,
    Path = ["/CreateImage"],
    SuccessStatusCode = undefined,
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

%% @doc Creates a new image pipeline.
%%
%% Image pipelines enable you to automate the creation and distribution of
%% images.
create_image_pipeline(Client, Input) ->
    create_image_pipeline(Client, Input, []).
create_image_pipeline(Client, Input0, Options0) ->
    Method = put,
    Path = ["/CreateImagePipeline"],
    SuccessStatusCode = undefined,
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

%% @doc Creates a new image recipe.
%%
%% Image recipes define how images are configured, tested, and assessed.
create_image_recipe(Client, Input) ->
    create_image_recipe(Client, Input, []).
create_image_recipe(Client, Input0, Options0) ->
    Method = put,
    Path = ["/CreateImageRecipe"],
    SuccessStatusCode = undefined,
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

%% @doc Creates a new infrastructure configuration.
%%
%% An infrastructure configuration defines the environment in which your
%% image will be built and tested.
create_infrastructure_configuration(Client, Input) ->
    create_infrastructure_configuration(Client, Input, []).
create_infrastructure_configuration(Client, Input0, Options0) ->
    Method = put,
    Path = ["/CreateInfrastructureConfiguration"],
    SuccessStatusCode = undefined,
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

%% @doc Create a lifecycle policy resource.
create_lifecycle_policy(Client, Input) ->
    create_lifecycle_policy(Client, Input, []).
create_lifecycle_policy(Client, Input0, Options0) ->
    Method = put,
    Path = ["/CreateLifecyclePolicy"],
    SuccessStatusCode = undefined,
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

%% @doc Create a new workflow or a new version of an existing workflow.
create_workflow(Client, Input) ->
    create_workflow(Client, Input, []).
create_workflow(Client, Input0, Options0) ->
    Method = put,
    Path = ["/CreateWorkflow"],
    SuccessStatusCode = undefined,
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

%% @doc Deletes a component build version.
delete_component(Client, Input) ->
    delete_component(Client, Input, []).
delete_component(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/DeleteComponent"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"componentBuildVersionArn">>, <<"componentBuildVersionArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a container recipe.
delete_container_recipe(Client, Input) ->
    delete_container_recipe(Client, Input, []).
delete_container_recipe(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/DeleteContainerRecipe"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"containerRecipeArn">>, <<"containerRecipeArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a distribution configuration.
delete_distribution_configuration(Client, Input) ->
    delete_distribution_configuration(Client, Input, []).
delete_distribution_configuration(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/DeleteDistributionConfiguration"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"distributionConfigurationArn">>, <<"distributionConfigurationArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an Image Builder image resource.
%%
%% This does not delete any EC2 AMIs or ECR container images that are created
%% during the image build process. You must clean those up separately, using
%% the appropriate Amazon EC2 or Amazon ECR console actions, or API or CLI
%% commands.
%%
%% <ul> <li> To deregister an EC2 Linux AMI, see Deregister your Linux AMI in
%% the Amazon EC2 User Guide .
%%
%% </li> <li> To deregister an EC2 Windows AMI, see Deregister your Windows
%% AMI in the Amazon EC2 Windows Guide .
%%
%% </li> <li> To delete a container image from Amazon ECR, see Deleting an
%% image in the Amazon ECR User Guide.
%%
%% </li> </ul>
delete_image(Client, Input) ->
    delete_image(Client, Input, []).
delete_image(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/DeleteImage"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"imageBuildVersionArn">>, <<"imageBuildVersionArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an image pipeline.
delete_image_pipeline(Client, Input) ->
    delete_image_pipeline(Client, Input, []).
delete_image_pipeline(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/DeleteImagePipeline"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"imagePipelineArn">>, <<"imagePipelineArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an image recipe.
delete_image_recipe(Client, Input) ->
    delete_image_recipe(Client, Input, []).
delete_image_recipe(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/DeleteImageRecipe"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"imageRecipeArn">>, <<"imageRecipeArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an infrastructure configuration.
delete_infrastructure_configuration(Client, Input) ->
    delete_infrastructure_configuration(Client, Input, []).
delete_infrastructure_configuration(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/DeleteInfrastructureConfiguration"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"infrastructureConfigurationArn">>, <<"infrastructureConfigurationArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete the specified lifecycle policy resource.
delete_lifecycle_policy(Client, Input) ->
    delete_lifecycle_policy(Client, Input, []).
delete_lifecycle_policy(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/DeleteLifecyclePolicy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"lifecyclePolicyArn">>, <<"lifecyclePolicyArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a specific workflow resource.
delete_workflow(Client, Input) ->
    delete_workflow(Client, Input, []).
delete_workflow(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/DeleteWorkflow"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"workflowBuildVersionArn">>, <<"workflowBuildVersionArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a component object.
get_component(Client, ComponentBuildVersionArn)
  when is_map(Client) ->
    get_component(Client, ComponentBuildVersionArn, #{}, #{}).

get_component(Client, ComponentBuildVersionArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_component(Client, ComponentBuildVersionArn, QueryMap, HeadersMap, []).

get_component(Client, ComponentBuildVersionArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetComponent"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    get_component_policy(Client, ComponentArn, #{}, #{}).

get_component_policy(Client, ComponentArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_component_policy(Client, ComponentArn, QueryMap, HeadersMap, []).

get_component_policy(Client, ComponentArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetComponentPolicy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"componentArn">>, ComponentArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a container recipe.
get_container_recipe(Client, ContainerRecipeArn)
  when is_map(Client) ->
    get_container_recipe(Client, ContainerRecipeArn, #{}, #{}).

get_container_recipe(Client, ContainerRecipeArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_container_recipe(Client, ContainerRecipeArn, QueryMap, HeadersMap, []).

get_container_recipe(Client, ContainerRecipeArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetContainerRecipe"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"containerRecipeArn">>, ContainerRecipeArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the policy for a container recipe.
get_container_recipe_policy(Client, ContainerRecipeArn)
  when is_map(Client) ->
    get_container_recipe_policy(Client, ContainerRecipeArn, #{}, #{}).

get_container_recipe_policy(Client, ContainerRecipeArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_container_recipe_policy(Client, ContainerRecipeArn, QueryMap, HeadersMap, []).

get_container_recipe_policy(Client, ContainerRecipeArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetContainerRecipePolicy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"containerRecipeArn">>, ContainerRecipeArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a distribution configuration.
get_distribution_configuration(Client, DistributionConfigurationArn)
  when is_map(Client) ->
    get_distribution_configuration(Client, DistributionConfigurationArn, #{}, #{}).

get_distribution_configuration(Client, DistributionConfigurationArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_distribution_configuration(Client, DistributionConfigurationArn, QueryMap, HeadersMap, []).

get_distribution_configuration(Client, DistributionConfigurationArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetDistributionConfiguration"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    get_image(Client, ImageBuildVersionArn, #{}, #{}).

get_image(Client, ImageBuildVersionArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_image(Client, ImageBuildVersionArn, QueryMap, HeadersMap, []).

get_image(Client, ImageBuildVersionArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetImage"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    get_image_pipeline(Client, ImagePipelineArn, #{}, #{}).

get_image_pipeline(Client, ImagePipelineArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_image_pipeline(Client, ImagePipelineArn, QueryMap, HeadersMap, []).

get_image_pipeline(Client, ImagePipelineArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetImagePipeline"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    get_image_policy(Client, ImageArn, #{}, #{}).

get_image_policy(Client, ImageArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_image_policy(Client, ImageArn, QueryMap, HeadersMap, []).

get_image_policy(Client, ImageArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetImagePolicy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    get_image_recipe(Client, ImageRecipeArn, #{}, #{}).

get_image_recipe(Client, ImageRecipeArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_image_recipe(Client, ImageRecipeArn, QueryMap, HeadersMap, []).

get_image_recipe(Client, ImageRecipeArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetImageRecipe"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    get_image_recipe_policy(Client, ImageRecipeArn, #{}, #{}).

get_image_recipe_policy(Client, ImageRecipeArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_image_recipe_policy(Client, ImageRecipeArn, QueryMap, HeadersMap, []).

get_image_recipe_policy(Client, ImageRecipeArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetImageRecipePolicy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    get_infrastructure_configuration(Client, InfrastructureConfigurationArn, #{}, #{}).

get_infrastructure_configuration(Client, InfrastructureConfigurationArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_infrastructure_configuration(Client, InfrastructureConfigurationArn, QueryMap, HeadersMap, []).

get_infrastructure_configuration(Client, InfrastructureConfigurationArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetInfrastructureConfiguration"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"infrastructureConfigurationArn">>, InfrastructureConfigurationArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the runtime information that was logged for a specific runtime
%% instance of the lifecycle policy.
get_lifecycle_execution(Client, LifecycleExecutionId)
  when is_map(Client) ->
    get_lifecycle_execution(Client, LifecycleExecutionId, #{}, #{}).

get_lifecycle_execution(Client, LifecycleExecutionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_lifecycle_execution(Client, LifecycleExecutionId, QueryMap, HeadersMap, []).

get_lifecycle_execution(Client, LifecycleExecutionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetLifecycleExecution"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"lifecycleExecutionId">>, LifecycleExecutionId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get details for the specified image lifecycle policy.
get_lifecycle_policy(Client, LifecyclePolicyArn)
  when is_map(Client) ->
    get_lifecycle_policy(Client, LifecyclePolicyArn, #{}, #{}).

get_lifecycle_policy(Client, LifecyclePolicyArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_lifecycle_policy(Client, LifecyclePolicyArn, QueryMap, HeadersMap, []).

get_lifecycle_policy(Client, LifecyclePolicyArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetLifecyclePolicy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"lifecyclePolicyArn">>, LifecyclePolicyArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a workflow resource object.
get_workflow(Client, WorkflowBuildVersionArn)
  when is_map(Client) ->
    get_workflow(Client, WorkflowBuildVersionArn, #{}, #{}).

get_workflow(Client, WorkflowBuildVersionArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_workflow(Client, WorkflowBuildVersionArn, QueryMap, HeadersMap, []).

get_workflow(Client, WorkflowBuildVersionArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetWorkflow"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"workflowBuildVersionArn">>, WorkflowBuildVersionArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the runtime information that was logged for a specific runtime
%% instance of the workflow.
get_workflow_execution(Client, WorkflowExecutionId)
  when is_map(Client) ->
    get_workflow_execution(Client, WorkflowExecutionId, #{}, #{}).

get_workflow_execution(Client, WorkflowExecutionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_workflow_execution(Client, WorkflowExecutionId, QueryMap, HeadersMap, []).

get_workflow_execution(Client, WorkflowExecutionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetWorkflowExecution"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"workflowExecutionId">>, WorkflowExecutionId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the runtime information that was logged for a specific runtime
%% instance of the workflow step.
get_workflow_step_execution(Client, StepExecutionId)
  when is_map(Client) ->
    get_workflow_step_execution(Client, StepExecutionId, #{}, #{}).

get_workflow_step_execution(Client, StepExecutionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_workflow_step_execution(Client, StepExecutionId, QueryMap, HeadersMap, []).

get_workflow_step_execution(Client, StepExecutionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetWorkflowStepExecution"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"stepExecutionId">>, StepExecutionId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Imports a component and transforms its data into a component
%% document.
import_component(Client, Input) ->
    import_component(Client, Input, []).
import_component(Client, Input0, Options0) ->
    Method = put,
    Path = ["/ImportComponent"],
    SuccessStatusCode = undefined,
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

%% @doc When you export your virtual machine (VM) from its virtualization
%% environment, that process creates a set of one or more disk container
%% files that act as snapshots of your VM’s environment, settings, and data.
%%
%% The Amazon EC2 API ImportImage action uses those files to import your VM
%% and create an AMI. To import using the CLI command, see import-image
%%
%% You can reference the task ID from the VM import to pull in the AMI that
%% the import created as the base image for your Image Builder recipe.
import_vm_image(Client, Input) ->
    import_vm_image(Client, Input, []).
import_vm_image(Client, Input0, Options0) ->
    Method = put,
    Path = ["/ImportVmImage"],
    SuccessStatusCode = undefined,
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

%% @doc Returns the list of component build versions for the specified
%% semantic version.
%%
%% The semantic version has four nodes:
%% &lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;/&lt;build&gt;. You can assign
%% values for the first three, and can filter on all of them.
%%
%% Filtering: With semantic versioning, you have the flexibility to use
%% wildcards (x) to specify the most recent versions or nodes when selecting
%% the base image or components for your recipe. When you use a wildcard in
%% any node, all nodes to the right of the first wildcard must also be
%% wildcards.
list_component_build_versions(Client, Input) ->
    list_component_build_versions(Client, Input, []).
list_component_build_versions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListComponentBuildVersions"],
    SuccessStatusCode = undefined,
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

%% @doc Returns the list of components that can be filtered by name, or by
%% using the listed `filters' to streamline results.
%%
%% Newly created components can take up to two minutes to appear in the
%% ListComponents API Results.
%%
%% The semantic version has four nodes:
%% &lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;/&lt;build&gt;. You can assign
%% values for the first three, and can filter on all of them.
%%
%% Filtering: With semantic versioning, you have the flexibility to use
%% wildcards (x) to specify the most recent versions or nodes when selecting
%% the base image or components for your recipe. When you use a wildcard in
%% any node, all nodes to the right of the first wildcard must also be
%% wildcards.
list_components(Client, Input) ->
    list_components(Client, Input, []).
list_components(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListComponents"],
    SuccessStatusCode = undefined,
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

%% @doc Returns a list of container recipes.
list_container_recipes(Client, Input) ->
    list_container_recipes(Client, Input, []).
list_container_recipes(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListContainerRecipes"],
    SuccessStatusCode = undefined,
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

%% @doc Returns a list of distribution configurations.
list_distribution_configurations(Client, Input) ->
    list_distribution_configurations(Client, Input, []).
list_distribution_configurations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListDistributionConfigurations"],
    SuccessStatusCode = undefined,
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

%% @doc Returns a list of image build versions.
list_image_build_versions(Client, Input) ->
    list_image_build_versions(Client, Input, []).
list_image_build_versions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListImageBuildVersions"],
    SuccessStatusCode = undefined,
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

%% @doc List the Packages that are associated with an Image Build Version, as
%% determined by Amazon Web Services Systems Manager Inventory at build time.
list_image_packages(Client, Input) ->
    list_image_packages(Client, Input, []).
list_image_packages(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListImagePackages"],
    SuccessStatusCode = undefined,
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

%% @doc Returns a list of images created by the specified pipeline.
list_image_pipeline_images(Client, Input) ->
    list_image_pipeline_images(Client, Input, []).
list_image_pipeline_images(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListImagePipelineImages"],
    SuccessStatusCode = undefined,
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

%% @doc Returns a list of image pipelines.
list_image_pipelines(Client, Input) ->
    list_image_pipelines(Client, Input, []).
list_image_pipelines(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListImagePipelines"],
    SuccessStatusCode = undefined,
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

%% @doc Returns a list of image recipes.
list_image_recipes(Client, Input) ->
    list_image_recipes(Client, Input, []).
list_image_recipes(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListImageRecipes"],
    SuccessStatusCode = undefined,
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

%% @doc Returns a list of image scan aggregations for your account.
%%
%% You can filter by the type of key that Image Builder uses to group
%% results. For example, if you want to get a list of findings by severity
%% level for one of your pipelines, you might specify your pipeline with the
%% `imagePipelineArn' filter. If you don't specify a filter, Image
%% Builder returns an aggregation for your account.
%%
%% To streamline results, you can use the following filters in your request:
%%
%% <ul> <li> `accountId'
%%
%% </li> <li> `imageBuildVersionArn'
%%
%% </li> <li> `imagePipelineArn'
%%
%% </li> <li> `vulnerabilityId'
%%
%% </li> </ul>
list_image_scan_finding_aggregations(Client, Input) ->
    list_image_scan_finding_aggregations(Client, Input, []).
list_image_scan_finding_aggregations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListImageScanFindingAggregations"],
    SuccessStatusCode = undefined,
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

%% @doc Returns a list of image scan findings for your account.
list_image_scan_findings(Client, Input) ->
    list_image_scan_findings(Client, Input, []).
list_image_scan_findings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListImageScanFindings"],
    SuccessStatusCode = undefined,
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

%% @doc Returns the list of images that you have access to.
%%
%% Newly created images can take up to two minutes to appear in the
%% ListImages API Results.
list_images(Client, Input) ->
    list_images(Client, Input, []).
list_images(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListImages"],
    SuccessStatusCode = undefined,
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

%% @doc Returns a list of infrastructure configurations.
list_infrastructure_configurations(Client, Input) ->
    list_infrastructure_configurations(Client, Input, []).
list_infrastructure_configurations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListInfrastructureConfigurations"],
    SuccessStatusCode = undefined,
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

%% @doc List resources that the runtime instance of the image lifecycle
%% identified for lifecycle actions.
list_lifecycle_execution_resources(Client, Input) ->
    list_lifecycle_execution_resources(Client, Input, []).
list_lifecycle_execution_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListLifecycleExecutionResources"],
    SuccessStatusCode = undefined,
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

%% @doc Get the lifecycle runtime history for the specified resource.
list_lifecycle_executions(Client, Input) ->
    list_lifecycle_executions(Client, Input, []).
list_lifecycle_executions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListLifecycleExecutions"],
    SuccessStatusCode = undefined,
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

%% @doc Get a list of lifecycle policies in your Amazon Web Services account.
list_lifecycle_policies(Client, Input) ->
    list_lifecycle_policies(Client, Input, []).
list_lifecycle_policies(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListLifecyclePolicies"],
    SuccessStatusCode = undefined,
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

%% @doc Returns the list of tags for the specified resource.
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

%% @doc Get a list of workflow steps that are waiting for action for
%% workflows in your Amazon Web Services account.
list_waiting_workflow_steps(Client, Input) ->
    list_waiting_workflow_steps(Client, Input, []).
list_waiting_workflow_steps(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListWaitingWorkflowSteps"],
    SuccessStatusCode = undefined,
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

%% @doc Returns a list of build versions for a specific workflow resource.
list_workflow_build_versions(Client, Input) ->
    list_workflow_build_versions(Client, Input, []).
list_workflow_build_versions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListWorkflowBuildVersions"],
    SuccessStatusCode = undefined,
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

%% @doc Returns a list of workflow runtime instance metadata objects for a
%% specific image build version.
list_workflow_executions(Client, Input) ->
    list_workflow_executions(Client, Input, []).
list_workflow_executions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListWorkflowExecutions"],
    SuccessStatusCode = undefined,
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

%% @doc Returns runtime data for each step in a runtime instance of the
%% workflow that you specify in the request.
list_workflow_step_executions(Client, Input) ->
    list_workflow_step_executions(Client, Input, []).
list_workflow_step_executions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListWorkflowStepExecutions"],
    SuccessStatusCode = undefined,
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

%% @doc Lists workflow build versions based on filtering parameters.
list_workflows(Client, Input) ->
    list_workflows(Client, Input, []).
list_workflows(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListWorkflows"],
    SuccessStatusCode = undefined,
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

%% @doc Applies a policy to a component.
%%
%% We recommend that you call the RAM API CreateResourceShare to share
%% resources. If you call the Image Builder API `PutComponentPolicy', you
%% must also call the RAM API PromoteResourceShareCreatedFromPolicy in order
%% for the resource to be visible to all principals with whom the resource is
%% shared.
put_component_policy(Client, Input) ->
    put_component_policy(Client, Input, []).
put_component_policy(Client, Input0, Options0) ->
    Method = put,
    Path = ["/PutComponentPolicy"],
    SuccessStatusCode = undefined,
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

%% @doc Applies a policy to a container image.
%%
%% We recommend that you call the RAM API CreateResourceShare
%% (https://docs.aws.amazon.com//ram/latest/APIReference/API_CreateResourceShare.html)
%% to share resources. If you call the Image Builder API
%% `PutContainerImagePolicy', you must also call the RAM API
%% PromoteResourceShareCreatedFromPolicy
%% (https://docs.aws.amazon.com//ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html)
%% in order for the resource to be visible to all principals with whom the
%% resource is shared.
put_container_recipe_policy(Client, Input) ->
    put_container_recipe_policy(Client, Input, []).
put_container_recipe_policy(Client, Input0, Options0) ->
    Method = put,
    Path = ["/PutContainerRecipePolicy"],
    SuccessStatusCode = undefined,
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

%% @doc Applies a policy to an image.
%%
%% We recommend that you call the RAM API CreateResourceShare to share
%% resources. If you call the Image Builder API `PutImagePolicy', you
%% must also call the RAM API PromoteResourceShareCreatedFromPolicy in order
%% for the resource to be visible to all principals with whom the resource is
%% shared.
put_image_policy(Client, Input) ->
    put_image_policy(Client, Input, []).
put_image_policy(Client, Input0, Options0) ->
    Method = put,
    Path = ["/PutImagePolicy"],
    SuccessStatusCode = undefined,
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

%% @doc Applies a policy to an image recipe.
%%
%% We recommend that you call the RAM API CreateResourceShare to share
%% resources. If you call the Image Builder API `PutImageRecipePolicy',
%% you must also call the RAM API PromoteResourceShareCreatedFromPolicy in
%% order for the resource to be visible to all principals with whom the
%% resource is shared.
put_image_recipe_policy(Client, Input) ->
    put_image_recipe_policy(Client, Input, []).
put_image_recipe_policy(Client, Input0, Options0) ->
    Method = put,
    Path = ["/PutImageRecipePolicy"],
    SuccessStatusCode = undefined,
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

%% @doc Pauses or resumes image creation when the associated workflow runs a
%% `WaitForAction' step.
send_workflow_step_action(Client, Input) ->
    send_workflow_step_action(Client, Input, []).
send_workflow_step_action(Client, Input0, Options0) ->
    Method = put,
    Path = ["/SendWorkflowStepAction"],
    SuccessStatusCode = undefined,
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

%% @doc Manually triggers a pipeline to create an image.
start_image_pipeline_execution(Client, Input) ->
    start_image_pipeline_execution(Client, Input, []).
start_image_pipeline_execution(Client, Input0, Options0) ->
    Method = put,
    Path = ["/StartImagePipelineExecution"],
    SuccessStatusCode = undefined,
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

%% @doc Begin asynchronous resource state update for lifecycle changes to the
%% specified image resources.
start_resource_state_update(Client, Input) ->
    start_resource_state_update(Client, Input, []).
start_resource_state_update(Client, Input0, Options0) ->
    Method = put,
    Path = ["/StartResourceStateUpdate"],
    SuccessStatusCode = undefined,
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

%% @doc Adds a tag to a resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
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

%% @doc Removes a tag from a resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
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

%% @doc Updates a new distribution configuration.
%%
%% Distribution configurations define and configure the outputs of your
%% pipeline.
update_distribution_configuration(Client, Input) ->
    update_distribution_configuration(Client, Input, []).
update_distribution_configuration(Client, Input0, Options0) ->
    Method = put,
    Path = ["/UpdateDistributionConfiguration"],
    SuccessStatusCode = undefined,
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

%% @doc Updates an image pipeline.
%%
%% Image pipelines enable you to automate the creation and distribution of
%% images. You must specify exactly one recipe for your image, using either a
%% `containerRecipeArn' or an `imageRecipeArn'.
%%
%% UpdateImagePipeline does not support selective updates for the pipeline.
%% You must specify all of the required properties in the update request, not
%% just the properties that have changed.
update_image_pipeline(Client, Input) ->
    update_image_pipeline(Client, Input, []).
update_image_pipeline(Client, Input0, Options0) ->
    Method = put,
    Path = ["/UpdateImagePipeline"],
    SuccessStatusCode = undefined,
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

%% @doc Updates a new infrastructure configuration.
%%
%% An infrastructure configuration defines the environment in which your
%% image will be built and tested.
update_infrastructure_configuration(Client, Input) ->
    update_infrastructure_configuration(Client, Input, []).
update_infrastructure_configuration(Client, Input0, Options0) ->
    Method = put,
    Path = ["/UpdateInfrastructureConfiguration"],
    SuccessStatusCode = undefined,
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

%% @doc Update the specified lifecycle policy.
update_lifecycle_policy(Client, Input) ->
    update_lifecycle_policy(Client, Input, []).
update_lifecycle_policy(Client, Input0, Options0) ->
    Method = put,
    Path = ["/UpdateLifecyclePolicy"],
    SuccessStatusCode = undefined,
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
    Client1 = Client#{service => <<"imagebuilder">>},
    Host = build_host(<<"imagebuilder">>, Client1),
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
