%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Signer is a fully managed code-signing service to help you ensure
%% the trust and
%% integrity of your code.
%%
%% Signer supports the following applications:
%%
%% With code signing for AWS Lambda, you can sign AWS
%% Lambda: http://docs.aws.amazon.com/lambda/latest/dg/ deployment packages.
%% Integrated support is provided for Amazon S3:
%% http://docs.aws.amazon.com/AmazonS3/latest/gsg/, Amazon
%% CloudWatch:
%% http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/, and AWS
%% CloudTrail: http://docs.aws.amazon.com/awscloudtrail/latest/userguide/. In
%% order
%% to sign code, you create a signing profile and then use Signer to sign
%% Lambda zip
%% files in S3.
%%
%% With code signing for IoT, you can sign code for any IoT device that is
%% supported by AWS.
%% IoT code signing is available for Amazon FreeRTOS:
%% http://docs.aws.amazon.com/freertos/latest/userguide/ and AWS IoT Device
%% Management: http://docs.aws.amazon.com/iot/latest/developerguide/, and is
%% integrated with AWS Certificate Manager (ACM):
%% http://docs.aws.amazon.com/acm/latest/userguide/. In order to sign code,
%% you import a third-party code-signing
%% certificate using ACM, and use that to sign updates in Amazon FreeRTOS and
%% AWS IoT Device Management.
%%
%% With Signer and the Notation CLI from the Notary
%% Project: https://notaryproject.dev/, you can sign container images stored
%% in a container registry such
%% as Amazon Elastic Container Registry (ECR). The signatures are stored in
%% the registry
%% alongside the images, where they are available for verifying image
%% authenticity and
%% integrity.
%%
%% For more information about Signer, see the AWS Signer Developer
%% Guide:
%% https://docs.aws.amazon.com/signer/latest/developerguide/Welcome.html.
-module(aws_signer).

-export([add_profile_permission/3,
         add_profile_permission/4,
         cancel_signing_profile/3,
         cancel_signing_profile/4,
         describe_signing_job/2,
         describe_signing_job/4,
         describe_signing_job/5,
         get_revocation_status/6,
         get_revocation_status/8,
         get_revocation_status/9,
         get_signing_platform/2,
         get_signing_platform/4,
         get_signing_platform/5,
         get_signing_profile/2,
         get_signing_profile/4,
         get_signing_profile/5,
         list_profile_permissions/2,
         list_profile_permissions/4,
         list_profile_permissions/5,
         list_signing_jobs/1,
         list_signing_jobs/3,
         list_signing_jobs/4,
         list_signing_platforms/1,
         list_signing_platforms/3,
         list_signing_platforms/4,
         list_signing_profiles/1,
         list_signing_profiles/3,
         list_signing_profiles/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_signing_profile/3,
         put_signing_profile/4,
         remove_profile_permission/4,
         remove_profile_permission/5,
         revoke_signature/3,
         revoke_signature/4,
         revoke_signing_profile/3,
         revoke_signing_profile/4,
         sign_payload/2,
         sign_payload/3,
         start_signing_job/2,
         start_signing_job/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% cancel_signing_profile_request() :: #{}
-type cancel_signing_profile_request() :: #{}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% remove_profile_permission_response() :: #{
%%   <<"revisionId">> => string()
%% }
-type remove_profile_permission_response() :: #{binary() => any()}.


%% Example:
%% s3_source() :: #{
%%   <<"bucketName">> => string(),
%%   <<"key">> => string(),
%%   <<"version">> => string()
%% }
-type s3_source() :: #{binary() => any()}.


%% Example:
%% signing_platform_overrides() :: #{
%%   <<"signingConfiguration">> => signing_configuration_overrides(),
%%   <<"signingImageFormat">> => list(any())
%% }
-type signing_platform_overrides() :: #{binary() => any()}.


%% Example:
%% signing_configuration_overrides() :: #{
%%   <<"encryptionAlgorithm">> => list(any()),
%%   <<"hashAlgorithm">> => list(any())
%% }
-type signing_configuration_overrides() :: #{binary() => any()}.


%% Example:
%% start_signing_job_request() :: #{
%%   <<"clientRequestToken">> := string(),
%%   <<"destination">> := destination(),
%%   <<"profileName">> := string(),
%%   <<"profileOwner">> => string(),
%%   <<"source">> := source()
%% }
-type start_signing_job_request() :: #{binary() => any()}.


