%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS HealthLake is a HIPAA eligibile service that allows customers to
%% store,
%% transform, query, and analyze their FHIR-formatted data in a consistent
%% fashion in the cloud.
-module(aws_healthlake).

-export([create_fhir_datastore/2,
         create_fhir_datastore/3,
         delete_fhir_datastore/2,
         delete_fhir_datastore/3,
         describe_fhir_datastore/2,
         describe_fhir_datastore/3,
         describe_fhir_export_job/2,
         describe_fhir_export_job/3,
         describe_fhir_import_job/2,
         describe_fhir_import_job/3,
         list_fhir_datastores/2,
         list_fhir_datastores/3,
         list_fhir_export_jobs/2,
         list_fhir_export_jobs/3,
         list_fhir_import_jobs/2,
         list_fhir_import_jobs/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         start_fhir_export_job/2,
         start_fhir_export_job/3,
         start_fhir_import_job/2,
         start_fhir_import_job/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% identity_provider_configuration() :: #{
%%   <<"AuthorizationStrategy">> => list(any()),
%%   <<"FineGrainedAuthorizationEnabled">> => boolean(),
%%   <<"IdpLambdaArn">> => string(),
%%   <<"Metadata">> => string()
%% }
-type identity_provider_configuration() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% describe_fhir_import_job_request() :: #{
%%   <<"DatastoreId">> := string(),
%%   <<"JobId">> := string()
%% }
-type describe_fhir_import_job_request() :: #{binary() => any()}.

%% Example:
%% create_fhir_datastore_response() :: #{
%%   <<"DatastoreArn">> => string(),
%%   <<"DatastoreEndpoint">> => string(),
%%   <<"DatastoreId">> => string(),
%%   <<"DatastoreStatus">> => list(any())
%% }
-type create_fhir_datastore_response() :: #{binary() => any()}.

%% Example:
%% describe_fhir_export_job_request() :: #{
%%   <<"DatastoreId">> := string(),
%%   <<"JobId">> := string()
%% }
-type describe_fhir_export_job_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% start_fhir_import_job_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DataAccessRoleArn">> := string(),
%%   <<"DatastoreId">> := string(),
%%   <<"InputDataConfig">> := list(),
%%   <<"JobName">> => string(),
%%   <<"JobOutputDataConfig">> := list()
%% }
-type start_fhir_import_job_request() :: #{binary() => any()}.

%% Example:
%% export_job_properties() :: #{
%%   <<"DataAccessRoleArn">> => string(),
%%   <<"DatastoreId">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"JobId">> => string(),
%%   <<"JobName">> => string(),
%%   <<"JobStatus">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"OutputDataConfig">> => list(),
%%   <<"SubmitTime">> => non_neg_integer()
%% }
-type export_job_properties() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% import_job_properties() :: #{
%%   <<"DataAccessRoleArn">> => string(),
%%   <<"DatastoreId">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"InputDataConfig">> => list(),
%%   <<"JobId">> => string(),
%%   <<"JobName">> => string(),
%%   <<"JobOutputDataConfig">> => list(),
%%   <<"JobProgressReport">> => job_progress_report(),
%%   <<"JobStatus">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"SubmitTime">> => non_neg_integer()
%% }
-type import_job_properties() :: #{binary() => any()}.

%% Example:
%% preload_data_config() :: #{
%%   <<"PreloadDataType">> => list(any())
%% }
-type preload_data_config() :: #{binary() => any()}.

%% Example:
%% datastore_filter() :: #{
%%   <<"CreatedAfter">> => non_neg_integer(),
%%   <<"CreatedBefore">> => non_neg_integer(),
%%   <<"DatastoreName">> => string(),
%%   <<"DatastoreStatus">> => list(any())
%% }
-type datastore_filter() :: #{binary() => any()}.

%% Example:
%% list_fhir_datastores_response() :: #{
%%   <<"DatastorePropertiesList">> => list(datastore_properties()),
%%   <<"NextToken">> => string()
%% }
-type list_fhir_datastores_response() :: #{binary() => any()}.

%% Example:
%% describe_fhir_export_job_response() :: #{
%%   <<"ExportJobProperties">> => export_job_properties()
%% }
-type describe_fhir_export_job_response() :: #{binary() => any()}.

%% Example:
%% start_fhir_import_job_response() :: #{
%%   <<"DatastoreId">> => string(),
%%   <<"JobId">> => string(),
%%   <<"JobStatus">> => list(any())
%% }
-type start_fhir_import_job_response() :: #{binary() => any()}.

