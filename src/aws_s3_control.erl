%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services S3 Control provides access to Amazon S3 control
%% plane actions.
-module(aws_s3_control).

-export([associate_access_grants_identity_center/2,
         associate_access_grants_identity_center/3,
         create_access_grant/2,
         create_access_grant/3,
         create_access_grants_instance/2,
         create_access_grants_instance/3,
         create_access_grants_location/2,
         create_access_grants_location/3,
         create_access_point/3,
         create_access_point/4,
         create_access_point_for_object_lambda/3,
         create_access_point_for_object_lambda/4,
         create_bucket/3,
         create_bucket/4,
         create_job/2,
         create_job/3,
         create_multi_region_access_point/2,
         create_multi_region_access_point/3,
         create_storage_lens_group/2,
         create_storage_lens_group/3,
         delete_access_grant/3,
         delete_access_grant/4,
         delete_access_grants_instance/2,
         delete_access_grants_instance/3,
         delete_access_grants_instance_resource_policy/2,
         delete_access_grants_instance_resource_policy/3,
         delete_access_grants_location/3,
         delete_access_grants_location/4,
         delete_access_point/3,
         delete_access_point/4,
         delete_access_point_for_object_lambda/3,
         delete_access_point_for_object_lambda/4,
         delete_access_point_policy/3,
         delete_access_point_policy/4,
         delete_access_point_policy_for_object_lambda/3,
         delete_access_point_policy_for_object_lambda/4,
         delete_bucket/3,
         delete_bucket/4,
         delete_bucket_lifecycle_configuration/3,
         delete_bucket_lifecycle_configuration/4,
         delete_bucket_policy/3,
         delete_bucket_policy/4,
         delete_bucket_replication/3,
         delete_bucket_replication/4,
         delete_bucket_tagging/3,
         delete_bucket_tagging/4,
         delete_job_tagging/3,
         delete_job_tagging/4,
         delete_multi_region_access_point/2,
         delete_multi_region_access_point/3,
         delete_public_access_block/2,
         delete_public_access_block/3,
         delete_storage_lens_configuration/3,
         delete_storage_lens_configuration/4,
         delete_storage_lens_configuration_tagging/3,
         delete_storage_lens_configuration_tagging/4,
         delete_storage_lens_group/3,
         delete_storage_lens_group/4,
         describe_job/3,
         describe_job/5,
         describe_job/6,
         describe_multi_region_access_point_operation/3,
         describe_multi_region_access_point_operation/5,
         describe_multi_region_access_point_operation/6,
         dissociate_access_grants_identity_center/2,
         dissociate_access_grants_identity_center/3,
         get_access_grant/3,
         get_access_grant/5,
         get_access_grant/6,
         get_access_grants_instance/2,
         get_access_grants_instance/4,
         get_access_grants_instance/5,
         get_access_grants_instance_for_prefix/3,
         get_access_grants_instance_for_prefix/5,
         get_access_grants_instance_for_prefix/6,
         get_access_grants_instance_resource_policy/2,
         get_access_grants_instance_resource_policy/4,
         get_access_grants_instance_resource_policy/5,
         get_access_grants_location/3,
         get_access_grants_location/5,
         get_access_grants_location/6,
         get_access_point/3,
         get_access_point/5,
         get_access_point/6,
         get_access_point_configuration_for_object_lambda/3,
         get_access_point_configuration_for_object_lambda/5,
         get_access_point_configuration_for_object_lambda/6,
         get_access_point_for_object_lambda/3,
         get_access_point_for_object_lambda/5,
         get_access_point_for_object_lambda/6,
         get_access_point_policy/3,
         get_access_point_policy/5,
         get_access_point_policy/6,
         get_access_point_policy_for_object_lambda/3,
         get_access_point_policy_for_object_lambda/5,
         get_access_point_policy_for_object_lambda/6,
         get_access_point_policy_status/3,
         get_access_point_policy_status/5,
         get_access_point_policy_status/6,
         get_access_point_policy_status_for_object_lambda/3,
         get_access_point_policy_status_for_object_lambda/5,
         get_access_point_policy_status_for_object_lambda/6,
         get_bucket/3,
         get_bucket/5,
         get_bucket/6,
         get_bucket_lifecycle_configuration/3,
         get_bucket_lifecycle_configuration/5,
         get_bucket_lifecycle_configuration/6,
         get_bucket_policy/3,
         get_bucket_policy/5,
         get_bucket_policy/6,
         get_bucket_replication/3,
         get_bucket_replication/5,
         get_bucket_replication/6,
         get_bucket_tagging/3,
         get_bucket_tagging/5,
         get_bucket_tagging/6,
         get_bucket_versioning/3,
         get_bucket_versioning/5,
         get_bucket_versioning/6,
         get_data_access/4,
         get_data_access/6,
         get_data_access/7,
         get_job_tagging/3,
         get_job_tagging/5,
         get_job_tagging/6,
         get_multi_region_access_point/3,
         get_multi_region_access_point/5,
         get_multi_region_access_point/6,
         get_multi_region_access_point_policy/3,
         get_multi_region_access_point_policy/5,
         get_multi_region_access_point_policy/6,
         get_multi_region_access_point_policy_status/3,
         get_multi_region_access_point_policy_status/5,
         get_multi_region_access_point_policy_status/6,
         get_multi_region_access_point_routes/3,
         get_multi_region_access_point_routes/5,
         get_multi_region_access_point_routes/6,
         get_public_access_block/2,
         get_public_access_block/4,
         get_public_access_block/5,
         get_storage_lens_configuration/3,
         get_storage_lens_configuration/5,
         get_storage_lens_configuration/6,
         get_storage_lens_configuration_tagging/3,
         get_storage_lens_configuration_tagging/5,
         get_storage_lens_configuration_tagging/6,
         get_storage_lens_group/3,
         get_storage_lens_group/5,
         get_storage_lens_group/6,
         list_access_grants/2,
         list_access_grants/4,
         list_access_grants/5,
         list_access_grants_instances/2,
         list_access_grants_instances/4,
         list_access_grants_instances/5,
         list_access_grants_locations/2,
         list_access_grants_locations/4,
         list_access_grants_locations/5,
         list_access_points/2,
         list_access_points/4,
         list_access_points/5,
         list_access_points_for_object_lambda/2,
         list_access_points_for_object_lambda/4,
         list_access_points_for_object_lambda/5,
         list_caller_access_grants/2,
         list_caller_access_grants/4,
         list_caller_access_grants/5,
         list_jobs/2,
         list_jobs/4,
         list_jobs/5,
         list_multi_region_access_points/2,
         list_multi_region_access_points/4,
         list_multi_region_access_points/5,
         list_regional_buckets/2,
         list_regional_buckets/4,
         list_regional_buckets/5,
         list_storage_lens_configurations/2,
         list_storage_lens_configurations/4,
         list_storage_lens_configurations/5,
         list_storage_lens_groups/2,
         list_storage_lens_groups/4,
         list_storage_lens_groups/5,
         list_tags_for_resource/3,
         list_tags_for_resource/5,
         list_tags_for_resource/6,
         put_access_grants_instance_resource_policy/2,
         put_access_grants_instance_resource_policy/3,
         put_access_point_configuration_for_object_lambda/3,
         put_access_point_configuration_for_object_lambda/4,
         put_access_point_policy/3,
         put_access_point_policy/4,
         put_access_point_policy_for_object_lambda/3,
         put_access_point_policy_for_object_lambda/4,
         put_bucket_lifecycle_configuration/3,
         put_bucket_lifecycle_configuration/4,
         put_bucket_policy/3,
         put_bucket_policy/4,
         put_bucket_replication/3,
         put_bucket_replication/4,
         put_bucket_tagging/3,
         put_bucket_tagging/4,
         put_bucket_versioning/3,
         put_bucket_versioning/4,
         put_job_tagging/3,
         put_job_tagging/4,
         put_multi_region_access_point_policy/2,
         put_multi_region_access_point_policy/3,
         put_public_access_block/2,
         put_public_access_block/3,
         put_storage_lens_configuration/3,
         put_storage_lens_configuration/4,
         put_storage_lens_configuration_tagging/3,
         put_storage_lens_configuration_tagging/4,
         submit_multi_region_access_point_routes/3,
         submit_multi_region_access_point_routes/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_access_grants_location/3,
         update_access_grants_location/4,
         update_job_priority/3,
         update_job_priority/4,
         update_job_status/3,
         update_job_status/4,
         update_storage_lens_group/3,
         update_storage_lens_group/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% region_report() :: #{
%%   <<"Bucket">> => string(),
%%   <<"BucketAccountId">> => string(),
%%   <<"Region">> => string()
%% }
-type region_report() :: #{binary() => any()}.


%% Example:
%% put_bucket_policy_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"ConfirmRemoveSelfBucketAccess">> => boolean(),
%%   <<"Policy">> := string()
%% }
-type put_bucket_policy_request() :: #{binary() => any()}.


%% Example:
%% put_multi_region_access_point_policy_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"ClientToken">> := string(),
%%   <<"Details">> := put_multi_region_access_point_policy_input()
%% }
-type put_multi_region_access_point_policy_request() :: #{binary() => any()}.


%% Example:
%% storage_lens_group_level_selection_criteria() :: #{
%%   <<"Exclude">> => list(string()()),
%%   <<"Include">> => list(string()())
%% }
-type storage_lens_group_level_selection_criteria() :: #{binary() => any()}.


%% Example:
%% job_manifest() :: #{
%%   <<"Location">> => job_manifest_location(),
%%   <<"Spec">> => job_manifest_spec()
%% }
-type job_manifest() :: #{binary() => any()}.


%% Example:
%% get_storage_lens_configuration_tagging_result() :: #{
%%   <<"Tags">> => list(storage_lens_tag()())
%% }
-type get_storage_lens_configuration_tagging_result() :: #{binary() => any()}.


%% Example:
%% delete_multi_region_access_point_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"ClientToken">> := string(),
%%   <<"Details">> := delete_multi_region_access_point_input()
%% }
-type delete_multi_region_access_point_request() :: #{binary() => any()}.


%% Example:
%% encryption_configuration() :: #{
%%   <<"ReplicaKmsKeyID">> => string()
%% }
-type encryption_configuration() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"Tags">> := list(tag()())
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% no_such_public_access_block_configuration() :: #{
%%   <<"Message">> => string()
%% }
-type no_such_public_access_block_configuration() :: #{binary() => any()}.


%% Example:
%% put_bucket_versioning_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"MFA">> => string(),
%%   <<"VersioningConfiguration">> := versioning_configuration()
%% }
-type put_bucket_versioning_request() :: #{binary() => any()}.


%% Example:
%% multi_region_access_point_regional_response() :: #{
%%   <<"Name">> => string(),
%%   <<"RequestStatus">> => string()
%% }
-type multi_region_access_point_regional_response() :: #{binary() => any()}.


%% Example:
%% get_storage_lens_configuration_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type get_storage_lens_configuration_request() :: #{binary() => any()}.


%% Example:
%% get_access_point_configuration_for_object_lambda_result() :: #{
%%   <<"Configuration">> => object_lambda_configuration()
%% }
-type get_access_point_configuration_for_object_lambda_result() :: #{binary() => any()}.


%% Example:
%% public_access_block_configuration() :: #{
%%   <<"BlockPublicAcls">> => boolean(),
%%   <<"BlockPublicPolicy">> => boolean(),
%%   <<"IgnorePublicAcls">> => boolean(),
%%   <<"RestrictPublicBuckets">> => boolean()
%% }
-type public_access_block_configuration() :: #{binary() => any()}.


%% Example:
%% storage_lens_data_export() :: #{
%%   <<"CloudWatchMetrics">> => cloud_watch_metrics(),
%%   <<"S3BucketDestination">> => s3_bucket_destination()
%% }
-type storage_lens_data_export() :: #{binary() => any()}.


%% Example:
%% storage_lens_group_level() :: #{
%%   <<"SelectionCriteria">> => storage_lens_group_level_selection_criteria()
%% }
-type storage_lens_group_level() :: #{binary() => any()}.


%% Example:
%% prefix_level_storage_metrics() :: #{
%%   <<"IsEnabled">> => boolean(),
%%   <<"SelectionCriteria">> => selection_criteria()
%% }
-type prefix_level_storage_metrics() :: #{binary() => any()}.


%% Example:
%% create_access_grants_instance_result() :: #{
%%   <<"AccessGrantsInstanceArn">> => string(),
%%   <<"AccessGrantsInstanceId">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"IdentityCenterApplicationArn">> => string(),
%%   <<"IdentityCenterArn">> => string(),
%%   <<"IdentityCenterInstanceArn">> => string()
%% }
-type create_access_grants_instance_result() :: #{binary() => any()}.


%% Example:
%% generated_manifest_encryption() :: #{
%%   <<"SSEKMS">> => sse_kms_encryption(),
%%   <<"SSES3">> => sse_s3_encryption()
%% }
-type generated_manifest_encryption() :: #{binary() => any()}.


%% Example:
%% describe_job_result() :: #{
%%   <<"Job">> => job_descriptor()
%% }
-type describe_job_result() :: #{binary() => any()}.


%% Example:
%% match_object_age() :: #{
%%   <<"DaysGreaterThan">> => integer(),
%%   <<"DaysLessThan">> => integer()
%% }
-type match_object_age() :: #{binary() => any()}.


%% Example:
%% list_jobs_result() :: #{
%%   <<"Jobs">> => list(job_list_descriptor()()),
%%   <<"NextToken">> => string()
%% }
-type list_jobs_result() :: #{binary() => any()}.


%% Example:
%% put_public_access_block_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"PublicAccessBlockConfiguration">> := public_access_block_configuration()
%% }
-type put_public_access_block_request() :: #{binary() => any()}.


%% Example:
%% get_access_grant_result() :: #{
%%   <<"AccessGrantArn">> => string(),
%%   <<"AccessGrantId">> => string(),
%%   <<"AccessGrantsLocationConfiguration">> => access_grants_location_configuration(),
%%   <<"AccessGrantsLocationId">> => string(),
%%   <<"ApplicationArn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"GrantScope">> => string(),
%%   <<"Grantee">> => grantee(),
%%   <<"Permission">> => list(any())
%% }
-type get_access_grant_result() :: #{binary() => any()}.


%% Example:
%% vpc_configuration() :: #{
%%   <<"VpcId">> => string()
%% }
-type vpc_configuration() :: #{binary() => any()}.


%% Example:
%% s3_access_control_list() :: #{
%%   <<"Grants">> => list(s3_grant()()),
%%   <<"Owner">> => s3_object_owner()
%% }
-type s3_access_control_list() :: #{binary() => any()}.


%% Example:
%% abort_incomplete_multipart_upload() :: #{
%%   <<"DaysAfterInitiation">> => integer()
%% }
-type abort_incomplete_multipart_upload() :: #{binary() => any()}.


%% Example:
%% lifecycle_rule() :: #{
%%   <<"AbortIncompleteMultipartUpload">> => abort_incomplete_multipart_upload(),
%%   <<"Expiration">> => lifecycle_expiration(),
%%   <<"Filter">> => lifecycle_rule_filter(),
%%   <<"ID">> => string(),
%%   <<"NoncurrentVersionExpiration">> => noncurrent_version_expiration(),
%%   <<"NoncurrentVersionTransitions">> => list(noncurrent_version_transition()()),
%%   <<"Status">> => list(any()),
%%   <<"Transitions">> => list(transition()())
%% }
-type lifecycle_rule() :: #{binary() => any()}.

%% Example:
%% untag_resource_result() :: #{}
-type untag_resource_result() :: #{}.


%% Example:
%% delete_public_access_block_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type delete_public_access_block_request() :: #{binary() => any()}.


%% Example:
%% put_access_grants_instance_resource_policy_result() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Organization">> => string(),
%%   <<"Policy">> => string()
%% }
-type put_access_grants_instance_resource_policy_result() :: #{binary() => any()}.


%% Example:
%% object_lambda_configuration() :: #{
%%   <<"AllowedFeatures">> => list(list(any())()),
%%   <<"CloudWatchMetricsEnabled">> => boolean(),
%%   <<"SupportingAccessPoint">> => string(),
%%   <<"TransformationConfigurations">> => list(object_lambda_transformation_configuration()())
%% }
-type object_lambda_configuration() :: #{binary() => any()}.


%% Example:
%% get_multi_region_access_point_policy_result() :: #{
%%   <<"Policy">> => multi_region_access_point_policy_document()
%% }
-type get_multi_region_access_point_policy_result() :: #{binary() => any()}.


%% Example:
%% versioning_configuration() :: #{
%%   <<"MFADelete">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type versioning_configuration() :: #{binary() => any()}.


%% Example:
%% job_report() :: #{
%%   <<"Bucket">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"Format">> => list(any()),
%%   <<"Prefix">> => string(),
%%   <<"ReportScope">> => list(any())
%% }
-type job_report() :: #{binary() => any()}.


%% Example:
%% create_storage_lens_group_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"StorageLensGroup">> := storage_lens_group(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_storage_lens_group_request() :: #{binary() => any()}.


%% Example:
%% list_access_grants_result() :: #{
%%   <<"AccessGrantsList">> => list(list_access_grant_entry()()),
%%   <<"NextToken">> => string()
%% }
-type list_access_grants_result() :: #{binary() => any()}.


%% Example:
%% put_access_grants_instance_resource_policy_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"Organization">> => string(),
%%   <<"Policy">> := string()
%% }
-type put_access_grants_instance_resource_policy_request() :: #{binary() => any()}.


%% Example:
%% delete_job_tagging_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type delete_job_tagging_request() :: #{binary() => any()}.


%% Example:
%% list_jobs_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"JobStatuses">> => list(list(any())()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_jobs_request() :: #{binary() => any()}.


%% Example:
%% create_access_grants_instance_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"IdentityCenterArn">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_access_grants_instance_request() :: #{binary() => any()}.


%% Example:
%% source_selection_criteria() :: #{
%%   <<"ReplicaModifications">> => replica_modifications(),
%%   <<"SseKmsEncryptedObjects">> => sse_kms_encrypted_objects()
%% }
-type source_selection_criteria() :: #{binary() => any()}.


%% Example:
%% put_job_tagging_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"Tags">> := list(s3_tag()())
%% }
-type put_job_tagging_request() :: #{binary() => any()}.


%% Example:
%% lifecycle_configuration() :: #{
%%   <<"Rules">> => list(lifecycle_rule()())
%% }
-type lifecycle_configuration() :: #{binary() => any()}.


%% Example:
%% list_storage_lens_group_entry() :: #{
%%   <<"HomeRegion">> => string(),
%%   <<"Name">> => string(),
%%   <<"StorageLensGroupArn">> => string()
%% }
-type list_storage_lens_group_entry() :: #{binary() => any()}.


%% Example:
%% delete_bucket_tagging_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type delete_bucket_tagging_request() :: #{binary() => any()}.


%% Example:
%% get_storage_lens_group_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type get_storage_lens_group_request() :: #{binary() => any()}.


%% Example:
%% prefix_level() :: #{
%%   <<"StorageMetrics">> => prefix_level_storage_metrics()
%% }
-type prefix_level() :: #{binary() => any()}.


%% Example:
%% create_access_grant_result() :: #{
%%   <<"AccessGrantArn">> => string(),
%%   <<"AccessGrantId">> => string(),
%%   <<"AccessGrantsLocationConfiguration">> => access_grants_location_configuration(),
%%   <<"AccessGrantsLocationId">> => string(),
%%   <<"ApplicationArn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"GrantScope">> => string(),
%%   <<"Grantee">> => grantee(),
%%   <<"Permission">> => list(any())
%% }
-type create_access_grant_result() :: #{binary() => any()}.


%% Example:
%% credentials() :: #{
%%   <<"AccessKeyId">> => string(),
%%   <<"Expiration">> => non_neg_integer(),
%%   <<"SecretAccessKey">> => string(),
%%   <<"SessionToken">> => string()
%% }
-type credentials() :: #{binary() => any()}.


%% Example:
%% put_bucket_replication_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"ReplicationConfiguration">> := replication_configuration()
%% }
-type put_bucket_replication_request() :: #{binary() => any()}.


%% Example:
%% create_access_point_for_object_lambda_result() :: #{
%%   <<"Alias">> => object_lambda_access_point_alias(),
%%   <<"ObjectLambdaAccessPointArn">> => string()
%% }
-type create_access_point_for_object_lambda_result() :: #{binary() => any()}.


%% Example:
%% job_status_exception() :: #{
%%   <<"Message">> => string()
%% }
-type job_status_exception() :: #{binary() => any()}.


%% Example:
%% get_access_grants_instance_for_prefix_result() :: #{
%%   <<"AccessGrantsInstanceArn">> => string(),
%%   <<"AccessGrantsInstanceId">> => string()
%% }
-type get_access_grants_instance_for_prefix_result() :: #{binary() => any()}.


%% Example:
%% associate_access_grants_identity_center_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"IdentityCenterArn">> := string()
%% }
-type associate_access_grants_identity_center_request() :: #{binary() => any()}.


%% Example:
%% list_storage_lens_configurations_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"StorageLensConfigurationList">> => list(list_storage_lens_configuration_entry()())
%% }
-type list_storage_lens_configurations_result() :: #{binary() => any()}.


%% Example:
%% delete_multi_region_access_point_input() :: #{
%%   <<"Name">> => string()
%% }
-type delete_multi_region_access_point_input() :: #{binary() => any()}.


%% Example:
%% describe_multi_region_access_point_operation_result() :: #{
%%   <<"AsyncOperation">> => async_operation()
%% }
-type describe_multi_region_access_point_operation_result() :: #{binary() => any()}.


%% Example:
%% get_access_point_for_object_lambda_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type get_access_point_for_object_lambda_request() :: #{binary() => any()}.


%% Example:
%% list_access_points_for_object_lambda_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_access_points_for_object_lambda_request() :: #{binary() => any()}.


%% Example:
%% get_job_tagging_result() :: #{
%%   <<"Tags">> => list(s3_tag()())
%% }
-type get_job_tagging_result() :: #{binary() => any()}.


%% Example:
%% create_access_grants_location_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"IAMRoleArn">> := string(),
%%   <<"LocationScope">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_access_grants_location_request() :: #{binary() => any()}.


%% Example:
%% async_operation() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Operation">> => list(any()),
%%   <<"RequestParameters">> => async_request_parameters(),
%%   <<"RequestStatus">> => string(),
%%   <<"RequestTokenARN">> => string(),
%%   <<"ResponseDetails">> => async_response_details()
%% }
-type async_operation() :: #{binary() => any()}.


%% Example:
%% delete_access_point_policy_for_object_lambda_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type delete_access_point_policy_for_object_lambda_request() :: #{binary() => any()}.


%% Example:
%% s3_bucket_destination() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"Encryption">> => storage_lens_data_export_encryption(),
%%   <<"Format">> => list(any()),
%%   <<"OutputSchemaVersion">> => list(any()),
%%   <<"Prefix">> => string()
%% }
-type s3_bucket_destination() :: #{binary() => any()}.


%% Example:
%% get_storage_lens_group_result() :: #{
%%   <<"StorageLensGroup">> => storage_lens_group()
%% }
-type get_storage_lens_group_result() :: #{binary() => any()}.


%% Example:
%% list_caller_access_grants_result() :: #{
%%   <<"CallerAccessGrantsList">> => list(list_caller_access_grants_entry()()),
%%   <<"NextToken">> => string()
%% }
-type list_caller_access_grants_result() :: #{binary() => any()}.


%% Example:
%% get_access_grants_instance_resource_policy_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type get_access_grants_instance_resource_policy_request() :: #{binary() => any()}.


%% Example:
%% grantee() :: #{
%%   <<"GranteeIdentifier">> => string(),
%%   <<"GranteeType">> => list(any())
%% }
-type grantee() :: #{binary() => any()}.


%% Example:
%% bucket_level() :: #{
%%   <<"ActivityMetrics">> => activity_metrics(),
%%   <<"AdvancedCostOptimizationMetrics">> => advanced_cost_optimization_metrics(),
%%   <<"AdvancedDataProtectionMetrics">> => advanced_data_protection_metrics(),
%%   <<"DetailedStatusCodesMetrics">> => detailed_status_codes_metrics(),
%%   <<"PrefixLevel">> => prefix_level()
%% }
-type bucket_level() :: #{binary() => any()}.


%% Example:
%% get_access_point_policy_status_result() :: #{
%%   <<"PolicyStatus">> => policy_status()
%% }
-type get_access_point_policy_status_result() :: #{binary() => any()}.


%% Example:
%% s3_grantee() :: #{
%%   <<"DisplayName">> => string(),
%%   <<"Identifier">> => string(),
%%   <<"TypeIdentifier">> => list(any())
%% }
-type s3_grantee() :: #{binary() => any()}.


%% Example:
%% create_job_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"ClientRequestToken">> := string(),
%%   <<"ConfirmationRequired">> => boolean(),
%%   <<"Description">> => string(),
%%   <<"Manifest">> => job_manifest(),
%%   <<"ManifestGenerator">> => list(),
%%   <<"Operation">> := job_operation(),
%%   <<"Priority">> := integer(),
%%   <<"Report">> := job_report(),
%%   <<"RoleArn">> := string(),
%%   <<"Tags">> => list(s3_tag()())
%% }
-type create_job_request() :: #{binary() => any()}.


%% Example:
%% get_access_point_policy_for_object_lambda_result() :: #{
%%   <<"Policy">> => string()
%% }
-type get_access_point_policy_for_object_lambda_result() :: #{binary() => any()}.


%% Example:
%% storage_lens_tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type storage_lens_tag() :: #{binary() => any()}.


