%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Elastic Container Registry
%%
%% Amazon Elastic Container Registry (Amazon ECR) is a managed container
%% image registry service.
%%
%% Customers can use the
%% familiar Docker CLI, or their preferred client, to push, pull, and manage
%% images. Amazon ECR
%% provides a secure, scalable, and reliable registry for your Docker or Open
%% Container
%% Initiative (OCI) images. Amazon ECR supports private repositories with
%% resource-based
%% permissions using IAM so that specific users or Amazon EC2 instances can
%% access
%% repositories and images.
%%
%% Amazon ECR has service endpoints in each supported Region. For more
%% information, see Amazon ECR endpoints:
%% https://docs.aws.amazon.com/general/latest/gr/ecr.html in the
%% Amazon Web Services General Reference.
-module(aws_ecr).

-export([batch_check_layer_availability/2,
         batch_check_layer_availability/3,
         batch_delete_image/2,
         batch_delete_image/3,
         batch_get_image/2,
         batch_get_image/3,
         batch_get_repository_scanning_configuration/2,
         batch_get_repository_scanning_configuration/3,
         complete_layer_upload/2,
         complete_layer_upload/3,
         create_pull_through_cache_rule/2,
         create_pull_through_cache_rule/3,
         create_repository/2,
         create_repository/3,
         create_repository_creation_template/2,
         create_repository_creation_template/3,
         delete_lifecycle_policy/2,
         delete_lifecycle_policy/3,
         delete_pull_through_cache_rule/2,
         delete_pull_through_cache_rule/3,
         delete_registry_policy/2,
         delete_registry_policy/3,
         delete_repository/2,
         delete_repository/3,
         delete_repository_creation_template/2,
         delete_repository_creation_template/3,
         delete_repository_policy/2,
         delete_repository_policy/3,
         describe_image_replication_status/2,
         describe_image_replication_status/3,
         describe_image_scan_findings/2,
         describe_image_scan_findings/3,
         describe_images/2,
         describe_images/3,
         describe_pull_through_cache_rules/2,
         describe_pull_through_cache_rules/3,
         describe_registry/2,
         describe_registry/3,
         describe_repositories/2,
         describe_repositories/3,
         describe_repository_creation_templates/2,
         describe_repository_creation_templates/3,
         get_account_setting/2,
         get_account_setting/3,
         get_authorization_token/2,
         get_authorization_token/3,
         get_download_url_for_layer/2,
         get_download_url_for_layer/3,
         get_lifecycle_policy/2,
         get_lifecycle_policy/3,
         get_lifecycle_policy_preview/2,
         get_lifecycle_policy_preview/3,
         get_registry_policy/2,
         get_registry_policy/3,
         get_registry_scanning_configuration/2,
         get_registry_scanning_configuration/3,
         get_repository_policy/2,
         get_repository_policy/3,
         initiate_layer_upload/2,
         initiate_layer_upload/3,
         list_images/2,
         list_images/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_account_setting/2,
         put_account_setting/3,
         put_image/2,
         put_image/3,
         put_image_scanning_configuration/2,
         put_image_scanning_configuration/3,
         put_image_tag_mutability/2,
         put_image_tag_mutability/3,
         put_lifecycle_policy/2,
         put_lifecycle_policy/3,
         put_registry_policy/2,
         put_registry_policy/3,
         put_registry_scanning_configuration/2,
         put_registry_scanning_configuration/3,
         put_replication_configuration/2,
         put_replication_configuration/3,
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
         update_pull_through_cache_rule/2,
         update_pull_through_cache_rule/3,
         update_repository_creation_template/2,
         update_repository_creation_template/3,
         upload_layer_part/2,
         upload_layer_part/3,
         validate_pull_through_cache_rule/2,
         validate_pull_through_cache_rule/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% image_scan_findings_summary() :: #{
%%   <<"findingSeverityCounts">> => map(),
%%   <<"imageScanCompletedAt">> => non_neg_integer(),
%%   <<"vulnerabilitySourceUpdatedAt">> => non_neg_integer()
%% }
-type image_scan_findings_summary() :: #{binary() => any()}.

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
%%   <<"repository">> => repository()
%% }
-type create_repository_response() :: #{binary() => any()}.

%% Example:
%% image_replication_status() :: #{
%%   <<"failureCode">> => string(),
%%   <<"region">> => string(),
%%   <<"registryId">> => string(),
%%   <<"status">> => list(any())
%% }
-type image_replication_status() :: #{binary() => any()}.

%% Example:
%% put_registry_scanning_configuration_request() :: #{
%%   <<"rules">> => list(registry_scanning_rule()()),
%%   <<"scanType">> => list(any())
%% }
-type put_registry_scanning_configuration_request() :: #{binary() => any()}.

%% Example:
%% create_pull_through_cache_rule_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"credentialArn">> => string(),
%%   <<"ecrRepositoryPrefix">> => string(),
%%   <<"registryId">> => string(),
%%   <<"upstreamRegistry">> => list(any()),
%%   <<"upstreamRegistryUrl">> => string()
%% }
-type create_pull_through_cache_rule_response() :: #{binary() => any()}.

%% Example:
%% encryption_configuration() :: #{
%%   <<"encryptionType">> => list(any()),
%%   <<"kmsKey">> => string()
%% }
-type encryption_configuration() :: #{binary() => any()}.

%% Example:
%% template_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type template_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% image_digest_does_not_match_exception() :: #{
%%   <<"message">> => string()
%% }
-type image_digest_does_not_match_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := list(tag()())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% put_image_tag_mutability_response() :: #{
%%   <<"imageTagMutability">> => list(any()),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> => string()
%% }
-type put_image_tag_mutability_response() :: #{binary() => any()}.

%% Example:
%% put_registry_policy_response() :: #{
%%   <<"policyText">> => string(),
%%   <<"registryId">> => string()
%% }
-type put_registry_policy_response() :: #{binary() => any()}.

%% Example:
%% lifecycle_policy_preview_in_progress_exception() :: #{
%%   <<"message">> => string()
%% }
-type lifecycle_policy_preview_in_progress_exception() :: #{binary() => any()}.

%% Example:
%% image_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type image_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% get_download_url_for_layer_response() :: #{
%%   <<"downloadUrl">> => string(),
%%   <<"layerDigest">> => string()
%% }
-type get_download_url_for_layer_response() :: #{binary() => any()}.

%% Example:
%% remediation() :: #{
%%   <<"recommendation">> => recommendation()
%% }
-type remediation() :: #{binary() => any()}.

%% Example:
%% image_scanning_configuration() :: #{
%%   <<"scanOnPush">> => boolean()
%% }
-type image_scanning_configuration() :: #{binary() => any()}.

%% Example:
%% update_repository_creation_template_response() :: #{
%%   <<"registryId">> => string(),
%%   <<"repositoryCreationTemplate">> => repository_creation_template()
%% }
-type update_repository_creation_template_response() :: #{binary() => any()}.

%% Example:
%% get_account_setting_request() :: #{
%%   <<"name">> := string()
%% }
-type get_account_setting_request() :: #{binary() => any()}.

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
%% create_repository_creation_template_request() :: #{
%%   <<"appliedFor">> := list(list(any())()),
%%   <<"customRoleArn">> => string(),
%%   <<"description">> => string(),
%%   <<"encryptionConfiguration">> => encryption_configuration_for_repository_creation_template(),
%%   <<"imageTagMutability">> => list(any()),
%%   <<"lifecyclePolicy">> => string(),
%%   <<"prefix">> := string(),
%%   <<"repositoryPolicy">> => string(),
%%   <<"resourceTags">> => list(tag()())
%% }
-type create_repository_creation_template_request() :: #{binary() => any()}.

%% Example:
%% describe_images_request() :: #{
%%   <<"filter">> => describe_images_filter(),
%%   <<"imageIds">> => list(image_identifier()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type describe_images_request() :: #{binary() => any()}.

%% Example:
%% put_account_setting_response() :: #{
%%   <<"name">> => string(),
%%   <<"value">> => string()
%% }
-type put_account_setting_response() :: #{binary() => any()}.

%% Example:
%% scan_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type scan_not_found_exception() :: #{binary() => any()}.

%% Example:
%% image_scan_status() :: #{
%%   <<"description">> => string(),
%%   <<"status">> => list(any())
%% }
-type image_scan_status() :: #{binary() => any()}.

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
%% put_registry_scanning_configuration_response() :: #{
%%   <<"registryScanningConfiguration">> => registry_scanning_configuration()
%% }
-type put_registry_scanning_configuration_response() :: #{binary() => any()}.

%% Example:
%% update_pull_through_cache_rule_request() :: #{
%%   <<"credentialArn">> := string(),
%%   <<"ecrRepositoryPrefix">> := string(),
%%   <<"registryId">> => string()
%% }
-type update_pull_through_cache_rule_request() :: #{binary() => any()}.

%% Example:
%% batch_check_layer_availability_response() :: #{
%%   <<"failures">> => list(layer_failure()()),
%%   <<"layers">> => list(layer()())
%% }
-type batch_check_layer_availability_response() :: #{binary() => any()}.

%% Example:
%% layers_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type layers_not_found_exception() :: #{binary() => any()}.

%% Example:
%% encryption_configuration_for_repository_creation_template() :: #{
%%   <<"encryptionType">> => list(any()),
%%   <<"kmsKey">> => string()
%% }
-type encryption_configuration_for_repository_creation_template() :: #{binary() => any()}.

