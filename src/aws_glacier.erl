%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon S3 Glacier (Glacier) is a storage solution for &quot;cold
%% data.&quot;
%%
%% Glacier is an extremely low-cost storage service that provides secure,
%% durable, and easy-to-use storage for data backup and archival.
%%
%% With Glacier,
%% customers can store their data cost effectively for months, years, or
%% decades.
%% Glacier also enables customers to offload the administrative burdens of
%% operating and
%% scaling storage to AWS, so they don't have to worry about capacity
%% planning, hardware
%% provisioning, data replication, hardware failure and recovery, or
%% time-consuming hardware
%% migrations.
%%
%% Glacier is a great storage choice when low storage cost is paramount and
%% your
%% data is rarely retrieved. If your
%% application requires fast or frequent access to your data, consider using
%% Amazon S3. For
%% more information, see Amazon Simple Storage Service
%% (Amazon S3): http://aws.amazon.com/s3/.
%%
%% You can store any kind of data in any format. There is no maximum limit on
%% the total
%% amount of data you can store in Glacier.
%%
%% If you are a first-time user of Glacier, we recommend that you begin by
%% reading the following sections in the Amazon S3 Glacier Developer
%% Guide:
%%
%% What is
%% Amazon S3 Glacier:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/introduction.html -
%% This section of the Developer Guide describes the
%% underlying data model, the operations it supports, and the AWS SDKs that
%% you can use
%% to interact with the service.
%%
%% Getting Started
%% with Amazon S3 Glacier:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/amazon-glacier-getting-started.html
%% - The Getting Started section walks you through the
%% process of creating a vault, uploading archives, creating jobs to download
%% archives,
%% retrieving the job output, and deleting archives.
-module(aws_glacier).

-export([abort_multipart_upload/5,
         abort_multipart_upload/6,
         abort_vault_lock/4,
         abort_vault_lock/5,
         add_tags_to_vault/4,
         add_tags_to_vault/5,
         complete_multipart_upload/5,
         complete_multipart_upload/6,
         complete_vault_lock/5,
         complete_vault_lock/6,
         create_vault/4,
         create_vault/5,
         delete_archive/5,
         delete_archive/6,
         delete_vault/4,
         delete_vault/5,
         delete_vault_access_policy/4,
         delete_vault_access_policy/5,
         delete_vault_notifications/4,
         delete_vault_notifications/5,
         describe_job/4,
         describe_job/6,
         describe_job/7,
         describe_vault/3,
         describe_vault/5,
         describe_vault/6,
         get_data_retrieval_policy/2,
         get_data_retrieval_policy/4,
         get_data_retrieval_policy/5,
         get_job_output/4,
         get_job_output/6,
         get_job_output/7,
         get_vault_access_policy/3,
         get_vault_access_policy/5,
         get_vault_access_policy/6,
         get_vault_lock/3,
         get_vault_lock/5,
         get_vault_lock/6,
         get_vault_notifications/3,
         get_vault_notifications/5,
         get_vault_notifications/6,
         initiate_job/4,
         initiate_job/5,
         initiate_multipart_upload/4,
         initiate_multipart_upload/5,
         initiate_vault_lock/4,
         initiate_vault_lock/5,
         list_jobs/3,
         list_jobs/5,
         list_jobs/6,
         list_multipart_uploads/3,
         list_multipart_uploads/5,
         list_multipart_uploads/6,
         list_parts/4,
         list_parts/6,
         list_parts/7,
         list_provisioned_capacity/2,
         list_provisioned_capacity/4,
         list_provisioned_capacity/5,
         list_tags_for_vault/3,
         list_tags_for_vault/5,
         list_tags_for_vault/6,
         list_vaults/2,
         list_vaults/4,
         list_vaults/5,
         purchase_provisioned_capacity/3,
         purchase_provisioned_capacity/4,
         remove_tags_from_vault/4,
         remove_tags_from_vault/5,
         set_data_retrieval_policy/3,
         set_data_retrieval_policy/4,
         set_vault_access_policy/4,
         set_vault_access_policy/5,
         set_vault_notifications/4,
         set_vault_notifications/5,
         upload_archive/4,
         upload_archive/5,
         upload_multipart_part/5,
         upload_multipart_part/6]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% missing_parameter_value_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string(),
%%   <<"type">> => string()
%% }
-type missing_parameter_value_exception() :: #{binary() => any()}.

%% Example:
%% delete_archive_input() :: #{}
-type delete_archive_input() :: #{}.


%% Example:
%% initiate_job_output() :: #{
%%   <<"jobId">> => string(),
%%   <<"jobOutputPath">> => string(),
%%   <<"location">> => string()
%% }
-type initiate_job_output() :: #{binary() => any()}.

%% Example:
%% describe_job_input() :: #{}
-type describe_job_input() :: #{}.


%% Example:
%% remove_tags_from_vault_input() :: #{
%%   <<"TagKeys">> => list(string())
%% }
-type remove_tags_from_vault_input() :: #{binary() => any()}.

%% Example:
%% abort_multipart_upload_input() :: #{}
-type abort_multipart_upload_input() :: #{}.


%% Example:
%% get_vault_access_policy_output() :: #{
%%   <<"policy">> => vault_access_policy()
%% }
-type get_vault_access_policy_output() :: #{binary() => any()}.

%% Example:
%% list_provisioned_capacity_input() :: #{}
-type list_provisioned_capacity_input() :: #{}.

%% Example:
%% get_data_retrieval_policy_input() :: #{}
-type get_data_retrieval_policy_input() :: #{}.

%% Example:
%% describe_vault_input() :: #{}
-type describe_vault_input() :: #{}.


%% Example:
%% list_tags_for_vault_output() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_vault_output() :: #{binary() => any()}.


%% Example:
%% set_vault_access_policy_input() :: #{
%%   <<"policy">> => vault_access_policy()
%% }
-type set_vault_access_policy_input() :: #{binary() => any()}.


%% Example:
%% data_retrieval_rule() :: #{
%%   <<"BytesPerHour">> => float(),
%%   <<"Strategy">> => string()
%% }
-type data_retrieval_rule() :: #{binary() => any()}.


%% Example:
%% upload_archive_input() :: #{
%%   <<"archiveDescription">> => string(),
%%   <<"body">> => binary(),
%%   <<"checksum">> => string()
%% }
-type upload_archive_input() :: #{binary() => any()}.


%% Example:
%% input_serialization() :: #{
%%   <<"csv">> => csv_input()
%% }
-type input_serialization() :: #{binary() => any()}.


%% Example:
%% list_provisioned_capacity_output() :: #{
%%   <<"ProvisionedCapacityList">> => list(provisioned_capacity_description())
%% }
-type list_provisioned_capacity_output() :: #{binary() => any()}.


%% Example:
%% grantee() :: #{
%%   <<"DisplayName">> => string(),
%%   <<"EmailAddress">> => string(),
%%   <<"ID">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"URI">> => string()
%% }
-type grantee() :: #{binary() => any()}.

%% Example:
%% get_vault_notifications_input() :: #{}
-type get_vault_notifications_input() :: #{}.


%% Example:
%% request_timeout_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string(),
%%   <<"type">> => string()
%% }
-type request_timeout_exception() :: #{binary() => any()}.


%% Example:
%% vault_access_policy() :: #{
%%   <<"Policy">> => string()
%% }
-type vault_access_policy() :: #{binary() => any()}.


%% Example:
%% initiate_job_input() :: #{
%%   <<"jobParameters">> => job_parameters()
%% }
-type initiate_job_input() :: #{binary() => any()}.


%% Example:
%% inventory_retrieval_job_description() :: #{
%%   <<"EndDate">> => string(),
%%   <<"Format">> => string(),
%%   <<"Limit">> => string(),
%%   <<"Marker">> => string(),
%%   <<"StartDate">> => string()
%% }
-type inventory_retrieval_job_description() :: #{binary() => any()}.


%% Example:
%% select_parameters() :: #{
%%   <<"Expression">> => string(),
%%   <<"ExpressionType">> => list(any()),
%%   <<"InputSerialization">> => input_serialization(),
%%   <<"OutputSerialization">> => output_serialization()
%% }
-type select_parameters() :: #{binary() => any()}.


%% Example:
%% insufficient_capacity_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string(),
%%   <<"type">> => string()
%% }
-type insufficient_capacity_exception() :: #{binary() => any()}.


%% Example:
%% create_vault_output() :: #{
%%   <<"location">> => string()
%% }
-type create_vault_output() :: #{binary() => any()}.


%% Example:
%% job_parameters() :: #{
%%   <<"ArchiveId">> => string(),
%%   <<"Description">> => string(),
%%   <<"Format">> => string(),
%%   <<"InventoryRetrievalParameters">> => inventory_retrieval_job_input(),
%%   <<"OutputLocation">> => output_location(),
%%   <<"RetrievalByteRange">> => string(),
%%   <<"SNSTopic">> => string(),
%%   <<"SelectParameters">> => select_parameters(),
%%   <<"Tier">> => string(),
%%   <<"Type">> => string()
%% }
-type job_parameters() :: #{binary() => any()}.


%% Example:
%% complete_multipart_upload_input() :: #{
%%   <<"archiveSize">> => string(),
%%   <<"checksum">> => string()
%% }
-type complete_multipart_upload_input() :: #{binary() => any()}.

%% Example:
%% delete_vault_notifications_input() :: #{}
-type delete_vault_notifications_input() :: #{}.


%% Example:
%% set_vault_notifications_input() :: #{
%%   <<"vaultNotificationConfig">> => vault_notification_config()
%% }
-type set_vault_notifications_input() :: #{binary() => any()}.

%% Example:
%% get_vault_lock_input() :: #{}
-type get_vault_lock_input() :: #{}.


%% Example:
%% data_retrieval_policy() :: #{
%%   <<"Rules">> => list(data_retrieval_rule())
%% }
-type data_retrieval_policy() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string(),
%%   <<"type">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% provisioned_capacity_description() :: #{
%%   <<"CapacityId">> => string(),
%%   <<"ExpirationDate">> => string(),
%%   <<"StartDate">> => string()
%% }
-type provisioned_capacity_description() :: #{binary() => any()}.


%% Example:
%% part_list_element() :: #{
%%   <<"RangeInBytes">> => string(),
%%   <<"SHA256TreeHash">> => string()
%% }
-type part_list_element() :: #{binary() => any()}.


%% Example:
%% grant() :: #{
%%   <<"Grantee">> => grantee(),
%%   <<"Permission">> => list(any())
%% }
-type grant() :: #{binary() => any()}.


%% Example:
%% get_vault_notifications_output() :: #{
%%   <<"vaultNotificationConfig">> => vault_notification_config()
%% }
-type get_vault_notifications_output() :: #{binary() => any()}.


%% Example:
%% list_vaults_input() :: #{
%%   <<"limit">> => [integer()],
%%   <<"marker">> => string()
%% }
-type list_vaults_input() :: #{binary() => any()}.