%% Example:
%% list_access_grant_entry() :: #{
%%   <<"AccessGrantArn">> => string(),
%%   <<"AccessGrantId">> => string(),
%%   <<"AccessGrantsLocationConfiguration">> => access_grants_location_configuration(),
%%   <<"AccessGrantsLocationId">> => string(),
%%   <<"ApplicationArn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"GrantScope">> => string(),
%%   <<"Grantee">> => grantee(),
%%   <<"Permission">> => list(any())
%% }
-type list_access_grant_entry() :: #{binary() => any()}.


%% Example:
%% storage_lens_group_filter() :: #{
%%   <<"And">> => storage_lens_group_and_operator(),
%%   <<"MatchAnyPrefix">> => list(string()()),
%%   <<"MatchAnySuffix">> => list(string()()),
%%   <<"MatchAnyTag">> => list(s3_tag()()),
%%   <<"MatchObjectAge">> => match_object_age(),
%%   <<"MatchObjectSize">> => match_object_size(),
%%   <<"Or">> => storage_lens_group_or_operator()
%% }
-type storage_lens_group_filter() :: #{binary() => any()}.


%% Example:
%% storage_lens_group_or_operator() :: #{
%%   <<"MatchAnyPrefix">> => list(string()()),
%%   <<"MatchAnySuffix">> => list(string()()),
%%   <<"MatchAnyTag">> => list(s3_tag()()),
%%   <<"MatchObjectAge">> => match_object_age(),
%%   <<"MatchObjectSize">> => match_object_size()
%% }
-type storage_lens_group_or_operator() :: #{binary() => any()}.


%% Example:
%% proposed_multi_region_access_point_policy() :: #{
%%   <<"Policy">> => string()
%% }
-type proposed_multi_region_access_point_policy() :: #{binary() => any()}.


%% Example:
%% include() :: #{
%%   <<"Buckets">> => list(string()()),
%%   <<"Regions">> => list(string()())
%% }
-type include() :: #{binary() => any()}.


%% Example:
%% internal_service_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_service_exception() :: #{binary() => any()}.


%% Example:
%% put_multi_region_access_point_policy_input() :: #{
%%   <<"Name">> => string(),
%%   <<"Policy">> => string()
%% }
-type put_multi_region_access_point_policy_input() :: #{binary() => any()}.


%% Example:
%% get_access_grants_instance_result() :: #{
%%   <<"AccessGrantsInstanceArn">> => string(),
%%   <<"AccessGrantsInstanceId">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"IdentityCenterApplicationArn">> => string(),
%%   <<"IdentityCenterArn">> => string(),
%%   <<"IdentityCenterInstanceArn">> => string()
%% }
-type get_access_grants_instance_result() :: #{binary() => any()}.


%% Example:
%% sse_kms_encryption() :: #{
%%   <<"KeyId">> => string()
%% }
-type sse_kms_encryption() :: #{binary() => any()}.


%% Example:
%% get_bucket_versioning_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type get_bucket_versioning_request() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% advanced_data_protection_metrics() :: #{
%%   <<"IsEnabled">> => boolean()
%% }
-type advanced_data_protection_metrics() :: #{binary() => any()}.


%% Example:
%% create_access_point_for_object_lambda_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"Configuration">> := object_lambda_configuration()
%% }
-type create_access_point_for_object_lambda_request() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.


%% Example:
%% sse_kms_encrypted_objects() :: #{
%%   <<"Status">> => list(any())
%% }
-type sse_kms_encrypted_objects() :: #{binary() => any()}.


%% Example:
%% job_manifest_location() :: #{
%%   <<"ETag">> => string(),
%%   <<"ObjectArn">> => string(),
%%   <<"ObjectVersionId">> => string()
%% }
-type job_manifest_location() :: #{binary() => any()}.


%% Example:
%% list_access_points_for_object_lambda_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ObjectLambdaAccessPointList">> => list(object_lambda_access_point()())
%% }
-type list_access_points_for_object_lambda_result() :: #{binary() => any()}.


%% Example:
%% put_storage_lens_configuration_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"StorageLensConfiguration">> := storage_lens_configuration(),
%%   <<"Tags">> => list(storage_lens_tag()())
%% }
-type put_storage_lens_configuration_request() :: #{binary() => any()}.


%% Example:
%% get_storage_lens_configuration_result() :: #{
%%   <<"StorageLensConfiguration">> => storage_lens_configuration()
%% }
-type get_storage_lens_configuration_result() :: #{binary() => any()}.


%% Example:
%% s3_job_manifest_generator() :: #{
%%   <<"EnableManifestOutput">> => boolean(),
%%   <<"ExpectedBucketOwner">> => string(),
%%   <<"Filter">> => job_manifest_generator_filter(),
%%   <<"ManifestOutputLocation">> => s3_manifest_output_location(),
%%   <<"SourceBucket">> => string()
%% }
-type s3_job_manifest_generator() :: #{binary() => any()}.


%% Example:
%% list_regional_buckets_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RegionalBucketList">> => list(regional_bucket()())
%% }
-type list_regional_buckets_result() :: #{binary() => any()}.


%% Example:
%% delete_bucket_lifecycle_configuration_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type delete_bucket_lifecycle_configuration_request() :: #{binary() => any()}.


%% Example:
%% object_lambda_access_point() :: #{
%%   <<"Alias">> => object_lambda_access_point_alias(),
%%   <<"Name">> => string(),
%%   <<"ObjectLambdaAccessPointArn">> => string()
%% }
-type object_lambda_access_point() :: #{binary() => any()}.


%% Example:
%% replication_rule_filter() :: #{
%%   <<"And">> => replication_rule_and_operator(),
%%   <<"Prefix">> => string(),
%%   <<"Tag">> => s3_tag()
%% }
-type replication_rule_filter() :: #{binary() => any()}.


%% Example:
%% delete_storage_lens_configuration_tagging_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type delete_storage_lens_configuration_tagging_request() :: #{binary() => any()}.


%% Example:
%% create_multi_region_access_point_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"ClientToken">> := string(),
%%   <<"Details">> := create_multi_region_access_point_input()
%% }
-type create_multi_region_access_point_request() :: #{binary() => any()}.


%% Example:
%% job_operation() :: #{
%%   <<"LambdaInvoke">> => lambda_invoke_operation(),
%%   <<"S3DeleteObjectTagging">> => s3_delete_object_tagging_operation(),
%%   <<"S3InitiateRestoreObject">> => s3_initiate_restore_object_operation(),
%%   <<"S3PutObjectAcl">> => s3_set_object_acl_operation(),
%%   <<"S3PutObjectCopy">> => s3_copy_object_operation(),
%%   <<"S3PutObjectLegalHold">> => s3_set_object_legal_hold_operation(),
%%   <<"S3PutObjectRetention">> => s3_set_object_retention_operation(),
%%   <<"S3PutObjectTagging">> => s3_set_object_tagging_operation(),
%%   <<"S3ReplicateObject">> => s3_replicate_object_operation()
%% }
-type job_operation() :: #{binary() => any()}.


%% Example:
%% list_storage_lens_groups_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"NextToken">> => string()
%% }
-type list_storage_lens_groups_request() :: #{binary() => any()}.

%% Example:
%% bucket_already_owned_by_you() :: #{}
-type bucket_already_owned_by_you() :: #{}.


%% Example:
%% delete_bucket_policy_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type delete_bucket_policy_request() :: #{binary() => any()}.


%% Example:
%% put_multi_region_access_point_policy_result() :: #{
%%   <<"RequestTokenARN">> => string()
%% }
-type put_multi_region_access_point_policy_result() :: #{binary() => any()}.


%% Example:
%% delete_storage_lens_configuration_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type delete_storage_lens_configuration_request() :: #{binary() => any()}.


%% Example:
%% dissociate_access_grants_identity_center_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type dissociate_access_grants_identity_center_request() :: #{binary() => any()}.


%% Example:
%% noncurrent_version_expiration() :: #{
%%   <<"NewerNoncurrentVersions">> => integer(),
%%   <<"NoncurrentDays">> => integer()
%% }
-type noncurrent_version_expiration() :: #{binary() => any()}.

%% Example:
%% delete_storage_lens_configuration_tagging_result() :: #{}
-type delete_storage_lens_configuration_tagging_result() :: #{}.

%% Example:
%% submit_multi_region_access_point_routes_result() :: #{}
-type submit_multi_region_access_point_routes_result() :: #{}.


%% Example:
%% list_access_grants_instances_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_access_grants_instances_request() :: #{binary() => any()}.


%% Example:
%% multi_region_access_points_async_response() :: #{
%%   <<"Regions">> => list(multi_region_access_point_regional_response()())
%% }
-type multi_region_access_points_async_response() :: #{binary() => any()}.


%% Example:
%% list_multi_region_access_points_result() :: #{
%%   <<"AccessPoints">> => list(multi_region_access_point_report()()),
%%   <<"NextToken">> => string()
%% }
-type list_multi_region_access_points_result() :: #{binary() => any()}.


%% Example:
%% delete_bucket_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type delete_bucket_request() :: #{binary() => any()}.


%% Example:
%% get_multi_region_access_point_policy_status_result() :: #{
%%   <<"Established">> => policy_status()
%% }
-type get_multi_region_access_point_policy_status_result() :: #{binary() => any()}.


%% Example:
%% create_access_point_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"Bucket">> := string(),
%%   <<"BucketAccountId">> => string(),
%%   <<"PublicAccessBlockConfiguration">> => public_access_block_configuration(),
%%   <<"VpcConfiguration">> => vpc_configuration()
%% }
-type create_access_point_request() :: #{binary() => any()}.


%% Example:
%% delete_access_grants_instance_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type delete_access_grants_instance_request() :: #{binary() => any()}.


%% Example:
%% submit_multi_region_access_point_routes_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"RouteUpdates">> := list(multi_region_access_point_route()())
%% }
-type submit_multi_region_access_point_routes_request() :: #{binary() => any()}.


%% Example:
%% metrics() :: #{
%%   <<"EventThreshold">> => replication_time_value(),
%%   <<"Status">> => list(any())
%% }
-type metrics() :: #{binary() => any()}.


%% Example:
%% create_multi_region_access_point_result() :: #{
%%   <<"RequestTokenARN">> => string()
%% }
-type create_multi_region_access_point_result() :: #{binary() => any()}.


%% Example:
%% region() :: #{
%%   <<"Bucket">> => string(),
%%   <<"BucketAccountId">> => string()
%% }
-type region() :: #{binary() => any()}.


%% Example:
%% get_storage_lens_configuration_tagging_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type get_storage_lens_configuration_tagging_request() :: #{binary() => any()}.


%% Example:
%% get_access_point_policy_for_object_lambda_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type get_access_point_policy_for_object_lambda_request() :: #{binary() => any()}.


%% Example:
%% get_access_point_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type get_access_point_request() :: #{binary() => any()}.


%% Example:
%% replica_modifications() :: #{
%%   <<"Status">> => list(any())
%% }
-type replica_modifications() :: #{binary() => any()}.


%% Example:
%% replication_time_value() :: #{
%%   <<"Minutes">> => integer()
%% }
-type replication_time_value() :: #{binary() => any()}.


%% Example:
%% update_access_grants_location_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"IAMRoleArn">> := string()
%% }
-type update_access_grants_location_request() :: #{binary() => any()}.


%% Example:
%% exclude() :: #{
%%   <<"Buckets">> => list(string()()),
%%   <<"Regions">> => list(string()())
%% }
-type exclude() :: #{binary() => any()}.


%% Example:
%% policy_status() :: #{
%%   <<"IsPublic">> => boolean()
%% }
-type policy_status() :: #{binary() => any()}.


%% Example:
%% get_bucket_replication_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type get_bucket_replication_request() :: #{binary() => any()}.


%% Example:
%% s3_initiate_restore_object_operation() :: #{
%%   <<"ExpirationInDays">> => integer(),
%%   <<"GlacierJobTier">> => list(any())
%% }
-type s3_initiate_restore_object_operation() :: #{binary() => any()}.


%% Example:
%% replication_configuration() :: #{
%%   <<"Role">> => string(),
%%   <<"Rules">> => list(replication_rule()())
%% }
-type replication_configuration() :: #{binary() => any()}.


%% Example:
%% s3_access_control_policy() :: #{
%%   <<"AccessControlList">> => s3_access_control_list(),
%%   <<"CannedAccessControlList">> => list(any())
%% }
-type s3_access_control_policy() :: #{binary() => any()}.


%% Example:
%% get_access_point_configuration_for_object_lambda_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type get_access_point_configuration_for_object_lambda_request() :: #{binary() => any()}.


%% Example:
%% get_access_grant_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type get_access_grant_request() :: #{binary() => any()}.


%% Example:
%% s3_grant() :: #{
%%   <<"Grantee">> => s3_grantee(),
%%   <<"Permission">> => list(any())
%% }
-type s3_grant() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% get_data_access_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"DurationSeconds">> => integer(),
%%   <<"Permission">> := list(any()),
%%   <<"Privilege">> => list(any()),
%%   <<"Target">> := string(),
%%   <<"TargetType">> => list(any())
%% }
-type get_data_access_request() :: #{binary() => any()}.


%% Example:
%% get_bucket_policy_result() :: #{
%%   <<"Policy">> => string()
%% }
-type get_bucket_policy_result() :: #{binary() => any()}.


%% Example:
%% invalid_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.


%% Example:
%% noncurrent_version_transition() :: #{
%%   <<"NoncurrentDays">> => integer(),
%%   <<"StorageClass">> => list(any())
%% }
-type noncurrent_version_transition() :: #{binary() => any()}.


%% Example:
%% get_access_grants_location_result() :: #{
%%   <<"AccessGrantsLocationArn">> => string(),
%%   <<"AccessGrantsLocationId">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"IAMRoleArn">> => string(),
%%   <<"LocationScope">> => string()
%% }
-type get_access_grants_location_result() :: #{binary() => any()}.


%% Example:
%% lifecycle_rule_filter() :: #{
%%   <<"And">> => lifecycle_rule_and_operator(),
%%   <<"ObjectSizeGreaterThan">> => float(),
%%   <<"ObjectSizeLessThan">> => float(),
%%   <<"Prefix">> => string(),
%%   <<"Tag">> => s3_tag()
%% }
-type lifecycle_rule_filter() :: #{binary() => any()}.


%% Example:
%% delete_storage_lens_group_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type delete_storage_lens_group_request() :: #{binary() => any()}.


%% Example:
%% invalid_next_token_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_next_token_exception() :: #{binary() => any()}.


%% Example:
%% update_job_status_result() :: #{
%%   <<"JobId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusUpdateReason">> => string()
%% }
-type update_job_status_result() :: #{binary() => any()}.


%% Example:
%% list_multi_region_access_points_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_multi_region_access_points_request() :: #{binary() => any()}.


%% Example:
%% multi_region_access_point_policy_document() :: #{
%%   <<"Established">> => established_multi_region_access_point_policy(),
%%   <<"Proposed">> => proposed_multi_region_access_point_policy()
%% }
-type multi_region_access_point_policy_document() :: #{binary() => any()}.


%% Example:
%% list_access_grants_instance_entry() :: #{
%%   <<"AccessGrantsInstanceArn">> => string(),
%%   <<"AccessGrantsInstanceId">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"IdentityCenterApplicationArn">> => string(),
%%   <<"IdentityCenterArn">> => string(),
%%   <<"IdentityCenterInstanceArn">> => string()
%% }
-type list_access_grants_instance_entry() :: #{binary() => any()}.


%% Example:
%% get_access_grants_instance_resource_policy_result() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Organization">> => string(),
%%   <<"Policy">> => string()
%% }
-type get_access_grants_instance_resource_policy_result() :: #{binary() => any()}.


%% Example:
%% job_failure() :: #{
%%   <<"FailureCode">> => string(),
%%   <<"FailureReason">> => string()
%% }
-type job_failure() :: #{binary() => any()}.


%% Example:
%% create_bucket_configuration() :: #{
%%   <<"LocationConstraint">> => list(any())
%% }
-type create_bucket_configuration() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.

%% Example:
%% bucket_already_exists() :: #{}
-type bucket_already_exists() :: #{}.


%% Example:
%% get_bucket_replication_result() :: #{
%%   <<"ReplicationConfiguration">> => replication_configuration()
%% }
-type get_bucket_replication_result() :: #{binary() => any()}.


%% Example:
%% regional_bucket() :: #{
%%   <<"Bucket">> => string(),
%%   <<"BucketArn">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"OutpostId">> => string(),
%%   <<"PublicAccessBlockEnabled">> => boolean()
%% }
-type regional_bucket() :: #{binary() => any()}.


%% Example:
%% async_response_details() :: #{
%%   <<"ErrorDetails">> => async_error_details(),
%%   <<"MultiRegionAccessPointDetails">> => multi_region_access_points_async_response()
%% }
-type async_response_details() :: #{binary() => any()}.


%% Example:
%% s3_set_object_acl_operation() :: #{
%%   <<"AccessControlPolicy">> => s3_access_control_policy()
%% }
-type s3_set_object_acl_operation() :: #{binary() => any()}.


%% Example:
%% async_request_parameters() :: #{
%%   <<"CreateMultiRegionAccessPointRequest">> => create_multi_region_access_point_input(),
%%   <<"DeleteMultiRegionAccessPointRequest">> => delete_multi_region_access_point_input(),
%%   <<"PutMultiRegionAccessPointPolicyRequest">> => put_multi_region_access_point_policy_input()
%% }
-type async_request_parameters() :: #{binary() => any()}.


%% Example:
%% tagging() :: #{
%%   <<"TagSet">> => list(s3_tag()())
%% }
-type tagging() :: #{binary() => any()}.


%% Example:
%% activity_metrics() :: #{
%%   <<"IsEnabled">> => boolean()
%% }
-type activity_metrics() :: #{binary() => any()}.


%% Example:
%% access_control_translation() :: #{
%%   <<"Owner">> => list(any())
%% }
-type access_control_translation() :: #{binary() => any()}.


%% Example:
%% create_access_grants_location_result() :: #{
%%   <<"AccessGrantsLocationArn">> => string(),
%%   <<"AccessGrantsLocationId">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"IAMRoleArn">> => string(),
%%   <<"LocationScope">> => string()
%% }
-type create_access_grants_location_result() :: #{binary() => any()}.


%% Example:
%% describe_job_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type describe_job_request() :: #{binary() => any()}.


%% Example:
%% storage_lens_data_export_encryption() :: #{
%%   <<"SSEKMS">> => sse_kms(),
%%   <<"SSES3">> => sse_s3()
%% }
-type storage_lens_data_export_encryption() :: #{binary() => any()}.


%% Example:
%% storage_lens_group_and_operator() :: #{
%%   <<"MatchAnyPrefix">> => list(string()()),
%%   <<"MatchAnySuffix">> => list(string()()),
%%   <<"MatchAnyTag">> => list(s3_tag()()),
%%   <<"MatchObjectAge">> => match_object_age(),
%%   <<"MatchObjectSize">> => match_object_size()
%% }
-type storage_lens_group_and_operator() :: #{binary() => any()}.


%% Example:
%% object_lambda_transformation_configuration() :: #{
%%   <<"Actions">> => list(list(any())()),
%%   <<"ContentTransformation">> => list()
%% }
-type object_lambda_transformation_configuration() :: #{binary() => any()}.


%% Example:
%% job_descriptor() :: #{
%%   <<"ConfirmationRequired">> => boolean(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"FailureReasons">> => list(job_failure()()),
%%   <<"GeneratedManifestDescriptor">> => s3_generated_manifest_descriptor(),
%%   <<"JobArn">> => string(),
%%   <<"JobId">> => string(),
%%   <<"Manifest">> => job_manifest(),
%%   <<"ManifestGenerator">> => list(),
%%   <<"Operation">> => job_operation(),
%%   <<"Priority">> => integer(),
%%   <<"ProgressSummary">> => job_progress_summary(),
%%   <<"Report">> => job_report(),
%%   <<"RoleArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusUpdateReason">> => string(),
%%   <<"SuspendedCause">> => string(),
%%   <<"SuspendedDate">> => non_neg_integer(),
%%   <<"TerminationDate">> => non_neg_integer()
%% }
-type job_descriptor() :: #{binary() => any()}.


%% Example:
%% detailed_status_codes_metrics() :: #{
%%   <<"IsEnabled">> => boolean()
%% }
-type detailed_status_codes_metrics() :: #{binary() => any()}.


%% Example:
%% get_access_point_policy_status_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type get_access_point_policy_status_request() :: #{binary() => any()}.


%% Example:
%% job_manifest_spec() :: #{
%%   <<"Fields">> => list(list(any())()),
%%   <<"Format">> => list(any())
%% }
-type job_manifest_spec() :: #{binary() => any()}.


%% Example:
%% s3_object_metadata() :: #{
%%   <<"CacheControl">> => string(),
%%   <<"ContentDisposition">> => string(),
%%   <<"ContentEncoding">> => string(),
%%   <<"ContentLanguage">> => string(),
%%   <<"ContentLength">> => float(),
%%   <<"ContentMD5">> => string(),
%%   <<"ContentType">> => string(),
%%   <<"HttpExpiresDate">> => non_neg_integer(),
%%   <<"RequesterCharged">> => boolean(),
%%   <<"SSEAlgorithm">> => list(any()),
%%   <<"UserMetadata">> => map()
%% }
-type s3_object_metadata() :: #{binary() => any()}.


%% Example:
%% list_access_grants_instances_result() :: #{
%%   <<"AccessGrantsInstancesList">> => list(list_access_grants_instance_entry()()),
%%   <<"NextToken">> => string()
%% }
-type list_access_grants_instances_result() :: #{binary() => any()}.


%% Example:
%% delete_multi_region_access_point_result() :: #{
%%   <<"RequestTokenARN">> => string()
%% }
-type delete_multi_region_access_point_result() :: #{binary() => any()}.


%% Example:
%% established_multi_region_access_point_policy() :: #{
%%   <<"Policy">> => string()
%% }
-type established_multi_region_access_point_policy() :: #{binary() => any()}.


%% Example:
%% update_access_grants_location_result() :: #{
%%   <<"AccessGrantsLocationArn">> => string(),
%%   <<"AccessGrantsLocationId">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"IAMRoleArn">> => string(),
%%   <<"LocationScope">> => string()
%% }
-type update_access_grants_location_result() :: #{binary() => any()}.

%% Example:
%% delete_job_tagging_result() :: #{}
-type delete_job_tagging_result() :: #{}.


%% Example:
%% create_multi_region_access_point_input() :: #{
%%   <<"Name">> => string(),
%%   <<"PublicAccessBlock">> => public_access_block_configuration(),
%%   <<"Regions">> => list(region()())
%% }
-type create_multi_region_access_point_input() :: #{binary() => any()}.


%% Example:
%% storage_lens_group() :: #{
%%   <<"Filter">> => storage_lens_group_filter(),
%%   <<"Name">> => string(),
%%   <<"StorageLensGroupArn">> => string()
%% }
-type storage_lens_group() :: #{binary() => any()}.


%% Example:
%% get_access_point_for_object_lambda_result() :: #{
%%   <<"Alias">> => object_lambda_access_point_alias(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"PublicAccessBlockConfiguration">> => public_access_block_configuration()
%% }
-type get_access_point_for_object_lambda_result() :: #{binary() => any()}.


%% Example:
%% create_bucket_result() :: #{
%%   <<"BucketArn">> => string(),
%%   <<"Location">> => string()
%% }
-type create_bucket_result() :: #{binary() => any()}.

%% Example:
%% s3_replicate_object_operation() :: #{}
-type s3_replicate_object_operation() :: #{}.


%% Example:
%% list_regional_buckets_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OutpostId">> => string()
%% }
-type list_regional_buckets_request() :: #{binary() => any()}.


%% Example:
%% s3_manifest_output_location() :: #{
%%   <<"Bucket">> => string(),
%%   <<"ExpectedManifestBucketOwner">> => string(),
%%   <<"ManifestEncryption">> => generated_manifest_encryption(),
%%   <<"ManifestFormat">> => list(any()),
%%   <<"ManifestPrefix">> => string()
%% }
-type s3_manifest_output_location() :: #{binary() => any()}.


%% Example:
%% delete_access_point_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type delete_access_point_request() :: #{binary() => any()}.


%% Example:
%% lambda_invoke_operation() :: #{
%%   <<"FunctionArn">> => string(),
%%   <<"InvocationSchemaVersion">> => string(),
%%   <<"UserArguments">> => map()
%% }
-type lambda_invoke_operation() :: #{binary() => any()}.


%% Example:
%% get_bucket_lifecycle_configuration_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type get_bucket_lifecycle_configuration_request() :: #{binary() => any()}.


%% Example:
%% delete_access_grants_instance_resource_policy_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type delete_access_grants_instance_resource_policy_request() :: #{binary() => any()}.


%% Example:
%% storage_lens_aws_org() :: #{
%%   <<"Arn">> => string()
%% }
-type storage_lens_aws_org() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_result() :: #{
%%   <<"Tags">> => list(tag()())
%% }
-type list_tags_for_resource_result() :: #{binary() => any()}.


%% Example:
%% async_error_details() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Resource">> => string()
%% }
-type async_error_details() :: #{binary() => any()}.


%% Example:
%% job_list_descriptor() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"JobId">> => string(),
%%   <<"Operation">> => list(any()),
%%   <<"Priority">> => integer(),
%%   <<"ProgressSummary">> => job_progress_summary(),
%%   <<"Status">> => list(any()),
%%   <<"TerminationDate">> => non_neg_integer()
%% }
-type job_list_descriptor() :: #{binary() => any()}.


%% Example:
%% delete_access_point_for_object_lambda_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type delete_access_point_for_object_lambda_request() :: #{binary() => any()}.


%% Example:
%% get_bucket_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type get_bucket_request() :: #{binary() => any()}.


