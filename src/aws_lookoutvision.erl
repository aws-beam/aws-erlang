%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is the Amazon Lookout for Vision API Reference.
%%
%% It provides descriptions of actions,
%% data types, common parameters, and common errors.
%%
%% Amazon Lookout for Vision enables you to find visual defects in industrial
%% products,
%% accurately and at scale. It uses computer vision to identify missing
%% components in an industrial product,
%% damage to vehicles or structures, irregularities in production lines, and
%% even minuscule defects in
%% silicon wafers — or any other physical item where quality is important
%% such as a missing capacitor
%% on printed circuit boards.
-module(aws_lookoutvision).

-export([create_dataset/3,
         create_dataset/4,
         create_model/3,
         create_model/4,
         create_project/2,
         create_project/3,
         delete_dataset/4,
         delete_dataset/5,
         delete_model/4,
         delete_model/5,
         delete_project/3,
         delete_project/4,
         describe_dataset/3,
         describe_dataset/5,
         describe_dataset/6,
         describe_model/3,
         describe_model/5,
         describe_model/6,
         describe_model_packaging_job/3,
         describe_model_packaging_job/5,
         describe_model_packaging_job/6,
         describe_project/2,
         describe_project/4,
         describe_project/5,
         detect_anomalies/4,
         detect_anomalies/5,
         list_dataset_entries/3,
         list_dataset_entries/5,
         list_dataset_entries/6,
         list_model_packaging_jobs/2,
         list_model_packaging_jobs/4,
         list_model_packaging_jobs/5,
         list_models/2,
         list_models/4,
         list_models/5,
         list_projects/1,
         list_projects/3,
         list_projects/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_model/4,
         start_model/5,
         start_model_packaging_job/3,
         start_model_packaging_job/4,
         stop_model/4,
         stop_model/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_dataset_entries/4,
         update_dataset_entries/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% describe_project_response() :: #{
%%   <<"ProjectDescription">> => project_description()
%% }
-type describe_project_response() :: #{binary() => any()}.


%% Example:
%% update_dataset_entries_request() :: #{
%%   <<"Changes">> := binary(),
%%   <<"ClientToken">> => string()
%% }
-type update_dataset_entries_request() :: #{binary() => any()}.


%% Example:
%% greengrass_output_details() :: #{
%%   <<"ComponentName">> => string(),
%%   <<"ComponentVersion">> => string(),
%%   <<"ComponentVersionArn">> => string()
%% }
-type greengrass_output_details() :: #{binary() => any()}.


%% Example:
%% list_models_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_models_request() :: #{binary() => any()}.


%% Example:
%% list_models_response() :: #{
%%   <<"Models">> => list(model_metadata()),
%%   <<"NextToken">> => string()
%% }
-type list_models_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% project_description() :: #{
%%   <<"CreationTimestamp">> => non_neg_integer(),
%%   <<"Datasets">> => list(dataset_metadata()),
%%   <<"ProjectArn">> => string(),
%%   <<"ProjectName">> => string()
%% }
-type project_description() :: #{binary() => any()}.


%% Example:
%% update_dataset_entries_response() :: #{
%%   <<"Status">> => list(any())
%% }
-type update_dataset_entries_response() :: #{binary() => any()}.

%% Example:
%% delete_dataset_response() :: #{}
-type delete_dataset_response() :: #{}.


%% Example:
%% dataset_source() :: #{
%%   <<"GroundTruthManifest">> => dataset_ground_truth_manifest()
%% }
-type dataset_source() :: #{binary() => any()}.


%% Example:
%% model_metadata() :: #{
%%   <<"CreationTimestamp">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"ModelArn">> => string(),
%%   <<"ModelVersion">> => string(),
%%   <<"Performance">> => model_performance(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type model_metadata() :: #{binary() => any()}.


%% Example:
%% pixel_anomaly() :: #{
%%   <<"Color">> => string(),
%%   <<"TotalPercentageArea">> => float()
%% }
-type pixel_anomaly() :: #{binary() => any()}.


%% Example:
%% dataset_description() :: #{
%%   <<"CreationTimestamp">> => non_neg_integer(),
%%   <<"DatasetType">> => string(),
%%   <<"ImageStats">> => dataset_image_stats(),
%%   <<"LastUpdatedTimestamp">> => non_neg_integer(),
%%   <<"ProjectName">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type dataset_description() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% model_packaging_description() :: #{
%%   <<"CreationTimestamp">> => non_neg_integer(),
%%   <<"JobName">> => string(),
%%   <<"LastUpdatedTimestamp">> => non_neg_integer(),
%%   <<"ModelPackagingConfiguration">> => model_packaging_configuration(),
%%   <<"ModelPackagingJobDescription">> => string(),
%%   <<"ModelPackagingMethod">> => string(),
%%   <<"ModelPackagingOutputDetails">> => model_packaging_output_details(),
%%   <<"ModelVersion">> => string(),
%%   <<"ProjectName">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type model_packaging_description() :: #{binary() => any()}.