%% Example:
%% list_fhir_export_jobs_response() :: #{
%%   <<"ExportJobPropertiesList">> => list(export_job_properties()),
%%   <<"NextToken">> => string()
%% }
-type list_fhir_export_jobs_response() :: #{binary() => any()}.

%% Example:
%% error_cause() :: #{
%%   <<"ErrorCategory">> => list(any()),
%%   <<"ErrorMessage">> => string()
%% }
-type error_cause() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% list_fhir_export_jobs_request() :: #{
%%   <<"DatastoreId">> := string(),
%%   <<"JobName">> => string(),
%%   <<"JobStatus">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SubmittedAfter">> => non_neg_integer(),
%%   <<"SubmittedBefore">> => non_neg_integer()
%% }
-type list_fhir_export_jobs_request() :: #{binary() => any()}.

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
%% delete_fhir_datastore_request() :: #{
%%   <<"DatastoreId">> := string()
%% }
-type delete_fhir_datastore_request() :: #{binary() => any()}.

%% Example:
%% delete_fhir_datastore_response() :: #{
%%   <<"DatastoreArn">> => string(),
%%   <<"DatastoreEndpoint">> => string(),
%%   <<"DatastoreId">> => string(),
%%   <<"DatastoreStatus">> => list(any())
%% }
-type delete_fhir_datastore_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% datastore_properties() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DatastoreArn">> => string(),
%%   <<"DatastoreEndpoint">> => string(),
%%   <<"DatastoreId">> => string(),
%%   <<"DatastoreName">> => string(),
%%   <<"DatastoreStatus">> => list(any()),
%%   <<"DatastoreTypeVersion">> => list(any()),
%%   <<"ErrorCause">> => error_cause(),
%%   <<"IdentityProviderConfiguration">> => identity_provider_configuration(),
%%   <<"PreloadDataConfig">> => preload_data_config(),
%%   <<"SseConfiguration">> => sse_configuration()
%% }
-type datastore_properties() :: #{binary() => any()}.

%% Example:
%% sse_configuration() :: #{
%%   <<"KmsEncryptionConfig">> => kms_encryption_config()
%% }
-type sse_configuration() :: #{binary() => any()}.

%% Example:
%% list_fhir_datastores_request() :: #{
%%   <<"Filter">> => datastore_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_fhir_datastores_request() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% kms_encryption_config() :: #{
%%   <<"CmkType">> => list(any()),
%%   <<"KmsKeyId">> => string()
%% }
-type kms_encryption_config() :: #{binary() => any()}.

%% Example:
%% describe_fhir_datastore_request() :: #{
%%   <<"DatastoreId">> := string()
%% }
-type describe_fhir_datastore_request() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% list_fhir_import_jobs_response() :: #{
%%   <<"ImportJobPropertiesList">> => list(import_job_properties()),
%%   <<"NextToken">> => string()
%% }
-type list_fhir_import_jobs_response() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% job_progress_report() :: #{
%%   <<"Throughput">> => float(),
%%   <<"TotalNumberOfFilesReadWithCustomerError">> => float(),
%%   <<"TotalNumberOfImportedFiles">> => float(),
%%   <<"TotalNumberOfResourcesImported">> => float(),
%%   <<"TotalNumberOfResourcesScanned">> => float(),
%%   <<"TotalNumberOfResourcesWithCustomerError">> => float(),
%%   <<"TotalNumberOfScannedFiles">> => float(),
%%   <<"TotalSizeOfScannedFilesInMB">> => float()
%% }
-type job_progress_report() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% s3_configuration() :: #{
%%   <<"KmsKeyId">> => string(),
%%   <<"S3Uri">> => string()
%% }
-type s3_configuration() :: #{binary() => any()}.

%% Example:
%% describe_fhir_import_job_response() :: #{
%%   <<"ImportJobProperties">> => import_job_properties()
%% }
-type describe_fhir_import_job_response() :: #{binary() => any()}.

%% Example:
%% list_fhir_import_jobs_request() :: #{
%%   <<"DatastoreId">> := string(),
%%   <<"JobName">> => string(),
%%   <<"JobStatus">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SubmittedAfter">> => non_neg_integer(),
%%   <<"SubmittedBefore">> => non_neg_integer()
%% }
-type list_fhir_import_jobs_request() :: #{binary() => any()}.

