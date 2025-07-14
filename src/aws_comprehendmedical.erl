%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Comprehend Medical extracts structured information from
%% unstructured clinical text.
%%
%% Use these actions to gain insight in your documents. Amazon Comprehend
%% Medical only detects entities in English language texts. Amazon Comprehend
%% Medical places limits on the sizes of files allowed for different API
%% operations. To learn more, see Guidelines and quotas:
%% https://docs.aws.amazon.com/comprehend-medical/latest/dev/comprehendmedical-quotas.html
%% in the Amazon Comprehend Medical Developer Guide.
-module(aws_comprehendmedical).

-export([describe_entities_detection_v2_job/2,
         describe_entities_detection_v2_job/3,
         describe_icd10_cm_inference_job/2,
         describe_icd10_cm_inference_job/3,
         describe_phi_detection_job/2,
         describe_phi_detection_job/3,
         describe_rx_norm_inference_job/2,
         describe_rx_norm_inference_job/3,
         describe_s_n_o_m_e_d_c_t_inference_job/2,
         describe_s_n_o_m_e_d_c_t_inference_job/3,
         detect_entities/2,
         detect_entities/3,
         detect_entities_v2/2,
         detect_entities_v2/3,
         detect_phi/2,
         detect_phi/3,
         infer_icd10_cm/2,
         infer_icd10_cm/3,
         infer_rx_norm/2,
         infer_rx_norm/3,
         infer_s_n_o_m_e_d_c_t/2,
         infer_s_n_o_m_e_d_c_t/3,
         list_entities_detection_v2_jobs/2,
         list_entities_detection_v2_jobs/3,
         list_icd10_cm_inference_jobs/2,
         list_icd10_cm_inference_jobs/3,
         list_phi_detection_jobs/2,
         list_phi_detection_jobs/3,
         list_rx_norm_inference_jobs/2,
         list_rx_norm_inference_jobs/3,
         list_s_n_o_m_e_d_c_t_inference_jobs/2,
         list_s_n_o_m_e_d_c_t_inference_jobs/3,
         start_entities_detection_v2_job/2,
         start_entities_detection_v2_job/3,
         start_icd10_cm_inference_job/2,
         start_icd10_cm_inference_job/3,
         start_phi_detection_job/2,
         start_phi_detection_job/3,
         start_rx_norm_inference_job/2,
         start_rx_norm_inference_job/3,
         start_s_n_o_m_e_d_c_t_inference_job/2,
         start_s_n_o_m_e_d_c_t_inference_job/3,
         stop_entities_detection_v2_job/2,
         stop_entities_detection_v2_job/3,
         stop_icd10_cm_inference_job/2,
         stop_icd10_cm_inference_job/3,
         stop_phi_detection_job/2,
         stop_phi_detection_job/3,
         stop_rx_norm_inference_job/2,
         stop_rx_norm_inference_job/3,
         stop_s_n_o_m_e_d_c_t_inference_job/2,
         stop_s_n_o_m_e_d_c_t_inference_job/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% list_s_n_o_m_e_d_c_t_inference_jobs_request() :: #{
%%   <<"Filter">> => comprehend_medical_async_job_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_s_n_o_m_e_d_c_t_inference_jobs_request() :: #{binary() => any()}.

%% Example:
%% start_rx_norm_inference_job_response() :: #{
%%   <<"JobId">> => string()
%% }
-type start_rx_norm_inference_job_response() :: #{binary() => any()}.

%% Example:
%% s_n_o_m_e_d_c_t_trait() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Score">> => float()
%% }
-type s_n_o_m_e_d_c_t_trait() :: #{binary() => any()}.

%% Example:
%% trait() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Score">> => float()
%% }
-type trait() :: #{binary() => any()}.

%% Example:
%% detect_entities_v2_request() :: #{
%%   <<"Text">> := string()
%% }
-type detect_entities_v2_request() :: #{binary() => any()}.

%% Example:
%% list_phi_detection_jobs_request() :: #{
%%   <<"Filter">> => comprehend_medical_async_job_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_phi_detection_jobs_request() :: #{binary() => any()}.

%% Example:
%% icd10_cm_entity() :: #{
%%   <<"Attributes">> => list(icd10_cm_attribute()),
%%   <<"BeginOffset">> => integer(),
%%   <<"Category">> => list(any()),
%%   <<"EndOffset">> => integer(),
%%   <<"ICD10CMConcepts">> => list(icd10_cm_concept()),
%%   <<"Id">> => integer(),
%%   <<"Score">> => float(),
%%   <<"Text">> => string(),
%%   <<"Traits">> => list(icd10_cm_trait()),
%%   <<"Type">> => list(any())
%% }
-type icd10_cm_entity() :: #{binary() => any()}.

%% Example:
%% input_data_config() :: #{
%%   <<"S3Bucket">> => string(),
%%   <<"S3Key">> => string()
%% }
-type input_data_config() :: #{binary() => any()}.

%% Example:
%% characters() :: #{
%%   <<"OriginalTextCharacters">> => integer()
%% }
-type characters() :: #{binary() => any()}.

%% Example:
%% entity() :: #{
%%   <<"Attributes">> => list(attribute()),
%%   <<"BeginOffset">> => integer(),
%%   <<"Category">> => list(any()),
%%   <<"EndOffset">> => integer(),
%%   <<"Id">> => integer(),
%%   <<"Score">> => float(),
%%   <<"Text">> => string(),
%%   <<"Traits">> => list(trait()),
%%   <<"Type">> => list(any())
%% }
-type entity() :: #{binary() => any()}.

%% Example:
%% describe_icd10_cm_inference_job_response() :: #{
%%   <<"ComprehendMedicalAsyncJobProperties">> => comprehend_medical_async_job_properties()
%% }
-type describe_icd10_cm_inference_job_response() :: #{binary() => any()}.

%% Example:
%% list_rx_norm_inference_jobs_response() :: #{
%%   <<"ComprehendMedicalAsyncJobPropertiesList">> => list(comprehend_medical_async_job_properties()),
%%   <<"NextToken">> => string()
%% }
-type list_rx_norm_inference_jobs_response() :: #{binary() => any()}.

%% Example:
%% describe_icd10_cm_inference_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type describe_icd10_cm_inference_job_request() :: #{binary() => any()}.