%% Example:
%% signing_platform() :: #{
%%   <<"category">> => list(any()),
%%   <<"displayName">> => string(),
%%   <<"maxSizeInMB">> => integer(),
%%   <<"partner">> => string(),
%%   <<"platformId">> => string(),
%%   <<"revocationSupported">> => boolean(),
%%   <<"signingConfiguration">> => signing_configuration(),
%%   <<"signingImageFormat">> => signing_image_format(),
%%   <<"target">> => string()
%% }
-type signing_platform() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% signing_image_format() :: #{
%%   <<"defaultFormat">> => list(any()),
%%   <<"supportedFormats">> => list(list(any())())
%% }
-type signing_image_format() :: #{binary() => any()}.


%% Example:
%% remove_profile_permission_request() :: #{
%%   <<"revisionId">> := string()
%% }
-type remove_profile_permission_request() :: #{binary() => any()}.


%% Example:
%% signing_profile() :: #{
%%   <<"arn">> => string(),
%%   <<"platformDisplayName">> => string(),
%%   <<"platformId">> => string(),
%%   <<"profileName">> => string(),
%%   <<"profileVersion">> => string(),
%%   <<"profileVersionArn">> => string(),
%%   <<"signatureValidityPeriod">> => signature_validity_period(),
%%   <<"signingMaterial">> => signing_material(),
%%   <<"signingParameters">> => map(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map()
%% }
-type signing_profile() :: #{binary() => any()}.


%% Example:
%% list_signing_jobs_response() :: #{
%%   <<"jobs">> => list(signing_job()),
%%   <<"nextToken">> => string()
%% }
-type list_signing_jobs_response() :: #{binary() => any()}.


%% Example:
%% add_profile_permission_request() :: #{
%%   <<"action">> := string(),
%%   <<"principal">> := string(),
%%   <<"profileVersion">> => string(),
%%   <<"revisionId">> => string(),
%%   <<"statementId">> := string()
%% }
-type add_profile_permission_request() :: #{binary() => any()}.


%% Example:
%% internal_service_error_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string()
%% }
-type internal_service_error_exception() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.


%% Example:
%% put_signing_profile_request() :: #{
%%   <<"overrides">> => signing_platform_overrides(),
%%   <<"platformId">> := string(),
%%   <<"signatureValidityPeriod">> => signature_validity_period(),
%%   <<"signingMaterial">> => signing_material(),
%%   <<"signingParameters">> => map(),
%%   <<"tags">> => map()
%% }
-type put_signing_profile_request() :: #{binary() => any()}.

%% Example:
%% get_signing_platform_request() :: #{}
-type get_signing_platform_request() :: #{}.


%% Example:
%% signing_configuration() :: #{
%%   <<"encryptionAlgorithmOptions">> => encryption_algorithm_options(),
%%   <<"hashAlgorithmOptions">> => hash_algorithm_options()
%% }
-type signing_configuration() :: #{binary() => any()}.


%% Example:
%% get_signing_profile_request() :: #{
%%   <<"profileOwner">> => string()
%% }
-type get_signing_profile_request() :: #{binary() => any()}.


%% Example:
%% signature_validity_period() :: #{
%%   <<"type">> => list(any()),
%%   <<"value">> => integer()
%% }
-type signature_validity_period() :: #{binary() => any()}.


%% Example:
%% signing_job_revocation_record() :: #{
%%   <<"reason">> => string(),
%%   <<"revokedAt">> => non_neg_integer(),
%%   <<"revokedBy">> => string()
%% }
-type signing_job_revocation_record() :: #{binary() => any()}.

%% Example:
%% describe_signing_job_request() :: #{}
-type describe_signing_job_request() :: #{}.


%% Example:
%% conflict_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% put_signing_profile_response() :: #{
%%   <<"arn">> => string(),
%%   <<"profileVersion">> => string(),
%%   <<"profileVersionArn">> => string()
%% }
-type put_signing_profile_response() :: #{binary() => any()}.


%% Example:
%% get_signing_platform_response() :: #{
%%   <<"category">> => list(any()),
%%   <<"displayName">> => string(),
%%   <<"maxSizeInMB">> => integer(),
%%   <<"partner">> => string(),
%%   <<"platformId">> => string(),
%%   <<"revocationSupported">> => boolean(),
%%   <<"signingConfiguration">> => signing_configuration(),
%%   <<"signingImageFormat">> => signing_image_format(),
%%   <<"target">> => string()
%% }
-type get_signing_platform_response() :: #{binary() => any()}.


%% Example:
%% get_revocation_status_response() :: #{
%%   <<"revokedEntities">> => list(string())
%% }
-type get_revocation_status_response() :: #{binary() => any()}.