%% Example:
%% delete_repository_policy_request() :: #{
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type delete_repository_policy_request() :: #{binary() => any()}.

%% Example:
%% image_scan_findings() :: #{
%%   <<"enhancedFindings">> => list(enhanced_image_scan_finding()()),
%%   <<"findingSeverityCounts">> => map(),
%%   <<"findings">> => list(image_scan_finding()()),
%%   <<"imageScanCompletedAt">> => non_neg_integer(),
%%   <<"vulnerabilitySourceUpdatedAt">> => non_neg_integer()
%% }
-type image_scan_findings() :: #{binary() => any()}.

%% Example:
%% start_image_scan_request() :: #{
%%   <<"imageId">> := image_identifier(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type start_image_scan_request() :: #{binary() => any()}.

%% Example:
%% repository_not_empty_exception() :: #{
%%   <<"message">> => string()
%% }
-type repository_not_empty_exception() :: #{binary() => any()}.

%% Example:
%% delete_repository_creation_template_request() :: #{
%%   <<"prefix">> := string()
%% }
-type delete_repository_creation_template_request() :: #{binary() => any()}.

%% Example:
%% delete_registry_policy_request() :: #{

%% }
-type delete_registry_policy_request() :: #{binary() => any()}.

%% Example:
%% repository_filter() :: #{
%%   <<"filter">> => string(),
%%   <<"filterType">> => list(any())
%% }
-type repository_filter() :: #{binary() => any()}.

%% Example:
%% registry_policy_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type registry_policy_not_found_exception() :: #{binary() => any()}.

%% Example:
%% put_image_scanning_configuration_response() :: #{
%%   <<"imageScanningConfiguration">> => image_scanning_configuration(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> => string()
%% }
-type put_image_scanning_configuration_response() :: #{binary() => any()}.

%% Example:
%% unsupported_image_type_exception() :: #{
%%   <<"message">> => string()
%% }
-type unsupported_image_type_exception() :: #{binary() => any()}.

%% Example:
%% invalid_tag_parameter_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_tag_parameter_exception() :: #{binary() => any()}.

%% Example:
%% repository_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type repository_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tagKeys">> := list(string()())
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
%% registry_scanning_configuration() :: #{
%%   <<"rules">> => list(registry_scanning_rule()()),
%%   <<"scanType">> => list(any())
%% }
-type registry_scanning_configuration() :: #{binary() => any()}.

%% Example:
%% describe_images_response() :: #{
%%   <<"imageDetails">> => list(image_detail()()),
%%   <<"nextToken">> => string()
%% }
-type describe_images_response() :: #{binary() => any()}.

%% Example:
%% describe_repositories_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"registryId">> => string(),
%%   <<"repositoryNames">> => list(string()())
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
%% lifecycle_policy_preview_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type lifecycle_policy_preview_not_found_exception() :: #{binary() => any()}.

%% Example:
%% complete_layer_upload_request() :: #{
%%   <<"layerDigests">> := list(string()()),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string(),
%%   <<"uploadId">> := string()
%% }
-type complete_layer_upload_request() :: #{binary() => any()}.

%% Example:
%% unable_to_get_upstream_image_exception() :: #{
%%   <<"message">> => string()
%% }
-type unable_to_get_upstream_image_exception() :: #{binary() => any()}.

%% Example:
%% set_repository_policy_request() :: #{
%%   <<"force">> => boolean(),
%%   <<"policyText">> := string(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type set_repository_policy_request() :: #{binary() => any()}.

%% Example:
%% get_registry_policy_request() :: #{

%% }
-type get_registry_policy_request() :: #{binary() => any()}.

%% Example:
%% put_image_scanning_configuration_request() :: #{
%%   <<"imageScanningConfiguration">> := image_scanning_configuration(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type put_image_scanning_configuration_request() :: #{binary() => any()}.

%% Example:
%% lifecycle_policy_preview_filter() :: #{
%%   <<"tagStatus">> => list(any())
%% }
-type lifecycle_policy_preview_filter() :: #{binary() => any()}.

%% Example:
%% put_account_setting_request() :: #{
%%   <<"name">> := string(),
%%   <<"value">> := string()
%% }
-type put_account_setting_request() :: #{binary() => any()}.

%% Example:
%% enhanced_image_scan_finding() :: #{
%%   <<"awsAccountId">> => string(),
%%   <<"description">> => string(),
%%   <<"exploitAvailable">> => string(),
%%   <<"findingArn">> => string(),
%%   <<"firstObservedAt">> => non_neg_integer(),
%%   <<"fixAvailable">> => string(),
%%   <<"lastObservedAt">> => non_neg_integer(),
%%   <<"packageVulnerabilityDetails">> => package_vulnerability_details(),
%%   <<"remediation">> => remediation(),
%%   <<"resources">> => list(resource()()),
%%   <<"score">> => float(),
%%   <<"scoreDetails">> => score_details(),
%%   <<"severity">> => string(),
%%   <<"status">> => string(),
%%   <<"title">> => string(),
%%   <<"type">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type enhanced_image_scan_finding() :: #{binary() => any()}.

%% Example:
%% get_lifecycle_policy_preview_response() :: #{
%%   <<"lifecyclePolicyText">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"previewResults">> => list(lifecycle_policy_preview_result()()),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> => string(),
%%   <<"status">> => list(any()),
%%   <<"summary">> => lifecycle_policy_preview_summary()
%% }
-type get_lifecycle_policy_preview_response() :: #{binary() => any()}.

%% Example:
%% template_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type template_not_found_exception() :: #{binary() => any()}.

%% Example:
%% lifecycle_policy_rule_action() :: #{
%%   <<"type">> => list(any())
%% }
-type lifecycle_policy_rule_action() :: #{binary() => any()}.

%% Example:
%% delete_lifecycle_policy_response() :: #{
%%   <<"lastEvaluatedAt">> => non_neg_integer(),
%%   <<"lifecyclePolicyText">> => string(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> => string()
%% }
-type delete_lifecycle_policy_response() :: #{binary() => any()}.

%% Example:
%% batch_delete_image_request() :: #{
%%   <<"imageIds">> := list(image_identifier()()),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type batch_delete_image_request() :: #{binary() => any()}.

%% Example:
%% put_lifecycle_policy_request() :: #{
%%   <<"lifecyclePolicyText">> := string(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type put_lifecycle_policy_request() :: #{binary() => any()}.

%% Example:
%% complete_layer_upload_response() :: #{
%%   <<"layerDigest">> => string(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> => string(),
%%   <<"uploadId">> => string()
%% }
-type complete_layer_upload_response() :: #{binary() => any()}.

%% Example:
%% repository_creation_template() :: #{
%%   <<"appliedFor">> => list(list(any())()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"customRoleArn">> => string(),
%%   <<"description">> => string(),
%%   <<"encryptionConfiguration">> => encryption_configuration_for_repository_creation_template(),
%%   <<"imageTagMutability">> => list(any()),
%%   <<"lifecyclePolicy">> => string(),
%%   <<"prefix">> => string(),
%%   <<"repositoryPolicy">> => string(),
%%   <<"resourceTags">> => list(tag()()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type repository_creation_template() :: #{binary() => any()}.

%% Example:
%% replication_configuration() :: #{
%%   <<"rules">> => list(replication_rule()())
%% }
-type replication_configuration() :: #{binary() => any()}.

%% Example:
%% image_failure() :: #{
%%   <<"failureCode">> => list(any()),
%%   <<"failureReason">> => string(),
%%   <<"imageId">> => image_identifier()
%% }
-type image_failure() :: #{binary() => any()}.

%% Example:
%% lifecycle_policy_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type lifecycle_policy_not_found_exception() :: #{binary() => any()}.

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
%% create_pull_through_cache_rule_request() :: #{
%%   <<"credentialArn">> => string(),
%%   <<"ecrRepositoryPrefix">> := string(),
%%   <<"registryId">> => string(),
%%   <<"upstreamRegistry">> => list(any()),
%%   <<"upstreamRegistryUrl">> := string()
%% }
-type create_pull_through_cache_rule_request() :: #{binary() => any()}.

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
%% pull_through_cache_rule_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type pull_through_cache_rule_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% replication_destination() :: #{
%%   <<"region">> => string(),
%%   <<"registryId">> => string()
%% }
-type replication_destination() :: #{binary() => any()}.

%% Example:
%% validate_pull_through_cache_rule_request() :: #{
%%   <<"ecrRepositoryPrefix">> := string(),
%%   <<"registryId">> => string()
%% }
-type validate_pull_through_cache_rule_request() :: #{binary() => any()}.

%% Example:
%% get_lifecycle_policy_preview_request() :: #{
%%   <<"filter">> => lifecycle_policy_preview_filter(),
%%   <<"imageIds">> => list(image_identifier()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type get_lifecycle_policy_preview_request() :: #{binary() => any()}.

%% Example:
%% repository() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"encryptionConfiguration">> => encryption_configuration(),
%%   <<"imageScanningConfiguration">> => image_scanning_configuration(),
%%   <<"imageTagMutability">> => list(any()),
%%   <<"registryId">> => string(),
%%   <<"repositoryArn">> => string(),
%%   <<"repositoryName">> => string(),
%%   <<"repositoryUri">> => string()
%% }
-type repository() :: #{binary() => any()}.