%% Example:
%% invalid_encoding_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_encoding_exception() :: #{binary() => any()}.

%% Example:
%% s_n_o_m_e_d_c_t_attribute() :: #{
%%   <<"BeginOffset">> => integer(),
%%   <<"Category">> => list(any()),
%%   <<"EndOffset">> => integer(),
%%   <<"Id">> => integer(),
%%   <<"RelationshipScore">> => float(),
%%   <<"RelationshipType">> => list(any()),
%%   <<"SNOMEDCTConcepts">> => list(s_n_o_m_e_d_c_t_concept()),
%%   <<"Score">> => float(),
%%   <<"Text">> => string(),
%%   <<"Traits">> => list(s_n_o_m_e_d_c_t_trait()),
%%   <<"Type">> => list(any())
%% }
-type s_n_o_m_e_d_c_t_attribute() :: #{binary() => any()}.

%% Example:
%% infer_s_n_o_m_e_d_c_t_response() :: #{
%%   <<"Characters">> => characters(),
%%   <<"Entities">> => list(s_n_o_m_e_d_c_t_entity()),
%%   <<"ModelVersion">> => string(),
%%   <<"PaginationToken">> => string(),
%%   <<"SNOMEDCTDetails">> => s_n_o_m_e_d_c_t_details()
%% }
-type infer_s_n_o_m_e_d_c_t_response() :: #{binary() => any()}.

%% Example:
%% detect_phi_response() :: #{
%%   <<"Entities">> => list(entity()),
%%   <<"ModelVersion">> => string(),
%%   <<"PaginationToken">> => string()
%% }
-type detect_phi_response() :: #{binary() => any()}.

%% Example:
%% start_phi_detection_job_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"DataAccessRoleArn">> := string(),
%%   <<"InputDataConfig">> := input_data_config(),
%%   <<"JobName">> => string(),
%%   <<"KMSKey">> => string(),
%%   <<"LanguageCode">> := list(any()),
%%   <<"OutputDataConfig">> := output_data_config()
%% }
-type start_phi_detection_job_request() :: #{binary() => any()}.

%% Example:
%% stop_entities_detection_v2_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type stop_entities_detection_v2_job_request() :: #{binary() => any()}.

%% Example:
%% infer_rx_norm_response() :: #{
%%   <<"Entities">> => list(rx_norm_entity()),
%%   <<"ModelVersion">> => string(),
%%   <<"PaginationToken">> => string()
%% }
-type infer_rx_norm_response() :: #{binary() => any()}.

%% Example:
%% unmapped_attribute() :: #{
%%   <<"Attribute">> => attribute(),
%%   <<"Type">> => list(any())
%% }
-type unmapped_attribute() :: #{binary() => any()}.

%% Example:
%% too_many_requests_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.

%% Example:
%% s_n_o_m_e_d_c_t_details() :: #{
%%   <<"Edition">> => string(),
%%   <<"Language">> => string(),
%%   <<"VersionDate">> => string()
%% }
-type s_n_o_m_e_d_c_t_details() :: #{binary() => any()}.

%% Example:
%% start_icd10_cm_inference_job_response() :: #{
%%   <<"JobId">> => string()
%% }
-type start_icd10_cm_inference_job_response() :: #{binary() => any()}.

%% Example:
%% list_s_n_o_m_e_d_c_t_inference_jobs_response() :: #{
%%   <<"ComprehendMedicalAsyncJobPropertiesList">> => list(comprehend_medical_async_job_properties()),
%%   <<"NextToken">> => string()
%% }
-type list_s_n_o_m_e_d_c_t_inference_jobs_response() :: #{binary() => any()}.

%% Example:
%% rx_norm_entity() :: #{
%%   <<"Attributes">> => list(rx_norm_attribute()),
%%   <<"BeginOffset">> => integer(),
%%   <<"Category">> => list(any()),
%%   <<"EndOffset">> => integer(),
%%   <<"Id">> => integer(),
%%   <<"RxNormConcepts">> => list(rx_norm_concept()),
%%   <<"Score">> => float(),
%%   <<"Text">> => string(),
%%   <<"Traits">> => list(rx_norm_trait()),
%%   <<"Type">> => list(any())
%% }
-type rx_norm_entity() :: #{binary() => any()}.

%% Example:
%% icd10_cm_concept() :: #{
%%   <<"Code">> => string(),
%%   <<"Description">> => string(),
%%   <<"Score">> => float()
%% }
-type icd10_cm_concept() :: #{binary() => any()}.

%% Example:
%% detect_entities_response() :: #{
%%   <<"Entities">> => list(entity()),
%%   <<"ModelVersion">> => string(),
%%   <<"PaginationToken">> => string(),
%%   <<"UnmappedAttributes">> => list(unmapped_attribute())
%% }
-type detect_entities_response() :: #{binary() => any()}.

%% Example:
%% rx_norm_concept() :: #{
%%   <<"Code">> => string(),
%%   <<"Description">> => string(),
%%   <<"Score">> => float()
%% }
-type rx_norm_concept() :: #{binary() => any()}.

%% Example:
%% start_entities_detection_v2_job_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"DataAccessRoleArn">> := string(),
%%   <<"InputDataConfig">> := input_data_config(),
%%   <<"JobName">> => string(),
%%   <<"KMSKey">> => string(),
%%   <<"LanguageCode">> := list(any()),
%%   <<"OutputDataConfig">> := output_data_config()
%% }
-type start_entities_detection_v2_job_request() :: #{binary() => any()}.

%% Example:
%% describe_s_n_o_m_e_d_c_t_inference_job_response() :: #{
%%   <<"ComprehendMedicalAsyncJobProperties">> => comprehend_medical_async_job_properties()
%% }
-type describe_s_n_o_m_e_d_c_t_inference_job_response() :: #{binary() => any()}.

%% Example:
%% infer_icd10_cm_response() :: #{
%%   <<"Entities">> => list(icd10_cm_entity()),
%%   <<"ModelVersion">> => string(),
%%   <<"PaginationToken">> => string()
%% }
-type infer_icd10_cm_response() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% list_icd10_cm_inference_jobs_request() :: #{
%%   <<"Filter">> => comprehend_medical_async_job_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_icd10_cm_inference_jobs_request() :: #{binary() => any()}.