%% Example:
%% s3_copy_object_operation() :: #{
%%   <<"AccessControlGrants">> => list(s3_grant()()),
%%   <<"BucketKeyEnabled">> => boolean(),
%%   <<"CannedAccessControlList">> => list(any()),
%%   <<"ChecksumAlgorithm">> => list(any()),
%%   <<"MetadataDirective">> => list(any()),
%%   <<"ModifiedSinceConstraint">> => non_neg_integer(),
%%   <<"NewObjectMetadata">> => s3_object_metadata(),
%%   <<"NewObjectTagging">> => list(s3_tag()()),
%%   <<"ObjectLockLegalHoldStatus">> => list(any()),
%%   <<"ObjectLockMode">> => list(any()),
%%   <<"ObjectLockRetainUntilDate">> => non_neg_integer(),
%%   <<"RedirectLocation">> => string(),
%%   <<"RequesterPays">> => boolean(),
%%   <<"SSEAwsKmsKeyId">> => string(),
%%   <<"StorageClass">> => list(any()),
%%   <<"TargetKeyPrefix">> => string(),
%%   <<"TargetResource">> => string(),
%%   <<"UnModifiedSinceConstraint">> => non_neg_integer()
%% }
-type s3_copy_object_operation() :: #{binary() => any()}.


%% Example:
%% get_bucket_policy_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type get_bucket_policy_request() :: #{binary() => any()}.


%% Example:
%% get_public_access_block_output() :: #{
%%   <<"PublicAccessBlockConfiguration">> => public_access_block_configuration()
%% }
-type get_public_access_block_output() :: #{binary() => any()}.


%% Example:
%% delete_access_point_policy_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type delete_access_point_policy_request() :: #{binary() => any()}.


%% Example:
%% aws_lambda_transformation() :: #{
%%   <<"FunctionArn">> => string(),
%%   <<"FunctionPayload">> => string()
%% }
-type aws_lambda_transformation() :: #{binary() => any()}.


%% Example:
%% get_bucket_tagging_result() :: #{
%%   <<"TagSet">> => list(s3_tag()())
%% }
-type get_bucket_tagging_result() :: #{binary() => any()}.


%% Example:
%% delete_marker_replication() :: #{
%%   <<"Status">> => list(any())
%% }
-type delete_marker_replication() :: #{binary() => any()}.


%% Example:
%% create_bucket_request() :: #{
%%   <<"ACL">> => list(any()),
%%   <<"CreateBucketConfiguration">> => create_bucket_configuration(),
%%   <<"GrantFullControl">> => string(),
%%   <<"GrantRead">> => string(),
%%   <<"GrantReadACP">> => string(),
%%   <<"GrantWrite">> => string(),
%%   <<"GrantWriteACP">> => string(),
%%   <<"ObjectLockEnabledForBucket">> => boolean(),
%%   <<"OutpostId">> => string()
%% }
-type create_bucket_request() :: #{binary() => any()}.


%% Example:
%% key_name_constraint() :: #{
%%   <<"MatchAnyPrefix">> => list(string()()),
%%   <<"MatchAnySubstring">> => list(string()()),
%%   <<"MatchAnySuffix">> => list(string()())
%% }
-type key_name_constraint() :: #{binary() => any()}.


%% Example:
%% get_bucket_result() :: #{
%%   <<"Bucket">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"PublicAccessBlockEnabled">> => boolean()
%% }
-type get_bucket_result() :: #{binary() => any()}.


%% Example:
%% get_job_tagging_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type get_job_tagging_request() :: #{binary() => any()}.


%% Example:
%% get_data_access_result() :: #{
%%   <<"Credentials">> => credentials(),
%%   <<"MatchedGrantTarget">> => string()
%% }
-type get_data_access_result() :: #{binary() => any()}.


%% Example:
%% get_access_point_policy_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type get_access_point_policy_request() :: #{binary() => any()}.


%% Example:
%% job_timers() :: #{
%%   <<"ElapsedTimeInActiveSeconds">> => float()
%% }
-type job_timers() :: #{binary() => any()}.


%% Example:
%% existing_object_replication() :: #{
%%   <<"Status">> => list(any())
%% }
-type existing_object_replication() :: #{binary() => any()}.


%% Example:
%% transition() :: #{
%%   <<"Date">> => non_neg_integer(),
%%   <<"Days">> => integer(),
%%   <<"StorageClass">> => list(any())
%% }
-type transition() :: #{binary() => any()}.


%% Example:
%% multi_region_access_point_route() :: #{
%%   <<"Bucket">> => string(),
%%   <<"Region">> => string(),
%%   <<"TrafficDialPercentage">> => integer()
%% }
-type multi_region_access_point_route() :: #{binary() => any()}.

%% Example:
%% s3_delete_object_tagging_operation() :: #{}
-type s3_delete_object_tagging_operation() :: #{}.


%% Example:
%% get_multi_region_access_point_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type get_multi_region_access_point_request() :: #{binary() => any()}.


%% Example:
%% job_manifest_generator_filter() :: #{
%%   <<"CreatedAfter">> => non_neg_integer(),
%%   <<"CreatedBefore">> => non_neg_integer(),
%%   <<"EligibleForReplication">> => boolean(),
%%   <<"KeyNameConstraint">> => key_name_constraint(),
%%   <<"MatchAnyStorageClass">> => list(list(any())()),
%%   <<"ObjectReplicationStatuses">> => list(list(any())()),
%%   <<"ObjectSizeGreaterThanBytes">> => float(),
%%   <<"ObjectSizeLessThanBytes">> => float()
%% }
-type job_manifest_generator_filter() :: #{binary() => any()}.


%% Example:
%% multi_region_access_point_report() :: #{
%%   <<"Alias">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"PublicAccessBlock">> => public_access_block_configuration(),
%%   <<"Regions">> => list(region_report()()),
%%   <<"Status">> => list(any())
%% }
-type multi_region_access_point_report() :: #{binary() => any()}.


%% Example:
%% get_bucket_tagging_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type get_bucket_tagging_request() :: #{binary() => any()}.

%% Example:
%% sse_s3_encryption() :: #{}
-type sse_s3_encryption() :: #{}.


%% Example:
%% list_access_grants_locations_result() :: #{
%%   <<"AccessGrantsLocationsList">> => list(list_access_grants_locations_entry()()),
%%   <<"NextToken">> => string()
%% }
-type list_access_grants_locations_result() :: #{binary() => any()}.


%% Example:
%% get_access_point_policy_status_for_object_lambda_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type get_access_point_policy_status_for_object_lambda_request() :: #{binary() => any()}.


%% Example:
%% access_grants_location_configuration() :: #{
%%   <<"S3SubPrefix">> => string()
%% }
-type access_grants_location_configuration() :: #{binary() => any()}.

%% Example:
%% sse_s3() :: #{}
-type sse_s3() :: #{}.


%% Example:
%% put_access_point_policy_for_object_lambda_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"Policy">> := string()
%% }
-type put_access_point_policy_for_object_lambda_request() :: #{binary() => any()}.


%% Example:
%% list_access_grants_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"ApplicationArn">> => string(),
%%   <<"GrantScope">> => string(),
%%   <<"GranteeIdentifier">> => string(),
%%   <<"GranteeType">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Permission">> => list(any())
%% }
-type list_access_grants_request() :: #{binary() => any()}.


%% Example:
%% delete_access_grants_location_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type delete_access_grants_location_request() :: #{binary() => any()}.


%% Example:
%% get_multi_region_access_point_routes_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type get_multi_region_access_point_routes_request() :: #{binary() => any()}.


%% Example:
%% replication_rule() :: #{
%%   <<"Bucket">> => string(),
%%   <<"DeleteMarkerReplication">> => delete_marker_replication(),
%%   <<"Destination">> => destination(),
%%   <<"ExistingObjectReplication">> => existing_object_replication(),
%%   <<"Filter">> => replication_rule_filter(),
%%   <<"ID">> => string(),
%%   <<"Prefix">> => string(),
%%   <<"Priority">> => integer(),
%%   <<"SourceSelectionCriteria">> => source_selection_criteria(),
%%   <<"Status">> => list(any())
%% }
-type replication_rule() :: #{binary() => any()}.


%% Example:
%% s3_retention() :: #{
%%   <<"Mode">> => list(any()),
%%   <<"RetainUntilDate">> => non_neg_integer()
%% }
-type s3_retention() :: #{binary() => any()}.


%% Example:
%% match_object_size() :: #{
%%   <<"BytesGreaterThan">> => float(),
%%   <<"BytesLessThan">> => float()
%% }
-type match_object_size() :: #{binary() => any()}.


%% Example:
%% update_job_priority_result() :: #{
%%   <<"JobId">> => string(),
%%   <<"Priority">> => integer()
%% }
-type update_job_priority_result() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.


%% Example:
%% access_point() :: #{
%%   <<"AccessPointArn">> => string(),
%%   <<"Alias">> => string(),
%%   <<"Bucket">> => string(),
%%   <<"BucketAccountId">> => string(),
%%   <<"Name">> => string(),
%%   <<"NetworkOrigin">> => list(any()),
%%   <<"VpcConfiguration">> => vpc_configuration()
%% }
-type access_point() :: #{binary() => any()}.


%% Example:
%% cloud_watch_metrics() :: #{
%%   <<"IsEnabled">> => boolean()
%% }
-type cloud_watch_metrics() :: #{binary() => any()}.


%% Example:
%% get_bucket_versioning_result() :: #{
%%   <<"MFADelete">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type get_bucket_versioning_result() :: #{binary() => any()}.


%% Example:
%% idempotency_exception() :: #{
%%   <<"Message">> => string()
%% }
-type idempotency_exception() :: #{binary() => any()}.


%% Example:
%% destination() :: #{
%%   <<"AccessControlTranslation">> => access_control_translation(),
%%   <<"Account">> => string(),
%%   <<"Bucket">> => string(),
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"Metrics">> => metrics(),
%%   <<"ReplicationTime">> => replication_time(),
%%   <<"StorageClass">> => list(any())
%% }
-type destination() :: #{binary() => any()}.


%% Example:
%% update_job_status_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"RequestedJobStatus">> := list(any()),
%%   <<"StatusUpdateReason">> => string()
%% }
-type update_job_status_request() :: #{binary() => any()}.


%% Example:
%% lifecycle_expiration() :: #{
%%   <<"Date">> => non_neg_integer(),
%%   <<"Days">> => integer(),
%%   <<"ExpiredObjectDeleteMarker">> => boolean()
%% }
-type lifecycle_expiration() :: #{binary() => any()}.


%% Example:
%% s3_set_object_legal_hold_operation() :: #{
%%   <<"LegalHold">> => s3_object_lock_legal_hold()
%% }
-type s3_set_object_legal_hold_operation() :: #{binary() => any()}.


%% Example:
%% create_job_result() :: #{
%%   <<"JobId">> => string()
%% }
-type create_job_result() :: #{binary() => any()}.


%% Example:
%% put_bucket_tagging_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"Tagging">> := tagging()
%% }
-type put_bucket_tagging_request() :: #{binary() => any()}.


%% Example:
%% get_access_grants_instance_for_prefix_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"S3Prefix">> := string()
%% }
-type get_access_grants_instance_for_prefix_request() :: #{binary() => any()}.


%% Example:
%% sse_kms() :: #{
%%   <<"KeyId">> => string()
%% }
-type sse_kms() :: #{binary() => any()}.


%% Example:
%% list_caller_access_grants_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"AllowedByApplication">> => boolean(),
%%   <<"GrantScope">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_caller_access_grants_request() :: #{binary() => any()}.


%% Example:
%% update_job_priority_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"Priority">> := integer()
%% }
-type update_job_priority_request() :: #{binary() => any()}.


%% Example:
%% get_access_point_result() :: #{
%%   <<"AccessPointArn">> => string(),
%%   <<"Alias">> => string(),
%%   <<"Bucket">> => string(),
%%   <<"BucketAccountId">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"Endpoints">> => map(),
%%   <<"Name">> => string(),
%%   <<"NetworkOrigin">> => list(any()),
%%   <<"PublicAccessBlockConfiguration">> => public_access_block_configuration(),
%%   <<"VpcConfiguration">> => vpc_configuration()
%% }
-type get_access_point_result() :: #{binary() => any()}.

%% Example:
%% put_storage_lens_configuration_tagging_result() :: #{}
-type put_storage_lens_configuration_tagging_result() :: #{}.


%% Example:
%% list_access_points_result() :: #{
%%   <<"AccessPointList">> => list(access_point()()),
%%   <<"NextToken">> => string()
%% }
-type list_access_points_result() :: #{binary() => any()}.

%% Example:
%% tag_resource_result() :: #{}
-type tag_resource_result() :: #{}.


%% Example:
%% get_multi_region_access_point_policy_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type get_multi_region_access_point_policy_request() :: #{binary() => any()}.


%% Example:
%% replication_rule_and_operator() :: #{
%%   <<"Prefix">> => string(),
%%   <<"Tags">> => list(s3_tag()())
%% }
-type replication_rule_and_operator() :: #{binary() => any()}.


%% Example:
%% get_access_point_policy_status_for_object_lambda_result() :: #{
%%   <<"PolicyStatus">> => policy_status()
%% }
-type get_access_point_policy_status_for_object_lambda_result() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% get_multi_region_access_point_routes_result() :: #{
%%   <<"Mrap">> => string(),
%%   <<"Routes">> => list(multi_region_access_point_route()())
%% }
-type get_multi_region_access_point_routes_result() :: #{binary() => any()}.


%% Example:
%% object_lambda_access_point_alias() :: #{
%%   <<"Status">> => list(any()),
%%   <<"Value">> => string()
%% }
-type object_lambda_access_point_alias() :: #{binary() => any()}.


%% Example:
%% get_public_access_block_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type get_public_access_block_request() :: #{binary() => any()}.


%% Example:
%% put_access_point_policy_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"Policy">> := string()
%% }
-type put_access_point_policy_request() :: #{binary() => any()}.


%% Example:
%% selection_criteria() :: #{
%%   <<"Delimiter">> => string(),
%%   <<"MaxDepth">> => integer(),
%%   <<"MinStorageBytesPercentage">> => float()
%% }
-type selection_criteria() :: #{binary() => any()}.


%% Example:
%% create_access_point_result() :: #{
%%   <<"AccessPointArn">> => string(),
%%   <<"Alias">> => string()
%% }
-type create_access_point_result() :: #{binary() => any()}.


%% Example:
%% list_storage_lens_configuration_entry() :: #{
%%   <<"HomeRegion">> => string(),
%%   <<"Id">> => string(),
%%   <<"IsEnabled">> => boolean(),
%%   <<"StorageLensArn">> => string()
%% }
-type list_storage_lens_configuration_entry() :: #{binary() => any()}.


%% Example:
%% replication_time() :: #{
%%   <<"Status">> => list(any()),
%%   <<"Time">> => replication_time_value()
%% }
-type replication_time() :: #{binary() => any()}.


%% Example:
%% s3_object_owner() :: #{
%%   <<"DisplayName">> => string(),
%%   <<"ID">> => string()
%% }
-type s3_object_owner() :: #{binary() => any()}.


%% Example:
%% list_access_points_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"Bucket">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_access_points_request() :: #{binary() => any()}.


%% Example:
%% put_storage_lens_configuration_tagging_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"Tags">> := list(storage_lens_tag()())
%% }
-type put_storage_lens_configuration_tagging_request() :: #{binary() => any()}.


%% Example:
%% get_access_point_policy_result() :: #{
%%   <<"Policy">> => string()
%% }
-type get_access_point_policy_result() :: #{binary() => any()}.


%% Example:
%% get_multi_region_access_point_policy_status_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type get_multi_region_access_point_policy_status_request() :: #{binary() => any()}.


%% Example:
%% storage_lens_configuration() :: #{
%%   <<"AccountLevel">> => account_level(),
%%   <<"AwsOrg">> => storage_lens_aws_org(),
%%   <<"DataExport">> => storage_lens_data_export(),
%%   <<"Exclude">> => exclude(),
%%   <<"Id">> => string(),
%%   <<"Include">> => include(),
%%   <<"IsEnabled">> => boolean(),
%%   <<"StorageLensArn">> => string()
%% }
-type storage_lens_configuration() :: #{binary() => any()}.


%% Example:
%% s3_set_object_tagging_operation() :: #{
%%   <<"TagSet">> => list(s3_tag()())
%% }
-type s3_set_object_tagging_operation() :: #{binary() => any()}.


%% Example:
%% put_bucket_lifecycle_configuration_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"LifecycleConfiguration">> => lifecycle_configuration()
%% }
-type put_bucket_lifecycle_configuration_request() :: #{binary() => any()}.


%% Example:
%% delete_access_grant_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type delete_access_grant_request() :: #{binary() => any()}.


%% Example:
%% s3_tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type s3_tag() :: #{binary() => any()}.


%% Example:
%% s3_generated_manifest_descriptor() :: #{
%%   <<"Format">> => list(any()),
%%   <<"Location">> => job_manifest_location()
%% }
-type s3_generated_manifest_descriptor() :: #{binary() => any()}.


%% Example:
%% advanced_cost_optimization_metrics() :: #{
%%   <<"IsEnabled">> => boolean()
%% }
-type advanced_cost_optimization_metrics() :: #{binary() => any()}.


%% Example:
%% create_access_grant_request() :: #{
%%   <<"AccessGrantsLocationConfiguration">> => access_grants_location_configuration(),
%%   <<"AccessGrantsLocationId">> := string(),
%%   <<"AccountId">> := string(),
%%   <<"ApplicationArn">> => string(),
%%   <<"Grantee">> := grantee(),
%%   <<"Permission">> := list(any()),
%%   <<"S3PrefixType">> => list(any()),
%%   <<"Tags">> => list(tag()())
%% }
-type create_access_grant_request() :: #{binary() => any()}.


%% Example:
%% get_bucket_lifecycle_configuration_result() :: #{
%%   <<"Rules">> => list(lifecycle_rule()())
%% }
-type get_bucket_lifecycle_configuration_result() :: #{binary() => any()}.


%% Example:
%% list_access_grants_locations_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"LocationScope">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_access_grants_locations_request() :: #{binary() => any()}.


%% Example:
%% describe_multi_region_access_point_operation_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type describe_multi_region_access_point_operation_request() :: #{binary() => any()}.


%% Example:
%% s3_set_object_retention_operation() :: #{
%%   <<"BypassGovernanceRetention">> => boolean(),
%%   <<"Retention">> => s3_retention()
%% }
-type s3_set_object_retention_operation() :: #{binary() => any()}.


%% Example:
%% list_access_grants_locations_entry() :: #{
%%   <<"AccessGrantsLocationArn">> => string(),
%%   <<"AccessGrantsLocationId">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"IAMRoleArn">> => string(),
%%   <<"LocationScope">> => string()
%% }
-type list_access_grants_locations_entry() :: #{binary() => any()}.


%% Example:
%% update_storage_lens_group_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"StorageLensGroup">> := storage_lens_group()
%% }
-type update_storage_lens_group_request() :: #{binary() => any()}.


%% Example:
%% account_level() :: #{
%%   <<"ActivityMetrics">> => activity_metrics(),
%%   <<"AdvancedCostOptimizationMetrics">> => advanced_cost_optimization_metrics(),
%%   <<"AdvancedDataProtectionMetrics">> => advanced_data_protection_metrics(),
%%   <<"BucketLevel">> => bucket_level(),
%%   <<"DetailedStatusCodesMetrics">> => detailed_status_codes_metrics(),
%%   <<"StorageLensGroupLevel">> => storage_lens_group_level()
%% }
-type account_level() :: #{binary() => any()}.


%% Example:
%% list_storage_lens_groups_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"StorageLensGroupList">> => list(list_storage_lens_group_entry()())
%% }
-type list_storage_lens_groups_result() :: #{binary() => any()}.


%% Example:
%% get_access_grants_location_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type get_access_grants_location_request() :: #{binary() => any()}.


%% Example:
%% s3_object_lock_legal_hold() :: #{
%%   <<"Status">> => list(any())
%% }
-type s3_object_lock_legal_hold() :: #{binary() => any()}.


%% Example:
%% delete_bucket_replication_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type delete_bucket_replication_request() :: #{binary() => any()}.

%% Example:
%% put_job_tagging_result() :: #{}
-type put_job_tagging_result() :: #{}.


%% Example:
%% list_storage_lens_configurations_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"NextToken">> => string()
%% }
-type list_storage_lens_configurations_request() :: #{binary() => any()}.


%% Example:
%% job_progress_summary() :: #{
%%   <<"NumberOfTasksFailed">> => float(),
%%   <<"NumberOfTasksSucceeded">> => float(),
%%   <<"Timers">> => job_timers(),
%%   <<"TotalNumberOfTasks">> => float()
%% }
-type job_progress_summary() :: #{binary() => any()}.


%% Example:
%% list_caller_access_grants_entry() :: #{
%%   <<"ApplicationArn">> => string(),
%%   <<"GrantScope">> => string(),
%%   <<"Permission">> => list(any())
%% }
-type list_caller_access_grants_entry() :: #{binary() => any()}.


%% Example:
%% put_access_point_configuration_for_object_lambda_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"Configuration">> := object_lambda_configuration()
%% }
-type put_access_point_configuration_for_object_lambda_request() :: #{binary() => any()}.


%% Example:
%% too_many_tags_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.


%% Example:
%% get_multi_region_access_point_result() :: #{
%%   <<"AccessPoint">> => multi_region_access_point_report()
%% }
-type get_multi_region_access_point_result() :: #{binary() => any()}.


%% Example:
%% lifecycle_rule_and_operator() :: #{
%%   <<"ObjectSizeGreaterThan">> => float(),
%%   <<"ObjectSizeLessThan">> => float(),
%%   <<"Prefix">> => string(),
%%   <<"Tags">> => list(s3_tag()())
%% }
-type lifecycle_rule_and_operator() :: #{binary() => any()}.


%% Example:
%% get_access_grants_instance_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type get_access_grants_instance_request() :: #{binary() => any()}.

-type create_bucket_errors() ::
    bucket_already_exists() | 
    bucket_already_owned_by_you().

-type create_job_errors() ::
    bad_request_exception() | 
    idempotency_exception() | 
    too_many_requests_exception() | 
    internal_service_exception().

-type delete_job_tagging_errors() ::
    not_found_exception() | 
    too_many_requests_exception() | 
    internal_service_exception().

-type describe_job_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    internal_service_exception().

-type get_job_tagging_errors() ::
    not_found_exception() | 
    too_many_requests_exception() | 
    internal_service_exception().

-type get_public_access_block_errors() ::
    no_such_public_access_block_configuration().

-type list_jobs_errors() ::
    invalid_next_token_exception() | 
    invalid_request_exception() | 
    internal_service_exception().

-type put_job_tagging_errors() ::
    too_many_tags_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    internal_service_exception().

-type update_job_priority_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    internal_service_exception().

-type update_job_status_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    internal_service_exception() | 
    job_status_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associate your S3 Access Grants instance with an Amazon Web Services
