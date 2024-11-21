%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is the AWS HealthOmics API Reference.
%%
%% For an introduction to the service, see What is AWS HealthOmics?:
%% https://docs.aws.amazon.com/omics/latest/dev/ in the
%% AWS HealthOmics User Guide.
-module(aws_omics).

-export([abort_multipart_read_set_upload/4,
         abort_multipart_read_set_upload/5,
         accept_share/3,
         accept_share/4,
         batch_delete_read_set/3,
         batch_delete_read_set/4,
         cancel_annotation_import_job/3,
         cancel_annotation_import_job/4,
         cancel_run/3,
         cancel_run/4,
         cancel_variant_import_job/3,
         cancel_variant_import_job/4,
         complete_multipart_read_set_upload/4,
         complete_multipart_read_set_upload/5,
         create_annotation_store/2,
         create_annotation_store/3,
         create_annotation_store_version/3,
         create_annotation_store_version/4,
         create_multipart_read_set_upload/3,
         create_multipart_read_set_upload/4,
         create_reference_store/2,
         create_reference_store/3,
         create_run_cache/2,
         create_run_cache/3,
         create_run_group/2,
         create_run_group/3,
         create_sequence_store/2,
         create_sequence_store/3,
         create_share/2,
         create_share/3,
         create_variant_store/2,
         create_variant_store/3,
         create_workflow/2,
         create_workflow/3,
         delete_annotation_store/3,
         delete_annotation_store/4,
         delete_annotation_store_versions/3,
         delete_annotation_store_versions/4,
         delete_reference/4,
         delete_reference/5,
         delete_reference_store/3,
         delete_reference_store/4,
         delete_run/3,
         delete_run/4,
         delete_run_cache/3,
         delete_run_cache/4,
         delete_run_group/3,
         delete_run_group/4,
         delete_sequence_store/3,
         delete_sequence_store/4,
         delete_share/3,
         delete_share/4,
         delete_variant_store/3,
         delete_variant_store/4,
         delete_workflow/3,
         delete_workflow/4,
         get_annotation_import_job/2,
         get_annotation_import_job/4,
         get_annotation_import_job/5,
         get_annotation_store/2,
         get_annotation_store/4,
         get_annotation_store/5,
         get_annotation_store_version/3,
         get_annotation_store_version/5,
         get_annotation_store_version/6,
         get_read_set/4,
         get_read_set/6,
         get_read_set/7,
         get_read_set_activation_job/3,
         get_read_set_activation_job/5,
         get_read_set_activation_job/6,
         get_read_set_export_job/3,
         get_read_set_export_job/5,
         get_read_set_export_job/6,
         get_read_set_import_job/3,
         get_read_set_import_job/5,
         get_read_set_import_job/6,
         get_read_set_metadata/3,
         get_read_set_metadata/5,
         get_read_set_metadata/6,
         get_reference/4,
         get_reference/6,
         get_reference/7,
         get_reference_import_job/3,
         get_reference_import_job/5,
         get_reference_import_job/6,
         get_reference_metadata/3,
         get_reference_metadata/5,
         get_reference_metadata/6,
         get_reference_store/2,
         get_reference_store/4,
         get_reference_store/5,
         get_run/2,
         get_run/4,
         get_run/5,
         get_run_cache/2,
         get_run_cache/4,
         get_run_cache/5,
         get_run_group/2,
         get_run_group/4,
         get_run_group/5,
         get_run_task/3,
         get_run_task/5,
         get_run_task/6,
         get_sequence_store/2,
         get_sequence_store/4,
         get_sequence_store/5,
         get_share/2,
         get_share/4,
         get_share/5,
         get_variant_import_job/2,
         get_variant_import_job/4,
         get_variant_import_job/5,
         get_variant_store/2,
         get_variant_store/4,
         get_variant_store/5,
         get_workflow/2,
         get_workflow/4,
         get_workflow/5,
         list_annotation_import_jobs/2,
         list_annotation_import_jobs/3,
         list_annotation_store_versions/3,
         list_annotation_store_versions/4,
         list_annotation_stores/2,
         list_annotation_stores/3,
         list_multipart_read_set_uploads/3,
         list_multipart_read_set_uploads/4,
         list_read_set_activation_jobs/3,
         list_read_set_activation_jobs/4,
         list_read_set_export_jobs/3,
         list_read_set_export_jobs/4,
         list_read_set_import_jobs/3,
         list_read_set_import_jobs/4,
         list_read_set_upload_parts/4,
         list_read_set_upload_parts/5,
         list_read_sets/3,
         list_read_sets/4,
         list_reference_import_jobs/3,
         list_reference_import_jobs/4,
         list_reference_stores/2,
         list_reference_stores/3,
         list_references/3,
         list_references/4,
         list_run_caches/1,
         list_run_caches/3,
         list_run_caches/4,
         list_run_groups/1,
         list_run_groups/3,
         list_run_groups/4,
         list_run_tasks/2,
         list_run_tasks/4,
         list_run_tasks/5,
         list_runs/1,
         list_runs/3,
         list_runs/4,
         list_sequence_stores/2,
         list_sequence_stores/3,
         list_shares/2,
         list_shares/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_variant_import_jobs/2,
         list_variant_import_jobs/3,
         list_variant_stores/2,
         list_variant_stores/3,
         list_workflows/1,
         list_workflows/3,
         list_workflows/4,
         start_annotation_import_job/2,
         start_annotation_import_job/3,
         start_read_set_activation_job/3,
         start_read_set_activation_job/4,
         start_read_set_export_job/3,
         start_read_set_export_job/4,
         start_read_set_import_job/3,
         start_read_set_import_job/4,
         start_reference_import_job/3,
         start_reference_import_job/4,
         start_run/2,
         start_run/3,
         start_variant_import_job/2,
         start_variant_import_job/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_annotation_store/3,
         update_annotation_store/4,
         update_annotation_store_version/4,
         update_annotation_store_version/5,
         update_run_cache/3,
         update_run_cache/4,
         update_run_group/3,
         update_run_group/4,
         update_variant_store/3,
         update_variant_store/4,
         update_workflow/3,
         update_workflow/4,
         upload_read_set_part/4,
         upload_read_set_part/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% run_log_location() :: #{
%%   <<"engineLogStream">> => string(),
%%   <<"runLogStream">> => string()
%% }
-type run_log_location() :: #{binary() => any()}.


%% Example:
%% list_multipart_read_set_uploads_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_multipart_read_set_uploads_request() :: #{binary() => any()}.

%% Example:
%% abort_multipart_read_set_upload_request() :: #{}
-type abort_multipart_read_set_upload_request() :: #{}.


%% Example:
%% annotation_store_item() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => [string()],
%%   <<"reference">> => list(),
%%   <<"sseConfig">> => sse_config(),
%%   <<"status">> => string(),
%%   <<"statusMessage">> => string(),
%%   <<"storeArn">> => string(),
%%   <<"storeFormat">> => string(),
%%   <<"storeSizeBytes">> => [float()],
%%   <<"updateTime">> => non_neg_integer()
%% }
-type annotation_store_item() :: #{binary() => any()}.


%% Example:
%% create_workflow_request() :: #{
%%   <<"accelerators">> => string(),
%%   <<"definitionUri">> => string(),
%%   <<"definitionZip">> => [binary()],
%%   <<"description">> => string(),
%%   <<"engine">> => string(),
%%   <<"main">> => string(),
%%   <<"name">> => string(),
%%   <<"parameterTemplate">> => map(),
%%   <<"requestId">> := string(),
%%   <<"storageCapacity">> => [integer()],
%%   <<"tags">> => map()
%% }
-type create_workflow_request() :: #{binary() => any()}.

%% Example:
%% cancel_annotation_import_request() :: #{}
-type cancel_annotation_import_request() :: #{}.


%% Example:
%% create_run_cache_response() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"status">> => string(),
%%   <<"tags">> => map()
%% }
-type create_run_cache_response() :: #{binary() => any()}.


%% Example:
%% update_variant_store_response() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => [string()],
%%   <<"reference">> => list(),
%%   <<"status">> => string(),
%%   <<"updateTime">> => non_neg_integer()
%% }
-type update_variant_store_response() :: #{binary() => any()}.


%% Example:
%% import_read_set_job_item() :: #{
%%   <<"completionTime">> => [non_neg_integer()],
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"id">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"sequenceStoreId">> => string(),
%%   <<"status">> => string()
%% }
-type import_read_set_job_item() :: #{binary() => any()}.


%% Example:
%% activate_read_set_filter() :: #{
%%   <<"createdAfter">> => [non_neg_integer()],
%%   <<"createdBefore">> => [non_neg_integer()],
%%   <<"status">> => string()
%% }
-type activate_read_set_filter() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% run_cache_list_item() :: #{
%%   <<"arn">> => string(),
%%   <<"cacheBehavior">> => string(),
%%   <<"cacheS3Uri">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => string()
%% }
-type run_cache_list_item() :: #{binary() => any()}.


%% Example:
%% update_variant_store_request() :: #{
%%   <<"description">> => string()
%% }
-type update_variant_store_request() :: #{binary() => any()}.


%% Example:
%% update_annotation_store_version_response() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => string(),
%%   <<"storeId">> => string(),
%%   <<"updateTime">> => non_neg_integer(),
%%   <<"versionName">> => string()
%% }
-type update_annotation_store_version_response() :: #{binary() => any()}.


%% Example:
%% list_shares_request() :: #{
%%   <<"filter">> => filter(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()],
%%   <<"resourceOwner">> := string()
%% }
-type list_shares_request() :: #{binary() => any()}.


%% Example:
%% update_annotation_store_request() :: #{
%%   <<"description">> => string()
%% }
-type update_annotation_store_request() :: #{binary() => any()}.


%% Example:
%% get_run_request() :: #{
%%   <<"export">> => list(string()())
%% }
-type get_run_request() :: #{binary() => any()}.


%% Example:
%% list_reference_stores_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"referenceStores">> => list(reference_store_detail()())
%% }
-type list_reference_stores_response() :: #{binary() => any()}.


%% Example:
%% read_set_upload_part_list_filter() :: #{
%%   <<"createdAfter">> => [non_neg_integer()],
%%   <<"createdBefore">> => [non_neg_integer()]
%% }
-type read_set_upload_part_list_filter() :: #{binary() => any()}.


%% Example:
%% update_run_cache_request() :: #{
%%   <<"cacheBehavior">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string()
%% }
-type update_run_cache_request() :: #{binary() => any()}.


%% Example:
%% list_read_set_export_jobs_request() :: #{
%%   <<"filter">> => export_read_set_filter(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_read_set_export_jobs_request() :: #{binary() => any()}.


%% Example:
%% list_runs_response() :: #{
%%   <<"items">> => list(run_list_item()()),
%%   <<"nextToken">> => string()
%% }
-type list_runs_response() :: #{binary() => any()}.


%% Example:
%% import_read_set_filter() :: #{
%%   <<"createdAfter">> => [non_neg_integer()],
%%   <<"createdBefore">> => [non_neg_integer()],
%%   <<"status">> => string()
%% }
-type import_read_set_filter() :: #{binary() => any()}.


%% Example:
%% get_reference_metadata_response() :: #{
%%   <<"arn">> => string(),
%%   <<"creationJobId">> => string(),
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"creationType">> => string(),
%%   <<"description">> => string(),
%%   <<"files">> => reference_files(),
%%   <<"id">> => string(),
%%   <<"md5">> => string(),
%%   <<"name">> => string(),
%%   <<"referenceStoreId">> => string(),
%%   <<"status">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type get_reference_metadata_response() :: #{binary() => any()}.


%% Example:
%% create_annotation_store_request() :: #{
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"reference">> => list(),
%%   <<"sseConfig">> => sse_config(),
%%   <<"storeFormat">> := string(),
%%   <<"storeOptions">> => list(),
%%   <<"tags">> => map(),
%%   <<"versionName">> => string()
%% }
-type create_annotation_store_request() :: #{binary() => any()}.


%% Example:
%% upload_read_set_part_request() :: #{
%%   <<"partNumber">> := [integer()],
%%   <<"partSource">> := string(),
%%   <<"payload">> := binary()
%% }
-type upload_read_set_part_request() :: #{binary() => any()}.


%% Example:
%% list_read_set_activation_jobs_response() :: #{
%%   <<"activationJobs">> => list(activate_read_set_job_item()()),
%%   <<"nextToken">> => string()
%% }
-type list_read_set_activation_jobs_response() :: #{binary() => any()}.


%% Example:
%% delete_variant_store_response() :: #{
%%   <<"status">> => string()
%% }
-type delete_variant_store_response() :: #{binary() => any()}.


%% Example:
%% start_read_set_import_job_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"roleArn">> := string(),
%%   <<"sources">> := list(start_read_set_import_job_source_item()())
%% }
-type start_read_set_import_job_request() :: #{binary() => any()}.


%% Example:
%% variant_import_job_item() :: #{
%%   <<"annotationFields">> => map(),
%%   <<"completionTime">> => non_neg_integer(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"destinationName">> => [string()],
%%   <<"id">> => [string()],
%%   <<"roleArn">> => string(),
%%   <<"runLeftNormalization">> => boolean(),
%%   <<"status">> => string(),
%%   <<"updateTime">> => non_neg_integer()
%% }
-type variant_import_job_item() :: #{binary() => any()}.


%% Example:
%% import_reference_job_item() :: #{
%%   <<"completionTime">> => [non_neg_integer()],
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"id">> => string(),
%%   <<"referenceStoreId">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"status">> => string()
%% }
-type import_reference_job_item() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.

%% Example:
%% get_read_set_export_job_request() :: #{}
-type get_read_set_export_job_request() :: #{}.

%% Example:
%% get_run_group_request() :: #{}
-type get_run_group_request() :: #{}.

%% Example:
%% delete_sequence_store_request() :: #{}
-type delete_sequence_store_request() :: #{}.


%% Example:
%% start_reference_import_job_response() :: #{
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"id">> => string(),
%%   <<"referenceStoreId">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"status">> => string()
%% }
-type start_reference_import_job_response() :: #{binary() => any()}.

%% Example:
%% delete_workflow_request() :: #{}
-type delete_workflow_request() :: #{}.


%% Example:
%% list_annotation_stores_request() :: #{
%%   <<"filter">> => list_annotation_stores_filter(),
%%   <<"ids">> => list(string()()),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_annotation_stores_request() :: #{binary() => any()}.


%% Example:
%% delete_annotation_store_response() :: #{
%%   <<"status">> => string()
%% }
-type delete_annotation_store_response() :: #{binary() => any()}.


%% Example:
%% update_annotation_store_response() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => [string()],
%%   <<"reference">> => list(),
%%   <<"status">> => string(),
%%   <<"storeFormat">> => string(),
%%   <<"storeOptions">> => list(),
%%   <<"updateTime">> => non_neg_integer()
%% }
-type update_annotation_store_response() :: #{binary() => any()}.


%% Example:
%% read_set_filter() :: #{
%%   <<"createdAfter">> => [non_neg_integer()],
%%   <<"createdBefore">> => [non_neg_integer()],
%%   <<"creationType">> => string(),
%%   <<"generatedFrom">> => string(),
%%   <<"name">> => string(),
%%   <<"referenceArn">> => string(),
%%   <<"sampleId">> => string(),
%%   <<"status">> => string(),
%%   <<"subjectId">> => string()
%% }
-type read_set_filter() :: #{binary() => any()}.


%% Example:
%% batch_delete_read_set_response() :: #{
%%   <<"errors">> => list(read_set_batch_error()())
%% }
-type batch_delete_read_set_response() :: #{binary() => any()}.


%% Example:
%% list_read_set_activation_jobs_request() :: #{
%%   <<"filter">> => activate_read_set_filter(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_read_set_activation_jobs_request() :: #{binary() => any()}.

%% Example:
%% get_annotation_store_request() :: #{}
-type get_annotation_store_request() :: #{}.


%% Example:
%% list_variant_import_jobs_response() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"variantImportJobs">> => list(variant_import_job_item()())
%% }
-type list_variant_import_jobs_response() :: #{binary() => any()}.


%% Example:
%% workflow_list_item() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"digest">> => string(),
%%   <<"id">> => string(),
%%   <<"metadata">> => map(),
%%   <<"name">> => string(),
%%   <<"status">> => string(),
%%   <<"type">> => string()
%% }
-type workflow_list_item() :: #{binary() => any()}.


%% Example:
%% export_read_set_job_detail() :: #{
%%   <<"completionTime">> => [non_neg_integer()],
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"destination">> => string(),
%%   <<"id">> => string(),
%%   <<"sequenceStoreId">> => string(),
%%   <<"status">> => string()
%% }
-type export_read_set_job_detail() :: #{binary() => any()}.


%% Example:
%% delete_annotation_store_versions_response() :: #{
%%   <<"errors">> => list(version_delete_error()())
%% }
-type delete_annotation_store_versions_response() :: #{binary() => any()}.


