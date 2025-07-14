%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Secrets Manager
%%
%% Amazon Web Services Secrets Manager provides a service to enable you to
%% store, manage, and retrieve, secrets.
%%
%% This guide provides descriptions of the Secrets Manager API. For more
%% information about using this
%% service, see the Amazon Web Services Secrets Manager User Guide:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/introduction.html.
%%
%% API Version
%%
%% This version of the Secrets Manager API Reference documents the Secrets
%% Manager API version 2017-10-17.
%%
%% For a list of endpoints, see Amazon Web Services Secrets Manager
%% endpoints:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/asm_access.html#endpoints.
%%
%% Support and Feedback for Amazon Web Services Secrets Manager
%%
%% We welcome your feedback. Send your comments to
%% awssecretsmanager-feedback@amazon.com:
%% mailto:awssecretsmanager-feedback@amazon.com, or post your feedback and
%% questions in the Amazon Web Services Secrets Manager Discussion Forum:
%% http://forums.aws.amazon.com/forum.jspa?forumID=296. For more
%% information about the Amazon Web Services Discussion Forums, see Forums
%% Help: http://forums.aws.amazon.com/help.jspa.
%%
%% Logging API Requests
%%
%% Amazon Web Services Secrets Manager supports Amazon Web Services
%% CloudTrail, a service that records Amazon Web Services API calls for your
%% Amazon Web Services
%% account and delivers log files to an Amazon S3 bucket. By using
%% information that's collected
%% by Amazon Web Services CloudTrail, you can determine the requests
%% successfully made to Secrets Manager, who made the
%% request, when it was made, and so on. For more about Amazon Web Services
%% Secrets Manager and support for Amazon Web Services
%% CloudTrail, see Logging
%% Amazon Web Services Secrets Manager Events with Amazon Web Services
%% CloudTrail:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring.html#monitoring_cloudtrail
%% in the Amazon Web Services Secrets Manager User Guide.
%% To learn more about CloudTrail, including enabling it and find your log
%% files, see the Amazon Web Services CloudTrail User Guide:
%% https://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html.
-module(aws_secrets_manager).

-export([batch_get_secret_value/2,
         batch_get_secret_value/3,
         cancel_rotate_secret/2,
         cancel_rotate_secret/3,
         create_secret/2,
         create_secret/3,
         delete_resource_policy/2,
         delete_resource_policy/3,
         delete_secret/2,
         delete_secret/3,
         describe_secret/2,
         describe_secret/3,
         get_random_password/2,
         get_random_password/3,
         get_resource_policy/2,
         get_resource_policy/3,
         get_secret_value/2,
         get_secret_value/3,
         list_secret_version_ids/2,
         list_secret_version_ids/3,
         list_secrets/2,
         list_secrets/3,
         put_resource_policy/2,
         put_resource_policy/3,
         put_secret_value/2,
         put_secret_value/3,
         remove_regions_from_replication/2,
         remove_regions_from_replication/3,
         replicate_secret_to_regions/2,
         replicate_secret_to_regions/3,
         restore_secret/2,
         restore_secret/3,
         rotate_secret/2,
         rotate_secret/3,
         stop_replication_to_replica/2,
         stop_replication_to_replica/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_secret/2,
         update_secret/3,
         update_secret_version_stage/2,
         update_secret_version_stage/3,
         validate_resource_policy/2,
         validate_resource_policy/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% describe_secret_response() :: #{
%%   <<"ARN">> => string(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"DeletedDate">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"LastAccessedDate">> => non_neg_integer(),
%%   <<"LastChangedDate">> => non_neg_integer(),
%%   <<"LastRotatedDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"NextRotationDate">> => non_neg_integer(),
%%   <<"OwningService">> => string(),
%%   <<"PrimaryRegion">> => string(),
%%   <<"ReplicationStatus">> => list(replication_status_type()),
%%   <<"RotationEnabled">> => boolean(),
%%   <<"RotationLambdaARN">> => string(),
%%   <<"RotationRules">> => rotation_rules_type(),
%%   <<"Tags">> => list(tag()),
%%   <<"VersionIdsToStages">> => map()
%% }
-type describe_secret_response() :: #{binary() => any()}.

%% Example:
%% validation_errors_entry() :: #{
%%   <<"CheckName">> => string(),
%%   <<"ErrorMessage">> => string()
%% }
-type validation_errors_entry() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"SecretId">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_response() :: #{
%%   <<"ARN">> => string(),
%%   <<"Name">> => string()
%% }
-type delete_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% remove_regions_from_replication_response() :: #{
%%   <<"ARN">> => string(),
%%   <<"ReplicationStatus">> => list(replication_status_type())
%% }
-type remove_regions_from_replication_response() :: #{binary() => any()}.

%% Example:
%% update_secret_version_stage_request() :: #{
%%   <<"MoveToVersionId">> => string(),
%%   <<"RemoveFromVersionId">> => string(),
%%   <<"SecretId">> := string(),
%%   <<"VersionStage">> := string()
%% }
-type update_secret_version_stage_request() :: #{binary() => any()}.

%% Example:
%% delete_secret_request() :: #{
%%   <<"ForceDeleteWithoutRecovery">> => boolean(),
%%   <<"RecoveryWindowInDays">> => float(),
%%   <<"SecretId">> := string()
%% }
-type delete_secret_request() :: #{binary() => any()}.

%% Example:
%% decryption_failure() :: #{
%%   <<"Message">> => string()
%% }
-type decryption_failure() :: #{binary() => any()}.

%% Example:
%% cancel_rotate_secret_response() :: #{
%%   <<"ARN">> => string(),
%%   <<"Name">> => string(),
%%   <<"VersionId">> => string()
%% }
-type cancel_rotate_secret_response() :: #{binary() => any()}.

%% Example:
%% encryption_failure() :: #{
%%   <<"Message">> => string()
%% }
-type encryption_failure() :: #{binary() => any()}.

%% Example:
%% list_secrets_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"IncludePlannedDeletion">> => boolean(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortOrder">> => list(any())
%% }
-type list_secrets_request() :: #{binary() => any()}.

%% Example:
%% get_resource_policy_response() :: #{
%%   <<"ARN">> => string(),
%%   <<"Name">> => string(),
%%   <<"ResourcePolicy">> => string()
%% }
-type get_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% update_secret_version_stage_response() :: #{
%%   <<"ARN">> => string(),
%%   <<"Name">> => string()
%% }
-type update_secret_version_stage_response() :: #{binary() => any()}.

%% Example:
%% list_secrets_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SecretList">> => list(secret_list_entry())
%% }
-type list_secrets_response() :: #{binary() => any()}.