%% IAM Identity Center instance.
%%
%% Use this action if you want to create access grants for users or groups
%% from your corporate identity directory. First, you must add your corporate
%% identity directory to Amazon Web Services IAM Identity Center. Then, you
%% can associate this IAM Identity Center instance with your S3 Access Grants
%% instance.
%%
%% Permissions
%%
%% You must have the `s3:AssociateAccessGrantsIdentityCenter' permission
%% to use this operation.
%%
%% Additional Permissions
%%
%% You must also have the following permissions: `sso:CreateApplication',
%% `sso:PutApplicationGrant', and
%% `sso:PutApplicationAuthenticationMethod'.
-spec associate_access_grants_identity_center(aws_client:aws_client(), associate_access_grants_identity_center_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
associate_access_grants_identity_center(Client, Input) ->
    associate_access_grants_identity_center(Client, Input, []).

-spec associate_access_grants_identity_center(aws_client:aws_client(), associate_access_grants_identity_center_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
associate_access_grants_identity_center(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v20180820/accessgrantsinstance/identitycenter"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an access grant that gives a grantee access to your S3 data.
%%
%% The grantee can be an IAM user or role or a directory user, or group.
%% Before you can create a grant, you must have an S3 Access Grants instance
%% in the same Region as the S3 data. You can create an S3 Access Grants
%% instance using the CreateAccessGrantsInstance:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessGrantsInstance.html.
%% You must also have registered at least one S3 data location in your S3
%% Access Grants instance using CreateAccessGrantsLocation:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessGrantsLocation.html.
%%
%% Permissions
%%
%% You must have the `s3:CreateAccessGrant' permission to use this
%% operation.
%%
%% Additional Permissions
%%
%% For any directory identity - `sso:DescribeInstance' and
%% `sso:DescribeApplication'
%%
%% For directory users - `identitystore:DescribeUser'
%%
%% For directory groups - `identitystore:DescribeGroup'
-spec create_access_grant(aws_client:aws_client(), create_access_grant_request()) ->
    {ok, create_access_grant_result(), tuple()} |
    {error, any()}.
create_access_grant(Client, Input) ->
    create_access_grant(Client, Input, []).

-spec create_access_grant(aws_client:aws_client(), create_access_grant_request(), proplists:proplist()) ->
    {ok, create_access_grant_result(), tuple()} |
    {error, any()}.
create_access_grant(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v20180820/accessgrantsinstance/grant"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an S3 Access Grants instance, which serves as a logical
%% grouping for access grants.
%%
%% You can create one S3 Access Grants instance per Region per account.
%%
%% Permissions
%%
%% You must have the `s3:CreateAccessGrantsInstance' permission to use
%% this operation.
%%
%% Additional Permissions
%%
%% To associate an IAM Identity Center instance with your S3 Access Grants
%% instance, you must also have the `sso:DescribeInstance',
%% `sso:CreateApplication', `sso:PutApplicationGrant', and
%% `sso:PutApplicationAuthenticationMethod' permissions.
-spec create_access_grants_instance(aws_client:aws_client(), create_access_grants_instance_request()) ->
    {ok, create_access_grants_instance_result(), tuple()} |
    {error, any()}.
create_access_grants_instance(Client, Input) ->
    create_access_grants_instance(Client, Input, []).

-spec create_access_grants_instance(aws_client:aws_client(), create_access_grants_instance_request(), proplists:proplist()) ->
    {ok, create_access_grants_instance_result(), tuple()} |
    {error, any()}.
create_access_grants_instance(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v20180820/accessgrantsinstance"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The S3 data location that you would like to register in your S3
%% Access Grants instance.
%%
%% Your S3 data must be in the same Region as your S3 Access Grants instance.
%% The location can be one of the following:
%%
%% The default S3 location `s3://'
%%
%% A bucket - `S3://'
%%
%% A bucket and prefix - `S3:///'
%%
%% When you register a location, you must include the IAM role that has
%% permission to manage the S3 location that you are registering. Give S3
%% Access Grants permission to assume this role using a policy:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-grants-location.html.
%% S3 Access Grants assumes this role to manage access to the location and to
%% vend temporary credentials to grantees or client applications.
%%
%% Permissions
%%
%% You must have the `s3:CreateAccessGrantsLocation' permission to use
%% this operation.
%%
%% Additional Permissions
%%
%% You must also have the following permission for the specified IAM role:
%% `iam:PassRole'
-spec create_access_grants_location(aws_client:aws_client(), create_access_grants_location_request()) ->
    {ok, create_access_grants_location_result(), tuple()} |
    {error, any()}.
create_access_grants_location(Client, Input) ->
    create_access_grants_location(Client, Input, []).

-spec create_access_grants_location(aws_client:aws_client(), create_access_grants_location_request(), proplists:proplist()) ->
    {ok, create_access_grants_location_result(), tuple()} |
    {error, any()}.
create_access_grants_location(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v20180820/accessgrantsinstance/location"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Creates an access point and associates it with the specified bucket. For
%% more information, see
%% Managing
%% Data Access with Amazon S3 Access Points:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html
%% in the
%% Amazon S3 User Guide.
%%
%% S3 on Outposts only supports VPC-style access points.
%%
%% For more information, see Accessing Amazon S3 on Outposts using
%% virtual private cloud (VPC) only access points:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html in
%% the
%% Amazon S3 User Guide.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the
%% request. In addition, you must use an S3 on Outposts endpoint hostname
%% prefix instead of `s3-control'. For an example of the request syntax
%% for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
%% prefix and the `x-amz-outpost-id' derived by using the access point
%% ARN, see the Examples:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html#API_control_CreateAccessPoint_Examples
%% section.
%%
%% The following actions are related to `CreateAccessPoint':
%%
%% GetAccessPoint:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html
%%
%% DeleteAccessPoint:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html
%%
%% ListAccessPoints:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPoints.html
-spec create_access_point(aws_client:aws_client(), binary() | list(), create_access_point_request()) ->
    {ok, create_access_point_result(), tuple()} |
    {error, any()}.
create_access_point(Client, Name, Input) ->
    create_access_point(Client, Name, Input, []).

-spec create_access_point(aws_client:aws_client(), binary() | list(), create_access_point_request(), proplists:proplist()) ->
    {ok, create_access_point_result(), tuple()} |
    {error, any()}.
create_access_point(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/v20180820/accesspoint/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Creates an Object Lambda Access Point. For more information, see
%% Transforming objects with
%% Object Lambda Access Points:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/transforming-objects.html
%% in the Amazon S3 User Guide.
%%
%% The following actions are related to
%% `CreateAccessPointForObjectLambda':
%%
%% DeleteAccessPointForObjectLambda:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointForObjectLambda.html
%%
%% GetAccessPointForObjectLambda:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointForObjectLambda.html
%%
%% ListAccessPointsForObjectLambda:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPointsForObjectLambda.html
-spec create_access_point_for_object_lambda(aws_client:aws_client(), binary() | list(), create_access_point_for_object_lambda_request()) ->
    {ok, create_access_point_for_object_lambda_result(), tuple()} |
    {error, any()}.
create_access_point_for_object_lambda(Client, Name, Input) ->
    create_access_point_for_object_lambda(Client, Name, Input, []).

-spec create_access_point_for_object_lambda(aws_client:aws_client(), binary() | list(), create_access_point_for_object_lambda_request(), proplists:proplist()) ->
    {ok, create_access_point_for_object_lambda_result(), tuple()} |
    {error, any()}.
create_access_point_for_object_lambda(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/v20180820/accesspointforobjectlambda/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% This action creates an Amazon S3 on Outposts bucket.
%%
%% To create an S3 bucket, see Create
%% Bucket:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html in
%% the Amazon S3 API Reference.
%%
%% Creates a new Outposts bucket. By creating the bucket, you become the
%% bucket owner. To
%% create an Outposts bucket, you must have S3 on Outposts. For more
%% information, see Using
%% Amazon S3 on Outposts:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html in
%% Amazon S3 User Guide.
%%
%% Not every string is an acceptable bucket name. For information on bucket
%% naming
%% restrictions, see Working with
%% Amazon S3 Buckets:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/BucketRestrictions.html#bucketnamingrules.
%%
%% S3 on Outposts buckets support:
%%
%% Tags
%%
%% LifecycleConfigurations for deleting expired objects
%%
%% For a complete list of restrictions and Amazon S3 feature limitations on
%% S3 on Outposts, see
%%
%% Amazon S3 on Outposts Restrictions and Limitations:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OnOutpostsRestrictionsLimitations.html.
%%
%% For an example of the request syntax for Amazon S3 on Outposts that uses
%% the S3 on Outposts
%% endpoint hostname prefix and `x-amz-outpost-id' in your API request,
%% see the
%% Examples:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html#API_control_CreateBucket_Examples
%% section.
%%
%% The following actions are related to `CreateBucket' for
%% Amazon S3 on Outposts:
%%
%% PutObject:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html
%%
%% GetBucket:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucket.html
%%
%% DeleteBucket:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucket.html
%%
%% CreateAccessPoint:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html
%%
%% PutAccessPointPolicy:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html
-spec create_bucket(aws_client:aws_client(), binary() | list(), create_bucket_request()) ->
    {ok, create_bucket_result(), tuple()} |
    {error, any()} |
    {error, create_bucket_errors(), tuple()}.
create_bucket(Client, Bucket, Input) ->
    create_bucket(Client, Bucket, Input, []).

-spec create_bucket(aws_client:aws_client(), binary() | list(), create_bucket_request(), proplists:proplist()) ->
    {ok, create_bucket_result(), tuple()} |
    {error, any()} |
    {error, create_bucket_errors(), tuple()}.
create_bucket(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/v20180820/bucket/", aws_util:encode_uri(Bucket), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-acl">>, <<"ACL">>},
                       {<<"x-amz-grant-full-control">>, <<"GrantFullControl">>},
                       {<<"x-amz-grant-read">>, <<"GrantRead">>},
                       {<<"x-amz-grant-read-acp">>, <<"GrantReadACP">>},
                       {<<"x-amz-grant-write">>, <<"GrantWrite">>},
                       {<<"x-amz-grant-write-acp">>, <<"GrantWriteACP">>},
                       {<<"x-amz-bucket-object-lock-enabled">>, <<"ObjectLockEnabledForBucket">>},
                       {<<"x-amz-outpost-id">>, <<"OutpostId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Location">>, <<"Location">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc This operation creates an S3 Batch Operations job.
%%
%% You can use S3 Batch Operations to perform large-scale batch actions on
%% Amazon S3 objects.
%% Batch Operations can run a single action on lists of Amazon S3 objects
%% that you specify. For more
%% information, see S3 Batch Operations:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html in
%% the Amazon S3 User Guide.
%%
%% Permissions
%%
%% For information about permissions required to use the Batch Operations,
%% see Granting permissions for S3 Batch Operations:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops-iam-role-policies.html
%% in the Amazon S3
%% User Guide.
%%
%% Related actions include:
%%
%% DescribeJob:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html
%%
%% ListJobs:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html
%%
%% UpdateJobPriority:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobPriority.html
%%
%% UpdateJobStatus:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html
%%
%% JobOperation:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_JobOperation.html
-spec create_job(aws_client:aws_client(), create_job_request()) ->
    {ok, create_job_result(), tuple()} |
    {error, any()} |
    {error, create_job_errors(), tuple()}.
create_job(Client, Input) ->
    create_job(Client, Input, []).

-spec create_job(aws_client:aws_client(), create_job_request(), proplists:proplist()) ->
    {ok, create_job_result(), tuple()} |
    {error, any()} |
    {error, create_job_errors(), tuple()}.
create_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v20180820/jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Creates a Multi-Region Access Point and associates it with the specified
%% buckets. For more information
%% about creating Multi-Region Access Points, see Creating Multi-Region
%% Access Points:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html
%% in the Amazon S3 User Guide.
%%
%% This action will always be routed to the US West (Oregon) Region. For more
%% information
%% about the restrictions around working with Multi-Region Access Points, see
%% Multi-Region Access Point
%% restrictions and limitations:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/MultiRegionAccessPointRestrictions.html
%% in the Amazon S3 User Guide.
%%
%% This request is asynchronous, meaning that you might receive a response
%% before the
%% command has completed. When this request provides a response, it provides
%% a token that you
%% can use to monitor the status of the request with
%% `DescribeMultiRegionAccessPointOperation'.
%%
%% The following actions are related to `CreateMultiRegionAccessPoint':
%%
%% DeleteMultiRegionAccessPoint:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html
%%
%% DescribeMultiRegionAccessPointOperation:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html
%%
%% GetMultiRegionAccessPoint:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPoint.html
%%
%% ListMultiRegionAccessPoints:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListMultiRegionAccessPoints.html
-spec create_multi_region_access_point(aws_client:aws_client(), create_multi_region_access_point_request()) ->
    {ok, create_multi_region_access_point_result(), tuple()} |
    {error, any()}.
create_multi_region_access_point(Client, Input) ->
    create_multi_region_access_point(Client, Input, []).

-spec create_multi_region_access_point(aws_client:aws_client(), create_multi_region_access_point_request(), proplists:proplist()) ->
    {ok, create_multi_region_access_point_result(), tuple()} |
    {error, any()}.
create_multi_region_access_point(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v20180820/async-requests/mrap/create"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new S3 Storage Lens group and associates it with the
%% specified Amazon Web Services account ID.
%%
%% An
%% S3 Storage Lens group is a custom grouping of objects based on prefix,
%% suffix, object tags,
%% object size, object age, or a combination of these filters. For each
%% Storage Lens group
%% that you’ve created, you can also optionally add Amazon Web Services
%% resource tags. For more information
%% about S3 Storage Lens groups, see Working with S3 Storage Lens
%% groups:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-lens-groups-overview.html.
%%
%% To use this operation, you must have the permission to perform the
%% `s3:CreateStorageLensGroup' action. If you’re trying to create a
%% Storage Lens
%% group with Amazon Web Services resource tags, you must also have
%% permission to perform the
%% `s3:TagResource' action. For more information about the required
%% Storage Lens
%% Groups permissions, see Setting account permissions to use S3 Storage Lens
%% groups:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_iam_permissions.html#storage_lens_groups_permissions.
%%
%% For information about Storage Lens groups errors, see List of Amazon S3
%% Storage
%% Lens error codes:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#S3LensErrorCodeList.
-spec create_storage_lens_group(aws_client:aws_client(), create_storage_lens_group_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
create_storage_lens_group(Client, Input) ->
    create_storage_lens_group(Client, Input, []).

-spec create_storage_lens_group(aws_client:aws_client(), create_storage_lens_group_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
create_storage_lens_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v20180820/storagelensgroup"],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the access grant from the S3 Access Grants instance.
%%
%% You cannot undo an access grant deletion and the grantee will no longer
%% have access to the S3 data.
%%
%% Permissions
%%
%% You must have the `s3:DeleteAccessGrant' permission to use this
%% operation.
-spec delete_access_grant(aws_client:aws_client(), binary() | list(), delete_access_grant_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_access_grant(Client, AccessGrantId, Input) ->
    delete_access_grant(Client, AccessGrantId, Input, []).

-spec delete_access_grant(aws_client:aws_client(), binary() | list(), delete_access_grant_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_access_grant(Client, AccessGrantId, Input0, Options0) ->
    Method = delete,
    Path = ["/v20180820/accessgrantsinstance/grant/", aws_util:encode_uri(AccessGrantId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes your S3 Access Grants instance.
%%
%% You must first delete the access grants and locations before S3 Access
%% Grants can delete the instance. See DeleteAccessGrant:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessGrant.html
%% and DeleteAccessGrantsLocation:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessGrantsLocation.html.
%% If you have associated an IAM Identity Center instance with your S3 Access
%% Grants instance, you must first dissassociate the Identity Center instance
%% from the S3 Access Grants instance before you can delete the S3 Access
%% Grants instance. See AssociateAccessGrantsIdentityCenter:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_AssociateAccessGrantsIdentityCenter.html
%% and DissociateAccessGrantsIdentityCenter:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DissociateAccessGrantsIdentityCenter.html.
%%
%% Permissions
%%
%% You must have the `s3:DeleteAccessGrantsInstance' permission to use
%% this operation.
-spec delete_access_grants_instance(aws_client:aws_client(), delete_access_grants_instance_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_access_grants_instance(Client, Input) ->
    delete_access_grants_instance(Client, Input, []).

-spec delete_access_grants_instance(aws_client:aws_client(), delete_access_grants_instance_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_access_grants_instance(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/v20180820/accessgrantsinstance"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the resource policy of the S3 Access Grants instance.
%%
%% The resource policy is used to manage cross-account access to your S3
%% Access Grants instance. By deleting the resource policy, you delete any
%% cross-account permissions to your S3 Access Grants instance.
%%
%% Permissions
%%
%% You must have the `s3:DeleteAccessGrantsInstanceResourcePolicy'
%% permission to use this operation.
-spec delete_access_grants_instance_resource_policy(aws_client:aws_client(), delete_access_grants_instance_resource_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_access_grants_instance_resource_policy(Client, Input) ->
    delete_access_grants_instance_resource_policy(Client, Input, []).

-spec delete_access_grants_instance_resource_policy(aws_client:aws_client(), delete_access_grants_instance_resource_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_access_grants_instance_resource_policy(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/v20180820/accessgrantsinstance/resourcepolicy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deregisters a location from your S3 Access Grants instance.
%%
%% You can only delete a location registration from an S3 Access Grants
%% instance if there are no grants associated with this location. See Delete
%% a grant:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessGrant.html
%% for information on how to delete grants. You need to have at least one
%% registered location in your S3 Access Grants instance in order to create
%% access grants.
%%
%% Permissions
%%
%% You must have the `s3:DeleteAccessGrantsLocation' permission to use
%% this operation.
-spec delete_access_grants_location(aws_client:aws_client(), binary() | list(), delete_access_grants_location_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_access_grants_location(Client, AccessGrantsLocationId, Input) ->
    delete_access_grants_location(Client, AccessGrantsLocationId, Input, []).

-spec delete_access_grants_location(aws_client:aws_client(), binary() | list(), delete_access_grants_location_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_access_grants_location(Client, AccessGrantsLocationId, Input0, Options0) ->
    Method = delete,
    Path = ["/v20180820/accessgrantsinstance/location/", aws_util:encode_uri(AccessGrantsLocationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Deletes the specified access point.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the
%% request. In addition, you must use an S3 on Outposts endpoint hostname
%% prefix instead of `s3-control'. For an example of the request syntax
%% for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
%% prefix and the `x-amz-outpost-id' derived by using the access point
%% ARN, see the Examples:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html#API_control_DeleteAccessPoint_Examples
%% section.
%%
%% The following actions are related to `DeleteAccessPoint':
%%
%% CreateAccessPoint:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html
%%
%% GetAccessPoint:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html
%%
%% ListAccessPoints:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPoints.html
-spec delete_access_point(aws_client:aws_client(), binary() | list(), delete_access_point_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_access_point(Client, Name, Input) ->
    delete_access_point(Client, Name, Input, []).

-spec delete_access_point(aws_client:aws_client(), binary() | list(), delete_access_point_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_access_point(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/v20180820/accesspoint/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Deletes the specified Object Lambda Access Point.
%%
%% The following actions are related to
%% `DeleteAccessPointForObjectLambda':
%%
%% CreateAccessPointForObjectLambda:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPointForObjectLambda.html
%%
%% GetAccessPointForObjectLambda:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointForObjectLambda.html
%%
%% ListAccessPointsForObjectLambda:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPointsForObjectLambda.html
-spec delete_access_point_for_object_lambda(aws_client:aws_client(), binary() | list(), delete_access_point_for_object_lambda_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_access_point_for_object_lambda(Client, Name, Input) ->
    delete_access_point_for_object_lambda(Client, Name, Input, []).

-spec delete_access_point_for_object_lambda(aws_client:aws_client(), binary() | list(), delete_access_point_for_object_lambda_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_access_point_for_object_lambda(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/v20180820/accesspointforobjectlambda/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Deletes the access point policy for the specified access point.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the
%% request. In addition, you must use an S3 on Outposts endpoint hostname
%% prefix instead of `s3-control'. For an example of the request syntax
%% for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
%% prefix and the `x-amz-outpost-id' derived by using the access point
%% ARN, see the Examples:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicy.html#API_control_DeleteAccessPointPolicy_Examples
%% section.
%%
%% The following actions are related to `DeleteAccessPointPolicy':
%%
%% PutAccessPointPolicy:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html
%%
%% GetAccessPointPolicy:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointPolicy.html
-spec delete_access_point_policy(aws_client:aws_client(), binary() | list(), delete_access_point_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_access_point_policy(Client, Name, Input) ->
    delete_access_point_policy(Client, Name, Input, []).

-spec delete_access_point_policy(aws_client:aws_client(), binary() | list(), delete_access_point_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_access_point_policy(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/v20180820/accesspoint/", aws_util:encode_uri(Name), "/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Removes the resource policy for an Object Lambda Access Point.
%%
%% The following actions are related to
%% `DeleteAccessPointPolicyForObjectLambda':
%%
%% GetAccessPointPolicyForObjectLambda:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointPolicyForObjectLambda.html
%%
%% PutAccessPointPolicyForObjectLambda:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicyForObjectLambda.html
-spec delete_access_point_policy_for_object_lambda(aws_client:aws_client(), binary() | list(), delete_access_point_policy_for_object_lambda_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_access_point_policy_for_object_lambda(Client, Name, Input) ->
    delete_access_point_policy_for_object_lambda(Client, Name, Input, []).

-spec delete_access_point_policy_for_object_lambda(aws_client:aws_client(), binary() | list(), delete_access_point_policy_for_object_lambda_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_access_point_policy_for_object_lambda(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/v20180820/accesspointforobjectlambda/", aws_util:encode_uri(Name), "/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% This action deletes an Amazon S3 on Outposts bucket.
%%
%% To delete an S3 bucket, see DeleteBucket:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucket.html in
%% the Amazon S3 API Reference.
%%
%% Deletes the Amazon S3 on Outposts bucket. All objects (including all
%% object versions and
%% delete markers) in the bucket must be deleted before the bucket itself can
%% be deleted. For
%% more information, see Using Amazon S3 on Outposts:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html in
%% Amazon S3 User Guide.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the
%% request. In addition, you must use an S3 on Outposts endpoint hostname
%% prefix instead of `s3-control'. For an example of the request syntax
%% for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
%% prefix and the `x-amz-outpost-id' derived by using the access point
%% ARN, see the Examples:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucket.html#API_control_DeleteBucket_Examples
%% section.
%%
%% == Related Resources ==
%%
%% CreateBucket:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html
%%
%% GetBucket:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucket.html
%%
%% DeleteObject:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html
-spec delete_bucket(aws_client:aws_client(), binary() | list(), delete_bucket_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_bucket(Client, Bucket, Input) ->
    delete_bucket(Client, Bucket, Input, []).

-spec delete_bucket(aws_client:aws_client(), binary() | list(), delete_bucket_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_bucket(Client, Bucket, Input0, Options0) ->
    Method = delete,
    Path = ["/v20180820/bucket/", aws_util:encode_uri(Bucket), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% This action deletes an Amazon S3 on Outposts bucket's lifecycle
%% configuration.
%%
%% To delete
%% an S3 bucket's lifecycle configuration, see DeleteBucketLifecycle:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketLifecycle.html
%% in the Amazon S3 API Reference.
%%
%% Deletes the lifecycle configuration from the specified Outposts bucket.
%% Amazon S3 on Outposts removes all the lifecycle configuration rules in the
%% lifecycle subresource
%% associated with the bucket. Your objects never expire, and Amazon S3 on
%% Outposts no longer
%% automatically deletes any objects on the basis of rules contained in the
%% deleted lifecycle
%% configuration. For more information, see Using Amazon S3 on Outposts:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html in
%% Amazon S3 User Guide.
%%
%% To use this operation, you must have permission to perform the
%% `s3-outposts:PutLifecycleConfiguration' action. By default, the bucket
%% owner
%% has this permission and the Outposts bucket owner can grant this
%% permission to
%% others.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the
%% request. In addition, you must use an S3 on Outposts endpoint hostname
%% prefix instead of `s3-control'. For an example of the request syntax
%% for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
%% prefix and the `x-amz-outpost-id' derived by using the access point
%% ARN, see the Examples:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketLifecycleConfiguration.html#API_control_DeleteBucketLifecycleConfiguration_Examples
%% section.
%%
%% For more information about object expiration, see Elements to Describe
%% Lifecycle Actions:
%% https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#intro-lifecycle-rules-actions.
%%
%% Related actions include:
%%
%% PutBucketLifecycleConfiguration:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html
%%
%% GetBucketLifecycleConfiguration:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html
-spec delete_bucket_lifecycle_configuration(aws_client:aws_client(), binary() | list(), delete_bucket_lifecycle_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_bucket_lifecycle_configuration(Client, Bucket, Input) ->
    delete_bucket_lifecycle_configuration(Client, Bucket, Input, []).

-spec delete_bucket_lifecycle_configuration(aws_client:aws_client(), binary() | list(), delete_bucket_lifecycle_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_bucket_lifecycle_configuration(Client, Bucket, Input0, Options0) ->
    Method = delete,
    Path = ["/v20180820/bucket/", aws_util:encode_uri(Bucket), "/lifecycleconfiguration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% This action deletes an Amazon S3 on Outposts bucket policy.
%%
%% To delete an S3 bucket policy,
%% see DeleteBucketPolicy:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketPolicy.html
%% in the Amazon S3 API Reference.
%%
%% This implementation of the DELETE action uses the policy subresource to
%% delete the
%% policy of a specified Amazon S3 on Outposts bucket. If you are using an
%% identity other than the
%% root user of the Amazon Web Services account that owns the bucket, the
%% calling identity must have the
%% `s3-outposts:DeleteBucketPolicy' permissions on the specified Outposts
%% bucket
%% and belong to the bucket owner's account to use this action. For more
%% information, see
%% Using
%% Amazon S3 on Outposts:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html in
%% Amazon S3 User Guide.
%%
%% If you don't have `DeleteBucketPolicy' permissions, Amazon S3
%% returns a
%% ```
%% 403 Access Denied''' error. If you have the correct
%% permissions, but you're not using an
%% identity that belongs to the bucket owner's account, Amazon S3 returns
%% a
%% ```
%% 405 Method Not Allowed''' error.
%%
%% As a security precaution, the root user of the Amazon Web Services account
%% that owns a bucket can
%% always use this action, even if the policy explicitly denies the root user
%% the ability
%% to perform this action.
%%
%% For more information about bucket policies, see Using Bucket Policies and
%% User
%% Policies:
%% https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the
%% request. In addition, you must use an S3 on Outposts endpoint hostname
%% prefix instead of `s3-control'. For an example of the request syntax
%% for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
%% prefix and the `x-amz-outpost-id' derived by using the access point
%% ARN, see the Examples:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketPolicy.html#API_control_DeleteBucketPolicy_Examples
%% section.
%%
%% The following actions are related to `DeleteBucketPolicy':
%%
%% GetBucketPolicy:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketPolicy.html
%%
%% PutBucketPolicy:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketPolicy.html
-spec delete_bucket_policy(aws_client:aws_client(), binary() | list(), delete_bucket_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_bucket_policy(Client, Bucket, Input) ->
    delete_bucket_policy(Client, Bucket, Input, []).

-spec delete_bucket_policy(aws_client:aws_client(), binary() | list(), delete_bucket_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_bucket_policy(Client, Bucket, Input0, Options0) ->
    Method = delete,
    Path = ["/v20180820/bucket/", aws_util:encode_uri(Bucket), "/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% This operation deletes an Amazon S3 on Outposts bucket's replication
%% configuration.
%%
%% To
%% delete an S3 bucket's replication configuration, see
%% DeleteBucketReplication:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketReplication.html
%% in the Amazon S3 API Reference.
%%
%% Deletes the replication configuration from the specified S3 on Outposts
%% bucket.
%%
%% To use this operation, you must have permissions to perform the
%% `s3-outposts:PutReplicationConfiguration' action. The Outposts bucket
%% owner
%% has this permission by default and can grant it to others. For more
%% information about
%% permissions, see Setting up IAM with
%% S3 on Outposts:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsIAM.html
%% and Managing access to
%% S3 on Outposts buckets:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsBucketPolicy.html
%% in the Amazon S3 User Guide.
%%
%% It can take a while to propagate `PUT' or `DELETE' requests for
%% a replication configuration to all S3 on Outposts systems. Therefore, the
%% replication
%% configuration that's returned by a `GET' request soon after a
%% `PUT' or `DELETE' request might return a more recent result
%% than what's on the Outpost. If an Outpost is offline, the delay in
%% updating the
%% replication configuration on that Outpost can be significant.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the
%% request. In addition, you must use an S3 on Outposts endpoint hostname
%% prefix instead of `s3-control'. For an example of the request syntax
%% for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
%% prefix and the `x-amz-outpost-id' derived by using the access point
%% ARN, see the Examples:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketReplication.html#API_control_DeleteBucketReplication_Examples
%% section.
%%
%% For information about S3 replication on Outposts configuration, see
%% Replicating objects for S3 on Outposts:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsReplication.html
%% in the
%% Amazon S3 User Guide.
%%
%% The following operations are related to `DeleteBucketReplication':
%%
%% PutBucketReplication:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketReplication.html
%%
%% GetBucketReplication:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketReplication.html
-spec delete_bucket_replication(aws_client:aws_client(), binary() | list(), delete_bucket_replication_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_bucket_replication(Client, Bucket, Input) ->
    delete_bucket_replication(Client, Bucket, Input, []).

-spec delete_bucket_replication(aws_client:aws_client(), binary() | list(), delete_bucket_replication_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_bucket_replication(Client, Bucket, Input0, Options0) ->
    Method = delete,
    Path = ["/v20180820/bucket/", aws_util:encode_uri(Bucket), "/replication"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% This action deletes an Amazon S3 on Outposts bucket's tags.
%%
%% To delete an S3 bucket tags,
%% see DeleteBucketTagging:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketTagging.html
%% in the Amazon S3 API Reference.
%%
%% Deletes the tags from the Outposts bucket. For more information, see Using
%% Amazon S3 on Outposts:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html in
%% Amazon S3 User Guide.
%%
%% To use this action, you must have permission to perform the
%% `PutBucketTagging' action. By default, the bucket owner has this
%% permission
%% and can grant this permission to others.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the
%% request. In addition, you must use an S3 on Outposts endpoint hostname
%% prefix instead of `s3-control'. For an example of the request syntax
%% for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
%% prefix and the `x-amz-outpost-id' derived by using the access point
%% ARN, see the Examples:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketTagging.html#API_control_DeleteBucketTagging_Examples
%% section.
%%
%% The following actions are related to `DeleteBucketTagging':
%%
%% GetBucketTagging:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketTagging.html
%%
%% PutBucketTagging:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketTagging.html
-spec delete_bucket_tagging(aws_client:aws_client(), binary() | list(), delete_bucket_tagging_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_bucket_tagging(Client, Bucket, Input) ->
    delete_bucket_tagging(Client, Bucket, Input, []).

-spec delete_bucket_tagging(aws_client:aws_client(), binary() | list(), delete_bucket_tagging_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_bucket_tagging(Client, Bucket, Input0, Options0) ->
    Method = delete,
    Path = ["/v20180820/bucket/", aws_util:encode_uri(Bucket), "/tagging"],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the entire tag set from the specified S3 Batch Operations
%% job.
%%
%% Permissions
%%
%% To use the
%% `DeleteJobTagging' operation, you must have permission to
%% perform the `s3:DeleteJobTagging' action. For more information, see
%% Controlling
%% access and labeling jobs using tags:
%% https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags
%% in the
%% Amazon S3 User Guide.
%%
%% Related actions include:
%%
%% CreateJob:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html
%%
%% GetJobTagging:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetJobTagging.html
%%
%% PutJobTagging:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutJobTagging.html
-spec delete_job_tagging(aws_client:aws_client(), binary() | list(), delete_job_tagging_request()) ->
    {ok, delete_job_tagging_result(), tuple()} |
    {error, any()} |
    {error, delete_job_tagging_errors(), tuple()}.
delete_job_tagging(Client, JobId, Input) ->
    delete_job_tagging(Client, JobId, Input, []).

-spec delete_job_tagging(aws_client:aws_client(), binary() | list(), delete_job_tagging_request(), proplists:proplist()) ->
    {ok, delete_job_tagging_result(), tuple()} |
    {error, any()} |
    {error, delete_job_tagging_errors(), tuple()}.
delete_job_tagging(Client, JobId, Input0, Options0) ->
    Method = delete,
    Path = ["/v20180820/jobs/", aws_util:encode_uri(JobId), "/tagging"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Deletes a Multi-Region Access Point. This action does not delete the
%% buckets associated with the Multi-Region Access Point,
%% only the Multi-Region Access Point itself.
%%
%% This action will always be routed to the US West (Oregon) Region. For more
%% information
%% about the restrictions around working with Multi-Region Access Points, see
%% Multi-Region Access Point
%% restrictions and limitations:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/MultiRegionAccessPointRestrictions.html
%% in the Amazon S3 User Guide.
%%
%% This request is asynchronous, meaning that you might receive a response
%% before the
%% command has completed. When this request provides a response, it provides
%% a token that you
%% can use to monitor the status of the request with
%% `DescribeMultiRegionAccessPointOperation'.
%%
%% The following actions are related to `DeleteMultiRegionAccessPoint':
%%
%% CreateMultiRegionAccessPoint:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html
%%
%% DescribeMultiRegionAccessPointOperation:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html
%%
%% GetMultiRegionAccessPoint:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPoint.html
%%
%% ListMultiRegionAccessPoints:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListMultiRegionAccessPoints.html
-spec delete_multi_region_access_point(aws_client:aws_client(), delete_multi_region_access_point_request()) ->
    {ok, delete_multi_region_access_point_result(), tuple()} |
    {error, any()}.
delete_multi_region_access_point(Client, Input) ->
    delete_multi_region_access_point(Client, Input, []).

-spec delete_multi_region_access_point(aws_client:aws_client(), delete_multi_region_access_point_request(), proplists:proplist()) ->
    {ok, delete_multi_region_access_point_result(), tuple()} |
    {error, any()}.
delete_multi_region_access_point(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v20180820/async-requests/mrap/delete"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Removes the `PublicAccessBlock' configuration for an Amazon Web
%% Services account. For more
%% information, see Using Amazon S3 block
%% public access:
%% https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html.
%%
%% Related actions include:
%%
%% GetPublicAccessBlock:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetPublicAccessBlock.html
%%
%% PutPublicAccessBlock:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutPublicAccessBlock.html
-spec delete_public_access_block(aws_client:aws_client(), delete_public_access_block_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_public_access_block(Client, Input) ->
    delete_public_access_block(Client, Input, []).

-spec delete_public_access_block(aws_client:aws_client(), delete_public_access_block_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_public_access_block(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/v20180820/configuration/publicAccessBlock"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Deletes the Amazon S3 Storage Lens configuration. For more information
%% about S3 Storage Lens, see Assessing your storage
%% activity and usage with Amazon S3 Storage Lens :
%% https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html in the
%% Amazon S3 User Guide.
%%
%% To use this action, you must have permission to perform the
%% `s3:DeleteStorageLensConfiguration' action. For more information, see
%% Setting permissions to
%% use Amazon S3 Storage Lens:
%% https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html
%% in the Amazon S3 User Guide.
-spec delete_storage_lens_configuration(aws_client:aws_client(), binary() | list(), delete_storage_lens_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_storage_lens_configuration(Client, ConfigId, Input) ->
    delete_storage_lens_configuration(Client, ConfigId, Input, []).

-spec delete_storage_lens_configuration(aws_client:aws_client(), binary() | list(), delete_storage_lens_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_storage_lens_configuration(Client, ConfigId, Input0, Options0) ->
    Method = delete,
    Path = ["/v20180820/storagelens/", aws_util:encode_uri(ConfigId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Deletes the Amazon S3 Storage Lens configuration tags. For more
%% information about S3 Storage Lens, see
%% Assessing your
%% storage activity and usage with Amazon S3 Storage Lens :
%% https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html in the
%% Amazon S3 User Guide.
%%
%% To use this action, you must have permission to perform the
%% `s3:DeleteStorageLensConfigurationTagging' action. For more
%% information,
%% see Setting permissions to
%% use Amazon S3 Storage Lens:
%% https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html
%% in the Amazon S3 User Guide.
-spec delete_storage_lens_configuration_tagging(aws_client:aws_client(), binary() | list(), delete_storage_lens_configuration_tagging_request()) ->
    {ok, delete_storage_lens_configuration_tagging_result(), tuple()} |
    {error, any()}.
delete_storage_lens_configuration_tagging(Client, ConfigId, Input) ->
    delete_storage_lens_configuration_tagging(Client, ConfigId, Input, []).

-spec delete_storage_lens_configuration_tagging(aws_client:aws_client(), binary() | list(), delete_storage_lens_configuration_tagging_request(), proplists:proplist()) ->
    {ok, delete_storage_lens_configuration_tagging_result(), tuple()} |
    {error, any()}.
delete_storage_lens_configuration_tagging(Client, ConfigId, Input0, Options0) ->
    Method = delete,
    Path = ["/v20180820/storagelens/", aws_util:encode_uri(ConfigId), "/tagging"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Deletes an existing S3 Storage Lens group.
%%
%% To use this operation, you must have the permission to perform the
%% `s3:DeleteStorageLensGroup' action. For more information about the
%% required Storage Lens
%% Groups permissions, see Setting account permissions to use S3 Storage Lens
%% groups:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_iam_permissions.html#storage_lens_groups_permissions.
%%
%% For information about Storage Lens groups errors, see List of Amazon S3
%% Storage
%% Lens error codes:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#S3LensErrorCodeList.
-spec delete_storage_lens_group(aws_client:aws_client(), binary() | list(), delete_storage_lens_group_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_storage_lens_group(Client, Name, Input) ->
    delete_storage_lens_group(Client, Name, Input, []).

-spec delete_storage_lens_group(aws_client:aws_client(), binary() | list(), delete_storage_lens_group_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_storage_lens_group(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/v20180820/storagelensgroup/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the configuration parameters and status for a Batch
%% Operations job.
%%
%% For more
%% information, see S3 Batch Operations:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html in
%% the Amazon S3 User Guide.
%%
%% Permissions
%%
%% To use the `DescribeJob' operation, you must have permission to
%% perform the `s3:DescribeJob' action.
%%
%% Related actions include:
%%
%% CreateJob:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html
%%
%% ListJobs:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html
%%
%% UpdateJobPriority:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobPriority.html
%%
%% UpdateJobStatus:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html
-spec describe_job(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_job_result(), tuple()} |
    {error, any()} |
    {error, describe_job_errors(), tuple()}.
describe_job(Client, JobId, AccountId)
  when is_map(Client) ->
    describe_job(Client, JobId, AccountId, #{}, #{}).

-spec describe_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_job_result(), tuple()} |
    {error, any()} |
    {error, describe_job_errors(), tuple()}.
describe_job(Client, JobId, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_job(Client, JobId, AccountId, QueryMap, HeadersMap, []).

-spec describe_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_job_result(), tuple()} |
    {error, any()} |
    {error, describe_job_errors(), tuple()}.
describe_job(Client, JobId, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Retrieves the status of an asynchronous request to manage a Multi-Region
%% Access Point. For more information
%% about managing Multi-Region Access Points and how asynchronous requests
%% work, see Using Multi-Region Access Points:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/MrapOperations.html
%% in the Amazon S3 User Guide.
%%
%% The following actions are related to `GetMultiRegionAccessPoint':
%%
%% CreateMultiRegionAccessPoint:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html
%%
%% DeleteMultiRegionAccessPoint:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html
%%
%% GetMultiRegionAccessPoint:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPoint.html
%%
%% ListMultiRegionAccessPoints:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListMultiRegionAccessPoints.html
-spec describe_multi_region_access_point_operation(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_multi_region_access_point_operation_result(), tuple()} |
    {error, any()}.
describe_multi_region_access_point_operation(Client, RequestTokenARN, AccountId)
  when is_map(Client) ->
    describe_multi_region_access_point_operation(Client, RequestTokenARN, AccountId, #{}, #{}).

-spec describe_multi_region_access_point_operation(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_multi_region_access_point_operation_result(), tuple()} |
    {error, any()}.
describe_multi_region_access_point_operation(Client, RequestTokenARN, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_multi_region_access_point_operation(Client, RequestTokenARN, AccountId, QueryMap, HeadersMap, []).

-spec describe_multi_region_access_point_operation(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_multi_region_access_point_operation_result(), tuple()} |
    {error, any()}.
describe_multi_region_access_point_operation(Client, RequestTokenARN, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/async-requests/mrap/", aws_util:encode_multi_segment_uri(RequestTokenARN), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Dissociates the Amazon Web Services IAM Identity Center instance from
%% the S3 Access Grants instance.
%%
%% Permissions
%%
%% You must have the `s3:DissociateAccessGrantsIdentityCenter' permission
%% to use this operation.
%%
%% Additional Permissions
%%
%% You must have the `sso:DeleteApplication' permission to use this
%% operation.
-spec dissociate_access_grants_identity_center(aws_client:aws_client(), dissociate_access_grants_identity_center_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
dissociate_access_grants_identity_center(Client, Input) ->
    dissociate_access_grants_identity_center(Client, Input, []).

-spec dissociate_access_grants_identity_center(aws_client:aws_client(), dissociate_access_grants_identity_center_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
dissociate_access_grants_identity_center(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/v20180820/accessgrantsinstance/identitycenter"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Get the details of an access grant from your S3 Access Grants
%% instance.
%%
%% Permissions
%%
%% You must have the `s3:GetAccessGrant' permission to use this
%% operation.
-spec get_access_grant(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_access_grant_result(), tuple()} |
    {error, any()}.
get_access_grant(Client, AccessGrantId, AccountId)
  when is_map(Client) ->
    get_access_grant(Client, AccessGrantId, AccountId, #{}, #{}).

-spec get_access_grant(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_access_grant_result(), tuple()} |
    {error, any()}.
get_access_grant(Client, AccessGrantId, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_access_grant(Client, AccessGrantId, AccountId, QueryMap, HeadersMap, []).

-spec get_access_grant(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_access_grant_result(), tuple()} |
    {error, any()}.
get_access_grant(Client, AccessGrantId, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/accessgrantsinstance/grant/", aws_util:encode_uri(AccessGrantId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the S3 Access Grants instance for a Region in your account.
%%
%% Permissions
%%
%% You must have the `s3:GetAccessGrantsInstance' permission to use this
%% operation.
%%
%% `GetAccessGrantsInstance' is not supported for cross-account access.
%% You can only call the API from the account that owns the S3 Access Grants
%% instance.
-spec get_access_grants_instance(aws_client:aws_client(), binary() | list()) ->
    {ok, get_access_grants_instance_result(), tuple()} |
    {error, any()}.
get_access_grants_instance(Client, AccountId)
  when is_map(Client) ->
    get_access_grants_instance(Client, AccountId, #{}, #{}).

-spec get_access_grants_instance(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_access_grants_instance_result(), tuple()} |
    {error, any()}.
get_access_grants_instance(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_access_grants_instance(Client, AccountId, QueryMap, HeadersMap, []).

-spec get_access_grants_instance(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_access_grants_instance_result(), tuple()} |
    {error, any()}.
get_access_grants_instance(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/accessgrantsinstance"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve the S3 Access Grants instance that contains a particular
%% prefix.
%%
%% Permissions
%%
%% You must have the `s3:GetAccessGrantsInstanceForPrefix' permission for
%% the caller account to use this operation.
%%
%% Additional Permissions
%%
%% The prefix owner account must grant you the following permissions to their
%% S3 Access Grants instance: `s3:GetAccessGrantsInstanceForPrefix'.
-spec get_access_grants_instance_for_prefix(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_access_grants_instance_for_prefix_result(), tuple()} |
    {error, any()}.
get_access_grants_instance_for_prefix(Client, S3Prefix, AccountId)
  when is_map(Client) ->
    get_access_grants_instance_for_prefix(Client, S3Prefix, AccountId, #{}, #{}).

-spec get_access_grants_instance_for_prefix(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_access_grants_instance_for_prefix_result(), tuple()} |
    {error, any()}.
get_access_grants_instance_for_prefix(Client, S3Prefix, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_access_grants_instance_for_prefix(Client, S3Prefix, AccountId, QueryMap, HeadersMap, []).

-spec get_access_grants_instance_for_prefix(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_access_grants_instance_for_prefix_result(), tuple()} |
    {error, any()}.
get_access_grants_instance_for_prefix(Client, S3Prefix, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/accessgrantsinstance/prefix"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"s3prefix">>, S3Prefix}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the resource policy of the S3 Access Grants instance.
%%
%% Permissions
%%
%% You must have the `s3:GetAccessGrantsInstanceResourcePolicy'
%% permission to use this operation.
-spec get_access_grants_instance_resource_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_access_grants_instance_resource_policy_result(), tuple()} |
    {error, any()}.
get_access_grants_instance_resource_policy(Client, AccountId)
  when is_map(Client) ->
    get_access_grants_instance_resource_policy(Client, AccountId, #{}, #{}).

-spec get_access_grants_instance_resource_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_access_grants_instance_resource_policy_result(), tuple()} |
    {error, any()}.
get_access_grants_instance_resource_policy(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_access_grants_instance_resource_policy(Client, AccountId, QueryMap, HeadersMap, []).

-spec get_access_grants_instance_resource_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_access_grants_instance_resource_policy_result(), tuple()} |
    {error, any()}.
get_access_grants_instance_resource_policy(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/accessgrantsinstance/resourcepolicy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the details of a particular location registered in your S3
%% Access Grants instance.
%%
%% Permissions
%%
%% You must have the `s3:GetAccessGrantsLocation' permission to use this
%% operation.
-spec get_access_grants_location(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_access_grants_location_result(), tuple()} |
    {error, any()}.
get_access_grants_location(Client, AccessGrantsLocationId, AccountId)
  when is_map(Client) ->
    get_access_grants_location(Client, AccessGrantsLocationId, AccountId, #{}, #{}).

-spec get_access_grants_location(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_access_grants_location_result(), tuple()} |
    {error, any()}.
get_access_grants_location(Client, AccessGrantsLocationId, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_access_grants_location(Client, AccessGrantsLocationId, AccountId, QueryMap, HeadersMap, []).

-spec get_access_grants_location(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_access_grants_location_result(), tuple()} |
    {error, any()}.
get_access_grants_location(Client, AccessGrantsLocationId, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/accessgrantsinstance/location/", aws_util:encode_uri(AccessGrantsLocationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Returns configuration information about the specified access point.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the
%% request. In addition, you must use an S3 on Outposts endpoint hostname
%% prefix instead of `s3-control'. For an example of the request syntax
%% for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
%% prefix and the `x-amz-outpost-id' derived by using the access point
%% ARN, see the Examples:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html#API_control_GetAccessPoint_Examples
%% section.
%%
%% The following actions are related to `GetAccessPoint':
%%
%% CreateAccessPoint:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html
%%
%% DeleteAccessPoint:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html
%%
%% ListAccessPoints:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPoints.html
-spec get_access_point(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_access_point_result(), tuple()} |
    {error, any()}.
get_access_point(Client, Name, AccountId)
  when is_map(Client) ->
    get_access_point(Client, Name, AccountId, #{}, #{}).

-spec get_access_point(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_access_point_result(), tuple()} |
    {error, any()}.
get_access_point(Client, Name, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_access_point(Client, Name, AccountId, QueryMap, HeadersMap, []).

-spec get_access_point(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_access_point_result(), tuple()} |
    {error, any()}.
get_access_point(Client, Name, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/accesspoint/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Returns configuration for an Object Lambda Access Point.
%%
%% The following actions are related to
%% `GetAccessPointConfigurationForObjectLambda':
%%
%% PutAccessPointConfigurationForObjectLambda:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointConfigurationForObjectLambda.html
-spec get_access_point_configuration_for_object_lambda(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_access_point_configuration_for_object_lambda_result(), tuple()} |
    {error, any()}.
get_access_point_configuration_for_object_lambda(Client, Name, AccountId)
  when is_map(Client) ->
    get_access_point_configuration_for_object_lambda(Client, Name, AccountId, #{}, #{}).

-spec get_access_point_configuration_for_object_lambda(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_access_point_configuration_for_object_lambda_result(), tuple()} |
    {error, any()}.
get_access_point_configuration_for_object_lambda(Client, Name, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_access_point_configuration_for_object_lambda(Client, Name, AccountId, QueryMap, HeadersMap, []).

-spec get_access_point_configuration_for_object_lambda(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_access_point_configuration_for_object_lambda_result(), tuple()} |
    {error, any()}.
get_access_point_configuration_for_object_lambda(Client, Name, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/accesspointforobjectlambda/", aws_util:encode_uri(Name), "/configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Returns configuration information about the specified Object Lambda Access
%% Point
%%
%% The following actions are related to `GetAccessPointForObjectLambda':
%%
%% CreateAccessPointForObjectLambda:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPointForObjectLambda.html
%%
%% DeleteAccessPointForObjectLambda:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointForObjectLambda.html
%%
%% ListAccessPointsForObjectLambda:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPointsForObjectLambda.html
-spec get_access_point_for_object_lambda(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_access_point_for_object_lambda_result(), tuple()} |
    {error, any()}.
get_access_point_for_object_lambda(Client, Name, AccountId)
  when is_map(Client) ->
    get_access_point_for_object_lambda(Client, Name, AccountId, #{}, #{}).

-spec get_access_point_for_object_lambda(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_access_point_for_object_lambda_result(), tuple()} |
    {error, any()}.
get_access_point_for_object_lambda(Client, Name, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_access_point_for_object_lambda(Client, Name, AccountId, QueryMap, HeadersMap, []).

-spec get_access_point_for_object_lambda(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_access_point_for_object_lambda_result(), tuple()} |
    {error, any()}.
get_access_point_for_object_lambda(Client, Name, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/accesspointforobjectlambda/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Returns the access point policy associated with the specified access
%% point.
%%
%% The following actions are related to `GetAccessPointPolicy':
%%
%% PutAccessPointPolicy:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html
%%
%% DeleteAccessPointPolicy:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicy.html
-spec get_access_point_policy(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_access_point_policy_result(), tuple()} |
    {error, any()}.
get_access_point_policy(Client, Name, AccountId)
  when is_map(Client) ->
    get_access_point_policy(Client, Name, AccountId, #{}, #{}).

-spec get_access_point_policy(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_access_point_policy_result(), tuple()} |
    {error, any()}.
get_access_point_policy(Client, Name, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_access_point_policy(Client, Name, AccountId, QueryMap, HeadersMap, []).

-spec get_access_point_policy(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_access_point_policy_result(), tuple()} |
    {error, any()}.
get_access_point_policy(Client, Name, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/accesspoint/", aws_util:encode_uri(Name), "/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Returns the resource policy for an Object Lambda Access Point.
%%
%% The following actions are related to
%% `GetAccessPointPolicyForObjectLambda':
%%
%% DeleteAccessPointPolicyForObjectLambda:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicyForObjectLambda.html
%%
%% PutAccessPointPolicyForObjectLambda:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicyForObjectLambda.html
-spec get_access_point_policy_for_object_lambda(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_access_point_policy_for_object_lambda_result(), tuple()} |
    {error, any()}.
get_access_point_policy_for_object_lambda(Client, Name, AccountId)
  when is_map(Client) ->
    get_access_point_policy_for_object_lambda(Client, Name, AccountId, #{}, #{}).

-spec get_access_point_policy_for_object_lambda(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_access_point_policy_for_object_lambda_result(), tuple()} |
    {error, any()}.
get_access_point_policy_for_object_lambda(Client, Name, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_access_point_policy_for_object_lambda(Client, Name, AccountId, QueryMap, HeadersMap, []).

-spec get_access_point_policy_for_object_lambda(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_access_point_policy_for_object_lambda_result(), tuple()} |
    {error, any()}.
get_access_point_policy_for_object_lambda(Client, Name, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/accesspointforobjectlambda/", aws_util:encode_uri(Name), "/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Indicates whether the specified access point currently has a policy that
%% allows public access.
%% For more information about public access through access points, see
%% Managing Data Access with Amazon S3
%% access points:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html
%% in the Amazon S3 User Guide.
-spec get_access_point_policy_status(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_access_point_policy_status_result(), tuple()} |
    {error, any()}.
get_access_point_policy_status(Client, Name, AccountId)
  when is_map(Client) ->
    get_access_point_policy_status(Client, Name, AccountId, #{}, #{}).

-spec get_access_point_policy_status(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_access_point_policy_status_result(), tuple()} |
    {error, any()}.
get_access_point_policy_status(Client, Name, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_access_point_policy_status(Client, Name, AccountId, QueryMap, HeadersMap, []).

-spec get_access_point_policy_status(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_access_point_policy_status_result(), tuple()} |
    {error, any()}.
get_access_point_policy_status(Client, Name, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/accesspoint/", aws_util:encode_uri(Name), "/policyStatus"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Returns the status of the resource policy associated with an Object Lambda
%% Access Point.
-spec get_access_point_policy_status_for_object_lambda(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_access_point_policy_status_for_object_lambda_result(), tuple()} |
    {error, any()}.
get_access_point_policy_status_for_object_lambda(Client, Name, AccountId)
  when is_map(Client) ->
    get_access_point_policy_status_for_object_lambda(Client, Name, AccountId, #{}, #{}).

-spec get_access_point_policy_status_for_object_lambda(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_access_point_policy_status_for_object_lambda_result(), tuple()} |
    {error, any()}.
get_access_point_policy_status_for_object_lambda(Client, Name, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_access_point_policy_status_for_object_lambda(Client, Name, AccountId, QueryMap, HeadersMap, []).

-spec get_access_point_policy_status_for_object_lambda(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_access_point_policy_status_for_object_lambda_result(), tuple()} |
    {error, any()}.
get_access_point_policy_status_for_object_lambda(Client, Name, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/accesspointforobjectlambda/", aws_util:encode_uri(Name), "/policyStatus"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an Amazon S3 on Outposts bucket.
%%
%% For more information, see Using Amazon S3 on Outposts:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html in
%% the
%% Amazon S3 User Guide.
%%
%% If you are using an identity other than the root user of the Amazon Web
%% Services account that owns the
%% Outposts bucket, the calling identity must have the
%% `s3-outposts:GetBucket'
%% permissions on the specified Outposts bucket and belong to the Outposts
%% bucket owner's
%% account in order to use this action. Only users from Outposts bucket owner
%% account with
%% the right permissions can perform actions on an Outposts bucket.
%%
%% If you don't have `s3-outposts:GetBucket' permissions or
%% you're not using an
%% identity that belongs to the bucket owner's account, Amazon S3 returns
%% a
%% ```
%% 403 Access Denied''' error.
%%
%% The following actions are related to `GetBucket' for Amazon S3 on
%% Outposts:
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the
%% request. In addition, you must use an S3 on Outposts endpoint hostname
%% prefix instead of `s3-control'. For an example of the request syntax
%% for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
%% prefix and the `x-amz-outpost-id' derived by using the access point
%% ARN, see the Examples:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucket.html#API_control_GetBucket_Examples
%% section.
%%
%% PutObject:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html
%%
%% CreateBucket:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html
%%
%% DeleteBucket:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucket.html
-spec get_bucket(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_bucket_result(), tuple()} |
    {error, any()}.
get_bucket(Client, Bucket, AccountId)
  when is_map(Client) ->
    get_bucket(Client, Bucket, AccountId, #{}, #{}).

-spec get_bucket(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_bucket_result(), tuple()} |
    {error, any()}.
get_bucket(Client, Bucket, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket(Client, Bucket, AccountId, QueryMap, HeadersMap, []).

-spec get_bucket(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_bucket_result(), tuple()} |
    {error, any()}.
get_bucket(Client, Bucket, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/bucket/", aws_util:encode_uri(Bucket), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% This action gets an Amazon S3 on Outposts bucket's lifecycle
%% configuration.
%%
%% To get an S3
%% bucket's lifecycle configuration, see GetBucketLifecycleConfiguration:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycleConfiguration.html
%% in the Amazon S3 API Reference.
%%
%% Returns the lifecycle configuration information set on the Outposts
%% bucket. For more
%% information, see Using Amazon S3 on Outposts:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html
%% and for
%% information about lifecycle configuration, see Object Lifecycle
%% Management:
%% https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html
%% in Amazon S3 User Guide.
%%
%% To use this action, you must have permission to perform the
%% `s3-outposts:GetLifecycleConfiguration' action. The Outposts bucket
%% owner
%% has this permission, by default. The bucket owner can grant this
%% permission to others. For
%% more information about permissions, see Permissions Related to Bucket
%% Subresource Operations:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources
%% and Managing
%% Access Permissions to Your Amazon S3 Resources:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the
%% request. In addition, you must use an S3 on Outposts endpoint hostname
%% prefix instead of `s3-control'. For an example of the request syntax
%% for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
%% prefix and the `x-amz-outpost-id' derived by using the access point
%% ARN, see the Examples:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html#API_control_GetBucketLifecycleConfiguration_Examples
%% section.
%%
%% `GetBucketLifecycleConfiguration' has the following special error:
%%
%% Error code: `NoSuchLifecycleConfiguration'
%%
%% Description: The lifecycle configuration does not exist.
%%
%% HTTP Status Code: 404 Not Found
%%
%% SOAP Fault Code Prefix: Client
%%
%% The following actions are related to
%% `GetBucketLifecycleConfiguration':
%%
%% PutBucketLifecycleConfiguration:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html
%%
%% DeleteBucketLifecycleConfiguration:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketLifecycleConfiguration.html
-spec get_bucket_lifecycle_configuration(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_bucket_lifecycle_configuration_result(), tuple()} |
    {error, any()}.
get_bucket_lifecycle_configuration(Client, Bucket, AccountId)
  when is_map(Client) ->
    get_bucket_lifecycle_configuration(Client, Bucket, AccountId, #{}, #{}).

-spec get_bucket_lifecycle_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_bucket_lifecycle_configuration_result(), tuple()} |
    {error, any()}.
get_bucket_lifecycle_configuration(Client, Bucket, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket_lifecycle_configuration(Client, Bucket, AccountId, QueryMap, HeadersMap, []).

-spec get_bucket_lifecycle_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_bucket_lifecycle_configuration_result(), tuple()} |
    {error, any()}.
get_bucket_lifecycle_configuration(Client, Bucket, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/bucket/", aws_util:encode_uri(Bucket), "/lifecycleconfiguration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% This action gets a bucket policy for an Amazon S3 on Outposts bucket.
%%
%% To get a policy for
%% an S3 bucket, see GetBucketPolicy:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketPolicy.html
%% in the
%% Amazon S3 API Reference.
%%
%% Returns the policy of a specified Outposts bucket. For more information,
%% see Using
%% Amazon S3 on Outposts:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html in
%% the Amazon S3 User Guide.
%%
%% If you are using an identity other than the root user of the Amazon Web
%% Services account that owns the
%% bucket, the calling identity must have the `GetBucketPolicy'
%% permissions on the
%% specified bucket and belong to the bucket owner's account in order to
%% use this
%% action.
%%
%% Only users from Outposts bucket owner account with the right permissions
%% can perform
%% actions on an Outposts bucket. If you don't have
%% `s3-outposts:GetBucketPolicy'
%% permissions or you're not using an identity that belongs to the bucket
%% owner's account,
%% Amazon S3 returns a `403 Access Denied' error.
%%
%% As a security precaution, the root user of the Amazon Web Services account
%% that owns a bucket can
%% always use this action, even if the policy explicitly denies the root user
%% the ability
%% to perform this action.
%%
%% For more information about bucket policies, see Using Bucket Policies and
%% User
%% Policies:
%% https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the
%% request. In addition, you must use an S3 on Outposts endpoint hostname
%% prefix instead of `s3-control'. For an example of the request syntax
%% for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
%% prefix and the `x-amz-outpost-id' derived by using the access point
%% ARN, see the Examples:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketPolicy.html#API_control_GetBucketPolicy_Examples
%% section.
%%
%% The following actions are related to `GetBucketPolicy':
%%
%% GetObject:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html
%%
%% PutBucketPolicy:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketPolicy.html
%%
%% DeleteBucketPolicy:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketPolicy.html
-spec get_bucket_policy(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_bucket_policy_result(), tuple()} |
    {error, any()}.
get_bucket_policy(Client, Bucket, AccountId)
  when is_map(Client) ->
    get_bucket_policy(Client, Bucket, AccountId, #{}, #{}).

-spec get_bucket_policy(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_bucket_policy_result(), tuple()} |
    {error, any()}.
get_bucket_policy(Client, Bucket, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket_policy(Client, Bucket, AccountId, QueryMap, HeadersMap, []).

-spec get_bucket_policy(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_bucket_policy_result(), tuple()} |
    {error, any()}.
get_bucket_policy(Client, Bucket, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/bucket/", aws_util:encode_uri(Bucket), "/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% This operation gets an Amazon S3 on Outposts bucket's replication
%% configuration.
%%
%% To get an
%% S3 bucket's replication configuration, see GetBucketReplication:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketReplication.html
%% in the Amazon S3 API Reference.
%%
%% Returns the replication configuration of an S3 on Outposts bucket. For
%% more information
%% about S3 on Outposts, see Using Amazon S3 on Outposts:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html in
%% the
%% Amazon S3 User Guide. For information about S3 replication on Outposts
%% configuration, see Replicating objects for
%% S3 on Outposts:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsReplication.html
%% in the Amazon S3 User Guide.
%%
%% It can take a while to propagate `PUT' or `DELETE' requests for
%% a replication configuration to all S3 on Outposts systems. Therefore, the
%% replication
%% configuration that's returned by a `GET' request soon after a
%% `PUT' or `DELETE' request might return a more recent result
%% than what's on the Outpost. If an Outpost is offline, the delay in
%% updating the
%% replication configuration on that Outpost can be significant.
%%
%% This action requires permissions for the
%% `s3-outposts:GetReplicationConfiguration' action. The Outposts bucket
%% owner
%% has this permission by default and can grant it to others. For more
%% information about
%% permissions, see Setting up IAM with
%% S3 on Outposts:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsIAM.html
%% and Managing access to
%% S3 on Outposts bucket:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsBucketPolicy.html
%% in the Amazon S3 User Guide.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the
%% request. In addition, you must use an S3 on Outposts endpoint hostname
%% prefix instead of `s3-control'. For an example of the request syntax
%% for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
%% prefix and the `x-amz-outpost-id' derived by using the access point
%% ARN, see the Examples:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketReplication.html#API_control_GetBucketReplication_Examples
%% section.
%%
%% If you include the `Filter' element in a replication configuration,
%% you must
%% also include the `DeleteMarkerReplication', `Status', and
%% `Priority' elements. The response also returns those elements.
%%
%% For information about S3 on Outposts replication failure reasons, see
%% Replication failure reasons:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/outposts-replication-eventbridge.html#outposts-replication-failure-codes
%% in the Amazon S3 User Guide.
%%
%% The following operations are related to `GetBucketReplication':
%%
%% PutBucketReplication:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketReplication.html
%%
%% DeleteBucketReplication:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketReplication.html
-spec get_bucket_replication(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_bucket_replication_result(), tuple()} |
    {error, any()}.
get_bucket_replication(Client, Bucket, AccountId)
  when is_map(Client) ->
    get_bucket_replication(Client, Bucket, AccountId, #{}, #{}).

-spec get_bucket_replication(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_bucket_replication_result(), tuple()} |
    {error, any()}.
get_bucket_replication(Client, Bucket, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket_replication(Client, Bucket, AccountId, QueryMap, HeadersMap, []).

-spec get_bucket_replication(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_bucket_replication_result(), tuple()} |
    {error, any()}.
get_bucket_replication(Client, Bucket, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/bucket/", aws_util:encode_uri(Bucket), "/replication"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% This action gets an Amazon S3 on Outposts bucket's tags.
%%
%% To get an S3 bucket tags, see
%% GetBucketTagging:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketTagging.html
%% in the Amazon S3 API Reference.
%%
%% Returns the tag set associated with the Outposts bucket. For more
%% information, see
%% Using
%% Amazon S3 on Outposts:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html in
%% the Amazon S3 User Guide.
%%
%% To use this action, you must have permission to perform the
%% `GetBucketTagging' action. By default, the bucket owner has this
%% permission
%% and can grant this permission to others.
%%
%% `GetBucketTagging' has the following special error:
%%
%% Error code: `NoSuchTagSetError'
%%
%% Description: There is no tag set associated with the bucket.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the
%% request. In addition, you must use an S3 on Outposts endpoint hostname
%% prefix instead of `s3-control'. For an example of the request syntax
%% for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
%% prefix and the `x-amz-outpost-id' derived by using the access point
%% ARN, see the Examples:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketTagging.html#API_control_GetBucketTagging_Examples
%% section.
%%
%% The following actions are related to `GetBucketTagging':
%%
%% PutBucketTagging:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketTagging.html
%%
%% DeleteBucketTagging:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketTagging.html
-spec get_bucket_tagging(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_bucket_tagging_result(), tuple()} |
    {error, any()}.
get_bucket_tagging(Client, Bucket, AccountId)
  when is_map(Client) ->
    get_bucket_tagging(Client, Bucket, AccountId, #{}, #{}).

-spec get_bucket_tagging(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_bucket_tagging_result(), tuple()} |
    {error, any()}.
get_bucket_tagging(Client, Bucket, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket_tagging(Client, Bucket, AccountId, QueryMap, HeadersMap, []).

-spec get_bucket_tagging(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_bucket_tagging_result(), tuple()} |
    {error, any()}.
get_bucket_tagging(Client, Bucket, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/bucket/", aws_util:encode_uri(Bucket), "/tagging"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% This operation returns the versioning state
%% for
%% S3 on Outposts
%% buckets
%% only.
%%
%% To return the versioning state for an S3 bucket, see GetBucketVersioning:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketVersioning.html
%% in the Amazon S3 API Reference.
%%
%% Returns the versioning state for an S3 on Outposts bucket. With
%% S3
%% Versioning,
%% you can save multiple distinct copies of your
%% objects
%% and recover from unintended user actions and application failures.
%%
%% If you've never set versioning on your bucket, it has no versioning
%% state. In that case,
%% the `GetBucketVersioning' request does not return a versioning state
%% value.
%%
%% For more information about versioning, see Versioning:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/Versioning.html in
%% the Amazon S3
%% User Guide.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the
%% request. In addition, you must use an S3 on Outposts endpoint hostname
%% prefix instead of `s3-control'. For an example of the request syntax
%% for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
%% prefix and the `x-amz-outpost-id' derived by using the access point
%% ARN, see the Examples:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketVersioning.html#API_control_GetBucketVersioning_Examples
%% section.
%%
%% The following operations are related to `GetBucketVersioning' for
%% S3 on Outposts.
%%
%% PutBucketVersioning:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketVersioning.html
%%
%% PutBucketLifecycleConfiguration:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html
%%
%% GetBucketLifecycleConfiguration:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html
-spec get_bucket_versioning(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_bucket_versioning_result(), tuple()} |
    {error, any()}.
get_bucket_versioning(Client, Bucket, AccountId)
  when is_map(Client) ->
    get_bucket_versioning(Client, Bucket, AccountId, #{}, #{}).

-spec get_bucket_versioning(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_bucket_versioning_result(), tuple()} |
    {error, any()}.
get_bucket_versioning(Client, Bucket, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket_versioning(Client, Bucket, AccountId, QueryMap, HeadersMap, []).

-spec get_bucket_versioning(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_bucket_versioning_result(), tuple()} |
    {error, any()}.
get_bucket_versioning(Client, Bucket, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/bucket/", aws_util:encode_uri(Bucket), "/versioning"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a temporary access credential from S3 Access Grants to the
%% grantee or client application.
%%
%% The temporary credential:
%% https://docs.aws.amazon.com/STS/latest/APIReference/API_Credentials.html
%% is an Amazon Web Services STS token that grants them access to the S3
%% data.
%%
%% Permissions
%%
%% You must have the `s3:GetDataAccess' permission to use this operation.
%%
%% Additional Permissions
%%
%% The IAM role that S3 Access Grants assumes must have the following
%% permissions specified in the trust policy when registering the location:
%% `sts:AssumeRole', for directory users or groups `sts:SetContext',
%% and for IAM users or roles `sts:SetSourceIdentity'.
-spec get_data_access(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_data_access_result(), tuple()} |
    {error, any()}.
get_data_access(Client, Permission, Target, AccountId)
  when is_map(Client) ->
    get_data_access(Client, Permission, Target, AccountId, #{}, #{}).

-spec get_data_access(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_data_access_result(), tuple()} |
    {error, any()}.
get_data_access(Client, Permission, Target, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_access(Client, Permission, Target, AccountId, QueryMap, HeadersMap, []).

-spec get_data_access(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_data_access_result(), tuple()} |
    {error, any()}.
get_data_access(Client, Permission, Target, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/accessgrantsinstance/dataaccess"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"durationSeconds">>, maps:get(<<"durationSeconds">>, QueryMap, undefined)},
        {<<"permission">>, Permission},
        {<<"privilege">>, maps:get(<<"privilege">>, QueryMap, undefined)},
        {<<"target">>, Target},
        {<<"targetType">>, maps:get(<<"targetType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the tags on an S3 Batch Operations job.
%%
%% Permissions
%%
%% To use the
%% `GetJobTagging' operation, you must have permission to
%% perform the `s3:GetJobTagging' action. For more information, see
%% Controlling
%% access and labeling jobs using tags:
%% https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags
%% in the
%% Amazon S3 User Guide.
%%
%% Related actions include:
%%
%% CreateJob:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html
%%
%% PutJobTagging:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutJobTagging.html
%%
%% DeleteJobTagging:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteJobTagging.html
-spec get_job_tagging(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_job_tagging_result(), tuple()} |
    {error, any()} |
    {error, get_job_tagging_errors(), tuple()}.
get_job_tagging(Client, JobId, AccountId)
  when is_map(Client) ->
    get_job_tagging(Client, JobId, AccountId, #{}, #{}).

-spec get_job_tagging(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_job_tagging_result(), tuple()} |
    {error, any()} |
    {error, get_job_tagging_errors(), tuple()}.
get_job_tagging(Client, JobId, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_job_tagging(Client, JobId, AccountId, QueryMap, HeadersMap, []).

-spec get_job_tagging(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_job_tagging_result(), tuple()} |
    {error, any()} |
    {error, get_job_tagging_errors(), tuple()}.
get_job_tagging(Client, JobId, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/jobs/", aws_util:encode_uri(JobId), "/tagging"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Returns configuration information about the specified Multi-Region Access
%% Point.
%%
%% This action will always be routed to the US West (Oregon) Region. For more
%% information
%% about the restrictions around working with Multi-Region Access Points, see
%% Multi-Region Access Point
%% restrictions and limitations:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/MultiRegionAccessPointRestrictions.html
%% in the Amazon S3 User Guide.
%%
%% The following actions are related to `GetMultiRegionAccessPoint':
%%
%% CreateMultiRegionAccessPoint:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html
%%
%% DeleteMultiRegionAccessPoint:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html
%%
%% DescribeMultiRegionAccessPointOperation:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html
%%
%% ListMultiRegionAccessPoints:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListMultiRegionAccessPoints.html
-spec get_multi_region_access_point(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_multi_region_access_point_result(), tuple()} |
    {error, any()}.
get_multi_region_access_point(Client, Name, AccountId)
  when is_map(Client) ->
    get_multi_region_access_point(Client, Name, AccountId, #{}, #{}).

-spec get_multi_region_access_point(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_multi_region_access_point_result(), tuple()} |
    {error, any()}.
get_multi_region_access_point(Client, Name, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_multi_region_access_point(Client, Name, AccountId, QueryMap, HeadersMap, []).

-spec get_multi_region_access_point(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_multi_region_access_point_result(), tuple()} |
    {error, any()}.
get_multi_region_access_point(Client, Name, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/mrap/instances/", aws_util:encode_multi_segment_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Returns the access control policy of the specified Multi-Region Access
%% Point.
%%
%% This action will always be routed to the US West (Oregon) Region. For more
%% information
%% about the restrictions around working with Multi-Region Access Points, see
%% Multi-Region Access Point
%% restrictions and limitations:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/MultiRegionAccessPointRestrictions.html
%% in the Amazon S3 User Guide.
%%
%% The following actions are related to
%% `GetMultiRegionAccessPointPolicy':
%%
%% GetMultiRegionAccessPointPolicyStatus:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPointPolicyStatus.html
%%
%% PutMultiRegionAccessPointPolicy:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutMultiRegionAccessPointPolicy.html
-spec get_multi_region_access_point_policy(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_multi_region_access_point_policy_result(), tuple()} |
    {error, any()}.
get_multi_region_access_point_policy(Client, Name, AccountId)
  when is_map(Client) ->
    get_multi_region_access_point_policy(Client, Name, AccountId, #{}, #{}).

-spec get_multi_region_access_point_policy(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_multi_region_access_point_policy_result(), tuple()} |
    {error, any()}.
get_multi_region_access_point_policy(Client, Name, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_multi_region_access_point_policy(Client, Name, AccountId, QueryMap, HeadersMap, []).

-spec get_multi_region_access_point_policy(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_multi_region_access_point_policy_result(), tuple()} |
    {error, any()}.
get_multi_region_access_point_policy(Client, Name, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/mrap/instances/", aws_util:encode_multi_segment_uri(Name), "/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Indicates whether the specified Multi-Region Access Point has an access
%% control policy that allows public
%% access.
%%
%% This action will always be routed to the US West (Oregon) Region. For more
%% information
%% about the restrictions around working with Multi-Region Access Points, see
%% Multi-Region Access Point
%% restrictions and limitations:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/MultiRegionAccessPointRestrictions.html
%% in the Amazon S3 User Guide.
%%
%% The following actions are related to
%% `GetMultiRegionAccessPointPolicyStatus':
%%
%% GetMultiRegionAccessPointPolicy:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPointPolicy.html
%%
%% PutMultiRegionAccessPointPolicy:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutMultiRegionAccessPointPolicy.html
-spec get_multi_region_access_point_policy_status(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_multi_region_access_point_policy_status_result(), tuple()} |
    {error, any()}.
get_multi_region_access_point_policy_status(Client, Name, AccountId)
  when is_map(Client) ->
    get_multi_region_access_point_policy_status(Client, Name, AccountId, #{}, #{}).

-spec get_multi_region_access_point_policy_status(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_multi_region_access_point_policy_status_result(), tuple()} |
    {error, any()}.
get_multi_region_access_point_policy_status(Client, Name, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_multi_region_access_point_policy_status(Client, Name, AccountId, QueryMap, HeadersMap, []).

-spec get_multi_region_access_point_policy_status(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_multi_region_access_point_policy_status_result(), tuple()} |
    {error, any()}.
get_multi_region_access_point_policy_status(Client, Name, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/mrap/instances/", aws_util:encode_multi_segment_uri(Name), "/policystatus"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Returns the routing configuration for a Multi-Region Access Point,
%% indicating which Regions are active or
%% passive.
%%
%% To obtain routing control changes and failover requests, use the Amazon S3
%% failover control
%% infrastructure endpoints in these five Amazon Web Services Regions:
%%
%% `us-east-1'
%%
%% `us-west-2'
%%
%% `ap-southeast-2'
%%
%% `ap-northeast-1'
%%
%% `eu-west-1'
-spec get_multi_region_access_point_routes(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_multi_region_access_point_routes_result(), tuple()} |
    {error, any()}.
get_multi_region_access_point_routes(Client, Mrap, AccountId)
  when is_map(Client) ->
    get_multi_region_access_point_routes(Client, Mrap, AccountId, #{}, #{}).

-spec get_multi_region_access_point_routes(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_multi_region_access_point_routes_result(), tuple()} |
    {error, any()}.
get_multi_region_access_point_routes(Client, Mrap, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_multi_region_access_point_routes(Client, Mrap, AccountId, QueryMap, HeadersMap, []).

-spec get_multi_region_access_point_routes(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_multi_region_access_point_routes_result(), tuple()} |
    {error, any()}.
get_multi_region_access_point_routes(Client, Mrap, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/mrap/instances/", aws_util:encode_multi_segment_uri(Mrap), "/routes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Retrieves the `PublicAccessBlock' configuration for an Amazon Web
%% Services account. For
%% more information, see Using Amazon S3 block
%% public access:
%% https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html.
%%
%% Related actions include:
%%
%% DeletePublicAccessBlock:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeletePublicAccessBlock.html
%%
%% PutPublicAccessBlock:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutPublicAccessBlock.html
-spec get_public_access_block(aws_client:aws_client(), binary() | list()) ->
    {ok, get_public_access_block_output(), tuple()} |
    {error, any()} |
    {error, get_public_access_block_errors(), tuple()}.
get_public_access_block(Client, AccountId)
  when is_map(Client) ->
    get_public_access_block(Client, AccountId, #{}, #{}).

-spec get_public_access_block(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_public_access_block_output(), tuple()} |
    {error, any()} |
    {error, get_public_access_block_errors(), tuple()}.
get_public_access_block(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_public_access_block(Client, AccountId, QueryMap, HeadersMap, []).

-spec get_public_access_block(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_public_access_block_output(), tuple()} |
    {error, any()} |
    {error, get_public_access_block_errors(), tuple()}.
get_public_access_block(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/configuration/publicAccessBlock"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Gets the Amazon S3 Storage Lens configuration. For more information, see
%% Assessing your storage
%% activity and usage with Amazon S3 Storage Lens :
%% https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html in the
%% Amazon S3 User Guide. For a complete list of S3 Storage Lens metrics, see
%% S3 Storage Lens metrics glossary:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_metrics_glossary.html
%% in the Amazon S3 User Guide.
%%
%% To use this action, you must have permission to perform the
%% `s3:GetStorageLensConfiguration' action. For more information, see
%% Setting permissions to use Amazon S3 Storage Lens:
%% https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html
%% in the
%% Amazon S3 User Guide.
-spec get_storage_lens_configuration(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_storage_lens_configuration_result(), tuple()} |
    {error, any()}.
get_storage_lens_configuration(Client, ConfigId, AccountId)
  when is_map(Client) ->
    get_storage_lens_configuration(Client, ConfigId, AccountId, #{}, #{}).

-spec get_storage_lens_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_storage_lens_configuration_result(), tuple()} |
    {error, any()}.
get_storage_lens_configuration(Client, ConfigId, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_storage_lens_configuration(Client, ConfigId, AccountId, QueryMap, HeadersMap, []).

-spec get_storage_lens_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_storage_lens_configuration_result(), tuple()} |
    {error, any()}.
get_storage_lens_configuration(Client, ConfigId, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/storagelens/", aws_util:encode_uri(ConfigId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Gets the tags of Amazon S3 Storage Lens configuration. For more
%% information about S3 Storage Lens, see
%% Assessing your
%% storage activity and usage with Amazon S3 Storage Lens :
%% https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html in the
%% Amazon S3 User Guide.
%%
%% To use this action, you must have permission to perform the
%% `s3:GetStorageLensConfigurationTagging' action. For more information,
%% see
%% Setting permissions to
%% use Amazon S3 Storage Lens:
%% https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html
%% in the Amazon S3 User Guide.
-spec get_storage_lens_configuration_tagging(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_storage_lens_configuration_tagging_result(), tuple()} |
    {error, any()}.
get_storage_lens_configuration_tagging(Client, ConfigId, AccountId)
  when is_map(Client) ->
    get_storage_lens_configuration_tagging(Client, ConfigId, AccountId, #{}, #{}).

-spec get_storage_lens_configuration_tagging(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_storage_lens_configuration_tagging_result(), tuple()} |
    {error, any()}.
get_storage_lens_configuration_tagging(Client, ConfigId, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_storage_lens_configuration_tagging(Client, ConfigId, AccountId, QueryMap, HeadersMap, []).

-spec get_storage_lens_configuration_tagging(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_storage_lens_configuration_tagging_result(), tuple()} |
    {error, any()}.
get_storage_lens_configuration_tagging(Client, ConfigId, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/storagelens/", aws_util:encode_uri(ConfigId), "/tagging"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Retrieves the Storage Lens group configuration details.
%%
%% To use this operation, you must have the permission to perform the
%% `s3:GetStorageLensGroup' action. For more information about the
%% required Storage Lens
%% Groups permissions, see Setting account permissions to use S3 Storage Lens
%% groups:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_iam_permissions.html#storage_lens_groups_permissions.
%%
%% For information about Storage Lens groups errors, see List of Amazon S3
%% Storage
%% Lens error codes:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#S3LensErrorCodeList.
-spec get_storage_lens_group(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_storage_lens_group_result(), tuple()} |
    {error, any()}.
get_storage_lens_group(Client, Name, AccountId)
  when is_map(Client) ->
    get_storage_lens_group(Client, Name, AccountId, #{}, #{}).

-spec get_storage_lens_group(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_storage_lens_group_result(), tuple()} |
    {error, any()}.
get_storage_lens_group(Client, Name, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_storage_lens_group(Client, Name, AccountId, QueryMap, HeadersMap, []).

-spec get_storage_lens_group(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_storage_lens_group_result(), tuple()} |
    {error, any()}.
get_storage_lens_group(Client, Name, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/storagelensgroup/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the list of access grants in your S3 Access Grants instance.
%%
%% Permissions
%%
%% You must have the `s3:ListAccessGrants' permission to use this
%% operation.
-spec list_access_grants(aws_client:aws_client(), binary() | list()) ->
    {ok, list_access_grants_result(), tuple()} |
    {error, any()}.
list_access_grants(Client, AccountId)
  when is_map(Client) ->
    list_access_grants(Client, AccountId, #{}, #{}).

-spec list_access_grants(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_access_grants_result(), tuple()} |
    {error, any()}.
list_access_grants(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_access_grants(Client, AccountId, QueryMap, HeadersMap, []).

-spec list_access_grants(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_access_grants_result(), tuple()} |
    {error, any()}.
list_access_grants(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/accessgrantsinstance/grants"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"application_arn">>, maps:get(<<"application_arn">>, QueryMap, undefined)},
        {<<"grantscope">>, maps:get(<<"grantscope">>, QueryMap, undefined)},
        {<<"granteeidentifier">>, maps:get(<<"granteeidentifier">>, QueryMap, undefined)},
        {<<"granteetype">>, maps:get(<<"granteetype">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"permission">>, maps:get(<<"permission">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of S3 Access Grants instances.
%%
%% An S3 Access Grants instance serves as a logical grouping for your
%% individual access grants. You can only have one S3 Access Grants instance
%% per Region per account.
%%
%% Permissions
%%
%% You must have the `s3:ListAccessGrantsInstances' permission to use
%% this operation.
-spec list_access_grants_instances(aws_client:aws_client(), binary() | list()) ->
    {ok, list_access_grants_instances_result(), tuple()} |
    {error, any()}.
list_access_grants_instances(Client, AccountId)
  when is_map(Client) ->
    list_access_grants_instances(Client, AccountId, #{}, #{}).

-spec list_access_grants_instances(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_access_grants_instances_result(), tuple()} |
    {error, any()}.
list_access_grants_instances(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_access_grants_instances(Client, AccountId, QueryMap, HeadersMap, []).

-spec list_access_grants_instances(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_access_grants_instances_result(), tuple()} |
    {error, any()}.
list_access_grants_instances(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/accessgrantsinstances"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the locations registered in your S3 Access Grants
%% instance.
%%
%% Permissions
%%
%% You must have the `s3:ListAccessGrantsLocations' permission to use
%% this operation.
-spec list_access_grants_locations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_access_grants_locations_result(), tuple()} |
    {error, any()}.
list_access_grants_locations(Client, AccountId)
  when is_map(Client) ->
    list_access_grants_locations(Client, AccountId, #{}, #{}).

-spec list_access_grants_locations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_access_grants_locations_result(), tuple()} |
    {error, any()}.
list_access_grants_locations(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_access_grants_locations(Client, AccountId, QueryMap, HeadersMap, []).

-spec list_access_grants_locations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_access_grants_locations_result(), tuple()} |
    {error, any()}.
list_access_grants_locations(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/accessgrantsinstance/locations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"locationscope">>, maps:get(<<"locationscope">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Returns a list of the access points
%% that are
%% owned by the current account
%% that's
%% associated with the specified bucket. You can retrieve up to 1000 access
%% points
%% per call. If the specified bucket has more than 1,000 access points (or
%% the number specified in
%% `maxResults', whichever is less), the response will include a
%% continuation
%% token that you can use to list the additional access points.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the
%% request. In addition, you must use an S3 on Outposts endpoint hostname
%% prefix instead of `s3-control'. For an example of the request syntax
%% for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
%% prefix and the `x-amz-outpost-id' derived by using the access point
%% ARN, see the Examples:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html#API_control_GetAccessPoint_Examples
%% section.
%%
%% The following actions are related to `ListAccessPoints':
%%
%% CreateAccessPoint:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html
%%
%% DeleteAccessPoint:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html
%%
%% GetAccessPoint:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html
-spec list_access_points(aws_client:aws_client(), binary() | list()) ->
    {ok, list_access_points_result(), tuple()} |
    {error, any()}.
list_access_points(Client, AccountId)
  when is_map(Client) ->
    list_access_points(Client, AccountId, #{}, #{}).

-spec list_access_points(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_access_points_result(), tuple()} |
    {error, any()}.
list_access_points(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_access_points(Client, AccountId, QueryMap, HeadersMap, []).

-spec list_access_points(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_access_points_result(), tuple()} |
    {error, any()}.
list_access_points(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/accesspoint"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"bucket">>, maps:get(<<"bucket">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Returns some or all (up to 1,000) access points associated with the Object
%% Lambda Access Point per call. If there
%% are more access points than what can be returned in one call, the response
%% will include a
%% continuation token that you can use to list the additional access points.
%%
%% The following actions are related to
%% `ListAccessPointsForObjectLambda':
%%
%% CreateAccessPointForObjectLambda:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPointForObjectLambda.html
%%
%% DeleteAccessPointForObjectLambda:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointForObjectLambda.html
%%
%% GetAccessPointForObjectLambda:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointForObjectLambda.html
-spec list_access_points_for_object_lambda(aws_client:aws_client(), binary() | list()) ->
    {ok, list_access_points_for_object_lambda_result(), tuple()} |
    {error, any()}.
list_access_points_for_object_lambda(Client, AccountId)
  when is_map(Client) ->
    list_access_points_for_object_lambda(Client, AccountId, #{}, #{}).

-spec list_access_points_for_object_lambda(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_access_points_for_object_lambda_result(), tuple()} |
    {error, any()}.
list_access_points_for_object_lambda(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_access_points_for_object_lambda(Client, AccountId, QueryMap, HeadersMap, []).

-spec list_access_points_for_object_lambda(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_access_points_for_object_lambda_result(), tuple()} |
    {error, any()}.
list_access_points_for_object_lambda(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/accesspointforobjectlambda"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Use this API to list the access grants that grant the caller access
%% to Amazon S3 data through S3 Access Grants.
%%
%% The caller (grantee) can be an Identity and Access Management (IAM)
%% identity or Amazon Web Services Identity Center corporate directory
%% identity. You must pass the Amazon Web Services account of the S3 data
%% owner (grantor) in the request. You can, optionally, narrow the results by
%% `GrantScope', using a fragment of the data's S3 path, and S3
%% Access Grants will return only the grants with a path that contains the
%% path fragment. You can also pass the `AllowedByApplication' filter in
%% the request, which returns only the grants authorized for applications,
%% whether the application is the caller's Identity Center application or
%% any other application (`ALL'). For more information, see List the
%% caller's access grants:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-grants-list-grants.html
%% in the Amazon S3 User Guide.
%%
%% Permissions
%%
%% You must have the `s3:ListCallerAccessGrants' permission to use this
%% operation.
-spec list_caller_access_grants(aws_client:aws_client(), binary() | list()) ->
    {ok, list_caller_access_grants_result(), tuple()} |
    {error, any()}.
list_caller_access_grants(Client, AccountId)
  when is_map(Client) ->
    list_caller_access_grants(Client, AccountId, #{}, #{}).

-spec list_caller_access_grants(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_caller_access_grants_result(), tuple()} |
    {error, any()}.
list_caller_access_grants(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_caller_access_grants(Client, AccountId, QueryMap, HeadersMap, []).

-spec list_caller_access_grants(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_caller_access_grants_result(), tuple()} |
    {error, any()}.
list_caller_access_grants(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/accessgrantsinstance/caller/grants"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"allowedByApplication">>, maps:get(<<"allowedByApplication">>, QueryMap, undefined)},
        {<<"grantscope">>, maps:get(<<"grantscope">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists current S3 Batch Operations jobs as well as the jobs that have
%% ended within the last 90
%% days for the Amazon Web Services account making the request.
%%
%% For more information, see S3 Batch Operations:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html in
%% the Amazon S3 User Guide.
%%
%% Permissions
%%
%% To use the
%% `ListJobs' operation, you must have permission to
%% perform the `s3:ListJobs' action.
%%
%% Related actions include:
%%
%% CreateJob:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html
%%
%% DescribeJob:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html
%%
%% UpdateJobPriority:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobPriority.html
%%
%% UpdateJobStatus:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html
-spec list_jobs(aws_client:aws_client(), binary() | list()) ->
    {ok, list_jobs_result(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client, AccountId)
  when is_map(Client) ->
    list_jobs(Client, AccountId, #{}, #{}).

-spec list_jobs(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_jobs_result(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_jobs(Client, AccountId, QueryMap, HeadersMap, []).

-spec list_jobs(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_jobs_result(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"jobStatuses">>, maps:get(<<"jobStatuses">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Returns a list of the Multi-Region Access Points currently associated with
%% the specified Amazon Web Services account.
%% Each call can return up to 100 Multi-Region Access Points, the maximum
%% number of Multi-Region Access Points that can be
%% associated with a single account.
%%
%% This action will always be routed to the US West (Oregon) Region. For more
%% information
%% about the restrictions around working with Multi-Region Access Points, see
%% Multi-Region Access Point
%% restrictions and limitations:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/MultiRegionAccessPointRestrictions.html
%% in the Amazon S3 User Guide.
%%
%% The following actions are related to `ListMultiRegionAccessPoint':
%%
%% CreateMultiRegionAccessPoint:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html
%%
%% DeleteMultiRegionAccessPoint:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html
%%
%% DescribeMultiRegionAccessPointOperation:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html
%%
%% GetMultiRegionAccessPoint:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPoint.html
-spec list_multi_region_access_points(aws_client:aws_client(), binary() | list()) ->
    {ok, list_multi_region_access_points_result(), tuple()} |
    {error, any()}.
list_multi_region_access_points(Client, AccountId)
  when is_map(Client) ->
    list_multi_region_access_points(Client, AccountId, #{}, #{}).

-spec list_multi_region_access_points(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_multi_region_access_points_result(), tuple()} |
    {error, any()}.
list_multi_region_access_points(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_multi_region_access_points(Client, AccountId, QueryMap, HeadersMap, []).

-spec list_multi_region_access_points(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_multi_region_access_points_result(), tuple()} |
    {error, any()}.
list_multi_region_access_points(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/mrap/instances"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Returns a list of all Outposts buckets in an Outpost that are owned by the
%% authenticated
%% sender of the request. For more information, see Using Amazon S3 on
%% Outposts:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html in
%% the
%% Amazon S3 User Guide.
%%
%% For an example of the request syntax for Amazon S3 on Outposts that uses
%% the S3 on Outposts
%% endpoint hostname prefix and `x-amz-outpost-id' in your request, see
%% the Examples:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListRegionalBuckets.html#API_control_ListRegionalBuckets_Examples
%% section.
-spec list_regional_buckets(aws_client:aws_client(), binary() | list()) ->
    {ok, list_regional_buckets_result(), tuple()} |
    {error, any()}.
list_regional_buckets(Client, AccountId)
  when is_map(Client) ->
    list_regional_buckets(Client, AccountId, #{}, #{}).

-spec list_regional_buckets(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_regional_buckets_result(), tuple()} |
    {error, any()}.
list_regional_buckets(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_regional_buckets(Client, AccountId, QueryMap, HeadersMap, []).

-spec list_regional_buckets(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_regional_buckets_result(), tuple()} |
    {error, any()}.
list_regional_buckets(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/bucket"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId},
        {<<"x-amz-outpost-id">>, maps:get(<<"x-amz-outpost-id">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Gets a list of Amazon S3 Storage Lens configurations. For more information
%% about S3 Storage Lens, see
%% Assessing your
%% storage activity and usage with Amazon S3 Storage Lens :
%% https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html in the
%% Amazon S3 User Guide.
%%
%% To use this action, you must have permission to perform the
%% `s3:ListStorageLensConfigurations' action. For more information, see
%% Setting permissions to
%% use Amazon S3 Storage Lens:
%% https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html
%% in the Amazon S3 User Guide.
-spec list_storage_lens_configurations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_storage_lens_configurations_result(), tuple()} |
    {error, any()}.
list_storage_lens_configurations(Client, AccountId)
  when is_map(Client) ->
    list_storage_lens_configurations(Client, AccountId, #{}, #{}).

-spec list_storage_lens_configurations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_storage_lens_configurations_result(), tuple()} |
    {error, any()}.
list_storage_lens_configurations(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_storage_lens_configurations(Client, AccountId, QueryMap, HeadersMap, []).

-spec list_storage_lens_configurations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_storage_lens_configurations_result(), tuple()} |
    {error, any()}.
list_storage_lens_configurations(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/storagelens"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Lists all the Storage Lens groups in the specified home Region.
%%
%% To use this operation, you must have the permission to perform the
%% `s3:ListStorageLensGroups' action. For more information about the
%% required Storage Lens
%% Groups permissions, see Setting account permissions to use S3 Storage Lens
%% groups:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_iam_permissions.html#storage_lens_groups_permissions.
%%
%% For information about Storage Lens groups errors, see List of Amazon S3
%% Storage
%% Lens error codes:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#S3LensErrorCodeList.
-spec list_storage_lens_groups(aws_client:aws_client(), binary() | list()) ->
    {ok, list_storage_lens_groups_result(), tuple()} |
    {error, any()}.
list_storage_lens_groups(Client, AccountId)
  when is_map(Client) ->
    list_storage_lens_groups(Client, AccountId, #{}, #{}).

-spec list_storage_lens_groups(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_storage_lens_groups_result(), tuple()} |
    {error, any()}.
list_storage_lens_groups(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_storage_lens_groups(Client, AccountId, QueryMap, HeadersMap, []).

-spec list_storage_lens_groups(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_storage_lens_groups_result(), tuple()} |
    {error, any()}.
list_storage_lens_groups(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/storagelensgroup"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation allows you to list all the Amazon Web Services
%% resource tags for a specified resource.
%%
%% Each tag is a label consisting of a user-defined key and value. Tags can
%% help you manage, identify, organize, search for, and filter resources.
%%
%% Permissions
%%
%% You must have the `s3:ListTagsForResource' permission to use this
%% operation.
%%
%% This operation is only supported for S3 Storage Lens groups:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-lens-groups.html
%% and for S3 Access Grants:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-grants-tagging.html.
%% The tagged resource can be an S3 Storage Lens group or S3 Access Grants
%% instance, registered location, or grant.
%%
%% For more information about the required Storage Lens
%% Groups permissions, see Setting account permissions to use S3 Storage Lens
%% groups:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_iam_permissions.html#storage_lens_groups_permissions.
%%
%% For information about S3 Tagging errors, see List of Amazon S3 Tagging
%% error codes:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#S3TaggingErrorCodeList.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_tags_for_resource_result(), tuple()} |
    {error, any()}.
list_tags_for_resource(Client, ResourceArn, AccountId)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, AccountId, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_result(), tuple()} |
    {error, any()}.
list_tags_for_resource(Client, ResourceArn, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, AccountId, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_result(), tuple()} |
    {error, any()}.
list_tags_for_resource(Client, ResourceArn, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/tags/", aws_util:encode_multi_segment_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Updates the resource policy of the S3 Access Grants instance.
%%
%% Permissions
%%
%% You must have the `s3:PutAccessGrantsInstanceResourcePolicy'
%% permission to use this operation.
-spec put_access_grants_instance_resource_policy(aws_client:aws_client(), put_access_grants_instance_resource_policy_request()) ->
    {ok, put_access_grants_instance_resource_policy_result(), tuple()} |
    {error, any()}.
put_access_grants_instance_resource_policy(Client, Input) ->
    put_access_grants_instance_resource_policy(Client, Input, []).

-spec put_access_grants_instance_resource_policy(aws_client:aws_client(), put_access_grants_instance_resource_policy_request(), proplists:proplist()) ->
    {ok, put_access_grants_instance_resource_policy_result(), tuple()} |
    {error, any()}.
put_access_grants_instance_resource_policy(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v20180820/accessgrantsinstance/resourcepolicy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Replaces configuration for an Object Lambda Access Point.
%%
%% The following actions are related to
%% `PutAccessPointConfigurationForObjectLambda':
%%
%% GetAccessPointConfigurationForObjectLambda:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointConfigurationForObjectLambda.html
-spec put_access_point_configuration_for_object_lambda(aws_client:aws_client(), binary() | list(), put_access_point_configuration_for_object_lambda_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
put_access_point_configuration_for_object_lambda(Client, Name, Input) ->
    put_access_point_configuration_for_object_lambda(Client, Name, Input, []).

-spec put_access_point_configuration_for_object_lambda(aws_client:aws_client(), binary() | list(), put_access_point_configuration_for_object_lambda_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
put_access_point_configuration_for_object_lambda(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/v20180820/accesspointforobjectlambda/", aws_util:encode_uri(Name), "/configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Associates an access policy with the specified access point. Each access
%% point can have only one policy,
%% so a request made to this API replaces any existing policy associated with
%% the specified
%% access point.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the
%% request. In addition, you must use an S3 on Outposts endpoint hostname
%% prefix instead of `s3-control'. For an example of the request syntax
%% for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
%% prefix and the `x-amz-outpost-id' derived by using the access point
%% ARN, see the Examples:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html#API_control_PutAccessPointPolicy_Examples
%% section.
%%
%% The following actions are related to `PutAccessPointPolicy':
%%
%% GetAccessPointPolicy:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointPolicy.html
%%
%% DeleteAccessPointPolicy:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicy.html
-spec put_access_point_policy(aws_client:aws_client(), binary() | list(), put_access_point_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
put_access_point_policy(Client, Name, Input) ->
    put_access_point_policy(Client, Name, Input, []).

-spec put_access_point_policy(aws_client:aws_client(), binary() | list(), put_access_point_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
put_access_point_policy(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/v20180820/accesspoint/", aws_util:encode_uri(Name), "/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Creates or replaces resource policy for an Object Lambda Access Point. For
%% an example policy, see Creating Object Lambda Access Points:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/olap-create.html#olap-create-cli
%% in the Amazon S3 User Guide.
%%
%% The following actions are related to
%% `PutAccessPointPolicyForObjectLambda':
%%
%% DeleteAccessPointPolicyForObjectLambda:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicyForObjectLambda.html
%%
%% GetAccessPointPolicyForObjectLambda:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointPolicyForObjectLambda.html
-spec put_access_point_policy_for_object_lambda(aws_client:aws_client(), binary() | list(), put_access_point_policy_for_object_lambda_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
put_access_point_policy_for_object_lambda(Client, Name, Input) ->
    put_access_point_policy_for_object_lambda(Client, Name, Input, []).

-spec put_access_point_policy_for_object_lambda(aws_client:aws_client(), binary() | list(), put_access_point_policy_for_object_lambda_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
put_access_point_policy_for_object_lambda(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/v20180820/accesspointforobjectlambda/", aws_util:encode_uri(Name), "/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% This action puts a lifecycle configuration to an Amazon S3 on Outposts
%% bucket.
%%
%% To put a
%% lifecycle configuration to an S3 bucket, see
%% PutBucketLifecycleConfiguration:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html
%% in the Amazon S3 API Reference.
%%
%% Creates a new lifecycle configuration for the S3 on Outposts bucket or
%% replaces an
%% existing lifecycle configuration. Outposts buckets only support lifecycle
%% configurations
%% that delete/expire objects after a certain period of time and abort
%% incomplete multipart
%% uploads.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the
%% request. In addition, you must use an S3 on Outposts endpoint hostname
%% prefix instead of `s3-control'. For an example of the request syntax
%% for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
%% prefix and the `x-amz-outpost-id' derived by using the access point
%% ARN, see the Examples:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html#API_control_PutBucketLifecycleConfiguration_Examples
%% section.
%%
%% The following actions are related to
%% `PutBucketLifecycleConfiguration':
%%
%% GetBucketLifecycleConfiguration:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html
%%
%% DeleteBucketLifecycleConfiguration:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketLifecycleConfiguration.html
-spec put_bucket_lifecycle_configuration(aws_client:aws_client(), binary() | list(), put_bucket_lifecycle_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
put_bucket_lifecycle_configuration(Client, Bucket, Input) ->
    put_bucket_lifecycle_configuration(Client, Bucket, Input, []).

-spec put_bucket_lifecycle_configuration(aws_client:aws_client(), binary() | list(), put_bucket_lifecycle_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
put_bucket_lifecycle_configuration(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/v20180820/bucket/", aws_util:encode_uri(Bucket), "/lifecycleconfiguration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% This action puts a bucket policy to an Amazon S3 on Outposts bucket.
%%
%% To put a policy on an
%% S3 bucket, see PutBucketPolicy:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketPolicy.html
%% in the
%% Amazon S3 API Reference.
%%
%% Applies an Amazon S3 bucket policy to an Outposts bucket. For more
%% information, see Using
%% Amazon S3 on Outposts:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html in
%% the Amazon S3 User Guide.
%%
%% If you are using an identity other than the root user of the Amazon Web
%% Services account that owns the
%% Outposts bucket, the calling identity must have the `PutBucketPolicy'
%% permissions on the specified Outposts bucket and belong to the bucket
%% owner's account in
%% order to use this action.
%%
%% If you don't have `PutBucketPolicy' permissions, Amazon S3 returns
%% a
%% ```
%% 403 Access Denied''' error. If you have the correct
%% permissions, but you're not using an
%% identity that belongs to the bucket owner's account, Amazon S3 returns
%% a
%% ```
%% 405 Method Not Allowed''' error.
%%
%% As a security precaution, the root user of the Amazon Web Services account
%% that owns a bucket can
%% always use this action, even if the policy explicitly denies the root user
%% the ability
%% to perform this action.
%%
%% For more information about bucket policies, see Using Bucket Policies and
%% User
%% Policies:
%% https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the
%% request. In addition, you must use an S3 on Outposts endpoint hostname
%% prefix instead of `s3-control'. For an example of the request syntax
%% for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
%% prefix and the `x-amz-outpost-id' derived by using the access point
%% ARN, see the Examples:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketPolicy.html#API_control_PutBucketPolicy_Examples
%% section.
%%
%% The following actions are related to `PutBucketPolicy':
%%
%% GetBucketPolicy:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketPolicy.html
%%
%% DeleteBucketPolicy:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketPolicy.html
-spec put_bucket_policy(aws_client:aws_client(), binary() | list(), put_bucket_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
put_bucket_policy(Client, Bucket, Input) ->
    put_bucket_policy(Client, Bucket, Input, []).

-spec put_bucket_policy(aws_client:aws_client(), binary() | list(), put_bucket_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
put_bucket_policy(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/v20180820/bucket/", aws_util:encode_uri(Bucket), "/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>},
                       {<<"x-amz-confirm-remove-self-bucket-access">>, <<"ConfirmRemoveSelfBucketAccess">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% This action creates an Amazon S3 on Outposts bucket's replication
%% configuration.
%%
%% To create
%% an S3 bucket's replication configuration, see PutBucketReplication:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketReplication.html
%% in the Amazon S3 API Reference.
%%
%% Creates a replication configuration or replaces an existing one. For
%% information about
%% S3 replication on Outposts configuration, see Replicating objects for
%% S3 on Outposts:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsReplication.html
%% in the Amazon S3 User Guide.
%%
%% It can take a while to propagate `PUT' or `DELETE' requests for
%% a replication configuration to all S3 on Outposts systems. Therefore, the
%% replication
%% configuration that's returned by a `GET' request soon after a
%% `PUT' or `DELETE' request might return a more recent result
%% than what's on the Outpost. If an Outpost is offline, the delay in
%% updating the
%% replication configuration on that Outpost can be significant.
%%
%% Specify the replication configuration in the request body. In the
%% replication
%% configuration, you provide the following information:
%%
%% The name of the destination bucket or buckets where you want S3 on
%% Outposts to
%% replicate objects
%%
%% The Identity and Access Management (IAM) role that S3 on Outposts can
%% assume to replicate objects on
%% your behalf
%%
%% Other relevant information, such as replication rules
%%
%% A replication configuration must include at least one rule and can contain
%% a maximum of
%% 100. Each rule identifies a subset of objects to replicate by filtering
%% the objects in the
%% source Outposts bucket. To choose additional subsets of objects to
%% replicate, add a rule
%% for each subset.
%%
%% To specify a subset of the objects in the source Outposts bucket to apply
%% a replication
%% rule to, add the `Filter' element as a child of the `Rule'
%% element.
%% You can filter objects based on an object key prefix, one or more object
%% tags, or both.
%% When you add the `Filter' element in the configuration, you must also
%% add the
%% following elements: `DeleteMarkerReplication', `Status', and
%% `Priority'.
%%
%% Using `PutBucketReplication' on Outposts requires that both the source
%% and
%% destination buckets must have versioning enabled. For information about
%% enabling versioning
%% on a bucket, see Managing S3 Versioning
%% for your S3 on Outposts bucket:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsManagingVersioning.html.
%%
%% For information about S3 on Outposts replication failure reasons, see
%% Replication failure reasons:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/outposts-replication-eventbridge.html#outposts-replication-failure-codes
%% in the Amazon S3 User Guide.
%%
%% Handling Replication of Encrypted Objects
%%
%% Outposts buckets are encrypted at all times. All the objects in the source
%% Outposts
%% bucket are encrypted and can be replicated. Also, all the replicas in the
%% destination
%% Outposts bucket are encrypted with the same encryption key as the objects
%% in the source
%% Outposts bucket.
%%
%% Permissions
%%
%% To create a `PutBucketReplication' request, you must have
%% `s3-outposts:PutReplicationConfiguration' permissions for the bucket.
%% The
%% Outposts bucket owner has this permission by default and can grant it to
%% others. For more
%% information about permissions, see Setting up IAM with
%% S3 on Outposts:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsIAM.html
%% and Managing access to
%% S3 on Outposts buckets:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsBucketPolicy.html.
%%
%% To perform this operation, the user or role must also have the
%% `iam:CreateRole' and `iam:PassRole' permissions. For more
%% information, see Granting a user permissions to
%% pass a role to an Amazon Web Services service:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the
%% request. In addition, you must use an S3 on Outposts endpoint hostname
%% prefix instead of `s3-control'. For an example of the request syntax
%% for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
%% prefix and the `x-amz-outpost-id' derived by using the access point
%% ARN, see the Examples:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketReplication.html#API_control_PutBucketReplication_Examples
%% section.
%%
%% The following operations are related to `PutBucketReplication':
%%
%% GetBucketReplication:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketReplication.html
%%
%% DeleteBucketReplication:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketReplication.html
-spec put_bucket_replication(aws_client:aws_client(), binary() | list(), put_bucket_replication_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
put_bucket_replication(Client, Bucket, Input) ->
    put_bucket_replication(Client, Bucket, Input, []).

-spec put_bucket_replication(aws_client:aws_client(), binary() | list(), put_bucket_replication_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
put_bucket_replication(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/v20180820/bucket/", aws_util:encode_uri(Bucket), "/replication"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% This action puts tags on an Amazon S3 on Outposts bucket.
%%
%% To put tags on an S3 bucket, see
%% PutBucketTagging:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketTagging.html
%% in the Amazon S3 API Reference.
%%
%% Sets the tags for an S3 on Outposts bucket. For more information, see
%% Using
%% Amazon S3 on Outposts:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html in
%% the Amazon S3 User Guide.
%%
%% Use tags to organize your Amazon Web Services bill to reflect your own
%% cost structure. To do this,
%% sign up to get your Amazon Web Services account bill with tag key values
%% included. Then, to see the cost
%% of combined resources, organize your billing information according to
%% resources with the
%% same tag key values. For example, you can tag several resources with a
%% specific application
%% name, and then organize your billing information to see the total cost of
%% that application
%% across several services. For more information, see Cost allocation and
%% tagging:
%% https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html.
%%
%% Within a bucket, if you add a tag that has the same key as an existing
%% tag, the new
%% value overwrites the old value. For more information, see Using cost
%% allocation in Amazon S3
%% bucket tags:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/CostAllocTagging.html.
%%
%% To use this action, you must have permissions to perform the
%% `s3-outposts:PutBucketTagging' action. The Outposts bucket owner has
%% this
%% permission by default and can grant this permission to others. For more
%% information about
%% permissions, see Permissions Related to Bucket Subresource Operations:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources
%% and Managing
%% access permissions to your Amazon S3 resources:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html.
%%
%% `PutBucketTagging' has the following special errors:
%%
%% Error code: `InvalidTagError'
%%
%% Description: The tag provided was not a valid tag. This error can occur if
%% the tag did not pass input validation. For information about tag
%% restrictions,
%% see
%% User-Defined Tag Restrictions:
%% https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html
%% and
%% Amazon Web Services-Generated Cost Allocation Tag Restrictions:
%% https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/aws-tag-restrictions.html.
%%
%% Error code: `MalformedXMLError'
%%
%% Description: The XML provided does not match the schema.
%%
%% Error code: `OperationAbortedError '
%%
%% Description: A conflicting conditional action is currently in progress
%% against this resource. Try again.
%%
%% Error code: `InternalError'
%%
%% Description: The service was unable to apply the provided tag to the
%% bucket.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the
%% request. In addition, you must use an S3 on Outposts endpoint hostname
%% prefix instead of `s3-control'. For an example of the request syntax
%% for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
%% prefix and the `x-amz-outpost-id' derived by using the access point
%% ARN, see the Examples:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketTagging.html#API_control_PutBucketTagging_Examples
%% section.
%%
%% The following actions are related to `PutBucketTagging':
%%
%% GetBucketTagging:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketTagging.html
%%
%% DeleteBucketTagging:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketTagging.html
-spec put_bucket_tagging(aws_client:aws_client(), binary() | list(), put_bucket_tagging_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
put_bucket_tagging(Client, Bucket, Input) ->
    put_bucket_tagging(Client, Bucket, Input, []).

-spec put_bucket_tagging(aws_client:aws_client(), binary() | list(), put_bucket_tagging_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
put_bucket_tagging(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/v20180820/bucket/", aws_util:encode_uri(Bucket), "/tagging"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, true}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% This operation sets the versioning state
%% for
%% S3 on Outposts
%% buckets
%% only.
%%
%% To set the versioning state for an S3 bucket, see PutBucketVersioning:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketVersioning.html
%% in the Amazon S3 API Reference.
%%
%% Sets the versioning state for an S3 on Outposts bucket. With
%% S3
%% Versioning,
%% you can save multiple distinct copies of your
%% objects
%% and recover from unintended user actions and application failures.
%%
%% You can set the versioning state to one of the following:
%%
%% Enabled - Enables versioning for the objects in
%% the bucket. All objects added to the bucket receive a unique version ID.
%%
%% Suspended - Suspends versioning for the objects
%% in the bucket. All objects added to the bucket receive the version ID
%% `null'.
%%
%% If you've never set versioning on your bucket, it has no versioning
%% state. In that case,
%% a
%% GetBucketVersioning:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketVersioning.html
%% request does not return a versioning state value.
%%
%% When you enable S3 Versioning, for each object in your bucket, you have a
%% current
%% version and zero or more noncurrent versions. You can configure your
%% bucket S3 Lifecycle
%% rules to expire noncurrent versions after a specified time period. For
%% more information,
%% see Creating and managing
%% a lifecycle configuration for your S3 on Outposts bucket:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsLifecycleManaging.html
%% in the Amazon S3
%% User Guide.
%%
%% If you have an object expiration lifecycle configuration in your
%% non-versioned bucket
%% and you want to maintain the same permanent delete behavior when you
%% enable versioning, you
%% must add a noncurrent expiration policy. The noncurrent expiration
%% lifecycle configuration
%% will manage the deletes of the noncurrent object versions in the
%% version-enabled bucket.
%% For more information, see Versioning:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/Versioning.html in
%% the Amazon S3
%% User Guide.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the
%% request. In addition, you must use an S3 on Outposts endpoint hostname
%% prefix instead of `s3-control'. For an example of the request syntax
%% for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
%% prefix and the `x-amz-outpost-id' derived by using the access point
%% ARN, see the Examples:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketVersioning.html#API_control_PutBucketVersioning_Examples
%% section.
%%
%% The following operations are related to `PutBucketVersioning' for
%% S3 on Outposts.
%%
%% GetBucketVersioning:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketVersioning.html
%%
%% PutBucketLifecycleConfiguration:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html
%%
%% GetBucketLifecycleConfiguration:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html
-spec put_bucket_versioning(aws_client:aws_client(), binary() | list(), put_bucket_versioning_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
put_bucket_versioning(Client, Bucket, Input) ->
    put_bucket_versioning(Client, Bucket, Input, []).

-spec put_bucket_versioning(aws_client:aws_client(), binary() | list(), put_bucket_versioning_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
put_bucket_versioning(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/v20180820/bucket/", aws_util:encode_uri(Bucket), "/versioning"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>},
                       {<<"x-amz-mfa">>, <<"MFA">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Sets the supplied tag-set on an S3 Batch Operations job.
%%
%% A tag is a key-value pair. You can associate S3 Batch Operations tags with
%% any job by sending
%% a PUT request against the tagging subresource that is associated with the
%% job. To modify
%% the existing tag set, you can either replace the existing tag set
%% entirely, or make changes
%% within the existing tag set by retrieving the existing tag set using
%% GetJobTagging:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetJobTagging.html,
%% modify that tag set, and use this operation to replace the tag set
%% with the one you modified. For more information, see Controlling
%% access and labeling jobs using tags:
%% https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags
%% in the Amazon S3 User Guide.
%%
%% If you send this request with an empty tag set, Amazon S3 deletes the
%% existing
%% tag set on the Batch Operations job. If you use this method, you are
%% charged for a Tier
%% 1 Request (PUT). For more information, see Amazon S3 pricing:
%% http://aws.amazon.com/s3/pricing/.
%%
%% For deleting existing tags for your Batch Operations job, a
%% DeleteJobTagging:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteJobTagging.html
%% request is preferred because it achieves the same
%% result without incurring charges.
%%
%% A few things to consider about using tags:
%%
%% Amazon S3 limits the maximum number of tags to 50 tags per job.
%%
%% You can associate up to 50 tags with a job as long as they have unique
%% tag keys.
%%
%% A tag key can be up to 128 Unicode characters in length, and tag values
%% can be up to 256 Unicode characters in length.
%%
%% The key and values are case sensitive.
%%
%% For tagging-related restrictions related to characters and encodings, see
%% User-Defined Tag Restrictions:
%% https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html
%% in the Billing and Cost Management User Guide.
%%
%% Permissions
%%
%% To use the
%% `PutJobTagging' operation, you must have permission to
%% perform the `s3:PutJobTagging' action.
%%
%% Related actions include:
%%
%% CreateJob:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html
%%
%% GetJobTagging:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetJobTagging.html
%%
%% DeleteJobTagging:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteJobTagging.html
-spec put_job_tagging(aws_client:aws_client(), binary() | list(), put_job_tagging_request()) ->
    {ok, put_job_tagging_result(), tuple()} |
    {error, any()} |
    {error, put_job_tagging_errors(), tuple()}.
put_job_tagging(Client, JobId, Input) ->
    put_job_tagging(Client, JobId, Input, []).

-spec put_job_tagging(aws_client:aws_client(), binary() | list(), put_job_tagging_request(), proplists:proplist()) ->
    {ok, put_job_tagging_result(), tuple()} |
    {error, any()} |
    {error, put_job_tagging_errors(), tuple()}.
put_job_tagging(Client, JobId, Input0, Options0) ->
    Method = put,
    Path = ["/v20180820/jobs/", aws_util:encode_uri(JobId), "/tagging"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Associates an access control policy with the specified Multi-Region Access
%% Point. Each Multi-Region Access Point can have only
%% one policy, so a request made to this action replaces any existing policy
%% that is
%% associated with the specified Multi-Region Access Point.
%%
%% This action will always be routed to the US West (Oregon) Region. For more
%% information
%% about the restrictions around working with Multi-Region Access Points, see
%% Multi-Region Access Point
%% restrictions and limitations:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/MultiRegionAccessPointRestrictions.html
%% in the Amazon S3 User Guide.
%%
%% The following actions are related to
%% `PutMultiRegionAccessPointPolicy':
%%
%% GetMultiRegionAccessPointPolicy:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPointPolicy.html
%%
%% GetMultiRegionAccessPointPolicyStatus:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPointPolicyStatus.html
-spec put_multi_region_access_point_policy(aws_client:aws_client(), put_multi_region_access_point_policy_request()) ->
    {ok, put_multi_region_access_point_policy_result(), tuple()} |
    {error, any()}.
put_multi_region_access_point_policy(Client, Input) ->
    put_multi_region_access_point_policy(Client, Input, []).

-spec put_multi_region_access_point_policy(aws_client:aws_client(), put_multi_region_access_point_policy_request(), proplists:proplist()) ->
    {ok, put_multi_region_access_point_policy_result(), tuple()} |
    {error, any()}.
put_multi_region_access_point_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v20180820/async-requests/mrap/put-policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Creates or modifies the `PublicAccessBlock' configuration for an
%% Amazon Web Services account. For this operation, users must have the
%% `s3:PutAccountPublicAccessBlock' permission. For more information, see
%% Using Amazon S3 block public access:
%% https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html.
%%
%% Related actions include:
%%
%% GetPublicAccessBlock:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetPublicAccessBlock.html
%%
%% DeletePublicAccessBlock:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeletePublicAccessBlock.html
-spec put_public_access_block(aws_client:aws_client(), put_public_access_block_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
put_public_access_block(Client, Input) ->
    put_public_access_block(Client, Input, []).

-spec put_public_access_block(aws_client:aws_client(), put_public_access_block_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
put_public_access_block(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v20180820/configuration/publicAccessBlock"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Puts an Amazon S3 Storage Lens configuration. For more information about
%% S3 Storage Lens, see Working with
%% Amazon S3 Storage Lens:
%% https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html in the
%% Amazon S3 User Guide. For a complete list of S3 Storage Lens metrics, see
%% S3 Storage Lens metrics glossary:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_metrics_glossary.html
%% in the Amazon S3 User Guide.
%%
%% To use this action, you must have permission to perform the
%% `s3:PutStorageLensConfiguration' action. For more information, see
%% Setting permissions to use Amazon S3 Storage Lens:
%% https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html
%% in the
%% Amazon S3 User Guide.
-spec put_storage_lens_configuration(aws_client:aws_client(), binary() | list(), put_storage_lens_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
put_storage_lens_configuration(Client, ConfigId, Input) ->
    put_storage_lens_configuration(Client, ConfigId, Input, []).

-spec put_storage_lens_configuration(aws_client:aws_client(), binary() | list(), put_storage_lens_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
put_storage_lens_configuration(Client, ConfigId, Input0, Options0) ->
    Method = put,
    Path = ["/v20180820/storagelens/", aws_util:encode_uri(ConfigId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Put or replace tags on an existing Amazon S3 Storage Lens configuration.
%% For more information
%% about S3 Storage Lens, see Assessing your storage activity and usage with
%% Amazon S3 Storage Lens :
%% https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html in the
%% Amazon S3 User Guide.
%%
%% To use this action, you must have permission to perform the
%% `s3:PutStorageLensConfigurationTagging' action. For more information,
%% see
%% Setting permissions to
%% use Amazon S3 Storage Lens:
%% https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html
%% in the Amazon S3 User Guide.
-spec put_storage_lens_configuration_tagging(aws_client:aws_client(), binary() | list(), put_storage_lens_configuration_tagging_request()) ->
    {ok, put_storage_lens_configuration_tagging_result(), tuple()} |
    {error, any()}.
put_storage_lens_configuration_tagging(Client, ConfigId, Input) ->
    put_storage_lens_configuration_tagging(Client, ConfigId, Input, []).

-spec put_storage_lens_configuration_tagging(aws_client:aws_client(), binary() | list(), put_storage_lens_configuration_tagging_request(), proplists:proplist()) ->
    {ok, put_storage_lens_configuration_tagging_result(), tuple()} |
    {error, any()}.
put_storage_lens_configuration_tagging(Client, ConfigId, Input0, Options0) ->
    Method = put,
    Path = ["/v20180820/storagelens/", aws_util:encode_uri(ConfigId), "/tagging"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% This operation is not supported by directory buckets.
%%
%% Submits an updated route configuration for a Multi-Region Access Point.
%% This API operation updates the
%% routing status for the specified Regions from active to passive, or from
%% passive to active.
%% A value of `0' indicates a passive status, which means that traffic
%% won't be
%% routed to the specified Region. A value of `100' indicates an active
%% status,
%% which means that traffic will be routed to the specified Region. At least
%% one Region must
%% be active at all times.
%%
%% When the routing configuration is changed, any in-progress operations
%% (uploads, copies,
%% deletes, and so on) to formerly active Regions will continue to run to
%% their final
%% completion state (success or failure). The routing configurations of any
%% Regions that
%% aren’t specified remain unchanged.
%%
%% Updated routing configurations might not be immediately applied. It can
%% take up to 2
%% minutes for your changes to take effect.
%%
%% To submit routing control changes and failover requests, use the Amazon S3
%% failover control
%% infrastructure endpoints in these five Amazon Web Services Regions:
%%
%% `us-east-1'
%%
%% `us-west-2'
%%
%% `ap-southeast-2'
%%
%% `ap-northeast-1'
%%
%% `eu-west-1'
-spec submit_multi_region_access_point_routes(aws_client:aws_client(), binary() | list(), submit_multi_region_access_point_routes_request()) ->
    {ok, submit_multi_region_access_point_routes_result(), tuple()} |
    {error, any()}.
submit_multi_region_access_point_routes(Client, Mrap, Input) ->
    submit_multi_region_access_point_routes(Client, Mrap, Input, []).

-spec submit_multi_region_access_point_routes(aws_client:aws_client(), binary() | list(), submit_multi_region_access_point_routes_request(), proplists:proplist()) ->
    {ok, submit_multi_region_access_point_routes_result(), tuple()} |
    {error, any()}.
submit_multi_region_access_point_routes(Client, Mrap, Input0, Options0) ->
    Method = patch,
    Path = ["/v20180820/mrap/instances/", aws_util:encode_multi_segment_uri(Mrap), "/routes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new Amazon Web Services resource tag or updates an existing
%% resource tag.
%%
%% Each tag is a label consisting of a user-defined key and value. Tags can
%% help you manage, identify, organize, search for, and filter resources. You
%% can add up to 50 Amazon Web Services resource tags for each S3 resource.
%%
%% This operation is only supported for S3 Storage Lens groups:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-lens-groups.html
%% and for S3 Access Grants:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-grants-tagging.html.
%% The tagged resource can be an S3 Storage Lens group or S3 Access Grants
%% instance, registered location, or grant.
%%
%% Permissions
%%
%% You must have the `s3:TagResource' permission to use this operation.
%%
%% For more information about the required Storage Lens
%% Groups permissions, see Setting account permissions to use S3 Storage Lens
%% groups:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_iam_permissions.html#storage_lens_groups_permissions.
%%
%% For information about S3 Tagging errors, see List of Amazon S3 Tagging
%% error codes:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#S3TaggingErrorCodeList.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_result(), tuple()} |
    {error, any()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_result(), tuple()} |
    {error, any()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/v20180820/tags/", aws_util:encode_multi_segment_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This operation removes the specified Amazon Web Services resource
%% tags from an S3 resource.
%%
%% Each tag is a label consisting of a user-defined key and value. Tags can
%% help you manage, identify, organize, search for, and filter resources.
%%
%% This operation is only supported for S3 Storage Lens groups:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-lens-groups.html
%% and for S3 Access Grants:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-grants-tagging.html.
%% The tagged resource can be an S3 Storage Lens group or S3 Access Grants
%% instance, registered location, or grant.
%%
%% Permissions
%%
%% You must have the `s3:UntagResource' permission to use this operation.
%%
%% For more information about the required Storage
%% Lens Groups permissions, see Setting account permissions to use S3 Storage
%% Lens groups:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_iam_permissions.html#storage_lens_groups_permissions.
%%
%% For information about S3 Tagging errors, see List of Amazon S3
%% Tagging error codes:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#S3TaggingErrorCodeList.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_result(), tuple()} |
    {error, any()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_result(), tuple()} |
    {error, any()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/v20180820/tags/", aws_util:encode_multi_segment_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the IAM role of a registered location in your S3 Access
%% Grants instance.
%%
%% Permissions
%%
%% You must have the `s3:UpdateAccessGrantsLocation' permission to use
%% this operation.
%%
%% Additional Permissions
%%
%% You must also have the following permission: `iam:PassRole'
-spec update_access_grants_location(aws_client:aws_client(), binary() | list(), update_access_grants_location_request()) ->
    {ok, update_access_grants_location_result(), tuple()} |
    {error, any()}.
update_access_grants_location(Client, AccessGrantsLocationId, Input) ->
    update_access_grants_location(Client, AccessGrantsLocationId, Input, []).

-spec update_access_grants_location(aws_client:aws_client(), binary() | list(), update_access_grants_location_request(), proplists:proplist()) ->
    {ok, update_access_grants_location_result(), tuple()} |
    {error, any()}.
update_access_grants_location(Client, AccessGrantsLocationId, Input0, Options0) ->
    Method = put,
    Path = ["/v20180820/accessgrantsinstance/location/", aws_util:encode_uri(AccessGrantsLocationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing S3 Batch Operations job's priority.
%%
%% For more information, see S3 Batch Operations:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html in
%% the Amazon S3 User Guide.
%%
%% Permissions
%%
%% To use the
%% `UpdateJobPriority' operation, you must have permission to
%% perform the `s3:UpdateJobPriority' action.
%%
%% Related actions include:
%%
%% CreateJob:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html
%%
%% ListJobs:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html
%%
%% DescribeJob:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html
%%
%% UpdateJobStatus:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html
-spec update_job_priority(aws_client:aws_client(), binary() | list(), update_job_priority_request()) ->
    {ok, update_job_priority_result(), tuple()} |
    {error, any()} |
    {error, update_job_priority_errors(), tuple()}.
update_job_priority(Client, JobId, Input) ->
    update_job_priority(Client, JobId, Input, []).

-spec update_job_priority(aws_client:aws_client(), binary() | list(), update_job_priority_request(), proplists:proplist()) ->
    {ok, update_job_priority_result(), tuple()} |
    {error, any()} |
    {error, update_job_priority_errors(), tuple()}.
update_job_priority(Client, JobId, Input0, Options0) ->
    Method = post,
    Path = ["/v20180820/jobs/", aws_util:encode_uri(JobId), "/priority"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"priority">>, <<"Priority">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the status for the specified job.
%%
%% Use this operation to confirm that you want to
%% run a job or to cancel an existing job. For more information, see S3 Batch
%% Operations:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html in
%% the Amazon S3 User Guide.
%%
%% Permissions
%%
%% To use the
%% `UpdateJobStatus' operation, you must have permission to
%% perform the `s3:UpdateJobStatus' action.
%%
%% Related actions include:
%%
%% CreateJob:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html
%%
%% ListJobs:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html
%%
%% DescribeJob:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html
%%
%% UpdateJobStatus:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html
-spec update_job_status(aws_client:aws_client(), binary() | list(), update_job_status_request()) ->
    {ok, update_job_status_result(), tuple()} |
    {error, any()} |
    {error, update_job_status_errors(), tuple()}.
update_job_status(Client, JobId, Input) ->
    update_job_status(Client, JobId, Input, []).

-spec update_job_status(aws_client:aws_client(), binary() | list(), update_job_status_request(), proplists:proplist()) ->
    {ok, update_job_status_result(), tuple()} |
    {error, any()} |
    {error, update_job_status_errors(), tuple()}.
update_job_status(Client, JobId, Input0, Options0) ->
    Method = post,
    Path = ["/v20180820/jobs/", aws_util:encode_uri(JobId), "/status"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"requestedJobStatus">>, <<"RequestedJobStatus">>},
                     {<<"statusUpdateReason">>, <<"StatusUpdateReason">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Updates the existing Storage Lens group.
%%
%% To use this operation, you must have the permission to perform the
%% `s3:UpdateStorageLensGroup' action. For more information about the
%% required Storage Lens
%% Groups permissions, see Setting account permissions to use S3 Storage Lens
%% groups:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_iam_permissions.html#storage_lens_groups_permissions.
%%
%% For information about Storage Lens groups errors, see List of Amazon S3
%% Storage
%% Lens error codes:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#S3LensErrorCodeList.
-spec update_storage_lens_group(aws_client:aws_client(), binary() | list(), update_storage_lens_group_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
update_storage_lens_group(Client, Name, Input) ->
    update_storage_lens_group(Client, Name, Input, []).

-spec update_storage_lens_group(aws_client:aws_client(), binary() | list(), update_storage_lens_group_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
update_storage_lens_group(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/v20180820/storagelensgroup/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

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
    Client1 = Client#{service => <<"s3">>},
    AccountId = proplists:get_value(<<"x-amz-account-id">>, Headers0),
    Host = build_host(AccountId, <<"s3-control">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"text/xml">>}
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
                           aws_util:decode_xml(Body)
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
      DecodedError = aws_util:decode_xml(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_AccountId, _EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_AccountId, _EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(undefined, _EndpointPrefix, _Client) ->
    error(missing_account_id);
build_host(AccountId, EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([AccountId, EndpointPrefix, Region, Endpoint],
                         <<".">>).

build_url(Host, Path0, Client) ->
    Proto = aws_client:proto(Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  aws_util:encode_xml(Input).