%% Example:
%% create_fhir_datastore_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DatastoreName">> => string(),
%%   <<"DatastoreTypeVersion">> := list(any()),
%%   <<"IdentityProviderConfiguration">> => identity_provider_configuration(),
%%   <<"PreloadDataConfig">> => preload_data_config(),
%%   <<"SseConfiguration">> => sse_configuration(),
%%   <<"Tags">> => list(tag())
%% }
-type create_fhir_datastore_request() :: #{binary() => any()}.

%% Example:
%% start_fhir_export_job_response() :: #{
%%   <<"DatastoreId">> => string(),
%%   <<"JobId">> => string(),
%%   <<"JobStatus">> => list(any())
%% }
-type start_fhir_export_job_response() :: #{binary() => any()}.

%% Example:
%% start_fhir_export_job_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DataAccessRoleArn">> := string(),
%%   <<"DatastoreId">> := string(),
%%   <<"JobName">> => string(),
%%   <<"OutputDataConfig">> := list()
%% }
-type start_fhir_export_job_request() :: #{binary() => any()}.

%% Example:
%% describe_fhir_datastore_response() :: #{
%%   <<"DatastoreProperties">> => datastore_properties()
%% }
-type describe_fhir_datastore_response() :: #{binary() => any()}.

-type create_fhir_datastore_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type delete_fhir_datastore_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_fhir_datastore_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_fhir_export_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_fhir_import_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_fhir_datastores_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception().

-type list_fhir_export_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_fhir_import_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type start_fhir_export_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type start_fhir_import_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a data store that can ingest and export FHIR formatted data.
-spec create_fhir_datastore(aws_client:aws_client(), create_fhir_datastore_request()) ->
    {ok, create_fhir_datastore_response(), tuple()} |
    {error, any()} |
    {error, create_fhir_datastore_errors(), tuple()}.