%% Example:
%% detect_entities_v2_response() :: #{
%%   <<"Entities">> => list(entity()),
%%   <<"ModelVersion">> => string(),
%%   <<"PaginationToken">> => string(),
%%   <<"UnmappedAttributes">> => list(unmapped_attribute())
%% }
-type detect_entities_v2_response() :: #{binary() => any()}.

%% Example:
%% detect_entities_request() :: #{
%%   <<"Text">> := string()
%% }
-type detect_entities_request() :: #{binary() => any()}.

%% Example:
%% s_n_o_m_e_d_c_t_entity() :: #{
%%   <<"Attributes">> => list(s_n_o_m_e_d_c_t_attribute()),
%%   <<"BeginOffset">> => integer(),
%%   <<"Category">> => list(any()),
%%   <<"EndOffset">> => integer(),
%%   <<"Id">> => integer(),
%%   <<"SNOMEDCTConcepts">> => list(s_n_o_m_e_d_c_t_concept()),
%%   <<"Score">> => float(),
%%   <<"Text">> => string(),
%%   <<"Traits">> => list(s_n_o_m_e_d_c_t_trait()),
%%   <<"Type">> => list(any())
%% }
-type s_n_o_m_e_d_c_t_entity() :: #{binary() => any()}.

%% Example:
%% invalid_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.

%% Example:
%% list_phi_detection_jobs_response() :: #{
%%   <<"ComprehendMedicalAsyncJobPropertiesList">> => list(comprehend_medical_async_job_properties()),
%%   <<"NextToken">> => string()
%% }
-type list_phi_detection_jobs_response() :: #{binary() => any()}.

%% Example:
%% list_entities_detection_v2_jobs_request() :: #{
%%   <<"Filter">> => comprehend_medical_async_job_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_entities_detection_v2_jobs_request() :: #{binary() => any()}.

%% Example:
%% describe_phi_detection_job_response() :: #{
%%   <<"ComprehendMedicalAsyncJobProperties">> => comprehend_medical_async_job_properties()
%% }
-type describe_phi_detection_job_response() :: #{binary() => any()}.

%% Example:
%% stop_phi_detection_job_response() :: #{
%%   <<"JobId">> => string()
%% }
-type stop_phi_detection_job_response() :: #{binary() => any()}.

%% Example:
%% comprehend_medical_async_job_filter() :: #{
%%   <<"JobName">> => string(),
%%   <<"JobStatus">> => list(any()),
%%   <<"SubmitTimeAfter">> => non_neg_integer(),
%%   <<"SubmitTimeBefore">> => non_neg_integer()
%% }
-type comprehend_medical_async_job_filter() :: #{binary() => any()}.

%% Example:
%% stop_icd10_cm_inference_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type stop_icd10_cm_inference_job_request() :: #{binary() => any()}.

%% Example:
%% describe_entities_detection_v2_job_response() :: #{
%%   <<"ComprehendMedicalAsyncJobProperties">> => comprehend_medical_async_job_properties()
%% }
-type describe_entities_detection_v2_job_response() :: #{binary() => any()}.

%% Example:
%% describe_rx_norm_inference_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type describe_rx_norm_inference_job_request() :: #{binary() => any()}.

%% Example:
%% service_unavailable_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% rx_norm_attribute() :: #{
%%   <<"BeginOffset">> => integer(),
%%   <<"EndOffset">> => integer(),
%%   <<"Id">> => integer(),
%%   <<"RelationshipScore">> => float(),
%%   <<"Score">> => float(),
%%   <<"Text">> => string(),
%%   <<"Traits">> => list(rx_norm_trait()),
%%   <<"Type">> => list(any())
%% }
-type rx_norm_attribute() :: #{binary() => any()}.

%% Example:
%% describe_rx_norm_inference_job_response() :: #{
%%   <<"ComprehendMedicalAsyncJobProperties">> => comprehend_medical_async_job_properties()
%% }
-type describe_rx_norm_inference_job_response() :: #{binary() => any()}.

%% Example:
%% icd10_cm_attribute() :: #{
%%   <<"BeginOffset">> => integer(),
%%   <<"Category">> => list(any()),
%%   <<"EndOffset">> => integer(),
%%   <<"Id">> => integer(),
%%   <<"RelationshipScore">> => float(),
%%   <<"RelationshipType">> => list(any()),
%%   <<"Score">> => float(),
%%   <<"Text">> => string(),
%%   <<"Traits">> => list(icd10_cm_trait()),
%%   <<"Type">> => list(any())
%% }
-type icd10_cm_attribute() :: #{binary() => any()}.

%% Example:
%% list_entities_detection_v2_jobs_response() :: #{
%%   <<"ComprehendMedicalAsyncJobPropertiesList">> => list(comprehend_medical_async_job_properties()),
%%   <<"NextToken">> => string()
%% }
-type list_entities_detection_v2_jobs_response() :: #{binary() => any()}.

%% Example:
%% list_icd10_cm_inference_jobs_response() :: #{
%%   <<"ComprehendMedicalAsyncJobPropertiesList">> => list(comprehend_medical_async_job_properties()),
%%   <<"NextToken">> => string()
%% }
-type list_icd10_cm_inference_jobs_response() :: #{binary() => any()}.

%% Example:
%% infer_s_n_o_m_e_d_c_t_request() :: #{
%%   <<"Text">> := string()
%% }
-type infer_s_n_o_m_e_d_c_t_request() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% start_icd10_cm_inference_job_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"DataAccessRoleArn">> := string(),
%%   <<"InputDataConfig">> := input_data_config(),
%%   <<"JobName">> => string(),
%%   <<"KMSKey">> => string(),
%%   <<"LanguageCode">> := list(any()),
%%   <<"OutputDataConfig">> := output_data_config()
%% }
-type start_icd10_cm_inference_job_request() :: #{binary() => any()}.

%% Example:
%% describe_s_n_o_m_e_d_c_t_inference_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type describe_s_n_o_m_e_d_c_t_inference_job_request() :: #{binary() => any()}.

%% Example:
%% start_rx_norm_inference_job_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"DataAccessRoleArn">> := string(),
%%   <<"InputDataConfig">> := input_data_config(),
%%   <<"JobName">> => string(),
%%   <<"KMSKey">> => string(),
%%   <<"LanguageCode">> := list(any()),
%%   <<"OutputDataConfig">> := output_data_config()
%% }
-type start_rx_norm_inference_job_request() :: #{binary() => any()}.