%% Example:
%% describe_model_packaging_job_request() :: #{}
-type describe_model_packaging_job_request() :: #{}.


%% Example:
%% output_s3_object() :: #{
%%   <<"Bucket">> => string(),
%%   <<"Key">> => string()
%% }
-type output_s3_object() :: #{binary() => any()}.

%% Example:
%% describe_project_request() :: #{}
-type describe_project_request() :: #{}.


%% Example:
%% create_model_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"OutputConfig">> := output_config(),
%%   <<"Tags">> => list(tag())
%% }
-type create_model_request() :: #{binary() => any()}.

%% Example:
%% describe_model_request() :: #{}
-type describe_model_request() :: #{}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% start_model_response() :: #{
%%   <<"Status">> => list(any())
%% }
-type start_model_response() :: #{binary() => any()}.


%% Example:
%% project_metadata() :: #{
%%   <<"CreationTimestamp">> => non_neg_integer(),
%%   <<"ProjectArn">> => string(),
%%   <<"ProjectName">> => string()
%% }
-type project_metadata() :: #{binary() => any()}.


%% Example:
%% describe_model_response() :: #{
%%   <<"ModelDescription">> => model_description()
%% }
-type describe_model_response() :: #{binary() => any()}.


%% Example:
%% detect_anomalies_response() :: #{
%%   <<"DetectAnomalyResult">> => detect_anomaly_result()
%% }
-type detect_anomalies_response() :: #{binary() => any()}.


%% Example:
%% create_dataset_response() :: #{
%%   <<"DatasetMetadata">> => dataset_metadata()
%% }
-type create_dataset_response() :: #{binary() => any()}.


%% Example:
%% create_project_response() :: #{
%%   <<"ProjectMetadata">> => project_metadata()
%% }
-type create_project_response() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => list(any())
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => list(any())
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% list_model_packaging_jobs_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_model_packaging_jobs_request() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"QuotaCode">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => list(any()),
%%   <<"ServiceCode">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% dataset_image_stats() :: #{
%%   <<"Anomaly">> => integer(),
%%   <<"Labeled">> => integer(),
%%   <<"Normal">> => integer(),
%%   <<"Total">> => integer()
%% }
-type dataset_image_stats() :: #{binary() => any()}.


%% Example:
%% stop_model_request() :: #{
%%   <<"ClientToken">> => string()
%% }
-type stop_model_request() :: #{binary() => any()}.


%% Example:
%% list_projects_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Projects">> => list(project_metadata())
%% }
-type list_projects_response() :: #{binary() => any()}.


%% Example:
%% list_dataset_entries_request() :: #{
%%   <<"AfterCreationDate">> => non_neg_integer(),
%%   <<"AnomalyClass">> => string(),
%%   <<"BeforeCreationDate">> => non_neg_integer(),
%%   <<"Labeled">> => boolean(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SourceRefContains">> => string()
%% }
-type list_dataset_entries_request() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% start_model_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"MaxInferenceUnits">> => integer(),
%%   <<"MinInferenceUnits">> := integer()
%% }
-type start_model_request() :: #{binary() => any()}.


%% Example:
%% s3_location() :: #{
%%   <<"Bucket">> => string(),
%%   <<"Prefix">> => string()
%% }
-type s3_location() :: #{binary() => any()}.


%% Example:
%% detect_anomaly_result() :: #{
%%   <<"Anomalies">> => list(anomaly()),
%%   <<"AnomalyMask">> => binary(),
%%   <<"Confidence">> => float(),
%%   <<"IsAnomalous">> => boolean(),
%%   <<"Source">> => image_source()
%% }
-type detect_anomaly_result() :: #{binary() => any()}.


%% Example:
%% create_model_response() :: #{
%%   <<"ModelMetadata">> => model_metadata()
%% }
-type create_model_response() :: #{binary() => any()}.


%% Example:
%% image_source() :: #{
%%   <<"Type">> => string()
%% }
-type image_source() :: #{binary() => any()}.


%% Example:
%% model_packaging_output_details() :: #{
%%   <<"Greengrass">> => greengrass_output_details()
%% }
-type model_packaging_output_details() :: #{binary() => any()}.


%% Example:
%% model_packaging_job_metadata() :: #{
%%   <<"CreationTimestamp">> => non_neg_integer(),
%%   <<"JobName">> => string(),
%%   <<"LastUpdatedTimestamp">> => non_neg_integer(),
%%   <<"ModelPackagingJobDescription">> => string(),
%%   <<"ModelPackagingMethod">> => string(),
%%   <<"ModelVersion">> => string(),
%%   <<"ProjectName">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type model_packaging_job_metadata() :: #{binary() => any()}.


%% Example:
%% list_model_packaging_jobs_response() :: #{
%%   <<"ModelPackagingJobs">> => list(model_packaging_job_metadata()),
%%   <<"NextToken">> => string()
%% }
-type list_model_packaging_jobs_response() :: #{binary() => any()}.