%% Example:
%% get_random_password_response() :: #{
%%   <<"RandomPassword">> => string()
%% }
-type get_random_password_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"SecretId">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% validate_resource_policy_request() :: #{
%%   <<"ResourcePolicy">> := string(),
%%   <<"SecretId">> => string()
%% }
-type validate_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% delete_secret_response() :: #{
%%   <<"ARN">> => string(),
%%   <<"DeletionDate">> => non_neg_integer(),
%%   <<"Name">> => string()
%% }
-type delete_secret_response() :: #{binary() => any()}.

%% Example:
%% batch_get_secret_value_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SecretIdList">> => list(string())
%% }
-type batch_get_secret_value_request() :: #{binary() => any()}.

%% Example:
%% validate_resource_policy_response() :: #{
%%   <<"PolicyValidationPassed">> => boolean(),
%%   <<"ValidationErrors">> => list(validation_errors_entry())
%% }
-type validate_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% restore_secret_response() :: #{
%%   <<"ARN">> => string(),
%%   <<"Name">> => string()
%% }
-type restore_secret_response() :: #{binary() => any()}.

%% Example:
%% cancel_rotate_secret_request() :: #{
%%   <<"SecretId">> := string()
%% }
-type cancel_rotate_secret_request() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% invalid_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.

%% Example:
%% rotate_secret_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"RotateImmediately">> => boolean(),
%%   <<"RotationLambdaARN">> => string(),
%%   <<"RotationRules">> => rotation_rules_type(),
%%   <<"SecretId">> := string()
%% }
-type rotate_secret_request() :: #{binary() => any()}.

%% Example:
%% put_secret_value_response() :: #{
%%   <<"ARN">> => string(),
%%   <<"Name">> => string(),
%%   <<"VersionId">> => string(),
%%   <<"VersionStages">> => list(string())
%% }
-type put_secret_value_response() :: #{binary() => any()}.

%% Example:
%% invalid_next_token_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_next_token_exception() :: #{binary() => any()}.

%% Example:
%% remove_regions_from_replication_request() :: #{
%%   <<"RemoveReplicaRegions">> := list(string()),
%%   <<"SecretId">> := string()
%% }
-type remove_regions_from_replication_request() :: #{binary() => any()}.

%% Example:
%% stop_replication_to_replica_request() :: #{
%%   <<"SecretId">> := string()
%% }
-type stop_replication_to_replica_request() :: #{binary() => any()}.

%% Example:
%% describe_secret_request() :: #{
%%   <<"SecretId">> := string()
%% }
-type describe_secret_request() :: #{binary() => any()}.

%% Example:
%% list_secret_version_ids_response() :: #{
%%   <<"ARN">> => string(),
%%   <<"Name">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Versions">> => list(secret_versions_list_entry())
%% }
-type list_secret_version_ids_response() :: #{binary() => any()}.

%% Example:
%% batch_get_secret_value_response() :: #{
%%   <<"Errors">> => list(api_error_type()),
%%   <<"NextToken">> => string(),
%%   <<"SecretValues">> => list(secret_value_entry())
%% }
-type batch_get_secret_value_response() :: #{binary() => any()}.

%% Example:
%% update_secret_response() :: #{
%%   <<"ARN">> => string(),
%%   <<"Name">> => string(),
%%   <<"VersionId">> => string()
%% }
-type update_secret_response() :: #{binary() => any()}.

%% Example:
%% get_resource_policy_request() :: #{
%%   <<"SecretId">> := string()
%% }
-type get_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% update_secret_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"SecretBinary">> => binary(),
%%   <<"SecretId">> := string(),
%%   <<"SecretString">> => string()
%% }
-type update_secret_request() :: #{binary() => any()}.

%% Example:
%% replicate_secret_to_regions_response() :: #{
%%   <<"ARN">> => string(),
%%   <<"ReplicationStatus">> => list(replication_status_type())
%% }
-type replicate_secret_to_regions_response() :: #{binary() => any()}.

%% Example:
%% filter() :: #{
%%   <<"Key">> => list(any()),
%%   <<"Values">> => list(string())
%% }
-type filter() :: #{binary() => any()}.

%% Example:
%% replication_status_type() :: #{
%%   <<"KmsKeyId">> => string(),
%%   <<"LastAccessedDate">> => non_neg_integer(),
%%   <<"Region">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type replication_status_type() :: #{binary() => any()}.

%% Example:
%% put_secret_value_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"RotationToken">> => string(),
%%   <<"SecretBinary">> => binary(),
%%   <<"SecretId">> := string(),
%%   <<"SecretString">> => string(),
%%   <<"VersionStages">> => list(string())
%% }
-type put_secret_value_request() :: #{binary() => any()}.

%% Example:
%% stop_replication_to_replica_response() :: #{
%%   <<"ARN">> => string()
%% }
-type stop_replication_to_replica_response() :: #{binary() => any()}.

%% Example:
%% resource_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_exists_exception() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_request() :: #{
%%   <<"BlockPublicPolicy">> => boolean(),
%%   <<"ResourcePolicy">> := string(),
%%   <<"SecretId">> := string()
%% }
-type put_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% replica_region_type() :: #{
%%   <<"KmsKeyId">> => string(),
%%   <<"Region">> => string()
%% }
-type replica_region_type() :: #{binary() => any()}.

%% Example:
%% get_random_password_request() :: #{
%%   <<"ExcludeCharacters">> => string(),
%%   <<"ExcludeLowercase">> => boolean(),
%%   <<"ExcludeNumbers">> => boolean(),
%%   <<"ExcludePunctuation">> => boolean(),
%%   <<"ExcludeUppercase">> => boolean(),
%%   <<"IncludeSpace">> => boolean(),
%%   <<"PasswordLength">> => float(),
%%   <<"RequireEachIncludedType">> => boolean()
%% }
-type get_random_password_request() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.

%% Example:
%% get_secret_value_request() :: #{
%%   <<"SecretId">> := string(),
%%   <<"VersionId">> => string(),
%%   <<"VersionStage">> => string()
%% }
-type get_secret_value_request() :: #{binary() => any()}.

%% Example:
%% get_secret_value_response() :: #{
%%   <<"ARN">> => string(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"SecretBinary">> => binary(),
%%   <<"SecretString">> => string(),
%%   <<"VersionId">> => string(),
%%   <<"VersionStages">> => list(string())
%% }
-type get_secret_value_response() :: #{binary() => any()}.

%% Example:
%% api_error_type() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"Message">> => string(),
%%   <<"SecretId">> => string()
%% }
-type api_error_type() :: #{binary() => any()}.

%% Example:
%% internal_service_error() :: #{
%%   <<"Message">> => string()
%% }
-type internal_service_error() :: #{binary() => any()}.

%% Example:
%% secret_value_entry() :: #{
%%   <<"ARN">> => string(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"SecretBinary">> => binary(),
%%   <<"SecretString">> => string(),
%%   <<"VersionId">> => string(),
%%   <<"VersionStages">> => list(string())
%% }
-type secret_value_entry() :: #{binary() => any()}.

