%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Elastic Container Registry Public
%%
%% Amazon Elastic Container Registry (Amazon ECR) is a managed container
%% image registry service.
%%
%% Amazon ECR provides both public and private registries to host your
%% container images. You can use the familiar Docker CLI, or their preferred
%% client, to push, pull, and manage images. Amazon ECR provides a secure,
%% scalable, and reliable registry for your Docker or Open Container
%% Initiative (OCI) images. Amazon ECR supports public repositories with this
%% API. For information about the Amazon ECR API for private repositories,
%% see Amazon Elastic Container Registry API Reference.
-module(aws_ecr_public).

-export([batch_check_layer_availability/2,
         batch_check_layer_availability/3,
         batch_delete_image/2,
         batch_delete_image/3,
         complete_layer_upload/2,
         complete_layer_upload/3,
         create_repository/2,
         create_repository/3,
         delete_repository/2,
         delete_repository/3,
         delete_repository_policy/2,
         delete_repository_policy/3,
         describe_image_tags/2,
         describe_image_tags/3,
         describe_images/2,
         describe_images/3,
         describe_registries/2,
         describe_registries/3,
         describe_repositories/2,
         describe_repositories/3,
         get_authorization_token/2,
         get_authorization_token/3,
         get_registry_catalog_data/2,
         get_registry_catalog_data/3,
         get_repository_catalog_data/2,
         get_repository_catalog_data/3,
         get_repository_policy/2,
         get_repository_policy/3,
         initiate_layer_upload/2,
         initiate_layer_upload/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_image/2,
         put_image/3,
         put_registry_catalog_data/2,
         put_registry_catalog_data/3,
         put_repository_catalog_data/2,
         put_repository_catalog_data/3,
         set_repository_policy/2,
         set_repository_policy/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         upload_layer_part/2,
         upload_layer_part/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Checks the availability of one or more image layers within a
%% repository in a public registry.
%%
%% When an image is pushed to a repository, each image layer is checked to
%% verify if it has been uploaded before. If it has been uploaded, then the
%% image layer is skipped.
%%
%% This operation is used by the Amazon ECR proxy and is not generally used
%% by customers for pulling and pushing images. In most cases, you should use
%% the `docker' CLI to pull, tag, and push images.
batch_check_layer_availability(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_check_layer_availability(Client, Input, []).
batch_check_layer_availability(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchCheckLayerAvailability">>, Input, Options).

%% @doc Deletes a list of specified images within a repository in a public
%% registry.
%%
%% Images are specified with either an `imageTag' or `imageDigest'.
%%
%% You can remove a tag from an image by specifying the image's tag in your
%% request. When you remove the last tag from an image, the image is deleted
%% from your repository.
%%
%% You can completely delete an image (and all of its tags) by specifying the
%% image's digest in your request.
batch_delete_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_delete_image(Client, Input, []).
batch_delete_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDeleteImage">>, Input, Options).

%% @doc Informs Amazon ECR that the image layer upload has completed for a
%% specified public registry, repository name, and upload ID.
%%
%% You can optionally provide a `sha256' digest of the image layer for data
%% validation purposes.
%%
%% When an image is pushed, the CompleteLayerUpload API is called once per
%% each new image layer to verify that the upload has completed.
%%
%% This operation is used by the Amazon ECR proxy and is not generally used
%% by customers for pulling and pushing images. In most cases, you should use
%% the `docker' CLI to pull, tag, and push images.
complete_layer_upload(Client, Input)
  when is_map(Client), is_map(Input) ->
    complete_layer_upload(Client, Input, []).
complete_layer_upload(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CompleteLayerUpload">>, Input, Options).

%% @doc Creates a repository in a public registry.
%%
%% For more information, see Amazon ECR repositories in the Amazon Elastic
%% Container Registry User Guide.
create_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_repository(Client, Input, []).
create_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRepository">>, Input, Options).

%% @doc Deletes a repository in a public registry.
%%
%% If the repository contains images, you must either delete all images in
%% the repository or use the `force' option which deletes all images on your
%% behalf before deleting the repository.
delete_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_repository(Client, Input, []).
delete_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRepository">>, Input, Options).

%% @doc Deletes the repository policy associated with the specified
%% repository.
delete_repository_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_repository_policy(Client, Input, []).
delete_repository_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRepositoryPolicy">>, Input, Options).

%% @doc Returns the image tag details for a repository in a public registry.
describe_image_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_image_tags(Client, Input, []).
describe_image_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeImageTags">>, Input, Options).

%% @doc Returns metadata about the images in a repository in a public
%% registry.
%%
%% Beginning with Docker version 1.9, the Docker client compresses image
%% layers before pushing them to a V2 Docker registry. The output of the
%% `docker images' command shows the uncompressed image size, so it may
%% return a larger image size than the image sizes returned by
%% `DescribeImages'.
describe_images(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_images(Client, Input, []).
describe_images(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeImages">>, Input, Options).

%% @doc Returns details for a public registry.
describe_registries(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_registries(Client, Input, []).
describe_registries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRegistries">>, Input, Options).

%% @doc Describes repositories in a public registry.
describe_repositories(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_repositories(Client, Input, []).
describe_repositories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRepositories">>, Input, Options).

%% @doc Retrieves an authorization token.
%%
%% An authorization token represents your IAM authentication credentials and
%% can be used to access any Amazon ECR registry that your IAM principal has
%% access to. The authorization token is valid for 12 hours. This API
%% requires the `ecr-public:GetAuthorizationToken' and
%% `sts:GetServiceBearerToken' permissions.
get_authorization_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_authorization_token(Client, Input, []).
get_authorization_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAuthorizationToken">>, Input, Options).

%% @doc Retrieves catalog metadata for a public registry.
get_registry_catalog_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_registry_catalog_data(Client, Input, []).
get_registry_catalog_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRegistryCatalogData">>, Input, Options).

%% @doc Retrieve catalog metadata for a repository in a public registry.
%%
%% This metadata is displayed publicly in the Amazon ECR Public Gallery.
get_repository_catalog_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_repository_catalog_data(Client, Input, []).
get_repository_catalog_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRepositoryCatalogData">>, Input, Options).

%% @doc Retrieves the repository policy for the specified repository.
get_repository_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_repository_policy(Client, Input, []).
get_repository_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRepositoryPolicy">>, Input, Options).

%% @doc Notifies Amazon ECR that you intend to upload an image layer.
%%
%% When an image is pushed, the InitiateLayerUpload API is called once per
%% image layer that has not already been uploaded. Whether or not an image
%% layer has been uploaded is determined by the BatchCheckLayerAvailability
%% API action.
%%
%% This operation is used by the Amazon ECR proxy and is not generally used
%% by customers for pulling and pushing images. In most cases, you should use
%% the `docker' CLI to pull, tag, and push images.
initiate_layer_upload(Client, Input)
  when is_map(Client), is_map(Input) ->
    initiate_layer_upload(Client, Input, []).
initiate_layer_upload(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"InitiateLayerUpload">>, Input, Options).

%% @doc List the tags for an Amazon ECR Public resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Creates or updates the image manifest and tags associated with an
%% image.
%%
%% When an image is pushed and all new image layers have been uploaded, the
%% PutImage API is called once to create or update the image manifest and the
%% tags associated with the image.
%%
%% This operation is used by the Amazon ECR proxy and is not generally used
%% by customers for pulling and pushing images. In most cases, you should use
%% the `docker' CLI to pull, tag, and push images.
put_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_image(Client, Input, []).
put_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutImage">>, Input, Options).

%% @doc Create or updates the catalog data for a public registry.
put_registry_catalog_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_registry_catalog_data(Client, Input, []).
put_registry_catalog_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRegistryCatalogData">>, Input, Options).

%% @doc Creates or updates the catalog data for a repository in a public
%% registry.
put_repository_catalog_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_repository_catalog_data(Client, Input, []).
put_repository_catalog_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRepositoryCatalogData">>, Input, Options).

%% @doc Applies a repository policy to the specified public repository to
%% control access permissions.
%%
%% For more information, see Amazon ECR Repository Policies in the Amazon
%% Elastic Container Registry User Guide.
set_repository_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_repository_policy(Client, Input, []).
set_repository_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetRepositoryPolicy">>, Input, Options).

%% @doc Associates the specified tags to a resource with the specified
%% `resourceArn'.
%%
%% If existing tags on a resource are not specified in the request
%% parameters, they are not changed. When a resource is deleted, the tags
%% associated with that resource are deleted as well.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Deletes specified tags from a resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Uploads an image layer part to Amazon ECR.
%%
%% When an image is pushed, each new image layer is uploaded in parts. The
%% maximum size of each image layer part can be 20971520 bytes (or about
%% 20MB). The UploadLayerPart API is called once per each new image layer
%% part.
%%
%% This operation is used by the Amazon ECR proxy and is not generally used
%% by customers for pulling and pushing images. In most cases, you should use
%% the `docker' CLI to pull, tag, and push images.
upload_layer_part(Client, Input)
  when is_map(Client), is_map(Input) ->
    upload_layer_part(Client, Input, []).
upload_layer_part(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UploadLayerPart">>, Input, Options).

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
    Client1 = Client#{service => <<"ecr-public">>},
    Host = build_host(<<"api.ecr-public">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"SpencerFrontendService.", Action/binary>>}
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