%% Example:
%% upload_read_set_part_response() :: #{
%%   <<"checksum">> => [string()]
%% }
-type upload_read_set_part_response() :: #{binary() => any()}.

%% Example:
%% get_reference_metadata_request() :: #{}
-type get_reference_metadata_request() :: #{}.

%% Example:
%% accept_share_request() :: #{}
-type accept_share_request() :: #{}.


%% Example:
%% list_run_caches_response() :: #{
%%   <<"items">> => list(run_cache_list_item()()),
%%   <<"nextToken">> => string()
%% }
-type list_run_caches_response() :: #{binary() => any()}.


%% Example:
%% share_details() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"ownerId">> => [string()],
%%   <<"principalSubscriber">> => [string()],
%%   <<"resourceArn">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"shareId">> => [string()],
%%   <<"shareName">> => string(),
%%   <<"status">> => string(),
%%   <<"statusMessage">> => string(),
%%   <<"updateTime">> => non_neg_integer()
%% }
-type share_details() :: #{binary() => any()}.


%% Example:
%% annotation_store_version_item() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => string(),
%%   <<"statusMessage">> => string(),
%%   <<"storeId">> => string(),
%%   <<"updateTime">> => non_neg_integer(),
%%   <<"versionArn">> => string(),
%%   <<"versionName">> => string(),
%%   <<"versionSizeBytes">> => [float()]
%% }
-type annotation_store_version_item() :: #{binary() => any()}.


%% Example:
%% activate_read_set_job_item() :: #{
%%   <<"completionTime">> => [non_neg_integer()],
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"id">> => string(),
%%   <<"sequenceStoreId">> => string(),
%%   <<"status">> => string()
%% }
-type activate_read_set_job_item() :: #{binary() => any()}.

%% Example:
%% delete_run_group_request() :: #{}
-type delete_run_group_request() :: #{}.


%% Example:
%% get_reference_response() :: #{
%%   <<"payload">> => binary()
%% }
-type get_reference_response() :: #{binary() => any()}.


%% Example:
%% list_annotation_stores_response() :: #{
%%   <<"annotationStores">> => list(annotation_store_item()()),
%%   <<"nextToken">> => [string()]
%% }
-type list_annotation_stores_response() :: #{binary() => any()}.


%% Example:
%% create_multipart_read_set_upload_response() :: #{
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"generatedFrom">> => string(),
%%   <<"name">> => string(),
%%   <<"referenceArn">> => string(),
%%   <<"sampleId">> => string(),
%%   <<"sequenceStoreId">> => string(),
%%   <<"sourceFileType">> => string(),
%%   <<"subjectId">> => string(),
%%   <<"tags">> => map(),
%%   <<"uploadId">> => string()
%% }
-type create_multipart_read_set_upload_response() :: #{binary() => any()}.

%% Example:
%% delete_run_cache_request() :: #{}
-type delete_run_cache_request() :: #{}.

%% Example:
%% delete_reference_request() :: #{}
-type delete_reference_request() :: #{}.


%% Example:
%% request_timeout_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type request_timeout_exception() :: #{binary() => any()}.


%% Example:
%% list_annotation_store_versions_response() :: #{
%%   <<"annotationStoreVersions">> => list(annotation_store_version_item()()),
%%   <<"nextToken">> => [string()]
%% }
-type list_annotation_store_versions_response() :: #{binary() => any()}.


%% Example:
%% complete_multipart_read_set_upload_response() :: #{
%%   <<"readSetId">> => string()
%% }
-type complete_multipart_read_set_upload_response() :: #{binary() => any()}.


%% Example:
%% update_workflow_request() :: #{
%%   <<"description">> => string(),
%%   <<"name">> => string()
%% }
-type update_workflow_request() :: #{binary() => any()}.


%% Example:
%% reference_list_item() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"md5">> => string(),
%%   <<"name">> => string(),
%%   <<"referenceStoreId">> => string(),
%%   <<"status">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type reference_list_item() :: #{binary() => any()}.


%% Example:
%% tsv_options() :: #{
%%   <<"readOptions">> => read_options()
%% }
-type tsv_options() :: #{binary() => any()}.


%% Example:
%% run_list_item() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"priority">> => [integer()],
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => string(),
%%   <<"stopTime">> => non_neg_integer(),
%%   <<"storageCapacity">> => [integer()],
%%   <<"storageType">> => string(),
%%   <<"workflowId">> => string()
%% }
-type run_list_item() :: #{binary() => any()}.


%% Example:
%% start_reference_import_job_source_item() :: #{
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"sourceFile">> => string(),
%%   <<"tags">> => map()
%% }
-type start_reference_import_job_source_item() :: #{binary() => any()}.

%% Example:
%% cancel_variant_import_request() :: #{}
-type cancel_variant_import_request() :: #{}.

%% Example:
%% get_annotation_store_version_request() :: #{}
-type get_annotation_store_version_request() :: #{}.


%% Example:
%% list_variant_import_jobs_request() :: #{
%%   <<"filter">> => list_variant_import_jobs_filter(),
%%   <<"ids">> => list(string()()),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_variant_import_jobs_request() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% create_annotation_store_response() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"name">> => [string()],
%%   <<"reference">> => list(),
%%   <<"status">> => string(),
%%   <<"storeFormat">> => string(),
%%   <<"storeOptions">> => list(),
%%   <<"versionName">> => string()
%% }
-type create_annotation_store_response() :: #{binary() => any()}.

%% Example:
%% cancel_annotation_import_response() :: #{}
-type cancel_annotation_import_response() :: #{}.


%% Example:
%% create_share_request() :: #{
%%   <<"principalSubscriber">> := [string()],
%%   <<"resourceArn">> := [string()],
%%   <<"shareName">> => string()
%% }
-type create_share_request() :: #{binary() => any()}.


%% Example:
%% list_read_set_import_jobs_response() :: #{
%%   <<"importJobs">> => list(import_read_set_job_item()()),
%%   <<"nextToken">> => string()
%% }
-type list_read_set_import_jobs_response() :: #{binary() => any()}.


%% Example:
%% start_read_set_activation_job_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"sources">> := list(start_read_set_activation_job_source_item()())
%% }
-type start_read_set_activation_job_request() :: #{binary() => any()}.


%% Example:
%% get_annotation_store_version_response() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => string(),
%%   <<"statusMessage">> => string(),
%%   <<"storeId">> => string(),
%%   <<"tags">> => map(),
%%   <<"updateTime">> => non_neg_integer(),
%%   <<"versionArn">> => string(),
%%   <<"versionName">> => string(),
%%   <<"versionOptions">> => list(),
%%   <<"versionSizeBytes">> => [float()]
%% }
-type get_annotation_store_version_response() :: #{binary() => any()}.


%% Example:
%% get_read_set_request() :: #{
%%   <<"file">> => string(),
%%   <<"partNumber">> := [integer()]
%% }
-type get_read_set_request() :: #{binary() => any()}.


%% Example:
%% variant_store_item() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => [string()],
%%   <<"reference">> => list(),
%%   <<"sseConfig">> => sse_config(),
%%   <<"status">> => string(),
%%   <<"statusMessage">> => string(),
%%   <<"storeArn">> => string(),
%%   <<"storeSizeBytes">> => [float()],
%%   <<"updateTime">> => non_neg_integer()
%% }
-type variant_store_item() :: #{binary() => any()}.


%% Example:
%% task_list_item() :: #{
%%   <<"cacheHit">> => [boolean()],
%%   <<"cacheS3Uri">> => string(),
%%   <<"cpus">> => [integer()],
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"gpus">> => [integer()],
%%   <<"instanceType">> => string(),
%%   <<"memory">> => [integer()],
%%   <<"name">> => string(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => string(),
%%   <<"stopTime">> => non_neg_integer(),
%%   <<"taskId">> => string()
%% }
-type task_list_item() :: #{binary() => any()}.


%% Example:
%% get_workflow_request() :: #{
%%   <<"export">> => list(string()()),
%%   <<"type">> => string(),
%%   <<"workflowOwnerId">> => string()
%% }
-type get_workflow_request() :: #{binary() => any()}.


%% Example:
%% list_references_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"references">> => list(reference_list_item()())
%% }
-type list_references_response() :: #{binary() => any()}.


%% Example:
%% list_variant_stores_request() :: #{
%%   <<"filter">> => list_variant_stores_filter(),
%%   <<"ids">> => list(string()()),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_variant_stores_request() :: #{binary() => any()}.


%% Example:
%% get_read_set_metadata_response() :: #{
%%   <<"arn">> => string(),
%%   <<"creationJobId">> => string(),
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"creationType">> => string(),
%%   <<"description">> => string(),
%%   <<"etag">> => e_tag(),
%%   <<"fileType">> => string(),
%%   <<"files">> => read_set_files(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"referenceArn">> => string(),
%%   <<"sampleId">> => string(),
%%   <<"sequenceInformation">> => sequence_information(),
%%   <<"sequenceStoreId">> => string(),
%%   <<"status">> => string(),
%%   <<"statusMessage">> => string(),
%%   <<"subjectId">> => string()
%% }
-type get_read_set_metadata_response() :: #{binary() => any()}.


%% Example:
%% create_sequence_store_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"eTagAlgorithmFamily">> => string(),
%%   <<"fallbackLocation">> => string(),
%%   <<"name">> := string(),
%%   <<"sseConfig">> => sse_config(),
%%   <<"tags">> => map()
%% }
-type create_sequence_store_request() :: #{binary() => any()}.


%% Example:
%% accept_share_response() :: #{
%%   <<"status">> => string()
%% }
-type accept_share_response() :: #{binary() => any()}.


%% Example:
%% get_annotation_store_response() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => [string()],
%%   <<"numVersions">> => [integer()],
%%   <<"reference">> => list(),
%%   <<"sseConfig">> => sse_config(),
%%   <<"status">> => string(),
%%   <<"statusMessage">> => string(),
%%   <<"storeArn">> => string(),
%%   <<"storeFormat">> => string(),
%%   <<"storeOptions">> => list(),
%%   <<"storeSizeBytes">> => [float()],
%%   <<"tags">> => map(),
%%   <<"updateTime">> => non_neg_integer()
%% }
-type get_annotation_store_response() :: #{binary() => any()}.


%% Example:
%% workflow_parameter() :: #{
%%   <<"description">> => string(),
%%   <<"optional">> => [boolean()]
%% }
-type workflow_parameter() :: #{binary() => any()}.


%% Example:
%% list_shares_response() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"shares">> => list(share_details()())
%% }
-type list_shares_response() :: #{binary() => any()}.


%% Example:
%% create_run_cache_request() :: #{
%%   <<"cacheBehavior">> => string(),
%%   <<"cacheBucketOwnerId">> => string(),
%%   <<"cacheS3Location">> := string(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"requestId">> := string(),
%%   <<"tags">> => map()
%% }
-type create_run_cache_request() :: #{binary() => any()}.


%% Example:
%% vcf_options() :: #{
%%   <<"ignoreFilterField">> => [boolean()],
%%   <<"ignoreQualField">> => [boolean()]
%% }
-type vcf_options() :: #{binary() => any()}.


%% Example:
%% get_read_set_activation_job_response() :: #{
%%   <<"completionTime">> => [non_neg_integer()],
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"id">> => string(),
%%   <<"sequenceStoreId">> => string(),
%%   <<"sources">> => list(activate_read_set_source_item()()),
%%   <<"status">> => string(),
%%   <<"statusMessage">> => string()
%% }
-type get_read_set_activation_job_response() :: #{binary() => any()}.


%% Example:
%% complete_read_set_upload_part_list_item() :: #{
%%   <<"checksum">> => [string()],
%%   <<"partNumber">> => [integer()],
%%   <<"partSource">> => string()
%% }
-type complete_read_set_upload_part_list_item() :: #{binary() => any()}.


%% Example:
%% get_run_group_response() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"maxCpus">> => [integer()],
%%   <<"maxDuration">> => [integer()],
%%   <<"maxGpus">> => [integer()],
%%   <<"maxRuns">> => [integer()],
%%   <<"name">> => string(),
%%   <<"tags">> => map()
%% }
-type get_run_group_response() :: #{binary() => any()}.


%% Example:
%% variant_import_item_source() :: #{
%%   <<"source">> => string()
%% }
-type variant_import_item_source() :: #{binary() => any()}.


%% Example:
%% reference_store_detail() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"sseConfig">> => sse_config()
%% }
-type reference_store_detail() :: #{binary() => any()}.


%% Example:
%% version_delete_error() :: #{
%%   <<"message">> => [string()],
%%   <<"versionName">> => string()
%% }
-type version_delete_error() :: #{binary() => any()}.


%% Example:
%% not_supported_operation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type not_supported_operation_exception() :: #{binary() => any()}.


%% Example:
%% list_sequence_stores_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"sequenceStores">> => list(sequence_store_detail()())
%% }
-type list_sequence_stores_response() :: #{binary() => any()}.


%% Example:
%% sequence_store_filter() :: #{
%%   <<"createdAfter">> => [non_neg_integer()],
%%   <<"createdBefore">> => [non_neg_integer()],
%%   <<"name">> => string()
%% }
-type sequence_store_filter() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% get_reference_request() :: #{
%%   <<"file">> => string(),
%%   <<"partNumber">> := [integer()],
%%   <<"range">> => string()
%% }
-type get_reference_request() :: #{binary() => any()}.


%% Example:
%% annotation_import_job_item() :: #{
%%   <<"annotationFields">> => map(),
%%   <<"completionTime">> => non_neg_integer(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"destinationName">> => [string()],
%%   <<"id">> => [string()],
%%   <<"roleArn">> => string(),
%%   <<"runLeftNormalization">> => boolean(),
%%   <<"status">> => string(),
%%   <<"updateTime">> => non_neg_integer(),
%%   <<"versionName">> => string()
%% }
-type annotation_import_job_item() :: #{binary() => any()}.


%% Example:
%% get_sequence_store_response() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"eTagAlgorithmFamily">> => string(),
%%   <<"fallbackLocation">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"s3Access">> => sequence_store_s3_access(),
%%   <<"sseConfig">> => sse_config()
%% }
-type get_sequence_store_response() :: #{binary() => any()}.


%% Example:
%% run_group_list_item() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"maxCpus">> => [integer()],
%%   <<"maxDuration">> => [integer()],
%%   <<"maxGpus">> => [integer()],
%%   <<"maxRuns">> => [integer()],
%%   <<"name">> => string()
%% }
-type run_group_list_item() :: #{binary() => any()}.


%% Example:
%% create_annotation_store_version_response() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => string(),
%%   <<"storeId">> => string(),
%%   <<"versionName">> => string(),
%%   <<"versionOptions">> => list()
%% }
-type create_annotation_store_version_response() :: #{binary() => any()}.


%% Example:
%% start_reference_import_job_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"roleArn">> := string(),
%%   <<"sources">> := list(start_reference_import_job_source_item()())
%% }
-type start_reference_import_job_request() :: #{binary() => any()}.


%% Example:
%% list_run_tasks_response() :: #{
%%   <<"items">> => list(task_list_item()()),
%%   <<"nextToken">> => string()
%% }
-type list_run_tasks_response() :: #{binary() => any()}.


%% Example:
%% create_share_response() :: #{
%%   <<"shareId">> => [string()],
%%   <<"shareName">> => string(),
%%   <<"status">> => string()
%% }
-type create_share_response() :: #{binary() => any()}.


%% Example:
%% import_read_set_source_item() :: #{
%%   <<"description">> => string(),
%%   <<"generatedFrom">> => string(),
%%   <<"name">> => string(),
%%   <<"readSetId">> => string(),
%%   <<"referenceArn">> => string(),
%%   <<"sampleId">> => string(),
%%   <<"sourceFileType">> => string(),
%%   <<"sourceFiles">> => source_files(),
%%   <<"status">> => string(),
%%   <<"statusMessage">> => string(),
%%   <<"subjectId">> => string(),
%%   <<"tags">> => map()
%% }
-type import_read_set_source_item() :: #{binary() => any()}.


%% Example:
%% delete_variant_store_request() :: #{
%%   <<"force">> => [boolean()]
%% }
-type delete_variant_store_request() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% create_reference_store_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"sseConfig">> => sse_config(),
%%   <<"tags">> => map()
%% }
-type create_reference_store_request() :: #{binary() => any()}.


%% Example:
%% annotation_import_item_detail() :: #{
%%   <<"jobStatus">> => string(),
%%   <<"source">> => string()
%% }
-type annotation_import_item_detail() :: #{binary() => any()}.


%% Example:
%% e_tag() :: #{
%%   <<"algorithm">> => string(),
%%   <<"source1">> => [string()],
%%   <<"source2">> => [string()]
%% }
-type e_tag() :: #{binary() => any()}.