%% Example:
%% invalid_parameter_value_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string(),
%%   <<"type">> => string()
%% }
-type invalid_parameter_value_exception() :: #{binary() => any()}.


%% Example:
%% csv_input() :: #{
%%   <<"Comments">> => string(),
%%   <<"FieldDelimiter">> => string(),
%%   <<"FileHeaderInfo">> => list(any()),
%%   <<"QuoteCharacter">> => string(),
%%   <<"QuoteEscapeCharacter">> => string(),
%%   <<"RecordDelimiter">> => string()
%% }
-type csv_input() :: #{binary() => any()}.


%% Example:
%% get_job_output_input() :: #{
%%   <<"range">> => string()
%% }
-type get_job_output_input() :: #{binary() => any()}.


%% Example:
%% archive_creation_output() :: #{
%%   <<"archiveId">> => string(),
%%   <<"checksum">> => string(),
%%   <<"location">> => string()
%% }
-type archive_creation_output() :: #{binary() => any()}.


%% Example:
%% encryption() :: #{
%%   <<"EncryptionType">> => list(any()),
%%   <<"KMSContext">> => string(),
%%   <<"KMSKeyId">> => string()
%% }
-type encryption() :: #{binary() => any()}.

%% Example:
%% delete_vault_access_policy_input() :: #{}
-type delete_vault_access_policy_input() :: #{}.

%% Example:
%% purchase_provisioned_capacity_input() :: #{}
-type purchase_provisioned_capacity_input() :: #{}.


%% Example:
%% output_location() :: #{
%%   <<"S3">> => s3_location()
%% }
-type output_location() :: #{binary() => any()}.


%% Example:
%% upload_list_element() :: #{
%%   <<"ArchiveDescription">> => string(),
%%   <<"CreationDate">> => string(),
%%   <<"MultipartUploadId">> => string(),
%%   <<"PartSizeInBytes">> => float(),
%%   <<"VaultARN">> => string()
%% }
-type upload_list_element() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string(),
%%   <<"type">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% upload_multipart_part_input() :: #{
%%   <<"body">> => binary(),
%%   <<"checksum">> => string(),
%%   <<"range">> => string()
%% }
-type upload_multipart_part_input() :: #{binary() => any()}.


%% Example:
%% s3_location() :: #{
%%   <<"AccessControlList">> => list(grant()),
%%   <<"BucketName">> => string(),
%%   <<"CannedACL">> => list(any()),
%%   <<"Encryption">> => encryption(),
%%   <<"Prefix">> => string(),
%%   <<"StorageClass">> => list(any()),
%%   <<"Tagging">> => map(),
%%   <<"UserMetadata">> => map()
%% }
-type s3_location() :: #{binary() => any()}.


%% Example:
%% initiate_multipart_upload_input() :: #{
%%   <<"archiveDescription">> => string(),
%%   <<"partSize">> => string()
%% }
-type initiate_multipart_upload_input() :: #{binary() => any()}.


%% Example:
%% set_data_retrieval_policy_input() :: #{
%%   <<"Policy">> => data_retrieval_policy()
%% }
-type set_data_retrieval_policy_input() :: #{binary() => any()}.


%% Example:
%% list_vaults_output() :: #{
%%   <<"Marker">> => string(),
%%   <<"VaultList">> => list(describe_vault_output())
%% }
-type list_vaults_output() :: #{binary() => any()}.


%% Example:
%% vault_lock_policy() :: #{
%%   <<"Policy">> => string()
%% }
-type vault_lock_policy() :: #{binary() => any()}.

%% Example:
%% get_vault_access_policy_input() :: #{}
-type get_vault_access_policy_input() :: #{}.


%% Example:
%% policy_enforced_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string(),
%%   <<"type">> => string()
%% }
-type policy_enforced_exception() :: #{binary() => any()}.


%% Example:
%% list_jobs_output() :: #{
%%   <<"JobList">> => list(glacier_job_description()),
%%   <<"Marker">> => string()
%% }
-type list_jobs_output() :: #{binary() => any()}.

%% Example:
%% delete_vault_input() :: #{}
-type delete_vault_input() :: #{}.


%% Example:
%% upload_multipart_part_output() :: #{
%%   <<"checksum">> => string()
%% }
-type upload_multipart_part_output() :: #{binary() => any()}.

%% Example:
%% list_tags_for_vault_input() :: #{}
-type list_tags_for_vault_input() :: #{}.


%% Example:
%% initiate_vault_lock_input() :: #{
%%   <<"policy">> => vault_lock_policy()
%% }
-type initiate_vault_lock_input() :: #{binary() => any()}.


%% Example:
%% purchase_provisioned_capacity_output() :: #{
%%   <<"capacityId">> => string()
%% }
-type purchase_provisioned_capacity_output() :: #{binary() => any()}.


%% Example:
%% vault_notification_config() :: #{
%%   <<"Events">> => list(string()),
%%   <<"SNSTopic">> => string()
%% }
-type vault_notification_config() :: #{binary() => any()}.


%% Example:
%% glacier_job_description() :: #{
%%   <<"Action">> => list(any()),
%%   <<"ArchiveId">> => string(),
%%   <<"ArchiveSHA256TreeHash">> => string(),
%%   <<"ArchiveSizeInBytes">> => float(),
%%   <<"Completed">> => boolean(),
%%   <<"CompletionDate">> => string(),
%%   <<"CreationDate">> => string(),
%%   <<"InventoryRetrievalParameters">> => inventory_retrieval_job_description(),
%%   <<"InventorySizeInBytes">> => float(),
%%   <<"JobDescription">> => string(),
%%   <<"JobId">> => string(),
%%   <<"JobOutputPath">> => string(),
%%   <<"OutputLocation">> => output_location(),
%%   <<"RetrievalByteRange">> => string(),
%%   <<"SHA256TreeHash">> => string(),
%%   <<"SNSTopic">> => string(),
%%   <<"SelectParameters">> => select_parameters(),
%%   <<"StatusCode">> => list(any()),
%%   <<"StatusMessage">> => string(),
%%   <<"Tier">> => string(),
%%   <<"VaultARN">> => string()
%% }
-type glacier_job_description() :: #{binary() => any()}.


%% Example:
%% list_jobs_input() :: #{
%%   <<"completed">> => string(),
%%   <<"limit">> => [integer()],
%%   <<"marker">> => string(),
%%   <<"statuscode">> => string()
%% }
-type list_jobs_input() :: #{binary() => any()}.


%% Example:
%% list_multipart_uploads_output() :: #{
%%   <<"Marker">> => string(),
%%   <<"UploadsList">> => list(upload_list_element())
%% }
-type list_multipart_uploads_output() :: #{binary() => any()}.


%% Example:
%% list_parts_input() :: #{
%%   <<"limit">> => [integer()],
%%   <<"marker">> => string()
%% }
-type list_parts_input() :: #{binary() => any()}.


%% Example:
%% initiate_vault_lock_output() :: #{
%%   <<"lockId">> => string()
%% }
-type initiate_vault_lock_output() :: #{binary() => any()}.


%% Example:
%% list_parts_output() :: #{
%%   <<"ArchiveDescription">> => string(),
%%   <<"CreationDate">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MultipartUploadId">> => string(),
%%   <<"PartSizeInBytes">> => float(),
%%   <<"Parts">> => list(part_list_element()),
%%   <<"VaultARN">> => string()
%% }
-type list_parts_output() :: #{binary() => any()}.


%% Example:
%% csv_output() :: #{
%%   <<"FieldDelimiter">> => string(),
%%   <<"QuoteCharacter">> => string(),
%%   <<"QuoteEscapeCharacter">> => string(),
%%   <<"QuoteFields">> => list(any()),
%%   <<"RecordDelimiter">> => string()
%% }
-type csv_output() :: #{binary() => any()}.


%% Example:
%% inventory_retrieval_job_input() :: #{
%%   <<"EndDate">> => string(),
%%   <<"Limit">> => string(),
%%   <<"Marker">> => string(),
%%   <<"StartDate">> => string()
%% }
-type inventory_retrieval_job_input() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string(),
%%   <<"type">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% get_job_output_output() :: #{
%%   <<"acceptRanges">> => string(),
%%   <<"archiveDescription">> => string(),
%%   <<"body">> => binary(),
%%   <<"checksum">> => string(),
%%   <<"contentRange">> => string(),
%%   <<"contentType">> => string(),
%%   <<"status">> => integer()
%% }
-type get_job_output_output() :: #{binary() => any()}.


%% Example:
%% describe_vault_output() :: #{
%%   <<"CreationDate">> => string(),
%%   <<"LastInventoryDate">> => string(),
%%   <<"NumberOfArchives">> => float(),
%%   <<"SizeInBytes">> => float(),
%%   <<"VaultARN">> => string(),
%%   <<"VaultName">> => string()
%% }
-type describe_vault_output() :: #{binary() => any()}.


%% Example:
%% initiate_multipart_upload_output() :: #{
%%   <<"location">> => string(),
%%   <<"uploadId">> => string()
%% }
-type initiate_multipart_upload_output() :: #{binary() => any()}.


%% Example:
%% add_tags_to_vault_input() :: #{
%%   <<"Tags">> => map()
%% }
-type add_tags_to_vault_input() :: #{binary() => any()}.


%% Example:
%% list_multipart_uploads_input() :: #{
%%   <<"limit">> => [integer()],
%%   <<"marker">> => string()
%% }
-type list_multipart_uploads_input() :: #{binary() => any()}.


%% Example:
%% output_serialization() :: #{
%%   <<"csv">> => csv_output()
%% }
-type output_serialization() :: #{binary() => any()}.

%% Example:
%% create_vault_input() :: #{}
-type create_vault_input() :: #{}.

%% Example:
%% abort_vault_lock_input() :: #{}
-type abort_vault_lock_input() :: #{}.


%% Example:
%% get_vault_lock_output() :: #{
%%   <<"CreationDate">> => string(),
%%   <<"ExpirationDate">> => string(),
%%   <<"Policy">> => string(),
%%   <<"State">> => string()
%% }
-type get_vault_lock_output() :: #{binary() => any()}.


%% Example:
%% get_data_retrieval_policy_output() :: #{
%%   <<"Policy">> => data_retrieval_policy()
%% }
-type get_data_retrieval_policy_output() :: #{binary() => any()}.

%% Example:
%% complete_vault_lock_input() :: #{}
-type complete_vault_lock_input() :: #{}.

-type abort_multipart_upload_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type abort_vault_lock_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type add_tags_to_vault_errors() ::
    limit_exceeded_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type complete_multipart_upload_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type complete_vault_lock_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type create_vault_errors() ::
    limit_exceeded_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    missing_parameter_value_exception().