%% Example:
%% start_s_n_o_m_e_d_c_t_inference_job_response() :: #{
%%   <<"JobId">> => string()
%% }
-type start_s_n_o_m_e_d_c_t_inference_job_response() :: #{binary() => any()}.

%% Example:
%% text_size_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type text_size_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% stop_s_n_o_m_e_d_c_t_inference_job_response() :: #{
%%   <<"JobId">> => string()
%% }
-type stop_s_n_o_m_e_d_c_t_inference_job_response() :: #{binary() => any()}.

%% Example:
%% detect_phi_request() :: #{
%%   <<"Text">> := string()
%% }
-type detect_phi_request() :: #{binary() => any()}.

%% Example:
%% stop_s_n_o_m_e_d_c_t_inference_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type stop_s_n_o_m_e_d_c_t_inference_job_request() :: #{binary() => any()}.

%% Example:
%% start_s_n_o_m_e_d_c_t_inference_job_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"DataAccessRoleArn">> := string(),
%%   <<"InputDataConfig">> := input_data_config(),
%%   <<"JobName">> => string(),
%%   <<"KMSKey">> => string(),
%%   <<"LanguageCode">> := list(any()),
%%   <<"OutputDataConfig">> := output_data_config()
%% }
-type start_s_n_o_m_e_d_c_t_inference_job_request() :: #{binary() => any()}.

%% Example:
%% describe_entities_detection_v2_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type describe_entities_detection_v2_job_request() :: #{binary() => any()}.

%% Example:
%% comprehend_medical_async_job_properties() :: #{
%%   <<"DataAccessRoleArn">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"ExpirationTime">> => non_neg_integer(),
%%   <<"InputDataConfig">> => input_data_config(),
%%   <<"JobId">> => string(),
%%   <<"JobName">> => string(),
%%   <<"JobStatus">> => list(any()),
%%   <<"KMSKey">> => string(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"ManifestFilePath">> => string(),
%%   <<"Message">> => string(),
%%   <<"ModelVersion">> => string(),
%%   <<"OutputDataConfig">> => output_data_config(),
%%   <<"SubmitTime">> => non_neg_integer()
%% }
-type comprehend_medical_async_job_properties() :: #{binary() => any()}.

%% Example:
%% stop_rx_norm_inference_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type stop_rx_norm_inference_job_request() :: #{binary() => any()}.

%% Example:
%% infer_icd10_cm_request() :: #{
%%   <<"Text">> := string()
%% }
-type infer_icd10_cm_request() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% stop_icd10_cm_inference_job_response() :: #{
%%   <<"JobId">> => string()
%% }
-type stop_icd10_cm_inference_job_response() :: #{binary() => any()}.

%% Example:
%% list_rx_norm_inference_jobs_request() :: #{
%%   <<"Filter">> => comprehend_medical_async_job_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_rx_norm_inference_jobs_request() :: #{binary() => any()}.

%% Example:
%% attribute() :: #{
%%   <<"BeginOffset">> => integer(),
%%   <<"Category">> => list(any()),
%%   <<"EndOffset">> => integer(),
%%   <<"Id">> => integer(),
%%   <<"RelationshipScore">> => float(),
%%   <<"RelationshipType">> => list(any()),
%%   <<"Score">> => float(),
%%   <<"Text">> => string(),
%%   <<"Traits">> => list(trait()),
%%   <<"Type">> => list(any())
%% }
-type attribute() :: #{binary() => any()}.

%% Example:
%% start_phi_detection_job_response() :: #{
%%   <<"JobId">> => string()
%% }
-type start_phi_detection_job_response() :: #{binary() => any()}.

%% Example:
%% describe_phi_detection_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type describe_phi_detection_job_request() :: #{binary() => any()}.

%% Example:
%% stop_phi_detection_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type stop_phi_detection_job_request() :: #{binary() => any()}.

%% Example:
%% output_data_config() :: #{
%%   <<"S3Bucket">> => string(),
%%   <<"S3Key">> => string()
%% }
-type output_data_config() :: #{binary() => any()}.

%% Example:
%% infer_rx_norm_request() :: #{
%%   <<"Text">> := string()
%% }
-type infer_rx_norm_request() :: #{binary() => any()}.

%% Example:
%% stop_entities_detection_v2_job_response() :: #{
%%   <<"JobId">> => string()
%% }
-type stop_entities_detection_v2_job_response() :: #{binary() => any()}.

%% Example:
%% rx_norm_trait() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Score">> => float()
%% }
-type rx_norm_trait() :: #{binary() => any()}.

%% Example:
%% stop_rx_norm_inference_job_response() :: #{
%%   <<"JobId">> => string()
%% }
-type stop_rx_norm_inference_job_response() :: #{binary() => any()}.

%% Example:
%% start_entities_detection_v2_job_response() :: #{
%%   <<"JobId">> => string()
%% }
-type start_entities_detection_v2_job_response() :: #{binary() => any()}.

%% Example:
%% icd10_cm_trait() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Score">> => float()
%% }
-type icd10_cm_trait() :: #{binary() => any()}.

%% Example:
%% s_n_o_m_e_d_c_t_concept() :: #{
%%   <<"Code">> => string(),
%%   <<"Description">> => string(),
%%   <<"Score">> => float()
%% }
-type s_n_o_m_e_d_c_t_concept() :: #{binary() => any()}.

-type describe_entities_detection_v2_job_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type describe_icd10_cm_inference_job_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type describe_phi_detection_job_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type describe_rx_norm_inference_job_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type describe_s_n_o_m_e_d_c_t_inference_job_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type detect_entities_errors() ::
    text_size_limit_exceeded_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception() | 
    invalid_encoding_exception().

-type detect_entities_v2_errors() ::
    text_size_limit_exceeded_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception() | 
    invalid_encoding_exception().

-type detect_phi_errors() ::
    text_size_limit_exceeded_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception() | 
    invalid_encoding_exception().

-type infer_icd10_cm_errors() ::
    text_size_limit_exceeded_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception() | 
    invalid_encoding_exception().