%% Example:
%% list_read_set_import_jobs_request() :: #{
%%   <<"filter">> => import_read_set_filter(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_read_set_import_jobs_request() :: #{binary() => any()}.

%% Example:
%% get_read_set_metadata_request() :: #{}
-type get_read_set_metadata_request() :: #{}.


%% Example:
%% reference_store_filter() :: #{
%%   <<"createdAfter">> => [non_neg_integer()],
%%   <<"createdBefore">> => [non_neg_integer()],
%%   <<"name">> => string()
%% }
-type reference_store_filter() :: #{binary() => any()}.


%% Example:
%% list_variant_stores_filter() :: #{
%%   <<"status">> => string()
%% }
-type list_variant_stores_filter() :: #{binary() => any()}.


%% Example:
%% list_read_sets_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"readSets">> => list(read_set_list_item()())
%% }
-type list_read_sets_response() :: #{binary() => any()}.


%% Example:
%% delete_annotation_store_request() :: #{
%%   <<"force">> => [boolean()]
%% }
-type delete_annotation_store_request() :: #{binary() => any()}.


%% Example:
%% list_workflows_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"name">> => string(),
%%   <<"startingToken">> => string(),
%%   <<"type">> => string()
%% }
-type list_workflows_request() :: #{binary() => any()}.


%% Example:
%% create_multipart_read_set_upload_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"generatedFrom">> => string(),
%%   <<"name">> := string(),
%%   <<"referenceArn">> => string(),
%%   <<"sampleId">> := string(),
%%   <<"sourceFileType">> := string(),
%%   <<"subjectId">> := string(),
%%   <<"tags">> => map()
%% }
-type create_multipart_read_set_upload_request() :: #{binary() => any()}.


%% Example:
%% start_read_set_import_job_response() :: #{
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"id">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"sequenceStoreId">> => string(),
%%   <<"status">> => string()
%% }
-type start_read_set_import_job_response() :: #{binary() => any()}.


%% Example:
%% get_reference_store_response() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"sseConfig">> => sse_config()
%% }
-type get_reference_store_response() :: #{binary() => any()}.


%% Example:
%% read_set_upload_part_list_item() :: #{
%%   <<"checksum">> => [string()],
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"lastUpdatedTime">> => [non_neg_integer()],
%%   <<"partNumber">> => [integer()],
%%   <<"partSize">> => [float()],
%%   <<"partSource">> => string()
%% }
-type read_set_upload_part_list_item() :: #{binary() => any()}.


%% Example:
%% read_set_files() :: #{
%%   <<"index">> => file_information(),
%%   <<"source1">> => file_information(),
%%   <<"source2">> => file_information()
%% }
-type read_set_files() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% start_read_set_import_job_source_item() :: #{
%%   <<"description">> => string(),
%%   <<"generatedFrom">> => string(),
%%   <<"name">> => string(),
%%   <<"referenceArn">> => string(),
%%   <<"sampleId">> => string(),
%%   <<"sourceFileType">> => string(),
%%   <<"sourceFiles">> => source_files(),
%%   <<"subjectId">> => string(),
%%   <<"tags">> => map()
%% }
-type start_read_set_import_job_source_item() :: #{binary() => any()}.


%% Example:
%% activate_read_set_source_item() :: #{
%%   <<"readSetId">> => string(),
%%   <<"status">> => string(),
%%   <<"statusMessage">> => string()
%% }
-type activate_read_set_source_item() :: #{binary() => any()}.


%% Example:
%% list_annotation_import_jobs_response() :: #{
%%   <<"annotationImportJobs">> => list(annotation_import_job_item()()),
%%   <<"nextToken">> => [string()]
%% }
-type list_annotation_import_jobs_response() :: #{binary() => any()}.


%% Example:
%% reference_files() :: #{
%%   <<"index">> => file_information(),
%%   <<"source">> => file_information()
%% }
-type reference_files() :: #{binary() => any()}.


%% Example:
%% start_annotation_import_request() :: #{
%%   <<"annotationFields">> => map(),
%%   <<"destinationName">> := string(),
%%   <<"formatOptions">> => list(),
%%   <<"items">> := list(annotation_import_item_source()()),
%%   <<"roleArn">> := string(),
%%   <<"runLeftNormalization">> => boolean(),
%%   <<"versionName">> => string()
%% }
-type start_annotation_import_request() :: #{binary() => any()}.


%% Example:
%% batch_delete_read_set_request() :: #{
%%   <<"ids">> := list(string()())
%% }
-type batch_delete_read_set_request() :: #{binary() => any()}.


%% Example:
%% create_variant_store_response() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"name">> => [string()],
%%   <<"reference">> => list(),
%%   <<"status">> => string()
%% }
-type create_variant_store_response() :: #{binary() => any()}.

%% Example:
%% get_run_cache_request() :: #{}
-type get_run_cache_request() :: #{}.


%% Example:
%% list_read_sets_request() :: #{
%%   <<"filter">> => read_set_filter(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_read_sets_request() :: #{binary() => any()}.


%% Example:
%% list_run_groups_response() :: #{
%%   <<"items">> => list(run_group_list_item()()),
%%   <<"nextToken">> => string()
%% }
-type list_run_groups_response() :: #{binary() => any()}.


%% Example:
%% annotation_import_item_source() :: #{
%%   <<"source">> => string()
%% }
-type annotation_import_item_source() :: #{binary() => any()}.


%% Example:
%% filter() :: #{
%%   <<"resourceArns">> => list([string()]()),
%%   <<"status">> => list(string()()),
%%   <<"type">> => list(string()())
%% }
-type filter() :: #{binary() => any()}.


%% Example:
%% create_sequence_store_response() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"eTagAlgorithmFamily">> => string(),
%%   <<"fallbackLocation">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"sseConfig">> => sse_config()
%% }
-type create_sequence_store_response() :: #{binary() => any()}.

%% Example:
%% cancel_run_request() :: #{}
-type cancel_run_request() :: #{}.

%% Example:
%% delete_run_request() :: #{}
-type delete_run_request() :: #{}.


%% Example:
%% create_run_group_response() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"tags">> => map()
%% }
-type create_run_group_response() :: #{binary() => any()}.

%% Example:
%% delete_sequence_store_response() :: #{}
-type delete_sequence_store_response() :: #{}.


%% Example:
%% start_read_set_export_job_response() :: #{
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"destination">> => string(),
%%   <<"id">> => string(),
%%   <<"sequenceStoreId">> => string(),
%%   <<"status">> => string()
%% }
-type start_read_set_export_job_response() :: #{binary() => any()}.

%% Example:
%% get_reference_store_request() :: #{}
-type get_reference_store_request() :: #{}.


%% Example:
%% update_annotation_store_version_request() :: #{
%%   <<"description">> => string()
%% }
-type update_annotation_store_version_request() :: #{binary() => any()}.


%% Example:
%% reference_filter() :: #{
%%   <<"createdAfter">> => [non_neg_integer()],
%%   <<"createdBefore">> => [non_neg_integer()],
%%   <<"md5">> => string(),
%%   <<"name">> => string()
%% }
-type reference_filter() :: #{binary() => any()}.


%% Example:
%% get_read_set_response() :: #{
%%   <<"payload">> => binary()
%% }
-type get_read_set_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_run_tasks_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"startingToken">> => string(),
%%   <<"status">> => string()
%% }
-type list_run_tasks_request() :: #{binary() => any()}.


%% Example:
%% list_read_set_export_jobs_response() :: #{
%%   <<"exportJobs">> => list(export_read_set_job_detail()()),
%%   <<"nextToken">> => string()
%% }
-type list_read_set_export_jobs_response() :: #{binary() => any()}.


%% Example:
%% sequence_store_s3_access() :: #{
%%   <<"s3AccessPointArn">> => string(),
%%   <<"s3Uri">> => string()
%% }
-type sequence_store_s3_access() :: #{binary() => any()}.


%% Example:
%% create_variant_store_request() :: #{
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"reference">> := list(),
%%   <<"sseConfig">> => sse_config(),
%%   <<"tags">> => map()
%% }
-type create_variant_store_request() :: #{binary() => any()}.


%% Example:
%% get_read_set_export_job_response() :: #{
%%   <<"completionTime">> => [non_neg_integer()],
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"destination">> => string(),
%%   <<"id">> => string(),
%%   <<"readSets">> => list(export_read_set_detail()()),
%%   <<"sequenceStoreId">> => string(),
%%   <<"status">> => string(),
%%   <<"statusMessage">> => string()
%% }
-type get_read_set_export_job_response() :: #{binary() => any()}.


%% Example:
%% list_sequence_stores_request() :: #{
%%   <<"filter">> => sequence_store_filter(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_sequence_stores_request() :: #{binary() => any()}.


%% Example:
%% export_read_set_detail() :: #{
%%   <<"id">> => string(),
%%   <<"status">> => string(),
%%   <<"statusMessage">> => string()
%% }
-type export_read_set_detail() :: #{binary() => any()}.


%% Example:
%% list_annotation_store_versions_filter() :: #{
%%   <<"status">> => string()
%% }
-type list_annotation_store_versions_filter() :: #{binary() => any()}.


%% Example:
%% list_multipart_read_set_uploads_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"uploads">> => list(multipart_read_set_upload_list_item()())
%% }
-type list_multipart_read_set_uploads_response() :: #{binary() => any()}.


%% Example:
%% read_options() :: #{
%%   <<"comment">> => string(),
%%   <<"encoding">> => string(),
%%   <<"escape">> => string(),
%%   <<"escapeQuotes">> => boolean(),
%%   <<"header">> => boolean(),
%%   <<"lineSep">> => string(),
%%   <<"quote">> => string(),
%%   <<"quoteAll">> => boolean(),
%%   <<"sep">> => string()
%% }
-type read_options() :: #{binary() => any()}.


%% Example:
%% sse_config() :: #{
%%   <<"keyArn">> => [string()],
%%   <<"type">> => string()
%% }
-type sse_config() :: #{binary() => any()}.


%% Example:
%% get_variant_import_response() :: #{
%%   <<"annotationFields">> => map(),
%%   <<"completionTime">> => non_neg_integer(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"destinationName">> => string(),
%%   <<"id">> => string(),
%%   <<"items">> => list(variant_import_item_detail()()),
%%   <<"roleArn">> => string(),
%%   <<"runLeftNormalization">> => boolean(),
%%   <<"status">> => string(),
%%   <<"statusMessage">> => string(),
%%   <<"updateTime">> => non_neg_integer()
%% }
-type get_variant_import_response() :: #{binary() => any()}.


%% Example:
%% update_run_group_request() :: #{
%%   <<"maxCpus">> => [integer()],
%%   <<"maxDuration">> => [integer()],
%%   <<"maxGpus">> => [integer()],
%%   <<"maxRuns">> => [integer()],
%%   <<"name">> => string()
%% }
-type update_run_group_request() :: #{binary() => any()}.


%% Example:
%% create_workflow_response() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"status">> => string(),
%%   <<"tags">> => map()
%% }
-type create_workflow_response() :: #{binary() => any()}.

%% Example:
%% get_variant_store_request() :: #{}
-type get_variant_store_request() :: #{}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% get_read_set_activation_job_request() :: #{}
-type get_read_set_activation_job_request() :: #{}.

%% Example:
%% get_variant_import_request() :: #{}
-type get_variant_import_request() :: #{}.


%% Example:
%% sequence_information() :: #{
%%   <<"alignment">> => [string()],
%%   <<"generatedFrom">> => string(),
%%   <<"totalBaseCount">> => [float()],
%%   <<"totalReadCount">> => [float()]
%% }
-type sequence_information() :: #{binary() => any()}.


%% Example:
%% list_reference_stores_request() :: #{
%%   <<"filter">> => reference_store_filter(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_reference_stores_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% list_reference_import_jobs_request() :: #{
%%   <<"filter">> => import_reference_filter(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_reference_import_jobs_request() :: #{binary() => any()}.

%% Example:
%% get_sequence_store_request() :: #{}
-type get_sequence_store_request() :: #{}.


%% Example:
%% get_reference_import_job_response() :: #{
%%   <<"completionTime">> => [non_neg_integer()],
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"id">> => string(),
%%   <<"referenceStoreId">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"sources">> => list(import_reference_source_item()()),
%%   <<"status">> => string(),
%%   <<"statusMessage">> => string()
%% }
-type get_reference_import_job_response() :: #{binary() => any()}.


%% Example:
%% get_read_set_import_job_response() :: #{
%%   <<"completionTime">> => [non_neg_integer()],
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"id">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"sequenceStoreId">> => string(),
%%   <<"sources">> => list(import_read_set_source_item()()),
%%   <<"status">> => string(),
%%   <<"statusMessage">> => string()
%% }
-type get_read_set_import_job_response() :: #{binary() => any()}.


%% Example:
%% list_run_caches_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"startingToken">> => string()
%% }
-type list_run_caches_request() :: #{binary() => any()}.


%% Example:
%% get_run_cache_response() :: #{
%%   <<"arn">> => string(),
%%   <<"cacheBehavior">> => string(),
%%   <<"cacheBucketOwnerId">> => string(),
%%   <<"cacheS3Uri">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => string(),
%%   <<"tags">> => map()
%% }
-type get_run_cache_response() :: #{binary() => any()}.


%% Example:
%% tsv_version_options() :: #{
%%   <<"annotationType">> => string(),
%%   <<"formatToHeader">> => map(),
%%   <<"schema">> => list(map()())
%% }
-type tsv_version_options() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% import_reference_filter() :: #{
%%   <<"createdAfter">> => [non_neg_integer()],
%%   <<"createdBefore">> => [non_neg_integer()],
%%   <<"status">> => string()
%% }
-type import_reference_filter() :: #{binary() => any()}.


%% Example:
%% list_annotation_import_jobs_request() :: #{
%%   <<"filter">> => list_annotation_import_jobs_filter(),
%%   <<"ids">> => list(string()()),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_annotation_import_jobs_request() :: #{binary() => any()}.


%% Example:
%% list_variant_stores_response() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"variantStores">> => list(variant_store_item()())
%% }
-type list_variant_stores_response() :: #{binary() => any()}.


%% Example:
%% start_annotation_import_response() :: #{
%%   <<"jobId">> => string()
%% }
-type start_annotation_import_response() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% get_read_set_import_job_request() :: #{}
-type get_read_set_import_job_request() :: #{}.

%% Example:
%% delete_reference_store_request() :: #{}
-type delete_reference_store_request() :: #{}.


%% Example:
%% multipart_read_set_upload_list_item() :: #{
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"generatedFrom">> => string(),
%%   <<"name">> => string(),
%%   <<"referenceArn">> => string(),
%%   <<"sampleId">> => string(),
%%   <<"sequenceStoreId">> => string(),
%%   <<"sourceFileType">> => string(),
%%   <<"subjectId">> => string(),
%%   <<"tags">> => map(),
%%   <<"uploadId">> => string()
%% }
-type multipart_read_set_upload_list_item() :: #{binary() => any()}.


%% Example:
%% variant_import_item_detail() :: #{
%%   <<"jobStatus">> => string(),
%%   <<"source">> => string(),
%%   <<"statusMessage">> => string()
%% }
-type variant_import_item_detail() :: #{binary() => any()}.

%% Example:
%% get_run_task_request() :: #{}
-type get_run_task_request() :: #{}.


%% Example:
%% get_run_task_response() :: #{
%%   <<"cacheHit">> => [boolean()],
%%   <<"cacheS3Uri">> => string(),
%%   <<"cpus">> => [integer()],
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"failureReason">> => string(),
%%   <<"gpus">> => [integer()],
%%   <<"instanceType">> => string(),
%%   <<"logStream">> => string(),
%%   <<"memory">> => [integer()],
%%   <<"name">> => string(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => string(),
%%   <<"statusMessage">> => string(),
%%   <<"stopTime">> => non_neg_integer(),
%%   <<"taskId">> => string()
%% }
-type get_run_task_response() :: #{binary() => any()}.


%% Example:
%% create_reference_store_response() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"sseConfig">> => sse_config()
%% }
-type create_reference_store_response() :: #{binary() => any()}.


%% Example:
%% import_reference_source_item() :: #{
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"referenceId">> => string(),
%%   <<"sourceFile">> => string(),
%%   <<"status">> => string(),
%%   <<"statusMessage">> => string(),
%%   <<"tags">> => map()
%% }
-type import_reference_source_item() :: #{binary() => any()}.


%% Example:
%% list_read_set_upload_parts_request() :: #{
%%   <<"filter">> => read_set_upload_part_list_filter(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"partSource">> := string()
%% }
-type list_read_set_upload_parts_request() :: #{binary() => any()}.