%% Example:
%% describe_signing_job_response() :: #{
%%   <<"completedAt">> => non_neg_integer(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"jobId">> => string(),
%%   <<"jobInvoker">> => string(),
%%   <<"jobOwner">> => string(),
%%   <<"overrides">> => signing_platform_overrides(),
%%   <<"platformDisplayName">> => string(),
%%   <<"platformId">> => string(),
%%   <<"profileName">> => string(),
%%   <<"profileVersion">> => string(),
%%   <<"requestedBy">> => string(),
%%   <<"revocationRecord">> => signing_job_revocation_record(),
%%   <<"signatureExpiresAt">> => non_neg_integer(),
%%   <<"signedObject">> => signed_object(),
%%   <<"signingMaterial">> => signing_material(),
%%   <<"signingParameters">> => map(),
%%   <<"source">> => source(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => string()
%% }
-type describe_signing_job_response() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% get_revocation_status_request() :: #{
%%   <<"certificateHashes">> := list(string()),
%%   <<"jobArn">> := string(),
%%   <<"platformId">> := string(),
%%   <<"profileVersionArn">> := string(),
%%   <<"signatureTimestamp">> := non_neg_integer()
%% }
-type get_revocation_status_request() :: #{binary() => any()}.


%% Example:
%% list_profile_permissions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"permissions">> => list(permission()),
%%   <<"policySizeBytes">> => integer(),
%%   <<"revisionId">> => string()
%% }
-type list_profile_permissions_response() :: #{binary() => any()}.


%% Example:
%% s3_destination() :: #{
%%   <<"bucketName">> => string(),
%%   <<"prefix">> => string()
%% }
-type s3_destination() :: #{binary() => any()}.


%% Example:
%% list_signing_jobs_request() :: #{
%%   <<"isRevoked">> => boolean(),
%%   <<"jobInvoker">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"platformId">> => string(),
%%   <<"requestedBy">> => string(),
%%   <<"signatureExpiresAfter">> => non_neg_integer(),
%%   <<"signatureExpiresBefore">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type list_signing_jobs_request() :: #{binary() => any()}.


%% Example:
%% source() :: #{
%%   <<"s3">> => s3_source()
%% }
-type source() :: #{binary() => any()}.


%% Example:
%% signed_object() :: #{
%%   <<"s3">> => s3_signed_object()
%% }
-type signed_object() :: #{binary() => any()}.


%% Example:
%% signing_material() :: #{
%%   <<"certificateArn">> => string()
%% }
-type signing_material() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% start_signing_job_response() :: #{
%%   <<"jobId">> => string(),
%%   <<"jobOwner">> => string()
%% }
-type start_signing_job_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% list_signing_profiles_request() :: #{
%%   <<"includeCanceled">> => boolean(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"platformId">> => string(),
%%   <<"statuses">> => list(list(any())())
%% }
-type list_signing_profiles_request() :: #{binary() => any()}.


%% Example:
%% signing_profile_revocation_record() :: #{
%%   <<"revocationEffectiveFrom">> => non_neg_integer(),
%%   <<"revokedAt">> => non_neg_integer(),
%%   <<"revokedBy">> => string()
%% }
-type signing_profile_revocation_record() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% destination() :: #{
%%   <<"s3">> => s3_destination()
%% }
-type destination() :: #{binary() => any()}.


%% Example:
%% service_limit_exceeded_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string()
%% }
-type service_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% signing_job() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"isRevoked">> => boolean(),
%%   <<"jobId">> => string(),
%%   <<"jobInvoker">> => string(),
%%   <<"jobOwner">> => string(),
%%   <<"platformDisplayName">> => string(),
%%   <<"platformId">> => string(),
%%   <<"profileName">> => string(),
%%   <<"profileVersion">> => string(),
%%   <<"signatureExpiresAt">> => non_neg_integer(),
%%   <<"signedObject">> => signed_object(),
%%   <<"signingMaterial">> => signing_material(),
%%   <<"source">> => source(),
%%   <<"status">> => list(any())
%% }
-type signing_job() :: #{binary() => any()}.


%% Example:
%% hash_algorithm_options() :: #{
%%   <<"allowedValues">> => list(list(any())()),
%%   <<"defaultValue">> => list(any())
%% }
-type hash_algorithm_options() :: #{binary() => any()}.


%% Example:
%% revoke_signing_profile_request() :: #{
%%   <<"effectiveTime">> := non_neg_integer(),
%%   <<"profileVersion">> := string(),
%%   <<"reason">> := string()
%% }
-type revoke_signing_profile_request() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% s3_signed_object() :: #{
%%   <<"bucketName">> => string(),
%%   <<"key">> => string()
%% }
-type s3_signed_object() :: #{binary() => any()}.