%% Example:
%% list_images_request() :: #{
%%   <<"filter">> => list_images_filter(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type list_images_request() :: #{binary() => any()}.

%% Example:
%% recommendation() :: #{
%%   <<"text">> => string(),
%%   <<"url">> => string()
%% }
-type recommendation() :: #{binary() => any()}.

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
%% list_images_filter() :: #{
%%   <<"tagStatus">> => list(any())
%% }
-type list_images_filter() :: #{binary() => any()}.

%% Example:
%% cvss_score_details() :: #{
%%   <<"adjustments">> => list(cvss_score_adjustment()()),
%%   <<"score">> => float(),
%%   <<"scoreSource">> => string(),
%%   <<"scoringVector">> => string(),
%%   <<"version">> => string()
%% }
-type cvss_score_details() :: #{binary() => any()}.

%% Example:
%% layer_part_too_small_exception() :: #{
%%   <<"message">> => string()
%% }
-type layer_part_too_small_exception() :: #{binary() => any()}.

%% Example:
%% referenced_images_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type referenced_images_not_found_exception() :: #{binary() => any()}.

%% Example:
%% vulnerable_package() :: #{
%%   <<"arch">> => string(),
%%   <<"epoch">> => integer(),
%%   <<"filePath">> => string(),
%%   <<"fixedInVersion">> => string(),
%%   <<"name">> => string(),
%%   <<"packageManager">> => string(),
%%   <<"release">> => string(),
%%   <<"sourceLayerHash">> => string(),
%%   <<"version">> => string()
%% }
-type vulnerable_package() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => list(tag()())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% cvss_score_adjustment() :: #{
%%   <<"metric">> => string(),
%%   <<"reason">> => string()
%% }
-type cvss_score_adjustment() :: #{binary() => any()}.

%% Example:
%% unable_to_get_upstream_layer_exception() :: #{
%%   <<"message">> => string()
%% }
-type unable_to_get_upstream_layer_exception() :: #{binary() => any()}.

%% Example:
%% validate_pull_through_cache_rule_response() :: #{
%%   <<"credentialArn">> => string(),
%%   <<"ecrRepositoryPrefix">> => string(),
%%   <<"failure">> => string(),
%%   <<"isValid">> => boolean(),
%%   <<"registryId">> => string(),
%%   <<"upstreamRegistryUrl">> => string()
%% }
-type validate_pull_through_cache_rule_response() :: #{binary() => any()}.

%% Example:
%% batch_get_repository_scanning_configuration_response() :: #{
%%   <<"failures">> => list(repository_scanning_configuration_failure()()),
%%   <<"scanningConfigurations">> => list(repository_scanning_configuration()())
%% }
-type batch_get_repository_scanning_configuration_response() :: #{binary() => any()}.

%% Example:
%% registry_scanning_rule() :: #{
%%   <<"repositoryFilters">> => list(scanning_repository_filter()()),
%%   <<"scanFrequency">> => list(any())
%% }
-type registry_scanning_rule() :: #{binary() => any()}.

%% Example:
%% get_authorization_token_response() :: #{
%%   <<"authorizationData">> => list(authorization_data()())
%% }
-type get_authorization_token_response() :: #{binary() => any()}.

%% Example:
%% get_authorization_token_request() :: #{
%%   <<"registryIds">> => list(string()())
%% }
-type get_authorization_token_request() :: #{binary() => any()}.

%% Example:
%% score_details() :: #{
%%   <<"cvss">> => cvss_score_details()
%% }
-type score_details() :: #{binary() => any()}.

%% Example:
%% start_image_scan_response() :: #{
%%   <<"imageId">> => image_identifier(),
%%   <<"imageScanStatus">> => image_scan_status(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> => string()
%% }
-type start_image_scan_response() :: #{binary() => any()}.

%% Example:
%% describe_registry_response() :: #{
%%   <<"registryId">> => string(),
%%   <<"replicationConfiguration">> => replication_configuration()
%% }
-type describe_registry_response() :: #{binary() => any()}.

%% Example:
%% layer_inaccessible_exception() :: #{
%%   <<"message">> => string()
%% }
-type layer_inaccessible_exception() :: #{binary() => any()}.

%% Example:
%% list_images_response() :: #{
%%   <<"imageIds">> => list(image_identifier()()),
%%   <<"nextToken">> => string()
%% }
-type list_images_response() :: #{binary() => any()}.

%% Example:
%% delete_registry_policy_response() :: #{
%%   <<"policyText">> => string(),
%%   <<"registryId">> => string()
%% }
-type delete_registry_policy_response() :: #{binary() => any()}.

%% Example:
%% get_registry_scanning_configuration_response() :: #{
%%   <<"registryId">> => string(),
%%   <<"scanningConfiguration">> => registry_scanning_configuration()
%% }
-type get_registry_scanning_configuration_response() :: #{binary() => any()}.

%% Example:
%% unable_to_decrypt_secret_value_exception() :: #{
%%   <<"message">> => string()
%% }
-type unable_to_decrypt_secret_value_exception() :: #{binary() => any()}.

%% Example:
%% batch_get_image_request() :: #{
%%   <<"acceptedMediaTypes">> => list(string()()),
%%   <<"imageIds">> := list(image_identifier()()),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type batch_get_image_request() :: #{binary() => any()}.

%% Example:
%% get_account_setting_response() :: #{
%%   <<"name">> => string(),
%%   <<"value">> => string()
%% }
-type get_account_setting_response() :: #{binary() => any()}.

%% Example:
%% upload_layer_part_response() :: #{
%%   <<"lastByteReceived">> => float(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> => string(),
%%   <<"uploadId">> => string()
%% }
-type upload_layer_part_response() :: #{binary() => any()}.

%% Example:
%% create_repository_request() :: #{
%%   <<"encryptionConfiguration">> => encryption_configuration(),
%%   <<"imageScanningConfiguration">> => image_scanning_configuration(),
%%   <<"imageTagMutability">> => list(any()),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_repository_request() :: #{binary() => any()}.

%% Example:
%% delete_lifecycle_policy_request() :: #{
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type delete_lifecycle_policy_request() :: #{binary() => any()}.

%% Example:
%% image_scan_finding() :: #{
%%   <<"attributes">> => list(attribute()()),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"severity">> => list(any()),
%%   <<"uri">> => string()
%% }
-type image_scan_finding() :: #{binary() => any()}.

%% Example:
%% pull_through_cache_rule_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type pull_through_cache_rule_not_found_exception() :: #{binary() => any()}.

%% Example:
%% describe_image_scan_findings_response() :: #{
%%   <<"imageId">> => image_identifier(),
%%   <<"imageScanFindings">> => image_scan_findings(),
%%   <<"imageScanStatus">> => image_scan_status(),
%%   <<"nextToken">> => string(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> => string()
%% }
-type describe_image_scan_findings_response() :: #{binary() => any()}.

%% Example:
%% put_replication_configuration_response() :: #{
%%   <<"replicationConfiguration">> => replication_configuration()
%% }
-type put_replication_configuration_response() :: #{binary() => any()}.

%% Example:
%% create_repository_creation_template_response() :: #{
%%   <<"registryId">> => string(),
%%   <<"repositoryCreationTemplate">> => repository_creation_template()
%% }
-type create_repository_creation_template_response() :: #{binary() => any()}.

%% Example:
%% describe_image_scan_findings_request() :: #{
%%   <<"imageId">> := image_identifier(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type describe_image_scan_findings_request() :: #{binary() => any()}.

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
%% put_image_tag_mutability_request() :: #{
%%   <<"imageTagMutability">> := list(any()),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type put_image_tag_mutability_request() :: #{binary() => any()}.

%% Example:
%% delete_repository_policy_response() :: #{
%%   <<"policyText">> => string(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> => string()
%% }
-type delete_repository_policy_response() :: #{binary() => any()}.

%% Example:
%% describe_repository_creation_templates_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"registryId">> => string(),
%%   <<"repositoryCreationTemplates">> => list(repository_creation_template()())
%% }
-type describe_repository_creation_templates_response() :: #{binary() => any()}.

%% Example:
%% describe_pull_through_cache_rules_request() :: #{
%%   <<"ecrRepositoryPrefixes">> => list(string()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"registryId">> => string()
%% }
-type describe_pull_through_cache_rules_request() :: #{binary() => any()}.

%% Example:
%% delete_repository_creation_template_response() :: #{
%%   <<"registryId">> => string(),
%%   <<"repositoryCreationTemplate">> => repository_creation_template()
%% }
-type delete_repository_creation_template_response() :: #{binary() => any()}.

%% Example:
%% package_vulnerability_details() :: #{
%%   <<"cvss">> => list(cvss_score()()),
%%   <<"referenceUrls">> => list(string()()),
%%   <<"relatedVulnerabilities">> => list(string()()),
%%   <<"source">> => string(),
%%   <<"sourceUrl">> => string(),
%%   <<"vendorCreatedAt">> => non_neg_integer(),
%%   <<"vendorSeverity">> => string(),
%%   <<"vendorUpdatedAt">> => non_neg_integer(),
%%   <<"vulnerabilityId">> => string(),
%%   <<"vulnerablePackages">> => list(vulnerable_package()())
%% }
-type package_vulnerability_details() :: #{binary() => any()}.

%% Example:
%% cvss_score() :: #{
%%   <<"baseScore">> => float(),
%%   <<"scoringVector">> => string(),
%%   <<"source">> => string(),
%%   <<"version">> => string()
%% }
-type cvss_score() :: #{binary() => any()}.

%% Example:
%% batch_delete_image_response() :: #{
%%   <<"failures">> => list(image_failure()()),
%%   <<"imageIds">> => list(image_identifier()())
%% }
-type batch_delete_image_response() :: #{binary() => any()}.