%% Example:
%% list_references_request() :: #{
%%   <<"filter">> => reference_filter(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_references_request() :: #{binary() => any()}.


%% Example:
%% read_set_list_item() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"creationType">> => string(),
%%   <<"description">> => string(),
%%   <<"etag">> => e_tag(),
%%   <<"fileType">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"referenceArn">> => string(),
%%   <<"sampleId">> => string(),
%%   <<"sequenceInformation">> => sequence_information(),
%%   <<"sequenceStoreId">> => string(),
%%   <<"status">> => string(),
%%   <<"statusMessage">> => string(),
%%   <<"subjectId">> => string()
%% }
-type read_set_list_item() :: #{binary() => any()}.

%% Example:
%% get_annotation_import_request() :: #{}
-type get_annotation_import_request() :: #{}.

%% Example:
%% delete_reference_response() :: #{}
-type delete_reference_response() :: #{}.


%% Example:
%% start_run_request() :: #{
%%   <<"cacheBehavior">> => string(),
%%   <<"cacheId">> => string(),
%%   <<"logLevel">> => string(),
%%   <<"name">> => string(),
%%   <<"outputUri">> => string(),
%%   <<"parameters">> => any(),
%%   <<"priority">> => [integer()],
%%   <<"requestId">> := string(),
%%   <<"retentionMode">> => string(),
%%   <<"roleArn">> := string(),
%%   <<"runGroupId">> => string(),
%%   <<"runId">> => string(),
%%   <<"storageCapacity">> => [integer()],
%%   <<"storageType">> => string(),
%%   <<"tags">> => map(),
%%   <<"workflowId">> => string(),
%%   <<"workflowOwnerId">> => string(),
%%   <<"workflowType">> => string()
%% }
-type start_run_request() :: #{binary() => any()}.


%% Example:
%% delete_annotation_store_versions_request() :: #{
%%   <<"force">> => [boolean()],
%%   <<"versions">> := list(string()())
%% }
-type delete_annotation_store_versions_request() :: #{binary() => any()}.

%% Example:
%% get_share_request() :: #{}
-type get_share_request() :: #{}.


%% Example:
%% start_read_set_activation_job_response() :: #{
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"id">> => string(),
%%   <<"sequenceStoreId">> => string(),
%%   <<"status">> => string()
%% }
-type start_read_set_activation_job_response() :: #{binary() => any()}.


%% Example:
%% create_annotation_store_version_request() :: #{
%%   <<"description">> => string(),
%%   <<"tags">> => map(),
%%   <<"versionName">> := string(),
%%   <<"versionOptions">> => list()
%% }
-type create_annotation_store_version_request() :: #{binary() => any()}.


%% Example:
%% get_share_response() :: #{
%%   <<"share">> => share_details()
%% }
-type get_share_response() :: #{binary() => any()}.

%% Example:
%% cancel_variant_import_response() :: #{}
-type cancel_variant_import_response() :: #{}.


%% Example:
%% list_read_set_upload_parts_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"parts">> => list(read_set_upload_part_list_item()())
%% }
-type list_read_set_upload_parts_response() :: #{binary() => any()}.

%% Example:
%% delete_reference_store_response() :: #{}
-type delete_reference_store_response() :: #{}.


%% Example:
%% delete_share_response() :: #{
%%   <<"status">> => string()
%% }
-type delete_share_response() :: #{binary() => any()}.


%% Example:
%% start_read_set_activation_job_source_item() :: #{
%%   <<"readSetId">> => string()
%% }
-type start_read_set_activation_job_source_item() :: #{binary() => any()}.


%% Example:
%% start_variant_import_request() :: #{
%%   <<"annotationFields">> => map(),
%%   <<"destinationName">> := string(),
%%   <<"items">> := list(variant_import_item_source()()),
%%   <<"roleArn">> := string(),
%%   <<"runLeftNormalization">> => boolean()
%% }
-type start_variant_import_request() :: #{binary() => any()}.


%% Example:
%% source_files() :: #{
%%   <<"source1">> => string(),
%%   <<"source2">> => string()
%% }
-type source_files() :: #{binary() => any()}.

%% Example:
%% get_reference_import_job_request() :: #{}
-type get_reference_import_job_request() :: #{}.


%% Example:
%% file_information() :: #{
%%   <<"contentLength">> => [float()],
%%   <<"partSize">> => [float()],
%%   <<"s3Access">> => read_set_s3_access(),
%%   <<"totalParts">> => [integer()]
%% }
-type file_information() :: #{binary() => any()}.


%% Example:
%% start_read_set_export_job_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"destination">> := string(),
%%   <<"roleArn">> := string(),
%%   <<"sources">> := list(export_read_set()())
%% }
-type start_read_set_export_job_request() :: #{binary() => any()}.


%% Example:
%% start_variant_import_response() :: #{
%%   <<"jobId">> => string()
%% }
-type start_variant_import_response() :: #{binary() => any()}.


%% Example:
%% tsv_store_options() :: #{
%%   <<"annotationType">> => string(),
%%   <<"formatToHeader">> => map(),
%%   <<"schema">> => list(map()())
%% }
-type tsv_store_options() :: #{binary() => any()}.


%% Example:
%% list_annotation_store_versions_request() :: #{
%%   <<"filter">> => list_annotation_store_versions_filter(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_annotation_store_versions_request() :: #{binary() => any()}.


%% Example:
%% get_run_response() :: #{
%%   <<"outputUri">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"workflowOwnerId">> => string(),
%%   <<"accelerators">> => string(),
%%   <<"status">> => string(),
%%   <<"runOutputUri">> => string(),
%%   <<"runGroupId">> => string(),
%%   <<"definition">> => string(),
%%   <<"id">> => string(),
%%   <<"cacheId">> => string(),
%%   <<"storageType">> => string(),
%%   <<"parameters">> => any(),
%%   <<"stopTime">> => non_neg_integer(),
%%   <<"resourceDigests">> => map(),
%%   <<"tags">> => map(),
%%   <<"storageCapacity">> => [integer()],
%%   <<"priority">> => [integer()],
%%   <<"retentionMode">> => string(),
%%   <<"logLevel">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"failureReason">> => string(),
%%   <<"runId">> => string(),
%%   <<"workflowId">> => string(),
%%   <<"arn">> => string(),
%%   <<"cacheBehavior">> => string(),
%%   <<"startedBy">> => string(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"engineVersion">> => string(),
%%   <<"workflowType">> => string(),
%%   <<"logLocation">> => run_log_location(),
%%   <<"uuid">> => string(),
%%   <<"digest">> => string(),
%%   <<"statusMessage">> => string(),
%%   <<"name">> => string()
%% }
-type get_run_response() :: #{binary() => any()}.


%% Example:
%% list_run_groups_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"name">> => string(),
%%   <<"startingToken">> => string()
%% }
-type list_run_groups_request() :: #{binary() => any()}.


%% Example:
%% list_workflows_response() :: #{
%%   <<"items">> => list(workflow_list_item()()),
%%   <<"nextToken">> => string()
%% }
-type list_workflows_response() :: #{binary() => any()}.


%% Example:
%% list_annotation_stores_filter() :: #{
%%   <<"status">> => string()
%% }
-type list_annotation_stores_filter() :: #{binary() => any()}.


%% Example:
%% range_not_satisfiable_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type range_not_satisfiable_exception() :: #{binary() => any()}.


%% Example:
%% complete_multipart_read_set_upload_request() :: #{
%%   <<"parts">> := list(complete_read_set_upload_part_list_item()())
%% }
-type complete_multipart_read_set_upload_request() :: #{binary() => any()}.


%% Example:
%% read_set_batch_error() :: #{
%%   <<"code">> => [string()],
%%   <<"id">> => string(),
%%   <<"message">> => [string()]
%% }
-type read_set_batch_error() :: #{binary() => any()}.


%% Example:
%% start_run_response() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"runOutputUri">> => string(),
%%   <<"status">> => string(),
%%   <<"tags">> => map(),
%%   <<"uuid">> => string()
%% }
-type start_run_response() :: #{binary() => any()}.


%% Example:
%% list_runs_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"name">> => string(),
%%   <<"runGroupId">> => string(),
%%   <<"startingToken">> => string(),
%%   <<"status">> => string()
%% }
-type list_runs_request() :: #{binary() => any()}.


%% Example:
%% get_variant_store_response() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => [string()],
%%   <<"reference">> => list(),
%%   <<"sseConfig">> => sse_config(),
%%   <<"status">> => string(),
%%   <<"statusMessage">> => string(),
%%   <<"storeArn">> => string(),
%%   <<"storeSizeBytes">> => [float()],
%%   <<"tags">> => map(),
%%   <<"updateTime">> => non_neg_integer()
%% }
-type get_variant_store_response() :: #{binary() => any()}.

%% Example:
%% delete_share_request() :: #{}
-type delete_share_request() :: #{}.


%% Example:
%% list_annotation_import_jobs_filter() :: #{
%%   <<"status">> => string(),
%%   <<"storeName">> => [string()]
%% }
-type list_annotation_import_jobs_filter() :: #{binary() => any()}.


%% Example:
%% list_reference_import_jobs_response() :: #{
%%   <<"importJobs">> => list(import_reference_job_item()()),
%%   <<"nextToken">> => string()
%% }
-type list_reference_import_jobs_response() :: #{binary() => any()}.


%% Example:
%% get_annotation_import_response() :: #{
%%   <<"annotationFields">> => map(),
%%   <<"completionTime">> => non_neg_integer(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"destinationName">> => string(),
%%   <<"formatOptions">> => list(),
%%   <<"id">> => string(),
%%   <<"items">> => list(annotation_import_item_detail()()),
%%   <<"roleArn">> => string(),
%%   <<"runLeftNormalization">> => boolean(),
%%   <<"status">> => string(),
%%   <<"statusMessage">> => string(),
%%   <<"updateTime">> => non_neg_integer(),
%%   <<"versionName">> => string()
%% }
-type get_annotation_import_response() :: #{binary() => any()}.


%% Example:
%% read_set_s3_access() :: #{
%%   <<"s3Uri">> => string()
%% }
-type read_set_s3_access() :: #{binary() => any()}.


%% Example:
%% create_run_group_request() :: #{
%%   <<"maxCpus">> => [integer()],
%%   <<"maxDuration">> => [integer()],
%%   <<"maxGpus">> => [integer()],
%%   <<"maxRuns">> => [integer()],
%%   <<"name">> => string(),
%%   <<"requestId">> := string(),
%%   <<"tags">> => map()
%% }
-type create_run_group_request() :: #{binary() => any()}.

%% Example:
%% abort_multipart_read_set_upload_response() :: #{}
-type abort_multipart_read_set_upload_response() :: #{}.


%% Example:
%% list_variant_import_jobs_filter() :: #{
%%   <<"status">> => string(),
%%   <<"storeName">> => [string()]
%% }
-type list_variant_import_jobs_filter() :: #{binary() => any()}.


%% Example:
%% export_read_set_filter() :: #{
%%   <<"createdAfter">> => [non_neg_integer()],
%%   <<"createdBefore">> => [non_neg_integer()],
%%   <<"status">> => string()
%% }
-type export_read_set_filter() :: #{binary() => any()}.


%% Example:
%% sequence_store_detail() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"eTagAlgorithmFamily">> => string(),
%%   <<"fallbackLocation">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"sseConfig">> => sse_config()
%% }
-type sequence_store_detail() :: #{binary() => any()}.


%% Example:
%% get_workflow_response() :: #{
%%   <<"accelerators">> => string(),
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"definition">> => string(),
%%   <<"description">> => string(),
%%   <<"digest">> => string(),
%%   <<"engine">> => string(),
%%   <<"id">> => string(),
%%   <<"main">> => string(),
%%   <<"metadata">> => map(),
%%   <<"name">> => string(),
%%   <<"parameterTemplate">> => map(),
%%   <<"status">> => string(),
%%   <<"statusMessage">> => string(),
%%   <<"storageCapacity">> => [integer()],
%%   <<"tags">> => map(),
%%   <<"type">> => string()
%% }
-type get_workflow_response() :: #{binary() => any()}.


%% Example:
%% export_read_set() :: #{
%%   <<"readSetId">> => string()
%% }
-type export_read_set() :: #{binary() => any()}.

-type abort_multipart_read_set_upload_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    not_supported_operation_exception() | 
    request_timeout_exception().

-type accept_share_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type batch_delete_read_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type cancel_annotation_import_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type cancel_run_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    request_timeout_exception().

-type cancel_variant_import_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type complete_multipart_read_set_upload_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    not_supported_operation_exception() | 
    request_timeout_exception().

-type create_annotation_store_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_annotation_store_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_multipart_read_set_upload_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    not_supported_operation_exception() | 
    request_timeout_exception().

-type create_reference_store_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    request_timeout_exception().

-type create_run_cache_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    request_timeout_exception().

-type create_run_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    request_timeout_exception().

-type create_sequence_store_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    request_timeout_exception().

-type create_share_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_variant_store_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_workflow_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    request_timeout_exception().

-type delete_annotation_store_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_annotation_store_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_reference_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    request_timeout_exception().

-type delete_reference_store_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    request_timeout_exception().

-type delete_run_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    request_timeout_exception().

-type delete_run_cache_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    request_timeout_exception().

-type delete_run_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    request_timeout_exception().

-type delete_sequence_store_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    request_timeout_exception().

-type delete_share_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_variant_store_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_workflow_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    request_timeout_exception().

-type get_annotation_import_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_annotation_store_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_annotation_store_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_read_set_errors() ::
    range_not_satisfiable_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    request_timeout_exception().

-type get_read_set_activation_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type get_read_set_export_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type get_read_set_import_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type get_read_set_metadata_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type get_reference_errors() ::
    range_not_satisfiable_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type get_reference_import_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type get_reference_metadata_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type get_reference_store_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type get_run_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    request_timeout_exception().

-type get_run_cache_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    request_timeout_exception().

-type get_run_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    request_timeout_exception().

-type get_run_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    request_timeout_exception().

-type get_sequence_store_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type get_share_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_variant_import_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_variant_store_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_workflow_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    request_timeout_exception().

-type list_annotation_import_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_annotation_store_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_annotation_stores_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_multipart_read_set_uploads_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    not_supported_operation_exception() | 
    request_timeout_exception().

-type list_read_set_activation_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type list_read_set_export_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type list_read_set_import_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type list_read_set_upload_parts_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    not_supported_operation_exception() | 
    request_timeout_exception().

-type list_read_sets_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type list_reference_import_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type list_reference_stores_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    request_timeout_exception().

-type list_references_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type list_run_caches_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    request_timeout_exception().

-type list_run_groups_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    request_timeout_exception().

-type list_run_tasks_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    request_timeout_exception().

-type list_runs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    request_timeout_exception().

-type list_sequence_stores_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    request_timeout_exception().

-type list_shares_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    request_timeout_exception().

-type list_variant_import_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_variant_stores_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_workflows_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    request_timeout_exception().

-type start_annotation_import_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type start_read_set_activation_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type start_read_set_export_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type start_read_set_import_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type start_reference_import_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type start_run_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    request_timeout_exception().

-type start_variant_import_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    request_timeout_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    request_timeout_exception().

-type update_annotation_store_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_annotation_store_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_run_cache_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    request_timeout_exception().

-type update_run_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    request_timeout_exception().

-type update_variant_store_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_workflow_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    request_timeout_exception().

-type upload_read_set_part_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    not_supported_operation_exception() | 
    request_timeout_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Stops a multipart upload.
-spec abort_multipart_read_set_upload(aws_client:aws_client(), binary() | list(), binary() | list(), abort_multipart_read_set_upload_request()) ->
    {ok, abort_multipart_read_set_upload_response(), tuple()} |
    {error, any()} |
    {error, abort_multipart_read_set_upload_errors(), tuple()}.
abort_multipart_read_set_upload(Client, SequenceStoreId, UploadId, Input) ->
    abort_multipart_read_set_upload(Client, SequenceStoreId, UploadId, Input, []).

-spec abort_multipart_read_set_upload(aws_client:aws_client(), binary() | list(), binary() | list(), abort_multipart_read_set_upload_request(), proplists:proplist()) ->
    {ok, abort_multipart_read_set_upload_response(), tuple()} |
    {error, any()} |
    {error, abort_multipart_read_set_upload_errors(), tuple()}.
abort_multipart_read_set_upload(Client, SequenceStoreId, UploadId, Input0, Options0) ->
    Method = delete,
    Path = ["/sequencestore/", aws_util:encode_uri(SequenceStoreId), "/upload/", aws_util:encode_uri(UploadId), "/abort"],
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

%% @doc Accept a resource share request.
-spec accept_share(aws_client:aws_client(), binary() | list(), accept_share_request()) ->
    {ok, accept_share_response(), tuple()} |
    {error, any()} |
    {error, accept_share_errors(), tuple()}.
accept_share(Client, ShareId, Input) ->
    accept_share(Client, ShareId, Input, []).

-spec accept_share(aws_client:aws_client(), binary() | list(), accept_share_request(), proplists:proplist()) ->
    {ok, accept_share_response(), tuple()} |
    {error, any()} |
    {error, accept_share_errors(), tuple()}.