create_fhir_datastore(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_fhir_datastore(Client, Input, []).

-spec create_fhir_datastore(aws_client:aws_client(), create_fhir_datastore_request(), proplists:proplist()) ->
    {ok, create_fhir_datastore_response(), tuple()} |
    {error, any()} |
    {error, create_fhir_datastore_errors(), tuple()}.
create_fhir_datastore(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFHIRDatastore">>, Input, Options).

%% @doc Deletes a data store.
-spec delete_fhir_datastore(aws_client:aws_client(), delete_fhir_datastore_request()) ->
    {ok, delete_fhir_datastore_response(), tuple()} |
    {error, any()} |
    {error, delete_fhir_datastore_errors(), tuple()}.
delete_fhir_datastore(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_fhir_datastore(Client, Input, []).

-spec delete_fhir_datastore(aws_client:aws_client(), delete_fhir_datastore_request(), proplists:proplist()) ->
    {ok, delete_fhir_datastore_response(), tuple()} |
    {error, any()} |
    {error, delete_fhir_datastore_errors(), tuple()}.
delete_fhir_datastore(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFHIRDatastore">>, Input, Options).

%% @doc Gets the properties associated with the FHIR data store, including
%% the data store ID,
%% data store ARN, data store name, data store status, when the data store
%% was created, data store type version, and the data store's endpoint.
-spec describe_fhir_datastore(aws_client:aws_client(), describe_fhir_datastore_request()) ->
    {ok, describe_fhir_datastore_response(), tuple()} |
    {error, any()} |
    {error, describe_fhir_datastore_errors(), tuple()}.
describe_fhir_datastore(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fhir_datastore(Client, Input, []).

-spec describe_fhir_datastore(aws_client:aws_client(), describe_fhir_datastore_request(), proplists:proplist()) ->
    {ok, describe_fhir_datastore_response(), tuple()} |
    {error, any()} |
    {error, describe_fhir_datastore_errors(), tuple()}.
describe_fhir_datastore(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFHIRDatastore">>, Input, Options).

%% @doc Displays the properties of a FHIR export job, including the ID, ARN,
%% name, and the status of the job.
-spec describe_fhir_export_job(aws_client:aws_client(), describe_fhir_export_job_request()) ->
    {ok, describe_fhir_export_job_response(), tuple()} |
    {error, any()} |
    {error, describe_fhir_export_job_errors(), tuple()}.
describe_fhir_export_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fhir_export_job(Client, Input, []).

-spec describe_fhir_export_job(aws_client:aws_client(), describe_fhir_export_job_request(), proplists:proplist()) ->
    {ok, describe_fhir_export_job_response(), tuple()} |
    {error, any()} |
    {error, describe_fhir_export_job_errors(), tuple()}.
describe_fhir_export_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFHIRExportJob">>, Input, Options).

%% @doc Displays the properties of a FHIR import job, including the ID, ARN,
%% name, and the status of the job.
-spec describe_fhir_import_job(aws_client:aws_client(), describe_fhir_import_job_request()) ->
    {ok, describe_fhir_import_job_response(), tuple()} |
    {error, any()} |
    {error, describe_fhir_import_job_errors(), tuple()}.
describe_fhir_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fhir_import_job(Client, Input, []).

-spec describe_fhir_import_job(aws_client:aws_client(), describe_fhir_import_job_request(), proplists:proplist()) ->
    {ok, describe_fhir_import_job_response(), tuple()} |
    {error, any()} |
    {error, describe_fhir_import_job_errors(), tuple()}.
describe_fhir_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFHIRImportJob">>, Input, Options).

%% @doc Lists all FHIR data stores that are in the user’s account, regardless
%% of data store status.
-spec list_fhir_datastores(aws_client:aws_client(), list_fhir_datastores_request()) ->
    {ok, list_fhir_datastores_response(), tuple()} |
    {error, any()} |
    {error, list_fhir_datastores_errors(), tuple()}.
list_fhir_datastores(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_fhir_datastores(Client, Input, []).

-spec list_fhir_datastores(aws_client:aws_client(), list_fhir_datastores_request(), proplists:proplist()) ->
    {ok, list_fhir_datastores_response(), tuple()} |
    {error, any()} |
    {error, list_fhir_datastores_errors(), tuple()}.
list_fhir_datastores(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFHIRDatastores">>, Input, Options).

%% @doc
%% Lists all FHIR export jobs associated with an account and their statuses.
-spec list_fhir_export_jobs(aws_client:aws_client(), list_fhir_export_jobs_request()) ->
    {ok, list_fhir_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_fhir_export_jobs_errors(), tuple()}.
list_fhir_export_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_fhir_export_jobs(Client, Input, []).

-spec list_fhir_export_jobs(aws_client:aws_client(), list_fhir_export_jobs_request(), proplists:proplist()) ->
    {ok, list_fhir_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_fhir_export_jobs_errors(), tuple()}.
list_fhir_export_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFHIRExportJobs">>, Input, Options).

%% @doc
%% Lists all FHIR import jobs associated with an account and their statuses.
-spec list_fhir_import_jobs(aws_client:aws_client(), list_fhir_import_jobs_request()) ->
    {ok, list_fhir_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_fhir_import_jobs_errors(), tuple()}.
list_fhir_import_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_fhir_import_jobs(Client, Input, []).

-spec list_fhir_import_jobs(aws_client:aws_client(), list_fhir_import_jobs_request(), proplists:proplist()) ->
    {ok, list_fhir_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_fhir_import_jobs_errors(), tuple()}.
list_fhir_import_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFHIRImportJobs">>, Input, Options).

%% @doc
%% Returns a list of all existing tags associated with a data store.
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

%% @doc Begins a FHIR export job.
-spec start_fhir_export_job(aws_client:aws_client(), start_fhir_export_job_request()) ->
    {ok, start_fhir_export_job_response(), tuple()} |
    {error, any()} |
    {error, start_fhir_export_job_errors(), tuple()}.
start_fhir_export_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_fhir_export_job(Client, Input, []).

-spec start_fhir_export_job(aws_client:aws_client(), start_fhir_export_job_request(), proplists:proplist()) ->
    {ok, start_fhir_export_job_response(), tuple()} |
    {error, any()} |
    {error, start_fhir_export_job_errors(), tuple()}.
start_fhir_export_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartFHIRExportJob">>, Input, Options).

%% @doc Begins a FHIR Import job.
-spec start_fhir_import_job(aws_client:aws_client(), start_fhir_import_job_request()) ->
    {ok, start_fhir_import_job_response(), tuple()} |
    {error, any()} |
    {error, start_fhir_import_job_errors(), tuple()}.
start_fhir_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_fhir_import_job(Client, Input, []).

-spec start_fhir_import_job(aws_client:aws_client(), start_fhir_import_job_request(), proplists:proplist()) ->
    {ok, start_fhir_import_job_response(), tuple()} |
    {error, any()} |
    {error, start_fhir_import_job_errors(), tuple()}.
start_fhir_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartFHIRImportJob">>, Input, Options).

%% @doc
%% Adds a user specified key and value tag to a data store.
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

%% @doc
%% Removes tags from a data store.
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
    Client1 = Client#{service => <<"healthlake">>},
    Host = build_host(<<"healthlake">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"HealthLake.", Action/binary>>}
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