-type infer_rx_norm_errors() ::
    text_size_limit_exceeded_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception() | 
    invalid_encoding_exception().

-type infer_s_n_o_m_e_d_c_t_errors() ::
    text_size_limit_exceeded_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception() | 
    invalid_encoding_exception().

-type list_entities_detection_v2_jobs_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception().

-type list_icd10_cm_inference_jobs_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception().

-type list_phi_detection_jobs_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception().

-type list_rx_norm_inference_jobs_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception().

-type list_s_n_o_m_e_d_c_t_inference_jobs_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception().

-type start_entities_detection_v2_job_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type start_icd10_cm_inference_job_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type start_phi_detection_job_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type start_rx_norm_inference_job_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type start_s_n_o_m_e_d_c_t_inference_job_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type stop_entities_detection_v2_job_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type stop_icd10_cm_inference_job_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type stop_phi_detection_job_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type stop_rx_norm_inference_job_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type stop_s_n_o_m_e_d_c_t_inference_job_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Gets the properties associated with a medical entities detection job.
%%
%% Use this operation
%% to get the status of a detection job.
-spec describe_entities_detection_v2_job(aws_client:aws_client(), describe_entities_detection_v2_job_request()) ->
    {ok, describe_entities_detection_v2_job_response(), tuple()} |
    {error, any()} |
    {error, describe_entities_detection_v2_job_errors(), tuple()}.
describe_entities_detection_v2_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_entities_detection_v2_job(Client, Input, []).

-spec describe_entities_detection_v2_job(aws_client:aws_client(), describe_entities_detection_v2_job_request(), proplists:proplist()) ->
    {ok, describe_entities_detection_v2_job_response(), tuple()} |
    {error, any()} |
    {error, describe_entities_detection_v2_job_errors(), tuple()}.
describe_entities_detection_v2_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEntitiesDetectionV2Job">>, Input, Options).

%% @doc Gets the properties associated with an InferICD10CM job.
%%
%% Use this operation to get the
%% status of an inference job.
-spec describe_icd10_cm_inference_job(aws_client:aws_client(), describe_icd10_cm_inference_job_request()) ->
    {ok, describe_icd10_cm_inference_job_response(), tuple()} |
    {error, any()} |
    {error, describe_icd10_cm_inference_job_errors(), tuple()}.
describe_icd10_cm_inference_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_icd10_cm_inference_job(Client, Input, []).

-spec describe_icd10_cm_inference_job(aws_client:aws_client(), describe_icd10_cm_inference_job_request(), proplists:proplist()) ->
    {ok, describe_icd10_cm_inference_job_response(), tuple()} |
    {error, any()} |
    {error, describe_icd10_cm_inference_job_errors(), tuple()}.
describe_icd10_cm_inference_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeICD10CMInferenceJob">>, Input, Options).

%% @doc Gets the properties associated with a protected health information
%% (PHI) detection job.
%%
%% Use this operation to get the status of a detection job.
-spec describe_phi_detection_job(aws_client:aws_client(), describe_phi_detection_job_request()) ->
    {ok, describe_phi_detection_job_response(), tuple()} |
    {error, any()} |
    {error, describe_phi_detection_job_errors(), tuple()}.
describe_phi_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_phi_detection_job(Client, Input, []).

-spec describe_phi_detection_job(aws_client:aws_client(), describe_phi_detection_job_request(), proplists:proplist()) ->
    {ok, describe_phi_detection_job_response(), tuple()} |
    {error, any()} |
    {error, describe_phi_detection_job_errors(), tuple()}.
describe_phi_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePHIDetectionJob">>, Input, Options).

%% @doc Gets the properties associated with an InferRxNorm job.
%%
%% Use this operation to get the
%% status of an inference job.
-spec describe_rx_norm_inference_job(aws_client:aws_client(), describe_rx_norm_inference_job_request()) ->
    {ok, describe_rx_norm_inference_job_response(), tuple()} |
    {error, any()} |
    {error, describe_rx_norm_inference_job_errors(), tuple()}.
describe_rx_norm_inference_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_rx_norm_inference_job(Client, Input, []).

-spec describe_rx_norm_inference_job(aws_client:aws_client(), describe_rx_norm_inference_job_request(), proplists:proplist()) ->
    {ok, describe_rx_norm_inference_job_response(), tuple()} |
    {error, any()} |
    {error, describe_rx_norm_inference_job_errors(), tuple()}.
describe_rx_norm_inference_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRxNormInferenceJob">>, Input, Options).

%% @doc
%% Gets the properties associated with an InferSNOMEDCT job.
%%
%% Use this operation to get the status of an inference job.
-spec describe_s_n_o_m_e_d_c_t_inference_job(aws_client:aws_client(), describe_s_n_o_m_e_d_c_t_inference_job_request()) ->
    {ok, describe_s_n_o_m_e_d_c_t_inference_job_response(), tuple()} |
    {error, any()} |
    {error, describe_s_n_o_m_e_d_c_t_inference_job_errors(), tuple()}.
describe_s_n_o_m_e_d_c_t_inference_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_s_n_o_m_e_d_c_t_inference_job(Client, Input, []).

-spec describe_s_n_o_m_e_d_c_t_inference_job(aws_client:aws_client(), describe_s_n_o_m_e_d_c_t_inference_job_request(), proplists:proplist()) ->
    {ok, describe_s_n_o_m_e_d_c_t_inference_job_response(), tuple()} |
    {error, any()} |
    {error, describe_s_n_o_m_e_d_c_t_inference_job_errors(), tuple()}.
describe_s_n_o_m_e_d_c_t_inference_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSNOMEDCTInferenceJob">>, Input, Options).

%% @doc The `DetectEntities' operation is deprecated.
%%
%% You should use the `DetectEntitiesV2' operation instead.
%%
%% Inspects the clinical text for a variety of medical entities and returns
%% specific
%% information about them such as entity category, location, and confidence
%% score on that
%% information.
-spec detect_entities(aws_client:aws_client(), detect_entities_request()) ->
    {ok, detect_entities_response(), tuple()} |
    {error, any()} |
    {error, detect_entities_errors(), tuple()}.