accept_share(Client, ShareId, Input0, Options0) ->
    Method = post,
    Path = ["/share/", aws_util:encode_uri(ShareId), ""],
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

%% @doc Deletes one or more read sets.
-spec batch_delete_read_set(aws_client:aws_client(), binary() | list(), batch_delete_read_set_request()) ->
    {ok, batch_delete_read_set_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_read_set_errors(), tuple()}.
batch_delete_read_set(Client, SequenceStoreId, Input) ->
    batch_delete_read_set(Client, SequenceStoreId, Input, []).

-spec batch_delete_read_set(aws_client:aws_client(), binary() | list(), batch_delete_read_set_request(), proplists:proplist()) ->
    {ok, batch_delete_read_set_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_read_set_errors(), tuple()}.
batch_delete_read_set(Client, SequenceStoreId, Input0, Options0) ->
    Method = post,
    Path = ["/sequencestore/", aws_util:encode_uri(SequenceStoreId), "/readset/batch/delete"],
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

%% @doc Cancels an annotation import job.
-spec cancel_annotation_import_job(aws_client:aws_client(), binary() | list(), cancel_annotation_import_request()) ->
    {ok, cancel_annotation_import_response(), tuple()} |
    {error, any()} |
    {error, cancel_annotation_import_job_errors(), tuple()}.
cancel_annotation_import_job(Client, JobId, Input) ->
    cancel_annotation_import_job(Client, JobId, Input, []).

-spec cancel_annotation_import_job(aws_client:aws_client(), binary() | list(), cancel_annotation_import_request(), proplists:proplist()) ->
    {ok, cancel_annotation_import_response(), tuple()} |
    {error, any()} |
    {error, cancel_annotation_import_job_errors(), tuple()}.
cancel_annotation_import_job(Client, JobId, Input0, Options0) ->
    Method = delete,
    Path = ["/import/annotation/", aws_util:encode_uri(JobId), ""],
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

%% @doc Cancels a run.
-spec cancel_run(aws_client:aws_client(), binary() | list(), cancel_run_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, cancel_run_errors(), tuple()}.
cancel_run(Client, Id, Input) ->
    cancel_run(Client, Id, Input, []).

