%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Elastic Container Registry Public
%%
%% Amazon Elastic Container Registry Public (Amazon ECR Public) is a managed
%% container image registry service.
%%
%% Amazon ECR provides both
%% public and private registries to host your container images. You can use
%% the Docker CLI or
%% your preferred client to push, pull, and manage images. Amazon ECR
%% provides a secure, scalable,
%% and reliable registry for your Docker or Open Container Initiative (OCI)
%% images. Amazon ECR
%% supports public repositories with this API. For information about the
%% Amazon ECR API for private
%% repositories, see Amazon Elastic Container Registry API Reference:
%% https://docs.aws.amazon.com/AmazonECR/latest/APIReference/Welcome.html.
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


%% Example:
%% get_repository_policy_request() :: #{
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type get_repository_policy_request() :: #{binary() => any()}.

%% Example:
%% upload_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type upload_not_found_exception() :: #{binary() => any()}.

%% Example:
%% create_repository_response() :: #{
%%   <<"catalogData">> => repository_catalog_data(),
%%   <<"repository">> => repository()
%% }
-type create_repository_response() :: #{binary() => any()}.

%% Example:
%% image_digest_does_not_match_exception() :: #{
%%   <<"message">> => string()
%% }
-type image_digest_does_not_match_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% image_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type image_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% layer_failure() :: #{
%%   <<"failureCode">> => list(any()),
%%   <<"failureReason">> => string(),
%%   <<"layerDigest">> => string()
%% }
-type layer_failure() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% image_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type image_not_found_exception() :: #{binary() => any()}.

%% Example:
%% registry_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type registry_not_found_exception() :: #{binary() => any()}.

%% Example:
%% describe_images_request() :: #{
%%   <<"imageIds">> => list(image_identifier()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type describe_images_request() :: #{binary() => any()}.

%% Example:
%% set_repository_policy_response() :: #{
%%   <<"policyText">> => string(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> => string()
%% }
-type set_repository_policy_response() :: #{binary() => any()}.

%% Example:
%% initiate_layer_upload_request() :: #{
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type initiate_layer_upload_request() :: #{binary() => any()}.

%% Example:
%% describe_registries_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_registries_request() :: #{binary() => any()}.

%% Example:
%% get_repository_catalog_data_response() :: #{
%%   <<"catalogData">> => repository_catalog_data()
%% }
-type get_repository_catalog_data_response() :: #{binary() => any()}.

%% Example:
%% batch_check_layer_availability_response() :: #{
%%   <<"failures">> => list(layer_failure()),
%%   <<"layers">> => list(layer())
%% }
-type batch_check_layer_availability_response() :: #{binary() => any()}.

%% Example:
%% layers_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type layers_not_found_exception() :: #{binary() => any()}.

%% Example:
%% delete_repository_policy_request() :: #{
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type delete_repository_policy_request() :: #{binary() => any()}.

%% Example:
%% repository_not_empty_exception() :: #{
%%   <<"message">> => string()
%% }
-type repository_not_empty_exception() :: #{binary() => any()}.

%% Example:
%% invalid_tag_parameter_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_tag_parameter_exception() :: #{binary() => any()}.

%% Example:
%% get_repository_catalog_data_request() :: #{
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type get_repository_catalog_data_request() :: #{binary() => any()}.

%% Example:
%% repository_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type repository_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% repository_policy_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type repository_policy_not_found_exception() :: #{binary() => any()}.

%% Example:
%% get_repository_policy_response() :: #{
%%   <<"policyText">> => string(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> => string()
%% }
-type get_repository_policy_response() :: #{binary() => any()}.

%% Example:
%% layer_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type layer_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% describe_images_response() :: #{
%%   <<"imageDetails">> => list(image_detail()),
%%   <<"nextToken">> => string()
%% }
-type describe_images_response() :: #{binary() => any()}.

%% Example:
%% describe_repositories_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"registryId">> => string(),
%%   <<"repositoryNames">> => list(string())
%% }
-type describe_repositories_request() :: #{binary() => any()}.

%% Example:
%% put_image_request() :: #{
%%   <<"imageDigest">> => string(),
%%   <<"imageManifest">> := string(),
%%   <<"imageManifestMediaType">> => string(),
%%   <<"imageTag">> => string(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type put_image_request() :: #{binary() => any()}.

%% Example:
%% complete_layer_upload_request() :: #{
%%   <<"layerDigests">> := list(string()),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string(),
%%   <<"uploadId">> := string()
%% }
-type complete_layer_upload_request() :: #{binary() => any()}.

