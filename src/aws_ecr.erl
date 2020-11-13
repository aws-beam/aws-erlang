%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Elastic Container Registry
%%
%% Amazon Elastic Container Registry (Amazon ECR) is a managed container
%% image registry service.
%%
%% Customers can use the familiar Docker CLI, or their preferred client, to
%% push, pull, and manage images. Amazon ECR provides a secure, scalable, and
%% reliable registry for your Docker or Open Container Initiative (OCI)
%% images. Amazon ECR supports private repositories with resource-based
%% permissions using IAM so that specific users or Amazon EC2 instances can
%% access repositories and images.
-module(aws_ecr).

-export([batch_check_layer_availability/2,
         batch_check_layer_availability/3,
         batch_delete_image/2,
         batch_delete_image/3,
         batch_get_image/2,
         batch_get_image/3,
         complete_layer_upload/2,
         complete_layer_upload/3,
         create_repository/2,
         create_repository/3,
         delete_lifecycle_policy/2,
         delete_lifecycle_policy/3,
         delete_repository/2,
         delete_repository/3,
         delete_repository_policy/2,
         delete_repository_policy/3,
         describe_image_scan_findings/2,
         describe_image_scan_findings/3,
         describe_images/2,
         describe_images/3,
         describe_repositories/2,
         describe_repositories/3,
         get_authorization_token/2,
         get_authorization_token/3,
         get_download_url_for_layer/2,
         get_download_url_for_layer/3,
         get_lifecycle_policy/2,
         get_lifecycle_policy/3,
         get_lifecycle_policy_preview/2,
         get_lifecycle_policy_preview/3,
         get_repository_policy/2,
         get_repository_policy/3,
         initiate_layer_upload/2,
         initiate_layer_upload/3,
         list_images/2,
         list_images/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_image/2,
         put_image/3,
         put_image_scanning_configuration/2,
         put_image_scanning_configuration/3,
         put_image_tag_mutability/2,
         put_image_tag_mutability/3,
         put_lifecycle_policy/2,
         put_lifecycle_policy/3,
         set_repository_policy/2,
         set_repository_policy/3,
         start_image_scan/2,
         start_image_scan/3,
         start_lifecycle_policy_preview/2,
         start_lifecycle_policy_preview/3,
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

%% @doc Checks the availability of one or more image layers in a repository.
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

%% @doc Deletes a list of specified images within a repository.
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

%% @doc Gets detailed information for an image.
%%
%% Images are specified with either an `imageTag' or `imageDigest'.
%%
%% When an image is pulled, the BatchGetImage API is called once to retrieve
%% the image manifest.
batch_get_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_image(Client, Input, []).
batch_get_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetImage">>, Input, Options).

%% @doc Informs Amazon ECR that the image layer upload has completed for a
%% specified registry, repository name, and upload ID.
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

%% @doc Creates a repository.
%%
%% For more information, see Amazon ECR Repositories in the Amazon Elastic
%% Container Registry User Guide.
create_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_repository(Client, Input, []).
create_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRepository">>, Input, Options).

%% @doc Deletes the lifecycle policy associated with the specified
%% repository.
delete_lifecycle_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_lifecycle_policy(Client, Input, []).
delete_lifecycle_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLifecyclePolicy">>, Input, Options).

%% @doc Deletes a repository.
%%
%% If the repository contains images, you must either delete all images in
%% the repository or use the `force' option to delete the repository.
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

%% @doc Returns the scan findings for the specified image.
describe_image_scan_findings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_image_scan_findings(Client, Input, []).
describe_image_scan_findings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeImageScanFindings">>, Input, Options).

%% @doc Returns metadata about the images in a repository.
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

%% @doc Describes image repositories in a registry.
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
%% access to. The authorization token is valid for 12 hours.
%%
%% The `authorizationToken' returned is a base64 encoded string that can be
%% decoded and used in a `docker login' command to authenticate to a
%% registry. The AWS CLI offers an `get-login-password' command that
%% simplifies the login process. For more information, see Registry
%% Authentication in the Amazon Elastic Container Registry User Guide.
get_authorization_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_authorization_token(Client, Input, []).
get_authorization_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAuthorizationToken">>, Input, Options).

%% @doc Retrieves the pre-signed Amazon S3 download URL corresponding to an
%% image layer.
%%
%% You can only get URLs for image layers that are referenced in an image.
%%
%% When an image is pulled, the GetDownloadUrlForLayer API is called once per
%% image layer that is not already cached.
%%
%% This operation is used by the Amazon ECR proxy and is not generally used
%% by customers for pulling and pushing images. In most cases, you should use
%% the `docker' CLI to pull, tag, and push images.
get_download_url_for_layer(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_download_url_for_layer(Client, Input, []).
get_download_url_for_layer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDownloadUrlForLayer">>, Input, Options).

%% @doc Retrieves the lifecycle policy for the specified repository.
get_lifecycle_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_lifecycle_policy(Client, Input, []).
get_lifecycle_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLifecyclePolicy">>, Input, Options).

%% @doc Retrieves the results of the lifecycle policy preview request for the
%% specified repository.
get_lifecycle_policy_preview(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_lifecycle_policy_preview(Client, Input, []).
get_lifecycle_policy_preview(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLifecyclePolicyPreview">>, Input, Options).

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

%% @doc Lists all the image IDs for the specified repository.
%%
%% You can filter images based on whether or not they are tagged by using the
%% `tagStatus' filter and specifying either `TAGGED', `UNTAGGED' or `ANY'.
%% For example, you can filter your results to return only `UNTAGGED' images
%% and then pipe that result to a `BatchDeleteImage' operation to delete
%% them. Or, you can filter your results to return only `TAGGED' images to
%% list all of the tags in your repository.
list_images(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_images(Client, Input, []).
list_images(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListImages">>, Input, Options).

%% @doc List the tags for an Amazon ECR resource.
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

%% @doc Updates the image scanning configuration for the specified
%% repository.
put_image_scanning_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_image_scanning_configuration(Client, Input, []).
put_image_scanning_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutImageScanningConfiguration">>, Input, Options).

%% @doc Updates the image tag mutability settings for the specified
%% repository.
%%
%% For more information, see Image Tag Mutability in the Amazon Elastic
%% Container Registry User Guide.
put_image_tag_mutability(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_image_tag_mutability(Client, Input, []).
put_image_tag_mutability(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutImageTagMutability">>, Input, Options).

%% @doc Creates or updates the lifecycle policy for the specified repository.
%%
%% For more information, see Lifecycle Policy Template.
put_lifecycle_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_lifecycle_policy(Client, Input, []).
put_lifecycle_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutLifecyclePolicy">>, Input, Options).

%% @doc Applies a repository policy to the specified repository to control
%% access permissions.
%%
%% For more information, see Amazon ECR Repository Policies in the Amazon
%% Elastic Container Registry User Guide.
set_repository_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_repository_policy(Client, Input, []).
set_repository_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetRepositoryPolicy">>, Input, Options).

%% @doc Starts an image vulnerability scan.
%%
%% An image scan can only be started once per day on an individual image.
%% This limit includes if an image was scanned on initial push. For more
%% information, see Image Scanning in the Amazon Elastic Container Registry
%% User Guide.
start_image_scan(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_image_scan(Client, Input, []).
start_image_scan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartImageScan">>, Input, Options).

%% @doc Starts a preview of a lifecycle policy for the specified repository.
%%
%% This allows you to see the results before associating the lifecycle policy
%% with the repository.
start_lifecycle_policy_preview(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_lifecycle_policy_preview(Client, Input, []).
start_lifecycle_policy_preview(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartLifecyclePolicyPreview">>, Input, Options).

%% @doc Adds specified tags to a resource with the specified ARN.
%%
%% Existing tags on a resource are not changed if they are not specified in
%% the request parameters.
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
request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"ecr">>},
    Host = build_host(<<"api.ecr">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AmazonEC2ContainerRegistry_V20150921.", Action/binary>>}
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