detect_entities(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_entities(Client, Input, []).

-spec detect_entities(aws_client:aws_client(), detect_entities_request(), proplists:proplist()) ->
    {ok, detect_entities_response(), tuple()} |
    {error, any()} |
    {error, detect_entities_errors(), tuple()}.
detect_entities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectEntities">>, Input, Options).

%% @doc Inspects the clinical text for a variety of medical entities and
%% returns specific
%% information about them such as entity category, location, and confidence
%% score on that
%% information.
%%
%% Amazon Comprehend Medical only detects medical entities in English
%% language
%% texts.
%%
%% The `DetectEntitiesV2' operation replaces the `DetectEntities'
%% operation. This new action uses a different model for determining the
%% entities in your medical
%% text and changes the way that some entities are returned in the output.
%% You should use the
%% `DetectEntitiesV2' operation in all new applications.
%%
%% The `DetectEntitiesV2' operation returns the `Acuity' and
%% `Direction' entities as attributes instead of types.
-spec detect_entities_v2(aws_client:aws_client(), detect_entities_v2_request()) ->
    {ok, detect_entities_v2_response(), tuple()} |
    {error, any()} |
    {error, detect_entities_v2_errors(), tuple()}.
detect_entities_v2(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_entities_v2(Client, Input, []).

-spec detect_entities_v2(aws_client:aws_client(), detect_entities_v2_request(), proplists:proplist()) ->
    {ok, detect_entities_v2_response(), tuple()} |
    {error, any()} |
    {error, detect_entities_v2_errors(), tuple()}.
detect_entities_v2(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectEntitiesV2">>, Input, Options).

%% @doc Inspects the clinical text for protected health information (PHI)
%% entities and returns
%% the entity category, location, and confidence score for each entity.
%%
%% Amazon Comprehend Medical
%% only detects entities in English language texts.
-spec detect_phi(aws_client:aws_client(), detect_phi_request()) ->
    {ok, detect_phi_response(), tuple()} |
    {error, any()} |
    {error, detect_phi_errors(), tuple()}.
detect_phi(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_phi(Client, Input, []).

-spec detect_phi(aws_client:aws_client(), detect_phi_request(), proplists:proplist()) ->
    {ok, detect_phi_response(), tuple()} |
    {error, any()} |
    {error, detect_phi_errors(), tuple()}.
detect_phi(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectPHI">>, Input, Options).

%% @doc InferICD10CM detects medical conditions as entities listed in a
%% patient record and links
%% those entities to normalized concept identifiers in the ICD-10-CM
%% knowledge base from the
%% Centers for Disease Control.
%%
%% Amazon Comprehend Medical only detects medical entities in
%% English language texts.
-spec infer_icd10_cm(aws_client:aws_client(), infer_icd10_cm_request()) ->
    {ok, infer_icd10_cm_response(), tuple()} |
    {error, any()} |
    {error, infer_icd10_cm_errors(), tuple()}.
infer_icd10_cm(Client, Input)
  when is_map(Client), is_map(Input) ->
    infer_icd10_cm(Client, Input, []).

-spec infer_icd10_cm(aws_client:aws_client(), infer_icd10_cm_request(), proplists:proplist()) ->
    {ok, infer_icd10_cm_response(), tuple()} |
    {error, any()} |
    {error, infer_icd10_cm_errors(), tuple()}.
infer_icd10_cm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"InferICD10CM">>, Input, Options).

%% @doc InferRxNorm detects medications as entities listed in a patient
%% record and links to the
%% normalized concept identifiers in the RxNorm database from the National
%% Library of Medicine.
%%
%% Amazon Comprehend Medical only detects medical entities in English
%% language texts.
-spec infer_rx_norm(aws_client:aws_client(), infer_rx_norm_request()) ->
    {ok, infer_rx_norm_response(), tuple()} |
    {error, any()} |
    {error, infer_rx_norm_errors(), tuple()}.
infer_rx_norm(Client, Input)
  when is_map(Client), is_map(Input) ->
    infer_rx_norm(Client, Input, []).

-spec infer_rx_norm(aws_client:aws_client(), infer_rx_norm_request(), proplists:proplist()) ->
    {ok, infer_rx_norm_response(), tuple()} |
    {error, any()} |
    {error, infer_rx_norm_errors(), tuple()}.
infer_rx_norm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"InferRxNorm">>, Input, Options).

%% @doc
%% InferSNOMEDCT detects possible medical concepts as entities and links them
%% to codes from the Systematized Nomenclature of Medicine, Clinical Terms
%% (SNOMED-CT) ontology
-spec infer_s_n_o_m_e_d_c_t(aws_client:aws_client(), infer_s_n_o_m_e_d_c_t_request()) ->
    {ok, infer_s_n_o_m_e_d_c_t_response(), tuple()} |
    {error, any()} |
    {error, infer_s_n_o_m_e_d_c_t_errors(), tuple()}.
infer_s_n_o_m_e_d_c_t(Client, Input)
  when is_map(Client), is_map(Input) ->
    infer_s_n_o_m_e_d_c_t(Client, Input, []).

-spec infer_s_n_o_m_e_d_c_t(aws_client:aws_client(), infer_s_n_o_m_e_d_c_t_request(), proplists:proplist()) ->
    {ok, infer_s_n_o_m_e_d_c_t_response(), tuple()} |
    {error, any()} |
    {error, infer_s_n_o_m_e_d_c_t_errors(), tuple()}.
infer_s_n_o_m_e_d_c_t(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"InferSNOMEDCT">>, Input, Options).

%% @doc Gets a list of medical entity detection jobs that you have submitted.
-spec list_entities_detection_v2_jobs(aws_client:aws_client(), list_entities_detection_v2_jobs_request()) ->
    {ok, list_entities_detection_v2_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_entities_detection_v2_jobs_errors(), tuple()}.
list_entities_detection_v2_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_entities_detection_v2_jobs(Client, Input, []).

-spec list_entities_detection_v2_jobs(aws_client:aws_client(), list_entities_detection_v2_jobs_request(), proplists:proplist()) ->
    {ok, list_entities_detection_v2_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_entities_detection_v2_jobs_errors(), tuple()}.
list_entities_detection_v2_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEntitiesDetectionV2Jobs">>, Input, Options).

%% @doc Gets a list of InferICD10CM jobs that you have submitted.
-spec list_icd10_cm_inference_jobs(aws_client:aws_client(), list_icd10_cm_inference_jobs_request()) ->
    {ok, list_icd10_cm_inference_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_icd10_cm_inference_jobs_errors(), tuple()}.
list_icd10_cm_inference_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_icd10_cm_inference_jobs(Client, Input, []).

-spec list_icd10_cm_inference_jobs(aws_client:aws_client(), list_icd10_cm_inference_jobs_request(), proplists:proplist()) ->
    {ok, list_icd10_cm_inference_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_icd10_cm_inference_jobs_errors(), tuple()}.
list_icd10_cm_inference_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListICD10CMInferenceJobs">>, Input, Options).

%% @doc Gets a list of protected health information (PHI) detection jobs you
%% have
%% submitted.
-spec list_phi_detection_jobs(aws_client:aws_client(), list_phi_detection_jobs_request()) ->
    {ok, list_phi_detection_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_phi_detection_jobs_errors(), tuple()}.
list_phi_detection_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_phi_detection_jobs(Client, Input, []).

-spec list_phi_detection_jobs(aws_client:aws_client(), list_phi_detection_jobs_request(), proplists:proplist()) ->
    {ok, list_phi_detection_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_phi_detection_jobs_errors(), tuple()}.
list_phi_detection_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPHIDetectionJobs">>, Input, Options).

%% @doc Gets a list of InferRxNorm jobs that you have submitted.
-spec list_rx_norm_inference_jobs(aws_client:aws_client(), list_rx_norm_inference_jobs_request()) ->
    {ok, list_rx_norm_inference_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_rx_norm_inference_jobs_errors(), tuple()}.
list_rx_norm_inference_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_rx_norm_inference_jobs(Client, Input, []).

-spec list_rx_norm_inference_jobs(aws_client:aws_client(), list_rx_norm_inference_jobs_request(), proplists:proplist()) ->
    {ok, list_rx_norm_inference_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_rx_norm_inference_jobs_errors(), tuple()}.
list_rx_norm_inference_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRxNormInferenceJobs">>, Input, Options).

%% @doc
%% Gets a list of InferSNOMEDCT jobs a user has submitted.
-spec list_s_n_o_m_e_d_c_t_inference_jobs(aws_client:aws_client(), list_s_n_o_m_e_d_c_t_inference_jobs_request()) ->
    {ok, list_s_n_o_m_e_d_c_t_inference_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_s_n_o_m_e_d_c_t_inference_jobs_errors(), tuple()}.
list_s_n_o_m_e_d_c_t_inference_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_s_n_o_m_e_d_c_t_inference_jobs(Client, Input, []).

-spec list_s_n_o_m_e_d_c_t_inference_jobs(aws_client:aws_client(), list_s_n_o_m_e_d_c_t_inference_jobs_request(), proplists:proplist()) ->
    {ok, list_s_n_o_m_e_d_c_t_inference_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_s_n_o_m_e_d_c_t_inference_jobs_errors(), tuple()}.
list_s_n_o_m_e_d_c_t_inference_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSNOMEDCTInferenceJobs">>, Input, Options).

%% @doc Starts an asynchronous medical entity detection job for a collection
%% of documents.
%%
%% Use the
%% `DescribeEntitiesDetectionV2Job' operation to track the status of a
%% job.
-spec start_entities_detection_v2_job(aws_client:aws_client(), start_entities_detection_v2_job_request()) ->
    {ok, start_entities_detection_v2_job_response(), tuple()} |
    {error, any()} |
    {error, start_entities_detection_v2_job_errors(), tuple()}.
start_entities_detection_v2_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_entities_detection_v2_job(Client, Input, []).

-spec start_entities_detection_v2_job(aws_client:aws_client(), start_entities_detection_v2_job_request(), proplists:proplist()) ->
    {ok, start_entities_detection_v2_job_response(), tuple()} |
    {error, any()} |
    {error, start_entities_detection_v2_job_errors(), tuple()}.
start_entities_detection_v2_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartEntitiesDetectionV2Job">>, Input, Options).

%% @doc Starts an asynchronous job to detect medical conditions and link them
%% to the ICD-10-CM
%% ontology.
%%
%% Use the `DescribeICD10CMInferenceJob' operation to track the status of
%% a
%% job.
-spec start_icd10_cm_inference_job(aws_client:aws_client(), start_icd10_cm_inference_job_request()) ->
    {ok, start_icd10_cm_inference_job_response(), tuple()} |
    {error, any()} |
    {error, start_icd10_cm_inference_job_errors(), tuple()}.
start_icd10_cm_inference_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_icd10_cm_inference_job(Client, Input, []).

-spec start_icd10_cm_inference_job(aws_client:aws_client(), start_icd10_cm_inference_job_request(), proplists:proplist()) ->
    {ok, start_icd10_cm_inference_job_response(), tuple()} |
    {error, any()} |
    {error, start_icd10_cm_inference_job_errors(), tuple()}.
start_icd10_cm_inference_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartICD10CMInferenceJob">>, Input, Options).

%% @doc Starts an asynchronous job to detect protected health information
%% (PHI).
%%
%% Use the
%% `DescribePHIDetectionJob' operation to track the status of a job.
-spec start_phi_detection_job(aws_client:aws_client(), start_phi_detection_job_request()) ->
    {ok, start_phi_detection_job_response(), tuple()} |
    {error, any()} |
    {error, start_phi_detection_job_errors(), tuple()}.
start_phi_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_phi_detection_job(Client, Input, []).

-spec start_phi_detection_job(aws_client:aws_client(), start_phi_detection_job_request(), proplists:proplist()) ->
    {ok, start_phi_detection_job_response(), tuple()} |
    {error, any()} |
    {error, start_phi_detection_job_errors(), tuple()}.
start_phi_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartPHIDetectionJob">>, Input, Options).

%% @doc Starts an asynchronous job to detect medication entities and link
%% them to the RxNorm
%% ontology.
%%
%% Use the `DescribeRxNormInferenceJob' operation to track the status of
%% a
%% job.
-spec start_rx_norm_inference_job(aws_client:aws_client(), start_rx_norm_inference_job_request()) ->
    {ok, start_rx_norm_inference_job_response(), tuple()} |
    {error, any()} |
    {error, start_rx_norm_inference_job_errors(), tuple()}.
start_rx_norm_inference_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_rx_norm_inference_job(Client, Input, []).

-spec start_rx_norm_inference_job(aws_client:aws_client(), start_rx_norm_inference_job_request(), proplists:proplist()) ->
    {ok, start_rx_norm_inference_job_response(), tuple()} |
    {error, any()} |
    {error, start_rx_norm_inference_job_errors(), tuple()}.
start_rx_norm_inference_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartRxNormInferenceJob">>, Input, Options).

%% @doc
%% Starts an asynchronous job to detect medical concepts and link them to the
%% SNOMED-CT ontology.
%%
%% Use the DescribeSNOMEDCTInferenceJob operation to track the status of a
%% job.
-spec start_s_n_o_m_e_d_c_t_inference_job(aws_client:aws_client(), start_s_n_o_m_e_d_c_t_inference_job_request()) ->
    {ok, start_s_n_o_m_e_d_c_t_inference_job_response(), tuple()} |
    {error, any()} |
    {error, start_s_n_o_m_e_d_c_t_inference_job_errors(), tuple()}.
start_s_n_o_m_e_d_c_t_inference_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_s_n_o_m_e_d_c_t_inference_job(Client, Input, []).

-spec start_s_n_o_m_e_d_c_t_inference_job(aws_client:aws_client(), start_s_n_o_m_e_d_c_t_inference_job_request(), proplists:proplist()) ->
    {ok, start_s_n_o_m_e_d_c_t_inference_job_response(), tuple()} |
    {error, any()} |
    {error, start_s_n_o_m_e_d_c_t_inference_job_errors(), tuple()}.
start_s_n_o_m_e_d_c_t_inference_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartSNOMEDCTInferenceJob">>, Input, Options).

%% @doc Stops a medical entities detection job in progress.
-spec stop_entities_detection_v2_job(aws_client:aws_client(), stop_entities_detection_v2_job_request()) ->
    {ok, stop_entities_detection_v2_job_response(), tuple()} |
    {error, any()} |
    {error, stop_entities_detection_v2_job_errors(), tuple()}.
stop_entities_detection_v2_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_entities_detection_v2_job(Client, Input, []).

-spec stop_entities_detection_v2_job(aws_client:aws_client(), stop_entities_detection_v2_job_request(), proplists:proplist()) ->
    {ok, stop_entities_detection_v2_job_response(), tuple()} |
    {error, any()} |
    {error, stop_entities_detection_v2_job_errors(), tuple()}.
stop_entities_detection_v2_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopEntitiesDetectionV2Job">>, Input, Options).

%% @doc Stops an InferICD10CM inference job in progress.
-spec stop_icd10_cm_inference_job(aws_client:aws_client(), stop_icd10_cm_inference_job_request()) ->
    {ok, stop_icd10_cm_inference_job_response(), tuple()} |
    {error, any()} |
    {error, stop_icd10_cm_inference_job_errors(), tuple()}.
stop_icd10_cm_inference_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_icd10_cm_inference_job(Client, Input, []).

-spec stop_icd10_cm_inference_job(aws_client:aws_client(), stop_icd10_cm_inference_job_request(), proplists:proplist()) ->
    {ok, stop_icd10_cm_inference_job_response(), tuple()} |
    {error, any()} |
    {error, stop_icd10_cm_inference_job_errors(), tuple()}.
stop_icd10_cm_inference_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopICD10CMInferenceJob">>, Input, Options).

%% @doc Stops a protected health information (PHI) detection job in progress.
-spec stop_phi_detection_job(aws_client:aws_client(), stop_phi_detection_job_request()) ->
    {ok, stop_phi_detection_job_response(), tuple()} |
    {error, any()} |
    {error, stop_phi_detection_job_errors(), tuple()}.
stop_phi_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_phi_detection_job(Client, Input, []).

-spec stop_phi_detection_job(aws_client:aws_client(), stop_phi_detection_job_request(), proplists:proplist()) ->
    {ok, stop_phi_detection_job_response(), tuple()} |
    {error, any()} |
    {error, stop_phi_detection_job_errors(), tuple()}.
stop_phi_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopPHIDetectionJob">>, Input, Options).

%% @doc Stops an InferRxNorm inference job in progress.
-spec stop_rx_norm_inference_job(aws_client:aws_client(), stop_rx_norm_inference_job_request()) ->
    {ok, stop_rx_norm_inference_job_response(), tuple()} |
    {error, any()} |
    {error, stop_rx_norm_inference_job_errors(), tuple()}.
stop_rx_norm_inference_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_rx_norm_inference_job(Client, Input, []).

-spec stop_rx_norm_inference_job(aws_client:aws_client(), stop_rx_norm_inference_job_request(), proplists:proplist()) ->
    {ok, stop_rx_norm_inference_job_response(), tuple()} |
    {error, any()} |
    {error, stop_rx_norm_inference_job_errors(), tuple()}.
stop_rx_norm_inference_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopRxNormInferenceJob">>, Input, Options).

%% @doc
%% Stops an InferSNOMEDCT inference job in progress.
-spec stop_s_n_o_m_e_d_c_t_inference_job(aws_client:aws_client(), stop_s_n_o_m_e_d_c_t_inference_job_request()) ->
    {ok, stop_s_n_o_m_e_d_c_t_inference_job_response(), tuple()} |
    {error, any()} |
    {error, stop_s_n_o_m_e_d_c_t_inference_job_errors(), tuple()}.
stop_s_n_o_m_e_d_c_t_inference_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_s_n_o_m_e_d_c_t_inference_job(Client, Input, []).

-spec stop_s_n_o_m_e_d_c_t_inference_job(aws_client:aws_client(), stop_s_n_o_m_e_d_c_t_inference_job_request(), proplists:proplist()) ->
    {ok, stop_s_n_o_m_e_d_c_t_inference_job_response(), tuple()} |
    {error, any()} |
    {error, stop_s_n_o_m_e_d_c_t_inference_job_errors(), tuple()}.
stop_s_n_o_m_e_d_c_t_inference_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopSNOMEDCTInferenceJob">>, Input, Options).

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
    Client1 = Client#{service => <<"comprehendmedical">>},
    Host = build_host(<<"comprehendmedical">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"ComprehendMedical_20181030.", Action/binary>>}
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