%% Example:
%% create_secret_response() :: #{
%%   <<"ARN">> => string(),
%%   <<"Name">> => string(),
%%   <<"ReplicationStatus">> => list(replication_status_type()),
%%   <<"VersionId">> => string()
%% }
-type create_secret_response() :: #{binary() => any()}.

%% Example:
%% malformed_policy_document_exception() :: #{
%%   <<"Message">> => string()
%% }
-type malformed_policy_document_exception() :: #{binary() => any()}.

%% Example:
%% list_secret_version_ids_request() :: #{
%%   <<"IncludeDeprecated">> => boolean(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SecretId">> := string()
%% }
-type list_secret_version_ids_request() :: #{binary() => any()}.

%% Example:
%% secret_list_entry() :: #{
%%   <<"ARN">> => string(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"DeletedDate">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"LastAccessedDate">> => non_neg_integer(),
%%   <<"LastChangedDate">> => non_neg_integer(),
%%   <<"LastRotatedDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"NextRotationDate">> => non_neg_integer(),
%%   <<"OwningService">> => string(),
%%   <<"PrimaryRegion">> => string(),
%%   <<"RotationEnabled">> => boolean(),
%%   <<"RotationLambdaARN">> => string(),
%%   <<"RotationRules">> => rotation_rules_type(),
%%   <<"SecretVersionsToStages">> => map(),
%%   <<"Tags">> => list(tag())
%% }
-type secret_list_entry() :: #{binary() => any()}.

%% Example:
%% secret_versions_list_entry() :: #{
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"KmsKeyIds">> => list(string()),
%%   <<"LastAccessedDate">> => non_neg_integer(),
%%   <<"VersionId">> => string(),
%%   <<"VersionStages">> => list(string())
%% }
-type secret_versions_list_entry() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_response() :: #{
%%   <<"ARN">> => string(),
%%   <<"Name">> => string()
%% }
-type put_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% rotation_rules_type() :: #{
%%   <<"AutomaticallyAfterDays">> => float(),
%%   <<"Duration">> => string(),
%%   <<"ScheduleExpression">> => string()
%% }
-type rotation_rules_type() :: #{binary() => any()}.

%% Example:
%% public_policy_exception() :: #{
%%   <<"Message">> => string()
%% }
-type public_policy_exception() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_request() :: #{
%%   <<"SecretId">> := string()
%% }
-type delete_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% restore_secret_request() :: #{
%%   <<"SecretId">> := string()
%% }
-type restore_secret_request() :: #{binary() => any()}.

%% Example:
%% precondition_not_met_exception() :: #{
%%   <<"Message">> => string()
%% }
-type precondition_not_met_exception() :: #{binary() => any()}.

%% Example:
%% rotate_secret_response() :: #{
%%   <<"ARN">> => string(),
%%   <<"Name">> => string(),
%%   <<"VersionId">> => string()
%% }
-type rotate_secret_response() :: #{binary() => any()}.

%% Example:
%% replicate_secret_to_regions_request() :: #{
%%   <<"AddReplicaRegions">> := list(replica_region_type()),
%%   <<"ForceOverwriteReplicaSecret">> => boolean(),
%%   <<"SecretId">> := string()
%% }
-type replicate_secret_to_regions_request() :: #{binary() => any()}.

%% Example:
%% create_secret_request() :: #{
%%   <<"AddReplicaRegions">> => list(replica_region_type()),
%%   <<"ClientRequestToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"ForceOverwriteReplicaSecret">> => boolean(),
%%   <<"KmsKeyId">> => string(),
%%   <<"Name">> := string(),
%%   <<"SecretBinary">> => binary(),
%%   <<"SecretString">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_secret_request() :: #{binary() => any()}.

-type batch_get_secret_value_errors() ::
    internal_service_error() | 
    invalid_parameter_exception() | 
    invalid_next_token_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    decryption_failure().

-type cancel_rotate_secret_errors() ::
    internal_service_error() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type create_secret_errors() ::
    precondition_not_met_exception() | 
    limit_exceeded_exception() | 
    malformed_policy_document_exception() | 
    internal_service_error() | 
    invalid_parameter_exception() | 
    resource_exists_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    encryption_failure() | 
    decryption_failure().

-type delete_resource_policy_errors() ::
    internal_service_error() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type delete_secret_errors() ::
    internal_service_error() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type describe_secret_errors() ::
    internal_service_error() | 
    invalid_parameter_exception() | 
    resource_not_found_exception().

-type get_random_password_errors() ::
    internal_service_error() | 
    invalid_parameter_exception() | 
    invalid_request_exception().

-type get_resource_policy_errors() ::
    internal_service_error() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type get_secret_value_errors() ::
    internal_service_error() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    decryption_failure().

-type list_secret_version_ids_errors() ::
    internal_service_error() | 
    invalid_parameter_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception().

-type list_secrets_errors() ::
    internal_service_error() | 
    invalid_parameter_exception() | 
    invalid_next_token_exception() | 
    invalid_request_exception().

-type put_resource_policy_errors() ::
    public_policy_exception() | 
    malformed_policy_document_exception() | 
    internal_service_error() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type put_secret_value_errors() ::
    limit_exceeded_exception() | 
    internal_service_error() | 
    invalid_parameter_exception() | 
    resource_exists_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    encryption_failure() | 
    decryption_failure().

-type remove_regions_from_replication_errors() ::
    internal_service_error() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type replicate_secret_to_regions_errors() ::
    internal_service_error() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type restore_secret_errors() ::
    internal_service_error() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type rotate_secret_errors() ::
    internal_service_error() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type stop_replication_to_replica_errors() ::
    internal_service_error() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    internal_service_error() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    internal_service_error() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type update_secret_errors() ::
    precondition_not_met_exception() | 
    limit_exceeded_exception() | 
    malformed_policy_document_exception() | 
    internal_service_error() | 
    invalid_parameter_exception() | 
    resource_exists_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    encryption_failure() | 
    decryption_failure().