%% Example:
%% sign_payload_request() :: #{
%%   <<"payload">> := binary(),
%%   <<"payloadFormat">> := string(),
%%   <<"profileName">> := string(),
%%   <<"profileOwner">> => string()
%% }
-type sign_payload_request() :: #{binary() => any()}.


%% Example:
%% get_signing_profile_response() :: #{
%%   <<"arn">> => string(),
%%   <<"overrides">> => signing_platform_overrides(),
%%   <<"platformDisplayName">> => string(),
%%   <<"platformId">> => string(),
%%   <<"profileName">> => string(),
%%   <<"profileVersion">> => string(),
%%   <<"profileVersionArn">> => string(),
%%   <<"revocationRecord">> => signing_profile_revocation_record(),
%%   <<"signatureValidityPeriod">> => signature_validity_period(),
%%   <<"signingMaterial">> => signing_material(),
%%   <<"signingParameters">> => map(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => string(),
%%   <<"tags">> => map()
%% }
-type get_signing_profile_response() :: #{binary() => any()}.


%% Example:
%% list_signing_profiles_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"profiles">> => list(signing_profile())
%% }
-type list_signing_profiles_response() :: #{binary() => any()}.


%% Example:
%% sign_payload_response() :: #{
%%   <<"jobId">> => string(),
%%   <<"jobOwner">> => string(),
%%   <<"metadata">> => map(),
%%   <<"signature">> => binary()
%% }
-type sign_payload_response() :: #{binary() => any()}.


%% Example:
%% list_signing_platforms_request() :: #{
%%   <<"category">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"partner">> => string(),
%%   <<"target">> => string()
%% }
-type list_signing_platforms_request() :: #{binary() => any()}.


%% Example:
%% revoke_signature_request() :: #{
%%   <<"jobOwner">> => string(),
%%   <<"reason">> := string()
%% }
-type revoke_signature_request() :: #{binary() => any()}.


%% Example:
%% add_profile_permission_response() :: #{
%%   <<"revisionId">> => string()
%% }
-type add_profile_permission_response() :: #{binary() => any()}.


%% Example:
%% list_signing_platforms_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"platforms">> => list(signing_platform())
%% }
-type list_signing_platforms_response() :: #{binary() => any()}.


%% Example:
%% permission() :: #{
%%   <<"action">> => string(),
%%   <<"principal">> => string(),
%%   <<"profileVersion">> => string(),
%%   <<"statementId">> => string()
%% }
-type permission() :: #{binary() => any()}.


%% Example:
%% encryption_algorithm_options() :: #{
%%   <<"allowedValues">> => list(list(any())()),
%%   <<"defaultValue">> => list(any())
%% }
-type encryption_algorithm_options() :: #{binary() => any()}.


%% Example:
%% list_profile_permissions_request() :: #{
%%   <<"nextToken">> => string()
%% }
-type list_profile_permissions_request() :: #{binary() => any()}.

-type add_profile_permission_errors() ::
    service_limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    internal_service_error_exception().

-type cancel_signing_profile_errors() ::
    access_denied_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    internal_service_error_exception().

-type describe_signing_job_errors() ::
    access_denied_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    internal_service_error_exception().

-type get_revocation_status_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    too_many_requests_exception() | 
    internal_service_error_exception().

-type get_signing_platform_errors() ::
    access_denied_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    internal_service_error_exception().

-type get_signing_profile_errors() ::
    access_denied_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    internal_service_error_exception().

-type list_profile_permissions_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    internal_service_error_exception().

-type list_signing_jobs_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    too_many_requests_exception() | 
    internal_service_error_exception().

-type list_signing_platforms_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    too_many_requests_exception() | 
    internal_service_error_exception().

-type list_signing_profiles_errors() ::
    access_denied_exception() | 
    too_many_requests_exception() | 
    internal_service_error_exception().

-type list_tags_for_resource_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    internal_service_error_exception().

-type put_signing_profile_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    internal_service_error_exception().

-type remove_profile_permission_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    internal_service_error_exception().

-type revoke_signature_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    internal_service_error_exception().

-type revoke_signing_profile_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    internal_service_error_exception().

-type sign_payload_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    internal_service_error_exception().

-type start_signing_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    internal_service_error_exception().

-type tag_resource_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    internal_service_error_exception().