-type delete_archive_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type delete_vault_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type delete_vault_access_policy_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type delete_vault_notifications_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type describe_job_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type describe_vault_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type get_data_retrieval_policy_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    missing_parameter_value_exception().

-type get_job_output_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type get_vault_access_policy_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type get_vault_lock_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type get_vault_notifications_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type initiate_job_errors() ::
    policy_enforced_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    insufficient_capacity_exception() | 
    missing_parameter_value_exception().

-type initiate_multipart_upload_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type initiate_vault_lock_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type list_jobs_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type list_multipart_uploads_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type list_parts_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type list_provisioned_capacity_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    missing_parameter_value_exception().

-type list_tags_for_vault_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type list_vaults_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type purchase_provisioned_capacity_errors() ::
    limit_exceeded_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    missing_parameter_value_exception().

-type remove_tags_from_vault_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type set_data_retrieval_policy_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    missing_parameter_value_exception().

-type set_vault_access_policy_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type set_vault_notifications_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type upload_archive_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception() | 
    missing_parameter_value_exception().

-type upload_multipart_part_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception() | 
    missing_parameter_value_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc This operation aborts a multipart upload identified by the upload ID.
%%
%% After the Abort Multipart Upload request succeeds, you cannot upload any
%% more parts
%% to the multipart upload or complete the multipart upload. Aborting a
%% completed upload
%% fails. However, aborting an already-aborted upload will succeed, for a
%% short time. For more
%% information about uploading a part and completing a multipart upload, see
%% `UploadMultipartPart' and `CompleteMultipartUpload'.
%%
%% This operation is idempotent.
%%
%% An AWS account has full permission to perform all operations (actions).
%% However, AWS
%% Identity and Access Management (IAM) users don't have any permissions
%% by default. You must
%% grant them explicit permission to perform specific actions. For more
%% information, see
%% Access Control Using
%% AWS Identity and Access Management (IAM):
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html.
%%
%% For conceptual information and underlying REST API, see Working with
%% Archives in
%% Amazon S3 Glacier:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html
%% and Abort Multipart
%% Upload:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-abort-upload.html
%% in the Amazon Glacier Developer Guide.
-spec abort_multipart_upload(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), abort_multipart_upload_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, abort_multipart_upload_errors(), tuple()}.
abort_multipart_upload(Client, AccountId, UploadId, VaultName, Input) ->
    abort_multipart_upload(Client, AccountId, UploadId, VaultName, Input, []).

-spec abort_multipart_upload(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), abort_multipart_upload_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, abort_multipart_upload_errors(), tuple()}.
abort_multipart_upload(Client, AccountId, UploadId, VaultName, Input0, Options0) ->
    Method = delete,
    Path = ["/", aws_util:encode_uri(AccountId), "/vaults/", aws_util:encode_uri(VaultName), "/multipart-uploads/", aws_util:encode_uri(UploadId), ""],
    SuccessStatusCode = 204,
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

%% @doc This operation aborts the vault locking process if the vault lock is
%% not in the
%% `Locked' state.
%%
%% If the vault lock is in the `Locked' state when
%% this operation is requested, the operation returns an
%% `AccessDeniedException'
%% error. Aborting the vault locking process removes the vault lock policy
%% from the specified
%% vault.
%%
%% A vault lock is put into the `InProgress' state by calling
%% `InitiateVaultLock'. A vault lock is put into the `Locked' state
%% by
%% calling `CompleteVaultLock'. You can get the state of a vault lock by
%% calling `GetVaultLock'. For more information about the vault locking
%% process, see Amazon Glacier Vault Lock:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html. For
%% more information about vault lock policies, see
%% Amazon
%% Glacier Access Control with Vault Lock Policies:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock-policy.html.
%%
%% This operation is idempotent. You can successfully invoke this operation
%% multiple
%% times, if the vault lock is in the `InProgress' state or if there is
%% no policy
%% associated with the vault.
-spec abort_vault_lock(aws_client:aws_client(), binary() | list(), binary() | list(), abort_vault_lock_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, abort_vault_lock_errors(), tuple()}.
abort_vault_lock(Client, AccountId, VaultName, Input) ->
    abort_vault_lock(Client, AccountId, VaultName, Input, []).

-spec abort_vault_lock(aws_client:aws_client(), binary() | list(), binary() | list(), abort_vault_lock_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, abort_vault_lock_errors(), tuple()}.
abort_vault_lock(Client, AccountId, VaultName, Input0, Options0) ->
    Method = delete,
    Path = ["/", aws_util:encode_uri(AccountId), "/vaults/", aws_util:encode_uri(VaultName), "/lock-policy"],
    SuccessStatusCode = 204,
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

%% @doc This operation adds the specified tags to a vault.
%%
%% Each tag is composed of a key and
%% a value. Each vault can have up to 10 tags. If your request would cause
%% the tag limit for
%% the vault to be exceeded, the operation throws the
%% `LimitExceededException'
%% error. If a tag already exists on the vault under a specified key, the
%% existing key value
%% will be overwritten. For more information about tags, see Tagging Amazon
%% S3 Glacier Resources:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/tagging.html.
-spec add_tags_to_vault(aws_client:aws_client(), binary() | list(), binary() | list(), add_tags_to_vault_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, add_tags_to_vault_errors(), tuple()}.
add_tags_to_vault(Client, AccountId, VaultName, Input) ->
    add_tags_to_vault(Client, AccountId, VaultName, Input, []).

-spec add_tags_to_vault(aws_client:aws_client(), binary() | list(), binary() | list(), add_tags_to_vault_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, add_tags_to_vault_errors(), tuple()}.
add_tags_to_vault(Client, AccountId, VaultName, Input0, Options0) ->
    Method = post,
    Path = ["/", aws_util:encode_uri(AccountId), "/vaults/", aws_util:encode_uri(VaultName), "/tags?operation=add"],
    SuccessStatusCode = 204,
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

%% @doc You call this operation to inform Amazon S3 Glacier (Glacier) that
%% all the archive parts have been
%% uploaded and that Glacier can now assemble the archive from the uploaded
%% parts.
%%
%% After assembling and saving the archive to the vault, Glacier returns the
%% URI path
%% of the newly created archive resource. Using the URI path, you can then
%% access the archive.
%% After you upload an archive, you should save the archive ID returned to
%% retrieve the
%% archive at a later point. You can also get the vault inventory to obtain a
%% list of archive
%% IDs in a vault. For more information, see `InitiateJob'.
%%
%% In the request, you must include the computed SHA256 tree hash of the
%% entire archive
%% you have uploaded. For information about computing a SHA256 tree hash, see
%% Computing
%% Checksums:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/checksum-calculations.html.
%% On the server side, Glacier also constructs the SHA256 tree
%% hash of the assembled archive. If the values match, Glacier saves the
%% archive to the
%% vault; otherwise, it returns an error, and the operation fails. The
%% `ListParts' operation returns a list of parts uploaded for a specific
%% multipart upload. It includes checksum information for each uploaded part
%% that can be used
%% to debug a bad checksum issue.
%%
%% Additionally, Glacier also checks for any missing content ranges when
%% assembling the archive, if missing content ranges are found, Glacier
%% returns an
%% error and the operation fails.
%%
%% Complete Multipart Upload is an idempotent operation. After your first
%% successful
%% complete multipart upload, if you call the operation again within a short
%% period, the
%% operation will succeed and return the same archive ID. This is useful in
%% the event you
%% experience a network issue that causes an aborted connection or receive a
%% 500 server error,
%% in which case you can repeat your Complete Multipart Upload request and
%% get the same
%% archive ID without creating duplicate archives. Note, however, that after
%% the multipart
%% upload completes, you cannot call the List Parts operation and the
%% multipart upload will
%% not appear in List Multipart Uploads response, even if idempotent complete
%% is
%% possible.
%%
%% An AWS account has full permission to perform all operations (actions).
%% However, AWS
%% Identity and Access Management (IAM) users don't have any permissions
%% by default. You must
%% grant them explicit permission to perform specific actions. For more
%% information, see
%% Access Control Using
%% AWS Identity and Access Management (IAM):
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html.
%%
%% For conceptual information and underlying REST API, see Uploading Large
%% Archives in
%% Parts (Multipart Upload):
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-archive-mpu.html
%% and Complete Multipart
%% Upload:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-complete-upload.html
%% in the Amazon Glacier Developer Guide.
-spec complete_multipart_upload(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), complete_multipart_upload_input()) ->
    {ok, archive_creation_output(), tuple()} |
    {error, any()} |
    {error, complete_multipart_upload_errors(), tuple()}.
complete_multipart_upload(Client, AccountId, UploadId, VaultName, Input) ->
    complete_multipart_upload(Client, AccountId, UploadId, VaultName, Input, []).

-spec complete_multipart_upload(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), complete_multipart_upload_input(), proplists:proplist()) ->
    {ok, archive_creation_output(), tuple()} |
    {error, any()} |
    {error, complete_multipart_upload_errors(), tuple()}.
complete_multipart_upload(Client, AccountId, UploadId, VaultName, Input0, Options0) ->
    Method = post,
    Path = ["/", aws_util:encode_uri(AccountId), "/vaults/", aws_util:encode_uri(VaultName), "/multipart-uploads/", aws_util:encode_uri(UploadId), ""],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-archive-size">>, <<"archiveSize">>},
                       {<<"x-amz-sha256-tree-hash">>, <<"checksum">>}
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
            {<<"x-amz-archive-id">>, <<"archiveId">>},
            {<<"x-amz-sha256-tree-hash">>, <<"checksum">>},
            {<<"Location">>, <<"location">>}
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

%% @doc This operation completes the vault locking process by transitioning
%% the vault lock
%% from the `InProgress' state to the `Locked' state, which causes
%% the
%% vault lock policy to become unchangeable.
%%
%% A vault lock is put into the
%% `InProgress' state by calling `InitiateVaultLock'. You can
%% obtain the state of the vault lock by calling `GetVaultLock'. For more
%% information about the vault locking process, Amazon Glacier Vault Lock:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html.
%%
%% This operation is idempotent. This request is always successful if the
%% vault lock is
%% in the `Locked' state and the provided lock ID matches the lock ID
%% originally
%% used to lock the vault.
%%
%% If an invalid lock ID is passed in the request when the vault lock is in
%% the
%% `Locked' state, the operation returns an `AccessDeniedException'
%% error. If an invalid lock ID is passed in the request when the vault lock
%% is in the
%% `InProgress' state, the operation throws an `InvalidParameter'
%% error.
-spec complete_vault_lock(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), complete_vault_lock_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, complete_vault_lock_errors(), tuple()}.
complete_vault_lock(Client, AccountId, LockId, VaultName, Input) ->
    complete_vault_lock(Client, AccountId, LockId, VaultName, Input, []).