%% Example:
%% detect_anomalies_request() :: #{
%%   <<"Body">> := binary(),
%%   <<"ContentType">> := string()
%% }
-type detect_anomalies_request() :: #{binary() => any()}.


%% Example:
%% model_performance() :: #{
%%   <<"F1Score">> => float(),
%%   <<"Precision">> => float(),
%%   <<"Recall">> => float()
%% }
-type model_performance() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RetryAfterSeconds">> => integer()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% dataset_ground_truth_manifest() :: #{
%%   <<"S3Object">> => input_s3_object()
%% }
-type dataset_ground_truth_manifest() :: #{binary() => any()}.


%% Example:
%% delete_project_response() :: #{
%%   <<"ProjectArn">> => string()
%% }
-type delete_project_response() :: #{binary() => any()}.


%% Example:
%% anomaly() :: #{
%%   <<"Name">> => string(),
%%   <<"PixelAnomaly">> => pixel_anomaly()
%% }
-type anomaly() :: #{binary() => any()}.


%% Example:
%% delete_model_request() :: #{
%%   <<"ClientToken">> => string()
%% }
-type delete_model_request() :: #{binary() => any()}.


%% Example:
%% start_model_packaging_job_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Configuration">> := model_packaging_configuration(),
%%   <<"Description">> => string(),
%%   <<"JobName">> => string(),
%%   <<"ModelVersion">> := string()
%% }
-type start_model_packaging_job_request() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% output_config() :: #{
%%   <<"S3Location">> => s3_location()
%% }
-type output_config() :: #{binary() => any()}.


%% Example:
%% describe_dataset_response() :: #{
%%   <<"DatasetDescription">> => dataset_description()
%% }
-type describe_dataset_response() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% target_platform() :: #{
%%   <<"Accelerator">> => list(any()),
%%   <<"Arch">> => list(any()),
%%   <<"Os">> => list(any())
%% }
-type target_platform() :: #{binary() => any()}.


%% Example:
%% create_dataset_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DatasetSource">> => dataset_source(),
%%   <<"DatasetType">> := string()
%% }
-type create_dataset_request() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"QuotaCode">> => string(),
%%   <<"RetryAfterSeconds">> => integer(),
%%   <<"ServiceCode">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% create_project_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"ProjectName">> := string()
%% }
-type create_project_request() :: #{binary() => any()}.


%% Example:
%% list_projects_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_projects_request() :: #{binary() => any()}.


%% Example:
%% model_packaging_configuration() :: #{
%%   <<"Greengrass">> => greengrass_configuration()
%% }
-type model_packaging_configuration() :: #{binary() => any()}.


%% Example:
%% greengrass_configuration() :: #{
%%   <<"CompilerOptions">> => string(),
%%   <<"ComponentDescription">> => string(),
%%   <<"ComponentName">> => string(),
%%   <<"ComponentVersion">> => string(),
%%   <<"S3OutputLocation">> => s3_location(),
%%   <<"Tags">> => list(tag()),
%%   <<"TargetDevice">> => list(any()),
%%   <<"TargetPlatform">> => target_platform()
%% }
-type greengrass_configuration() :: #{binary() => any()}.


%% Example:
%% describe_model_packaging_job_response() :: #{
%%   <<"ModelPackagingDescription">> => model_packaging_description()
%% }
-type describe_model_packaging_job_response() :: #{binary() => any()}.


%% Example:
%% start_model_packaging_job_response() :: #{
%%   <<"JobName">> => string()
%% }
-type start_model_packaging_job_response() :: #{binary() => any()}.


%% Example:
%% model_description() :: #{
%%   <<"CreationTimestamp">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"EvaluationEndTimestamp">> => non_neg_integer(),
%%   <<"EvaluationManifest">> => output_s3_object(),
%%   <<"EvaluationResult">> => output_s3_object(),
%%   <<"KmsKeyId">> => string(),
%%   <<"MaxInferenceUnits">> => integer(),
%%   <<"MinInferenceUnits">> => integer(),
%%   <<"ModelArn">> => string(),
%%   <<"ModelVersion">> => string(),
%%   <<"OutputConfig">> => output_config(),
%%   <<"Performance">> => model_performance(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type model_description() :: #{binary() => any()}.

%% Example:
%% describe_dataset_request() :: #{}
-type describe_dataset_request() :: #{}.


%% Example:
%% delete_dataset_request() :: #{
%%   <<"ClientToken">> => string()
%% }
-type delete_dataset_request() :: #{binary() => any()}.


%% Example:
%% stop_model_response() :: #{
%%   <<"Status">> => list(any())
%% }
-type stop_model_response() :: #{binary() => any()}.


%% Example:
%% delete_project_request() :: #{
%%   <<"ClientToken">> => string()
%% }
-type delete_project_request() :: #{binary() => any()}.