%% Example:
%% set_repository_policy_request() :: #{
%%   <<"force">> => boolean(),
%%   <<"policyText">> := string(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type set_repository_policy_request() :: #{binary() => any()}.

%% Example:
%% registry_alias() :: #{
%%   <<"defaultRegistryAlias">> => boolean(),
%%   <<"name">> => string(),
%%   <<"primaryRegistryAlias">> => boolean(),
%%   <<"status">> => list(any())
%% }
-type registry_alias() :: #{binary() => any()}.

%% Example:
%% unsupported_command_exception() :: #{
%%   <<"message">> => string()
%% }
-type unsupported_command_exception() :: #{binary() => any()}.

%% Example:
%% batch_delete_image_request() :: #{
%%   <<"imageIds">> := list(image_identifier()),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type batch_delete_image_request() :: #{binary() => any()}.

%% Example:
%% complete_layer_upload_response() :: #{
%%   <<"layerDigest">> => string(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> => string(),
%%   <<"uploadId">> => string()
%% }
-type complete_layer_upload_response() :: #{binary() => any()}.

%% Example:
%% image_failure() :: #{
%%   <<"failureCode">> => list(any()),
%%   <<"failureReason">> => string(),
%%   <<"imageId">> => image_identifier()
%% }
-type image_failure() :: #{binary() => any()}.

%% Example:
%% invalid_layer_part_exception() :: #{
%%   <<"lastValidByteReceived">> => float(),
%%   <<"message">> => string(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> => string(),
%%   <<"uploadId">> => string()
%% }
-type invalid_layer_part_exception() :: #{binary() => any()}.

%% Example:
%% image_tag_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type image_tag_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% put_image_response() :: #{
%%   <<"image">> => image()
%% }
-type put_image_response() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% put_repository_catalog_data_response() :: #{
%%   <<"catalogData">> => repository_catalog_data()
%% }
-type put_repository_catalog_data_response() :: #{binary() => any()}.

%% Example:
%% repository() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"registryId">> => string(),
%%   <<"repositoryArn">> => string(),
%%   <<"repositoryName">> => string(),
%%   <<"repositoryUri">> => string()
%% }
-type repository() :: #{binary() => any()}.

%% Example:
%% delete_repository_request() :: #{
%%   <<"force">> => boolean(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type delete_repository_request() :: #{binary() => any()}.

%% Example:
%% layer() :: #{
%%   <<"layerAvailability">> => list(any()),
%%   <<"layerDigest">> => string(),
%%   <<"layerSize">> => float(),
%%   <<"mediaType">> => string()
%% }
-type layer() :: #{binary() => any()}.

%% Example:
%% layer_part_too_small_exception() :: #{
%%   <<"message">> => string()
%% }
-type layer_part_too_small_exception() :: #{binary() => any()}.

%% Example:
%% registry_catalog_data() :: #{
%%   <<"displayName">> => string()
%% }
-type registry_catalog_data() :: #{binary() => any()}.

%% Example:
%% referenced_images_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type referenced_images_not_found_exception() :: #{binary() => any()}.

%% Example:
%% repository_catalog_data() :: #{
%%   <<"aboutText">> => string(),
%%   <<"architectures">> => list(string()),
%%   <<"description">> => string(),
%%   <<"logoUrl">> => string(),
%%   <<"marketplaceCertified">> => boolean(),
%%   <<"operatingSystems">> => list(string()),
%%   <<"usageText">> => string()
%% }
-type repository_catalog_data() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% describe_image_tags_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type describe_image_tags_request() :: #{binary() => any()}.

%% Example:
%% get_authorization_token_response() :: #{
%%   <<"authorizationData">> => authorization_data()
%% }
-type get_authorization_token_response() :: #{binary() => any()}.

%% Example:
%% get_authorization_token_request() :: #{

%% }
-type get_authorization_token_request() :: #{binary() => any()}.

%% Example:
%% describe_registries_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"registries">> => list(registry())
%% }
-type describe_registries_response() :: #{binary() => any()}.

%% Example:
%% repository_catalog_data_input() :: #{
%%   <<"aboutText">> => string(),
%%   <<"architectures">> => list(string()),
%%   <<"description">> => string(),
%%   <<"logoImageBlob">> => binary(),
%%   <<"operatingSystems">> => list(string()),
%%   <<"usageText">> => string()
%% }
-type repository_catalog_data_input() :: #{binary() => any()}.