%% Example:
%% secret_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type secret_not_found_exception() :: #{binary() => any()}.

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
%% describe_registry_request() :: #{

%% }
-type describe_registry_request() :: #{binary() => any()}.

%% Example:
%% delete_pull_through_cache_rule_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"credentialArn">> => string(),
%%   <<"ecrRepositoryPrefix">> => string(),
%%   <<"registryId">> => string(),
%%   <<"upstreamRegistryUrl">> => string()
%% }
-type delete_pull_through_cache_rule_response() :: #{binary() => any()}.

%% Example:
%% replication_rule() :: #{
%%   <<"destinations">> => list(replication_destination()()),
%%   <<"repositoryFilters">> => list(repository_filter()())
%% }
-type replication_rule() :: #{binary() => any()}.

%% Example:
%% kms_exception() :: #{
%%   <<"kmsError">> => string(),
%%   <<"message">> => string()
%% }
-type kms_exception() :: #{binary() => any()}.

%% Example:
%% repository_scanning_configuration() :: #{
%%   <<"appliedScanFilters">> => list(scanning_repository_filter()()),
%%   <<"repositoryArn">> => string(),
%%   <<"repositoryName">> => string(),
%%   <<"scanFrequency">> => list(any()),
%%   <<"scanOnPush">> => boolean()
%% }
-type repository_scanning_configuration() :: #{binary() => any()}.

%% Example:
%% get_lifecycle_policy_request() :: #{
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type get_lifecycle_policy_request() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% update_pull_through_cache_rule_response() :: #{
%%   <<"credentialArn">> => string(),
%%   <<"ecrRepositoryPrefix">> => string(),
%%   <<"registryId">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type update_pull_through_cache_rule_response() :: #{binary() => any()}.

%% Example:
%% put_replication_configuration_request() :: #{
%%   <<"replicationConfiguration">> := replication_configuration()
%% }
-type put_replication_configuration_request() :: #{binary() => any()}.

%% Example:
%% batch_check_layer_availability_request() :: #{
%%   <<"layerDigests">> := list(string()()),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type batch_check_layer_availability_request() :: #{binary() => any()}.

%% Example:
%% get_registry_scanning_configuration_request() :: #{

%% }
-type get_registry_scanning_configuration_request() :: #{binary() => any()}.

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
%% lifecycle_policy_preview_summary() :: #{
%%   <<"expiringImageTotalCount">> => integer()
%% }
-type lifecycle_policy_preview_summary() :: #{binary() => any()}.

%% Example:
%% repository_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type repository_not_found_exception() :: #{binary() => any()}.

%% Example:
%% attribute() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type attribute() :: #{binary() => any()}.

%% Example:
%% put_lifecycle_policy_response() :: #{
%%   <<"lifecyclePolicyText">> => string(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> => string()
%% }
-type put_lifecycle_policy_response() :: #{binary() => any()}.

%% Example:
%% describe_image_replication_status_request() :: #{
%%   <<"imageId">> := image_identifier(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type describe_image_replication_status_request() :: #{binary() => any()}.

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
%%   <<"repositories">> => list(repository()())
%% }
-type describe_repositories_response() :: #{binary() => any()}.

%% Example:
%% get_registry_policy_response() :: #{
%%   <<"policyText">> => string(),
%%   <<"registryId">> => string()
%% }
-type get_registry_policy_response() :: #{binary() => any()}.

%% Example:
%% describe_pull_through_cache_rules_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"pullThroughCacheRules">> => list(pull_through_cache_rule()())
%% }
-type describe_pull_through_cache_rules_response() :: #{binary() => any()}.

%% Example:
%% pull_through_cache_rule() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"credentialArn">> => string(),
%%   <<"ecrRepositoryPrefix">> => string(),
%%   <<"registryId">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"upstreamRegistry">> => list(any()),
%%   <<"upstreamRegistryUrl">> => string()
%% }
-type pull_through_cache_rule() :: #{binary() => any()}.

%% Example:
%% batch_get_repository_scanning_configuration_request() :: #{
%%   <<"repositoryNames">> := list(string()())
%% }
-type batch_get_repository_scanning_configuration_request() :: #{binary() => any()}.

%% Example:
%% resource_details() :: #{
%%   <<"awsEcrContainerImage">> => aws_ecr_container_image_details()
%% }
-type resource_details() :: #{binary() => any()}.

%% Example:
%% repository_scanning_configuration_failure() :: #{
%%   <<"failureCode">> => list(any()),
%%   <<"failureReason">> => string(),
%%   <<"repositoryName">> => string()
%% }
-type repository_scanning_configuration_failure() :: #{binary() => any()}.

%% Example:
%% delete_pull_through_cache_rule_request() :: #{
%%   <<"ecrRepositoryPrefix">> := string(),
%%   <<"registryId">> => string()
%% }
-type delete_pull_through_cache_rule_request() :: #{binary() => any()}.

%% Example:
%% lifecycle_policy_preview_result() :: #{
%%   <<"action">> => lifecycle_policy_rule_action(),
%%   <<"appliedRulePriority">> => integer(),
%%   <<"imageDigest">> => string(),
%%   <<"imagePushedAt">> => non_neg_integer(),
%%   <<"imageTags">> => list(string()())
%% }
-type lifecycle_policy_preview_result() :: #{binary() => any()}.

%% Example:
%% start_lifecycle_policy_preview_request() :: #{
%%   <<"lifecyclePolicyText">> => string(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type start_lifecycle_policy_preview_request() :: #{binary() => any()}.

%% Example:
%% aws_ecr_container_image_details() :: #{
%%   <<"architecture">> => string(),
%%   <<"author">> => string(),
%%   <<"imageHash">> => string(),
%%   <<"imageTags">> => list(string()()),
%%   <<"platform">> => string(),
%%   <<"pushedAt">> => non_neg_integer(),
%%   <<"registry">> => string(),
%%   <<"repositoryName">> => string()
%% }
-type aws_ecr_container_image_details() :: #{binary() => any()}.

%% Example:
%% authorization_data() :: #{
%%   <<"authorizationToken">> => string(),
%%   <<"expiresAt">> => non_neg_integer(),
%%   <<"proxyEndpoint">> => string()
%% }
-type authorization_data() :: #{binary() => any()}.

%% Example:
%% describe_repository_creation_templates_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"prefixes">> => list(string()())
%% }
-type describe_repository_creation_templates_request() :: #{binary() => any()}.

%% Example:
%% image_detail() :: #{
%%   <<"artifactMediaType">> => string(),
%%   <<"imageDigest">> => string(),
%%   <<"imageManifestMediaType">> => string(),
%%   <<"imagePushedAt">> => non_neg_integer(),
%%   <<"imageScanFindingsSummary">> => image_scan_findings_summary(),
%%   <<"imageScanStatus">> => image_scan_status(),
%%   <<"imageSizeInBytes">> => float(),
%%   <<"imageTags">> => list(string()()),
%%   <<"lastRecordedPullTime">> => non_neg_integer(),
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
%% describe_images_filter() :: #{
%%   <<"tagStatus">> => list(any())
%% }
-type describe_images_filter() :: #{binary() => any()}.

%% Example:
%% initiate_layer_upload_response() :: #{
%%   <<"partSize">> => float(),
%%   <<"uploadId">> => string()
%% }
-type initiate_layer_upload_response() :: #{binary() => any()}.

%% Example:
%% batch_get_image_response() :: #{
%%   <<"failures">> => list(image_failure()()),
%%   <<"images">> => list(image()())
%% }
-type batch_get_image_response() :: #{binary() => any()}.

%% Example:
%% update_repository_creation_template_request() :: #{
%%   <<"appliedFor">> => list(list(any())()),
%%   <<"customRoleArn">> => string(),
%%   <<"description">> => string(),
%%   <<"encryptionConfiguration">> => encryption_configuration_for_repository_creation_template(),
%%   <<"imageTagMutability">> => list(any()),
%%   <<"lifecyclePolicy">> => string(),
%%   <<"prefix">> := string(),
%%   <<"repositoryPolicy">> => string(),
%%   <<"resourceTags">> => list(tag()())
%% }
-type update_repository_creation_template_request() :: #{binary() => any()}.

%% Example:
%% get_download_url_for_layer_request() :: #{
%%   <<"layerDigest">> := string(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> := string()
%% }
-type get_download_url_for_layer_request() :: #{binary() => any()}.

%% Example:
%% put_registry_policy_request() :: #{
%%   <<"policyText">> := string()
%% }
-type put_registry_policy_request() :: #{binary() => any()}.

%% Example:
%% describe_image_replication_status_response() :: #{
%%   <<"imageId">> => image_identifier(),
%%   <<"replicationStatuses">> => list(image_replication_status()()),
%%   <<"repositoryName">> => string()
%% }
-type describe_image_replication_status_response() :: #{binary() => any()}.

%% Example:
%% too_many_tags_exception() :: #{
%%   <<"message">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.

%% Example:
%% get_lifecycle_policy_response() :: #{
%%   <<"lastEvaluatedAt">> => non_neg_integer(),
%%   <<"lifecyclePolicyText">> => string(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> => string()
%% }
-type get_lifecycle_policy_response() :: #{binary() => any()}.

%% Example:
%% start_lifecycle_policy_preview_response() :: #{
%%   <<"lifecyclePolicyText">> => string(),
%%   <<"registryId">> => string(),
%%   <<"repositoryName">> => string(),
%%   <<"status">> => list(any())
%% }
-type start_lifecycle_policy_preview_response() :: #{binary() => any()}.