-spec complete_vault_lock(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), complete_vault_lock_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, complete_vault_lock_errors(), tuple()}.
complete_vault_lock(Client, AccountId, LockId, VaultName, Input0, Options0) ->
    Method = post,
    Path = ["/", aws_util:encode_uri(AccountId), "/vaults/", aws_util:encode_uri(VaultName), "/lock-policy/", aws_util:encode_uri(LockId), ""],
    SuccessStatusCode = 204,
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

%% @doc This operation creates a new vault with the specified name.
%%
%% The name of the vault
%% must be unique within a region for an AWS account. You can create up to
%% 1,000 vaults per
%% account. If you need to create more vaults, contact Amazon S3 Glacier.
%%
%% You must use the following guidelines when naming a vault.
%%
%% Names can be between 1 and 255 characters long.
%%
%% Allowed characters are a-z, A-Z, 0-9, '_' (underscore),
%% '-' (hyphen), and '.'
%% (period).
%%
%% This operation is idempotent.
%%
%% An AWS account has full permission to perform all operations (actions).
%% However, AWS
%% Identity and Access Management (IAM) users don't have any permissions
%% by default. You must
%% grant them explicit permission to perform specific actions. For more
%% information, see
%% Access Control Using
%% AWS Identity and Access Management (IAM):
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html.
%%
%% For conceptual information and underlying REST API, see Creating a Vault
%% in Amazon
%% Glacier:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/creating-vaults.html
%% and Create Vault :
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-put.html in
%% the
%% Amazon Glacier Developer Guide.
-spec create_vault(aws_client:aws_client(), binary() | list(), binary() | list(), create_vault_input()) ->
    {ok, create_vault_output(), tuple()} |
    {error, any()} |
    {error, create_vault_errors(), tuple()}.
create_vault(Client, AccountId, VaultName, Input) ->
    create_vault(Client, AccountId, VaultName, Input, []).

-spec create_vault(aws_client:aws_client(), binary() | list(), binary() | list(), create_vault_input(), proplists:proplist()) ->
    {ok, create_vault_output(), tuple()} |
    {error, any()} |
    {error, create_vault_errors(), tuple()}.
create_vault(Client, AccountId, VaultName, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(AccountId), "/vaults/", aws_util:encode_uri(VaultName), ""],
    SuccessStatusCode = 201,
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Location">>, <<"location">>}
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

%% @doc This operation deletes an archive from a vault.
%%
%% Subsequent requests to initiate a
%% retrieval of this archive will fail. Archive retrievals that are in
%% progress for this
%% archive ID may or may not succeed according to the following scenarios:
%%
%% If the archive retrieval job is actively preparing the data for download
%% when
%% Amazon S3 Glacier receives the delete archive request, the archival
%% retrieval operation
%% might fail.
%%
%% If the archive retrieval job has successfully prepared the archive for
%% download
%% when Amazon S3 Glacier receives the delete archive request, you will be
%% able to download
%% the output.
%%
%% This operation is idempotent. Attempting to delete an already-deleted
%% archive does
%% not result in an error.
%%
%% An AWS account has full permission to perform all operations (actions).
%% However, AWS
%% Identity and Access Management (IAM) users don't have any permissions
%% by default. You must
%% grant them explicit permission to perform specific actions. For more
%% information, see
%% Access Control Using
%% AWS Identity and Access Management (IAM):
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html.
%%
%% For conceptual information and underlying REST API, see Deleting an
%% Archive in Amazon
%% Glacier:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/deleting-an-archive.html
%% and Delete Archive:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-delete.html
%% in the
%% Amazon Glacier Developer Guide.
-spec delete_archive(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_archive_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_archive_errors(), tuple()}.
delete_archive(Client, AccountId, ArchiveId, VaultName, Input) ->
    delete_archive(Client, AccountId, ArchiveId, VaultName, Input, []).

-spec delete_archive(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_archive_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_archive_errors(), tuple()}.
delete_archive(Client, AccountId, ArchiveId, VaultName, Input0, Options0) ->
    Method = delete,
    Path = ["/", aws_util:encode_uri(AccountId), "/vaults/", aws_util:encode_uri(VaultName), "/archives/", aws_util:encode_uri(ArchiveId), ""],
    SuccessStatusCode = 204,
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

%% @doc This operation deletes a vault.
%%
%% Amazon S3 Glacier will delete a vault only if there are
%% no archives in the vault as of the last inventory and there have been no
%% writes to the
%% vault since the last inventory. If either of these conditions is not
%% satisfied, the vault
%% deletion fails (that is, the vault is not removed) and Amazon S3 Glacier
%% returns an error. You
%% can use `DescribeVault' to return the number of archives in a vault,
%% and
%% you can use Initiate a Job (POST
%% jobs):
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/api-initiate-job-post.html
%% to initiate a new inventory retrieval for a vault. The inventory contains
%% the archive IDs you use to delete archives using Delete Archive (DELETE
%% archive):
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-delete.html.
%%
%% This operation is idempotent.
%%
%% An AWS account has full permission to perform all operations (actions).
%% However, AWS
%% Identity and Access Management (IAM) users don't have any permissions
%% by default. You must
%% grant them explicit permission to perform specific actions. For more
%% information, see
%% Access Control Using
%% AWS Identity and Access Management (IAM):
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html.
%%
%% For conceptual information and underlying REST API, see Deleting a Vault
%% in Amazon
%% Glacier:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/deleting-vaults.html
%% and Delete Vault :
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-delete.html
%% in the
%% Amazon S3 Glacier Developer Guide.
-spec delete_vault(aws_client:aws_client(), binary() | list(), binary() | list(), delete_vault_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_vault_errors(), tuple()}.
delete_vault(Client, AccountId, VaultName, Input) ->
    delete_vault(Client, AccountId, VaultName, Input, []).

-spec delete_vault(aws_client:aws_client(), binary() | list(), binary() | list(), delete_vault_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_vault_errors(), tuple()}.
delete_vault(Client, AccountId, VaultName, Input0, Options0) ->
    Method = delete,
    Path = ["/", aws_util:encode_uri(AccountId), "/vaults/", aws_util:encode_uri(VaultName), ""],
    SuccessStatusCode = 204,
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

%% @doc This operation deletes the access policy associated with the
%% specified vault.
%%
%% The
%% operation is eventually consistent; that is, it might take some time for
%% Amazon S3 Glacier to
%% completely remove the access policy, and you might still see the effect of
%% the policy for a
%% short time after you send the delete request.
%%
%% This operation is idempotent. You can invoke delete multiple times, even
%% if there is
%% no policy associated with the vault. For more information about vault
%% access policies, see
%% Amazon Glacier Access Control with Vault Access Policies:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html.
-spec delete_vault_access_policy(aws_client:aws_client(), binary() | list(), binary() | list(), delete_vault_access_policy_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_vault_access_policy_errors(), tuple()}.
delete_vault_access_policy(Client, AccountId, VaultName, Input) ->
    delete_vault_access_policy(Client, AccountId, VaultName, Input, []).

-spec delete_vault_access_policy(aws_client:aws_client(), binary() | list(), binary() | list(), delete_vault_access_policy_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_vault_access_policy_errors(), tuple()}.
delete_vault_access_policy(Client, AccountId, VaultName, Input0, Options0) ->
    Method = delete,
    Path = ["/", aws_util:encode_uri(AccountId), "/vaults/", aws_util:encode_uri(VaultName), "/access-policy"],
    SuccessStatusCode = 204,
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

%% @doc This operation deletes the notification configuration set for a
%% vault.
%%
%% The operation
%% is eventually consistent; that is, it might take some time for Amazon S3
%% Glacier to completely
%% disable the notifications and you might still receive some notifications
%% for a short time
%% after you send the delete request.
%%
%% An AWS account has full permission to perform all operations (actions).
%% However, AWS
%% Identity and Access Management (IAM) users don't have any permissions
%% by default. You must
%% grant them explicit permission to perform specific actions. For more
%% information, see
%% Access
%% Control Using AWS Identity and Access Management (IAM):
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html.
%%
%% For conceptual information and underlying REST API, see Configuring Vault
%% Notifications in Amazon S3 Glacier:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html
%% and Delete Vault
%% Notification Configuration :
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-notifications-delete.html
%% in the Amazon S3 Glacier Developer Guide.
-spec delete_vault_notifications(aws_client:aws_client(), binary() | list(), binary() | list(), delete_vault_notifications_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_vault_notifications_errors(), tuple()}.
delete_vault_notifications(Client, AccountId, VaultName, Input) ->
    delete_vault_notifications(Client, AccountId, VaultName, Input, []).

-spec delete_vault_notifications(aws_client:aws_client(), binary() | list(), binary() | list(), delete_vault_notifications_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_vault_notifications_errors(), tuple()}.
delete_vault_notifications(Client, AccountId, VaultName, Input0, Options0) ->
    Method = delete,
    Path = ["/", aws_util:encode_uri(AccountId), "/vaults/", aws_util:encode_uri(VaultName), "/notification-configuration"],
    SuccessStatusCode = 204,
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

%% @doc This operation returns information about a job you previously
%% initiated, including
%% the job initiation date, the user who initiated the job, the job status
%% code/message and
%% the Amazon SNS topic to notify after Amazon S3 Glacier (Glacier) completes
%% the job.
%%
%% For more information
%% about initiating a job, see `InitiateJob'.
%%
%% This operation enables you to check the status of your job. However, it is
%% strongly recommended that you set up an Amazon SNS topic and specify it in
%% your initiate
%% job request so that Glacier can notify the topic after it completes the
%% job.
%%
%% A job ID will not expire for at least 24 hours after Glacier completes the
%% job.
%%
%% An AWS account has full permission to perform all operations (actions).
%% However, AWS
%% Identity and Access Management (IAM) users don't have any permissions
%% by default. You must
%% grant them explicit permission to perform specific actions. For more
%% information, see
%% Access Control Using
%% AWS Identity and Access Management (IAM):
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html.
%%
%% For more information about using this operation,
%% see the documentation for the underlying REST API Describe Job:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/api-describe-job-get.html
%% in the Amazon Glacier Developer Guide.
-spec describe_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, glacier_job_description(), tuple()} |
    {error, any()} |
    {error, describe_job_errors(), tuple()}.
describe_job(Client, AccountId, JobId, VaultName)
  when is_map(Client) ->
    describe_job(Client, AccountId, JobId, VaultName, #{}, #{}).

-spec describe_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, glacier_job_description(), tuple()} |
    {error, any()} |
    {error, describe_job_errors(), tuple()}.
describe_job(Client, AccountId, JobId, VaultName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_job(Client, AccountId, JobId, VaultName, QueryMap, HeadersMap, []).

-spec describe_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, glacier_job_description(), tuple()} |
    {error, any()} |
    {error, describe_job_errors(), tuple()}.