%% Example:
%% delete_model_response() :: #{
%%   <<"ModelArn">> => string()
%% }
-type delete_model_response() :: #{binary() => any()}.


%% Example:
%% list_dataset_entries_response() :: #{
%%   <<"DatasetEntries">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type list_dataset_entries_response() :: #{binary() => any()}.


%% Example:
%% dataset_metadata() :: #{
%%   <<"CreationTimestamp">> => non_neg_integer(),
%%   <<"DatasetType">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type dataset_metadata() :: #{binary() => any()}.


%% Example:
%% input_s3_object() :: #{
%%   <<"Bucket">> => string(),
%%   <<"Key">> => string(),
%%   <<"VersionId">> => string()
%% }
-type input_s3_object() :: #{binary() => any()}.

-type create_dataset_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_model_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_project_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_dataset_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_model_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_project_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_dataset_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_model_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_model_packaging_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_project_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type detect_anomalies_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_dataset_entries_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_model_packaging_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_models_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_projects_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_model_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_model_packaging_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_model_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_dataset_entries_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new dataset in an Amazon Lookout for Vision project.
%%
%% `CreateDataset' can create a
%% training or a test dataset from a valid dataset source
%% (`DatasetSource').
%%
%% If you want a single dataset project, specify `train' for the value of
%% `DatasetType'.
%%
%% To have a project with separate training and test datasets, call
%% `CreateDataset' twice.
%% On the first call, specify `train' for the value of
%% `DatasetType'. On the second call, specify `test' for the value of
%% `DatasetType'.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:CreateDataset' operation.
-spec create_dataset(aws_client:aws_client(), binary() | list(), create_dataset_request()) ->
    {ok, create_dataset_response(), tuple()} |
    {error, any()} |
    {error, create_dataset_errors(), tuple()}.
create_dataset(Client, ProjectName, Input) ->
    create_dataset(Client, ProjectName, Input, []).

-spec create_dataset(aws_client:aws_client(), binary() | list(), create_dataset_request(), proplists:proplist()) ->
    {ok, create_dataset_response(), tuple()} |
    {error, any()} |
    {error, create_dataset_errors(), tuple()}.
create_dataset(Client, ProjectName, Input0, Options0) ->
    Method = post,
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), "/datasets"],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new version of a model within an an Amazon Lookout for
%% Vision project.
%%
%% `CreateModel' is an asynchronous operation in which Amazon Lookout for
%% Vision trains, tests,
%% and evaluates a new version of a model.
%%
%% To get the current status, check the `Status' field returned
%% in the response from `DescribeModel'.
%%
%% If the project has a single dataset, Amazon Lookout for Vision internally
%% splits the dataset
%% to create a training and a test dataset.
%% If the project has a training and a test dataset, Lookout for Vision uses
%% the respective datasets to train and test
%% the model.
%%
%% After training completes, the evaluation metrics are stored at the
%% location specified in
%% `OutputConfig'.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:CreateModel' operation. If you want to tag your model,
%% you also require
%% permission to the `lookoutvision:TagResource' operation.
-spec create_model(aws_client:aws_client(), binary() | list(), create_model_request()) ->
    {ok, create_model_response(), tuple()} |
    {error, any()} |
    {error, create_model_errors(), tuple()}.
create_model(Client, ProjectName, Input) ->
    create_model(Client, ProjectName, Input, []).

-spec create_model(aws_client:aws_client(), binary() | list(), create_model_request(), proplists:proplist()) ->
    {ok, create_model_response(), tuple()} |
    {error, any()} |
    {error, create_model_errors(), tuple()}.
create_model(Client, ProjectName, Input0, Options0) ->
    Method = post,
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), "/models"],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an empty Amazon Lookout for Vision project.
%%
%% After you create the project, add a dataset by calling
%% `CreateDataset'.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:CreateProject' operation.
-spec create_project(aws_client:aws_client(), create_project_request()) ->
    {ok, create_project_response(), tuple()} |
    {error, any()} |
    {error, create_project_errors(), tuple()}.
create_project(Client, Input) ->
    create_project(Client, Input, []).

-spec create_project(aws_client:aws_client(), create_project_request(), proplists:proplist()) ->
    {ok, create_project_response(), tuple()} |
    {error, any()} |
    {error, create_project_errors(), tuple()}.
create_project(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-11-20/projects"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing Amazon Lookout for Vision `dataset'.
%%
%% If your the project has a single
%% dataset, you must create a new dataset before you can create a model.
%%
%% If you project has a training dataset and a test dataset consider the
%% following.
%%
%% If you delete the test dataset, your project reverts to a single dataset
%% project. If you then
%% train the model, Amazon Lookout for Vision internally splits the remaining
%% dataset into a training and test dataset.
%%
%% If you delete the training dataset, you must create a training dataset
%% before you can create a model.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:DeleteDataset' operation.
-spec delete_dataset(aws_client:aws_client(), binary() | list(), binary() | list(), delete_dataset_request()) ->
    {ok, delete_dataset_response(), tuple()} |
    {error, any()} |
    {error, delete_dataset_errors(), tuple()}.