-type update_secret_version_stage_errors() ::
    limit_exceeded_exception() | 
    internal_service_error() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type validate_resource_policy_errors() ::
    malformed_policy_document_exception() | 
    internal_service_error() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Retrieves the contents of the encrypted fields `SecretString' or
%% `SecretBinary' for up to 20 secrets.
%%
%% To retrieve a single secret, call `GetSecretValue'.
%%
%% To choose which secrets to retrieve, you can specify a list of secrets by
%% name or ARN, or you can use filters. If Secrets Manager encounters errors
%% such as `AccessDeniedException' while attempting to retrieve any of
%% the secrets, you can see the errors in `Errors' in the response.
%%
%% Secrets Manager generates CloudTrail `GetSecretValue' log entries for
%% each secret you request when you call this action. Do not include
%% sensitive information in request parameters because it might be logged.
%% For more information, see Logging Secrets Manager events with CloudTrail:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html.
%%
%% Required permissions:
%% `secretsmanager:BatchGetSecretValue', and you must have
%% `secretsmanager:GetSecretValue' for each secret. If you use filters,
%% you must also have `secretsmanager:ListSecrets'. If the secrets are
%% encrypted using customer-managed keys instead of the Amazon Web Services
%% managed key
%% `aws/secretsmanager', then you also need `kms:Decrypt' permissions
%% for the keys.
%% For more information, see
%% IAM policy actions for Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions
%% and Authentication
%% and access control in Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html.
-spec batch_get_secret_value(aws_client:aws_client(), batch_get_secret_value_request()) ->
    {ok, batch_get_secret_value_response(), tuple()} |
    {error, any()} |
    {error, batch_get_secret_value_errors(), tuple()}.