describe_job(Client, AccountId, JobId, VaultName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(AccountId), "/vaults/", aws_util:encode_uri(VaultName), "/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation returns information about a vault, including the
%% vault's Amazon
%% Resource Name (ARN), the date the vault was created, the number of
%% archives it contains,
%% and the total size of all the archives in the vault.
%%
%% The number of archives and their total
%% size are as of the last inventory generation. This means that if you add
%% or remove an
%% archive from a vault, and then immediately use Describe Vault, the change
%% in contents will
%% not be immediately reflected. If you want to retrieve the latest inventory
%% of the vault,
%% use `InitiateJob'. Amazon S3 Glacier generates vault inventories
%% approximately
%% daily. For more information, see Downloading a Vault Inventory in
%% Amazon S3 Glacier:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-inventory.html.
%%
%% An AWS account has full permission to perform all operations (actions).
%% However, AWS
%% Identity and Access Management (IAM) users don't have any permissions
%% by default. You must
%% grant them explicit permission to perform specific actions. For more
%% information, see
%% Access Control Using
%% AWS Identity and Access Management (IAM):
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html.
%%
%% For conceptual information and underlying REST API, see Retrieving Vault
%% Metadata in
%% Amazon S3 Glacier:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/retrieving-vault-info.html
%% and Describe Vault :
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-get.html in
%% the
%% Amazon Glacier Developer Guide.
-spec describe_vault(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_vault_output(), tuple()} |
    {error, any()} |
    {error, describe_vault_errors(), tuple()}.
describe_vault(Client, AccountId, VaultName)
  when is_map(Client) ->
    describe_vault(Client, AccountId, VaultName, #{}, #{}).

-spec describe_vault(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_vault_output(), tuple()} |
    {error, any()} |
    {error, describe_vault_errors(), tuple()}.
describe_vault(Client, AccountId, VaultName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_vault(Client, AccountId, VaultName, QueryMap, HeadersMap, []).

-spec describe_vault(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_vault_output(), tuple()} |
    {error, any()} |
    {error, describe_vault_errors(), tuple()}.
describe_vault(Client, AccountId, VaultName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(AccountId), "/vaults/", aws_util:encode_uri(VaultName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation returns the current data retrieval policy for the
%% account and region
%% specified in the GET request.
%%
%% For more information about data retrieval policies, see
%% Amazon Glacier Data Retrieval Policies:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/data-retrieval-policy.html.
-spec get_data_retrieval_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_data_retrieval_policy_output(), tuple()} |
    {error, any()} |
    {error, get_data_retrieval_policy_errors(), tuple()}.
get_data_retrieval_policy(Client, AccountId)
  when is_map(Client) ->
    get_data_retrieval_policy(Client, AccountId, #{}, #{}).

-spec get_data_retrieval_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_data_retrieval_policy_output(), tuple()} |
    {error, any()} |
    {error, get_data_retrieval_policy_errors(), tuple()}.
get_data_retrieval_policy(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_retrieval_policy(Client, AccountId, QueryMap, HeadersMap, []).

-spec get_data_retrieval_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_data_retrieval_policy_output(), tuple()} |
    {error, any()} |
    {error, get_data_retrieval_policy_errors(), tuple()}.
get_data_retrieval_policy(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(AccountId), "/policies/data-retrieval"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation downloads the output of the job you initiated using
%% `InitiateJob'.
%%
%% Depending on the job type you specified when you initiated the
%% job, the output will be either the content of an archive or a vault
%% inventory.
%%
%% You can download all the job output or download a portion of the output by
%% specifying
%% a byte range. In the case of an archive retrieval job, depending on the
%% byte range you
%% specify, Amazon S3 Glacier (Glacier) returns the checksum for the portion
%% of the data. You can compute the
%% checksum on the client and verify that the values match to ensure the
%% portion you downloaded
%% is the correct data.
%%
%% A job ID will not expire for at least 24 hours after Glacier completes the
%% job. That
%% a byte range. For both archive and inventory retrieval jobs, you should
%% verify the downloaded
%% size against the size returned in the headers from the
%% Get Job Output response.
%%
%% For archive retrieval jobs, you should also verify that the size is what
%% you expected. If
%% you download a portion of the output, the expected size is based on the
%% range of bytes
%% you specified. For example, if you specify a range of
%% `bytes=0-1048575', you should
%% verify your download size is 1,048,576 bytes. If you download an entire
%% archive, the
%% expected size is the size of the archive when you uploaded it to Amazon S3
%% Glacier
%% The expected size is also returned in the headers from the
%% Get Job Output response.
%%
%% In the case of an archive retrieval job, depending on the byte range you
%% specify, Glacier returns the checksum for the portion of the data. To
%% ensure the portion you downloaded
%% is the correct data, compute the checksum on the client, verify that the
%% values match,
%% and verify that the size is what you expected.
%%
%% A job ID does not expire for at least 24 hours after Glacier completes the
%% job. That is, you can download the job output within the 24 hours period
%% after Amazon
%% Glacier completes the job.
%%
%% An AWS account has full permission to perform all operations (actions).
%% However, AWS
%% Identity and Access Management (IAM) users don't have any permissions
%% by default. You must
%% grant them explicit permission to perform specific actions. For more
%% information, see
%% Access Control Using
%% AWS Identity and Access Management (IAM):
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html.
%%
%% For conceptual information and the underlying REST API, see Downloading a
%% Vault Inventory:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-inventory.html,
%% Downloading an
%% Archive:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/downloading-an-archive.html,
%% and Get Job Output :
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/api-job-output-get.html
-spec get_job_output(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_job_output_output(), tuple()} |
    {error, any()} |
    {error, get_job_output_errors(), tuple()}.
get_job_output(Client, AccountId, JobId, VaultName)
  when is_map(Client) ->
    get_job_output(Client, AccountId, JobId, VaultName, #{}, #{}).

-spec get_job_output(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_job_output_output(), tuple()} |
    {error, any()} |
    {error, get_job_output_errors(), tuple()}.
get_job_output(Client, AccountId, JobId, VaultName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_job_output(Client, AccountId, JobId, VaultName, QueryMap, HeadersMap, []).

-spec get_job_output(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_job_output_output(), tuple()} |
    {error, any()} |
    {error, get_job_output_errors(), tuple()}.
get_job_output(Client, AccountId, JobId, VaultName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(AccountId), "/vaults/", aws_util:encode_uri(VaultName), "/jobs/", aws_util:encode_uri(JobId), "/output"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"Range">>, maps:get(<<"Range">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Accept-Ranges">>, <<"acceptRanges">>},
            {<<"x-amz-archive-description">>, <<"archiveDescription">>},
            {<<"x-amz-sha256-tree-hash">>, <<"checksum">>},
            {<<"Content-Range">>, <<"contentRange">>},
            {<<"Content-Type">>, <<"contentType">>}
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

%% @doc This operation retrieves the `access-policy' subresource set on
%% the vault;
%% for more information on setting this subresource, see Set Vault Access
%% Policy
%% (PUT access-policy):
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/api-SetVaultAccessPolicy.html.
%%
%% If there is no access policy set on the vault, the
%% operation returns a `404 Not found' error. For more information about
%% vault
%% access policies, see Amazon Glacier Access Control
%% with Vault Access Policies:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html.
-spec get_vault_access_policy(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_vault_access_policy_output(), tuple()} |
    {error, any()} |
    {error, get_vault_access_policy_errors(), tuple()}.
get_vault_access_policy(Client, AccountId, VaultName)
  when is_map(Client) ->
    get_vault_access_policy(Client, AccountId, VaultName, #{}, #{}).

-spec get_vault_access_policy(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_vault_access_policy_output(), tuple()} |
    {error, any()} |
    {error, get_vault_access_policy_errors(), tuple()}.
get_vault_access_policy(Client, AccountId, VaultName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_vault_access_policy(Client, AccountId, VaultName, QueryMap, HeadersMap, []).

-spec get_vault_access_policy(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_vault_access_policy_output(), tuple()} |
    {error, any()} |
    {error, get_vault_access_policy_errors(), tuple()}.
get_vault_access_policy(Client, AccountId, VaultName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(AccountId), "/vaults/", aws_util:encode_uri(VaultName), "/access-policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation retrieves the following attributes from the
%% `lock-policy'
%% subresource set on the specified vault:
%%
%% The vault lock policy set on the vault.
%%
%% The state of the vault lock, which is either `InProgess' or
%% `Locked'.
%%
%% When the lock ID expires. The lock ID is used to complete the vault
%% locking
%% process.
%%
%% When the vault lock was initiated and put into the `InProgress'
%% state.
%%
%% A vault lock is put into the `InProgress' state by calling
%% `InitiateVaultLock'. A vault lock is put into the `Locked' state
%% by
%% calling `CompleteVaultLock'. You can abort the vault locking process
%% by
%% calling `AbortVaultLock'. For more information about the vault locking
%% process, Amazon
%% Glacier Vault Lock:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html.
%%
%% If there is no vault lock policy set on the vault, the operation returns a
%% ```
%% 404 Not found''' error. For more information about vault lock
%% policies, Amazon
%% Glacier Access Control with Vault Lock Policies:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock-policy.html.
-spec get_vault_lock(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_vault_lock_output(), tuple()} |
    {error, any()} |
    {error, get_vault_lock_errors(), tuple()}.
get_vault_lock(Client, AccountId, VaultName)
  when is_map(Client) ->
    get_vault_lock(Client, AccountId, VaultName, #{}, #{}).

-spec get_vault_lock(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_vault_lock_output(), tuple()} |
    {error, any()} |
    {error, get_vault_lock_errors(), tuple()}.
get_vault_lock(Client, AccountId, VaultName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_vault_lock(Client, AccountId, VaultName, QueryMap, HeadersMap, []).

-spec get_vault_lock(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_vault_lock_output(), tuple()} |
    {error, any()} |
    {error, get_vault_lock_errors(), tuple()}.
get_vault_lock(Client, AccountId, VaultName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(AccountId), "/vaults/", aws_util:encode_uri(VaultName), "/lock-policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation retrieves the `notification-configuration'
%% subresource of
%% the specified vault.
%%
%% For information about setting a notification configuration on a vault, see
%% `SetVaultNotifications'. If a notification configuration for a vault
%% is not
%% set, the operation returns a `404 Not Found' error. For more
%% information about
%% vault notifications, see Configuring Vault
%% Notifications in Amazon S3 Glacier:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html.
%%
%% An AWS account has full permission to perform all operations (actions).
%% However, AWS
%% Identity and Access Management (IAM) users don't have any permissions
%% by default. You must
%% grant them explicit permission to perform specific actions. For more
%% information, see
%% Access Control Using
%% AWS Identity and Access Management (IAM):
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html.
%%
%% For conceptual information and underlying REST API, see Configuring Vault
%% Notifications in Amazon S3 Glacier:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html
%% and Get Vault Notification
%% Configuration :
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-notifications-get.html
%% in the Amazon Glacier Developer Guide.
-spec get_vault_notifications(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_vault_notifications_output(), tuple()} |
    {error, any()} |
    {error, get_vault_notifications_errors(), tuple()}.
get_vault_notifications(Client, AccountId, VaultName)
  when is_map(Client) ->
    get_vault_notifications(Client, AccountId, VaultName, #{}, #{}).

-spec get_vault_notifications(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_vault_notifications_output(), tuple()} |
    {error, any()} |
    {error, get_vault_notifications_errors(), tuple()}.
get_vault_notifications(Client, AccountId, VaultName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_vault_notifications(Client, AccountId, VaultName, QueryMap, HeadersMap, []).

-spec get_vault_notifications(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_vault_notifications_output(), tuple()} |
    {error, any()} |
    {error, get_vault_notifications_errors(), tuple()}.
get_vault_notifications(Client, AccountId, VaultName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(AccountId), "/vaults/", aws_util:encode_uri(VaultName), "/notification-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation initiates a job of the specified type, which can be a
%% select, an archival retrieval,
%% or a vault retrieval.
%%
%% For more information about using this operation,
%% see the documentation for the underlying REST API Initiate
%% a Job:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/api-initiate-job-post.html.
-spec initiate_job(aws_client:aws_client(), binary() | list(), binary() | list(), initiate_job_input()) ->
    {ok, initiate_job_output(), tuple()} |
    {error, any()} |
    {error, initiate_job_errors(), tuple()}.
initiate_job(Client, AccountId, VaultName, Input) ->
    initiate_job(Client, AccountId, VaultName, Input, []).

-spec initiate_job(aws_client:aws_client(), binary() | list(), binary() | list(), initiate_job_input(), proplists:proplist()) ->
    {ok, initiate_job_output(), tuple()} |
    {error, any()} |
    {error, initiate_job_errors(), tuple()}.
initiate_job(Client, AccountId, VaultName, Input0, Options0) ->
    Method = post,
    Path = ["/", aws_util:encode_uri(AccountId), "/vaults/", aws_util:encode_uri(VaultName), "/jobs"],
    SuccessStatusCode = 202,
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-job-id">>, <<"jobId">>},
            {<<"x-amz-job-output-path">>, <<"jobOutputPath">>},
            {<<"Location">>, <<"location">>}
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

%% @doc This operation initiates a multipart upload.
%%
%% Amazon S3 Glacier creates a multipart
%% upload resource and returns its ID in the response. The multipart upload
%% ID is used in
%% subsequent requests to upload parts of an archive (see
%% `UploadMultipartPart').
%%
%% When you initiate a multipart upload, you specify the part size in number
%% of bytes.
%% The part size must be a megabyte (1024 KB) multiplied by a power of 2-for
%% example, 1048576
%% (1 MB), 2097152 (2 MB), 4194304 (4 MB), 8388608 (8 MB), and so on. The
%% minimum allowable
%% part size is 1 MB, and the maximum is 4 GB.
%%
%% Every part you upload to this resource (see `UploadMultipartPart'),
%% except the last one, must have the same size. The last one can be the same
%% size or smaller.
%% For example, suppose you want to upload a 16.2 MB file. If you initiate
%% the multipart
%% upload with a part size of 4 MB, you will upload four parts of 4 MB each
%% and one part of
%% 0.2 MB.
%%
%% You don't need to know the size of the archive when you start a
%% multipart upload
%% because Amazon S3 Glacier does not require you to specify the overall
%% archive
%% size.
%%
%% After you complete the multipart upload, Amazon S3 Glacier (Glacier)
%% removes the multipart upload
%% resource referenced by the ID. Glacier also removes the multipart upload
%% resource if
%% you cancel the multipart upload or it may be removed if there is no
%% activity for a period
%% of 24 hours.
%%
%% An AWS account has full permission to perform all operations (actions).
%% However, AWS
%% Identity and Access Management (IAM) users don't have any permissions
%% by default. You must
%% grant them explicit permission to perform specific actions. For more
%% information, see
%% Access Control Using
%% AWS Identity and Access Management (IAM):
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html.
%%
%% For conceptual information and underlying REST API, see Uploading Large
%% Archives in
%% Parts (Multipart Upload):
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-archive-mpu.html
%% and Initiate Multipart
%% Upload:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-initiate-upload.html
%% in the Amazon Glacier Developer Guide.
-spec initiate_multipart_upload(aws_client:aws_client(), binary() | list(), binary() | list(), initiate_multipart_upload_input()) ->
    {ok, initiate_multipart_upload_output(), tuple()} |
    {error, any()} |
    {error, initiate_multipart_upload_errors(), tuple()}.
initiate_multipart_upload(Client, AccountId, VaultName, Input) ->
    initiate_multipart_upload(Client, AccountId, VaultName, Input, []).

-spec initiate_multipart_upload(aws_client:aws_client(), binary() | list(), binary() | list(), initiate_multipart_upload_input(), proplists:proplist()) ->
    {ok, initiate_multipart_upload_output(), tuple()} |
    {error, any()} |
    {error, initiate_multipart_upload_errors(), tuple()}.
initiate_multipart_upload(Client, AccountId, VaultName, Input0, Options0) ->
    Method = post,
    Path = ["/", aws_util:encode_uri(AccountId), "/vaults/", aws_util:encode_uri(VaultName), "/multipart-uploads"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-archive-description">>, <<"archiveDescription">>},
                       {<<"x-amz-part-size">>, <<"partSize">>}
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
            {<<"Location">>, <<"location">>},
            {<<"x-amz-multipart-upload-id">>, <<"uploadId">>}
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

%% @doc This operation initiates the vault locking process by doing the
%% following:
%%
%% Installing a vault lock policy on the specified vault.
%%
%% Setting the lock state of vault lock to `InProgress'.
%%
%% Returning a lock ID, which is used to complete the vault locking
%% process.
%%
%% You can set one vault lock policy for each vault and this policy can be up
%% to 20 KB
%% in size. For more information about vault lock policies, see Amazon
%% Glacier Access Control with
%% Vault Lock Policies:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock-policy.html.
%%
%% You must complete the vault locking process within 24 hours after the
%% vault lock
%% enters the `InProgress' state. After the 24 hour window ends, the lock
%% ID
%% expires, the vault automatically exits the `InProgress' state, and the
%% vault
%% lock policy is removed from the vault. You call `CompleteVaultLock' to
%% complete the vault locking process by setting the state of the vault lock
%% to
%% `Locked'.
%%
%% After a vault lock is in the `Locked' state, you cannot initiate a new
%% vault lock for the vault.
%%
%% You can abort the vault locking process by calling `AbortVaultLock'.
%% You can get the state of the vault lock by calling `GetVaultLock'. For
%% more
%% information about the vault locking process, Amazon Glacier Vault
%% Lock:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html.
%%
%% If this operation is called when the vault lock is in the `InProgress'
%% state, the operation returns an `AccessDeniedException' error. When
%% the vault
%% lock is in the `InProgress' state you must call `AbortVaultLock'
%% before you can initiate a new vault lock policy.
-spec initiate_vault_lock(aws_client:aws_client(), binary() | list(), binary() | list(), initiate_vault_lock_input()) ->
    {ok, initiate_vault_lock_output(), tuple()} |
    {error, any()} |
    {error, initiate_vault_lock_errors(), tuple()}.
initiate_vault_lock(Client, AccountId, VaultName, Input) ->
    initiate_vault_lock(Client, AccountId, VaultName, Input, []).

-spec initiate_vault_lock(aws_client:aws_client(), binary() | list(), binary() | list(), initiate_vault_lock_input(), proplists:proplist()) ->
    {ok, initiate_vault_lock_output(), tuple()} |
    {error, any()} |
    {error, initiate_vault_lock_errors(), tuple()}.
initiate_vault_lock(Client, AccountId, VaultName, Input0, Options0) ->
    Method = post,
    Path = ["/", aws_util:encode_uri(AccountId), "/vaults/", aws_util:encode_uri(VaultName), "/lock-policy"],
    SuccessStatusCode = 201,
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-lock-id">>, <<"lockId">>}
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

%% @doc This operation lists jobs for a vault, including jobs that are
%% in-progress and jobs
%% that have recently finished.
%%
%% The List Job operation returns a list of these jobs sorted by job
%% initiation
%% time.
%%
%% Amazon Glacier retains recently completed jobs for a period before
%% deleting them;
%% however, it eventually removes completed jobs. The output of completed
%% jobs can be
%% retrieved. Retaining completed jobs for a period of time after they have
%% completed
%% enables you to get a job output in the event you miss the job completion
%% notification or
%% your first attempt to download it fails. For example, suppose you start an
%% archive
%% retrieval job to download an archive. After the job completes, you start
%% to download the
%% archive but encounter a network error. In this scenario, you can retry and
%% download the
%% archive while the job exists.
%%
%% The List Jobs operation supports pagination. You should always check the
%% response `Marker' field.
%% If there are no more jobs to list, the `Marker' field is set to
%% `null'. If there are more jobs to list,
%% the `Marker' field is set to a non-null value, which you can use to
%% continue the pagination of the list.
%% To return a list of jobs that begins at a specific job,
%% set the marker request parameter to the `Marker' value for that job
%% that you obtained from a previous List Jobs request.
%%
%% You can set a maximum limit for the number of jobs returned in the
%% response by
%% specifying the `limit' parameter in the request. The default limit is
%% 50. The
%% number of jobs returned might be fewer than the limit, but the number of
%% returned jobs
%% never exceeds the limit.
%%
%% Additionally, you can filter the jobs list returned by specifying the
%% optional
%% `statuscode' parameter or `completed' parameter, or both. Using
%% the `statuscode' parameter, you can specify to return only jobs that
%% match
%% either the `InProgress', `Succeeded', or `Failed' status.
%% Using the `completed' parameter, you can specify to return only jobs
%% that were
%% completed (`true') or jobs that were not completed
%% (`false').
%%
%% For more information about using this operation,
%% see the documentation for the underlying REST API List Jobs:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/api-jobs-get.html.
-spec list_jobs(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client, AccountId, VaultName)
  when is_map(Client) ->
    list_jobs(Client, AccountId, VaultName, #{}, #{}).

-spec list_jobs(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client, AccountId, VaultName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_jobs(Client, AccountId, VaultName, QueryMap, HeadersMap, []).

-spec list_jobs(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client, AccountId, VaultName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(AccountId), "/vaults/", aws_util:encode_uri(VaultName), "/jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"completed">>, maps:get(<<"completed">>, QueryMap, undefined)},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"statuscode">>, maps:get(<<"statuscode">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation lists in-progress multipart uploads for the specified
%% vault.
%%
%% An
%% in-progress multipart upload is a multipart upload that has been initiated
%% by an `InitiateMultipartUpload' request, but has not yet been
%% completed or aborted.
%% The list returned in the List Multipart Upload response has no guaranteed
%% order.
%%
%% The List Multipart Uploads operation supports pagination. By default, this
%% operation
%% returns up to 50 multipart uploads in the response. You should always
%% check the response
%% for a `marker' at which to continue the list; if there are no more
%% items the
%% `marker' is `null'. To return a list of multipart uploads that
%% begins at a specific upload, set the `marker' request parameter to the
%% value you
%% obtained from a previous List Multipart Upload request. You can also limit
%% the number of
%% uploads returned in the response by specifying the `limit' parameter
%% in the
%% request.
%%
%% Note the difference between this operation and listing parts
%% (`ListParts'). The List Multipart Uploads operation lists all
%% multipart uploads
%% for a vault and does not require a multipart upload ID. The List Parts
%% operation requires a
%% multipart upload ID since parts are associated with a single upload.
%%
%% An AWS account has full permission to perform all operations (actions).
%% However, AWS
%% Identity and Access Management (IAM) users don't have any permissions
%% by default. You must
%% grant them explicit permission to perform specific actions. For more
%% information, see
%% Access Control Using
%% AWS Identity and Access Management (IAM):
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html.
%%
%% For conceptual information and the underlying REST API, see Working
%% with Archives in Amazon S3 Glacier:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html
%% and List Multipart Uploads
%% :
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-list-uploads.html
%% in the Amazon Glacier Developer Guide.
-spec list_multipart_uploads(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_multipart_uploads_output(), tuple()} |
    {error, any()} |
    {error, list_multipart_uploads_errors(), tuple()}.
list_multipart_uploads(Client, AccountId, VaultName)
  when is_map(Client) ->
    list_multipart_uploads(Client, AccountId, VaultName, #{}, #{}).

-spec list_multipart_uploads(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_multipart_uploads_output(), tuple()} |
    {error, any()} |
    {error, list_multipart_uploads_errors(), tuple()}.
list_multipart_uploads(Client, AccountId, VaultName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_multipart_uploads(Client, AccountId, VaultName, QueryMap, HeadersMap, []).

-spec list_multipart_uploads(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_multipart_uploads_output(), tuple()} |
    {error, any()} |
    {error, list_multipart_uploads_errors(), tuple()}.
list_multipart_uploads(Client, AccountId, VaultName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(AccountId), "/vaults/", aws_util:encode_uri(VaultName), "/multipart-uploads"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation lists the parts of an archive that have been uploaded
%% in a specific
%% multipart upload.
%%
%% You can make this request at any time during an in-progress multipart
%% upload before you complete the upload (see `CompleteMultipartUpload'.
%% List
%% Parts returns an error for completed uploads. The list returned in the
%% List Parts response
%% is sorted by part range.
%%
%% The List Parts operation supports pagination. By default, this operation
%% returns up
%% to 50 uploaded parts in the response. You should always check the response
%% for a
%% `marker' at which to continue the list; if there are no more items the
%% `marker' is `null'. To return a list of parts that begins at a
%% specific part, set the `marker' request parameter to the value you
%% obtained from
%% a previous List Parts request. You can also limit the number of parts
%% returned in the
%% response by specifying the `limit' parameter in the request.
%%
%% An AWS account has full permission to perform all operations (actions).
%% However, AWS
%% Identity and Access Management (IAM) users don't have any permissions
%% by default. You must
%% grant them explicit permission to perform specific actions. For more
%% information, see
%% Access Control Using
%% AWS Identity and Access Management (IAM):
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html.
%%
%% For conceptual information and the underlying REST API, see Working
%% with Archives in Amazon S3 Glacier:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html
%% and List Parts:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-list-parts.html
%% in the
%% Amazon Glacier Developer Guide.
-spec list_parts(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, list_parts_output(), tuple()} |
    {error, any()} |
    {error, list_parts_errors(), tuple()}.
list_parts(Client, AccountId, UploadId, VaultName)
  when is_map(Client) ->
    list_parts(Client, AccountId, UploadId, VaultName, #{}, #{}).

-spec list_parts(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_parts_output(), tuple()} |
    {error, any()} |
    {error, list_parts_errors(), tuple()}.
list_parts(Client, AccountId, UploadId, VaultName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_parts(Client, AccountId, UploadId, VaultName, QueryMap, HeadersMap, []).

-spec list_parts(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_parts_output(), tuple()} |
    {error, any()} |
    {error, list_parts_errors(), tuple()}.
list_parts(Client, AccountId, UploadId, VaultName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(AccountId), "/vaults/", aws_util:encode_uri(VaultName), "/multipart-uploads/", aws_util:encode_uri(UploadId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation lists the provisioned capacity units for the specified
%% AWS
%% account.
-spec list_provisioned_capacity(aws_client:aws_client(), binary() | list()) ->
    {ok, list_provisioned_capacity_output(), tuple()} |
    {error, any()} |
    {error, list_provisioned_capacity_errors(), tuple()}.
list_provisioned_capacity(Client, AccountId)
  when is_map(Client) ->
    list_provisioned_capacity(Client, AccountId, #{}, #{}).

-spec list_provisioned_capacity(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_provisioned_capacity_output(), tuple()} |
    {error, any()} |
    {error, list_provisioned_capacity_errors(), tuple()}.
list_provisioned_capacity(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_provisioned_capacity(Client, AccountId, QueryMap, HeadersMap, []).

-spec list_provisioned_capacity(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_provisioned_capacity_output(), tuple()} |
    {error, any()} |
    {error, list_provisioned_capacity_errors(), tuple()}.
list_provisioned_capacity(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(AccountId), "/provisioned-capacity"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation lists all the tags attached to a vault.
%%
%% The operation returns an empty
%% map if there are no tags. For more information about tags, see Tagging
%% Amazon S3 Glacier
%% Resources:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/tagging.html.
-spec list_tags_for_vault(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_tags_for_vault_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_vault_errors(), tuple()}.
list_tags_for_vault(Client, AccountId, VaultName)
  when is_map(Client) ->
    list_tags_for_vault(Client, AccountId, VaultName, #{}, #{}).

-spec list_tags_for_vault(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_vault_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_vault_errors(), tuple()}.
list_tags_for_vault(Client, AccountId, VaultName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_vault(Client, AccountId, VaultName, QueryMap, HeadersMap, []).

-spec list_tags_for_vault(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_vault_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_vault_errors(), tuple()}.
list_tags_for_vault(Client, AccountId, VaultName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(AccountId), "/vaults/", aws_util:encode_uri(VaultName), "/tags"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation lists all vaults owned by the calling user's
%% account.
%%
%% The list
%% returned in the response is ASCII-sorted by vault name.
%%
%% By default, this operation returns up to 10 items. If there are more
%% vaults to
%% list, the response `marker' field contains the vault Amazon Resource
%% Name (ARN)
%% at which to continue the list with a new List Vaults request; otherwise,
%% the
%% `marker' field is `null'. To return a list of vaults that begins
%% at a specific vault, set the `marker' request parameter to the vault
%% ARN you
%% obtained from a previous List Vaults request. You can also limit the
%% number of vaults
%% returned in the response by specifying the `limit' parameter in the
%% request.
%%
%% An AWS account has full permission to perform all operations (actions).
%% However, AWS
%% Identity and Access Management (IAM) users don't have any permissions
%% by default. You must
%% grant them explicit permission to perform specific actions. For more
%% information, see
%% Access Control Using
%% AWS Identity and Access Management (IAM):
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html.
%%
%% For conceptual information and underlying REST API, see Retrieving Vault
%% Metadata in
%% Amazon S3 Glacier:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/retrieving-vault-info.html
%% and List Vaults :
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vaults-get.html
%% in the
%% Amazon Glacier Developer Guide.
-spec list_vaults(aws_client:aws_client(), binary() | list()) ->
    {ok, list_vaults_output(), tuple()} |
    {error, any()} |
    {error, list_vaults_errors(), tuple()}.
list_vaults(Client, AccountId)
  when is_map(Client) ->
    list_vaults(Client, AccountId, #{}, #{}).

-spec list_vaults(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_vaults_output(), tuple()} |
    {error, any()} |
    {error, list_vaults_errors(), tuple()}.
list_vaults(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_vaults(Client, AccountId, QueryMap, HeadersMap, []).

-spec list_vaults(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_vaults_output(), tuple()} |
    {error, any()} |
    {error, list_vaults_errors(), tuple()}.
list_vaults(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(AccountId), "/vaults"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation purchases a provisioned capacity unit for an AWS
%% account.
-spec purchase_provisioned_capacity(aws_client:aws_client(), binary() | list(), purchase_provisioned_capacity_input()) ->
    {ok, purchase_provisioned_capacity_output(), tuple()} |
    {error, any()} |
    {error, purchase_provisioned_capacity_errors(), tuple()}.
purchase_provisioned_capacity(Client, AccountId, Input) ->
    purchase_provisioned_capacity(Client, AccountId, Input, []).

-spec purchase_provisioned_capacity(aws_client:aws_client(), binary() | list(), purchase_provisioned_capacity_input(), proplists:proplist()) ->
    {ok, purchase_provisioned_capacity_output(), tuple()} |
    {error, any()} |
    {error, purchase_provisioned_capacity_errors(), tuple()}.
purchase_provisioned_capacity(Client, AccountId, Input0, Options0) ->
    Method = post,
    Path = ["/", aws_util:encode_uri(AccountId), "/provisioned-capacity"],
    SuccessStatusCode = 201,
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-capacity-id">>, <<"capacityId">>}
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

%% @doc This operation removes one or more tags from the set of tags attached
%% to a vault.
%%
%% For
%% more information about tags, see Tagging Amazon S3 Glacier Resources:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/tagging.html.
%% This operation is idempotent. The operation will be successful, even if
%% there are no tags
%% attached to the vault.
-spec remove_tags_from_vault(aws_client:aws_client(), binary() | list(), binary() | list(), remove_tags_from_vault_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_tags_from_vault_errors(), tuple()}.
remove_tags_from_vault(Client, AccountId, VaultName, Input) ->
    remove_tags_from_vault(Client, AccountId, VaultName, Input, []).

-spec remove_tags_from_vault(aws_client:aws_client(), binary() | list(), binary() | list(), remove_tags_from_vault_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_tags_from_vault_errors(), tuple()}.
remove_tags_from_vault(Client, AccountId, VaultName, Input0, Options0) ->
    Method = post,
    Path = ["/", aws_util:encode_uri(AccountId), "/vaults/", aws_util:encode_uri(VaultName), "/tags?operation=remove"],
    SuccessStatusCode = 204,
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

%% @doc This operation sets and then enacts a data retrieval policy in the
%% region specified
%% in the PUT request.
%%
%% You can set one policy per region for an AWS account. The policy is
%% enacted within a few minutes of a successful PUT operation.
%%
%% The set policy operation does not affect retrieval jobs that were in
%% progress before
%% the policy was enacted. For more information about data retrieval
%% policies, see Amazon
%% Glacier Data Retrieval Policies:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/data-retrieval-policy.html.
-spec set_data_retrieval_policy(aws_client:aws_client(), binary() | list(), set_data_retrieval_policy_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_data_retrieval_policy_errors(), tuple()}.
set_data_retrieval_policy(Client, AccountId, Input) ->
    set_data_retrieval_policy(Client, AccountId, Input, []).

-spec set_data_retrieval_policy(aws_client:aws_client(), binary() | list(), set_data_retrieval_policy_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_data_retrieval_policy_errors(), tuple()}.
set_data_retrieval_policy(Client, AccountId, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(AccountId), "/policies/data-retrieval"],
    SuccessStatusCode = 204,
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

%% @doc This operation configures an access policy for a vault and will
%% overwrite an existing
%% policy.
%%
%% To configure a vault access policy, send a PUT request to the
%% `access-policy' subresource of the vault. An access policy is specific
%% to a
%% vault and is also called a vault subresource. You can set one access
%% policy per vault and
%% the policy can be up to 20 KB in size. For more information about vault
%% access policies,
%% see Amazon Glacier Access Control with Vault Access Policies:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html.
-spec set_vault_access_policy(aws_client:aws_client(), binary() | list(), binary() | list(), set_vault_access_policy_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_vault_access_policy_errors(), tuple()}.
set_vault_access_policy(Client, AccountId, VaultName, Input) ->
    set_vault_access_policy(Client, AccountId, VaultName, Input, []).

-spec set_vault_access_policy(aws_client:aws_client(), binary() | list(), binary() | list(), set_vault_access_policy_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_vault_access_policy_errors(), tuple()}.
set_vault_access_policy(Client, AccountId, VaultName, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(AccountId), "/vaults/", aws_util:encode_uri(VaultName), "/access-policy"],
    SuccessStatusCode = 204,
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

%% @doc This operation configures notifications that will be sent when
%% specific events happen
%% to a vault.
%%
%% By default, you don't get any notifications.
%%
%% To configure vault notifications, send a PUT request to the
%% `notification-configuration' subresource of the vault. The request
%% should
%% include a JSON document that provides an Amazon SNS topic and specific
%% events for which you
%% want Amazon S3 Glacier to send notifications to the topic.
%%
%% Amazon SNS topics must grant permission to the vault to be allowed to
%% publish
%% notifications to the topic. You can configure a vault to publish a
%% notification for the
%% following vault events:
%%
%% ArchiveRetrievalCompleted This event occurs when a
%% job that was initiated for an archive retrieval is completed
%% (`InitiateJob'). The status of the completed job can be
%% &quot;Succeeded&quot; or
%% &quot;Failed&quot;. The notification sent to the SNS topic is the same
%% output as returned from
%% `DescribeJob'.
%%
%% InventoryRetrievalCompleted This event occurs when a
%% job that was initiated for an inventory retrieval is completed
%% (`InitiateJob'). The status of the completed job can be
%% &quot;Succeeded&quot; or
%% &quot;Failed&quot;. The notification sent to the SNS topic is the same
%% output as returned from
%% `DescribeJob'.
%%
%% An AWS account has full permission to perform all operations (actions).
%% However, AWS
%% Identity and Access Management (IAM) users don't have any permissions
%% by default. You must
%% grant them explicit permission to perform specific actions. For more
%% information, see
%% Access Control Using
%% AWS Identity and Access Management (IAM):
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html.
%%
%% For conceptual information and underlying REST API, see Configuring Vault
%% Notifications in Amazon S3 Glacier:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html
%% and Set Vault Notification
%% Configuration :
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-notifications-put.html
%% in the Amazon Glacier Developer Guide.
-spec set_vault_notifications(aws_client:aws_client(), binary() | list(), binary() | list(), set_vault_notifications_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_vault_notifications_errors(), tuple()}.
set_vault_notifications(Client, AccountId, VaultName, Input) ->
    set_vault_notifications(Client, AccountId, VaultName, Input, []).

-spec set_vault_notifications(aws_client:aws_client(), binary() | list(), binary() | list(), set_vault_notifications_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_vault_notifications_errors(), tuple()}.
set_vault_notifications(Client, AccountId, VaultName, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(AccountId), "/vaults/", aws_util:encode_uri(VaultName), "/notification-configuration"],
    SuccessStatusCode = 204,
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

%% @doc This operation adds an archive to a vault.
%%
%% This is a synchronous operation, and for a
%% successful upload, your data is durably persisted. Amazon S3 Glacier
%% returns the archive ID in
%% the `x-amz-archive-id' header of the response.
%%
%% You must use the archive ID to access your data in Amazon S3 Glacier.
%% After you upload
%% an archive, you should save the archive ID returned so that you can
%% retrieve or delete the
%% archive later. Besides saving the archive ID, you can also index it and
%% give it a friendly
%% name to allow for better searching. You can also use the optional archive
%% description field
%% to specify how the archive is referred to in an external index of
%% archives, such as you
%% might create in Amazon DynamoDB. You can also get the vault inventory to
%% obtain a list of
%% archive IDs in a vault. For more information, see `InitiateJob'.
%%
%% You must provide a SHA256 tree hash of the data you are uploading. For
%% information
%% about computing a SHA256 tree hash, see Computing Checksums:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/checksum-calculations.html.
%%
%% You can optionally specify an archive description of up to 1,024 printable
%% ASCII
%% characters. You can get the archive description when you either retrieve
%% the archive or get
%% the vault inventory. For more information, see `InitiateJob'. Amazon
%% Glacier does not interpret the description in any way. An archive
%% description does not need
%% to be unique. You cannot use the description to retrieve or sort the
%% archive list.
%%
%% Archives are immutable. After you upload an archive, you cannot edit the
%% archive or
%% its description.
%%
%% An AWS account has full permission to perform all operations (actions).
%% However, AWS
%% Identity and Access Management (IAM) users don't have any permissions
%% by default. You must
%% grant them explicit permission to perform specific actions. For more
%% information, see
%% Access Control Using
%% AWS Identity and Access Management (IAM):
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html.
%%
%% For conceptual information and underlying REST API, see Uploading an
%% Archive in Amazon
%% Glacier:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-an-archive.html
%% and Upload Archive:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-post.html
%% in the
%% Amazon Glacier Developer Guide.
-spec upload_archive(aws_client:aws_client(), binary() | list(), binary() | list(), upload_archive_input()) ->
    {ok, archive_creation_output(), tuple()} |
    {error, any()} |
    {error, upload_archive_errors(), tuple()}.
upload_archive(Client, AccountId, VaultName, Input) ->
    upload_archive(Client, AccountId, VaultName, Input, []).

-spec upload_archive(aws_client:aws_client(), binary() | list(), binary() | list(), upload_archive_input(), proplists:proplist()) ->
    {ok, archive_creation_output(), tuple()} |
    {error, any()} |
    {error, upload_archive_errors(), tuple()}.
upload_archive(Client, AccountId, VaultName, Input0, Options0) ->
    Method = post,
    Path = ["/", aws_util:encode_uri(AccountId), "/vaults/", aws_util:encode_uri(VaultName), "/archives"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-archive-description">>, <<"archiveDescription">>},
                       {<<"x-amz-sha256-tree-hash">>, <<"checksum">>}
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
            {<<"x-amz-archive-id">>, <<"archiveId">>},
            {<<"x-amz-sha256-tree-hash">>, <<"checksum">>},
            {<<"Location">>, <<"location">>}
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

%% @doc This operation uploads a part of an archive.
%%
%% You can upload archive parts in any
%% order. You can also upload them in parallel. You can upload up to 10,000
%% parts for a
%% multipart upload.
%%
%% Amazon Glacier rejects your upload part request if any of the following
%% conditions is
%% true:
%%
%% SHA256 tree hash does not matchTo ensure that part
%% data is not corrupted in transmission, you compute a SHA256 tree hash of
%% the part and
%% include it in your request. Upon receiving the part data, Amazon S3
%% Glacier also
%% computes a SHA256 tree hash. If these hash values don't match, the
%% operation fails.
%% For information about computing a SHA256 tree hash, see Computing
%% Checksums:
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/checksum-calculations.html.
%%
%% Part size does not matchThe size of each part except
%% the last must match the size specified in the corresponding
%% `InitiateMultipartUpload' request. The size of the last part must be
%% the
%% same size as, or smaller than, the specified size.
%%
%% If you upload a part whose size is smaller than the part size you
%% specified
%% in your initiate multipart upload request and that part is not the last
%% part, then
%% the upload part request will succeed. However, the subsequent Complete
%% Multipart
%% Upload request will fail.
%%
%% Range does not alignThe byte range value in the
%% request does not align with the part size specified in the corresponding
%% initiate
%% request. For example, if you specify a part size of 4194304 bytes (4 MB),
%% then 0 to
%% 4194303 bytes (4 MB - 1) and 4194304 (4 MB) to 8388607 (8 MB - 1) are
%% valid part
%% ranges. However, if you set a range value of 2 MB to 6 MB, the range does
%% not align
%% with the part size and the upload will fail.
%%
%% This operation is idempotent. If you upload the same part multiple times,
%% the data
%% included in the most recent request overwrites the previously uploaded
%% data.
%%
%% An AWS account has full permission to perform all operations (actions).
%% However, AWS
%% Identity and Access Management (IAM) users don't have any permissions
%% by default. You must
%% grant them explicit permission to perform specific actions. For more
%% information, see
%% Access Control Using
%% AWS Identity and Access Management (IAM):
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html.
%%
%% For conceptual information and underlying REST API, see Uploading Large
%% Archives in
%% Parts (Multipart Upload):
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-archive-mpu.html
%% and Upload Part :
%% https://docs.aws.amazon.com/amazonglacier/latest/dev/api-upload-part.html
%% in the
%% Amazon Glacier Developer Guide.
-spec upload_multipart_part(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), upload_multipart_part_input()) ->
    {ok, upload_multipart_part_output(), tuple()} |
    {error, any()} |
    {error, upload_multipart_part_errors(), tuple()}.
upload_multipart_part(Client, AccountId, UploadId, VaultName, Input) ->
    upload_multipart_part(Client, AccountId, UploadId, VaultName, Input, []).

-spec upload_multipart_part(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), upload_multipart_part_input(), proplists:proplist()) ->
    {ok, upload_multipart_part_output(), tuple()} |
    {error, any()} |
    {error, upload_multipart_part_errors(), tuple()}.
upload_multipart_part(Client, AccountId, UploadId, VaultName, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(AccountId), "/vaults/", aws_util:encode_uri(VaultName), "/multipart-uploads/", aws_util:encode_uri(UploadId), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-sha256-tree-hash">>, <<"checksum">>},
                       {<<"Content-Range">>, <<"range">>}
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
            {<<"x-amz-sha256-tree-hash">>, <<"checksum">>}
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
    Client1 = Client#{service => <<"glacier">>},
    Host = build_host(<<"glacier">>, Client1),
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