delete_dataset(Client, DatasetType, ProjectName, Input) ->
    delete_dataset(Client, DatasetType, ProjectName, Input, []).

-spec delete_dataset(aws_client:aws_client(), binary() | list(), binary() | list(), delete_dataset_request(), proplists:proplist()) ->
    {ok, delete_dataset_response(), tuple()} |
    {error, any()} |
    {error, delete_dataset_errors(), tuple()}.
delete_dataset(Client, DatasetType, ProjectName, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), "/datasets/", aws_util:encode_uri(DatasetType), ""],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an Amazon Lookout for Vision model.
%%
%% You can't delete a running model. To stop a running model,
%% use the `StopModel' operation.
%%
%% It might take a few seconds to delete a model. To determine if a model has
%% been deleted, call
%% `ListModels' and check if the version of the model
%% (`ModelVersion') is in the
%% `Models' array.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:DeleteModel' operation.
-spec delete_model(aws_client:aws_client(), binary() | list(), binary() | list(), delete_model_request()) ->
    {ok, delete_model_response(), tuple()} |
    {error, any()} |
    {error, delete_model_errors(), tuple()}.
delete_model(Client, ModelVersion, ProjectName, Input) ->
    delete_model(Client, ModelVersion, ProjectName, Input, []).

-spec delete_model(aws_client:aws_client(), binary() | list(), binary() | list(), delete_model_request(), proplists:proplist()) ->
    {ok, delete_model_response(), tuple()} |
    {error, any()} |
    {error, delete_model_errors(), tuple()}.
delete_model(Client, ModelVersion, ProjectName, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), "/models/", aws_util:encode_uri(ModelVersion), ""],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an Amazon Lookout for Vision project.
%%
%% To delete a project, you must first delete each version of the model
%% associated with
%% the project. To delete a model use the `DeleteModel' operation.
%%
%% You also have to delete the dataset(s) associated with the model. For more
%% information, see
%% `DeleteDataset'. The images referenced by the training and test
%% datasets aren't deleted.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:DeleteProject' operation.
-spec delete_project(aws_client:aws_client(), binary() | list(), delete_project_request()) ->
    {ok, delete_project_response(), tuple()} |
    {error, any()} |
    {error, delete_project_errors(), tuple()}.
delete_project(Client, ProjectName, Input) ->
    delete_project(Client, ProjectName, Input, []).

-spec delete_project(aws_client:aws_client(), binary() | list(), delete_project_request(), proplists:proplist()) ->
    {ok, delete_project_response(), tuple()} |
    {error, any()} |
    {error, delete_project_errors(), tuple()}.