-type untag_resource_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    internal_service_error_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds cross-account permissions to a signing profile.
-spec add_profile_permission(aws_client:aws_client(), binary() | list(), add_profile_permission_request()) ->
    {ok, add_profile_permission_response(), tuple()} |
    {error, any()} |
    {error, add_profile_permission_errors(), tuple()}.
add_profile_permission(Client, ProfileName, Input) ->
    add_profile_permission(Client, ProfileName, Input, []).

-spec add_profile_permission(aws_client:aws_client(), binary() | list(), add_profile_permission_request(), proplists:proplist()) ->
    {ok, add_profile_permission_response(), tuple()} |
    {error, any()} |
    {error, add_profile_permission_errors(), tuple()}.
add_profile_permission(Client, ProfileName, Input0, Options0) ->
    Method = post,
    Path = ["/signing-profiles/", aws_util:encode_uri(ProfileName), "/permissions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Changes the state of an `ACTIVE' signing profile to
%% `CANCELED'.
%%
%% A canceled profile is still viewable with the `ListSigningProfiles'
%% operation, but it cannot perform new signing jobs, and is deleted two
%% years after
%% cancelation.
-spec cancel_signing_profile(aws_client:aws_client(), binary() | list(), cancel_signing_profile_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, cancel_signing_profile_errors(), tuple()}.
cancel_signing_profile(Client, ProfileName, Input) ->
    cancel_signing_profile(Client, ProfileName, Input, []).

-spec cancel_signing_profile(aws_client:aws_client(), binary() | list(), cancel_signing_profile_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, cancel_signing_profile_errors(), tuple()}.
cancel_signing_profile(Client, ProfileName, Input0, Options0) ->
    Method = delete,
    Path = ["/signing-profiles/", aws_util:encode_uri(ProfileName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns information about a specific code signing job.
%%
%% You specify the job by using the
%% `jobId' value that is returned by the `StartSigningJob'
%% operation.
-spec describe_signing_job(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_signing_job_response(), tuple()} |
    {error, any()} |
    {error, describe_signing_job_errors(), tuple()}.
describe_signing_job(Client, JobId)
  when is_map(Client) ->
    describe_signing_job(Client, JobId, #{}, #{}).

-spec describe_signing_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_signing_job_response(), tuple()} |
    {error, any()} |
    {error, describe_signing_job_errors(), tuple()}.
describe_signing_job(Client, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_signing_job(Client, JobId, QueryMap, HeadersMap, []).

-spec describe_signing_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_signing_job_response(), tuple()} |
    {error, any()} |
    {error, describe_signing_job_errors(), tuple()}.
describe_signing_job(Client, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/signing-jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the revocation status of one or more of the signing
%% profile, signing job,
%% and signing certificate.
-spec get_revocation_status(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_revocation_status_response(), tuple()} |
    {error, any()} |
    {error, get_revocation_status_errors(), tuple()}.
get_revocation_status(Client, CertificateHashes, JobArn, PlatformId, ProfileVersionArn, SignatureTimestamp)
  when is_map(Client) ->
    get_revocation_status(Client, CertificateHashes, JobArn, PlatformId, ProfileVersionArn, SignatureTimestamp, #{}, #{}).

-spec get_revocation_status(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_revocation_status_response(), tuple()} |
    {error, any()} |
    {error, get_revocation_status_errors(), tuple()}.
get_revocation_status(Client, CertificateHashes, JobArn, PlatformId, ProfileVersionArn, SignatureTimestamp, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_revocation_status(Client, CertificateHashes, JobArn, PlatformId, ProfileVersionArn, SignatureTimestamp, QueryMap, HeadersMap, []).

-spec get_revocation_status(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_revocation_status_response(), tuple()} |
    {error, any()} |
    {error, get_revocation_status_errors(), tuple()}.
get_revocation_status(Client, CertificateHashes, JobArn, PlatformId, ProfileVersionArn, SignatureTimestamp, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/revocations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"certificateHashes">>, CertificateHashes},
        {<<"jobArn">>, JobArn},
        {<<"platformId">>, PlatformId},
        {<<"profileVersionArn">>, ProfileVersionArn},
        {<<"signatureTimestamp">>, SignatureTimestamp}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information on a specific signing platform.
-spec get_signing_platform(aws_client:aws_client(), binary() | list()) ->
    {ok, get_signing_platform_response(), tuple()} |
    {error, any()} |
    {error, get_signing_platform_errors(), tuple()}.
get_signing_platform(Client, PlatformId)
  when is_map(Client) ->
    get_signing_platform(Client, PlatformId, #{}, #{}).

-spec get_signing_platform(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_signing_platform_response(), tuple()} |
    {error, any()} |
    {error, get_signing_platform_errors(), tuple()}.
get_signing_platform(Client, PlatformId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_signing_platform(Client, PlatformId, QueryMap, HeadersMap, []).

-spec get_signing_platform(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_signing_platform_response(), tuple()} |
    {error, any()} |
    {error, get_signing_platform_errors(), tuple()}.
get_signing_platform(Client, PlatformId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/signing-platforms/", aws_util:encode_uri(PlatformId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information on a specific signing profile.
-spec get_signing_profile(aws_client:aws_client(), binary() | list()) ->
    {ok, get_signing_profile_response(), tuple()} |
    {error, any()} |
    {error, get_signing_profile_errors(), tuple()}.
get_signing_profile(Client, ProfileName)
  when is_map(Client) ->
    get_signing_profile(Client, ProfileName, #{}, #{}).

-spec get_signing_profile(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_signing_profile_response(), tuple()} |
    {error, any()} |
    {error, get_signing_profile_errors(), tuple()}.
get_signing_profile(Client, ProfileName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_signing_profile(Client, ProfileName, QueryMap, HeadersMap, []).

-spec get_signing_profile(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_signing_profile_response(), tuple()} |
    {error, any()} |
    {error, get_signing_profile_errors(), tuple()}.
get_signing_profile(Client, ProfileName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/signing-profiles/", aws_util:encode_uri(ProfileName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"profileOwner">>, maps:get(<<"profileOwner">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the cross-account permissions associated with a signing
%% profile.
-spec list_profile_permissions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_profile_permissions_response(), tuple()} |
    {error, any()} |
    {error, list_profile_permissions_errors(), tuple()}.
list_profile_permissions(Client, ProfileName)
  when is_map(Client) ->
    list_profile_permissions(Client, ProfileName, #{}, #{}).

-spec list_profile_permissions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_profile_permissions_response(), tuple()} |
    {error, any()} |
    {error, list_profile_permissions_errors(), tuple()}.
list_profile_permissions(Client, ProfileName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_profile_permissions(Client, ProfileName, QueryMap, HeadersMap, []).

-spec list_profile_permissions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_profile_permissions_response(), tuple()} |
    {error, any()} |
    {error, list_profile_permissions_errors(), tuple()}.
list_profile_permissions(Client, ProfileName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/signing-profiles/", aws_util:encode_uri(ProfileName), "/permissions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all your signing jobs.
%%
%% You can use the `maxResults' parameter to limit the
%% number of signing jobs that are returned in the response. If additional
%% jobs remain to
%% be listed, AWS Signer returns a `nextToken' value. Use this value in
%% subsequent calls to `ListSigningJobs' to fetch the remaining values.
%% You can
%% continue calling `ListSigningJobs' with your `maxResults'
%% parameter and with new values that Signer returns in the `nextToken'
%% parameter until all of your signing jobs have been returned.
-spec list_signing_jobs(aws_client:aws_client()) ->
    {ok, list_signing_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_signing_jobs_errors(), tuple()}.
list_signing_jobs(Client)
  when is_map(Client) ->
    list_signing_jobs(Client, #{}, #{}).

-spec list_signing_jobs(aws_client:aws_client(), map(), map()) ->
    {ok, list_signing_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_signing_jobs_errors(), tuple()}.
list_signing_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_signing_jobs(Client, QueryMap, HeadersMap, []).

-spec list_signing_jobs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_signing_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_signing_jobs_errors(), tuple()}.
list_signing_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/signing-jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"isRevoked">>, maps:get(<<"isRevoked">>, QueryMap, undefined)},
        {<<"jobInvoker">>, maps:get(<<"jobInvoker">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"platformId">>, maps:get(<<"platformId">>, QueryMap, undefined)},
        {<<"requestedBy">>, maps:get(<<"requestedBy">>, QueryMap, undefined)},
        {<<"signatureExpiresAfter">>, maps:get(<<"signatureExpiresAfter">>, QueryMap, undefined)},
        {<<"signatureExpiresBefore">>, maps:get(<<"signatureExpiresBefore">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all signing platforms available in AWS Signer that match the
%% request parameters.
%%
%% If
%% additional jobs remain to be listed, Signer returns a `nextToken'
%% value.
%% Use this value in subsequent calls to `ListSigningJobs' to fetch the
%% remaining values. You can continue calling `ListSigningJobs' with your
%% `maxResults' parameter and with new values that Signer returns in the
%% `nextToken' parameter until all of your signing jobs have been
%% returned.
-spec list_signing_platforms(aws_client:aws_client()) ->
    {ok, list_signing_platforms_response(), tuple()} |
    {error, any()} |
    {error, list_signing_platforms_errors(), tuple()}.
list_signing_platforms(Client)
  when is_map(Client) ->
    list_signing_platforms(Client, #{}, #{}).

-spec list_signing_platforms(aws_client:aws_client(), map(), map()) ->
    {ok, list_signing_platforms_response(), tuple()} |
    {error, any()} |
    {error, list_signing_platforms_errors(), tuple()}.
list_signing_platforms(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_signing_platforms(Client, QueryMap, HeadersMap, []).

-spec list_signing_platforms(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_signing_platforms_response(), tuple()} |
    {error, any()} |
    {error, list_signing_platforms_errors(), tuple()}.
list_signing_platforms(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/signing-platforms"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"category">>, maps:get(<<"category">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"partner">>, maps:get(<<"partner">>, QueryMap, undefined)},
        {<<"target">>, maps:get(<<"target">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all available signing profiles in your AWS account.
%%
%% Returns only profiles with an
%% `ACTIVE' status unless the `includeCanceled' request field is
%% set to `true'. If additional jobs remain to be listed, AWS Signer
%% returns a
%% `nextToken' value. Use this value in subsequent calls to
%% `ListSigningJobs' to fetch the remaining values. You can continue
%% calling
%% `ListSigningJobs' with your `maxResults' parameter and with
%% new values that Signer returns in the `nextToken' parameter until all
%% of
%% your signing jobs have been returned.
-spec list_signing_profiles(aws_client:aws_client()) ->
    {ok, list_signing_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_signing_profiles_errors(), tuple()}.
list_signing_profiles(Client)
  when is_map(Client) ->
    list_signing_profiles(Client, #{}, #{}).

-spec list_signing_profiles(aws_client:aws_client(), map(), map()) ->
    {ok, list_signing_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_signing_profiles_errors(), tuple()}.
list_signing_profiles(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_signing_profiles(Client, QueryMap, HeadersMap, []).

-spec list_signing_profiles(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_signing_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_signing_profiles_errors(), tuple()}.
list_signing_profiles(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/signing-profiles"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"includeCanceled">>, maps:get(<<"includeCanceled">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"platformId">>, maps:get(<<"platformId">>, QueryMap, undefined)},
        {<<"statuses">>, maps:get(<<"statuses">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the tags associated with a signing profile
%% resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Creates a signing profile.
%%
%% A signing profile is a code-signing template that can be used to
%% carry out a pre-defined signing job.
-spec put_signing_profile(aws_client:aws_client(), binary() | list(), put_signing_profile_request()) ->
    {ok, put_signing_profile_response(), tuple()} |
    {error, any()} |
    {error, put_signing_profile_errors(), tuple()}.
put_signing_profile(Client, ProfileName, Input) ->
    put_signing_profile(Client, ProfileName, Input, []).

-spec put_signing_profile(aws_client:aws_client(), binary() | list(), put_signing_profile_request(), proplists:proplist()) ->
    {ok, put_signing_profile_response(), tuple()} |
    {error, any()} |
    {error, put_signing_profile_errors(), tuple()}.
put_signing_profile(Client, ProfileName, Input0, Options0) ->
    Method = put,
    Path = ["/signing-profiles/", aws_util:encode_uri(ProfileName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes cross-account permissions from a signing profile.
-spec remove_profile_permission(aws_client:aws_client(), binary() | list(), binary() | list(), remove_profile_permission_request()) ->
    {ok, remove_profile_permission_response(), tuple()} |
    {error, any()} |
    {error, remove_profile_permission_errors(), tuple()}.
remove_profile_permission(Client, ProfileName, StatementId, Input) ->
    remove_profile_permission(Client, ProfileName, StatementId, Input, []).

-spec remove_profile_permission(aws_client:aws_client(), binary() | list(), binary() | list(), remove_profile_permission_request(), proplists:proplist()) ->
    {ok, remove_profile_permission_response(), tuple()} |
    {error, any()} |
    {error, remove_profile_permission_errors(), tuple()}.
remove_profile_permission(Client, ProfileName, StatementId, Input0, Options0) ->
    Method = delete,
    Path = ["/signing-profiles/", aws_util:encode_uri(ProfileName), "/permissions/", aws_util:encode_uri(StatementId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"revisionId">>, <<"revisionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Changes the state of a signing job to REVOKED.
%%
%% This indicates that the signature is no
%% longer valid.
-spec revoke_signature(aws_client:aws_client(), binary() | list(), revoke_signature_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, revoke_signature_errors(), tuple()}.
revoke_signature(Client, JobId, Input) ->
    revoke_signature(Client, JobId, Input, []).

-spec revoke_signature(aws_client:aws_client(), binary() | list(), revoke_signature_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, revoke_signature_errors(), tuple()}.
revoke_signature(Client, JobId, Input0, Options0) ->
    Method = put,
    Path = ["/signing-jobs/", aws_util:encode_uri(JobId), "/revoke"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Changes the state of a signing profile to REVOKED.
%%
%% This indicates that signatures
%% generated using the signing profile after an effective start date are no
%% longer
%% valid.
-spec revoke_signing_profile(aws_client:aws_client(), binary() | list(), revoke_signing_profile_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, revoke_signing_profile_errors(), tuple()}.
revoke_signing_profile(Client, ProfileName, Input) ->
    revoke_signing_profile(Client, ProfileName, Input, []).

-spec revoke_signing_profile(aws_client:aws_client(), binary() | list(), revoke_signing_profile_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, revoke_signing_profile_errors(), tuple()}.
revoke_signing_profile(Client, ProfileName, Input0, Options0) ->
    Method = put,
    Path = ["/signing-profiles/", aws_util:encode_uri(ProfileName), "/revoke"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Signs a binary payload and returns a signature envelope.
-spec sign_payload(aws_client:aws_client(), sign_payload_request()) ->
    {ok, sign_payload_response(), tuple()} |
    {error, any()} |
    {error, sign_payload_errors(), tuple()}.
sign_payload(Client, Input) ->
    sign_payload(Client, Input, []).

-spec sign_payload(aws_client:aws_client(), sign_payload_request(), proplists:proplist()) ->
    {ok, sign_payload_response(), tuple()} |
    {error, any()} |
    {error, sign_payload_errors(), tuple()}.
sign_payload(Client, Input0, Options0) ->
    Method = post,
    Path = ["/signing-jobs/with-payload"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Initiates a signing job to be performed on the code provided.
%%
%% Signing jobs are
%% viewable by the `ListSigningJobs' operation for two years after they
%% are
%% performed. Note the following requirements:
%%
%% You must create an Amazon S3 source bucket. For more information, see
%% Creating a Bucket:
%% http://docs.aws.amazon.com/AmazonS3/latest/gsg/CreatingABucket.html in the
%% Amazon S3 Getting Started Guide.
%%
%% Your S3 source bucket must be version enabled.
%%
%% You must create an S3 destination bucket. AWS Signer uses your S3
%% destination bucket to
%% write your signed code.
%%
%% You specify the name of the source and destination buckets when calling
%% the
%% `StartSigningJob' operation.
%%
%% You must ensure the S3 buckets are from the same Region as the signing
%% profile. Cross-Region signing isn't supported.
%%
%% You must also specify a request token that identifies your request to
%% Signer.
%%
%% You can call the `DescribeSigningJob' and the `ListSigningJobs'
%% actions after you call
%% `StartSigningJob'.
%%
%% For a Java example that shows how to use this action, see StartSigningJob:
%% https://docs.aws.amazon.com/signer/latest/developerguide/api-startsigningjob.html.
-spec start_signing_job(aws_client:aws_client(), start_signing_job_request()) ->
    {ok, start_signing_job_response(), tuple()} |
    {error, any()} |
    {error, start_signing_job_errors(), tuple()}.
start_signing_job(Client, Input) ->
    start_signing_job(Client, Input, []).

-spec start_signing_job(aws_client:aws_client(), start_signing_job_request(), proplists:proplist()) ->
    {ok, start_signing_job_response(), tuple()} |
    {error, any()} |
    {error, start_signing_job_errors(), tuple()}.
start_signing_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/signing-jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds one or more tags to a signing profile.
%%
%% Tags are labels that you can use to
%% identify and organize your AWS resources. Each tag consists of a key and
%% an optional
%% value. To specify the signing profile, use its Amazon Resource Name (ARN).
%% To specify
%% the tag, use a key-value pair.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes one or more tags from a signing profile.
%%
%% To remove the tags, specify a list of
%% tag keys.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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

-spec proplists_take(any(), proplists:proplist(), any()) -> {any(), proplists:proplist()}.
proplists_take(Key, Proplist, Default) ->
  Value = proplists:get_value(Key, Proplist, Default),
  {Value, proplists:delete(Key, Proplist)}.

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
    Client1 = Client#{service => <<"signer">>},
    Host = build_host(<<"signer">>, Client1),
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