%% Example:
%% upload_layer_part_response() :: #{
%%   <<"lastByteReceived">> => float(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> => string(),
%%   <<"uploadId">> => string()
%% }
-type upload_layer_part_response() :: #{binary() => any()}.

%% Example:
%% put_registry_catalog_data_request() :: #{
%%   <<"displayName">> => string()
%% }
-type put_registry_catalog_data_request() :: #{binary() => any()}.

%% Example:
%% create_repository_request() :: #{
%%   <<"catalogData">> => repository_catalog_data_input(),
%%   <<"repositoryName">> := string(),
%%   <<"tags">> => list(tag())
%% }
-type create_repository_request() :: #{binary() => any()}.

%% Example:
%% get_registry_catalog_data_request() :: #{

%% }
-type get_registry_catalog_data_request() :: #{binary() => any()}.

%% Example:
%% image() :: #{
%%   <<"imageId">> => image_identifier(),
%%   <<"imageManifest">> => string(),
%%   <<"imageManifestMediaType">> => string(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> => string()
%% }
-type image() :: #{binary() => any()}.

%% Example:
%% delete_repository_policy_response() :: #{
%%   <<"policyText">> => string(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> => string()
%% }
-type delete_repository_policy_response() :: #{binary() => any()}.

%% Example:
%% get_registry_catalog_data_response() :: #{
%%   <<"registryCatalogData">> => registry_catalog_data()
%% }
-type get_registry_catalog_data_response() :: #{binary() => any()}.

%% Example:
%% batch_delete_image_response() :: #{
%%   <<"failures">> => list(image_failure()),
%%   <<"imageIds">> => list(image_identifier())
%% }
-type batch_delete_image_response() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% invalid_layer_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_layer_exception() :: #{binary() => any()}.

%% Example:
%% referenced_image_detail() :: #{
%%   <<"artifactMediaType">> => string(),
%%   <<"imageDigest">> => string(),
%%   <<"imageManifestMediaType">> => string(),
%%   <<"imagePushedAt">> => non_neg_integer(),
%%   <<"imageSizeInBytes">> => float()
%% }
-type referenced_image_detail() :: #{binary() => any()}.

%% Example:
%% image_tag_detail() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"imageDetail">> => referenced_image_detail(),
%%   <<"imageTag">> => string()
%% }
-type image_tag_detail() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% batch_check_layer_availability_request() :: #{
%%   <<"layerDigests">> := list(string()),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type batch_check_layer_availability_request() :: #{binary() => any()}.

%% Example:
%% repository_catalog_data_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type repository_catalog_data_not_found_exception() :: #{binary() => any()}.

%% Example:
%% server_exception() :: #{
%%   <<"message">> => string()
%% }
-type server_exception() :: #{binary() => any()}.

%% Example:
%% image_identifier() :: #{
%%   <<"imageDigest">> => string(),
%%   <<"imageTag">> => string()
%% }
-type image_identifier() :: #{binary() => any()}.

%% Example:
%% repository_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type repository_not_found_exception() :: #{binary() => any()}.

%% Example:
%% registry() :: #{
%%   <<"aliases">> => list(registry_alias()),
%%   <<"registryArn">> => string(),
%%   <<"registryId">> => string(),
%%   <<"registryUri">> => string(),
%%   <<"verified">> => boolean()
%% }
-type registry() :: #{binary() => any()}.

%% Example:
%% delete_repository_response() :: #{
%%   <<"repository">> => repository()
%% }
-type delete_repository_response() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% describe_repositories_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"repositories">> => list(repository())
%% }
-type describe_repositories_response() :: #{binary() => any()}.

%% Example:
%% put_registry_catalog_data_response() :: #{
%%   <<"registryCatalogData">> => registry_catalog_data()
%% }
-type put_registry_catalog_data_response() :: #{binary() => any()}.

%% Example:
%% describe_image_tags_response() :: #{
%%   <<"imageTagDetails">> => list(image_tag_detail()),
%%   <<"nextToken">> => string()
%% }
-type describe_image_tags_response() :: #{binary() => any()}.

%% Example:
%% authorization_data() :: #{
%%   <<"authorizationToken">> => string(),
%%   <<"expiresAt">> => non_neg_integer()
%% }
-type authorization_data() :: #{binary() => any()}.