%% Example:
%% scanning_repository_filter() :: #{
%%   <<"filter">> => string(),
%%   <<"filterType">> => list(any())
%% }
-type scanning_repository_filter() :: #{binary() => any()}.

%% Example:
%% unable_to_access_secret_exception() :: #{
%%   <<"message">> => string()
%% }
-type unable_to_access_secret_exception() :: #{binary() => any()}.

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

%% Example:
%% resource() :: #{
%%   <<"details">> => resource_details(),
%%   <<"id">> => string(),
%%   <<"tags">> => map(),
%%   <<"type">> => string()
%% }
-type resource() :: #{binary() => any()}.

%% Example:
%% unsupported_upstream_registry_exception() :: #{
%%   <<"message">> => string()
%% }
-type unsupported_upstream_registry_exception() :: #{binary() => any()}.

-type batch_check_layer_availability_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    invalid_parameter_exception().

-type batch_delete_image_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    invalid_parameter_exception().

-type batch_get_image_errors() ::
    limit_exceeded_exception() | 
    repository_not_found_exception() | 
    server_exception() | 
    invalid_parameter_exception() | 
    unable_to_get_upstream_image_exception().

-type batch_get_repository_scanning_configuration_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    validation_exception() | 
    invalid_parameter_exception().

-type complete_layer_upload_errors() ::
    empty_upload_exception() | 
    repository_not_found_exception() | 
    server_exception() | 
    kms_exception() | 
    invalid_layer_exception() | 
    invalid_parameter_exception() | 
    layer_part_too_small_exception() | 
    layer_already_exists_exception() | 
    upload_not_found_exception().

-type create_pull_through_cache_rule_errors() ::
    unsupported_upstream_registry_exception() | 
    unable_to_access_secret_exception() | 
    limit_exceeded_exception() | 
    server_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    secret_not_found_exception() | 
    unable_to_decrypt_secret_value_exception() | 
    pull_through_cache_rule_already_exists_exception().

-type create_repository_errors() ::
    too_many_tags_exception() | 
    limit_exceeded_exception() | 
    server_exception() | 
    kms_exception() | 
    invalid_parameter_exception() | 
    repository_already_exists_exception() | 
    invalid_tag_parameter_exception().

-type create_repository_creation_template_errors() ::
    limit_exceeded_exception() | 
    server_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    template_already_exists_exception().

-type delete_lifecycle_policy_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    lifecycle_policy_not_found_exception().

-type delete_pull_through_cache_rule_errors() ::
    server_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    pull_through_cache_rule_not_found_exception().

-type delete_registry_policy_errors() ::
    server_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    registry_policy_not_found_exception().

-type delete_repository_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    kms_exception() | 
    invalid_parameter_exception() | 
    repository_not_empty_exception().

-type delete_repository_creation_template_errors() ::
    server_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    template_not_found_exception().

-type delete_repository_policy_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    invalid_parameter_exception() | 
    repository_policy_not_found_exception().

-type describe_image_replication_status_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    image_not_found_exception().

-type describe_image_scan_findings_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    scan_not_found_exception() | 
    image_not_found_exception().

-type describe_images_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    invalid_parameter_exception() | 
    image_not_found_exception().

-type describe_pull_through_cache_rules_errors() ::
    server_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    pull_through_cache_rule_not_found_exception().

-type describe_registry_errors() ::
    server_exception() | 
    validation_exception() | 
    invalid_parameter_exception().

-type describe_repositories_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    invalid_parameter_exception().

-type describe_repository_creation_templates_errors() ::
    server_exception() | 
    validation_exception() | 
    invalid_parameter_exception().

-type get_account_setting_errors() ::
    server_exception() | 
    validation_exception() | 
    invalid_parameter_exception().

-type get_authorization_token_errors() ::
    server_exception() | 
    invalid_parameter_exception().

-type get_download_url_for_layer_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    invalid_parameter_exception() | 
    layer_inaccessible_exception() | 
    unable_to_get_upstream_layer_exception() | 
    layers_not_found_exception().

-type get_lifecycle_policy_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    lifecycle_policy_not_found_exception().

-type get_lifecycle_policy_preview_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    lifecycle_policy_preview_not_found_exception().

-type get_registry_policy_errors() ::
    server_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    registry_policy_not_found_exception().

-type get_registry_scanning_configuration_errors() ::
    server_exception() | 
    validation_exception() | 
    invalid_parameter_exception().

-type get_repository_policy_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    invalid_parameter_exception() | 
    repository_policy_not_found_exception().

-type initiate_layer_upload_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    kms_exception() | 
    invalid_parameter_exception().

-type list_images_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    invalid_parameter_exception().

-type list_tags_for_resource_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    invalid_parameter_exception().

-type put_account_setting_errors() ::
    limit_exceeded_exception() | 
    server_exception() | 
    validation_exception() | 
    invalid_parameter_exception().

-type put_image_errors() ::
    limit_exceeded_exception() | 
    repository_not_found_exception() | 
    server_exception() | 
    kms_exception() | 
    invalid_parameter_exception() | 
    referenced_images_not_found_exception() | 
    image_tag_already_exists_exception() | 
    layers_not_found_exception() | 
    image_already_exists_exception() | 
    image_digest_does_not_match_exception().

-type put_image_scanning_configuration_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    validation_exception() | 
    invalid_parameter_exception().

-type put_image_tag_mutability_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    invalid_parameter_exception().

-type put_lifecycle_policy_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    validation_exception() | 
    invalid_parameter_exception().

-type put_registry_policy_errors() ::
    server_exception() | 
    validation_exception() | 
    invalid_parameter_exception().

-type put_registry_scanning_configuration_errors() ::
    server_exception() | 
    validation_exception() | 
    invalid_parameter_exception().

-type put_replication_configuration_errors() ::
    server_exception() | 
    validation_exception() | 
    invalid_parameter_exception().

-type set_repository_policy_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    invalid_parameter_exception().

-type start_image_scan_errors() ::
    limit_exceeded_exception() | 
    repository_not_found_exception() | 
    server_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    unsupported_image_type_exception() | 
    image_not_found_exception().

-type start_lifecycle_policy_preview_errors() ::
    repository_not_found_exception() | 
    server_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    lifecycle_policy_not_found_exception() | 
    lifecycle_policy_preview_in_progress_exception().

-type tag_resource_errors() ::
    too_many_tags_exception() | 
    repository_not_found_exception() | 
    server_exception() | 
    invalid_parameter_exception() | 
    invalid_tag_parameter_exception().

-type untag_resource_errors() ::
    too_many_tags_exception() | 
    repository_not_found_exception() | 
    server_exception() | 
    invalid_parameter_exception() | 
    invalid_tag_parameter_exception().

-type update_pull_through_cache_rule_errors() ::
    unable_to_access_secret_exception() | 
    server_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    secret_not_found_exception() | 
    pull_through_cache_rule_not_found_exception() | 
    unable_to_decrypt_secret_value_exception().

-type update_repository_creation_template_errors() ::
    server_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    template_not_found_exception().

-type upload_layer_part_errors() ::
    limit_exceeded_exception() | 
    repository_not_found_exception() | 
    server_exception() | 
    kms_exception() | 
    invalid_parameter_exception() | 
    invalid_layer_part_exception() | 
    upload_not_found_exception().

-type validate_pull_through_cache_rule_errors() ::
    server_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    pull_through_cache_rule_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Checks the availability of one or more image layers in a repository.
%%
%% When an image is pushed to a repository, each image layer is checked to
%% verify if it
%% has been uploaded before. If it has been uploaded, then the image layer is
%% skipped.
%%
%% This operation is used by the Amazon ECR proxy and is not generally used
%% by
%% customers for pulling and pushing images. In most cases, you should use
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

%% @doc Deletes a list of specified images within a repository.
%%
%% Images are specified with
%% either an `imageTag' or `imageDigest'.
%%
%% You can remove a tag from an image by specifying the image's tag in
%% your request. When
%% you remove the last tag from an image, the image is deleted from your
%% repository.
%%
%% You can completely delete an image (and all of its tags) by specifying the
%% image's
%% digest in your request.
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

%% @doc Gets detailed information for an image.
%%
%% Images are specified with either an
%% `imageTag' or `imageDigest'.
%%
%% When an image is pulled, the BatchGetImage API is called once to retrieve
%% the image
%% manifest.
-spec batch_get_image(aws_client:aws_client(), batch_get_image_request()) ->
    {ok, batch_get_image_response(), tuple()} |
    {error, any()} |
    {error, batch_get_image_errors(), tuple()}.
batch_get_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_image(Client, Input, []).

-spec batch_get_image(aws_client:aws_client(), batch_get_image_request(), proplists:proplist()) ->
    {ok, batch_get_image_response(), tuple()} |
    {error, any()} |
    {error, batch_get_image_errors(), tuple()}.
batch_get_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetImage">>, Input, Options).

%% @doc Gets the scanning configuration for one or more repositories.
-spec batch_get_repository_scanning_configuration(aws_client:aws_client(), batch_get_repository_scanning_configuration_request()) ->
    {ok, batch_get_repository_scanning_configuration_response(), tuple()} |
    {error, any()} |
    {error, batch_get_repository_scanning_configuration_errors(), tuple()}.
batch_get_repository_scanning_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_repository_scanning_configuration(Client, Input, []).

