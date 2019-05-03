%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc Amazon Elastic Container Registry (Amazon ECR) is a managed Docker
%% registry service. Customers can use the familiar Docker CLI to push, pull,
%% and manage images. Amazon ECR provides a secure, scalable, and reliable
%% registry. Amazon ECR supports private Docker repositories with
%% resource-based permissions using IAM so that specific users or Amazon EC2
%% instances can access repositories and images. Developers can use the
%% Docker CLI to author and manage images.
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
         put_lifecycle_policy/2,
         put_lifecycle_policy/3,
         set_repository_policy/2,
         set_repository_policy/3,
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

%% @doc Check the availability of multiple image layers in a specified
%% registry and repository.
%%
%% <note> This operation is used by the Amazon ECR proxy, and it is not
%% intended for general use by customers for pulling and pushing images. In
%% most cases, you should use the <code>docker</code> CLI to pull, tag, and
%% push images.
%%
%% </note>
batch_check_layer_availability(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_check_layer_availability(Client, Input, []).
batch_check_layer_availability(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchCheckLayerAvailability">>, Input, Options).

%% @doc Deletes a list of specified images within a specified repository.
%% Images are specified with either <code>imageTag</code> or
%% <code>imageDigest</code>.
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

%% @doc Gets detailed information for specified images within a specified
%% repository. Images are specified with either <code>imageTag</code> or
%% <code>imageDigest</code>.
batch_get_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_image(Client, Input, []).
batch_get_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetImage">>, Input, Options).

%% @doc Informs Amazon ECR that the image layer upload has completed for a
%% specified registry, repository name, and upload ID. You can optionally
%% provide a <code>sha256</code> digest of the image layer for data
%% validation purposes.
%%
%% <note> This operation is used by the Amazon ECR proxy, and it is not
%% intended for general use by customers for pulling and pushing images. In
%% most cases, you should use the <code>docker</code> CLI to pull, tag, and
%% push images.
%%
%% </note>
complete_layer_upload(Client, Input)
  when is_map(Client), is_map(Input) ->
    complete_layer_upload(Client, Input, []).
complete_layer_upload(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CompleteLayerUpload">>, Input, Options).

%% @doc Creates an image repository.
create_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_repository(Client, Input, []).
create_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRepository">>, Input, Options).

%% @doc Deletes the specified lifecycle policy.
delete_lifecycle_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_lifecycle_policy(Client, Input, []).
delete_lifecycle_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLifecyclePolicy">>, Input, Options).

%% @doc Deletes an existing image repository. If a repository contains
%% images, you must use the <code>force</code> option to delete it.
delete_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_repository(Client, Input, []).
delete_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRepository">>, Input, Options).

%% @doc Deletes the repository policy from a specified repository.
delete_repository_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_repository_policy(Client, Input, []).
delete_repository_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRepositoryPolicy">>, Input, Options).

%% @doc Returns metadata about the images in a repository, including image
%% size, image tags, and creation date.
%%
%% <note> Beginning with Docker version 1.9, the Docker client compresses
%% image layers before pushing them to a V2 Docker registry. The output of
%% the <code>docker images</code> command shows the uncompressed image size,
%% so it may return a larger image size than the image sizes returned by
%% <a>DescribeImages</a>.
%%
%% </note>
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

%% @doc Retrieves a token that is valid for a specified registry for 12
%% hours. This command allows you to use the <code>docker</code> CLI to push
%% and pull images with Amazon ECR. If you do not specify a registry, the
%% default registry is assumed.
%%
%% The <code>authorizationToken</code> returned for each registry specified
%% is a base64 encoded string that can be decoded and used in a <code>docker
%% login</code> command to authenticate to a registry. The AWS CLI offers an
%% <code>aws ecr get-login</code> command that simplifies the login process.
get_authorization_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_authorization_token(Client, Input, []).
get_authorization_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAuthorizationToken">>, Input, Options).

%% @doc Retrieves the pre-signed Amazon S3 download URL corresponding to an
%% image layer. You can only get URLs for image layers that are referenced in
%% an image.
%%
%% <note> This operation is used by the Amazon ECR proxy, and it is not
%% intended for general use by customers for pulling and pushing images. In
%% most cases, you should use the <code>docker</code> CLI to pull, tag, and
%% push images.
%%
%% </note>
get_download_url_for_layer(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_download_url_for_layer(Client, Input, []).
get_download_url_for_layer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDownloadUrlForLayer">>, Input, Options).

%% @doc Retrieves the specified lifecycle policy.
get_lifecycle_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_lifecycle_policy(Client, Input, []).
get_lifecycle_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLifecyclePolicy">>, Input, Options).

%% @doc Retrieves the results of the specified lifecycle policy preview
%% request.
get_lifecycle_policy_preview(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_lifecycle_policy_preview(Client, Input, []).
get_lifecycle_policy_preview(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLifecyclePolicyPreview">>, Input, Options).

%% @doc Retrieves the repository policy for a specified repository.
get_repository_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_repository_policy(Client, Input, []).
get_repository_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRepositoryPolicy">>, Input, Options).

%% @doc Notify Amazon ECR that you intend to upload an image layer.
%%
%% <note> This operation is used by the Amazon ECR proxy, and it is not
%% intended for general use by customers for pulling and pushing images. In
%% most cases, you should use the <code>docker</code> CLI to pull, tag, and
%% push images.
%%
%% </note>
initiate_layer_upload(Client, Input)
  when is_map(Client), is_map(Input) ->
    initiate_layer_upload(Client, Input, []).
initiate_layer_upload(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"InitiateLayerUpload">>, Input, Options).

%% @doc Lists all the image IDs for a given repository.
%%
%% You can filter images based on whether or not they are tagged by setting
%% the <code>tagStatus</code> parameter to <code>TAGGED</code> or
%% <code>UNTAGGED</code>. For example, you can filter your results to return
%% only <code>UNTAGGED</code> images and then pipe that result to a
%% <a>BatchDeleteImage</a> operation to delete them. Or, you can filter your
%% results to return only <code>TAGGED</code> images to list all of the tags
%% in your repository.
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
%% <note> This operation is used by the Amazon ECR proxy, and it is not
%% intended for general use by customers for pulling and pushing images. In
%% most cases, you should use the <code>docker</code> CLI to pull, tag, and
%% push images.
%%
%% </note>
put_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_image(Client, Input, []).
put_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutImage">>, Input, Options).

%% @doc Creates or updates a lifecycle policy. For information about
%% lifecycle policy syntax, see <a
%% href="http://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html">Lifecycle
%% Policy Template</a>.
put_lifecycle_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_lifecycle_policy(Client, Input, []).
put_lifecycle_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutLifecyclePolicy">>, Input, Options).

%% @doc Applies a repository policy on a specified repository to control
%% access permissions.
set_repository_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_repository_policy(Client, Input, []).
set_repository_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetRepositoryPolicy">>, Input, Options).

%% @doc Starts a preview of the specified lifecycle policy. This allows you
%% to see the results before creating the lifecycle policy.
start_lifecycle_policy_preview(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_lifecycle_policy_preview(Client, Input, []).
start_lifecycle_policy_preview(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartLifecyclePolicyPreview">>, Input, Options).

%% @doc Adds specified tags to a resource with the specified ARN. Existing
%% tags on a resource are not changed if they are not specified in the
%% request parameters.
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
%% <note> This operation is used by the Amazon ECR proxy, and it is not
%% intended for general use by customers for pulling and pushing images. In
%% most cases, you should use the <code>docker</code> CLI to pull, tag, and
%% push images.
%%
%% </note>
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
    Error :: {binary(), binary()}.
request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"ecr">>},
    Host = get_host(<<"api.ecr">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"AmazonEC2ContainerRegistry_V20150921.">>/binary, Action/binary>>}],
    Payload = jsx:encode(Input),
    Headers1 = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, Headers1, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body, [return_maps]),
    Exception = maps:get(<<"__type">>, Error, undefined),
    Reason = maps:get(<<"message">>, Error, undefined),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix,
			  <<".">>,
			  Region,
			  <<".">>,
			  Endpoint],
			 <<"">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>],
			 <<"">>).