delete_project(Client, ProjectName, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Describe an Amazon Lookout for Vision dataset.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:DescribeDataset' operation.
-spec describe_dataset(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_dataset_response(), tuple()} |
    {error, any()} |
    {error, describe_dataset_errors(), tuple()}.
describe_dataset(Client, DatasetType, ProjectName)
  when is_map(Client) ->
    describe_dataset(Client, DatasetType, ProjectName, #{}, #{}).

-spec describe_dataset(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_dataset_response(), tuple()} |
    {error, any()} |
    {error, describe_dataset_errors(), tuple()}.
describe_dataset(Client, DatasetType, ProjectName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_dataset(Client, DatasetType, ProjectName, QueryMap, HeadersMap, []).

-spec describe_dataset(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_dataset_response(), tuple()} |
    {error, any()} |
    {error, describe_dataset_errors(), tuple()}.
describe_dataset(Client, DatasetType, ProjectName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), "/datasets/", aws_util:encode_uri(DatasetType), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a version of an Amazon Lookout for Vision model.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:DescribeModel' operation.
-spec describe_model(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_model_response(), tuple()} |
    {error, any()} |
    {error, describe_model_errors(), tuple()}.
describe_model(Client, ModelVersion, ProjectName)
  when is_map(Client) ->
    describe_model(Client, ModelVersion, ProjectName, #{}, #{}).

-spec describe_model(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_model_response(), tuple()} |
    {error, any()} |
    {error, describe_model_errors(), tuple()}.
describe_model(Client, ModelVersion, ProjectName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_model(Client, ModelVersion, ProjectName, QueryMap, HeadersMap, []).

-spec describe_model(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_model_response(), tuple()} |
    {error, any()} |
    {error, describe_model_errors(), tuple()}.
describe_model(Client, ModelVersion, ProjectName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), "/models/", aws_util:encode_uri(ModelVersion), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an Amazon Lookout for Vision model packaging job.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:DescribeModelPackagingJob' operation.
%%
%% For more information, see
%% Using your Amazon Lookout for Vision model on an edge device in the Amazon
%% Lookout for Vision Developer Guide.
-spec describe_model_packaging_job(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_model_packaging_job_response(), tuple()} |
    {error, any()} |
    {error, describe_model_packaging_job_errors(), tuple()}.
describe_model_packaging_job(Client, JobName, ProjectName)
  when is_map(Client) ->
    describe_model_packaging_job(Client, JobName, ProjectName, #{}, #{}).

-spec describe_model_packaging_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_model_packaging_job_response(), tuple()} |
    {error, any()} |
    {error, describe_model_packaging_job_errors(), tuple()}.
describe_model_packaging_job(Client, JobName, ProjectName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_model_packaging_job(Client, JobName, ProjectName, QueryMap, HeadersMap, []).

-spec describe_model_packaging_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_model_packaging_job_response(), tuple()} |
    {error, any()} |
    {error, describe_model_packaging_job_errors(), tuple()}.
describe_model_packaging_job(Client, JobName, ProjectName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), "/modelpackagingjobs/", aws_util:encode_uri(JobName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an Amazon Lookout for Vision project.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:DescribeProject' operation.
-spec describe_project(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_project_response(), tuple()} |
    {error, any()} |
    {error, describe_project_errors(), tuple()}.
describe_project(Client, ProjectName)
  when is_map(Client) ->
    describe_project(Client, ProjectName, #{}, #{}).

-spec describe_project(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_project_response(), tuple()} |
    {error, any()} |
    {error, describe_project_errors(), tuple()}.
describe_project(Client, ProjectName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_project(Client, ProjectName, QueryMap, HeadersMap, []).

-spec describe_project(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_project_response(), tuple()} |
    {error, any()} |
    {error, describe_project_errors(), tuple()}.
describe_project(Client, ProjectName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Detects anomalies in an image that you supply.
%%
%% The response from `DetectAnomalies' includes a boolean prediction
%% that the image contains one or more anomalies and a confidence value for
%% the prediction.
%% If the model is an image segmentation model, the response also includes
%% segmentation
%% information for each type of anomaly found in the image.
%%
%% Before calling `DetectAnomalies', you must first start your model with
%% the `StartModel' operation.
%% You are charged for the amount of time, in minutes, that a model runs and
%% for the number of anomaly detection units that your
%% model uses. If you are not using a model, use the `StopModel'
%% operation to stop your model.
%%
%% For more information, see Detecting anomalies in an image in the Amazon
%% Lookout for Vision developer guide.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:DetectAnomalies' operation.
-spec detect_anomalies(aws_client:aws_client(), binary() | list(), binary() | list(), detect_anomalies_request()) ->
    {ok, detect_anomalies_response(), tuple()} |
    {error, any()} |
    {error, detect_anomalies_errors(), tuple()}.
detect_anomalies(Client, ModelVersion, ProjectName, Input) ->
    detect_anomalies(Client, ModelVersion, ProjectName, Input, []).

-spec detect_anomalies(aws_client:aws_client(), binary() | list(), binary() | list(), detect_anomalies_request(), proplists:proplist()) ->
    {ok, detect_anomalies_response(), tuple()} |
    {error, any()} |
    {error, detect_anomalies_errors(), tuple()}.
detect_anomalies(Client, ModelVersion, ProjectName, Input0, Options0) ->
    Method = post,
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), "/models/", aws_util:encode_uri(ModelVersion), "/detect"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Content-Type">>, <<"ContentType">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the JSON Lines within a dataset.
%%
%% An Amazon Lookout for Vision JSON Line contains the anomaly
%% information for a single image, including the image location and the
%% assigned label.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:ListDatasetEntries' operation.
-spec list_dataset_entries(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_dataset_entries_response(), tuple()} |
    {error, any()} |
    {error, list_dataset_entries_errors(), tuple()}.
list_dataset_entries(Client, DatasetType, ProjectName)
  when is_map(Client) ->
    list_dataset_entries(Client, DatasetType, ProjectName, #{}, #{}).

-spec list_dataset_entries(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_dataset_entries_response(), tuple()} |
    {error, any()} |
    {error, list_dataset_entries_errors(), tuple()}.
list_dataset_entries(Client, DatasetType, ProjectName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_dataset_entries(Client, DatasetType, ProjectName, QueryMap, HeadersMap, []).

-spec list_dataset_entries(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_dataset_entries_response(), tuple()} |
    {error, any()} |
    {error, list_dataset_entries_errors(), tuple()}.
list_dataset_entries(Client, DatasetType, ProjectName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), "/datasets/", aws_util:encode_uri(DatasetType), "/entries"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"createdAfter">>, maps:get(<<"createdAfter">>, QueryMap, undefined)},
        {<<"anomalyClass">>, maps:get(<<"anomalyClass">>, QueryMap, undefined)},
        {<<"createdBefore">>, maps:get(<<"createdBefore">>, QueryMap, undefined)},
        {<<"labeled">>, maps:get(<<"labeled">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"sourceRefContains">>, maps:get(<<"sourceRefContains">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Lists the model packaging jobs created for an Amazon Lookout for Vision
%% project.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:ListModelPackagingJobs' operation.
%%
%% For more information, see
%% Using your Amazon Lookout for Vision model on an edge device in the Amazon
%% Lookout for Vision Developer Guide.
-spec list_model_packaging_jobs(aws_client:aws_client(), binary() | list()) ->
    {ok, list_model_packaging_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_model_packaging_jobs_errors(), tuple()}.
list_model_packaging_jobs(Client, ProjectName)
  when is_map(Client) ->
    list_model_packaging_jobs(Client, ProjectName, #{}, #{}).

-spec list_model_packaging_jobs(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_model_packaging_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_model_packaging_jobs_errors(), tuple()}.
list_model_packaging_jobs(Client, ProjectName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_model_packaging_jobs(Client, ProjectName, QueryMap, HeadersMap, []).

-spec list_model_packaging_jobs(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_model_packaging_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_model_packaging_jobs_errors(), tuple()}.
list_model_packaging_jobs(Client, ProjectName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), "/modelpackagingjobs"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the versions of a model in an Amazon Lookout for Vision
%% project.
%%
%% The `ListModels' operation is eventually consistent.
%% Recent calls to `CreateModel' might
%% take a while to appear in the response from `ListProjects'.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:ListModels' operation.
-spec list_models(aws_client:aws_client(), binary() | list()) ->
    {ok, list_models_response(), tuple()} |
    {error, any()} |
    {error, list_models_errors(), tuple()}.
list_models(Client, ProjectName)
  when is_map(Client) ->
    list_models(Client, ProjectName, #{}, #{}).

-spec list_models(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_models_response(), tuple()} |
    {error, any()} |
    {error, list_models_errors(), tuple()}.
list_models(Client, ProjectName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_models(Client, ProjectName, QueryMap, HeadersMap, []).

-spec list_models(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_models_response(), tuple()} |
    {error, any()} |
    {error, list_models_errors(), tuple()}.
list_models(Client, ProjectName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), "/models"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Amazon Lookout for Vision projects in your AWS account that
%% are in the AWS Region in
%% which you call `ListProjects'.
%%
%% The `ListProjects' operation is eventually consistent.
%% Recent calls to `CreateProject' and `DeleteProject' might
%% take a while to appear in the response from `ListProjects'.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:ListProjects' operation.
-spec list_projects(aws_client:aws_client()) ->
    {ok, list_projects_response(), tuple()} |
    {error, any()} |
    {error, list_projects_errors(), tuple()}.
list_projects(Client)
  when is_map(Client) ->
    list_projects(Client, #{}, #{}).

-spec list_projects(aws_client:aws_client(), map(), map()) ->
    {ok, list_projects_response(), tuple()} |
    {error, any()} |
    {error, list_projects_errors(), tuple()}.
list_projects(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_projects(Client, QueryMap, HeadersMap, []).

-spec list_projects(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_projects_response(), tuple()} |
    {error, any()} |
    {error, list_projects_errors(), tuple()}.
list_projects(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-11-20/projects"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of tags attached to the specified Amazon Lookout for
%% Vision model.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:ListTagsForResource' operation.
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
    Path = ["/2020-11-20/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Starts the running of the version of an Amazon Lookout for Vision
%% model.
%%
%% Starting a model takes a while
%% to complete. To check the current state of the model, use
%% `DescribeModel'.
%%
%% A model is ready to use when its status is `HOSTED'.
%%
%% Once the model is running, you can detect custom labels in new images by
%% calling
%% `DetectAnomalies'.
%%
%% You are charged for the amount of time that the model is running. To stop
%% a running
%% model, call `StopModel'.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:StartModel' operation.
-spec start_model(aws_client:aws_client(), binary() | list(), binary() | list(), start_model_request()) ->
    {ok, start_model_response(), tuple()} |
    {error, any()} |
    {error, start_model_errors(), tuple()}.
start_model(Client, ModelVersion, ProjectName, Input) ->
    start_model(Client, ModelVersion, ProjectName, Input, []).

-spec start_model(aws_client:aws_client(), binary() | list(), binary() | list(), start_model_request(), proplists:proplist()) ->
    {ok, start_model_response(), tuple()} |
    {error, any()} |
    {error, start_model_errors(), tuple()}.
start_model(Client, ModelVersion, ProjectName, Input0, Options0) ->
    Method = post,
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), "/models/", aws_util:encode_uri(ModelVersion), "/start"],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Starts an Amazon Lookout for Vision model packaging job.
%%
%% A model packaging job creates an AWS IoT Greengrass component for
%% a Lookout for Vision model. You can use the component to deploy your model
%% to an edge device managed by Greengrass.
%%
%% Use the `DescribeModelPackagingJob' API to determine the current
%% status of the job.
%%
%% The model packaging job is complete if the value of `Status' is
%% `SUCCEEDED'.
%%
%% To deploy the component
%% to the target device, use the component name and component version
%% with the AWS IoT Greengrass CreateDeployment:
%% https://docs.aws.amazon.com/greengrass/v2/APIReference/API_CreateDeployment.html
%% API.
%%
%% This operation requires the following permissions:
%%
%% `lookoutvision:StartModelPackagingJob'
%%
%% `s3:PutObject'
%%
%% `s3:GetBucketLocation'
%%
%% `kms:GenerateDataKey'
%%
%% `greengrass:CreateComponentVersion'
%%
%% `greengrass:DescribeComponent'
%%
%% (Optional) `greengrass:TagResource'. Only required if you want to tag
%% the component.
%%
%% For more information, see
%% Using your Amazon Lookout for Vision model on an edge device in the Amazon
%% Lookout for Vision Developer Guide.
-spec start_model_packaging_job(aws_client:aws_client(), binary() | list(), start_model_packaging_job_request()) ->
    {ok, start_model_packaging_job_response(), tuple()} |
    {error, any()} |
    {error, start_model_packaging_job_errors(), tuple()}.
start_model_packaging_job(Client, ProjectName, Input) ->
    start_model_packaging_job(Client, ProjectName, Input, []).

-spec start_model_packaging_job(aws_client:aws_client(), binary() | list(), start_model_packaging_job_request(), proplists:proplist()) ->
    {ok, start_model_packaging_job_response(), tuple()} |
    {error, any()} |
    {error, start_model_packaging_job_errors(), tuple()}.
start_model_packaging_job(Client, ProjectName, Input0, Options0) ->
    Method = post,
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), "/modelpackagingjobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Stops the hosting of a running model.
%%
%% The operation might take a while to complete. To
%% check the current status, call `DescribeModel'.
%%
%% After the model hosting stops, the `Status' of the model is
%% `TRAINED'.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:StopModel' operation.
-spec stop_model(aws_client:aws_client(), binary() | list(), binary() | list(), stop_model_request()) ->
    {ok, stop_model_response(), tuple()} |
    {error, any()} |
    {error, stop_model_errors(), tuple()}.
stop_model(Client, ModelVersion, ProjectName, Input) ->
    stop_model(Client, ModelVersion, ProjectName, Input, []).

-spec stop_model(aws_client:aws_client(), binary() | list(), binary() | list(), stop_model_request(), proplists:proplist()) ->
    {ok, stop_model_response(), tuple()} |
    {error, any()} |
    {error, stop_model_errors(), tuple()}.
stop_model(Client, ModelVersion, ProjectName, Input0, Options0) ->
    Method = post,
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), "/models/", aws_util:encode_uri(ModelVersion), "/stop"],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds one or more key-value tags to an Amazon Lookout for Vision
%% model.
%%
%% For more information, see Tagging a model in the Amazon Lookout for Vision
%% Developer Guide.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:TagResource' operation.
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
    Path = ["/2020-11-20/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes one or more tags from an Amazon Lookout for Vision model.
%%
%% For more information, see
%% Tagging a model in the Amazon Lookout for Vision Developer Guide.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:UntagResource' operation.
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
    Path = ["/2020-11-20/tags/", aws_util:encode_uri(ResourceArn), ""],
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
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds or updates one or more JSON Line entries in a dataset.
%%
%% A JSON Line includes information about an image
%% used for training or testing an Amazon Lookout for Vision model.
%%
%% To update an existing JSON Line, use the `source-ref' field to
%% identify the JSON Line. The JSON line
%% that you supply replaces the existing JSON line. Any existing annotations
%% that are not in the new JSON line are removed from the dataset.
%%
%% For more information, see
%% Defining JSON lines for anomaly classification in the Amazon Lookout for
%% Vision Developer Guide.
%%
%% The images you reference in the `source-ref' field of a JSON line,
%% must be
%% in the same S3 bucket as the existing images in the dataset.
%%
%% Updating a dataset might take a while to complete. To check the current
%% status, call `DescribeDataset' and
%% check the `Status' field in the response.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:UpdateDatasetEntries' operation.
-spec update_dataset_entries(aws_client:aws_client(), binary() | list(), binary() | list(), update_dataset_entries_request()) ->
    {ok, update_dataset_entries_response(), tuple()} |
    {error, any()} |
    {error, update_dataset_entries_errors(), tuple()}.
update_dataset_entries(Client, DatasetType, ProjectName, Input) ->
    update_dataset_entries(Client, DatasetType, ProjectName, Input, []).

-spec update_dataset_entries(aws_client:aws_client(), binary() | list(), binary() | list(), update_dataset_entries_request(), proplists:proplist()) ->
    {ok, update_dataset_entries_response(), tuple()} |
    {error, any()} |
    {error, update_dataset_entries_errors(), tuple()}.
update_dataset_entries(Client, DatasetType, ProjectName, Input0, Options0) ->
    Method = patch,
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), "/datasets/", aws_util:encode_uri(DatasetType), "/entries"],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"ClientToken">>}
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
    Client1 = Client#{service => <<"lookoutvision">>},
    Host = build_host(<<"lookoutvision">>, Client1),
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