-spec batch_get_repository_scanning_configuration(aws_client:aws_client(), batch_get_repository_scanning_configuration_request(), proplists:proplist()) ->
    {ok, batch_get_repository_scanning_configuration_response(), tuple()} |
    {error, any()} |
    {error, batch_get_repository_scanning_configuration_errors(), tuple()}.
batch_get_repository_scanning_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetRepositoryScanningConfiguration">>, Input, Options).

%% @doc Informs Amazon ECR that the image layer upload has completed for a
%% specified registry,
%% repository name, and upload ID.
%%
%% You can optionally provide a `sha256' digest
%% of the image layer for data validation purposes.
%%
%% When an image is pushed, the CompleteLayerUpload API is called once per
%% each new image
%% layer to verify that the upload has completed.
%%
%% This operation is used by the Amazon ECR proxy and is not generally used
%% by
%% customers for pulling and pushing images. In most cases, you should use
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

%% @doc Creates a pull through cache rule.
%%
%% A pull through cache rule provides a way to cache
%% images from an upstream registry source in your Amazon ECR private
%% registry. For more
%% information, see Using pull through cache
%% rules:
%% https://docs.aws.amazon.com/AmazonECR/latest/userguide/pull-through-cache.html
%% in the Amazon Elastic Container Registry User Guide.
-spec create_pull_through_cache_rule(aws_client:aws_client(), create_pull_through_cache_rule_request()) ->
    {ok, create_pull_through_cache_rule_response(), tuple()} |
    {error, any()} |
    {error, create_pull_through_cache_rule_errors(), tuple()}.
create_pull_through_cache_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_pull_through_cache_rule(Client, Input, []).

-spec create_pull_through_cache_rule(aws_client:aws_client(), create_pull_through_cache_rule_request(), proplists:proplist()) ->
    {ok, create_pull_through_cache_rule_response(), tuple()} |
    {error, any()} |
    {error, create_pull_through_cache_rule_errors(), tuple()}.
create_pull_through_cache_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePullThroughCacheRule">>, Input, Options).

%% @doc Creates a repository.
%%
%% For more information, see Amazon ECR repositories:
%% https://docs.aws.amazon.com/AmazonECR/latest/userguide/Repositories.html
%% in the
%% Amazon Elastic Container Registry User Guide.
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

%% @doc Creates a repository creation template.
%%
%% This template is used to define the settings
%% for repositories created by Amazon ECR on your behalf. For example,
%% repositories created
%% through pull through cache actions. For more information, see Private
%% repository creation templates:
%% https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-creation-templates.html
%% in the
%% Amazon Elastic Container Registry User Guide.
-spec create_repository_creation_template(aws_client:aws_client(), create_repository_creation_template_request()) ->
    {ok, create_repository_creation_template_response(), tuple()} |
    {error, any()} |
    {error, create_repository_creation_template_errors(), tuple()}.
create_repository_creation_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_repository_creation_template(Client, Input, []).

-spec create_repository_creation_template(aws_client:aws_client(), create_repository_creation_template_request(), proplists:proplist()) ->
    {ok, create_repository_creation_template_response(), tuple()} |
    {error, any()} |
    {error, create_repository_creation_template_errors(), tuple()}.
create_repository_creation_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRepositoryCreationTemplate">>, Input, Options).

%% @doc Deletes the lifecycle policy associated with the specified
%% repository.
-spec delete_lifecycle_policy(aws_client:aws_client(), delete_lifecycle_policy_request()) ->
    {ok, delete_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_lifecycle_policy_errors(), tuple()}.
delete_lifecycle_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_lifecycle_policy(Client, Input, []).

-spec delete_lifecycle_policy(aws_client:aws_client(), delete_lifecycle_policy_request(), proplists:proplist()) ->
    {ok, delete_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_lifecycle_policy_errors(), tuple()}.
delete_lifecycle_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLifecyclePolicy">>, Input, Options).

%% @doc Deletes a pull through cache rule.
-spec delete_pull_through_cache_rule(aws_client:aws_client(), delete_pull_through_cache_rule_request()) ->
    {ok, delete_pull_through_cache_rule_response(), tuple()} |
    {error, any()} |
    {error, delete_pull_through_cache_rule_errors(), tuple()}.
delete_pull_through_cache_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_pull_through_cache_rule(Client, Input, []).

-spec delete_pull_through_cache_rule(aws_client:aws_client(), delete_pull_through_cache_rule_request(), proplists:proplist()) ->
    {ok, delete_pull_through_cache_rule_response(), tuple()} |
    {error, any()} |
    {error, delete_pull_through_cache_rule_errors(), tuple()}.
delete_pull_through_cache_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePullThroughCacheRule">>, Input, Options).

%% @doc Deletes the registry permissions policy.
-spec delete_registry_policy(aws_client:aws_client(), delete_registry_policy_request()) ->
    {ok, delete_registry_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_registry_policy_errors(), tuple()}.
delete_registry_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_registry_policy(Client, Input, []).

-spec delete_registry_policy(aws_client:aws_client(), delete_registry_policy_request(), proplists:proplist()) ->
    {ok, delete_registry_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_registry_policy_errors(), tuple()}.
delete_registry_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRegistryPolicy">>, Input, Options).

%% @doc Deletes a repository.
%%
%% If the repository isn't empty, you must either delete the
%% contents of the repository or use the `force' option to delete the
%% repository
%% and have Amazon ECR delete all of its contents on your behalf.
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

%% @doc Deletes a repository creation template.
-spec delete_repository_creation_template(aws_client:aws_client(), delete_repository_creation_template_request()) ->
    {ok, delete_repository_creation_template_response(), tuple()} |
    {error, any()} |
    {error, delete_repository_creation_template_errors(), tuple()}.
delete_repository_creation_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_repository_creation_template(Client, Input, []).

-spec delete_repository_creation_template(aws_client:aws_client(), delete_repository_creation_template_request(), proplists:proplist()) ->
    {ok, delete_repository_creation_template_response(), tuple()} |
    {error, any()} |
    {error, delete_repository_creation_template_errors(), tuple()}.
delete_repository_creation_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRepositoryCreationTemplate">>, Input, Options).

%% @doc Deletes the repository policy associated with the specified
%% repository.
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

%% @doc Returns the replication status for a specified image.
-spec describe_image_replication_status(aws_client:aws_client(), describe_image_replication_status_request()) ->
    {ok, describe_image_replication_status_response(), tuple()} |
    {error, any()} |
    {error, describe_image_replication_status_errors(), tuple()}.
describe_image_replication_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_image_replication_status(Client, Input, []).

-spec describe_image_replication_status(aws_client:aws_client(), describe_image_replication_status_request(), proplists:proplist()) ->
    {ok, describe_image_replication_status_response(), tuple()} |
    {error, any()} |
    {error, describe_image_replication_status_errors(), tuple()}.
describe_image_replication_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeImageReplicationStatus">>, Input, Options).

%% @doc Returns the scan findings for the specified image.
-spec describe_image_scan_findings(aws_client:aws_client(), describe_image_scan_findings_request()) ->
    {ok, describe_image_scan_findings_response(), tuple()} |
    {error, any()} |
    {error, describe_image_scan_findings_errors(), tuple()}.
describe_image_scan_findings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_image_scan_findings(Client, Input, []).

-spec describe_image_scan_findings(aws_client:aws_client(), describe_image_scan_findings_request(), proplists:proplist()) ->
    {ok, describe_image_scan_findings_response(), tuple()} |
    {error, any()} |
    {error, describe_image_scan_findings_errors(), tuple()}.
describe_image_scan_findings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeImageScanFindings">>, Input, Options).

%% @doc Returns metadata about the images in a repository.
%%
%% Beginning with Docker version 1.9, the Docker client compresses image
%% layers
%% before pushing them to a V2 Docker registry. The output of the
%% ```
%% docker images''' command shows the uncompressed image size, so
%% it may return a
%% larger image size than the image sizes returned by `DescribeImages'.
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

%% @doc Returns the pull through cache rules for a registry.
-spec describe_pull_through_cache_rules(aws_client:aws_client(), describe_pull_through_cache_rules_request()) ->
    {ok, describe_pull_through_cache_rules_response(), tuple()} |
    {error, any()} |
    {error, describe_pull_through_cache_rules_errors(), tuple()}.
describe_pull_through_cache_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_pull_through_cache_rules(Client, Input, []).

-spec describe_pull_through_cache_rules(aws_client:aws_client(), describe_pull_through_cache_rules_request(), proplists:proplist()) ->
    {ok, describe_pull_through_cache_rules_response(), tuple()} |
    {error, any()} |
    {error, describe_pull_through_cache_rules_errors(), tuple()}.
describe_pull_through_cache_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePullThroughCacheRules">>, Input, Options).

%% @doc Describes the settings for a registry.
%%
%% The replication configuration for a repository
%% can be created or updated with the `PutReplicationConfiguration' API
%% action.
-spec describe_registry(aws_client:aws_client(), describe_registry_request()) ->
    {ok, describe_registry_response(), tuple()} |
    {error, any()} |
    {error, describe_registry_errors(), tuple()}.
describe_registry(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_registry(Client, Input, []).

-spec describe_registry(aws_client:aws_client(), describe_registry_request(), proplists:proplist()) ->
    {ok, describe_registry_response(), tuple()} |
    {error, any()} |
    {error, describe_registry_errors(), tuple()}.
describe_registry(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRegistry">>, Input, Options).

%% @doc Describes image repositories in a registry.
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

%% @doc Returns details about the repository creation templates in a
%% registry.
%%
%% The
%% `prefixes' request parameter can be used to return the details for a
%% specific repository creation template.
-spec describe_repository_creation_templates(aws_client:aws_client(), describe_repository_creation_templates_request()) ->
    {ok, describe_repository_creation_templates_response(), tuple()} |
    {error, any()} |
    {error, describe_repository_creation_templates_errors(), tuple()}.