batch_get_secret_value(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_secret_value(Client, Input, []).

-spec batch_get_secret_value(aws_client:aws_client(), batch_get_secret_value_request(), proplists:proplist()) ->
    {ok, batch_get_secret_value_response(), tuple()} |
    {error, any()} |
    {error, batch_get_secret_value_errors(), tuple()}.
batch_get_secret_value(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetSecretValue">>, Input, Options).

%% @doc Turns off automatic rotation, and if a rotation is currently in
%% progress, cancels the rotation.
%%
%% If you cancel a rotation in progress, it can leave the `VersionStage'
%% labels in an unexpected state. You might
%% need to remove the staging label `AWSPENDING' from the partially
%% created version.
%% You also need to determine whether to roll back to the previous version of
%% the secret
%% by moving the staging label `AWSCURRENT' to the version that has
%% `AWSPENDING'.
%% To determine
%% which version has a specific staging label, call
%% `ListSecretVersionIds'. Then use
%% `UpdateSecretVersionStage' to change staging labels.
%% For more information, see How rotation works:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_how.html.
%%
%% To turn on automatic rotation again, call `RotateSecret'.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html.
%%
%% Required permissions:
%% `secretsmanager:CancelRotateSecret'.
%% For more information, see
%% IAM policy actions for Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions
%% and Authentication
%% and access control in Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html.
-spec cancel_rotate_secret(aws_client:aws_client(), cancel_rotate_secret_request()) ->
    {ok, cancel_rotate_secret_response(), tuple()} |
    {error, any()} |
    {error, cancel_rotate_secret_errors(), tuple()}.
cancel_rotate_secret(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_rotate_secret(Client, Input, []).

-spec cancel_rotate_secret(aws_client:aws_client(), cancel_rotate_secret_request(), proplists:proplist()) ->
    {ok, cancel_rotate_secret_response(), tuple()} |
    {error, any()} |
    {error, cancel_rotate_secret_errors(), tuple()}.
cancel_rotate_secret(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelRotateSecret">>, Input, Options).

%% @doc Creates a new secret.
%%
%% A secret can be a password, a set of
%% credentials such as a user name and password, an OAuth token, or other
%% secret information
%% that you store in an encrypted form in Secrets Manager. The secret also
%% includes the connection information to access a database or other service,
%% which Secrets Manager
%% doesn't encrypt. A secret in Secrets Manager consists of both the
%% protected secret data and the
%% important information needed to manage the secret.
%%
%% For secrets that use managed rotation, you need to create the secret
%% through the managing service. For more information, see Secrets Manager
%% secrets managed by other Amazon Web Services services:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/service-linked-secrets.html.
%%
%% For information about creating a secret in the console, see Create a
%% secret:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/manage_create-basic-secret.html.
%%
%% To create a secret, you can provide the secret value to be encrypted in
%% either the
%% `SecretString' parameter or the `SecretBinary' parameter, but not
%% both.
%% If you include `SecretString' or `SecretBinary'
%% then Secrets Manager creates an initial secret version and automatically
%% attaches the staging
%% label `AWSCURRENT' to it.
%%
%% For database credentials you want to rotate, for Secrets Manager to be
%% able to rotate the secret,
%% you must make sure the JSON you store in the `SecretString' matches
%% the JSON structure of
%% a database secret:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_secret_json_structure.html.
%%
%% If you don't specify an KMS encryption key, Secrets Manager uses the
%% Amazon Web Services managed key
%% `aws/secretsmanager'. If this key
%% doesn't already exist in your account, then Secrets Manager creates it
%% for you automatically. All
%% users and roles in the Amazon Web Services account automatically have
%% access to use `aws/secretsmanager'.
%% Creating `aws/secretsmanager' can result in a one-time significant
%% delay in returning the
%% result.
%%
%% If the secret is in a different Amazon Web Services account from the
%% credentials calling the API, then
%% you can't use `aws/secretsmanager' to encrypt the secret, and you
%% must create
%% and use a customer managed KMS key.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters except
%% `SecretBinary' or `SecretString' because it might be logged. For
%% more information, see Logging Secrets Manager events with CloudTrail:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html.
%%
%% Required permissions:
%% `secretsmanager:CreateSecret'. If you
%% include tags in the secret, you also need
%% `secretsmanager:TagResource'. To add replica Regions, you must also
%% have `secretsmanager:ReplicateSecretToRegions'.
%% For more information, see
%% IAM policy actions for Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions
%% and Authentication
%% and access control in Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html.
%%
%% To encrypt the secret with a KMS key other than `aws/secretsmanager',
%% you need `kms:GenerateDataKey' and `kms:Decrypt' permission to the
%% key.
%%
%% When you enter commands in a command shell, there is a risk of the command
%% history being accessed or utilities having access to your command
%% parameters. This is a concern if the command includes the value of a
%% secret. Learn how to Mitigate the risks of using command-line tools to
%% store Secrets Manager secrets:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/security_cli-exposure-risks.html.
-spec create_secret(aws_client:aws_client(), create_secret_request()) ->
    {ok, create_secret_response(), tuple()} |
    {error, any()} |
    {error, create_secret_errors(), tuple()}.
create_secret(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_secret(Client, Input, []).

-spec create_secret(aws_client:aws_client(), create_secret_request(), proplists:proplist()) ->
    {ok, create_secret_response(), tuple()} |
    {error, any()} |
    {error, create_secret_errors(), tuple()}.
create_secret(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSecret">>, Input, Options).

%% @doc Deletes the resource-based permission policy attached to the secret.
%%
%% To attach a policy to
%% a secret, use `PutResourcePolicy'.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html.
%%
%% Required permissions:
%% `secretsmanager:DeleteResourcePolicy'.
%% For more information, see
%% IAM policy actions for Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions
%% and Authentication
%% and access control in Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html.
-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_request()) ->
    {ok, delete_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_policy(Client, Input, []).

-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_request(), proplists:proplist()) ->
    {ok, delete_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourcePolicy">>, Input, Options).

%% @doc Deletes a secret and all of its versions.
%%
%% You can specify a recovery
%% window during which you can restore the secret. The minimum recovery
%% window is 7 days.
%% The default recovery window is 30 days. Secrets Manager attaches a
%% `DeletionDate' stamp to
%% the secret that specifies the end of the recovery window. At the end of
%% the recovery window,
%% Secrets Manager deletes the secret permanently.
%%
%% You can't delete a primary secret that is replicated to other Regions.
%% You must first delete the
%% replicas using `RemoveRegionsFromReplication', and then delete the
%% primary secret.
%% When you delete a replica, it is deleted immediately.
%%
%% You can't directly delete a version of a secret. Instead, you remove
%% all staging labels
%% from the version using `UpdateSecretVersionStage'. This marks the
%% version as deprecated,
%% and then Secrets Manager can automatically delete the version in the
%% background.
%%
%% To determine whether an application still uses a secret, you can create an
%% Amazon CloudWatch alarm
%% to alert you to any attempts to access a secret during the recovery
%% window. For more information,
%% see
%% Monitor secrets scheduled for deletion:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring_cloudwatch_deleted-secrets.html.
%%
%% Secrets Manager performs the permanent secret deletion at the end of the
%% waiting period as a
%% background task with low priority. There is no guarantee of a specific
%% time after the
%% recovery window for the permanent delete to occur.
%%
%% At any time before recovery window ends, you can use `RestoreSecret'
%% to
%% remove the `DeletionDate' and cancel the deletion of the secret.
%%
%% When a secret is scheduled for deletion, you cannot retrieve the secret
%% value.
%% You must first cancel the deletion with `RestoreSecret' and then you
%% can retrieve the secret.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html.
%%
%% Required permissions:
%% `secretsmanager:DeleteSecret'.
%% For more information, see
%% IAM policy actions for Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions
%% and Authentication
%% and access control in Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html.
-spec delete_secret(aws_client:aws_client(), delete_secret_request()) ->
    {ok, delete_secret_response(), tuple()} |
    {error, any()} |
    {error, delete_secret_errors(), tuple()}.
delete_secret(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_secret(Client, Input, []).

-spec delete_secret(aws_client:aws_client(), delete_secret_request(), proplists:proplist()) ->
    {ok, delete_secret_response(), tuple()} |
    {error, any()} |
    {error, delete_secret_errors(), tuple()}.
delete_secret(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSecret">>, Input, Options).

%% @doc Retrieves the details of a secret.
%%
%% It does not include the encrypted secret value. Secrets Manager
%% only returns fields that have a value in the response.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html.
%%
%% Required permissions:
%% `secretsmanager:DescribeSecret'.
%% For more information, see
%% IAM policy actions for Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions
%% and Authentication
%% and access control in Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html.
-spec describe_secret(aws_client:aws_client(), describe_secret_request()) ->
    {ok, describe_secret_response(), tuple()} |
    {error, any()} |
    {error, describe_secret_errors(), tuple()}.
describe_secret(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_secret(Client, Input, []).

-spec describe_secret(aws_client:aws_client(), describe_secret_request(), proplists:proplist()) ->
    {ok, describe_secret_response(), tuple()} |
    {error, any()} |
    {error, describe_secret_errors(), tuple()}.
describe_secret(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSecret">>, Input, Options).

%% @doc Generates a random password.
%%
%% We recommend that you specify the
%% maximum length and include every character type that the system you are
%% generating a password
%% for can support. By default, Secrets Manager uses uppercase and lowercase
%% letters, numbers, and the following characters in passwords:
%% `!\&quot;#$%&amp;'()*+,-./:;&lt;=&gt;?@[\\]^_`{|}~'
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action.
%%
%% Required permissions:
%% `secretsmanager:GetRandomPassword'.
%% For more information, see
%% IAM policy actions for Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions
%% and Authentication
%% and access control in Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html.
-spec get_random_password(aws_client:aws_client(), get_random_password_request()) ->
    {ok, get_random_password_response(), tuple()} |
    {error, any()} |
    {error, get_random_password_errors(), tuple()}.
get_random_password(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_random_password(Client, Input, []).

-spec get_random_password(aws_client:aws_client(), get_random_password_request(), proplists:proplist()) ->
    {ok, get_random_password_response(), tuple()} |
    {error, any()} |
    {error, get_random_password_errors(), tuple()}.
get_random_password(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRandomPassword">>, Input, Options).

%% @doc Retrieves the JSON text of the resource-based policy document
%% attached to the
%% secret.
%%
%% For more information about permissions policies attached to a secret, see
%% Permissions
%% policies attached to a secret:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_resource-policies.html.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html.
%%
%% Required permissions:
%% `secretsmanager:GetResourcePolicy'.
%% For more information, see
%% IAM policy actions for Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions
%% and Authentication
%% and access control in Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html.
-spec get_resource_policy(aws_client:aws_client(), get_resource_policy_request()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_policy(Client, Input, []).

-spec get_resource_policy(aws_client:aws_client(), get_resource_policy_request(), proplists:proplist()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourcePolicy">>, Input, Options).

%% @doc Retrieves the contents of the encrypted fields `SecretString' or
%% `SecretBinary' from the specified version of a secret, whichever
%% contains
%% content.
%%
%% To retrieve the values for a group of secrets, call
%% `BatchGetSecretValue'.
%%
%% We recommend that you cache your secret values by using client-side
%% caching.
%% Caching secrets improves speed and reduces your costs. For more
%% information, see Cache secrets for
%% your applications:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieving-secrets.html.
%%
%% To retrieve the previous version of a secret, use `VersionStage' and
%% specify
%% AWSPREVIOUS. To revert to the previous version of a secret, call
%% UpdateSecretVersionStage:
%% https://docs.aws.amazon.com/cli/latest/reference/secretsmanager/update-secret-version-stage.html.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html.
%%
%% Required permissions:
%% `secretsmanager:GetSecretValue'.
%% If the secret is encrypted using a customer-managed key instead of the
%% Amazon Web Services managed key
%% `aws/secretsmanager', then you also need `kms:Decrypt' permissions
%% for that key.
%% For more information, see
%% IAM policy actions for Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions
%% and Authentication
%% and access control in Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html.
-spec get_secret_value(aws_client:aws_client(), get_secret_value_request()) ->
    {ok, get_secret_value_response(), tuple()} |
    {error, any()} |
    {error, get_secret_value_errors(), tuple()}.
get_secret_value(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_secret_value(Client, Input, []).

-spec get_secret_value(aws_client:aws_client(), get_secret_value_request(), proplists:proplist()) ->
    {ok, get_secret_value_response(), tuple()} |
    {error, any()} |
    {error, get_secret_value_errors(), tuple()}.
get_secret_value(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSecretValue">>, Input, Options).

%% @doc Lists the versions of a secret.
%%
%% Secrets Manager uses staging labels to indicate the different versions
%% of a secret. For more information, see
%% Secrets Manager concepts: Versions:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/getting-started.html#term_version.
%%
%% To list the secrets in the account, use `ListSecrets'.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html.
%%
%% Required permissions:
%% `secretsmanager:ListSecretVersionIds'.
%% For more information, see
%% IAM policy actions for Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions
%% and Authentication
%% and access control in Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html.
-spec list_secret_version_ids(aws_client:aws_client(), list_secret_version_ids_request()) ->
    {ok, list_secret_version_ids_response(), tuple()} |
    {error, any()} |
    {error, list_secret_version_ids_errors(), tuple()}.
list_secret_version_ids(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_secret_version_ids(Client, Input, []).

-spec list_secret_version_ids(aws_client:aws_client(), list_secret_version_ids_request(), proplists:proplist()) ->
    {ok, list_secret_version_ids_response(), tuple()} |
    {error, any()} |
    {error, list_secret_version_ids_errors(), tuple()}.
list_secret_version_ids(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSecretVersionIds">>, Input, Options).

%% @doc Lists the secrets that are stored by Secrets Manager in the Amazon
%% Web Services account, not including secrets
%% that are marked for deletion.
%%
%% To see secrets marked for deletion, use the Secrets Manager console.
%%
%% All Secrets Manager operations are eventually consistent. ListSecrets
%% might not reflect changes from the last five minutes. You can get more
%% recent information for a specific secret by calling `DescribeSecret'.
%%
%% To list the versions of a secret, use `ListSecretVersionIds'.
%%
%% To retrieve the values for the secrets, call `BatchGetSecretValue' or
%% `GetSecretValue'.
%%
%% For information about finding secrets in the console, see Find secrets in
%% Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/manage_search-secret.html.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html.
%%
%% Required permissions:
%% `secretsmanager:ListSecrets'.
%% For more information, see
%% IAM policy actions for Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions
%% and Authentication
%% and access control in Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html.
-spec list_secrets(aws_client:aws_client(), list_secrets_request()) ->
    {ok, list_secrets_response(), tuple()} |
    {error, any()} |
    {error, list_secrets_errors(), tuple()}.
list_secrets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_secrets(Client, Input, []).

-spec list_secrets(aws_client:aws_client(), list_secrets_request(), proplists:proplist()) ->
    {ok, list_secrets_response(), tuple()} |
    {error, any()} |
    {error, list_secrets_errors(), tuple()}.
list_secrets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSecrets">>, Input, Options).

%% @doc Attaches a resource-based permission policy to a secret.
%%
%% A resource-based policy is
%% optional. For more information, see Authentication and access control for
%% Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html
%%
%% For information about attaching a policy in the console, see Attach a
%% permissions policy to a secret:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_resource-based-policies.html.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html.
%%
%% Required permissions:
%% `secretsmanager:PutResourcePolicy'.
%% For more information, see
%% IAM policy actions for Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions
%% and Authentication
%% and access control in Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html.
-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_request()) ->
    {ok, put_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resource_policy(Client, Input, []).

-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_request(), proplists:proplist()) ->
    {ok, put_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResourcePolicy">>, Input, Options).

%% @doc Creates a new version with a new encrypted secret value and attaches
%% it to the secret.
%%
%% The
%% version can contain a new `SecretString' value or a new
%% `SecretBinary' value.
%%
%% We recommend you avoid calling `PutSecretValue' at a sustained rate of
%% more than
%% once every 10 minutes. When you update the secret value, Secrets Manager
%% creates a new version
%% of the secret. Secrets Manager removes outdated versions when there are
%% more than 100, but it does not
%% remove versions created less than 24 hours ago. If you call
%% `PutSecretValue' more
%% than once every 10 minutes, you create more versions than Secrets Manager
%% removes, and you will reach
%% the quota for secret versions.
%%
%% You can specify the staging labels to attach to the new version in
%% `VersionStages'.
%% If you don't include `VersionStages', then Secrets Manager
%% automatically
%% moves the staging label `AWSCURRENT' to this version. If this
%% operation creates
%% the first version for the secret, then Secrets Manager
%% automatically attaches the staging label `AWSCURRENT' to it.
%% If this operation moves the staging label `AWSCURRENT' from another
%% version to this
%% version, then Secrets Manager also automatically moves the staging label
%% `AWSPREVIOUS' to
%% the version that `AWSCURRENT' was removed from.
%%
%% This operation is idempotent. If you call this operation with a
%% `ClientRequestToken'
%% that matches an existing version's VersionId, and you specify the
%% same secret data, the operation succeeds but does nothing. However, if the
%% secret data is
%% different, then the operation fails because you can't modify an
%% existing version; you can
%% only create new ones.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters except
%% `SecretBinary', `SecretString', or `RotationToken' because it
%% might be logged. For more information, see Logging Secrets Manager events
%% with CloudTrail:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html.
%%
%% Required permissions:
%% `secretsmanager:PutSecretValue'.
%% For more information, see
%% IAM policy actions for Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions
%% and Authentication
%% and access control in Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html.
%%
%% When you enter commands in a command shell, there is a risk of the command
%% history being accessed or utilities having access to your command
%% parameters. This is a concern if the command includes the value of a
%% secret. Learn how to Mitigate the risks of using command-line tools to
%% store Secrets Manager secrets:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/security_cli-exposure-risks.html.
-spec put_secret_value(aws_client:aws_client(), put_secret_value_request()) ->
    {ok, put_secret_value_response(), tuple()} |
    {error, any()} |
    {error, put_secret_value_errors(), tuple()}.
put_secret_value(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_secret_value(Client, Input, []).

-spec put_secret_value(aws_client:aws_client(), put_secret_value_request(), proplists:proplist()) ->
    {ok, put_secret_value_response(), tuple()} |
    {error, any()} |
    {error, put_secret_value_errors(), tuple()}.
put_secret_value(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutSecretValue">>, Input, Options).

%% @doc For a secret that is replicated to other Regions, deletes the secret
%% replicas from the Regions you specify.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html.
%%
%% Required permissions:
%% `secretsmanager:RemoveRegionsFromReplication'.
%% For more information, see
%% IAM policy actions for Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions
%% and Authentication
%% and access control in Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html.
-spec remove_regions_from_replication(aws_client:aws_client(), remove_regions_from_replication_request()) ->
    {ok, remove_regions_from_replication_response(), tuple()} |
    {error, any()} |
    {error, remove_regions_from_replication_errors(), tuple()}.
remove_regions_from_replication(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_regions_from_replication(Client, Input, []).

-spec remove_regions_from_replication(aws_client:aws_client(), remove_regions_from_replication_request(), proplists:proplist()) ->
    {ok, remove_regions_from_replication_response(), tuple()} |
    {error, any()} |
    {error, remove_regions_from_replication_errors(), tuple()}.
remove_regions_from_replication(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveRegionsFromReplication">>, Input, Options).

%% @doc Replicates the secret to a new Regions.
%%
%% See Multi-Region secrets:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/create-manage-multi-region-secrets.html.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html.
%%
%% Required permissions:
%% `secretsmanager:ReplicateSecretToRegions'.
%% If the primary secret is encrypted with a KMS key other than
%% `aws/secretsmanager', you also need `kms:Decrypt' permission to
%% the key. To encrypt the replicated secret with a KMS key other than
%% `aws/secretsmanager', you need `kms:GenerateDataKey' and
%% `kms:Encrypt' to the key. For more information, see
%% IAM policy actions for Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions
%% and Authentication
%% and access control in Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html.
-spec replicate_secret_to_regions(aws_client:aws_client(), replicate_secret_to_regions_request()) ->
    {ok, replicate_secret_to_regions_response(), tuple()} |
    {error, any()} |
    {error, replicate_secret_to_regions_errors(), tuple()}.
replicate_secret_to_regions(Client, Input)
  when is_map(Client), is_map(Input) ->
    replicate_secret_to_regions(Client, Input, []).

-spec replicate_secret_to_regions(aws_client:aws_client(), replicate_secret_to_regions_request(), proplists:proplist()) ->
    {ok, replicate_secret_to_regions_response(), tuple()} |
    {error, any()} |
    {error, replicate_secret_to_regions_errors(), tuple()}.
replicate_secret_to_regions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReplicateSecretToRegions">>, Input, Options).

%% @doc Cancels the scheduled deletion of a secret by removing the
%% `DeletedDate' time
%% stamp.
%%
%% You can access a secret again after it has been restored.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html.
%%
%% Required permissions:
%% `secretsmanager:RestoreSecret'.
%% For more information, see
%% IAM policy actions for Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions
%% and Authentication
%% and access control in Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html.
-spec restore_secret(aws_client:aws_client(), restore_secret_request()) ->
    {ok, restore_secret_response(), tuple()} |
    {error, any()} |
    {error, restore_secret_errors(), tuple()}.
restore_secret(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_secret(Client, Input, []).

-spec restore_secret(aws_client:aws_client(), restore_secret_request(), proplists:proplist()) ->
    {ok, restore_secret_response(), tuple()} |
    {error, any()} |
    {error, restore_secret_errors(), tuple()}.
restore_secret(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreSecret">>, Input, Options).

%% @doc Configures and starts the asynchronous process of rotating the
%% secret.
%%
%% For information about rotation,
%% see Rotate secrets:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotating-secrets.html
%% in the Secrets Manager User Guide. If you include the configuration
%% parameters, the operation sets the values for the secret and then
%% immediately starts a rotation. If you don't include the configuration
%% parameters, the operation starts a rotation with the values already stored
%% in the secret.
%%
%% When rotation is successful, the `AWSPENDING' staging label might be
%% attached
%% to the same version as the `AWSCURRENT' version, or it might not be
%% attached to any
%% version. If the `AWSPENDING' staging label is present but not attached
%% to the same
%% version as `AWSCURRENT', then any later invocation of
%% `RotateSecret'
%% assumes that a previous rotation request is still in progress and returns
%% an error. When rotation is unsuccessful, the `AWSPENDING' staging
%% label might be attached to an empty secret version. For more information,
%% see Troubleshoot rotation:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot_rotation.html
%% in the Secrets Manager User Guide.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html.
%%
%% Required permissions:
%% `secretsmanager:RotateSecret'.
%% For more information, see
%% IAM policy actions for Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions
%% and Authentication
%% and access control in Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html.
%% You also need `lambda:InvokeFunction' permissions on the rotation
%% function.
%% For more information, see
%% Permissions for rotation:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotating-secrets-required-permissions-function.html.
-spec rotate_secret(aws_client:aws_client(), rotate_secret_request()) ->
    {ok, rotate_secret_response(), tuple()} |
    {error, any()} |
    {error, rotate_secret_errors(), tuple()}.
rotate_secret(Client, Input)
  when is_map(Client), is_map(Input) ->
    rotate_secret(Client, Input, []).

-spec rotate_secret(aws_client:aws_client(), rotate_secret_request(), proplists:proplist()) ->
    {ok, rotate_secret_response(), tuple()} |
    {error, any()} |
    {error, rotate_secret_errors(), tuple()}.
rotate_secret(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RotateSecret">>, Input, Options).

%% @doc Removes the link between the replica secret and the primary secret
%% and promotes the replica to a primary secret in the replica Region.
%%
%% You must call this operation from the Region in which you want to promote
%% the replica to a primary secret.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html.
%%
%% Required permissions:
%% `secretsmanager:StopReplicationToReplica'.
%% For more information, see
%% IAM policy actions for Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions
%% and Authentication
%% and access control in Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html.
-spec stop_replication_to_replica(aws_client:aws_client(), stop_replication_to_replica_request()) ->
    {ok, stop_replication_to_replica_response(), tuple()} |
    {error, any()} |
    {error, stop_replication_to_replica_errors(), tuple()}.
stop_replication_to_replica(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_replication_to_replica(Client, Input, []).

-spec stop_replication_to_replica(aws_client:aws_client(), stop_replication_to_replica_request(), proplists:proplist()) ->
    {ok, stop_replication_to_replica_response(), tuple()} |
    {error, any()} |
    {error, stop_replication_to_replica_errors(), tuple()}.
stop_replication_to_replica(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopReplicationToReplica">>, Input, Options).

%% @doc Attaches tags to a secret.
%%
%% Tags consist of a key name and a value. Tags are part of the
%% secret's metadata. They are not associated with specific versions of
%% the secret. This operation appends tags to the existing list of tags.
%%
%% For tag quotas and naming restrictions, see Service quotas for Tagging:
%% https://docs.aws.amazon.com/general/latest/gr/arg.html#taged-reference-quotas
%% in the Amazon Web Services General
%% Reference guide.
%%
%% If you use tags as part of your security strategy, then adding or removing
%% a tag can
%% change permissions. If successfully completing this operation would result
%% in you losing
%% your permissions for this secret, then the operation is blocked and
%% returns an Access Denied
%% error.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html.
%%
%% Required permissions:
%% `secretsmanager:TagResource'.
%% For more information, see
%% IAM policy actions for Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions
%% and Authentication
%% and access control in Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes specific tags from a secret.
%%
%% This operation is idempotent. If a requested tag is not attached to the
%% secret, no error
%% is returned and the secret metadata is unchanged.
%%
%% If you use tags as part of your security strategy, then removing a tag can
%% change
%% permissions. If successfully completing this operation would result in you
%% losing your
%% permissions for this secret, then the operation is blocked and returns an
%% Access Denied
%% error.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html.
%%
%% Required permissions:
%% `secretsmanager:UntagResource'.
%% For more information, see
%% IAM policy actions for Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions
%% and Authentication
%% and access control in Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Modifies the details of a secret, including metadata and the secret
%% value.
%%
%% To change the secret value, you can also use `PutSecretValue'.
%%
%% To change the rotation configuration of a secret, use `RotateSecret'
%% instead.
%%
%% To change a secret so that it is managed by another service, you need to
%% recreate the secret in that service. See Secrets Manager secrets managed
%% by other Amazon Web Services services:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/service-linked-secrets.html.
%%
%% We recommend you avoid calling `UpdateSecret' at a sustained rate of
%% more than
%% once every 10 minutes. When you call `UpdateSecret' to update the
%% secret value, Secrets Manager creates a new version
%% of the secret. Secrets Manager removes outdated versions when there are
%% more than 100, but it does not
%% remove versions created less than 24 hours ago. If you update the secret
%% value more
%% than once every 10 minutes, you create more versions than Secrets Manager
%% removes, and you will reach
%% the quota for secret versions.
%%
%% If you include `SecretString' or `SecretBinary' to create a new
%% secret version, Secrets Manager automatically moves the staging label
%% `AWSCURRENT' to the new
%% version. Then it attaches the label `AWSPREVIOUS'
%% to the version that `AWSCURRENT' was removed from.
%%
%% If you call this operation with a `ClientRequestToken' that matches an
%% existing version's
%% `VersionId', the operation results in an error. You can't modify
%% an existing
%% version, you can only create a new version. To remove a version, remove
%% all staging labels from it. See
%% `UpdateSecretVersionStage'.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters except
%% `SecretBinary' or `SecretString' because it might be logged. For
%% more information, see Logging Secrets Manager events with CloudTrail:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html.
%%
%% Required permissions:
%% `secretsmanager:UpdateSecret'.
%% For more information, see
%% IAM policy actions for Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions
%% and Authentication
%% and access control in Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html.
%% If you use a customer managed key, you must also have
%% `kms:GenerateDataKey', `kms:Encrypt', and
%% `kms:Decrypt' permissions on the key. If you change the KMS key and
%% you don't have `kms:Encrypt' permission to the new key, Secrets
%% Manager does not re-encrypt existing secret versions with the new key. For
%% more information, see
%% Secret encryption and decryption:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/security-encryption.html.
%%
%% When you enter commands in a command shell, there is a risk of the command
%% history being accessed or utilities having access to your command
%% parameters. This is a concern if the command includes the value of a
%% secret. Learn how to Mitigate the risks of using command-line tools to
%% store Secrets Manager secrets:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/security_cli-exposure-risks.html.
-spec update_secret(aws_client:aws_client(), update_secret_request()) ->
    {ok, update_secret_response(), tuple()} |
    {error, any()} |
    {error, update_secret_errors(), tuple()}.
update_secret(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_secret(Client, Input, []).

-spec update_secret(aws_client:aws_client(), update_secret_request(), proplists:proplist()) ->
    {ok, update_secret_response(), tuple()} |
    {error, any()} |
    {error, update_secret_errors(), tuple()}.
update_secret(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSecret">>, Input, Options).

%% @doc Modifies the staging labels attached to a version of a secret.
%%
%% Secrets Manager uses staging labels to
%% track a version as it progresses through the secret rotation process. Each
%% staging label can be
%% attached to only one version at a time. To add a staging label to a
%% version when it is already
%% attached to another version, Secrets Manager first removes it from the
%% other version first and
%% then attaches it to this one. For more information about versions and
%% staging labels, see Concepts: Version:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/getting-started.html#term_version.
%%
%% The staging labels that you specify in the `VersionStage' parameter
%% are added
%% to the existing list of staging labels for the version.
%%
%% You can move the `AWSCURRENT' staging label to this version by
%% including it in this
%% call.
%%
%% Whenever you move `AWSCURRENT', Secrets Manager automatically moves
%% the label `AWSPREVIOUS'
%% to the version that `AWSCURRENT' was removed from.
%%
%% If this action results in the last label being removed from a version,
%% then the version is
%% considered to be 'deprecated' and can be deleted by Secrets
%% Manager.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html.
%%
%% Required permissions:
%% `secretsmanager:UpdateSecretVersionStage'.
%% For more information, see
%% IAM policy actions for Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions
%% and Authentication
%% and access control in Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html.
-spec update_secret_version_stage(aws_client:aws_client(), update_secret_version_stage_request()) ->
    {ok, update_secret_version_stage_response(), tuple()} |
    {error, any()} |
    {error, update_secret_version_stage_errors(), tuple()}.
update_secret_version_stage(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_secret_version_stage(Client, Input, []).

-spec update_secret_version_stage(aws_client:aws_client(), update_secret_version_stage_request(), proplists:proplist()) ->
    {ok, update_secret_version_stage_response(), tuple()} |
    {error, any()} |
    {error, update_secret_version_stage_errors(), tuple()}.
update_secret_version_stage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSecretVersionStage">>, Input, Options).

%% @doc Validates that a resource policy does not grant a wide range of
%% principals access to
%% your secret.
%%
%% A resource-based policy is optional for secrets.
%%
%% The API performs three checks when validating the policy:
%%
%% Sends a call to Zelkova:
%% https://aws.amazon.com/blogs/security/protect-sensitive-data-in-the-cloud-with-automated-reasoning-zelkova/,
%% an automated reasoning engine, to ensure your resource policy does not
%% allow broad access to your secret, for example policies that use a
%% wildcard for the principal.
%%
%% Checks for correct syntax in a policy.
%%
%% Verifies the policy does not lock out a caller.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html.
%%
%% Required permissions:
%% `secretsmanager:ValidateResourcePolicy' and
%% `secretsmanager:PutResourcePolicy'.
%% For more information, see
%% IAM policy actions for Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions
%% and Authentication
%% and access control in Secrets Manager:
%% https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html.
-spec validate_resource_policy(aws_client:aws_client(), validate_resource_policy_request()) ->
    {ok, validate_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, validate_resource_policy_errors(), tuple()}.
validate_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    validate_resource_policy(Client, Input, []).

-spec validate_resource_policy(aws_client:aws_client(), validate_resource_policy_request(), proplists:proplist()) ->
    {ok, validate_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, validate_resource_policy_errors(), tuple()}.
validate_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ValidateResourcePolicy">>, Input, Options).

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
    Client1 = Client#{service => <<"secretsmanager">>},
    Host = build_host(<<"secretsmanager">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"secretsmanager.", Action/binary>>}
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