-spec cancel_run(aws_client:aws_client(), binary() | list(), cancel_run_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, cancel_run_errors(), tuple()}.
cancel_run(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/run/", aws_util:encode_uri(Id), "/cancel"],
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

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Cancels a variant import job.
-spec cancel_variant_import_job(aws_client:aws_client(), binary() | list(), cancel_variant_import_request()) ->
    {ok, cancel_variant_import_response(), tuple()} |
    {error, any()} |
    {error, cancel_variant_import_job_errors(), tuple()}.
cancel_variant_import_job(Client, JobId, Input) ->
    cancel_variant_import_job(Client, JobId, Input, []).

-spec cancel_variant_import_job(aws_client:aws_client(), binary() | list(), cancel_variant_import_request(), proplists:proplist()) ->
    {ok, cancel_variant_import_response(), tuple()} |
    {error, any()} |
    {error, cancel_variant_import_job_errors(), tuple()}.
cancel_variant_import_job(Client, JobId, Input0, Options0) ->
    Method = delete,
    Path = ["/import/variant/", aws_util:encode_uri(JobId), ""],
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

%% @doc Concludes a multipart upload once you have uploaded all the
%% components.
-spec complete_multipart_read_set_upload(aws_client:aws_client(), binary() | list(), binary() | list(), complete_multipart_read_set_upload_request()) ->
    {ok, complete_multipart_read_set_upload_response(), tuple()} |
    {error, any()} |
    {error, complete_multipart_read_set_upload_errors(), tuple()}.
complete_multipart_read_set_upload(Client, SequenceStoreId, UploadId, Input) ->
    complete_multipart_read_set_upload(Client, SequenceStoreId, UploadId, Input, []).

-spec complete_multipart_read_set_upload(aws_client:aws_client(), binary() | list(), binary() | list(), complete_multipart_read_set_upload_request(), proplists:proplist()) ->
    {ok, complete_multipart_read_set_upload_response(), tuple()} |
    {error, any()} |
    {error, complete_multipart_read_set_upload_errors(), tuple()}.
complete_multipart_read_set_upload(Client, SequenceStoreId, UploadId, Input0, Options0) ->
    Method = post,
    Path = ["/sequencestore/", aws_util:encode_uri(SequenceStoreId), "/upload/", aws_util:encode_uri(UploadId), "/complete"],
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

%% @doc Creates an annotation store.
-spec create_annotation_store(aws_client:aws_client(), create_annotation_store_request()) ->
    {ok, create_annotation_store_response(), tuple()} |
    {error, any()} |
    {error, create_annotation_store_errors(), tuple()}.
create_annotation_store(Client, Input) ->
    create_annotation_store(Client, Input, []).

-spec create_annotation_store(aws_client:aws_client(), create_annotation_store_request(), proplists:proplist()) ->
    {ok, create_annotation_store_response(), tuple()} |
    {error, any()} |
    {error, create_annotation_store_errors(), tuple()}.
create_annotation_store(Client, Input0, Options0) ->
    Method = post,
    Path = ["/annotationStore"],
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

%% @doc
%% Creates a new version of an annotation store.
-spec create_annotation_store_version(aws_client:aws_client(), binary() | list(), create_annotation_store_version_request()) ->
    {ok, create_annotation_store_version_response(), tuple()} |
    {error, any()} |
    {error, create_annotation_store_version_errors(), tuple()}.
create_annotation_store_version(Client, Name, Input) ->
    create_annotation_store_version(Client, Name, Input, []).

-spec create_annotation_store_version(aws_client:aws_client(), binary() | list(), create_annotation_store_version_request(), proplists:proplist()) ->
    {ok, create_annotation_store_version_response(), tuple()} |
    {error, any()} |
    {error, create_annotation_store_version_errors(), tuple()}.
create_annotation_store_version(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/annotationStore/", aws_util:encode_uri(Name), "/version"],
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

%% @doc Begins a multipart read set upload.
-spec create_multipart_read_set_upload(aws_client:aws_client(), binary() | list(), create_multipart_read_set_upload_request()) ->
    {ok, create_multipart_read_set_upload_response(), tuple()} |
    {error, any()} |
    {error, create_multipart_read_set_upload_errors(), tuple()}.
create_multipart_read_set_upload(Client, SequenceStoreId, Input) ->
    create_multipart_read_set_upload(Client, SequenceStoreId, Input, []).

-spec create_multipart_read_set_upload(aws_client:aws_client(), binary() | list(), create_multipart_read_set_upload_request(), proplists:proplist()) ->
    {ok, create_multipart_read_set_upload_response(), tuple()} |
    {error, any()} |
    {error, create_multipart_read_set_upload_errors(), tuple()}.
create_multipart_read_set_upload(Client, SequenceStoreId, Input0, Options0) ->
    Method = post,
    Path = ["/sequencestore/", aws_util:encode_uri(SequenceStoreId), "/upload"],
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

%% @doc Creates a reference store.
-spec create_reference_store(aws_client:aws_client(), create_reference_store_request()) ->
    {ok, create_reference_store_response(), tuple()} |
    {error, any()} |
    {error, create_reference_store_errors(), tuple()}.
create_reference_store(Client, Input) ->
    create_reference_store(Client, Input, []).

-spec create_reference_store(aws_client:aws_client(), create_reference_store_request(), proplists:proplist()) ->
    {ok, create_reference_store_response(), tuple()} |
    {error, any()} |
    {error, create_reference_store_errors(), tuple()}.
create_reference_store(Client, Input0, Options0) ->
    Method = post,
    Path = ["/referencestore"],
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

%% @doc You can create a run cache to save the task outputs from completed
%% tasks in a run for a private workflow.
%%
%% Subsequent runs use the task outputs from the cache, rather than computing
%% the task outputs again.
%% You specify an Amazon S3 location where HealthOmics saves the cached data.
%% This data must be
%% immediately accessible (not in an archived state).
%%
%% For more information, see Creating a run cache:
%% https://docs.aws.amazon.com/omics/latest/dev/workflow-cache-create.html in
%% the AWS HealthOmics User Guide.
-spec create_run_cache(aws_client:aws_client(), create_run_cache_request()) ->
    {ok, create_run_cache_response(), tuple()} |
    {error, any()} |
    {error, create_run_cache_errors(), tuple()}.
create_run_cache(Client, Input) ->
    create_run_cache(Client, Input, []).

-spec create_run_cache(aws_client:aws_client(), create_run_cache_request(), proplists:proplist()) ->
    {ok, create_run_cache_response(), tuple()} |
    {error, any()} |
    {error, create_run_cache_errors(), tuple()}.
create_run_cache(Client, Input0, Options0) ->
    Method = post,
    Path = ["/runCache"],
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

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc You can optionally create a run group to limit the compute resources
%% for the runs that you add to the group.
-spec create_run_group(aws_client:aws_client(), create_run_group_request()) ->
    {ok, create_run_group_response(), tuple()} |
    {error, any()} |
    {error, create_run_group_errors(), tuple()}.
create_run_group(Client, Input) ->
    create_run_group(Client, Input, []).

-spec create_run_group(aws_client:aws_client(), create_run_group_request(), proplists:proplist()) ->
    {ok, create_run_group_response(), tuple()} |
    {error, any()} |
    {error, create_run_group_errors(), tuple()}.
create_run_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/runGroup"],
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

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a sequence store.
-spec create_sequence_store(aws_client:aws_client(), create_sequence_store_request()) ->
    {ok, create_sequence_store_response(), tuple()} |
    {error, any()} |
    {error, create_sequence_store_errors(), tuple()}.
create_sequence_store(Client, Input) ->
    create_sequence_store(Client, Input, []).

-spec create_sequence_store(aws_client:aws_client(), create_sequence_store_request(), proplists:proplist()) ->
    {ok, create_sequence_store_response(), tuple()} |
    {error, any()} |
    {error, create_sequence_store_errors(), tuple()}.
create_sequence_store(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sequencestore"],
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

%% @doc Creates a cross-account shared resource.
%%
%% The resource owner makes an offer to share the resource
%% with the principal subscriber (an AWS user with a different account than
%% the resource owner).
%%
%% The following resources support cross-account sharing:
%%
%% HealthOmics variant stores
%%
%% HealthOmics annotation stores
%%
%% Private workflows
-spec create_share(aws_client:aws_client(), create_share_request()) ->
    {ok, create_share_response(), tuple()} |
    {error, any()} |
    {error, create_share_errors(), tuple()}.
create_share(Client, Input) ->
    create_share(Client, Input, []).

-spec create_share(aws_client:aws_client(), create_share_request(), proplists:proplist()) ->
    {ok, create_share_response(), tuple()} |
    {error, any()} |
    {error, create_share_errors(), tuple()}.
create_share(Client, Input0, Options0) ->
    Method = post,
    Path = ["/share"],
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

%% @doc Creates a variant store.
-spec create_variant_store(aws_client:aws_client(), create_variant_store_request()) ->
    {ok, create_variant_store_response(), tuple()} |
    {error, any()} |
    {error, create_variant_store_errors(), tuple()}.
create_variant_store(Client, Input) ->
    create_variant_store(Client, Input, []).

-spec create_variant_store(aws_client:aws_client(), create_variant_store_request(), proplists:proplist()) ->
    {ok, create_variant_store_response(), tuple()} |
    {error, any()} |
    {error, create_variant_store_errors(), tuple()}.
create_variant_store(Client, Input0, Options0) ->
    Method = post,
    Path = ["/variantStore"],
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

%% @doc Creates a workflow.
-spec create_workflow(aws_client:aws_client(), create_workflow_request()) ->
    {ok, create_workflow_response(), tuple()} |
    {error, any()} |
    {error, create_workflow_errors(), tuple()}.
create_workflow(Client, Input) ->
    create_workflow(Client, Input, []).

-spec create_workflow(aws_client:aws_client(), create_workflow_request(), proplists:proplist()) ->
    {ok, create_workflow_response(), tuple()} |
    {error, any()} |
    {error, create_workflow_errors(), tuple()}.
create_workflow(Client, Input0, Options0) ->
    Method = post,
    Path = ["/workflow"],
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

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an annotation store.
-spec delete_annotation_store(aws_client:aws_client(), binary() | list(), delete_annotation_store_request()) ->
    {ok, delete_annotation_store_response(), tuple()} |
    {error, any()} |
    {error, delete_annotation_store_errors(), tuple()}.
delete_annotation_store(Client, Name, Input) ->
    delete_annotation_store(Client, Name, Input, []).

-spec delete_annotation_store(aws_client:aws_client(), binary() | list(), delete_annotation_store_request(), proplists:proplist()) ->
    {ok, delete_annotation_store_response(), tuple()} |
    {error, any()} |
    {error, delete_annotation_store_errors(), tuple()}.
delete_annotation_store(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/annotationStore/", aws_util:encode_uri(Name), ""],
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
                     {<<"force">>, <<"force">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Deletes one or multiple versions of an annotation store.
-spec delete_annotation_store_versions(aws_client:aws_client(), binary() | list(), delete_annotation_store_versions_request()) ->
    {ok, delete_annotation_store_versions_response(), tuple()} |
    {error, any()} |
    {error, delete_annotation_store_versions_errors(), tuple()}.
delete_annotation_store_versions(Client, Name, Input) ->
    delete_annotation_store_versions(Client, Name, Input, []).

-spec delete_annotation_store_versions(aws_client:aws_client(), binary() | list(), delete_annotation_store_versions_request(), proplists:proplist()) ->
    {ok, delete_annotation_store_versions_response(), tuple()} |
    {error, any()} |
    {error, delete_annotation_store_versions_errors(), tuple()}.
delete_annotation_store_versions(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/annotationStore/", aws_util:encode_uri(Name), "/versions/delete"],
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
                     {<<"force">>, <<"force">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a genome reference.
-spec delete_reference(aws_client:aws_client(), binary() | list(), binary() | list(), delete_reference_request()) ->
    {ok, delete_reference_response(), tuple()} |
    {error, any()} |
    {error, delete_reference_errors(), tuple()}.
delete_reference(Client, Id, ReferenceStoreId, Input) ->
    delete_reference(Client, Id, ReferenceStoreId, Input, []).

-spec delete_reference(aws_client:aws_client(), binary() | list(), binary() | list(), delete_reference_request(), proplists:proplist()) ->
    {ok, delete_reference_response(), tuple()} |
    {error, any()} |
    {error, delete_reference_errors(), tuple()}.
delete_reference(Client, Id, ReferenceStoreId, Input0, Options0) ->
    Method = delete,
    Path = ["/referencestore/", aws_util:encode_uri(ReferenceStoreId), "/reference/", aws_util:encode_uri(Id), ""],
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

%% @doc Deletes a genome reference store.
-spec delete_reference_store(aws_client:aws_client(), binary() | list(), delete_reference_store_request()) ->
    {ok, delete_reference_store_response(), tuple()} |
    {error, any()} |
    {error, delete_reference_store_errors(), tuple()}.
delete_reference_store(Client, Id, Input) ->
    delete_reference_store(Client, Id, Input, []).

-spec delete_reference_store(aws_client:aws_client(), binary() | list(), delete_reference_store_request(), proplists:proplist()) ->
    {ok, delete_reference_store_response(), tuple()} |
    {error, any()} |
    {error, delete_reference_store_errors(), tuple()}.
delete_reference_store(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/referencestore/", aws_util:encode_uri(Id), ""],
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

%% @doc Deletes a workflow run.
-spec delete_run(aws_client:aws_client(), binary() | list(), delete_run_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_run_errors(), tuple()}.
delete_run(Client, Id, Input) ->
    delete_run(Client, Id, Input, []).

-spec delete_run(aws_client:aws_client(), binary() | list(), delete_run_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_run_errors(), tuple()}.
delete_run(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/run/", aws_util:encode_uri(Id), ""],
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

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a run cache.
%%
%% This action removes the cache metadata stored in the service account,
%% but doesn't delete the data in Amazon S3.
%% You can access the cache data in Amazon S3, for inspection or to
%% troubleshoot issues.
%% You can remove old cache data using standard S3 `Delete' operations.
%%
%% For more information, see Deleting a run cache:
%% https://docs.aws.amazon.com/omics/latest/dev/workflow-cache-delete.html in
%% the AWS HealthOmics User Guide.
-spec delete_run_cache(aws_client:aws_client(), binary() | list(), delete_run_cache_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_run_cache_errors(), tuple()}.
delete_run_cache(Client, Id, Input) ->
    delete_run_cache(Client, Id, Input, []).

-spec delete_run_cache(aws_client:aws_client(), binary() | list(), delete_run_cache_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_run_cache_errors(), tuple()}.
delete_run_cache(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/runCache/", aws_util:encode_uri(Id), ""],
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

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a workflow run group.
-spec delete_run_group(aws_client:aws_client(), binary() | list(), delete_run_group_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_run_group_errors(), tuple()}.
delete_run_group(Client, Id, Input) ->
    delete_run_group(Client, Id, Input, []).

-spec delete_run_group(aws_client:aws_client(), binary() | list(), delete_run_group_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_run_group_errors(), tuple()}.
delete_run_group(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/runGroup/", aws_util:encode_uri(Id), ""],
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

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a sequence store.
-spec delete_sequence_store(aws_client:aws_client(), binary() | list(), delete_sequence_store_request()) ->
    {ok, delete_sequence_store_response(), tuple()} |
    {error, any()} |
    {error, delete_sequence_store_errors(), tuple()}.
delete_sequence_store(Client, Id, Input) ->
    delete_sequence_store(Client, Id, Input, []).

-spec delete_sequence_store(aws_client:aws_client(), binary() | list(), delete_sequence_store_request(), proplists:proplist()) ->
    {ok, delete_sequence_store_response(), tuple()} |
    {error, any()} |
    {error, delete_sequence_store_errors(), tuple()}.
delete_sequence_store(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/sequencestore/", aws_util:encode_uri(Id), ""],
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

%% @doc Deletes a resource share.
%%
%% If you are the resource owner, the subscriber will no longer have
%% access to the shared resource. If you are the subscriber, this operation
%% deletes your access to the share.
-spec delete_share(aws_client:aws_client(), binary() | list(), delete_share_request()) ->
    {ok, delete_share_response(), tuple()} |
    {error, any()} |
    {error, delete_share_errors(), tuple()}.
delete_share(Client, ShareId, Input) ->
    delete_share(Client, ShareId, Input, []).

-spec delete_share(aws_client:aws_client(), binary() | list(), delete_share_request(), proplists:proplist()) ->
    {ok, delete_share_response(), tuple()} |
    {error, any()} |
    {error, delete_share_errors(), tuple()}.
delete_share(Client, ShareId, Input0, Options0) ->
    Method = delete,
    Path = ["/share/", aws_util:encode_uri(ShareId), ""],
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

%% @doc Deletes a variant store.
-spec delete_variant_store(aws_client:aws_client(), binary() | list(), delete_variant_store_request()) ->
    {ok, delete_variant_store_response(), tuple()} |
    {error, any()} |
    {error, delete_variant_store_errors(), tuple()}.
delete_variant_store(Client, Name, Input) ->
    delete_variant_store(Client, Name, Input, []).

-spec delete_variant_store(aws_client:aws_client(), binary() | list(), delete_variant_store_request(), proplists:proplist()) ->
    {ok, delete_variant_store_response(), tuple()} |
    {error, any()} |
    {error, delete_variant_store_errors(), tuple()}.
delete_variant_store(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/variantStore/", aws_util:encode_uri(Name), ""],
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
                     {<<"force">>, <<"force">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a workflow.
-spec delete_workflow(aws_client:aws_client(), binary() | list(), delete_workflow_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_workflow_errors(), tuple()}.
delete_workflow(Client, Id, Input) ->
    delete_workflow(Client, Id, Input, []).

-spec delete_workflow(aws_client:aws_client(), binary() | list(), delete_workflow_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_workflow_errors(), tuple()}.
delete_workflow(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/workflow/", aws_util:encode_uri(Id), ""],
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

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets information about an annotation import job.
-spec get_annotation_import_job(aws_client:aws_client(), binary() | list()) ->
    {ok, get_annotation_import_response(), tuple()} |
    {error, any()} |
    {error, get_annotation_import_job_errors(), tuple()}.
get_annotation_import_job(Client, JobId)
  when is_map(Client) ->
    get_annotation_import_job(Client, JobId, #{}, #{}).

-spec get_annotation_import_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_annotation_import_response(), tuple()} |
    {error, any()} |
    {error, get_annotation_import_job_errors(), tuple()}.
get_annotation_import_job(Client, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_annotation_import_job(Client, JobId, QueryMap, HeadersMap, []).

-spec get_annotation_import_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_annotation_import_response(), tuple()} |
    {error, any()} |
    {error, get_annotation_import_job_errors(), tuple()}.
get_annotation_import_job(Client, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/import/annotation/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about an annotation store.
-spec get_annotation_store(aws_client:aws_client(), binary() | list()) ->
    {ok, get_annotation_store_response(), tuple()} |
    {error, any()} |
    {error, get_annotation_store_errors(), tuple()}.
get_annotation_store(Client, Name)
  when is_map(Client) ->
    get_annotation_store(Client, Name, #{}, #{}).

-spec get_annotation_store(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_annotation_store_response(), tuple()} |
    {error, any()} |
    {error, get_annotation_store_errors(), tuple()}.
get_annotation_store(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_annotation_store(Client, Name, QueryMap, HeadersMap, []).

-spec get_annotation_store(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_annotation_store_response(), tuple()} |
    {error, any()} |
    {error, get_annotation_store_errors(), tuple()}.
get_annotation_store(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/annotationStore/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Retrieves the metadata for an annotation store version.
-spec get_annotation_store_version(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_annotation_store_version_response(), tuple()} |
    {error, any()} |
    {error, get_annotation_store_version_errors(), tuple()}.
get_annotation_store_version(Client, Name, VersionName)
  when is_map(Client) ->
    get_annotation_store_version(Client, Name, VersionName, #{}, #{}).

-spec get_annotation_store_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_annotation_store_version_response(), tuple()} |
    {error, any()} |
    {error, get_annotation_store_version_errors(), tuple()}.
get_annotation_store_version(Client, Name, VersionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_annotation_store_version(Client, Name, VersionName, QueryMap, HeadersMap, []).

-spec get_annotation_store_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_annotation_store_version_response(), tuple()} |
    {error, any()} |
    {error, get_annotation_store_version_errors(), tuple()}.
get_annotation_store_version(Client, Name, VersionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/annotationStore/", aws_util:encode_uri(Name), "/version/", aws_util:encode_uri(VersionName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a file from a read set.
-spec get_read_set(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_read_set_response(), tuple()} |
    {error, any()} |
    {error, get_read_set_errors(), tuple()}.
get_read_set(Client, Id, SequenceStoreId, PartNumber)
  when is_map(Client) ->
    get_read_set(Client, Id, SequenceStoreId, PartNumber, #{}, #{}).

-spec get_read_set(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_read_set_response(), tuple()} |
    {error, any()} |
    {error, get_read_set_errors(), tuple()}.
get_read_set(Client, Id, SequenceStoreId, PartNumber, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_read_set(Client, Id, SequenceStoreId, PartNumber, QueryMap, HeadersMap, []).

-spec get_read_set(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_read_set_response(), tuple()} |
    {error, any()} |
    {error, get_read_set_errors(), tuple()}.
get_read_set(Client, Id, SequenceStoreId, PartNumber, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sequencestore/", aws_util:encode_uri(SequenceStoreId), "/readset/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"file">>, maps:get(<<"file">>, QueryMap, undefined)},
        {<<"partNumber">>, PartNumber}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a read set activation job.
-spec get_read_set_activation_job(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_read_set_activation_job_response(), tuple()} |
    {error, any()} |
    {error, get_read_set_activation_job_errors(), tuple()}.
get_read_set_activation_job(Client, Id, SequenceStoreId)
  when is_map(Client) ->
    get_read_set_activation_job(Client, Id, SequenceStoreId, #{}, #{}).

-spec get_read_set_activation_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_read_set_activation_job_response(), tuple()} |
    {error, any()} |
    {error, get_read_set_activation_job_errors(), tuple()}.
get_read_set_activation_job(Client, Id, SequenceStoreId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_read_set_activation_job(Client, Id, SequenceStoreId, QueryMap, HeadersMap, []).

-spec get_read_set_activation_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_read_set_activation_job_response(), tuple()} |
    {error, any()} |
    {error, get_read_set_activation_job_errors(), tuple()}.
get_read_set_activation_job(Client, Id, SequenceStoreId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sequencestore/", aws_util:encode_uri(SequenceStoreId), "/activationjob/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a read set export job.
-spec get_read_set_export_job(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_read_set_export_job_response(), tuple()} |
    {error, any()} |
    {error, get_read_set_export_job_errors(), tuple()}.
get_read_set_export_job(Client, Id, SequenceStoreId)
  when is_map(Client) ->
    get_read_set_export_job(Client, Id, SequenceStoreId, #{}, #{}).

-spec get_read_set_export_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_read_set_export_job_response(), tuple()} |
    {error, any()} |
    {error, get_read_set_export_job_errors(), tuple()}.
get_read_set_export_job(Client, Id, SequenceStoreId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_read_set_export_job(Client, Id, SequenceStoreId, QueryMap, HeadersMap, []).

-spec get_read_set_export_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_read_set_export_job_response(), tuple()} |
    {error, any()} |
    {error, get_read_set_export_job_errors(), tuple()}.
get_read_set_export_job(Client, Id, SequenceStoreId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sequencestore/", aws_util:encode_uri(SequenceStoreId), "/exportjob/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a read set import job.
-spec get_read_set_import_job(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_read_set_import_job_response(), tuple()} |
    {error, any()} |
    {error, get_read_set_import_job_errors(), tuple()}.
get_read_set_import_job(Client, Id, SequenceStoreId)
  when is_map(Client) ->
    get_read_set_import_job(Client, Id, SequenceStoreId, #{}, #{}).

-spec get_read_set_import_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_read_set_import_job_response(), tuple()} |
    {error, any()} |
    {error, get_read_set_import_job_errors(), tuple()}.
get_read_set_import_job(Client, Id, SequenceStoreId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_read_set_import_job(Client, Id, SequenceStoreId, QueryMap, HeadersMap, []).

-spec get_read_set_import_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_read_set_import_job_response(), tuple()} |
    {error, any()} |
    {error, get_read_set_import_job_errors(), tuple()}.
get_read_set_import_job(Client, Id, SequenceStoreId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sequencestore/", aws_util:encode_uri(SequenceStoreId), "/importjob/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details about a read set.
-spec get_read_set_metadata(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_read_set_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_read_set_metadata_errors(), tuple()}.
get_read_set_metadata(Client, Id, SequenceStoreId)
  when is_map(Client) ->
    get_read_set_metadata(Client, Id, SequenceStoreId, #{}, #{}).

-spec get_read_set_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_read_set_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_read_set_metadata_errors(), tuple()}.
get_read_set_metadata(Client, Id, SequenceStoreId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_read_set_metadata(Client, Id, SequenceStoreId, QueryMap, HeadersMap, []).

-spec get_read_set_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_read_set_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_read_set_metadata_errors(), tuple()}.
get_read_set_metadata(Client, Id, SequenceStoreId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sequencestore/", aws_util:encode_uri(SequenceStoreId), "/readset/", aws_util:encode_uri(Id), "/metadata"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a reference file.
-spec get_reference(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_reference_response(), tuple()} |
    {error, any()} |
    {error, get_reference_errors(), tuple()}.
get_reference(Client, Id, ReferenceStoreId, PartNumber)
  when is_map(Client) ->
    get_reference(Client, Id, ReferenceStoreId, PartNumber, #{}, #{}).

-spec get_reference(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_reference_response(), tuple()} |
    {error, any()} |
    {error, get_reference_errors(), tuple()}.
get_reference(Client, Id, ReferenceStoreId, PartNumber, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_reference(Client, Id, ReferenceStoreId, PartNumber, QueryMap, HeadersMap, []).

-spec get_reference(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_reference_response(), tuple()} |
    {error, any()} |
    {error, get_reference_errors(), tuple()}.
get_reference(Client, Id, ReferenceStoreId, PartNumber, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/referencestore/", aws_util:encode_uri(ReferenceStoreId), "/reference/", aws_util:encode_uri(Id), ""],
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

    Query0_ =
      [
        {<<"file">>, maps:get(<<"file">>, QueryMap, undefined)},
        {<<"partNumber">>, PartNumber}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a reference import job.
-spec get_reference_import_job(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_reference_import_job_response(), tuple()} |
    {error, any()} |
    {error, get_reference_import_job_errors(), tuple()}.
get_reference_import_job(Client, Id, ReferenceStoreId)
  when is_map(Client) ->
    get_reference_import_job(Client, Id, ReferenceStoreId, #{}, #{}).

-spec get_reference_import_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_reference_import_job_response(), tuple()} |
    {error, any()} |
    {error, get_reference_import_job_errors(), tuple()}.
get_reference_import_job(Client, Id, ReferenceStoreId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_reference_import_job(Client, Id, ReferenceStoreId, QueryMap, HeadersMap, []).

-spec get_reference_import_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_reference_import_job_response(), tuple()} |
    {error, any()} |
    {error, get_reference_import_job_errors(), tuple()}.
get_reference_import_job(Client, Id, ReferenceStoreId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/referencestore/", aws_util:encode_uri(ReferenceStoreId), "/importjob/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a genome reference's metadata.
-spec get_reference_metadata(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_reference_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_reference_metadata_errors(), tuple()}.
get_reference_metadata(Client, Id, ReferenceStoreId)
  when is_map(Client) ->
    get_reference_metadata(Client, Id, ReferenceStoreId, #{}, #{}).

-spec get_reference_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_reference_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_reference_metadata_errors(), tuple()}.
get_reference_metadata(Client, Id, ReferenceStoreId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_reference_metadata(Client, Id, ReferenceStoreId, QueryMap, HeadersMap, []).

-spec get_reference_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_reference_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_reference_metadata_errors(), tuple()}.
get_reference_metadata(Client, Id, ReferenceStoreId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/referencestore/", aws_util:encode_uri(ReferenceStoreId), "/reference/", aws_util:encode_uri(Id), "/metadata"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a reference store.
-spec get_reference_store(aws_client:aws_client(), binary() | list()) ->
    {ok, get_reference_store_response(), tuple()} |
    {error, any()} |
    {error, get_reference_store_errors(), tuple()}.
get_reference_store(Client, Id)
  when is_map(Client) ->
    get_reference_store(Client, Id, #{}, #{}).

-spec get_reference_store(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_reference_store_response(), tuple()} |
    {error, any()} |
    {error, get_reference_store_errors(), tuple()}.
get_reference_store(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_reference_store(Client, Id, QueryMap, HeadersMap, []).

-spec get_reference_store(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_reference_store_response(), tuple()} |
    {error, any()} |
    {error, get_reference_store_errors(), tuple()}.
get_reference_store(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/referencestore/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a workflow run.
%%
%% If a workflow is shared with you, you cannot export information about the
%% run.
%%
%% HealthOmics stores a fixed number of runs that are available to the
%% console and API. If
%% GetRun doesn't return the requested run, you can find run logs
%% for all runs in the CloudWatch logs. For more information about viewing
%% the run logs, see CloudWatch logs:
%% https://docs.aws.amazon.com/omics/latest/dev/cloudwatch-logs.html
%% in the AWS HealthOmics User Guide.
-spec get_run(aws_client:aws_client(), binary() | list()) ->
    {ok, get_run_response(), tuple()} |
    {error, any()} |
    {error, get_run_errors(), tuple()}.
get_run(Client, Id)
  when is_map(Client) ->
    get_run(Client, Id, #{}, #{}).

-spec get_run(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_run_response(), tuple()} |
    {error, any()} |
    {error, get_run_errors(), tuple()}.
get_run(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_run(Client, Id, QueryMap, HeadersMap, []).

-spec get_run(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_run_response(), tuple()} |
    {error, any()} |
    {error, get_run_errors(), tuple()}.
get_run(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/run/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"export">>, maps:get(<<"export">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve the details for the specified run cache.
%%
%% For more information, see Call caching for HealthOmics runs:
%% https://docs.aws.amazon.com/omics/latest/dev/workflow-call-caching.html in
%% the AWS HealthOmics User Guide.
-spec get_run_cache(aws_client:aws_client(), binary() | list()) ->
    {ok, get_run_cache_response(), tuple()} |
    {error, any()} |
    {error, get_run_cache_errors(), tuple()}.
get_run_cache(Client, Id)
  when is_map(Client) ->
    get_run_cache(Client, Id, #{}, #{}).

-spec get_run_cache(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_run_cache_response(), tuple()} |
    {error, any()} |
    {error, get_run_cache_errors(), tuple()}.
get_run_cache(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_run_cache(Client, Id, QueryMap, HeadersMap, []).

-spec get_run_cache(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_run_cache_response(), tuple()} |
    {error, any()} |
    {error, get_run_cache_errors(), tuple()}.
get_run_cache(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/runCache/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a workflow run group.
-spec get_run_group(aws_client:aws_client(), binary() | list()) ->
    {ok, get_run_group_response(), tuple()} |
    {error, any()} |
    {error, get_run_group_errors(), tuple()}.
get_run_group(Client, Id)
  when is_map(Client) ->
    get_run_group(Client, Id, #{}, #{}).

-spec get_run_group(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_run_group_response(), tuple()} |
    {error, any()} |
    {error, get_run_group_errors(), tuple()}.
get_run_group(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_run_group(Client, Id, QueryMap, HeadersMap, []).

-spec get_run_group(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_run_group_response(), tuple()} |
    {error, any()} |
    {error, get_run_group_errors(), tuple()}.
get_run_group(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/runGroup/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a workflow run task.
-spec get_run_task(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_run_task_response(), tuple()} |
    {error, any()} |
    {error, get_run_task_errors(), tuple()}.
get_run_task(Client, Id, TaskId)
  when is_map(Client) ->
    get_run_task(Client, Id, TaskId, #{}, #{}).

-spec get_run_task(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_run_task_response(), tuple()} |
    {error, any()} |
    {error, get_run_task_errors(), tuple()}.
get_run_task(Client, Id, TaskId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_run_task(Client, Id, TaskId, QueryMap, HeadersMap, []).

-spec get_run_task(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_run_task_response(), tuple()} |
    {error, any()} |
    {error, get_run_task_errors(), tuple()}.
get_run_task(Client, Id, TaskId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/run/", aws_util:encode_uri(Id), "/task/", aws_util:encode_uri(TaskId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a sequence store.
-spec get_sequence_store(aws_client:aws_client(), binary() | list()) ->
    {ok, get_sequence_store_response(), tuple()} |
    {error, any()} |
    {error, get_sequence_store_errors(), tuple()}.
get_sequence_store(Client, Id)
  when is_map(Client) ->
    get_sequence_store(Client, Id, #{}, #{}).

-spec get_sequence_store(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_sequence_store_response(), tuple()} |
    {error, any()} |
    {error, get_sequence_store_errors(), tuple()}.
get_sequence_store(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sequence_store(Client, Id, QueryMap, HeadersMap, []).

-spec get_sequence_store(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_sequence_store_response(), tuple()} |
    {error, any()} |
    {error, get_sequence_store_errors(), tuple()}.
get_sequence_store(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sequencestore/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the metadata for the specified resource share.
-spec get_share(aws_client:aws_client(), binary() | list()) ->
    {ok, get_share_response(), tuple()} |
    {error, any()} |
    {error, get_share_errors(), tuple()}.
get_share(Client, ShareId)
  when is_map(Client) ->
    get_share(Client, ShareId, #{}, #{}).

-spec get_share(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_share_response(), tuple()} |
    {error, any()} |
    {error, get_share_errors(), tuple()}.
get_share(Client, ShareId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_share(Client, ShareId, QueryMap, HeadersMap, []).

-spec get_share(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_share_response(), tuple()} |
    {error, any()} |
    {error, get_share_errors(), tuple()}.
get_share(Client, ShareId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/share/", aws_util:encode_uri(ShareId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a variant import job.
-spec get_variant_import_job(aws_client:aws_client(), binary() | list()) ->
    {ok, get_variant_import_response(), tuple()} |
    {error, any()} |
    {error, get_variant_import_job_errors(), tuple()}.
get_variant_import_job(Client, JobId)
  when is_map(Client) ->
    get_variant_import_job(Client, JobId, #{}, #{}).

-spec get_variant_import_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_variant_import_response(), tuple()} |
    {error, any()} |
    {error, get_variant_import_job_errors(), tuple()}.
get_variant_import_job(Client, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_variant_import_job(Client, JobId, QueryMap, HeadersMap, []).

-spec get_variant_import_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_variant_import_response(), tuple()} |
    {error, any()} |
    {error, get_variant_import_job_errors(), tuple()}.
get_variant_import_job(Client, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/import/variant/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a variant store.
-spec get_variant_store(aws_client:aws_client(), binary() | list()) ->
    {ok, get_variant_store_response(), tuple()} |
    {error, any()} |
    {error, get_variant_store_errors(), tuple()}.
get_variant_store(Client, Name)
  when is_map(Client) ->
    get_variant_store(Client, Name, #{}, #{}).

-spec get_variant_store(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_variant_store_response(), tuple()} |
    {error, any()} |
    {error, get_variant_store_errors(), tuple()}.
get_variant_store(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_variant_store(Client, Name, QueryMap, HeadersMap, []).

-spec get_variant_store(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_variant_store_response(), tuple()} |
    {error, any()} |
    {error, get_variant_store_errors(), tuple()}.
get_variant_store(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/variantStore/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a workflow.
%%
%% If a workflow is shared with you, you cannot export the workflow.
-spec get_workflow(aws_client:aws_client(), binary() | list()) ->
    {ok, get_workflow_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_errors(), tuple()}.
get_workflow(Client, Id)
  when is_map(Client) ->
    get_workflow(Client, Id, #{}, #{}).

-spec get_workflow(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_workflow_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_errors(), tuple()}.
get_workflow(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_workflow(Client, Id, QueryMap, HeadersMap, []).

-spec get_workflow(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_workflow_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_errors(), tuple()}.
get_workflow(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workflow/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"export">>, maps:get(<<"export">>, QueryMap, undefined)},
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)},
        {<<"workflowOwnerId">>, maps:get(<<"workflowOwnerId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of annotation import jobs.
-spec list_annotation_import_jobs(aws_client:aws_client(), list_annotation_import_jobs_request()) ->
    {ok, list_annotation_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_annotation_import_jobs_errors(), tuple()}.
list_annotation_import_jobs(Client, Input) ->
    list_annotation_import_jobs(Client, Input, []).

-spec list_annotation_import_jobs(aws_client:aws_client(), list_annotation_import_jobs_request(), proplists:proplist()) ->
    {ok, list_annotation_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_annotation_import_jobs_errors(), tuple()}.
list_annotation_import_jobs(Client, Input0, Options0) ->
    Method = post,
    Path = ["/import/annotations"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Lists the versions of an annotation store.
-spec list_annotation_store_versions(aws_client:aws_client(), binary() | list(), list_annotation_store_versions_request()) ->
    {ok, list_annotation_store_versions_response(), tuple()} |
    {error, any()} |
    {error, list_annotation_store_versions_errors(), tuple()}.
list_annotation_store_versions(Client, Name, Input) ->
    list_annotation_store_versions(Client, Name, Input, []).

-spec list_annotation_store_versions(aws_client:aws_client(), binary() | list(), list_annotation_store_versions_request(), proplists:proplist()) ->
    {ok, list_annotation_store_versions_response(), tuple()} |
    {error, any()} |
    {error, list_annotation_store_versions_errors(), tuple()}.
list_annotation_store_versions(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/annotationStore/", aws_util:encode_uri(Name), "/versions"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a list of annotation stores.
-spec list_annotation_stores(aws_client:aws_client(), list_annotation_stores_request()) ->
    {ok, list_annotation_stores_response(), tuple()} |
    {error, any()} |
    {error, list_annotation_stores_errors(), tuple()}.
list_annotation_stores(Client, Input) ->
    list_annotation_stores(Client, Input, []).

-spec list_annotation_stores(aws_client:aws_client(), list_annotation_stores_request(), proplists:proplist()) ->
    {ok, list_annotation_stores_response(), tuple()} |
    {error, any()} |
    {error, list_annotation_stores_errors(), tuple()}.
list_annotation_stores(Client, Input0, Options0) ->
    Method = post,
    Path = ["/annotationStores"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists multipart read set uploads and for in progress uploads.
%%
%% Once the upload is completed, a read set is created and the upload will no
%% longer be returned in the response.
-spec list_multipart_read_set_uploads(aws_client:aws_client(), binary() | list(), list_multipart_read_set_uploads_request()) ->
    {ok, list_multipart_read_set_uploads_response(), tuple()} |
    {error, any()} |
    {error, list_multipart_read_set_uploads_errors(), tuple()}.
list_multipart_read_set_uploads(Client, SequenceStoreId, Input) ->
    list_multipart_read_set_uploads(Client, SequenceStoreId, Input, []).

-spec list_multipart_read_set_uploads(aws_client:aws_client(), binary() | list(), list_multipart_read_set_uploads_request(), proplists:proplist()) ->
    {ok, list_multipart_read_set_uploads_response(), tuple()} |
    {error, any()} |
    {error, list_multipart_read_set_uploads_errors(), tuple()}.
list_multipart_read_set_uploads(Client, SequenceStoreId, Input0, Options0) ->
    Method = post,
    Path = ["/sequencestore/", aws_util:encode_uri(SequenceStoreId), "/uploads"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a list of read set activation jobs.
-spec list_read_set_activation_jobs(aws_client:aws_client(), binary() | list(), list_read_set_activation_jobs_request()) ->
    {ok, list_read_set_activation_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_read_set_activation_jobs_errors(), tuple()}.
list_read_set_activation_jobs(Client, SequenceStoreId, Input) ->
    list_read_set_activation_jobs(Client, SequenceStoreId, Input, []).

-spec list_read_set_activation_jobs(aws_client:aws_client(), binary() | list(), list_read_set_activation_jobs_request(), proplists:proplist()) ->
    {ok, list_read_set_activation_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_read_set_activation_jobs_errors(), tuple()}.
list_read_set_activation_jobs(Client, SequenceStoreId, Input0, Options0) ->
    Method = post,
    Path = ["/sequencestore/", aws_util:encode_uri(SequenceStoreId), "/activationjobs"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a list of read set export jobs.
-spec list_read_set_export_jobs(aws_client:aws_client(), binary() | list(), list_read_set_export_jobs_request()) ->
    {ok, list_read_set_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_read_set_export_jobs_errors(), tuple()}.
list_read_set_export_jobs(Client, SequenceStoreId, Input) ->
    list_read_set_export_jobs(Client, SequenceStoreId, Input, []).

-spec list_read_set_export_jobs(aws_client:aws_client(), binary() | list(), list_read_set_export_jobs_request(), proplists:proplist()) ->
    {ok, list_read_set_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_read_set_export_jobs_errors(), tuple()}.
list_read_set_export_jobs(Client, SequenceStoreId, Input0, Options0) ->
    Method = post,
    Path = ["/sequencestore/", aws_util:encode_uri(SequenceStoreId), "/exportjobs"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a list of read set import jobs.
-spec list_read_set_import_jobs(aws_client:aws_client(), binary() | list(), list_read_set_import_jobs_request()) ->
    {ok, list_read_set_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_read_set_import_jobs_errors(), tuple()}.
list_read_set_import_jobs(Client, SequenceStoreId, Input) ->
    list_read_set_import_jobs(Client, SequenceStoreId, Input, []).

-spec list_read_set_import_jobs(aws_client:aws_client(), binary() | list(), list_read_set_import_jobs_request(), proplists:proplist()) ->
    {ok, list_read_set_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_read_set_import_jobs_errors(), tuple()}.
list_read_set_import_jobs(Client, SequenceStoreId, Input0, Options0) ->
    Method = post,
    Path = ["/sequencestore/", aws_util:encode_uri(SequenceStoreId), "/importjobs"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This operation will list all parts in a requested multipart upload
%% for a sequence store.
-spec list_read_set_upload_parts(aws_client:aws_client(), binary() | list(), binary() | list(), list_read_set_upload_parts_request()) ->
    {ok, list_read_set_upload_parts_response(), tuple()} |
    {error, any()} |
    {error, list_read_set_upload_parts_errors(), tuple()}.
list_read_set_upload_parts(Client, SequenceStoreId, UploadId, Input) ->
    list_read_set_upload_parts(Client, SequenceStoreId, UploadId, Input, []).

-spec list_read_set_upload_parts(aws_client:aws_client(), binary() | list(), binary() | list(), list_read_set_upload_parts_request(), proplists:proplist()) ->
    {ok, list_read_set_upload_parts_response(), tuple()} |
    {error, any()} |
    {error, list_read_set_upload_parts_errors(), tuple()}.
list_read_set_upload_parts(Client, SequenceStoreId, UploadId, Input0, Options0) ->
    Method = post,
    Path = ["/sequencestore/", aws_util:encode_uri(SequenceStoreId), "/upload/", aws_util:encode_uri(UploadId), "/parts"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a list of read sets.
-spec list_read_sets(aws_client:aws_client(), binary() | list(), list_read_sets_request()) ->
    {ok, list_read_sets_response(), tuple()} |
    {error, any()} |
    {error, list_read_sets_errors(), tuple()}.
list_read_sets(Client, SequenceStoreId, Input) ->
    list_read_sets(Client, SequenceStoreId, Input, []).

-spec list_read_sets(aws_client:aws_client(), binary() | list(), list_read_sets_request(), proplists:proplist()) ->
    {ok, list_read_sets_response(), tuple()} |
    {error, any()} |
    {error, list_read_sets_errors(), tuple()}.
list_read_sets(Client, SequenceStoreId, Input0, Options0) ->
    Method = post,
    Path = ["/sequencestore/", aws_util:encode_uri(SequenceStoreId), "/readsets"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a list of reference import jobs.
-spec list_reference_import_jobs(aws_client:aws_client(), binary() | list(), list_reference_import_jobs_request()) ->
    {ok, list_reference_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_reference_import_jobs_errors(), tuple()}.
list_reference_import_jobs(Client, ReferenceStoreId, Input) ->
    list_reference_import_jobs(Client, ReferenceStoreId, Input, []).

-spec list_reference_import_jobs(aws_client:aws_client(), binary() | list(), list_reference_import_jobs_request(), proplists:proplist()) ->
    {ok, list_reference_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_reference_import_jobs_errors(), tuple()}.
list_reference_import_jobs(Client, ReferenceStoreId, Input0, Options0) ->
    Method = post,
    Path = ["/referencestore/", aws_util:encode_uri(ReferenceStoreId), "/importjobs"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a list of reference stores.
-spec list_reference_stores(aws_client:aws_client(), list_reference_stores_request()) ->
    {ok, list_reference_stores_response(), tuple()} |
    {error, any()} |
    {error, list_reference_stores_errors(), tuple()}.
list_reference_stores(Client, Input) ->
    list_reference_stores(Client, Input, []).

-spec list_reference_stores(aws_client:aws_client(), list_reference_stores_request(), proplists:proplist()) ->
    {ok, list_reference_stores_response(), tuple()} |
    {error, any()} |
    {error, list_reference_stores_errors(), tuple()}.
list_reference_stores(Client, Input0, Options0) ->
    Method = post,
    Path = ["/referencestores"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a list of references.
-spec list_references(aws_client:aws_client(), binary() | list(), list_references_request()) ->
    {ok, list_references_response(), tuple()} |
    {error, any()} |
    {error, list_references_errors(), tuple()}.
list_references(Client, ReferenceStoreId, Input) ->
    list_references(Client, ReferenceStoreId, Input, []).

-spec list_references(aws_client:aws_client(), binary() | list(), list_references_request(), proplists:proplist()) ->
    {ok, list_references_response(), tuple()} |
    {error, any()} |
    {error, list_references_errors(), tuple()}.
list_references(Client, ReferenceStoreId, Input0, Options0) ->
    Method = post,
    Path = ["/referencestore/", aws_util:encode_uri(ReferenceStoreId), "/references"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a list of your run caches.
-spec list_run_caches(aws_client:aws_client()) ->
    {ok, list_run_caches_response(), tuple()} |
    {error, any()} |
    {error, list_run_caches_errors(), tuple()}.
list_run_caches(Client)
  when is_map(Client) ->
    list_run_caches(Client, #{}, #{}).

-spec list_run_caches(aws_client:aws_client(), map(), map()) ->
    {ok, list_run_caches_response(), tuple()} |
    {error, any()} |
    {error, list_run_caches_errors(), tuple()}.
list_run_caches(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_run_caches(Client, QueryMap, HeadersMap, []).

-spec list_run_caches(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_run_caches_response(), tuple()} |
    {error, any()} |
    {error, list_run_caches_errors(), tuple()}.
list_run_caches(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/runCache"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"startingToken">>, maps:get(<<"startingToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of run groups.
-spec list_run_groups(aws_client:aws_client()) ->
    {ok, list_run_groups_response(), tuple()} |
    {error, any()} |
    {error, list_run_groups_errors(), tuple()}.
list_run_groups(Client)
  when is_map(Client) ->
    list_run_groups(Client, #{}, #{}).

-spec list_run_groups(aws_client:aws_client(), map(), map()) ->
    {ok, list_run_groups_response(), tuple()} |
    {error, any()} |
    {error, list_run_groups_errors(), tuple()}.
list_run_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_run_groups(Client, QueryMap, HeadersMap, []).

-spec list_run_groups(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_run_groups_response(), tuple()} |
    {error, any()} |
    {error, list_run_groups_errors(), tuple()}.
list_run_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/runGroup"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"startingToken">>, maps:get(<<"startingToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of tasks for a run.
-spec list_run_tasks(aws_client:aws_client(), binary() | list()) ->
    {ok, list_run_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_run_tasks_errors(), tuple()}.
list_run_tasks(Client, Id)
  when is_map(Client) ->
    list_run_tasks(Client, Id, #{}, #{}).

-spec list_run_tasks(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_run_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_run_tasks_errors(), tuple()}.
list_run_tasks(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_run_tasks(Client, Id, QueryMap, HeadersMap, []).

-spec list_run_tasks(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_run_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_run_tasks_errors(), tuple()}.
list_run_tasks(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/run/", aws_util:encode_uri(Id), "/task"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"startingToken">>, maps:get(<<"startingToken">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of runs.
%%
%% HealthOmics stores a fixed number of runs that are available to the
%% console and API. If
%% the ListRuns response doesn't include specific runs that you expected,
%% you can find run logs
%% for all runs in the CloudWatch logs. For more information about viewing
%% the run logs, see CloudWatch logs:
%% https://docs.aws.amazon.com/omics/latest/dev/cloudwatch-logs.html
%% in the AWS HealthOmics User Guide.
-spec list_runs(aws_client:aws_client()) ->
    {ok, list_runs_response(), tuple()} |
    {error, any()} |
    {error, list_runs_errors(), tuple()}.
list_runs(Client)
  when is_map(Client) ->
    list_runs(Client, #{}, #{}).

-spec list_runs(aws_client:aws_client(), map(), map()) ->
    {ok, list_runs_response(), tuple()} |
    {error, any()} |
    {error, list_runs_errors(), tuple()}.
list_runs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_runs(Client, QueryMap, HeadersMap, []).

-spec list_runs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_runs_response(), tuple()} |
    {error, any()} |
    {error, list_runs_errors(), tuple()}.
list_runs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/run"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"runGroupId">>, maps:get(<<"runGroupId">>, QueryMap, undefined)},
        {<<"startingToken">>, maps:get(<<"startingToken">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of sequence stores.
-spec list_sequence_stores(aws_client:aws_client(), list_sequence_stores_request()) ->
    {ok, list_sequence_stores_response(), tuple()} |
    {error, any()} |
    {error, list_sequence_stores_errors(), tuple()}.
list_sequence_stores(Client, Input) ->
    list_sequence_stores(Client, Input, []).

-spec list_sequence_stores(aws_client:aws_client(), list_sequence_stores_request(), proplists:proplist()) ->
    {ok, list_sequence_stores_response(), tuple()} |
    {error, any()} |
    {error, list_sequence_stores_errors(), tuple()}.
list_sequence_stores(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sequencestores"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the resource shares associated with an account.
%%
%% Use the filter parameter to
%% retrieve a specific subset of the shares.
-spec list_shares(aws_client:aws_client(), list_shares_request()) ->
    {ok, list_shares_response(), tuple()} |
    {error, any()} |
    {error, list_shares_errors(), tuple()}.
list_shares(Client, Input) ->
    list_shares(Client, Input, []).

-spec list_shares(aws_client:aws_client(), list_shares_request(), proplists:proplist()) ->
    {ok, list_shares_response(), tuple()} |
    {error, any()} |
    {error, list_shares_errors(), tuple()}.
list_shares(Client, Input0, Options0) ->
    Method = post,
    Path = ["/shares"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a list of tags for a resource.
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

%% @doc Retrieves a list of variant import jobs.
-spec list_variant_import_jobs(aws_client:aws_client(), list_variant_import_jobs_request()) ->
    {ok, list_variant_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_variant_import_jobs_errors(), tuple()}.
list_variant_import_jobs(Client, Input) ->
    list_variant_import_jobs(Client, Input, []).

-spec list_variant_import_jobs(aws_client:aws_client(), list_variant_import_jobs_request(), proplists:proplist()) ->
    {ok, list_variant_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_variant_import_jobs_errors(), tuple()}.
list_variant_import_jobs(Client, Input0, Options0) ->
    Method = post,
    Path = ["/import/variants"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a list of variant stores.
-spec list_variant_stores(aws_client:aws_client(), list_variant_stores_request()) ->
    {ok, list_variant_stores_response(), tuple()} |
    {error, any()} |
    {error, list_variant_stores_errors(), tuple()}.
list_variant_stores(Client, Input) ->
    list_variant_stores(Client, Input, []).

-spec list_variant_stores(aws_client:aws_client(), list_variant_stores_request(), proplists:proplist()) ->
    {ok, list_variant_stores_response(), tuple()} |
    {error, any()} |
    {error, list_variant_stores_errors(), tuple()}.
list_variant_stores(Client, Input0, Options0) ->
    Method = post,
    Path = ["/variantStores"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a list of workflows.
-spec list_workflows(aws_client:aws_client()) ->
    {ok, list_workflows_response(), tuple()} |
    {error, any()} |
    {error, list_workflows_errors(), tuple()}.
list_workflows(Client)
  when is_map(Client) ->
    list_workflows(Client, #{}, #{}).

-spec list_workflows(aws_client:aws_client(), map(), map()) ->
    {ok, list_workflows_response(), tuple()} |
    {error, any()} |
    {error, list_workflows_errors(), tuple()}.
list_workflows(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_workflows(Client, QueryMap, HeadersMap, []).

-spec list_workflows(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_workflows_response(), tuple()} |
    {error, any()} |
    {error, list_workflows_errors(), tuple()}.
list_workflows(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workflow"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"startingToken">>, maps:get(<<"startingToken">>, QueryMap, undefined)},
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Starts an annotation import job.
-spec start_annotation_import_job(aws_client:aws_client(), start_annotation_import_request()) ->
    {ok, start_annotation_import_response(), tuple()} |
    {error, any()} |
    {error, start_annotation_import_job_errors(), tuple()}.
start_annotation_import_job(Client, Input) ->
    start_annotation_import_job(Client, Input, []).

-spec start_annotation_import_job(aws_client:aws_client(), start_annotation_import_request(), proplists:proplist()) ->
    {ok, start_annotation_import_response(), tuple()} |
    {error, any()} |
    {error, start_annotation_import_job_errors(), tuple()}.
start_annotation_import_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/import/annotation"],
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

%% @doc Activates an archived read set.
%%
%% To reduce storage charges, Amazon Omics archives unused read
%% sets after 30 days.
-spec start_read_set_activation_job(aws_client:aws_client(), binary() | list(), start_read_set_activation_job_request()) ->
    {ok, start_read_set_activation_job_response(), tuple()} |
    {error, any()} |
    {error, start_read_set_activation_job_errors(), tuple()}.
start_read_set_activation_job(Client, SequenceStoreId, Input) ->
    start_read_set_activation_job(Client, SequenceStoreId, Input, []).

-spec start_read_set_activation_job(aws_client:aws_client(), binary() | list(), start_read_set_activation_job_request(), proplists:proplist()) ->
    {ok, start_read_set_activation_job_response(), tuple()} |
    {error, any()} |
    {error, start_read_set_activation_job_errors(), tuple()}.
start_read_set_activation_job(Client, SequenceStoreId, Input0, Options0) ->
    Method = post,
    Path = ["/sequencestore/", aws_util:encode_uri(SequenceStoreId), "/activationjob"],
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

%% @doc Exports a read set to Amazon S3.
-spec start_read_set_export_job(aws_client:aws_client(), binary() | list(), start_read_set_export_job_request()) ->
    {ok, start_read_set_export_job_response(), tuple()} |
    {error, any()} |
    {error, start_read_set_export_job_errors(), tuple()}.
start_read_set_export_job(Client, SequenceStoreId, Input) ->
    start_read_set_export_job(Client, SequenceStoreId, Input, []).

-spec start_read_set_export_job(aws_client:aws_client(), binary() | list(), start_read_set_export_job_request(), proplists:proplist()) ->
    {ok, start_read_set_export_job_response(), tuple()} |
    {error, any()} |
    {error, start_read_set_export_job_errors(), tuple()}.
start_read_set_export_job(Client, SequenceStoreId, Input0, Options0) ->
    Method = post,
    Path = ["/sequencestore/", aws_util:encode_uri(SequenceStoreId), "/exportjob"],
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

%% @doc Starts a read set import job.
-spec start_read_set_import_job(aws_client:aws_client(), binary() | list(), start_read_set_import_job_request()) ->
    {ok, start_read_set_import_job_response(), tuple()} |
    {error, any()} |
    {error, start_read_set_import_job_errors(), tuple()}.
start_read_set_import_job(Client, SequenceStoreId, Input) ->
    start_read_set_import_job(Client, SequenceStoreId, Input, []).

-spec start_read_set_import_job(aws_client:aws_client(), binary() | list(), start_read_set_import_job_request(), proplists:proplist()) ->
    {ok, start_read_set_import_job_response(), tuple()} |
    {error, any()} |
    {error, start_read_set_import_job_errors(), tuple()}.
start_read_set_import_job(Client, SequenceStoreId, Input0, Options0) ->
    Method = post,
    Path = ["/sequencestore/", aws_util:encode_uri(SequenceStoreId), "/importjob"],
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

%% @doc Starts a reference import job.
-spec start_reference_import_job(aws_client:aws_client(), binary() | list(), start_reference_import_job_request()) ->
    {ok, start_reference_import_job_response(), tuple()} |
    {error, any()} |
    {error, start_reference_import_job_errors(), tuple()}.
start_reference_import_job(Client, ReferenceStoreId, Input) ->
    start_reference_import_job(Client, ReferenceStoreId, Input, []).

-spec start_reference_import_job(aws_client:aws_client(), binary() | list(), start_reference_import_job_request(), proplists:proplist()) ->
    {ok, start_reference_import_job_response(), tuple()} |
    {error, any()} |
    {error, start_reference_import_job_errors(), tuple()}.
start_reference_import_job(Client, ReferenceStoreId, Input0, Options0) ->
    Method = post,
    Path = ["/referencestore/", aws_util:encode_uri(ReferenceStoreId), "/importjob"],
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

%% @doc Starts a workflow run.
%%
%% To duplicate a run, specify the run's ID and a role ARN. The
%% remaining parameters are copied from the previous run.
%%
%% StartRun will not support re-run for a workflow that is shared with you.
%%
%% HealthOmics stores a fixed number of runs that are available to the
%% console and API.
%% By default, HealthOmics doesn't any remove any runs. If HealthOmics
%% reaches the maximum
%% number of runs, you must manually remove runs. To have older runs removed
%% automatically,
%% set the retention mode to `REMOVE'.
%%
%% By default, the run uses STATIC storage. For STATIC storage, set the
%% `storageCapacity' field.
%% You can set the storage type to DYNAMIC. You do not set
%% `storageCapacity',
%% because HealthOmics dynamically scales the storage up or down as required.
%% For more information about static and dynamic storage, see Running
%% workflows:
%% https://docs.aws.amazon.com/omics/latest/dev/Using-workflows.html
%% in the AWS HealthOmics User Guide.
-spec start_run(aws_client:aws_client(), start_run_request()) ->
    {ok, start_run_response(), tuple()} |
    {error, any()} |
    {error, start_run_errors(), tuple()}.
start_run(Client, Input) ->
    start_run(Client, Input, []).

-spec start_run(aws_client:aws_client(), start_run_request(), proplists:proplist()) ->
    {ok, start_run_response(), tuple()} |
    {error, any()} |
    {error, start_run_errors(), tuple()}.
start_run(Client, Input0, Options0) ->
    Method = post,
    Path = ["/run"],
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

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Starts a variant import job.
-spec start_variant_import_job(aws_client:aws_client(), start_variant_import_request()) ->
    {ok, start_variant_import_response(), tuple()} |
    {error, any()} |
    {error, start_variant_import_job_errors(), tuple()}.
start_variant_import_job(Client, Input) ->
    start_variant_import_job(Client, Input, []).

-spec start_variant_import_job(aws_client:aws_client(), start_variant_import_request(), proplists:proplist()) ->
    {ok, start_variant_import_response(), tuple()} |
    {error, any()} |
    {error, start_variant_import_job_errors(), tuple()}.
start_variant_import_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/import/variant"],
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

%% @doc Tags a resource.
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

%% @doc Removes tags from a resource.
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

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an annotation store.
-spec update_annotation_store(aws_client:aws_client(), binary() | list(), update_annotation_store_request()) ->
    {ok, update_annotation_store_response(), tuple()} |
    {error, any()} |
    {error, update_annotation_store_errors(), tuple()}.
update_annotation_store(Client, Name, Input) ->
    update_annotation_store(Client, Name, Input, []).

-spec update_annotation_store(aws_client:aws_client(), binary() | list(), update_annotation_store_request(), proplists:proplist()) ->
    {ok, update_annotation_store_response(), tuple()} |
    {error, any()} |
    {error, update_annotation_store_errors(), tuple()}.
update_annotation_store(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/annotationStore/", aws_util:encode_uri(Name), ""],
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

%% @doc
%% Updates the description of an annotation store version.
-spec update_annotation_store_version(aws_client:aws_client(), binary() | list(), binary() | list(), update_annotation_store_version_request()) ->
    {ok, update_annotation_store_version_response(), tuple()} |
    {error, any()} |
    {error, update_annotation_store_version_errors(), tuple()}.
update_annotation_store_version(Client, Name, VersionName, Input) ->
    update_annotation_store_version(Client, Name, VersionName, Input, []).

-spec update_annotation_store_version(aws_client:aws_client(), binary() | list(), binary() | list(), update_annotation_store_version_request(), proplists:proplist()) ->
    {ok, update_annotation_store_version_response(), tuple()} |
    {error, any()} |
    {error, update_annotation_store_version_errors(), tuple()}.
update_annotation_store_version(Client, Name, VersionName, Input0, Options0) ->
    Method = post,
    Path = ["/annotationStore/", aws_util:encode_uri(Name), "/version/", aws_util:encode_uri(VersionName), ""],
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

%% @doc Update a run cache.
-spec update_run_cache(aws_client:aws_client(), binary() | list(), update_run_cache_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_run_cache_errors(), tuple()}.
update_run_cache(Client, Id, Input) ->
    update_run_cache(Client, Id, Input, []).

-spec update_run_cache(aws_client:aws_client(), binary() | list(), update_run_cache_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_run_cache_errors(), tuple()}.
update_run_cache(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/runCache/", aws_util:encode_uri(Id), ""],
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

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a run group.
-spec update_run_group(aws_client:aws_client(), binary() | list(), update_run_group_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_run_group_errors(), tuple()}.
update_run_group(Client, Id, Input) ->
    update_run_group(Client, Id, Input, []).

-spec update_run_group(aws_client:aws_client(), binary() | list(), update_run_group_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_run_group_errors(), tuple()}.
update_run_group(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/runGroup/", aws_util:encode_uri(Id), ""],
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

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a variant store.
-spec update_variant_store(aws_client:aws_client(), binary() | list(), update_variant_store_request()) ->
    {ok, update_variant_store_response(), tuple()} |
    {error, any()} |
    {error, update_variant_store_errors(), tuple()}.
update_variant_store(Client, Name, Input) ->
    update_variant_store(Client, Name, Input, []).

-spec update_variant_store(aws_client:aws_client(), binary() | list(), update_variant_store_request(), proplists:proplist()) ->
    {ok, update_variant_store_response(), tuple()} |
    {error, any()} |
    {error, update_variant_store_errors(), tuple()}.
update_variant_store(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/variantStore/", aws_util:encode_uri(Name), ""],
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

%% @doc Updates a workflow.
-spec update_workflow(aws_client:aws_client(), binary() | list(), update_workflow_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_workflow_errors(), tuple()}.
update_workflow(Client, Id, Input) ->
    update_workflow(Client, Id, Input, []).

-spec update_workflow(aws_client:aws_client(), binary() | list(), update_workflow_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_workflow_errors(), tuple()}.
update_workflow(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/workflow/", aws_util:encode_uri(Id), ""],
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

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This operation uploads a specific part of a read set.
%%
%% If you upload a new part using a previously used part number,
%% the previously uploaded part will be overwritten.
-spec upload_read_set_part(aws_client:aws_client(), binary() | list(), binary() | list(), upload_read_set_part_request()) ->
    {ok, upload_read_set_part_response(), tuple()} |
    {error, any()} |
    {error, upload_read_set_part_errors(), tuple()}.
upload_read_set_part(Client, SequenceStoreId, UploadId, Input) ->
    upload_read_set_part(Client, SequenceStoreId, UploadId, Input, []).

-spec upload_read_set_part(aws_client:aws_client(), binary() | list(), binary() | list(), upload_read_set_part_request(), proplists:proplist()) ->
    {ok, upload_read_set_part_response(), tuple()} |
    {error, any()} |
    {error, upload_read_set_part_errors(), tuple()}.
upload_read_set_part(Client, SequenceStoreId, UploadId, Input0, Options0) ->
    Method = put,
    Path = ["/sequencestore/", aws_util:encode_uri(SequenceStoreId), "/upload/", aws_util:encode_uri(UploadId), "/part"],
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
                     {<<"partNumber">>, <<"partNumber">>},
                     {<<"partSource">>, <<"partSource">>}
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
    Client1 = Client#{service => <<"omics">>},
    Host = build_host(<<"omics">>, Client1),
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