describe_repository_creation_templates(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_repository_creation_templates(Client, Input, []).

-spec describe_repository_creation_templates(aws_client:aws_client(), describe_repository_creation_templates_request(), proplists:proplist()) ->
    {ok, describe_repository_creation_templates_response(), tuple()} |
    {error, any()} |
    {error, describe_repository_creation_templates_errors(), tuple()}.
describe_repository_creation_templates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRepositoryCreationTemplates">>, Input, Options).

%% @doc Retrieves the account setting value for the specified setting name.
-spec get_account_setting(aws_client:aws_client(), get_account_setting_request()) ->
    {ok, get_account_setting_response(), tuple()} |
    {error, any()} |
    {error, get_account_setting_errors(), tuple()}.
get_account_setting(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_account_setting(Client, Input, []).

-spec get_account_setting(aws_client:aws_client(), get_account_setting_request(), proplists:proplist()) ->
    {ok, get_account_setting_response(), tuple()} |
    {error, any()} |
    {error, get_account_setting_errors(), tuple()}.
get_account_setting(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccountSetting">>, Input, Options).

%% @doc Retrieves an authorization token.
%%
%% An authorization token represents your IAM
%% authentication credentials and can be used to access any Amazon ECR
%% registry that your IAM
%% principal has access to. The authorization token is valid for 12 hours.
%%
%% The `authorizationToken' returned is a base64 encoded string that can
%% be
%% decoded and used in a `docker login' command to authenticate to a
%% registry.
%% The CLI offers an `get-login-password' command that simplifies the
%% login
%% process. For more information, see Registry
%% authentication:
%% https://docs.aws.amazon.com/AmazonECR/latest/userguide/Registries.html#registry_auth
%% in the Amazon Elastic Container Registry User Guide.
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

%% @doc Retrieves the pre-signed Amazon S3 download URL corresponding to an
%% image layer.
%%
%% You can
%% only get URLs for image layers that are referenced in an image.
%%
%% When an image is pulled, the GetDownloadUrlForLayer API is called once per
%% image layer
%% that is not already cached.
%%
%% This operation is used by the Amazon ECR proxy and is not generally used
%% by
%% customers for pulling and pushing images. In most cases, you should use
%% the `docker' CLI to pull, tag, and push images.
-spec get_download_url_for_layer(aws_client:aws_client(), get_download_url_for_layer_request()) ->
    {ok, get_download_url_for_layer_response(), tuple()} |
    {error, any()} |
    {error, get_download_url_for_layer_errors(), tuple()}.
get_download_url_for_layer(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_download_url_for_layer(Client, Input, []).

-spec get_download_url_for_layer(aws_client:aws_client(), get_download_url_for_layer_request(), proplists:proplist()) ->
    {ok, get_download_url_for_layer_response(), tuple()} |
    {error, any()} |
    {error, get_download_url_for_layer_errors(), tuple()}.
get_download_url_for_layer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDownloadUrlForLayer">>, Input, Options).

%% @doc Retrieves the lifecycle policy for the specified repository.
-spec get_lifecycle_policy(aws_client:aws_client(), get_lifecycle_policy_request()) ->
    {ok, get_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, get_lifecycle_policy_errors(), tuple()}.
get_lifecycle_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_lifecycle_policy(Client, Input, []).

-spec get_lifecycle_policy(aws_client:aws_client(), get_lifecycle_policy_request(), proplists:proplist()) ->
    {ok, get_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, get_lifecycle_policy_errors(), tuple()}.
get_lifecycle_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLifecyclePolicy">>, Input, Options).

%% @doc Retrieves the results of the lifecycle policy preview request for the
%% specified
%% repository.
-spec get_lifecycle_policy_preview(aws_client:aws_client(), get_lifecycle_policy_preview_request()) ->
    {ok, get_lifecycle_policy_preview_response(), tuple()} |
    {error, any()} |
    {error, get_lifecycle_policy_preview_errors(), tuple()}.
get_lifecycle_policy_preview(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_lifecycle_policy_preview(Client, Input, []).

-spec get_lifecycle_policy_preview(aws_client:aws_client(), get_lifecycle_policy_preview_request(), proplists:proplist()) ->
    {ok, get_lifecycle_policy_preview_response(), tuple()} |
    {error, any()} |
    {error, get_lifecycle_policy_preview_errors(), tuple()}.
get_lifecycle_policy_preview(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLifecyclePolicyPreview">>, Input, Options).

%% @doc Retrieves the permissions policy for a registry.
-spec get_registry_policy(aws_client:aws_client(), get_registry_policy_request()) ->
    {ok, get_registry_policy_response(), tuple()} |
    {error, any()} |
    {error, get_registry_policy_errors(), tuple()}.
get_registry_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_registry_policy(Client, Input, []).

-spec get_registry_policy(aws_client:aws_client(), get_registry_policy_request(), proplists:proplist()) ->
    {ok, get_registry_policy_response(), tuple()} |
    {error, any()} |
    {error, get_registry_policy_errors(), tuple()}.
get_registry_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRegistryPolicy">>, Input, Options).

%% @doc Retrieves the scanning configuration for a registry.
-spec get_registry_scanning_configuration(aws_client:aws_client(), get_registry_scanning_configuration_request()) ->
    {ok, get_registry_scanning_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_registry_scanning_configuration_errors(), tuple()}.
get_registry_scanning_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_registry_scanning_configuration(Client, Input, []).

-spec get_registry_scanning_configuration(aws_client:aws_client(), get_registry_scanning_configuration_request(), proplists:proplist()) ->
    {ok, get_registry_scanning_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_registry_scanning_configuration_errors(), tuple()}.
get_registry_scanning_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRegistryScanningConfiguration">>, Input, Options).

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
%% When an image is pushed, the InitiateLayerUpload API is called once per
%% image layer
%% that has not already been uploaded. Whether or not an image layer has been
%% uploaded is
%% determined by the BatchCheckLayerAvailability API action.
%%
%% This operation is used by the Amazon ECR proxy and is not generally used
%% by
%% customers for pulling and pushing images. In most cases, you should use
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

%% @doc Lists all the image IDs for the specified repository.
%%
%% You can filter images based on whether or not they are tagged by using the
%% `tagStatus' filter and specifying either `TAGGED',
%% `UNTAGGED' or `ANY'. For example, you can filter your results
%% to return only `UNTAGGED' images and then pipe that result to a
%% `BatchDeleteImage' operation to delete them. Or, you can filter your
%% results to return only `TAGGED' images to list all of the tags in your
%% repository.
-spec list_images(aws_client:aws_client(), list_images_request()) ->
    {ok, list_images_response(), tuple()} |
    {error, any()} |
    {error, list_images_errors(), tuple()}.
list_images(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_images(Client, Input, []).

-spec list_images(aws_client:aws_client(), list_images_request(), proplists:proplist()) ->
    {ok, list_images_response(), tuple()} |
    {error, any()} |
    {error, list_images_errors(), tuple()}.
list_images(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListImages">>, Input, Options).

%% @doc List the tags for an Amazon ECR resource.
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

%% @doc Allows you to change the basic scan type version or registry policy
%% scope.
-spec put_account_setting(aws_client:aws_client(), put_account_setting_request()) ->
    {ok, put_account_setting_response(), tuple()} |
    {error, any()} |
    {error, put_account_setting_errors(), tuple()}.
put_account_setting(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_account_setting(Client, Input, []).

-spec put_account_setting(aws_client:aws_client(), put_account_setting_request(), proplists:proplist()) ->
    {ok, put_account_setting_response(), tuple()} |
    {error, any()} |
    {error, put_account_setting_errors(), tuple()}.
put_account_setting(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAccountSetting">>, Input, Options).

%% @doc Creates or updates the image manifest and tags associated with an
%% image.
%%
%% When an image is pushed and all new image layers have been uploaded, the
%% PutImage API
%% is called once to create or update the image manifest and the tags
%% associated with the
%% image.
%%
%% This operation is used by the Amazon ECR proxy and is not generally used
%% by
%% customers for pulling and pushing images. In most cases, you should use
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

%% @doc
%% The `PutImageScanningConfiguration' API is being deprecated, in favor
%% of specifying the image scanning configuration at the registry level.
%%
%% For more
%% information, see `PutRegistryScanningConfiguration'.
%%
%% Updates the image scanning configuration for the specified repository.
-spec put_image_scanning_configuration(aws_client:aws_client(), put_image_scanning_configuration_request()) ->
    {ok, put_image_scanning_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_image_scanning_configuration_errors(), tuple()}.
put_image_scanning_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_image_scanning_configuration(Client, Input, []).

-spec put_image_scanning_configuration(aws_client:aws_client(), put_image_scanning_configuration_request(), proplists:proplist()) ->
    {ok, put_image_scanning_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_image_scanning_configuration_errors(), tuple()}.
put_image_scanning_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutImageScanningConfiguration">>, Input, Options).

%% @doc Updates the image tag mutability settings for the specified
%% repository.
%%
%% For more
%% information, see Image tag
%% mutability:
%% https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-tag-mutability.html
%% in the Amazon Elastic Container Registry User Guide.
-spec put_image_tag_mutability(aws_client:aws_client(), put_image_tag_mutability_request()) ->
    {ok, put_image_tag_mutability_response(), tuple()} |
    {error, any()} |
    {error, put_image_tag_mutability_errors(), tuple()}.
put_image_tag_mutability(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_image_tag_mutability(Client, Input, []).

-spec put_image_tag_mutability(aws_client:aws_client(), put_image_tag_mutability_request(), proplists:proplist()) ->
    {ok, put_image_tag_mutability_response(), tuple()} |
    {error, any()} |
    {error, put_image_tag_mutability_errors(), tuple()}.
put_image_tag_mutability(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutImageTagMutability">>, Input, Options).

%% @doc Creates or updates the lifecycle policy for the specified repository.
%%
%% For more
%% information, see Lifecycle policy
%% template:
%% https://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html.
-spec put_lifecycle_policy(aws_client:aws_client(), put_lifecycle_policy_request()) ->
    {ok, put_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, put_lifecycle_policy_errors(), tuple()}.
put_lifecycle_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_lifecycle_policy(Client, Input, []).

-spec put_lifecycle_policy(aws_client:aws_client(), put_lifecycle_policy_request(), proplists:proplist()) ->
    {ok, put_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, put_lifecycle_policy_errors(), tuple()}.
put_lifecycle_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutLifecyclePolicy">>, Input, Options).

%% @doc Creates or updates the permissions policy for your registry.
%%
%% A registry policy is used to specify permissions for another Amazon Web
%% Services account and is used
%% when configuring cross-account replication. For more information, see
%% Registry permissions:
%% https://docs.aws.amazon.com/AmazonECR/latest/userguide/registry-permissions.html
%% in the Amazon Elastic Container Registry User Guide.
-spec put_registry_policy(aws_client:aws_client(), put_registry_policy_request()) ->
    {ok, put_registry_policy_response(), tuple()} |
    {error, any()} |
    {error, put_registry_policy_errors(), tuple()}.
put_registry_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_registry_policy(Client, Input, []).

-spec put_registry_policy(aws_client:aws_client(), put_registry_policy_request(), proplists:proplist()) ->
    {ok, put_registry_policy_response(), tuple()} |
    {error, any()} |
    {error, put_registry_policy_errors(), tuple()}.
put_registry_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRegistryPolicy">>, Input, Options).

%% @doc Creates or updates the scanning configuration for your private
%% registry.
-spec put_registry_scanning_configuration(aws_client:aws_client(), put_registry_scanning_configuration_request()) ->
    {ok, put_registry_scanning_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_registry_scanning_configuration_errors(), tuple()}.
put_registry_scanning_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_registry_scanning_configuration(Client, Input, []).

-spec put_registry_scanning_configuration(aws_client:aws_client(), put_registry_scanning_configuration_request(), proplists:proplist()) ->
    {ok, put_registry_scanning_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_registry_scanning_configuration_errors(), tuple()}.
put_registry_scanning_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRegistryScanningConfiguration">>, Input, Options).

%% @doc Creates or updates the replication configuration for a registry.
%%
%% The existing
%% replication configuration for a repository can be retrieved with the
%% `DescribeRegistry' API action. The first time the
%% PutReplicationConfiguration API is called, a service-linked IAM role is
%% created in
%% your account for the replication process. For more information, see Using
%% service-linked roles for Amazon ECR:
%% https://docs.aws.amazon.com/AmazonECR/latest/userguide/using-service-linked-roles.html
%% in the Amazon Elastic Container Registry User Guide.
%% For more information on the custom role for replication, see Creating an
%% IAM role for replication:
%% https://docs.aws.amazon.com/AmazonECR/latest/userguide/replication-creation-templates.html#roles-creatingrole-user-console.
%%
%% When configuring cross-account replication, the destination account must
%% grant the
%% source account permission to replicate. This permission is controlled
%% using a
%% registry permissions policy. For more information, see
%% `PutRegistryPolicy'.
-spec put_replication_configuration(aws_client:aws_client(), put_replication_configuration_request()) ->
    {ok, put_replication_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_replication_configuration_errors(), tuple()}.
put_replication_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_replication_configuration(Client, Input, []).

-spec put_replication_configuration(aws_client:aws_client(), put_replication_configuration_request(), proplists:proplist()) ->
    {ok, put_replication_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_replication_configuration_errors(), tuple()}.
put_replication_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutReplicationConfiguration">>, Input, Options).

%% @doc Applies a repository policy to the specified repository to control
%% access permissions.
%%
%% For more information, see Amazon ECR Repository
%% policies:
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

%% @doc Starts an image vulnerability scan.
%%
%% An image scan can only be started once per 24
%% hours on an individual image. This limit includes if an image was scanned
%% on initial
%% push. For more information, see Image scanning:
%% https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-scanning.html
%% in the
%% Amazon Elastic Container Registry User Guide.
-spec start_image_scan(aws_client:aws_client(), start_image_scan_request()) ->
    {ok, start_image_scan_response(), tuple()} |
    {error, any()} |
    {error, start_image_scan_errors(), tuple()}.
start_image_scan(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_image_scan(Client, Input, []).

-spec start_image_scan(aws_client:aws_client(), start_image_scan_request(), proplists:proplist()) ->
    {ok, start_image_scan_response(), tuple()} |
    {error, any()} |
    {error, start_image_scan_errors(), tuple()}.
start_image_scan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartImageScan">>, Input, Options).

%% @doc Starts a preview of a lifecycle policy for the specified repository.
%%
%% This allows you
%% to see the results before associating the lifecycle policy with the
%% repository.
-spec start_lifecycle_policy_preview(aws_client:aws_client(), start_lifecycle_policy_preview_request()) ->
    {ok, start_lifecycle_policy_preview_response(), tuple()} |
    {error, any()} |
    {error, start_lifecycle_policy_preview_errors(), tuple()}.
start_lifecycle_policy_preview(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_lifecycle_policy_preview(Client, Input, []).

-spec start_lifecycle_policy_preview(aws_client:aws_client(), start_lifecycle_policy_preview_request(), proplists:proplist()) ->
    {ok, start_lifecycle_policy_preview_response(), tuple()} |
    {error, any()} |
    {error, start_lifecycle_policy_preview_errors(), tuple()}.
start_lifecycle_policy_preview(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartLifecyclePolicyPreview">>, Input, Options).

%% @doc Adds specified tags to a resource with the specified ARN.
%%
%% Existing tags on a resource
%% are not changed if they are not specified in the request parameters.
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

%% @doc Updates an existing pull through cache rule.
-spec update_pull_through_cache_rule(aws_client:aws_client(), update_pull_through_cache_rule_request()) ->
    {ok, update_pull_through_cache_rule_response(), tuple()} |
    {error, any()} |
    {error, update_pull_through_cache_rule_errors(), tuple()}.
update_pull_through_cache_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_pull_through_cache_rule(Client, Input, []).

-spec update_pull_through_cache_rule(aws_client:aws_client(), update_pull_through_cache_rule_request(), proplists:proplist()) ->
    {ok, update_pull_through_cache_rule_response(), tuple()} |
    {error, any()} |
    {error, update_pull_through_cache_rule_errors(), tuple()}.
update_pull_through_cache_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePullThroughCacheRule">>, Input, Options).

%% @doc Updates an existing repository creation template.
-spec update_repository_creation_template(aws_client:aws_client(), update_repository_creation_template_request()) ->
    {ok, update_repository_creation_template_response(), tuple()} |
    {error, any()} |
    {error, update_repository_creation_template_errors(), tuple()}.
update_repository_creation_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_repository_creation_template(Client, Input, []).

-spec update_repository_creation_template(aws_client:aws_client(), update_repository_creation_template_request(), proplists:proplist()) ->
    {ok, update_repository_creation_template_response(), tuple()} |
    {error, any()} |
    {error, update_repository_creation_template_errors(), tuple()}.
update_repository_creation_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRepositoryCreationTemplate">>, Input, Options).

%% @doc Uploads an image layer part to Amazon ECR.
%%
%% When an image is pushed, each new image layer is uploaded in parts. The
%% maximum size
%% of each image layer part can be 20971520 bytes (or about 20MB). The
%% UploadLayerPart API
%% is called once per each new image layer part.
%%
%% This operation is used by the Amazon ECR proxy and is not generally used
%% by
%% customers for pulling and pushing images. In most cases, you should use
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

%% @doc Validates an existing pull through cache rule for an upstream
%% registry that requires
%% authentication.
%%
%% This will retrieve the contents of the Amazon Web Services Secrets Manager
%% secret, verify the
%% syntax, and then validate that authentication to the upstream registry is
%% successful.
-spec validate_pull_through_cache_rule(aws_client:aws_client(), validate_pull_through_cache_rule_request()) ->
    {ok, validate_pull_through_cache_rule_response(), tuple()} |
    {error, any()} |
    {error, validate_pull_through_cache_rule_errors(), tuple()}.
validate_pull_through_cache_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    validate_pull_through_cache_rule(Client, Input, []).

-spec validate_pull_through_cache_rule(aws_client:aws_client(), validate_pull_through_cache_rule_request(), proplists:proplist()) ->
    {ok, validate_pull_through_cache_rule_response(), tuple()} |
    {error, any()} |
    {error, validate_pull_through_cache_rule_errors(), tuple()}.
validate_pull_through_cache_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ValidatePullThroughCacheRule">>, Input, Options).

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
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