%% Example:
%% image_detail() :: #{
%%   <<"artifactMediaType">> => string(),
%%   <<"imageDigest">> => string(),
%%   <<"imageManifestMediaType">> => string(),
%%   <<"imagePushedAt">> => non_neg_integer(),
%%   <<"imageSizeInBytes">> => float(),
%%   <<"imageTags">> => list(string()),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> => string()
%% }
-type image_detail() :: #{binary() => any()}.

%% Example:
%% empty_upload_exception() :: #{
%%   <<"message">> => string()
%% }
-type empty_upload_exception() :: #{binary() => any()}.

%% Example:
%% initiate_layer_upload_response() :: #{
%%   <<"partSize">> => float(),
%%   <<"uploadId">> => string()
%% }
-type initiate_layer_upload_response() :: #{binary() => any()}.

%% Example:
%% put_repository_catalog_data_request() :: #{
%%   <<"catalogData">> := repository_catalog_data_input(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type put_repository_catalog_data_request() :: #{binary() => any()}.

%% Example:
%% too_many_tags_exception() :: #{
%%   <<"message">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.

%% Example:
%% upload_layer_part_request() :: #{
%%   <<"layerPartBlob">> := binary(),
%%   <<"partFirstByte">> := float(),
%%   <<"partLastByte">> := float(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string(),
%%   <<"uploadId">> := string()
%% }
-type upload_layer_part_request() :: #{binary() => any()}.

-type batch_check_layer_availability_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    invalid_parameter_exception() | 
    unsupported_command_exception() | 
    registry_not_found_exception().

-type batch_delete_image_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    invalid_parameter_exception() | 
    unsupported_command_exception().

-type complete_layer_upload_errors() ::
    empty_upload_exception() | 
    repository_not_found_exception() | 
    server_exception() | 
    invalid_layer_exception() | 
    invalid_parameter_exception() | 
    layer_part_too_small_exception() | 
    unsupported_command_exception() | 
    layer_already_exists_exception() | 
    registry_not_found_exception() | 
    upload_not_found_exception().

-type create_repository_errors() ::
    too_many_tags_exception() | 
    limit_exceeded_exception() | 
    server_exception() | 
    invalid_parameter_exception() | 
    unsupported_command_exception() | 
    repository_already_exists_exception() | 
    invalid_tag_parameter_exception().

-type delete_repository_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    invalid_parameter_exception() | 
    unsupported_command_exception() | 
    repository_not_empty_exception().

-type delete_repository_policy_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    invalid_parameter_exception() | 
    unsupported_command_exception() | 
    repository_policy_not_found_exception().

-type describe_image_tags_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    invalid_parameter_exception() | 
    unsupported_command_exception().

-type describe_images_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    invalid_parameter_exception() | 
    unsupported_command_exception() | 
    image_not_found_exception().

-type describe_registries_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    unsupported_command_exception().

-type describe_repositories_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    invalid_parameter_exception() | 
    unsupported_command_exception().

-type get_authorization_token_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    unsupported_command_exception().

-type get_registry_catalog_data_errors() ::
    server_exception() | 
    unsupported_command_exception().

-type get_repository_catalog_data_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    repository_catalog_data_not_found_exception() | 
    invalid_parameter_exception() | 
    unsupported_command_exception().

-type get_repository_policy_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    invalid_parameter_exception() | 
    unsupported_command_exception() | 
    repository_policy_not_found_exception().

-type initiate_layer_upload_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    invalid_parameter_exception() | 
    unsupported_command_exception() | 
    registry_not_found_exception().

-type list_tags_for_resource_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    invalid_parameter_exception() | 
    unsupported_command_exception().

-type put_image_errors() ::
    limit_exceeded_exception() | 
    repository_not_found_exception() | 
    server_exception() | 
    invalid_parameter_exception() | 
    referenced_images_not_found_exception() | 
    image_tag_already_exists_exception() | 
    unsupported_command_exception() | 
    layers_not_found_exception() | 
    registry_not_found_exception() | 
    image_already_exists_exception() | 
    image_digest_does_not_match_exception().

-type put_registry_catalog_data_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    unsupported_command_exception().

-type put_repository_catalog_data_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    invalid_parameter_exception() | 
    unsupported_command_exception().

-type set_repository_policy_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    invalid_parameter_exception() | 
    unsupported_command_exception().

-type tag_resource_errors() ::
    too_many_tags_exception() | 
    repository_not_found_exception() | 
    server_exception() | 
    invalid_parameter_exception() | 
    unsupported_command_exception() | 
    invalid_tag_parameter_exception().

-type untag_resource_errors() ::
    too_many_tags_exception() | 
    repository_not_found_exception() | 
    server_exception() | 
    invalid_parameter_exception() | 
    unsupported_command_exception() | 
    invalid_tag_parameter_exception().

-type upload_layer_part_errors() ::
    limit_exceeded_exception() | 
    repository_not_found_exception() | 
    server_exception() | 
    invalid_parameter_exception() | 
    invalid_layer_part_exception() | 
    unsupported_command_exception() | 
    registry_not_found_exception() | 
    upload_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Checks the availability of one or more image layers that are within a
%% repository in a
%% public registry.
%%
%% When an image is pushed to a repository, each image layer is checked to
%% verify if it has been uploaded before. If it has been uploaded, then the
%% image layer is
%% skipped.
%%
%% This operation is used by the Amazon ECR proxy and is not generally used
%% by customers for pulling and pushing images. In most cases, you should use
%% the `docker' CLI to pull, tag, and push images.
-spec batch_check_layer_availability(aws_client:aws_client(), batch_check_layer_availability_request()) ->
    {ok, batch_check_layer_availability_response(), tuple()} |
    {error, any()} |
    {error, batch_check_layer_availability_errors(), tuple()}.
batch_check_layer_availability(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_check_layer_availability(Client, Input, []).

-spec batch_check_layer_availability(aws_client:aws_client(), batch_check_layer_availability_request(), proplists:proplist()) ->
    {ok, batch_check_layer_availability_response(), tuple()} |
    {error, any()} |
    {error, batch_check_layer_availability_errors(), tuple()}.
batch_check_layer_availability(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchCheckLayerAvailability">>, Input, Options).

%% @doc Deletes a list of specified images that are within a repository in a
%% public registry.
%%
%% Images are specified with either an `imageTag' or
%% `imageDigest'.
%%
%% You can remove a tag from an image by specifying the image's tag in
%% your request. When
%% you remove the last tag from an image, the image is deleted from your
%% repository.
%%
%% You can completely delete an image (and all of its tags) by specifying the
%% digest of the
%% image in your request.
-spec batch_delete_image(aws_client:aws_client(), batch_delete_image_request()) ->
    {ok, batch_delete_image_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_image_errors(), tuple()}.
batch_delete_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_delete_image(Client, Input, []).

-spec batch_delete_image(aws_client:aws_client(), batch_delete_image_request(), proplists:proplist()) ->
    {ok, batch_delete_image_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_image_errors(), tuple()}.
batch_delete_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDeleteImage">>, Input, Options).

%% @doc Informs Amazon ECR that the image layer upload is complete for a
%% specified public registry,
%% repository name, and upload ID.
%%
%% You can optionally provide a `sha256' digest of
%% the image layer for data validation purposes.
%%
%% When an image is pushed, the CompleteLayerUpload API is called once for
%% each new image
%% layer to verify that the upload is complete.
%%
%% This operation is used by the Amazon ECR proxy and is not generally used
%% by customers for pulling and pushing images. In most cases, you should use
%% the `docker' CLI to pull, tag, and push images.
-spec complete_layer_upload(aws_client:aws_client(), complete_layer_upload_request()) ->
    {ok, complete_layer_upload_response(), tuple()} |
    {error, any()} |
    {error, complete_layer_upload_errors(), tuple()}.
complete_layer_upload(Client, Input)
  when is_map(Client), is_map(Input) ->
    complete_layer_upload(Client, Input, []).

-spec complete_layer_upload(aws_client:aws_client(), complete_layer_upload_request(), proplists:proplist()) ->
    {ok, complete_layer_upload_response(), tuple()} |
    {error, any()} |
    {error, complete_layer_upload_errors(), tuple()}.
complete_layer_upload(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CompleteLayerUpload">>, Input, Options).

%% @doc Creates a repository in a public registry.
%%
%% For more information, see Amazon ECR
%% repositories:
%% https://docs.aws.amazon.com/AmazonECR/latest/userguide/Repositories.html
%% in the Amazon Elastic Container Registry User Guide.
-spec create_repository(aws_client:aws_client(), create_repository_request()) ->
    {ok, create_repository_response(), tuple()} |
    {error, any()} |
    {error, create_repository_errors(), tuple()}.
create_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_repository(Client, Input, []).

-spec create_repository(aws_client:aws_client(), create_repository_request(), proplists:proplist()) ->
    {ok, create_repository_response(), tuple()} |
    {error, any()} |
    {error, create_repository_errors(), tuple()}.
create_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRepository">>, Input, Options).

%% @doc Deletes a repository in a public registry.
%%
%% If the repository contains images, you must
%% either manually delete all images in the repository or use the `force'
%% option.
%% This option deletes all images on your behalf before deleting the
%% repository.
-spec delete_repository(aws_client:aws_client(), delete_repository_request()) ->
    {ok, delete_repository_response(), tuple()} |
    {error, any()} |
    {error, delete_repository_errors(), tuple()}.
delete_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_repository(Client, Input, []).

-spec delete_repository(aws_client:aws_client(), delete_repository_request(), proplists:proplist()) ->
    {ok, delete_repository_response(), tuple()} |
    {error, any()} |
    {error, delete_repository_errors(), tuple()}.
delete_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRepository">>, Input, Options).

%% @doc Deletes the repository policy that's associated with the
%% specified repository.
-spec delete_repository_policy(aws_client:aws_client(), delete_repository_policy_request()) ->
    {ok, delete_repository_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_repository_policy_errors(), tuple()}.
delete_repository_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_repository_policy(Client, Input, []).

-spec delete_repository_policy(aws_client:aws_client(), delete_repository_policy_request(), proplists:proplist()) ->
    {ok, delete_repository_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_repository_policy_errors(), tuple()}.
delete_repository_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRepositoryPolicy">>, Input, Options).

%% @doc Returns the image tag details for a repository in a public registry.
-spec describe_image_tags(aws_client:aws_client(), describe_image_tags_request()) ->
    {ok, describe_image_tags_response(), tuple()} |
    {error, any()} |
    {error, describe_image_tags_errors(), tuple()}.
describe_image_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_image_tags(Client, Input, []).

-spec describe_image_tags(aws_client:aws_client(), describe_image_tags_request(), proplists:proplist()) ->
    {ok, describe_image_tags_response(), tuple()} |
    {error, any()} |
    {error, describe_image_tags_errors(), tuple()}.
describe_image_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeImageTags">>, Input, Options).

%% @doc Returns metadata that's related to the images in a repository in
%% a public
%% registry.
%%
%% Beginning with Docker version 1.9, the Docker client compresses image
%% layers before
%% pushing them to a V2 Docker registry. The output of the `docker
%% images'
%% command shows the uncompressed image size. Therefore, it might return a
%% larger image
%% size than the image sizes that are returned by `DescribeImages'.
-spec describe_images(aws_client:aws_client(), describe_images_request()) ->
    {ok, describe_images_response(), tuple()} |
    {error, any()} |
    {error, describe_images_errors(), tuple()}.
describe_images(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_images(Client, Input, []).

-spec describe_images(aws_client:aws_client(), describe_images_request(), proplists:proplist()) ->
    {ok, describe_images_response(), tuple()} |
    {error, any()} |
    {error, describe_images_errors(), tuple()}.
describe_images(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeImages">>, Input, Options).

%% @doc Returns details for a public registry.
-spec describe_registries(aws_client:aws_client(), describe_registries_request()) ->
    {ok, describe_registries_response(), tuple()} |
    {error, any()} |
    {error, describe_registries_errors(), tuple()}.
describe_registries(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_registries(Client, Input, []).

-spec describe_registries(aws_client:aws_client(), describe_registries_request(), proplists:proplist()) ->
    {ok, describe_registries_response(), tuple()} |
    {error, any()} |
    {error, describe_registries_errors(), tuple()}.
describe_registries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRegistries">>, Input, Options).

%% @doc Describes repositories that are in a public registry.
-spec describe_repositories(aws_client:aws_client(), describe_repositories_request()) ->
    {ok, describe_repositories_response(), tuple()} |
    {error, any()} |
    {error, describe_repositories_errors(), tuple()}.
describe_repositories(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_repositories(Client, Input, []).

-spec describe_repositories(aws_client:aws_client(), describe_repositories_request(), proplists:proplist()) ->
    {ok, describe_repositories_response(), tuple()} |
    {error, any()} |
    {error, describe_repositories_errors(), tuple()}.
describe_repositories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRepositories">>, Input, Options).

%% @doc Retrieves an authorization token.
%%
%% An authorization token represents your IAM
%% authentication credentials. You can use it to access any Amazon ECR
%% registry that your IAM
%% principal has access to. The authorization token is valid for 12 hours.
%% This API requires
%% the `ecr-public:GetAuthorizationToken' and
%% `sts:GetServiceBearerToken' permissions.
-spec get_authorization_token(aws_client:aws_client(), get_authorization_token_request()) ->
    {ok, get_authorization_token_response(), tuple()} |
    {error, any()} |
    {error, get_authorization_token_errors(), tuple()}.
get_authorization_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_authorization_token(Client, Input, []).

-spec get_authorization_token(aws_client:aws_client(), get_authorization_token_request(), proplists:proplist()) ->
    {ok, get_authorization_token_response(), tuple()} |
    {error, any()} |
    {error, get_authorization_token_errors(), tuple()}.
get_authorization_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAuthorizationToken">>, Input, Options).

%% @doc Retrieves catalog metadata for a public registry.
-spec get_registry_catalog_data(aws_client:aws_client(), get_registry_catalog_data_request()) ->
    {ok, get_registry_catalog_data_response(), tuple()} |
    {error, any()} |
    {error, get_registry_catalog_data_errors(), tuple()}.
get_registry_catalog_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_registry_catalog_data(Client, Input, []).

-spec get_registry_catalog_data(aws_client:aws_client(), get_registry_catalog_data_request(), proplists:proplist()) ->
    {ok, get_registry_catalog_data_response(), tuple()} |
    {error, any()} |
    {error, get_registry_catalog_data_errors(), tuple()}.
get_registry_catalog_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRegistryCatalogData">>, Input, Options).

%% @doc Retrieve catalog metadata for a repository in a public registry.
%%
%% This metadata is
%% displayed publicly in the Amazon ECR Public Gallery.
-spec get_repository_catalog_data(aws_client:aws_client(), get_repository_catalog_data_request()) ->
    {ok, get_repository_catalog_data_response(), tuple()} |
    {error, any()} |
    {error, get_repository_catalog_data_errors(), tuple()}.
get_repository_catalog_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_repository_catalog_data(Client, Input, []).

-spec get_repository_catalog_data(aws_client:aws_client(), get_repository_catalog_data_request(), proplists:proplist()) ->
    {ok, get_repository_catalog_data_response(), tuple()} |
    {error, any()} |
    {error, get_repository_catalog_data_errors(), tuple()}.
get_repository_catalog_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRepositoryCatalogData">>, Input, Options).

%% @doc Retrieves the repository policy for the specified repository.
-spec get_repository_policy(aws_client:aws_client(), get_repository_policy_request()) ->
    {ok, get_repository_policy_response(), tuple()} |
    {error, any()} |
    {error, get_repository_policy_errors(), tuple()}.
get_repository_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_repository_policy(Client, Input, []).

-spec get_repository_policy(aws_client:aws_client(), get_repository_policy_request(), proplists:proplist()) ->
    {ok, get_repository_policy_response(), tuple()} |
    {error, any()} |
    {error, get_repository_policy_errors(), tuple()}.
get_repository_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRepositoryPolicy">>, Input, Options).

%% @doc Notifies Amazon ECR that you intend to upload an image layer.
%%
%% When an image is pushed, the InitiateLayerUpload API is called once for
%% each image layer
%% that hasn't already been uploaded. Whether an image layer uploads is
%% determined by the
%% BatchCheckLayerAvailability API action.
%%
%% This operation is used by the Amazon ECR proxy and is not generally used
%% by customers for pulling and pushing images. In most cases, you should use
%% the `docker' CLI to pull, tag, and push images.
-spec initiate_layer_upload(aws_client:aws_client(), initiate_layer_upload_request()) ->
    {ok, initiate_layer_upload_response(), tuple()} |
    {error, any()} |
    {error, initiate_layer_upload_errors(), tuple()}.
initiate_layer_upload(Client, Input)
  when is_map(Client), is_map(Input) ->
    initiate_layer_upload(Client, Input, []).

-spec initiate_layer_upload(aws_client:aws_client(), initiate_layer_upload_request(), proplists:proplist()) ->
    {ok, initiate_layer_upload_response(), tuple()} |
    {error, any()} |
    {error, initiate_layer_upload_errors(), tuple()}.
initiate_layer_upload(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"InitiateLayerUpload">>, Input, Options).

%% @doc List the tags for an Amazon ECR Public resource.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Creates or updates the image manifest and tags that are associated
%% with an image.
%%
%% When an image is pushed and all new image layers have been uploaded, the
%% PutImage API is
%% called once to create or update the image manifest and the tags that are
%% associated with
%% the image.
%%
%% This operation is used by the Amazon ECR proxy and is not generally used
%% by customers for pulling and pushing images. In most cases, you should use
%% the `docker' CLI to pull, tag, and push images.
-spec put_image(aws_client:aws_client(), put_image_request()) ->
    {ok, put_image_response(), tuple()} |
    {error, any()} |
    {error, put_image_errors(), tuple()}.
put_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_image(Client, Input, []).

-spec put_image(aws_client:aws_client(), put_image_request(), proplists:proplist()) ->
    {ok, put_image_response(), tuple()} |
    {error, any()} |
    {error, put_image_errors(), tuple()}.
put_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutImage">>, Input, Options).

%% @doc Create or update the catalog data for a public registry.
-spec put_registry_catalog_data(aws_client:aws_client(), put_registry_catalog_data_request()) ->
    {ok, put_registry_catalog_data_response(), tuple()} |
    {error, any()} |
    {error, put_registry_catalog_data_errors(), tuple()}.
put_registry_catalog_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_registry_catalog_data(Client, Input, []).

-spec put_registry_catalog_data(aws_client:aws_client(), put_registry_catalog_data_request(), proplists:proplist()) ->
    {ok, put_registry_catalog_data_response(), tuple()} |
    {error, any()} |
    {error, put_registry_catalog_data_errors(), tuple()}.
put_registry_catalog_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRegistryCatalogData">>, Input, Options).

%% @doc Creates or updates the catalog data for a repository in a public
%% registry.
-spec put_repository_catalog_data(aws_client:aws_client(), put_repository_catalog_data_request()) ->
    {ok, put_repository_catalog_data_response(), tuple()} |
    {error, any()} |
    {error, put_repository_catalog_data_errors(), tuple()}.
put_repository_catalog_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_repository_catalog_data(Client, Input, []).

-spec put_repository_catalog_data(aws_client:aws_client(), put_repository_catalog_data_request(), proplists:proplist()) ->
    {ok, put_repository_catalog_data_response(), tuple()} |
    {error, any()} |
    {error, put_repository_catalog_data_errors(), tuple()}.
put_repository_catalog_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRepositoryCatalogData">>, Input, Options).

%% @doc Applies a repository policy to the specified public repository to
%% control access
%% permissions.
%%
%% For more information, see Amazon ECR Repository
%% Policies:
%% https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policies.html
%% in the Amazon Elastic Container Registry User Guide.
-spec set_repository_policy(aws_client:aws_client(), set_repository_policy_request()) ->
    {ok, set_repository_policy_response(), tuple()} |
    {error, any()} |
    {error, set_repository_policy_errors(), tuple()}.
set_repository_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_repository_policy(Client, Input, []).

-spec set_repository_policy(aws_client:aws_client(), set_repository_policy_request(), proplists:proplist()) ->
    {ok, set_repository_policy_response(), tuple()} |
    {error, any()} |
    {error, set_repository_policy_errors(), tuple()}.
set_repository_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetRepositoryPolicy">>, Input, Options).

%% @doc Associates the specified tags to a resource with the specified
%% `resourceArn'.
%%
%% If existing tags on a resource aren't specified in the request
%% parameters, they aren't
%% changed. When a resource is deleted, the tags associated with that
%% resource are also
%% deleted.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Deletes specified tags from a resource.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Uploads an image layer part to Amazon ECR.
%%
%% When an image is pushed, each new image layer is uploaded in parts. The
%% maximum size of
%% each image layer part can be 20971520 bytes (about 20MB). The
%% UploadLayerPart API is called
%% once for each new image layer part.
%%
%% This operation is used by the Amazon ECR proxy and is not generally used
%% by customers for pulling and pushing images. In most cases, you should use
%% the `docker' CLI to pull, tag, and push images.
-spec upload_layer_part(aws_client:aws_client(), upload_layer_part_request()) ->
    {ok, upload_layer_part_response(), tuple()} |
    {error, any()} |
    {error, upload_layer_part_errors(), tuple()}.
upload_layer_part(Client, Input)
  when is_map(Client), is_map(Input) ->
    upload_layer_part(Client, Input, []).

-spec upload_layer_part(aws_client:aws_client(), upload_layer_part_request(), proplists:proplist()) ->
    {ok, upload_layer_part_response(), tuple()} |
    {error, any()} |
    {error, upload_layer_part_errors(), tuple()}.
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
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
