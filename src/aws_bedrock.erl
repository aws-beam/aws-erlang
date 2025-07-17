%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Describes the API operations for creating, managing, fine-turning,
%% and evaluating Amazon Bedrock models.
-module(aws_bedrock).

-export([batch_delete_evaluation_job/2,
         batch_delete_evaluation_job/3,
         create_custom_model/2,
         create_custom_model/3,
         create_custom_model_deployment/2,
         create_custom_model_deployment/3,
         create_evaluation_job/2,
         create_evaluation_job/3,
         create_foundation_model_agreement/2,
         create_foundation_model_agreement/3,
         create_guardrail/2,
         create_guardrail/3,
         create_guardrail_version/3,
         create_guardrail_version/4,
         create_inference_profile/2,
         create_inference_profile/3,
         create_marketplace_model_endpoint/2,
         create_marketplace_model_endpoint/3,
         create_model_copy_job/2,
         create_model_copy_job/3,
         create_model_customization_job/2,
         create_model_customization_job/3,
         create_model_import_job/2,
         create_model_import_job/3,
         create_model_invocation_job/2,
         create_model_invocation_job/3,
         create_prompt_router/2,
         create_prompt_router/3,
         create_provisioned_model_throughput/2,
         create_provisioned_model_throughput/3,
         delete_custom_model/3,
         delete_custom_model/4,
         delete_custom_model_deployment/3,
         delete_custom_model_deployment/4,
         delete_foundation_model_agreement/2,
         delete_foundation_model_agreement/3,
         delete_guardrail/3,
         delete_guardrail/4,
         delete_imported_model/3,
         delete_imported_model/4,
         delete_inference_profile/3,
         delete_inference_profile/4,
         delete_marketplace_model_endpoint/3,
         delete_marketplace_model_endpoint/4,
         delete_model_invocation_logging_configuration/2,
         delete_model_invocation_logging_configuration/3,
         delete_prompt_router/3,
         delete_prompt_router/4,
         delete_provisioned_model_throughput/3,
         delete_provisioned_model_throughput/4,
         deregister_marketplace_model_endpoint/3,
         deregister_marketplace_model_endpoint/4,
         get_custom_model/2,
         get_custom_model/4,
         get_custom_model/5,
         get_custom_model_deployment/2,
         get_custom_model_deployment/4,
         get_custom_model_deployment/5,
         get_evaluation_job/2,
         get_evaluation_job/4,
         get_evaluation_job/5,
         get_foundation_model/2,
         get_foundation_model/4,
         get_foundation_model/5,
         get_foundation_model_availability/2,
         get_foundation_model_availability/4,
         get_foundation_model_availability/5,
         get_guardrail/2,
         get_guardrail/4,
         get_guardrail/5,
         get_imported_model/2,
         get_imported_model/4,
         get_imported_model/5,
         get_inference_profile/2,
         get_inference_profile/4,
         get_inference_profile/5,
         get_marketplace_model_endpoint/2,
         get_marketplace_model_endpoint/4,
         get_marketplace_model_endpoint/5,
         get_model_copy_job/2,
         get_model_copy_job/4,
         get_model_copy_job/5,
         get_model_customization_job/2,
         get_model_customization_job/4,
         get_model_customization_job/5,
         get_model_import_job/2,
         get_model_import_job/4,
         get_model_import_job/5,
         get_model_invocation_job/2,
         get_model_invocation_job/4,
         get_model_invocation_job/5,
         get_model_invocation_logging_configuration/1,
         get_model_invocation_logging_configuration/3,
         get_model_invocation_logging_configuration/4,
         get_prompt_router/2,
         get_prompt_router/4,
         get_prompt_router/5,
         get_provisioned_model_throughput/2,
         get_provisioned_model_throughput/4,
         get_provisioned_model_throughput/5,
         get_use_case_for_model_access/1,
         get_use_case_for_model_access/3,
         get_use_case_for_model_access/4,
         list_custom_model_deployments/1,
         list_custom_model_deployments/3,
         list_custom_model_deployments/4,
         list_custom_models/1,
         list_custom_models/3,
         list_custom_models/4,
         list_evaluation_jobs/1,
         list_evaluation_jobs/3,
         list_evaluation_jobs/4,
         list_foundation_model_agreement_offers/2,
         list_foundation_model_agreement_offers/4,
         list_foundation_model_agreement_offers/5,
         list_foundation_models/1,
         list_foundation_models/3,
         list_foundation_models/4,
         list_guardrails/1,
         list_guardrails/3,
         list_guardrails/4,
         list_imported_models/1,
         list_imported_models/3,
         list_imported_models/4,
         list_inference_profiles/1,
         list_inference_profiles/3,
         list_inference_profiles/4,
         list_marketplace_model_endpoints/1,
         list_marketplace_model_endpoints/3,
         list_marketplace_model_endpoints/4,
         list_model_copy_jobs/1,
         list_model_copy_jobs/3,
         list_model_copy_jobs/4,
         list_model_customization_jobs/1,
         list_model_customization_jobs/3,
         list_model_customization_jobs/4,
         list_model_import_jobs/1,
         list_model_import_jobs/3,
         list_model_import_jobs/4,
         list_model_invocation_jobs/1,
         list_model_invocation_jobs/3,
         list_model_invocation_jobs/4,
         list_prompt_routers/1,
         list_prompt_routers/3,
         list_prompt_routers/4,
         list_provisioned_model_throughputs/1,
         list_provisioned_model_throughputs/3,
         list_provisioned_model_throughputs/4,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_model_invocation_logging_configuration/2,
         put_model_invocation_logging_configuration/3,
         put_use_case_for_model_access/2,
         put_use_case_for_model_access/3,
         register_marketplace_model_endpoint/3,
         register_marketplace_model_endpoint/4,
         stop_evaluation_job/3,
         stop_evaluation_job/4,
         stop_model_customization_job/3,
         stop_model_customization_job/4,
         stop_model_invocation_job/3,
         stop_model_invocation_job/4,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_guardrail/3,
         update_guardrail/4,
         update_marketplace_model_endpoint/3,
         update_marketplace_model_endpoint/4,
         update_provisioned_model_throughput/3,
         update_provisioned_model_throughput/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% model_customization_job_summary() :: #{
%%   <<"baseModelArn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"customModelArn">> => string(),
%%   <<"customModelName">> => string(),
%%   <<"customizationType">> => list(any()),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"jobArn">> => string(),
%%   <<"jobName">> => string(),
%%   <<"lastModifiedTime">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"statusDetails">> => status_details()
%% }
-type model_customization_job_summary() :: #{binary() => any()}.


%% Example:
%% list_custom_models_request() :: #{
%%   <<"baseModelArnEquals">> => string(),
%%   <<"creationTimeAfter">> => non_neg_integer(),
%%   <<"creationTimeBefore">> => non_neg_integer(),
%%   <<"foundationModelArnEquals">> => string(),
%%   <<"isOwned">> => [boolean()],
%%   <<"maxResults">> => integer(),
%%   <<"modelStatus">> => list(any()),
%%   <<"nameContains">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any())
%% }
-type list_custom_models_request() :: #{binary() => any()}.


%% Example:
%% marketplace_model_endpoint_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"endpointArn">> => string(),
%%   <<"modelSourceIdentifier">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => [string()],
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type marketplace_model_endpoint_summary() :: #{binary() => any()}.

%% Example:
%% delete_provisioned_model_throughput_response() :: #{}
-type delete_provisioned_model_throughput_response() :: #{}.


%% Example:
%% create_model_import_job_response() :: #{
%%   <<"jobArn">> => string()
%% }
-type create_model_import_job_response() :: #{binary() => any()}.


%% Example:
%% get_evaluation_job_response() :: #{
%%   <<"applicationType">> => list(any()),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"customerEncryptionKeyId">> => string(),
%%   <<"evaluationConfig">> => list(),
%%   <<"failureMessages">> => list(string()),
%%   <<"inferenceConfig">> => list(),
%%   <<"jobArn">> => string(),
%%   <<"jobDescription">> => string(),
%%   <<"jobName">> => string(),
%%   <<"jobType">> => list(any()),
%%   <<"lastModifiedTime">> => non_neg_integer(),
%%   <<"outputDataConfig">> => evaluation_output_data_config(),
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any())
%% }
-type get_evaluation_job_response() :: #{binary() => any()}.


%% Example:
%% foundation_model_summary() :: #{
%%   <<"customizationsSupported">> => list(list(any())()),
%%   <<"inferenceTypesSupported">> => list(list(any())()),
%%   <<"inputModalities">> => list(list(any())()),
%%   <<"modelArn">> => string(),
%%   <<"modelId">> => string(),
%%   <<"modelLifecycle">> => foundation_model_lifecycle(),
%%   <<"modelName">> => string(),
%%   <<"outputModalities">> => list(list(any())()),
%%   <<"providerName">> => string(),
%%   <<"responseStreamingSupported">> => [boolean()]
%% }
-type foundation_model_summary() :: #{binary() => any()}.


%% Example:
%% list_marketplace_model_endpoints_response() :: #{
%%   <<"marketplaceModelEndpoints">> => list(marketplace_model_endpoint_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_marketplace_model_endpoints_response() :: #{binary() => any()}.


%% Example:
%% metadata_attribute_schema() :: #{
%%   <<"description">> => [string()],
%%   <<"key">> => [string()],
%%   <<"type">> => list(any())
%% }
-type metadata_attribute_schema() :: #{binary() => any()}.


%% Example:
%% guardrail_content_filters_tier_config() :: #{
%%   <<"tierName">> => list(any())
%% }
-type guardrail_content_filters_tier_config() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceARN">> := string(),
%%   <<"tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% delete_guardrail_request() :: #{
%%   <<"guardrailVersion">> => string()
%% }
-type delete_guardrail_request() :: #{binary() => any()}.

%% Example:
%% stop_model_invocation_job_request() :: #{}
-type stop_model_invocation_job_request() :: #{}.

%% Example:
%% delete_custom_model_response() :: #{}
-type delete_custom_model_response() :: #{}.


%% Example:
%% evaluation_inference_config_summary() :: #{
%%   <<"modelConfigSummary">> => evaluation_model_config_summary(),
%%   <<"ragConfigSummary">> => evaluation_rag_config_summary()
%% }
-type evaluation_inference_config_summary() :: #{binary() => any()}.


%% Example:
%% create_model_invocation_job_response() :: #{
%%   <<"jobArn">> => string()
%% }
-type create_model_invocation_job_response() :: #{binary() => any()}.


%% Example:
%% list_inference_profiles_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"typeEquals">> => list(any())
%% }
-type list_inference_profiles_request() :: #{binary() => any()}.


%% Example:
%% batch_delete_evaluation_job_error() :: #{
%%   <<"code">> => [string()],
%%   <<"jobIdentifier">> => string(),
%%   <<"message">> => [string()]
%% }
-type batch_delete_evaluation_job_error() :: #{binary() => any()}.


%% Example:
%% offer() :: #{
%%   <<"offerId">> => string(),
%%   <<"offerToken">> => string(),
%%   <<"termDetails">> => term_details()
%% }
-type offer() :: #{binary() => any()}.

%% Example:
%% get_evaluation_job_request() :: #{}
-type get_evaluation_job_request() :: #{}.

%% Example:
%% get_foundation_model_availability_request() :: #{}
-type get_foundation_model_availability_request() :: #{}.

%% Example:
%% stop_evaluation_job_response() :: #{}
-type stop_evaluation_job_response() :: #{}.

%% Example:
%% get_provisioned_model_throughput_request() :: #{}
-type get_provisioned_model_throughput_request() :: #{}.


%% Example:
%% create_model_customization_job_response() :: #{
%%   <<"jobArn">> => string()
%% }
-type create_model_customization_job_response() :: #{binary() => any()}.


%% Example:
%% sage_maker_endpoint() :: #{
%%   <<"executionRole">> => string(),
%%   <<"initialInstanceCount">> => integer(),
%%   <<"instanceType">> => string(),
%%   <<"kmsEncryptionKey">> => string(),
%%   <<"vpc">> => vpc_config()
%% }
-type sage_maker_endpoint() :: #{binary() => any()}.


%% Example:
%% get_guardrail_response() :: #{
%%   <<"blockedInputMessaging">> => string(),
%%   <<"blockedOutputsMessaging">> => string(),
%%   <<"contentPolicy">> => guardrail_content_policy(),
%%   <<"contextualGroundingPolicy">> => guardrail_contextual_grounding_policy(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"crossRegionDetails">> => guardrail_cross_region_details(),
%%   <<"description">> => string(),
%%   <<"failureRecommendations">> => list(string()),
%%   <<"guardrailArn">> => string(),
%%   <<"guardrailId">> => string(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"name">> => string(),
%%   <<"sensitiveInformationPolicy">> => guardrail_sensitive_information_policy(),
%%   <<"status">> => list(any()),
%%   <<"statusReasons">> => list(string()),
%%   <<"topicPolicy">> => guardrail_topic_policy(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string(),
%%   <<"wordPolicy">> => guardrail_word_policy()
%% }
-type get_guardrail_response() :: #{binary() => any()}.


%% Example:
%% foundation_model_details() :: #{
%%   <<"customizationsSupported">> => list(list(any())()),
%%   <<"inferenceTypesSupported">> => list(list(any())()),
%%   <<"inputModalities">> => list(list(any())()),
%%   <<"modelArn">> => string(),
%%   <<"modelId">> => string(),
%%   <<"modelLifecycle">> => foundation_model_lifecycle(),
%%   <<"modelName">> => string(),
%%   <<"outputModalities">> => list(list(any())()),
%%   <<"providerName">> => string(),
%%   <<"responseStreamingSupported">> => [boolean()]
%% }
-type foundation_model_details() :: #{binary() => any()}.


%% Example:
%% guardrail_topic_policy_config() :: #{
%%   <<"tierConfig">> => guardrail_topics_tier_config(),
%%   <<"topicsConfig">> => list(guardrail_topic_config())
%% }
-type guardrail_topic_policy_config() :: #{binary() => any()}.


%% Example:
%% list_model_invocation_jobs_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nameContains">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any()),
%%   <<"statusEquals">> => list(any()),
%%   <<"submitTimeAfter">> => non_neg_integer(),
%%   <<"submitTimeBefore">> => non_neg_integer()
%% }
-type list_model_invocation_jobs_request() :: #{binary() => any()}.


%% Example:
%% create_guardrail_request() :: #{
%%   <<"blockedInputMessaging">> := string(),
%%   <<"blockedOutputsMessaging">> := string(),
%%   <<"clientRequestToken">> => string(),
%%   <<"contentPolicyConfig">> => guardrail_content_policy_config(),
%%   <<"contextualGroundingPolicyConfig">> => guardrail_contextual_grounding_policy_config(),
%%   <<"crossRegionConfig">> => guardrail_cross_region_config(),
%%   <<"description">> => string(),
%%   <<"kmsKeyId">> => string(),
%%   <<"name">> := string(),
%%   <<"sensitiveInformationPolicyConfig">> => guardrail_sensitive_information_policy_config(),
%%   <<"tags">> => list(tag()),
%%   <<"topicPolicyConfig">> => guardrail_topic_policy_config(),
%%   <<"wordPolicyConfig">> => guardrail_word_policy_config()
%% }
-type create_guardrail_request() :: #{binary() => any()}.


%% Example:
%% text_inference_config() :: #{
%%   <<"maxTokens">> => integer(),
%%   <<"stopSequences">> => list([string()]()),
%%   <<"temperature">> => float(),
%%   <<"topP">> => float()
%% }
-type text_inference_config() :: #{binary() => any()}.


%% Example:
%% list_marketplace_model_endpoints_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"modelSourceEquals">> => string(),
%%   <<"nextToken">> => string()
%% }
-type list_marketplace_model_endpoints_request() :: #{binary() => any()}.


%% Example:
%% guardrail_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"crossRegionDetails">> => guardrail_cross_region_details(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string()
%% }
-type guardrail_summary() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% guardrail_word_policy() :: #{
%%   <<"managedWordLists">> => list(guardrail_managed_words()),
%%   <<"words">> => list(guardrail_word())
%% }
-type guardrail_word_policy() :: #{binary() => any()}.


%% Example:
%% list_evaluation_jobs_request() :: #{
%%   <<"applicationTypeEquals">> => list(any()),
%%   <<"creationTimeAfter">> => non_neg_integer(),
%%   <<"creationTimeBefore">> => non_neg_integer(),
%%   <<"maxResults">> => integer(),
%%   <<"nameContains">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any()),
%%   <<"statusEquals">> => list(any())
%% }
-type list_evaluation_jobs_request() :: #{binary() => any()}.


%% Example:
%% create_inference_profile_response() :: #{
%%   <<"inferenceProfileArn">> => string(),
%%   <<"status">> => list(any())
%% }
-type create_inference_profile_response() :: #{binary() => any()}.


%% Example:
%% external_source() :: #{
%%   <<"byteContent">> => byte_content_doc(),
%%   <<"s3Location">> => s3_object_doc(),
%%   <<"sourceType">> => list(any())
%% }
-type external_source() :: #{binary() => any()}.


%% Example:
%% automated_evaluation_config() :: #{
%%   <<"customMetricConfig">> => automated_evaluation_custom_metric_config(),
%%   <<"datasetMetricConfigs">> => list(evaluation_dataset_metric_config()),
%%   <<"evaluatorModelConfig">> => list()
%% }
-type automated_evaluation_config() :: #{binary() => any()}.


%% Example:
%% guardrail_topic_config() :: #{
%%   <<"definition">> => string(),
%%   <<"examples">> => list(string()),
%%   <<"inputAction">> => list(any()),
%%   <<"inputEnabled">> => [boolean()],
%%   <<"name">> => string(),
%%   <<"outputAction">> => list(any()),
%%   <<"outputEnabled">> => [boolean()],
%%   <<"type">> => list(any())
%% }
-type guardrail_topic_config() :: #{binary() => any()}.


%% Example:
%% get_inference_profile_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"inferenceProfileArn">> => string(),
%%   <<"inferenceProfileId">> => string(),
%%   <<"inferenceProfileName">> => string(),
%%   <<"models">> => list(inference_profile_model()),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type get_inference_profile_response() :: #{binary() => any()}.


%% Example:
%% guardrail_topics_tier() :: #{
%%   <<"tierName">> => list(any())
%% }
-type guardrail_topics_tier() :: #{binary() => any()}.


%% Example:
%% human_workflow_config() :: #{
%%   <<"flowDefinitionArn">> => string(),
%%   <<"instructions">> => string()
%% }
-type human_workflow_config() :: #{binary() => any()}.


%% Example:
%% guardrail_content_policy() :: #{
%%   <<"filters">> => list(guardrail_content_filter()),
%%   <<"tier">> => guardrail_content_filters_tier()
%% }
-type guardrail_content_policy() :: #{binary() => any()}.


%% Example:
%% routing_criteria() :: #{
%%   <<"responseQualityDifference">> => [float()]
%% }
-type routing_criteria() :: #{binary() => any()}.


%% Example:
%% s3_object_doc() :: #{
%%   <<"uri">> => string()
%% }
-type s3_object_doc() :: #{binary() => any()}.

%% Example:
%% get_marketplace_model_endpoint_request() :: #{}
-type get_marketplace_model_endpoint_request() :: #{}.


%% Example:
%% list_model_import_jobs_request() :: #{
%%   <<"creationTimeAfter">> => non_neg_integer(),
%%   <<"creationTimeBefore">> => non_neg_integer(),
%%   <<"maxResults">> => integer(),
%%   <<"nameContains">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any()),
%%   <<"statusEquals">> => list(any())
%% }
-type list_model_import_jobs_request() :: #{binary() => any()}.


%% Example:
%% guardrail_topics_tier_config() :: #{
%%   <<"tierName">> => list(any())
%% }
-type guardrail_topics_tier_config() :: #{binary() => any()}.


%% Example:
%% guardrail_contextual_grounding_filter_config() :: #{
%%   <<"action">> => list(any()),
%%   <<"enabled">> => [boolean()],
%%   <<"threshold">> => [float()],
%%   <<"type">> => list(any())
%% }
-type guardrail_contextual_grounding_filter_config() :: #{binary() => any()}.


%% Example:
%% create_custom_model_deployment_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"description">> => string(),
%%   <<"modelArn">> := string(),
%%   <<"modelDeploymentName">> := string(),
%%   <<"tags">> => list(tag())
%% }
-type create_custom_model_deployment_request() :: #{binary() => any()}.


%% Example:
%% list_model_customization_jobs_request() :: #{
%%   <<"creationTimeAfter">> => non_neg_integer(),
%%   <<"creationTimeBefore">> => non_neg_integer(),
%%   <<"maxResults">> => integer(),
%%   <<"nameContains">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any()),
%%   <<"statusEquals">> => list(any())
%% }
-type list_model_customization_jobs_request() :: #{binary() => any()}.


%% Example:
%% list_foundation_model_agreement_offers_response() :: #{
%%   <<"modelId">> => string(),
%%   <<"offers">> => list(offer())
%% }
-type list_foundation_model_agreement_offers_response() :: #{binary() => any()}.


%% Example:
%% list_provisioned_model_throughputs_request() :: #{
%%   <<"creationTimeAfter">> => non_neg_integer(),
%%   <<"creationTimeBefore">> => non_neg_integer(),
%%   <<"maxResults">> => integer(),
%%   <<"modelArnEquals">> => string(),
%%   <<"nameContains">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any()),
%%   <<"statusEquals">> => list(any())
%% }
-type list_provisioned_model_throughputs_request() :: #{binary() => any()}.


%% Example:
%% pricing_term() :: #{
%%   <<"rateCard">> => list(dimensional_price_rate())
%% }
-type pricing_term() :: #{binary() => any()}.

%% Example:
%% delete_custom_model_deployment_request() :: #{}
-type delete_custom_model_deployment_request() :: #{}.


%% Example:
%% create_guardrail_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"guardrailArn">> => string(),
%%   <<"guardrailId">> => string(),
%%   <<"version">> => string()
%% }
-type create_guardrail_response() :: #{binary() => any()}.

%% Example:
%% stop_evaluation_job_request() :: #{}
-type stop_evaluation_job_request() :: #{}.


%% Example:
%% marketplace_model_endpoint() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"endpointArn">> => string(),
%%   <<"endpointConfig">> => list(),
%%   <<"endpointStatus">> => [string()],
%%   <<"endpointStatusMessage">> => [string()],
%%   <<"modelSourceIdentifier">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => [string()],
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type marketplace_model_endpoint() :: #{binary() => any()}.


%% Example:
%% automated_evaluation_custom_metric_config() :: #{
%%   <<"customMetrics">> => list(list()),
%%   <<"evaluatorModelConfig">> => custom_metric_evaluator_model_config()
%% }
-type automated_evaluation_custom_metric_config() :: #{binary() => any()}.

%% Example:
%% get_custom_model_deployment_request() :: #{}
-type get_custom_model_deployment_request() :: #{}.


%% Example:
%% evaluation_model_config_summary() :: #{
%%   <<"bedrockModelIdentifiers">> => list(string()),
%%   <<"precomputedInferenceSourceIdentifiers">> => list(string())
%% }
-type evaluation_model_config_summary() :: #{binary() => any()}.


%% Example:
%% invocation_logs_config() :: #{
%%   <<"invocationLogSource">> => list(),
%%   <<"requestMetadataFilters">> => list(),
%%   <<"usePromptResponse">> => boolean()
%% }
-type invocation_logs_config() :: #{binary() => any()}.

%% Example:
%% get_prompt_router_request() :: #{}
-type get_prompt_router_request() :: #{}.


%% Example:
%% agreement_availability() :: #{
%%   <<"errorMessage">> => [string()],
%%   <<"status">> => list(any())
%% }
-type agreement_availability() :: #{binary() => any()}.


%% Example:
%% support_term() :: #{
%%   <<"refundPolicyDescription">> => [string()]
%% }
-type support_term() :: #{binary() => any()}.


%% Example:
%% list_inference_profiles_response() :: #{
%%   <<"inferenceProfileSummaries">> => list(inference_profile_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_inference_profiles_response() :: #{binary() => any()}.


%% Example:
%% create_custom_model_response() :: #{
%%   <<"modelArn">> => string()
%% }
-type create_custom_model_response() :: #{binary() => any()}.

%% Example:
%% delete_prompt_router_request() :: #{}
-type delete_prompt_router_request() :: #{}.


%% Example:
%% cloud_watch_config() :: #{
%%   <<"largeDataDeliveryS3Config">> => s3_config(),
%%   <<"logGroupName">> => string(),
%%   <<"roleArn">> => string()
%% }
-type cloud_watch_config() :: #{binary() => any()}.

%% Example:
%% delete_inference_profile_request() :: #{}
-type delete_inference_profile_request() :: #{}.


%% Example:
%% logging_config() :: #{
%%   <<"cloudWatchConfig">> => cloud_watch_config(),
%%   <<"embeddingDataDeliveryEnabled">> => [boolean()],
%%   <<"imageDataDeliveryEnabled">> => [boolean()],
%%   <<"s3Config">> => s3_config(),
%%   <<"textDataDeliveryEnabled">> => [boolean()],
%%   <<"videoDataDeliveryEnabled">> => [boolean()]
%% }
-type logging_config() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceARN">> := string(),
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% custom_metric_bedrock_evaluator_model() :: #{
%%   <<"modelIdentifier">> => string()
%% }
-type custom_metric_bedrock_evaluator_model() :: #{binary() => any()}.


%% Example:
%% status_details() :: #{
%%   <<"dataProcessingDetails">> => data_processing_details(),
%%   <<"trainingDetails">> => training_details(),
%%   <<"validationDetails">> => validation_details()
%% }
-type status_details() :: #{binary() => any()}.


%% Example:
%% create_inference_profile_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"description">> => string(),
%%   <<"inferenceProfileName">> := string(),
%%   <<"modelSource">> := list(),
%%   <<"tags">> => list(tag())
%% }
-type create_inference_profile_request() :: #{binary() => any()}.


%% Example:
%% list_provisioned_model_throughputs_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"provisionedModelSummaries">> => list(provisioned_model_summary())
%% }
-type list_provisioned_model_throughputs_response() :: #{binary() => any()}.


%% Example:
%% provisioned_model_summary() :: #{
%%   <<"commitmentDuration">> => list(any()),
%%   <<"commitmentExpirationTime">> => non_neg_integer(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"desiredModelArn">> => string(),
%%   <<"desiredModelUnits">> => integer(),
%%   <<"foundationModelArn">> => string(),
%%   <<"lastModifiedTime">> => non_neg_integer(),
%%   <<"modelArn">> => string(),
%%   <<"modelUnits">> => integer(),
%%   <<"provisionedModelArn">> => string(),
%%   <<"provisionedModelName">> => string(),
%%   <<"status">> => list(any())
%% }
-type provisioned_model_summary() :: #{binary() => any()}.


%% Example:
%% retrieve_and_generate_configuration() :: #{
%%   <<"externalSourcesConfiguration">> => external_sources_retrieve_and_generate_configuration(),
%%   <<"knowledgeBaseConfiguration">> => knowledge_base_retrieve_and_generate_configuration(),
%%   <<"type">> => list(any())
%% }
-type retrieve_and_generate_configuration() :: #{binary() => any()}.


%% Example:
%% create_model_copy_job_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"modelKmsKeyId">> => string(),
%%   <<"sourceModelArn">> := string(),
%%   <<"targetModelName">> := string(),
%%   <<"targetModelTags">> => list(tag())
%% }
-type create_model_copy_job_request() :: #{binary() => any()}.


%% Example:
%% prompt_router_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"fallbackModel">> => prompt_router_target_model(),
%%   <<"models">> => list(prompt_router_target_model()),
%%   <<"promptRouterArn">> => string(),
%%   <<"promptRouterName">> => string(),
%%   <<"routingCriteria">> => routing_criteria(),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type prompt_router_summary() :: #{binary() => any()}.


%% Example:
%% list_custom_model_deployments_request() :: #{
%%   <<"createdAfter">> => non_neg_integer(),
%%   <<"createdBefore">> => non_neg_integer(),
%%   <<"maxResults">> => integer(),
%%   <<"modelArnEquals">> => string(),
%%   <<"nameContains">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any()),
%%   <<"statusEquals">> => list(any())
%% }
-type list_custom_model_deployments_request() :: #{binary() => any()}.


%% Example:
%% model_import_job_summary() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"importedModelArn">> => string(),
%%   <<"importedModelName">> => string(),
%%   <<"jobArn">> => string(),
%%   <<"jobName">> => string(),
%%   <<"lastModifiedTime">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type model_import_job_summary() :: #{binary() => any()}.


%% Example:
%% guardrail_managed_words_config() :: #{
%%   <<"inputAction">> => list(any()),
%%   <<"inputEnabled">> => [boolean()],
%%   <<"outputAction">> => list(any()),
%%   <<"outputEnabled">> => [boolean()],
%%   <<"type">> => list(any())
%% }
-type guardrail_managed_words_config() :: #{binary() => any()}.


%% Example:
%% guardrail_word() :: #{
%%   <<"inputAction">> => list(any()),
%%   <<"inputEnabled">> => [boolean()],
%%   <<"outputAction">> => list(any()),
%%   <<"outputEnabled">> => [boolean()],
%%   <<"text">> => [string()]
%% }
-type guardrail_word() :: #{binary() => any()}.


%% Example:
%% inference_profile_model() :: #{
%%   <<"modelArn">> => string()
%% }
-type inference_profile_model() :: #{binary() => any()}.


%% Example:
%% inference_profile_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"inferenceProfileArn">> => string(),
%%   <<"inferenceProfileId">> => string(),
%%   <<"inferenceProfileName">> => string(),
%%   <<"models">> => list(inference_profile_model()),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type inference_profile_summary() :: #{binary() => any()}.


%% Example:
%% create_model_invocation_job_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"inputDataConfig">> := list(),
%%   <<"jobName">> := string(),
%%   <<"modelId">> := string(),
%%   <<"outputDataConfig">> := list(),
%%   <<"roleArn">> := string(),
%%   <<"tags">> => list(tag()),
%%   <<"timeoutDurationInHours">> => integer(),
%%   <<"vpcConfig">> => vpc_config()
%% }
-type create_model_invocation_job_request() :: #{binary() => any()}.


%% Example:
%% get_provisioned_model_throughput_response() :: #{
%%   <<"commitmentDuration">> => list(any()),
%%   <<"commitmentExpirationTime">> => non_neg_integer(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"desiredModelArn">> => string(),
%%   <<"desiredModelUnits">> => integer(),
%%   <<"failureMessage">> => string(),
%%   <<"foundationModelArn">> => string(),
%%   <<"lastModifiedTime">> => non_neg_integer(),
%%   <<"modelArn">> => string(),
%%   <<"modelUnits">> => integer(),
%%   <<"provisionedModelArn">> => string(),
%%   <<"provisionedModelName">> => string(),
%%   <<"status">> => list(any())
%% }
-type get_provisioned_model_throughput_response() :: #{binary() => any()}.


%% Example:
%% model_invocation_job_s3_output_data_config() :: #{
%%   <<"s3BucketOwner">> => string(),
%%   <<"s3EncryptionKeyId">> => string(),
%%   <<"s3Uri">> => string()
%% }
-type model_invocation_job_s3_output_data_config() :: #{binary() => any()}.


%% Example:
%% bedrock_evaluator_model() :: #{
%%   <<"modelIdentifier">> => string()
%% }
-type bedrock_evaluator_model() :: #{binary() => any()}.


%% Example:
%% get_use_case_for_model_access_response() :: #{
%%   <<"formData">> => binary()
%% }
-type get_use_case_for_model_access_response() :: #{binary() => any()}.


%% Example:
%% knowledge_base_retrieve_and_generate_configuration() :: #{
%%   <<"generationConfiguration">> => generation_configuration(),
%%   <<"knowledgeBaseId">> => string(),
%%   <<"modelArn">> => string(),
%%   <<"orchestrationConfiguration">> => orchestration_configuration(),
%%   <<"retrievalConfiguration">> => knowledge_base_retrieval_configuration()
%% }
-type knowledge_base_retrieve_and_generate_configuration() :: #{binary() => any()}.

%% Example:
%% get_foundation_model_request() :: #{}
-type get_foundation_model_request() :: #{}.


%% Example:
%% list_custom_model_deployments_response() :: #{
%%   <<"modelDeploymentSummaries">> => list(custom_model_deployment_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_custom_model_deployments_response() :: #{binary() => any()}.

%% Example:
%% deregister_marketplace_model_endpoint_response() :: #{}
-type deregister_marketplace_model_endpoint_response() :: #{}.


%% Example:
%% imported_model_summary() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"instructSupported">> => boolean(),
%%   <<"modelArchitecture">> => string(),
%%   <<"modelArn">> => string(),
%%   <<"modelName">> => string()
%% }
-type imported_model_summary() :: #{binary() => any()}.

%% Example:
%% get_imported_model_request() :: #{}
-type get_imported_model_request() :: #{}.

%% Example:
%% stop_model_customization_job_response() :: #{}
-type stop_model_customization_job_response() :: #{}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% query_transformation_configuration() :: #{
%%   <<"type">> => list(any())
%% }
-type query_transformation_configuration() :: #{binary() => any()}.


%% Example:
%% retrieve_config() :: #{
%%   <<"knowledgeBaseId">> => string(),
%%   <<"knowledgeBaseRetrievalConfiguration">> => knowledge_base_retrieval_configuration()
%% }
-type retrieve_config() :: #{binary() => any()}.

%% Example:
%% get_model_copy_job_request() :: #{}
-type get_model_copy_job_request() :: #{}.


%% Example:
%% guardrail_content_filter_config() :: #{
%%   <<"inputAction">> => list(any()),
%%   <<"inputEnabled">> => [boolean()],
%%   <<"inputModalities">> => list(list(any())()),
%%   <<"inputStrength">> => list(any()),
%%   <<"outputAction">> => list(any()),
%%   <<"outputEnabled">> => [boolean()],
%%   <<"outputModalities">> => list(list(any())()),
%%   <<"outputStrength">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type guardrail_content_filter_config() :: #{binary() => any()}.


%% Example:
%% data_processing_details() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"lastModifiedTime">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type data_processing_details() :: #{binary() => any()}.


%% Example:
%% list_guardrails_response() :: #{
%%   <<"guardrails">> => list(guardrail_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_guardrails_response() :: #{binary() => any()}.


%% Example:
%% custom_metric_definition() :: #{
%%   <<"instructions">> => string(),
%%   <<"name">> => string(),
%%   <<"ratingScale">> => list(rating_scale_item())
%% }
-type custom_metric_definition() :: #{binary() => any()}.


%% Example:
%% field_for_reranking() :: #{
%%   <<"fieldName">> => [string()]
%% }
-type field_for_reranking() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% get_inference_profile_request() :: #{}
-type get_inference_profile_request() :: #{}.


%% Example:
%% knowledge_base_retrieval_configuration() :: #{
%%   <<"vectorSearchConfiguration">> => knowledge_base_vector_search_configuration()
%% }
-type knowledge_base_retrieval_configuration() :: #{binary() => any()}.


%% Example:
%% create_marketplace_model_endpoint_request() :: #{
%%   <<"acceptEula">> => boolean(),
%%   <<"clientRequestToken">> => string(),
%%   <<"endpointConfig">> := list(),
%%   <<"endpointName">> := string(),
%%   <<"modelSourceIdentifier">> := string(),
%%   <<"tags">> => list(tag())
%% }
-type create_marketplace_model_endpoint_request() :: #{binary() => any()}.

%% Example:
%% delete_provisioned_model_throughput_request() :: #{}
-type delete_provisioned_model_throughput_request() :: #{}.


%% Example:
%% evaluation_dataset_metric_config() :: #{
%%   <<"dataset">> => evaluation_dataset(),
%%   <<"metricNames">> => list(string()),
%%   <<"taskType">> => list(any())
%% }
-type evaluation_dataset_metric_config() :: #{binary() => any()}.


%% Example:
%% guardrail_content_filter() :: #{
%%   <<"inputAction">> => list(any()),
%%   <<"inputEnabled">> => [boolean()],
%%   <<"inputModalities">> => list(list(any())()),
%%   <<"inputStrength">> => list(any()),
%%   <<"outputAction">> => list(any()),
%%   <<"outputEnabled">> => [boolean()],
%%   <<"outputModalities">> => list(list(any())()),
%%   <<"outputStrength">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type guardrail_content_filter() :: #{binary() => any()}.


%% Example:
%% guardrail_content_filters_tier() :: #{
%%   <<"tierName">> => list(any())
%% }
-type guardrail_content_filters_tier() :: #{binary() => any()}.


%% Example:
%% create_provisioned_model_throughput_response() :: #{
%%   <<"provisionedModelArn">> => string()
%% }
-type create_provisioned_model_throughput_response() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% custom_model_deployment_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"customModelDeploymentArn">> => string(),
%%   <<"customModelDeploymentName">> => string(),
%%   <<"failureMessage">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"modelArn">> => string(),
%%   <<"status">> => list(any())
%% }
-type custom_model_deployment_summary() :: #{binary() => any()}.


%% Example:
%% s3_config() :: #{
%%   <<"bucketName">> => string(),
%%   <<"keyPrefix">> => string()
%% }
-type s3_config() :: #{binary() => any()}.


%% Example:
%% list_model_invocation_jobs_response() :: #{
%%   <<"invocationJobSummaries">> => list(model_invocation_job_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_model_invocation_jobs_response() :: #{binary() => any()}.


%% Example:
%% get_custom_model_response() :: #{
%%   <<"baseModelArn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"customizationConfig">> => list(),
%%   <<"customizationType">> => list(any()),
%%   <<"failureMessage">> => string(),
%%   <<"hyperParameters">> => map(),
%%   <<"jobArn">> => string(),
%%   <<"jobName">> => string(),
%%   <<"modelArn">> => string(),
%%   <<"modelKmsKeyArn">> => string(),
%%   <<"modelName">> => string(),
%%   <<"modelStatus">> => list(any()),
%%   <<"outputDataConfig">> => output_data_config(),
%%   <<"trainingDataConfig">> => training_data_config(),
%%   <<"trainingMetrics">> => training_metrics(),
%%   <<"validationDataConfig">> => validation_data_config(),
%%   <<"validationMetrics">> => list(validator_metric())
%% }
-type get_custom_model_response() :: #{binary() => any()}.


%% Example:
%% model_copy_job_summary() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"failureMessage">> => string(),
%%   <<"jobArn">> => string(),
%%   <<"sourceAccountId">> => string(),
%%   <<"sourceModelArn">> => string(),
%%   <<"sourceModelName">> => string(),
%%   <<"status">> => list(any()),
%%   <<"targetModelArn">> => string(),
%%   <<"targetModelKmsKeyArn">> => string(),
%%   <<"targetModelName">> => string(),
%%   <<"targetModelTags">> => list(tag())
%% }
-type model_copy_job_summary() :: #{binary() => any()}.


%% Example:
%% guardrail_contextual_grounding_filter() :: #{
%%   <<"action">> => list(any()),
%%   <<"enabled">> => [boolean()],
%%   <<"threshold">> => [float()],
%%   <<"type">> => list(any())
%% }
-type guardrail_contextual_grounding_filter() :: #{binary() => any()}.


%% Example:
%% update_provisioned_model_throughput_request() :: #{
%%   <<"desiredModelId">> => string(),
%%   <<"desiredProvisionedModelName">> => string()
%% }
-type update_provisioned_model_throughput_request() :: #{binary() => any()}.


%% Example:
%% guardrail_managed_words() :: #{
%%   <<"inputAction">> => list(any()),
%%   <<"inputEnabled">> => [boolean()],
%%   <<"outputAction">> => list(any()),
%%   <<"outputEnabled">> => [boolean()],
%%   <<"type">> => list(any())
%% }
-type guardrail_managed_words() :: #{binary() => any()}.

%% Example:
%% delete_custom_model_deployment_response() :: #{}
-type delete_custom_model_deployment_response() :: #{}.


%% Example:
%% guardrail_content_policy_config() :: #{
%%   <<"filtersConfig">> => list(guardrail_content_filter_config()),
%%   <<"tierConfig">> => guardrail_content_filters_tier_config()
%% }
-type guardrail_content_policy_config() :: #{binary() => any()}.


%% Example:
%% evaluation_output_data_config() :: #{
%%   <<"s3Uri">> => string()
%% }
-type evaluation_output_data_config() :: #{binary() => any()}.


%% Example:
%% evaluation_precomputed_inference_source() :: #{
%%   <<"inferenceSourceIdentifier">> => string()
%% }
-type evaluation_precomputed_inference_source() :: #{binary() => any()}.


%% Example:
%% rating_scale_item() :: #{
%%   <<"definition">> => string(),
%%   <<"value">> => list()
%% }
-type rating_scale_item() :: #{binary() => any()}.


%% Example:
%% create_provisioned_model_throughput_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"commitmentDuration">> => list(any()),
%%   <<"modelId">> := string(),
%%   <<"modelUnits">> := integer(),
%%   <<"provisionedModelName">> := string(),
%%   <<"tags">> => list(tag())
%% }
-type create_provisioned_model_throughput_request() :: #{binary() => any()}.

%% Example:
%% delete_prompt_router_response() :: #{}
-type delete_prompt_router_response() :: #{}.


%% Example:
%% delete_foundation_model_agreement_request() :: #{
%%   <<"modelId">> := string()
%% }
-type delete_foundation_model_agreement_request() :: #{binary() => any()}.


%% Example:
%% teacher_model_config() :: #{
%%   <<"maxResponseLengthForInference">> => [integer()],
%%   <<"teacherModelIdentifier">> => string()
%% }
-type teacher_model_config() :: #{binary() => any()}.


%% Example:
%% validation_details() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"lastModifiedTime">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type validation_details() :: #{binary() => any()}.


%% Example:
%% vpc_config() :: #{
%%   <<"securityGroupIds">> => list(string()),
%%   <<"subnetIds">> => list(string())
%% }
-type vpc_config() :: #{binary() => any()}.


%% Example:
%% guardrail_cross_region_details() :: #{
%%   <<"guardrailProfileArn">> => string(),
%%   <<"guardrailProfileId">> => string()
%% }
-type guardrail_cross_region_details() :: #{binary() => any()}.


%% Example:
%% external_sources_retrieve_and_generate_configuration() :: #{
%%   <<"generationConfiguration">> => external_sources_generation_configuration(),
%%   <<"modelArn">> => string(),
%%   <<"sources">> => list(external_source())
%% }
-type external_sources_retrieve_and_generate_configuration() :: #{binary() => any()}.

%% Example:
%% delete_inference_profile_response() :: #{}
-type delete_inference_profile_response() :: #{}.


%% Example:
%% batch_delete_evaluation_job_response() :: #{
%%   <<"errors">> => list(batch_delete_evaluation_job_error()),
%%   <<"evaluationJobs">> => list(batch_delete_evaluation_job_item())
%% }
-type batch_delete_evaluation_job_response() :: #{binary() => any()}.


%% Example:
%% get_prompt_router_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"fallbackModel">> => prompt_router_target_model(),
%%   <<"models">> => list(prompt_router_target_model()),
%%   <<"promptRouterArn">> => string(),
%%   <<"promptRouterName">> => string(),
%%   <<"routingCriteria">> => routing_criteria(),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type get_prompt_router_response() :: #{binary() => any()}.


%% Example:
%% update_marketplace_model_endpoint_response() :: #{
%%   <<"marketplaceModelEndpoint">> => marketplace_model_endpoint()
%% }
-type update_marketplace_model_endpoint_response() :: #{binary() => any()}.


%% Example:
%% guardrail_pii_entity() :: #{
%%   <<"action">> => list(any()),
%%   <<"inputAction">> => list(any()),
%%   <<"inputEnabled">> => [boolean()],
%%   <<"outputAction">> => list(any()),
%%   <<"outputEnabled">> => [boolean()],
%%   <<"type">> => list(any())
%% }
-type guardrail_pii_entity() :: #{binary() => any()}.


%% Example:
%% guardrail_cross_region_config() :: #{
%%   <<"guardrailProfileIdentifier">> => string()
%% }
-type guardrail_cross_region_config() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% list_imported_models_request() :: #{
%%   <<"creationTimeAfter">> => non_neg_integer(),
%%   <<"creationTimeBefore">> => non_neg_integer(),
%%   <<"maxResults">> => integer(),
%%   <<"nameContains">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any())
%% }
-type list_imported_models_request() :: #{binary() => any()}.

%% Example:
%% delete_model_invocation_logging_configuration_response() :: #{}
-type delete_model_invocation_logging_configuration_response() :: #{}.


%% Example:
%% training_metrics() :: #{
%%   <<"trainingLoss">> => float()
%% }
-type training_metrics() :: #{binary() => any()}.

%% Example:
%% put_use_case_for_model_access_response() :: #{}
-type put_use_case_for_model_access_response() :: #{}.


%% Example:
%% update_guardrail_request() :: #{
%%   <<"blockedInputMessaging">> := string(),
%%   <<"blockedOutputsMessaging">> := string(),
%%   <<"contentPolicyConfig">> => guardrail_content_policy_config(),
%%   <<"contextualGroundingPolicyConfig">> => guardrail_contextual_grounding_policy_config(),
%%   <<"crossRegionConfig">> => guardrail_cross_region_config(),
%%   <<"description">> => string(),
%%   <<"kmsKeyId">> => string(),
%%   <<"name">> := string(),
%%   <<"sensitiveInformationPolicyConfig">> => guardrail_sensitive_information_policy_config(),
%%   <<"topicPolicyConfig">> => guardrail_topic_policy_config(),
%%   <<"wordPolicyConfig">> => guardrail_word_policy_config()
%% }
-type update_guardrail_request() :: #{binary() => any()}.

%% Example:
%% get_model_import_job_request() :: #{}
-type get_model_import_job_request() :: #{}.


%% Example:
%% get_model_import_job_response() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"failureMessage">> => string(),
%%   <<"importedModelArn">> => string(),
%%   <<"importedModelKmsKeyArn">> => string(),
%%   <<"importedModelName">> => string(),
%%   <<"jobArn">> => string(),
%%   <<"jobName">> => string(),
%%   <<"lastModifiedTime">> => non_neg_integer(),
%%   <<"modelDataSource">> => list(),
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"vpcConfig">> => vpc_config()
%% }
-type get_model_import_job_response() :: #{binary() => any()}.


%% Example:
%% model_invocation_job_s3_input_data_config() :: #{
%%   <<"s3BucketOwner">> => string(),
%%   <<"s3InputFormat">> => list(any()),
%%   <<"s3Uri">> => string()
%% }
-type model_invocation_job_s3_input_data_config() :: #{binary() => any()}.

%% Example:
%% get_custom_model_request() :: #{}
-type get_custom_model_request() :: #{}.


%% Example:
%% vector_search_reranking_configuration() :: #{
%%   <<"bedrockRerankingConfiguration">> => vector_search_bedrock_reranking_configuration(),
%%   <<"type">> => list(any())
%% }
-type vector_search_reranking_configuration() :: #{binary() => any()}.


%% Example:
%% byte_content_doc() :: #{
%%   <<"contentType">> => string(),
%%   <<"data">> => binary(),
%%   <<"identifier">> => string()
%% }
-type byte_content_doc() :: #{binary() => any()}.


%% Example:
%% legal_term() :: #{
%%   <<"url">> => [string()]
%% }
-type legal_term() :: #{binary() => any()}.


%% Example:
%% list_imported_models_response() :: #{
%%   <<"modelSummaries">> => list(imported_model_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_imported_models_response() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% external_sources_generation_configuration() :: #{
%%   <<"additionalModelRequestFields">> => map(),
%%   <<"guardrailConfiguration">> => guardrail_configuration(),
%%   <<"kbInferenceConfig">> => kb_inference_config(),
%%   <<"promptTemplate">> => prompt_template()
%% }
-type external_sources_generation_configuration() :: #{binary() => any()}.

%% Example:
%% get_model_customization_job_request() :: #{}
-type get_model_customization_job_request() :: #{}.


%% Example:
%% human_evaluation_custom_metric() :: #{
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"ratingMethod">> => string()
%% }
-type human_evaluation_custom_metric() :: #{binary() => any()}.


%% Example:
%% create_prompt_router_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"description">> => string(),
%%   <<"fallbackModel">> := prompt_router_target_model(),
%%   <<"models">> := list(prompt_router_target_model()),
%%   <<"promptRouterName">> := string(),
%%   <<"routingCriteria">> := routing_criteria(),
%%   <<"tags">> => list(tag())
%% }
-type create_prompt_router_request() :: #{binary() => any()}.


%% Example:
%% knowledge_base_vector_search_configuration() :: #{
%%   <<"filter">> => list(),
%%   <<"implicitFilterConfiguration">> => implicit_filter_configuration(),
%%   <<"numberOfResults">> => [integer()],
%%   <<"overrideSearchType">> => list(any()),
%%   <<"rerankingConfiguration">> => vector_search_reranking_configuration()
%% }
-type knowledge_base_vector_search_configuration() :: #{binary() => any()}.

%% Example:
%% get_model_invocation_logging_configuration_request() :: #{}
-type get_model_invocation_logging_configuration_request() :: #{}.


%% Example:
%% filter_attribute() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => any()
%% }
-type filter_attribute() :: #{binary() => any()}.

%% Example:
%% delete_marketplace_model_endpoint_response() :: #{}
-type delete_marketplace_model_endpoint_response() :: #{}.

%% Example:
%% delete_imported_model_response() :: #{}
-type delete_imported_model_response() :: #{}.


%% Example:
%% list_foundation_models_request() :: #{
%%   <<"byCustomizationType">> => list(any()),
%%   <<"byInferenceType">> => list(any()),
%%   <<"byOutputModality">> => list(any()),
%%   <<"byProvider">> => string()
%% }
-type list_foundation_models_request() :: #{binary() => any()}.


%% Example:
%% guardrail_word_config() :: #{
%%   <<"inputAction">> => list(any()),
%%   <<"inputEnabled">> => [boolean()],
%%   <<"outputAction">> => list(any()),
%%   <<"outputEnabled">> => [boolean()],
%%   <<"text">> => [string()]
%% }
-type guardrail_word_config() :: #{binary() => any()}.


%% Example:
%% guardrail_sensitive_information_policy() :: #{
%%   <<"piiEntities">> => list(guardrail_pii_entity()),
%%   <<"regexes">> => list(guardrail_regex())
%% }
-type guardrail_sensitive_information_policy() :: #{binary() => any()}.


%% Example:
%% implicit_filter_configuration() :: #{
%%   <<"metadataAttributes">> => list(metadata_attribute_schema()),
%%   <<"modelArn">> => string()
%% }
-type implicit_filter_configuration() :: #{binary() => any()}.


%% Example:
%% foundation_model_lifecycle() :: #{
%%   <<"status">> => list(any())
%% }
-type foundation_model_lifecycle() :: #{binary() => any()}.


%% Example:
%% create_marketplace_model_endpoint_response() :: #{
%%   <<"marketplaceModelEndpoint">> => marketplace_model_endpoint()
%% }
-type create_marketplace_model_endpoint_response() :: #{binary() => any()}.


%% Example:
%% guardrail_contextual_grounding_policy_config() :: #{
%%   <<"filtersConfig">> => list(guardrail_contextual_grounding_filter_config())
%% }
-type guardrail_contextual_grounding_policy_config() :: #{binary() => any()}.


%% Example:
%% put_use_case_for_model_access_request() :: #{
%%   <<"formData">> := binary()
%% }
-type put_use_case_for_model_access_request() :: #{binary() => any()}.


%% Example:
%% evaluation_rag_config_summary() :: #{
%%   <<"bedrockKnowledgeBaseIdentifiers">> => list(string()),
%%   <<"precomputedRagSourceIdentifiers">> => list(string())
%% }
-type evaluation_rag_config_summary() :: #{binary() => any()}.

%% Example:
%% delete_imported_model_request() :: #{}
-type delete_imported_model_request() :: #{}.


%% Example:
%% distillation_config() :: #{
%%   <<"teacherModelConfig">> => teacher_model_config()
%% }
-type distillation_config() :: #{binary() => any()}.


%% Example:
%% vector_search_bedrock_reranking_configuration() :: #{
%%   <<"metadataConfiguration">> => metadata_configuration_for_reranking(),
%%   <<"modelConfiguration">> => vector_search_bedrock_reranking_model_configuration(),
%%   <<"numberOfRerankedResults">> => [integer()]
%% }
-type vector_search_bedrock_reranking_configuration() :: #{binary() => any()}.


%% Example:
%% list_foundation_model_agreement_offers_request() :: #{
%%   <<"offerType">> => list(any())
%% }
-type list_foundation_model_agreement_offers_request() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_model_copy_jobs_response() :: #{
%%   <<"modelCopyJobSummaries">> => list(model_copy_job_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_model_copy_jobs_response() :: #{binary() => any()}.

%% Example:
%% delete_guardrail_response() :: #{}
-type delete_guardrail_response() :: #{}.


%% Example:
%% validation_data_config() :: #{
%%   <<"validators">> => list(validator())
%% }
-type validation_data_config() :: #{binary() => any()}.


%% Example:
%% batch_delete_evaluation_job_item() :: #{
%%   <<"jobIdentifier">> => string(),
%%   <<"jobStatus">> => list(any())
%% }
-type batch_delete_evaluation_job_item() :: #{binary() => any()}.

%% Example:
%% stop_model_invocation_job_response() :: #{}
-type stop_model_invocation_job_response() :: #{}.


%% Example:
%% list_prompt_routers_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"type">> => list(any())
%% }
-type list_prompt_routers_request() :: #{binary() => any()}.

%% Example:
%% update_provisioned_model_throughput_response() :: #{}
-type update_provisioned_model_throughput_response() :: #{}.


%% Example:
%% guardrail_regex_config() :: #{
%%   <<"action">> => list(any()),
%%   <<"description">> => [string()],
%%   <<"inputAction">> => list(any()),
%%   <<"inputEnabled">> => [boolean()],
%%   <<"name">> => [string()],
%%   <<"outputAction">> => list(any()),
%%   <<"outputEnabled">> => [boolean()],
%%   <<"pattern">> => [string()]
%% }
-type guardrail_regex_config() :: #{binary() => any()}.


%% Example:
%% put_model_invocation_logging_configuration_request() :: #{
%%   <<"loggingConfig">> := logging_config()
%% }
-type put_model_invocation_logging_configuration_request() :: #{binary() => any()}.


%% Example:
%% custom_metric_evaluator_model_config() :: #{
%%   <<"bedrockEvaluatorModels">> => list(custom_metric_bedrock_evaluator_model())
%% }
-type custom_metric_evaluator_model_config() :: #{binary() => any()}.


%% Example:
%% create_foundation_model_agreement_request() :: #{
%%   <<"modelId">> := string(),
%%   <<"offerToken">> := string()
%% }
-type create_foundation_model_agreement_request() :: #{binary() => any()}.


%% Example:
%% list_model_customization_jobs_response() :: #{
%%   <<"modelCustomizationJobSummaries">> => list(model_customization_job_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_model_customization_jobs_response() :: #{binary() => any()}.


%% Example:
%% list_foundation_models_response() :: #{
%%   <<"modelSummaries">> => list(foundation_model_summary())
%% }
-type list_foundation_models_response() :: #{binary() => any()}.


%% Example:
%% get_custom_model_deployment_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"customModelDeploymentArn">> => string(),
%%   <<"description">> => string(),
%%   <<"failureMessage">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"modelArn">> => string(),
%%   <<"modelDeploymentName">> => string(),
%%   <<"status">> => list(any())
%% }
-type get_custom_model_deployment_response() :: #{binary() => any()}.


%% Example:
%% get_foundation_model_availability_response() :: #{
%%   <<"agreementAvailability">> => agreement_availability(),
%%   <<"authorizationStatus">> => list(any()),
%%   <<"entitlementAvailability">> => list(any()),
%%   <<"modelId">> => string(),
%%   <<"regionAvailability">> => list(any())
%% }
-type get_foundation_model_availability_response() :: #{binary() => any()}.


%% Example:
%% orchestration_configuration() :: #{
%%   <<"queryTransformationConfiguration">> => query_transformation_configuration()
%% }
-type orchestration_configuration() :: #{binary() => any()}.


%% Example:
%% prompt_template() :: #{
%%   <<"textPromptTemplate">> => string()
%% }
-type prompt_template() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% get_imported_model_response() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"customModelUnits">> => custom_model_units(),
%%   <<"instructSupported">> => boolean(),
%%   <<"jobArn">> => string(),
%%   <<"jobName">> => string(),
%%   <<"modelArchitecture">> => [string()],
%%   <<"modelArn">> => string(),
%%   <<"modelDataSource">> => list(),
%%   <<"modelKmsKeyArn">> => string(),
%%   <<"modelName">> => string()
%% }
-type get_imported_model_response() :: #{binary() => any()}.

%% Example:
%% get_model_invocation_job_request() :: #{}
-type get_model_invocation_job_request() :: #{}.


%% Example:
%% create_model_customization_job_request() :: #{
%%   <<"baseModelIdentifier">> := string(),
%%   <<"clientRequestToken">> => string(),
%%   <<"customModelKmsKeyId">> => string(),
%%   <<"customModelName">> := string(),
%%   <<"customModelTags">> => list(tag()),
%%   <<"customizationConfig">> => list(),
%%   <<"customizationType">> => list(any()),
%%   <<"hyperParameters">> => map(),
%%   <<"jobName">> := string(),
%%   <<"jobTags">> => list(tag()),
%%   <<"outputDataConfig">> := output_data_config(),
%%   <<"roleArn">> := string(),
%%   <<"trainingDataConfig">> := training_data_config(),
%%   <<"validationDataConfig">> => validation_data_config(),
%%   <<"vpcConfig">> => vpc_config()
%% }
-type create_model_customization_job_request() :: #{binary() => any()}.


%% Example:
%% generation_configuration() :: #{
%%   <<"additionalModelRequestFields">> => map(),
%%   <<"guardrailConfiguration">> => guardrail_configuration(),
%%   <<"kbInferenceConfig">> => kb_inference_config(),
%%   <<"promptTemplate">> => prompt_template()
%% }
-type generation_configuration() :: #{binary() => any()}.

%% Example:
%% get_use_case_for_model_access_request() :: #{}
-type get_use_case_for_model_access_request() :: #{}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% create_prompt_router_response() :: #{
%%   <<"promptRouterArn">> => string()
%% }
-type create_prompt_router_response() :: #{binary() => any()}.


%% Example:
%% create_evaluation_job_request() :: #{
%%   <<"applicationType">> => list(any()),
%%   <<"clientRequestToken">> => string(),
%%   <<"customerEncryptionKeyId">> => string(),
%%   <<"evaluationConfig">> := list(),
%%   <<"inferenceConfig">> := list(),
%%   <<"jobDescription">> => string(),
%%   <<"jobName">> := string(),
%%   <<"jobTags">> => list(tag()),
%%   <<"outputDataConfig">> := evaluation_output_data_config(),
%%   <<"roleArn">> := string()
%% }
-type create_evaluation_job_request() :: #{binary() => any()}.


%% Example:
%% get_marketplace_model_endpoint_response() :: #{
%%   <<"marketplaceModelEndpoint">> => marketplace_model_endpoint()
%% }
-type get_marketplace_model_endpoint_response() :: #{binary() => any()}.


%% Example:
%% create_custom_model_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"modelKmsKeyArn">> => string(),
%%   <<"modelName">> := string(),
%%   <<"modelSourceConfig">> := list(),
%%   <<"modelTags">> => list(tag()),
%%   <<"roleArn">> => string()
%% }
-type create_custom_model_request() :: #{binary() => any()}.


%% Example:
%% training_details() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"lastModifiedTime">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type training_details() :: #{binary() => any()}.


%% Example:
%% guardrail_word_policy_config() :: #{
%%   <<"managedWordListsConfig">> => list(guardrail_managed_words_config()),
%%   <<"wordsConfig">> => list(guardrail_word_config())
%% }
-type guardrail_word_policy_config() :: #{binary() => any()}.


%% Example:
%% validator_metric() :: #{
%%   <<"validationLoss">> => float()
%% }
-type validator_metric() :: #{binary() => any()}.


%% Example:
%% list_evaluation_jobs_response() :: #{
%%   <<"jobSummaries">> => list(evaluation_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_evaluation_jobs_response() :: #{binary() => any()}.


%% Example:
%% guardrail_sensitive_information_policy_config() :: #{
%%   <<"piiEntitiesConfig">> => list(guardrail_pii_entity_config()),
%%   <<"regexesConfig">> => list(guardrail_regex_config())
%% }
-type guardrail_sensitive_information_policy_config() :: #{binary() => any()}.

%% Example:
%% stop_model_customization_job_request() :: #{}
-type stop_model_customization_job_request() :: #{}.


%% Example:
%% metadata_configuration_for_reranking() :: #{
%%   <<"selectionMode">> => list(any()),
%%   <<"selectiveModeConfiguration">> => list()
%% }
-type metadata_configuration_for_reranking() :: #{binary() => any()}.


%% Example:
%% create_guardrail_version_response() :: #{
%%   <<"guardrailId">> => string(),
%%   <<"version">> => string()
%% }
-type create_guardrail_version_response() :: #{binary() => any()}.

%% Example:
%% delete_custom_model_request() :: #{}
-type delete_custom_model_request() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"resourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.


%% Example:
%% create_model_copy_job_response() :: #{
%%   <<"jobArn">> => string()
%% }
-type create_model_copy_job_response() :: #{binary() => any()}.


%% Example:
%% guardrail_pii_entity_config() :: #{
%%   <<"action">> => list(any()),
%%   <<"inputAction">> => list(any()),
%%   <<"inputEnabled">> => [boolean()],
%%   <<"outputAction">> => list(any()),
%%   <<"outputEnabled">> => [boolean()],
%%   <<"type">> => list(any())
%% }
-type guardrail_pii_entity_config() :: #{binary() => any()}.


%% Example:
%% evaluation_dataset() :: #{
%%   <<"datasetLocation">> => list(),
%%   <<"name">> => string()
%% }
-type evaluation_dataset() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% custom_model_units() :: #{
%%   <<"customModelUnitsPerModelCopy">> => [integer()],
%%   <<"customModelUnitsVersion">> => string()
%% }
-type custom_model_units() :: #{binary() => any()}.


%% Example:
%% get_model_customization_job_response() :: #{
%%   <<"baseModelArn">> => string(),
%%   <<"clientRequestToken">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"customizationConfig">> => list(),
%%   <<"customizationType">> => list(any()),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"failureMessage">> => string(),
%%   <<"hyperParameters">> => map(),
%%   <<"jobArn">> => string(),
%%   <<"jobName">> => string(),
%%   <<"lastModifiedTime">> => non_neg_integer(),
%%   <<"outputDataConfig">> => output_data_config(),
%%   <<"outputModelArn">> => string(),
%%   <<"outputModelKmsKeyArn">> => string(),
%%   <<"outputModelName">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusDetails">> => status_details(),
%%   <<"trainingDataConfig">> => training_data_config(),
%%   <<"trainingMetrics">> => training_metrics(),
%%   <<"validationDataConfig">> => validation_data_config(),
%%   <<"validationMetrics">> => list(validator_metric()),
%%   <<"vpcConfig">> => vpc_config()
%% }
-type get_model_customization_job_response() :: #{binary() => any()}.


%% Example:
%% get_model_copy_job_response() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"failureMessage">> => string(),
%%   <<"jobArn">> => string(),
%%   <<"sourceAccountId">> => string(),
%%   <<"sourceModelArn">> => string(),
%%   <<"sourceModelName">> => string(),
%%   <<"status">> => list(any()),
%%   <<"targetModelArn">> => string(),
%%   <<"targetModelKmsKeyArn">> => string(),
%%   <<"targetModelName">> => string(),
%%   <<"targetModelTags">> => list(tag())
%% }
-type get_model_copy_job_response() :: #{binary() => any()}.


%% Example:
%% update_marketplace_model_endpoint_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"endpointConfig">> := list()
%% }
-type update_marketplace_model_endpoint_request() :: #{binary() => any()}.


%% Example:
%% list_custom_models_response() :: #{
%%   <<"modelSummaries">> => list(custom_model_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_custom_models_response() :: #{binary() => any()}.


%% Example:
%% list_prompt_routers_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"promptRouterSummaries">> => list(prompt_router_summary())
%% }
-type list_prompt_routers_response() :: #{binary() => any()}.


%% Example:
%% vector_search_bedrock_reranking_model_configuration() :: #{
%%   <<"additionalModelRequestFields">> => map(),
%%   <<"modelArn">> => string()
%% }
-type vector_search_bedrock_reranking_model_configuration() :: #{binary() => any()}.


%% Example:
%% guardrail_topic_policy() :: #{
%%   <<"tier">> => guardrail_topics_tier(),
%%   <<"topics">> => list(guardrail_topic())
%% }
-type guardrail_topic_policy() :: #{binary() => any()}.


%% Example:
%% output_data_config() :: #{
%%   <<"s3Uri">> => string()
%% }
-type output_data_config() :: #{binary() => any()}.


%% Example:
%% get_model_invocation_logging_configuration_response() :: #{
%%   <<"loggingConfig">> => logging_config()
%% }
-type get_model_invocation_logging_configuration_response() :: #{binary() => any()}.


%% Example:
%% create_model_import_job_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"importedModelKmsKeyId">> => string(),
%%   <<"importedModelName">> := string(),
%%   <<"importedModelTags">> => list(tag()),
%%   <<"jobName">> := string(),
%%   <<"jobTags">> => list(tag()),
%%   <<"modelDataSource">> := list(),
%%   <<"roleArn">> := string(),
%%   <<"vpcConfig">> => vpc_config()
%% }
-type create_model_import_job_request() :: #{binary() => any()}.


%% Example:
%% create_guardrail_version_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"description">> => string()
%% }
-type create_guardrail_version_request() :: #{binary() => any()}.


%% Example:
%% list_model_copy_jobs_request() :: #{
%%   <<"creationTimeAfter">> => non_neg_integer(),
%%   <<"creationTimeBefore">> => non_neg_integer(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any()),
%%   <<"sourceAccountEquals">> => string(),
%%   <<"sourceModelArnEquals">> => string(),
%%   <<"statusEquals">> => list(any()),
%%   <<"targetModelNameContains">> => string()
%% }
-type list_model_copy_jobs_request() :: #{binary() => any()}.


%% Example:
%% prompt_router_target_model() :: #{
%%   <<"modelArn">> => string()
%% }
-type prompt_router_target_model() :: #{binary() => any()}.


%% Example:
%% evaluation_precomputed_retrieve_source_config() :: #{
%%   <<"ragSourceIdentifier">> => string()
%% }
-type evaluation_precomputed_retrieve_source_config() :: #{binary() => any()}.


%% Example:
%% list_guardrails_request() :: #{
%%   <<"guardrailIdentifier">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_guardrails_request() :: #{binary() => any()}.


%% Example:
%% term_details() :: #{
%%   <<"legalTerm">> => legal_term(),
%%   <<"supportTerm">> => support_term(),
%%   <<"usageBasedPricingTerm">> => pricing_term(),
%%   <<"validityTerm">> => validity_term()
%% }
-type term_details() :: #{binary() => any()}.


%% Example:
%% validity_term() :: #{
%%   <<"agreementDuration">> => [string()]
%% }
-type validity_term() :: #{binary() => any()}.


%% Example:
%% dimensional_price_rate() :: #{
%%   <<"description">> => [string()],
%%   <<"dimension">> => [string()],
%%   <<"price">> => [string()],
%%   <<"unit">> => [string()]
%% }
-type dimensional_price_rate() :: #{binary() => any()}.

%% Example:
%% put_model_invocation_logging_configuration_response() :: #{}
-type put_model_invocation_logging_configuration_response() :: #{}.


%% Example:
%% guardrail_configuration() :: #{
%%   <<"guardrailId">> => [string()],
%%   <<"guardrailVersion">> => [string()]
%% }
-type guardrail_configuration() :: #{binary() => any()}.


%% Example:
%% create_foundation_model_agreement_response() :: #{
%%   <<"modelId">> => string()
%% }
-type create_foundation_model_agreement_response() :: #{binary() => any()}.


%% Example:
%% validator() :: #{
%%   <<"s3Uri">> => string()
%% }
-type validator() :: #{binary() => any()}.


%% Example:
%% register_marketplace_model_endpoint_request() :: #{
%%   <<"modelSourceIdentifier">> := string()
%% }
-type register_marketplace_model_endpoint_request() :: #{binary() => any()}.


%% Example:
%% guardrail_regex() :: #{
%%   <<"action">> => list(any()),
%%   <<"description">> => [string()],
%%   <<"inputAction">> => list(any()),
%%   <<"inputEnabled">> => [boolean()],
%%   <<"name">> => [string()],
%%   <<"outputAction">> => list(any()),
%%   <<"outputEnabled">> => [boolean()],
%%   <<"pattern">> => [string()]
%% }
-type guardrail_regex() :: #{binary() => any()}.


%% Example:
%% batch_delete_evaluation_job_request() :: #{
%%   <<"jobIdentifiers">> := list(string())
%% }
-type batch_delete_evaluation_job_request() :: #{binary() => any()}.


%% Example:
%% create_evaluation_job_response() :: #{
%%   <<"jobArn">> => string()
%% }
-type create_evaluation_job_response() :: #{binary() => any()}.


%% Example:
%% update_guardrail_response() :: #{
%%   <<"guardrailArn">> => string(),
%%   <<"guardrailId">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string()
%% }
-type update_guardrail_response() :: #{binary() => any()}.


%% Example:
%% model_invocation_job_summary() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"inputDataConfig">> => list(),
%%   <<"jobArn">> => string(),
%%   <<"jobExpirationTime">> => non_neg_integer(),
%%   <<"jobName">> => string(),
%%   <<"lastModifiedTime">> => non_neg_integer(),
%%   <<"message">> => string(),
%%   <<"modelId">> => string(),
%%   <<"outputDataConfig">> => list(),
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"submitTime">> => non_neg_integer(),
%%   <<"timeoutDurationInHours">> => integer(),
%%   <<"vpcConfig">> => vpc_config()
%% }
-type model_invocation_job_summary() :: #{binary() => any()}.

%% Example:
%% deregister_marketplace_model_endpoint_request() :: #{}
-type deregister_marketplace_model_endpoint_request() :: #{}.


%% Example:
%% request_metadata_base_filters() :: #{
%%   <<"equals">> => map(),
%%   <<"notEquals">> => map()
%% }
-type request_metadata_base_filters() :: #{binary() => any()}.


%% Example:
%% register_marketplace_model_endpoint_response() :: #{
%%   <<"marketplaceModelEndpoint">> => marketplace_model_endpoint()
%% }
-type register_marketplace_model_endpoint_response() :: #{binary() => any()}.


%% Example:
%% kb_inference_config() :: #{
%%   <<"textInferenceConfig">> => text_inference_config()
%% }
-type kb_inference_config() :: #{binary() => any()}.


%% Example:
%% evaluation_summary() :: #{
%%   <<"applicationType">> => list(any()),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"customMetricsEvaluatorModelIdentifiers">> => list(string()),
%%   <<"evaluationTaskTypes">> => list(list(any())()),
%%   <<"evaluatorModelIdentifiers">> => list(string()),
%%   <<"inferenceConfigSummary">> => evaluation_inference_config_summary(),
%%   <<"jobArn">> => string(),
%%   <<"jobName">> => string(),
%%   <<"jobType">> => list(any()),
%%   <<"modelIdentifiers">> => list(string()),
%%   <<"ragIdentifiers">> => list(string()),
%%   <<"status">> => list(any())
%% }
-type evaluation_summary() :: #{binary() => any()}.


%% Example:
%% create_custom_model_deployment_response() :: #{
%%   <<"customModelDeploymentArn">> => string()
%% }
-type create_custom_model_deployment_response() :: #{binary() => any()}.


%% Example:
%% training_data_config() :: #{
%%   <<"invocationLogsConfig">> => invocation_logs_config(),
%%   <<"s3Uri">> => string()
%% }
-type training_data_config() :: #{binary() => any()}.


%% Example:
%% evaluation_bedrock_model() :: #{
%%   <<"inferenceParams">> => string(),
%%   <<"modelIdentifier">> => string(),
%%   <<"performanceConfig">> => performance_configuration()
%% }
-type evaluation_bedrock_model() :: #{binary() => any()}.

%% Example:
%% delete_model_invocation_logging_configuration_request() :: #{}
-type delete_model_invocation_logging_configuration_request() :: #{}.


%% Example:
%% evaluation_precomputed_retrieve_and_generate_source_config() :: #{
%%   <<"ragSourceIdentifier">> => string()
%% }
-type evaluation_precomputed_retrieve_and_generate_source_config() :: #{binary() => any()}.


%% Example:
%% custom_model_summary() :: #{
%%   <<"baseModelArn">> => string(),
%%   <<"baseModelName">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"customizationType">> => list(any()),
%%   <<"modelArn">> => string(),
%%   <<"modelName">> => string(),
%%   <<"modelStatus">> => list(any()),
%%   <<"ownerAccountId">> => string()
%% }
-type custom_model_summary() :: #{binary() => any()}.


%% Example:
%% get_guardrail_request() :: #{
%%   <<"guardrailVersion">> => string()
%% }
-type get_guardrail_request() :: #{binary() => any()}.


%% Example:
%% get_foundation_model_response() :: #{
%%   <<"modelDetails">> => foundation_model_details()
%% }
-type get_foundation_model_response() :: #{binary() => any()}.


%% Example:
%% too_many_tags_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceName">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.


%% Example:
%% guardrail_topic() :: #{
%%   <<"definition">> => string(),
%%   <<"examples">> => list(string()),
%%   <<"inputAction">> => list(any()),
%%   <<"inputEnabled">> => [boolean()],
%%   <<"name">> => string(),
%%   <<"outputAction">> => list(any()),
%%   <<"outputEnabled">> => [boolean()],
%%   <<"type">> => list(any())
%% }
-type guardrail_topic() :: #{binary() => any()}.


%% Example:
%% guardrail_contextual_grounding_policy() :: #{
%%   <<"filters">> => list(guardrail_contextual_grounding_filter())
%% }
-type guardrail_contextual_grounding_policy() :: #{binary() => any()}.


%% Example:
%% human_evaluation_config() :: #{
%%   <<"customMetrics">> => list(human_evaluation_custom_metric()),
%%   <<"datasetMetricConfigs">> => list(evaluation_dataset_metric_config()),
%%   <<"humanWorkflowConfig">> => human_workflow_config()
%% }
-type human_evaluation_config() :: #{binary() => any()}.


%% Example:
%% performance_configuration() :: #{
%%   <<"latency">> => list(any())
%% }
-type performance_configuration() :: #{binary() => any()}.

%% Example:
%% delete_marketplace_model_endpoint_request() :: #{}
-type delete_marketplace_model_endpoint_request() :: #{}.

%% Example:
%% delete_foundation_model_agreement_response() :: #{}
-type delete_foundation_model_agreement_response() :: #{}.


%% Example:
%% get_model_invocation_job_response() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"inputDataConfig">> => list(),
%%   <<"jobArn">> => string(),
%%   <<"jobExpirationTime">> => non_neg_integer(),
%%   <<"jobName">> => string(),
%%   <<"lastModifiedTime">> => non_neg_integer(),
%%   <<"message">> => string(),
%%   <<"modelId">> => string(),
%%   <<"outputDataConfig">> => list(),
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"submitTime">> => non_neg_integer(),
%%   <<"timeoutDurationInHours">> => integer(),
%%   <<"vpcConfig">> => vpc_config()
%% }
-type get_model_invocation_job_response() :: #{binary() => any()}.


%% Example:
%% list_model_import_jobs_response() :: #{
%%   <<"modelImportJobSummaries">> => list(model_import_job_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_model_import_jobs_response() :: #{binary() => any()}.


%% Example:
%% s3_data_source() :: #{
%%   <<"s3Uri">> => string()
%% }
-type s3_data_source() :: #{binary() => any()}.

-type batch_delete_evaluation_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_custom_model_errors() ::
    too_many_tags_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_custom_model_deployment_errors() ::
    too_many_tags_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type create_evaluation_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_foundation_model_agreement_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_guardrail_errors() ::
    too_many_tags_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_guardrail_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_inference_profile_errors() ::
    too_many_tags_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_marketplace_model_endpoint_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_model_copy_job_errors() ::
    too_many_tags_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_model_customization_job_errors() ::
    too_many_tags_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_model_import_job_errors() ::
    too_many_tags_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_model_invocation_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_prompt_router_errors() ::
    too_many_tags_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_provisioned_model_throughput_errors() ::
    too_many_tags_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type delete_custom_model_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_custom_model_deployment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_foundation_model_agreement_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_guardrail_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_imported_model_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_inference_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_marketplace_model_endpoint_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_model_invocation_logging_configuration_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type delete_prompt_router_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_provisioned_model_throughput_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type deregister_marketplace_model_endpoint_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type get_custom_model_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_custom_model_deployment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_evaluation_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_foundation_model_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_foundation_model_availability_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_guardrail_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_imported_model_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_inference_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_marketplace_model_endpoint_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_model_copy_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_model_customization_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_model_import_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_model_invocation_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_model_invocation_logging_configuration_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_prompt_router_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_provisioned_model_throughput_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_use_case_for_model_access_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_custom_model_deployments_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_custom_models_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_evaluation_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_foundation_model_agreement_offers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_foundation_models_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_guardrails_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_imported_models_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_inference_profiles_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_marketplace_model_endpoints_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_model_copy_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_model_customization_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_model_import_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_model_invocation_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_prompt_routers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_provisioned_model_throughputs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_model_invocation_logging_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type put_use_case_for_model_access_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type register_marketplace_model_endpoint_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type stop_evaluation_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_model_customization_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_model_invocation_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    too_many_tags_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_guardrail_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_marketplace_model_endpoint_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_provisioned_model_throughput_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes a batch of evaluation jobs.
%%
%% An evaluation job can only be deleted if it has following status
%% `FAILED', `COMPLETED', and `STOPPED'. You can request up to 25
%% model evaluation jobs be deleted in a single request.
-spec batch_delete_evaluation_job(aws_client:aws_client(), batch_delete_evaluation_job_request()) ->
    {ok, batch_delete_evaluation_job_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_evaluation_job_errors(), tuple()}.
batch_delete_evaluation_job(Client, Input) ->
    batch_delete_evaluation_job(Client, Input, []).

-spec batch_delete_evaluation_job(aws_client:aws_client(), batch_delete_evaluation_job_request(), proplists:proplist()) ->
    {ok, batch_delete_evaluation_job_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_evaluation_job_errors(), tuple()}.
batch_delete_evaluation_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/evaluation-jobs/batch-delete"],
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

%% @doc Creates a new custom model in Amazon Bedrock.
%%
%% After the model is active, you can use it for inference.
%%
%% To use the model for inference, you must purchase Provisioned Throughput
%% for it. You can't use On-demand inference with these custom models.
%% For more information about Provisioned Throughput, see Provisioned
%% Throughput:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html.
%%
%% The model appears in `ListCustomModels' with a `customizationType'
%% of `imported'. To track the status of the new model, you use the
%% `GetCustomModel' API operation. The model can be in the following
%% states:
%%
%% `Creating' - Initial state during validation and registration
%%
%% `Active' - Model is ready for use in inference
%%
%% `Failed' - Creation process encountered an error
%%
%% Related APIs
%%
%% GetCustomModel:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GetCustomModel.html
%%
%% ListCustomModels:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_ListCustomModels.html
%%
%% DeleteCustomModel:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_DeleteCustomModel.html
-spec create_custom_model(aws_client:aws_client(), create_custom_model_request()) ->
    {ok, create_custom_model_response(), tuple()} |
    {error, any()} |
    {error, create_custom_model_errors(), tuple()}.
create_custom_model(Client, Input) ->
    create_custom_model(Client, Input, []).

-spec create_custom_model(aws_client:aws_client(), create_custom_model_request(), proplists:proplist()) ->
    {ok, create_custom_model_response(), tuple()} |
    {error, any()} |
    {error, create_custom_model_errors(), tuple()}.
create_custom_model(Client, Input0, Options0) ->
    Method = post,
    Path = ["/custom-models/create-custom-model"],
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

%% @doc Deploys a custom model for on-demand inference in Amazon Bedrock.
%%
%% After you deploy your custom model, you use the deployment's Amazon
%% Resource Name (ARN) as the `modelId' parameter when you submit prompts
%% and generate responses with model inference.
%%
%% For more information about setting up on-demand inference for custom
%% models, see Set up inference for a custom model:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html.
%%
%% The following actions are related to the `CreateCustomModelDeployment'
%% operation:
%%
%% GetCustomModelDeployment:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GetCustomModelDeployment.html
%%
%% ListCustomModelDeployments:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_ListCustomModelDeployments.html
%%
%% DeleteCustomModelDeployment:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_DeleteCustomModelDeployment.html
-spec create_custom_model_deployment(aws_client:aws_client(), create_custom_model_deployment_request()) ->
    {ok, create_custom_model_deployment_response(), tuple()} |
    {error, any()} |
    {error, create_custom_model_deployment_errors(), tuple()}.
create_custom_model_deployment(Client, Input) ->
    create_custom_model_deployment(Client, Input, []).

-spec create_custom_model_deployment(aws_client:aws_client(), create_custom_model_deployment_request(), proplists:proplist()) ->
    {ok, create_custom_model_deployment_response(), tuple()} |
    {error, any()} |
    {error, create_custom_model_deployment_errors(), tuple()}.
create_custom_model_deployment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/model-customization/custom-model-deployments"],
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

%% @doc Creates an evaluation job.
-spec create_evaluation_job(aws_client:aws_client(), create_evaluation_job_request()) ->
    {ok, create_evaluation_job_response(), tuple()} |
    {error, any()} |
    {error, create_evaluation_job_errors(), tuple()}.
create_evaluation_job(Client, Input) ->
    create_evaluation_job(Client, Input, []).

-spec create_evaluation_job(aws_client:aws_client(), create_evaluation_job_request(), proplists:proplist()) ->
    {ok, create_evaluation_job_response(), tuple()} |
    {error, any()} |
    {error, create_evaluation_job_errors(), tuple()}.
create_evaluation_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/evaluation-jobs"],
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

%% @doc Request a model access agreement for the specified model.
-spec create_foundation_model_agreement(aws_client:aws_client(), create_foundation_model_agreement_request()) ->
    {ok, create_foundation_model_agreement_response(), tuple()} |
    {error, any()} |
    {error, create_foundation_model_agreement_errors(), tuple()}.
create_foundation_model_agreement(Client, Input) ->
    create_foundation_model_agreement(Client, Input, []).

-spec create_foundation_model_agreement(aws_client:aws_client(), create_foundation_model_agreement_request(), proplists:proplist()) ->
    {ok, create_foundation_model_agreement_response(), tuple()} |
    {error, any()} |
    {error, create_foundation_model_agreement_errors(), tuple()}.
create_foundation_model_agreement(Client, Input0, Options0) ->
    Method = post,
    Path = ["/create-foundation-model-agreement"],
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

%% @doc Creates a guardrail to block topics and to implement safeguards for
%% your generative AI applications.
%%
%% You can configure the following policies in a guardrail to avoid
%% undesirable and harmful content, filter out denied topics and words, and
%% remove sensitive information for privacy protection.
%%
%% Content filters - Adjust filter strengths to block input prompts or model
%% responses containing harmful content.
%%
%% Denied topics - Define a set of topics that are undesirable in the context
%% of your application. These topics will be blocked if detected in user
%% queries or model responses.
%%
%% Word filters - Configure filters to block undesirable words, phrases, and
%% profanity. Such words can include offensive terms, competitor names etc.
%%
%% Sensitive information filters - Block or mask sensitive information such
%% as personally identifiable information (PII) or custom regex in user
%% inputs and model responses.
%%
%% In addition to the above policies, you can also configure the messages to
%% be returned to the user if a user input or model response is in violation
%% of the policies defined in the guardrail.
%%
%% For more information, see Amazon Bedrock Guardrails:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails.html in
%% the Amazon Bedrock User Guide.
-spec create_guardrail(aws_client:aws_client(), create_guardrail_request()) ->
    {ok, create_guardrail_response(), tuple()} |
    {error, any()} |
    {error, create_guardrail_errors(), tuple()}.
create_guardrail(Client, Input) ->
    create_guardrail(Client, Input, []).

-spec create_guardrail(aws_client:aws_client(), create_guardrail_request(), proplists:proplist()) ->
    {ok, create_guardrail_response(), tuple()} |
    {error, any()} |
    {error, create_guardrail_errors(), tuple()}.
create_guardrail(Client, Input0, Options0) ->
    Method = post,
    Path = ["/guardrails"],
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

%% @doc Creates a version of the guardrail.
%%
%% Use this API to create a snapshot of the guardrail when you are satisfied
%% with a configuration, or to compare the configuration with another
%% version.
-spec create_guardrail_version(aws_client:aws_client(), binary() | list(), create_guardrail_version_request()) ->
    {ok, create_guardrail_version_response(), tuple()} |
    {error, any()} |
    {error, create_guardrail_version_errors(), tuple()}.
create_guardrail_version(Client, GuardrailIdentifier, Input) ->
    create_guardrail_version(Client, GuardrailIdentifier, Input, []).

-spec create_guardrail_version(aws_client:aws_client(), binary() | list(), create_guardrail_version_request(), proplists:proplist()) ->
    {ok, create_guardrail_version_response(), tuple()} |
    {error, any()} |
    {error, create_guardrail_version_errors(), tuple()}.
create_guardrail_version(Client, GuardrailIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/guardrails/", aws_util:encode_uri(GuardrailIdentifier), ""],
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

%% @doc Creates an application inference profile to track metrics and costs
%% when invoking a model.
%%
%% To create an application inference profile for a foundation model in one
%% region, specify the ARN of the model in that region. To create an
%% application inference profile for a foundation model across multiple
%% regions, specify the ARN of the system-defined inference profile that
%% contains the regions that you want to route requests to. For more
%% information, see Increase throughput and resilience with cross-region
%% inference in Amazon Bedrock:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html.
%% in the Amazon Bedrock User Guide.
-spec create_inference_profile(aws_client:aws_client(), create_inference_profile_request()) ->
    {ok, create_inference_profile_response(), tuple()} |
    {error, any()} |
    {error, create_inference_profile_errors(), tuple()}.
create_inference_profile(Client, Input) ->
    create_inference_profile(Client, Input, []).

-spec create_inference_profile(aws_client:aws_client(), create_inference_profile_request(), proplists:proplist()) ->
    {ok, create_inference_profile_response(), tuple()} |
    {error, any()} |
    {error, create_inference_profile_errors(), tuple()}.
create_inference_profile(Client, Input0, Options0) ->
    Method = post,
    Path = ["/inference-profiles"],
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

%% @doc Creates an endpoint for a model from Amazon Bedrock Marketplace.
%%
%% The endpoint is hosted by Amazon SageMaker.
-spec create_marketplace_model_endpoint(aws_client:aws_client(), create_marketplace_model_endpoint_request()) ->
    {ok, create_marketplace_model_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_marketplace_model_endpoint_errors(), tuple()}.
create_marketplace_model_endpoint(Client, Input) ->
    create_marketplace_model_endpoint(Client, Input, []).

-spec create_marketplace_model_endpoint(aws_client:aws_client(), create_marketplace_model_endpoint_request(), proplists:proplist()) ->
    {ok, create_marketplace_model_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_marketplace_model_endpoint_errors(), tuple()}.
create_marketplace_model_endpoint(Client, Input0, Options0) ->
    Method = post,
    Path = ["/marketplace-model/endpoints"],
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

%% @doc Copies a model to another region so that it can be used there.
%%
%% For more information, see Copy models to be used in other regions:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/copy-model.html in
%% the Amazon Bedrock User Guide:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html.
-spec create_model_copy_job(aws_client:aws_client(), create_model_copy_job_request()) ->
    {ok, create_model_copy_job_response(), tuple()} |
    {error, any()} |
    {error, create_model_copy_job_errors(), tuple()}.
create_model_copy_job(Client, Input) ->
    create_model_copy_job(Client, Input, []).

-spec create_model_copy_job(aws_client:aws_client(), create_model_copy_job_request(), proplists:proplist()) ->
    {ok, create_model_copy_job_response(), tuple()} |
    {error, any()} |
    {error, create_model_copy_job_errors(), tuple()}.
create_model_copy_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/model-copy-jobs"],
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

%% @doc Creates a fine-tuning job to customize a base model.
%%
%% You specify the base foundation model and the location of the training
%% data. After the model-customization job completes successfully, your
%% custom model resource will be ready to use. Amazon Bedrock returns
%% validation loss metrics and output generations after the job completes.
%%
%% For information on the format of training and validation data, see Prepare
%% the datasets:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-prepare.html.
%%
%% Model-customization jobs are asynchronous and the completion time depends
%% on the base model and the training/validation data size. To monitor a job,
%% use the `GetModelCustomizationJob' operation to retrieve the job
%% status.
%%
%% For more information, see Custom models:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html in
%% the Amazon Bedrock User Guide:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html.
-spec create_model_customization_job(aws_client:aws_client(), create_model_customization_job_request()) ->
    {ok, create_model_customization_job_response(), tuple()} |
    {error, any()} |
    {error, create_model_customization_job_errors(), tuple()}.
create_model_customization_job(Client, Input) ->
    create_model_customization_job(Client, Input, []).

-spec create_model_customization_job(aws_client:aws_client(), create_model_customization_job_request(), proplists:proplist()) ->
    {ok, create_model_customization_job_response(), tuple()} |
    {error, any()} |
    {error, create_model_customization_job_errors(), tuple()}.
create_model_customization_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/model-customization-jobs"],
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

%% @doc Creates a model import job to import model that you have customized
%% in other environments, such as Amazon SageMaker.
%%
%% For more information, see Import a customized model:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html
-spec create_model_import_job(aws_client:aws_client(), create_model_import_job_request()) ->
    {ok, create_model_import_job_response(), tuple()} |
    {error, any()} |
    {error, create_model_import_job_errors(), tuple()}.
create_model_import_job(Client, Input) ->
    create_model_import_job(Client, Input, []).

-spec create_model_import_job(aws_client:aws_client(), create_model_import_job_request(), proplists:proplist()) ->
    {ok, create_model_import_job_response(), tuple()} |
    {error, any()} |
    {error, create_model_import_job_errors(), tuple()}.
create_model_import_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/model-import-jobs"],
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

%% @doc Creates a batch inference job to invoke a model on multiple prompts.
%%
%% Format your data according to Format your inference data:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/batch-inference-data
%% and upload it to an Amazon S3 bucket. For more information, see Process
%% multiple prompts with batch inference:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/batch-inference.html.
%%
%% The response returns a `jobArn' that you can use to stop or get
%% details about the job.
-spec create_model_invocation_job(aws_client:aws_client(), create_model_invocation_job_request()) ->
    {ok, create_model_invocation_job_response(), tuple()} |
    {error, any()} |
    {error, create_model_invocation_job_errors(), tuple()}.
create_model_invocation_job(Client, Input) ->
    create_model_invocation_job(Client, Input, []).

-spec create_model_invocation_job(aws_client:aws_client(), create_model_invocation_job_request(), proplists:proplist()) ->
    {ok, create_model_invocation_job_response(), tuple()} |
    {error, any()} |
    {error, create_model_invocation_job_errors(), tuple()}.
create_model_invocation_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/model-invocation-job"],
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

%% @doc Creates a prompt router that manages the routing of requests between
%% multiple foundation models based on the routing criteria.
-spec create_prompt_router(aws_client:aws_client(), create_prompt_router_request()) ->
    {ok, create_prompt_router_response(), tuple()} |
    {error, any()} |
    {error, create_prompt_router_errors(), tuple()}.
create_prompt_router(Client, Input) ->
    create_prompt_router(Client, Input, []).

-spec create_prompt_router(aws_client:aws_client(), create_prompt_router_request(), proplists:proplist()) ->
    {ok, create_prompt_router_response(), tuple()} |
    {error, any()} |
    {error, create_prompt_router_errors(), tuple()}.
create_prompt_router(Client, Input0, Options0) ->
    Method = post,
    Path = ["/prompt-routers"],
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

%% @doc Creates dedicated throughput for a base or custom model with the
%% model units and for the duration that you specify.
%%
%% For pricing details, see Amazon Bedrock Pricing:
%% http://aws.amazon.com/bedrock/pricing/. For more information, see
%% Provisioned Throughput:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html
%% in the Amazon Bedrock User Guide:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html.
-spec create_provisioned_model_throughput(aws_client:aws_client(), create_provisioned_model_throughput_request()) ->
    {ok, create_provisioned_model_throughput_response(), tuple()} |
    {error, any()} |
    {error, create_provisioned_model_throughput_errors(), tuple()}.
create_provisioned_model_throughput(Client, Input) ->
    create_provisioned_model_throughput(Client, Input, []).

-spec create_provisioned_model_throughput(aws_client:aws_client(), create_provisioned_model_throughput_request(), proplists:proplist()) ->
    {ok, create_provisioned_model_throughput_response(), tuple()} |
    {error, any()} |
    {error, create_provisioned_model_throughput_errors(), tuple()}.
create_provisioned_model_throughput(Client, Input0, Options0) ->
    Method = post,
    Path = ["/provisioned-model-throughput"],
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

%% @doc Deletes a custom model that you created earlier.
%%
%% For more information, see Custom models:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html in
%% the Amazon Bedrock User Guide:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html.
-spec delete_custom_model(aws_client:aws_client(), binary() | list(), delete_custom_model_request()) ->
    {ok, delete_custom_model_response(), tuple()} |
    {error, any()} |
    {error, delete_custom_model_errors(), tuple()}.
delete_custom_model(Client, ModelIdentifier, Input) ->
    delete_custom_model(Client, ModelIdentifier, Input, []).

-spec delete_custom_model(aws_client:aws_client(), binary() | list(), delete_custom_model_request(), proplists:proplist()) ->
    {ok, delete_custom_model_response(), tuple()} |
    {error, any()} |
    {error, delete_custom_model_errors(), tuple()}.
delete_custom_model(Client, ModelIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/custom-models/", aws_util:encode_uri(ModelIdentifier), ""],
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

%% @doc Deletes a custom model deployment.
%%
%% This operation stops the deployment and removes it from your account.
%% After deletion, the deployment ARN can no longer be used for inference
%% requests.
%%
%% The following actions are related to the `DeleteCustomModelDeployment'
%% operation:
%%
%% CreateCustomModelDeployment:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_CreateCustomModelDeployment.html
%%
%% GetCustomModelDeployment:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GetCustomModelDeployment.html
%%
%% ListCustomModelDeployments:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_ListCustomModelDeployments.html
-spec delete_custom_model_deployment(aws_client:aws_client(), binary() | list(), delete_custom_model_deployment_request()) ->
    {ok, delete_custom_model_deployment_response(), tuple()} |
    {error, any()} |
    {error, delete_custom_model_deployment_errors(), tuple()}.
delete_custom_model_deployment(Client, CustomModelDeploymentIdentifier, Input) ->
    delete_custom_model_deployment(Client, CustomModelDeploymentIdentifier, Input, []).

-spec delete_custom_model_deployment(aws_client:aws_client(), binary() | list(), delete_custom_model_deployment_request(), proplists:proplist()) ->
    {ok, delete_custom_model_deployment_response(), tuple()} |
    {error, any()} |
    {error, delete_custom_model_deployment_errors(), tuple()}.
delete_custom_model_deployment(Client, CustomModelDeploymentIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/model-customization/custom-model-deployments/", aws_util:encode_uri(CustomModelDeploymentIdentifier), ""],
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

%% @doc Delete the model access agreement for the specified model.
-spec delete_foundation_model_agreement(aws_client:aws_client(), delete_foundation_model_agreement_request()) ->
    {ok, delete_foundation_model_agreement_response(), tuple()} |
    {error, any()} |
    {error, delete_foundation_model_agreement_errors(), tuple()}.
delete_foundation_model_agreement(Client, Input) ->
    delete_foundation_model_agreement(Client, Input, []).

-spec delete_foundation_model_agreement(aws_client:aws_client(), delete_foundation_model_agreement_request(), proplists:proplist()) ->
    {ok, delete_foundation_model_agreement_response(), tuple()} |
    {error, any()} |
    {error, delete_foundation_model_agreement_errors(), tuple()}.
delete_foundation_model_agreement(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-foundation-model-agreement"],
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

%% @doc Deletes a guardrail.
%%
%% To delete a guardrail, only specify the ARN of the guardrail in the
%% `guardrailIdentifier' field. If you delete a guardrail, all of its
%% versions will be deleted.
%%
%% To delete a version of a guardrail, specify the ARN of the guardrail in
%% the `guardrailIdentifier' field and the version in the
%% `guardrailVersion' field.
-spec delete_guardrail(aws_client:aws_client(), binary() | list(), delete_guardrail_request()) ->
    {ok, delete_guardrail_response(), tuple()} |
    {error, any()} |
    {error, delete_guardrail_errors(), tuple()}.
delete_guardrail(Client, GuardrailIdentifier, Input) ->
    delete_guardrail(Client, GuardrailIdentifier, Input, []).

-spec delete_guardrail(aws_client:aws_client(), binary() | list(), delete_guardrail_request(), proplists:proplist()) ->
    {ok, delete_guardrail_response(), tuple()} |
    {error, any()} |
    {error, delete_guardrail_errors(), tuple()}.
delete_guardrail(Client, GuardrailIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/guardrails/", aws_util:encode_uri(GuardrailIdentifier), ""],
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

    QueryMapping = [
                     {<<"guardrailVersion">>, <<"guardrailVersion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a custom model that you imported earlier.
%%
%% For more information, see Import a customized model:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html
%% in the Amazon Bedrock User Guide:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html.
-spec delete_imported_model(aws_client:aws_client(), binary() | list(), delete_imported_model_request()) ->
    {ok, delete_imported_model_response(), tuple()} |
    {error, any()} |
    {error, delete_imported_model_errors(), tuple()}.
delete_imported_model(Client, ModelIdentifier, Input) ->
    delete_imported_model(Client, ModelIdentifier, Input, []).

-spec delete_imported_model(aws_client:aws_client(), binary() | list(), delete_imported_model_request(), proplists:proplist()) ->
    {ok, delete_imported_model_response(), tuple()} |
    {error, any()} |
    {error, delete_imported_model_errors(), tuple()}.
delete_imported_model(Client, ModelIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/imported-models/", aws_util:encode_uri(ModelIdentifier), ""],
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

%% @doc Deletes an application inference profile.
%%
%% For more information, see Increase throughput and resilience with
%% cross-region inference in Amazon Bedrock:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html.
%% in the Amazon Bedrock User Guide.
-spec delete_inference_profile(aws_client:aws_client(), binary() | list(), delete_inference_profile_request()) ->
    {ok, delete_inference_profile_response(), tuple()} |
    {error, any()} |
    {error, delete_inference_profile_errors(), tuple()}.
delete_inference_profile(Client, InferenceProfileIdentifier, Input) ->
    delete_inference_profile(Client, InferenceProfileIdentifier, Input, []).

-spec delete_inference_profile(aws_client:aws_client(), binary() | list(), delete_inference_profile_request(), proplists:proplist()) ->
    {ok, delete_inference_profile_response(), tuple()} |
    {error, any()} |
    {error, delete_inference_profile_errors(), tuple()}.
delete_inference_profile(Client, InferenceProfileIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/inference-profiles/", aws_util:encode_uri(InferenceProfileIdentifier), ""],
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

%% @doc Deletes an endpoint for a model from Amazon Bedrock Marketplace.
-spec delete_marketplace_model_endpoint(aws_client:aws_client(), binary() | list(), delete_marketplace_model_endpoint_request()) ->
    {ok, delete_marketplace_model_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_marketplace_model_endpoint_errors(), tuple()}.
delete_marketplace_model_endpoint(Client, EndpointArn, Input) ->
    delete_marketplace_model_endpoint(Client, EndpointArn, Input, []).

-spec delete_marketplace_model_endpoint(aws_client:aws_client(), binary() | list(), delete_marketplace_model_endpoint_request(), proplists:proplist()) ->
    {ok, delete_marketplace_model_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_marketplace_model_endpoint_errors(), tuple()}.
delete_marketplace_model_endpoint(Client, EndpointArn, Input0, Options0) ->
    Method = delete,
    Path = ["/marketplace-model/endpoints/", aws_util:encode_uri(EndpointArn), ""],
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

%% @doc Delete the invocation logging.
-spec delete_model_invocation_logging_configuration(aws_client:aws_client(), delete_model_invocation_logging_configuration_request()) ->
    {ok, delete_model_invocation_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_model_invocation_logging_configuration_errors(), tuple()}.
delete_model_invocation_logging_configuration(Client, Input) ->
    delete_model_invocation_logging_configuration(Client, Input, []).

-spec delete_model_invocation_logging_configuration(aws_client:aws_client(), delete_model_invocation_logging_configuration_request(), proplists:proplist()) ->
    {ok, delete_model_invocation_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_model_invocation_logging_configuration_errors(), tuple()}.
delete_model_invocation_logging_configuration(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/logging/modelinvocations"],
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

%% @doc Deletes a specified prompt router.
%%
%% This action cannot be undone.
-spec delete_prompt_router(aws_client:aws_client(), binary() | list(), delete_prompt_router_request()) ->
    {ok, delete_prompt_router_response(), tuple()} |
    {error, any()} |
    {error, delete_prompt_router_errors(), tuple()}.
delete_prompt_router(Client, PromptRouterArn, Input) ->
    delete_prompt_router(Client, PromptRouterArn, Input, []).

-spec delete_prompt_router(aws_client:aws_client(), binary() | list(), delete_prompt_router_request(), proplists:proplist()) ->
    {ok, delete_prompt_router_response(), tuple()} |
    {error, any()} |
    {error, delete_prompt_router_errors(), tuple()}.
delete_prompt_router(Client, PromptRouterArn, Input0, Options0) ->
    Method = delete,
    Path = ["/prompt-routers/", aws_util:encode_uri(PromptRouterArn), ""],
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

%% @doc Deletes a Provisioned Throughput.
%%
%% You can't delete a Provisioned Throughput before the commitment term
%% is over. For more information, see Provisioned Throughput:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html
%% in the Amazon Bedrock User Guide:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html.
-spec delete_provisioned_model_throughput(aws_client:aws_client(), binary() | list(), delete_provisioned_model_throughput_request()) ->
    {ok, delete_provisioned_model_throughput_response(), tuple()} |
    {error, any()} |
    {error, delete_provisioned_model_throughput_errors(), tuple()}.
delete_provisioned_model_throughput(Client, ProvisionedModelId, Input) ->
    delete_provisioned_model_throughput(Client, ProvisionedModelId, Input, []).

-spec delete_provisioned_model_throughput(aws_client:aws_client(), binary() | list(), delete_provisioned_model_throughput_request(), proplists:proplist()) ->
    {ok, delete_provisioned_model_throughput_response(), tuple()} |
    {error, any()} |
    {error, delete_provisioned_model_throughput_errors(), tuple()}.
delete_provisioned_model_throughput(Client, ProvisionedModelId, Input0, Options0) ->
    Method = delete,
    Path = ["/provisioned-model-throughput/", aws_util:encode_uri(ProvisionedModelId), ""],
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

%% @doc Deregisters an endpoint for a model from Amazon Bedrock Marketplace.
%%
%% This operation removes the endpoint's association with Amazon Bedrock
%% but does not delete the underlying Amazon SageMaker endpoint.
-spec deregister_marketplace_model_endpoint(aws_client:aws_client(), binary() | list(), deregister_marketplace_model_endpoint_request()) ->
    {ok, deregister_marketplace_model_endpoint_response(), tuple()} |
    {error, any()} |
    {error, deregister_marketplace_model_endpoint_errors(), tuple()}.
deregister_marketplace_model_endpoint(Client, EndpointArn, Input) ->
    deregister_marketplace_model_endpoint(Client, EndpointArn, Input, []).

-spec deregister_marketplace_model_endpoint(aws_client:aws_client(), binary() | list(), deregister_marketplace_model_endpoint_request(), proplists:proplist()) ->
    {ok, deregister_marketplace_model_endpoint_response(), tuple()} |
    {error, any()} |
    {error, deregister_marketplace_model_endpoint_errors(), tuple()}.
deregister_marketplace_model_endpoint(Client, EndpointArn, Input0, Options0) ->
    Method = delete,
    Path = ["/marketplace-model/endpoints/", aws_util:encode_uri(EndpointArn), "/registration"],
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

%% @doc Get the properties associated with a Amazon Bedrock custom model that
%% you have created.
%%
%% For more information, see Custom models:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html in
%% the Amazon Bedrock User Guide:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html.
-spec get_custom_model(aws_client:aws_client(), binary() | list()) ->
    {ok, get_custom_model_response(), tuple()} |
    {error, any()} |
    {error, get_custom_model_errors(), tuple()}.
get_custom_model(Client, ModelIdentifier)
  when is_map(Client) ->
    get_custom_model(Client, ModelIdentifier, #{}, #{}).

-spec get_custom_model(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_custom_model_response(), tuple()} |
    {error, any()} |
    {error, get_custom_model_errors(), tuple()}.
get_custom_model(Client, ModelIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_custom_model(Client, ModelIdentifier, QueryMap, HeadersMap, []).

-spec get_custom_model(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_custom_model_response(), tuple()} |
    {error, any()} |
    {error, get_custom_model_errors(), tuple()}.
get_custom_model(Client, ModelIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/custom-models/", aws_util:encode_uri(ModelIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a custom model deployment, including its
%% status, configuration, and metadata.
%%
%% Use this operation to monitor the deployment status and retrieve details
%% needed for inference requests.
%%
%% The following actions are related to the `GetCustomModelDeployment'
%% operation:
%%
%% CreateCustomModelDeployment:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_CreateCustomModelDeployment.html
%%
%% ListCustomModelDeployments:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_ListCustomModelDeployments.html
%%
%% DeleteCustomModelDeployment:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_DeleteCustomModelDeployment.html
-spec get_custom_model_deployment(aws_client:aws_client(), binary() | list()) ->
    {ok, get_custom_model_deployment_response(), tuple()} |
    {error, any()} |
    {error, get_custom_model_deployment_errors(), tuple()}.
get_custom_model_deployment(Client, CustomModelDeploymentIdentifier)
  when is_map(Client) ->
    get_custom_model_deployment(Client, CustomModelDeploymentIdentifier, #{}, #{}).

-spec get_custom_model_deployment(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_custom_model_deployment_response(), tuple()} |
    {error, any()} |
    {error, get_custom_model_deployment_errors(), tuple()}.
get_custom_model_deployment(Client, CustomModelDeploymentIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_custom_model_deployment(Client, CustomModelDeploymentIdentifier, QueryMap, HeadersMap, []).

-spec get_custom_model_deployment(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_custom_model_deployment_response(), tuple()} |
    {error, any()} |
    {error, get_custom_model_deployment_errors(), tuple()}.
get_custom_model_deployment(Client, CustomModelDeploymentIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/model-customization/custom-model-deployments/", aws_util:encode_uri(CustomModelDeploymentIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about an evaluation job, such as the status of the
%% job.
-spec get_evaluation_job(aws_client:aws_client(), binary() | list()) ->
    {ok, get_evaluation_job_response(), tuple()} |
    {error, any()} |
    {error, get_evaluation_job_errors(), tuple()}.
get_evaluation_job(Client, JobIdentifier)
  when is_map(Client) ->
    get_evaluation_job(Client, JobIdentifier, #{}, #{}).

-spec get_evaluation_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_evaluation_job_response(), tuple()} |
    {error, any()} |
    {error, get_evaluation_job_errors(), tuple()}.
get_evaluation_job(Client, JobIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_evaluation_job(Client, JobIdentifier, QueryMap, HeadersMap, []).

-spec get_evaluation_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_evaluation_job_response(), tuple()} |
    {error, any()} |
    {error, get_evaluation_job_errors(), tuple()}.
get_evaluation_job(Client, JobIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/evaluation-jobs/", aws_util:encode_uri(JobIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get details about a Amazon Bedrock foundation model.
-spec get_foundation_model(aws_client:aws_client(), binary() | list()) ->
    {ok, get_foundation_model_response(), tuple()} |
    {error, any()} |
    {error, get_foundation_model_errors(), tuple()}.
get_foundation_model(Client, ModelIdentifier)
  when is_map(Client) ->
    get_foundation_model(Client, ModelIdentifier, #{}, #{}).

-spec get_foundation_model(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_foundation_model_response(), tuple()} |
    {error, any()} |
    {error, get_foundation_model_errors(), tuple()}.
get_foundation_model(Client, ModelIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_foundation_model(Client, ModelIdentifier, QueryMap, HeadersMap, []).

-spec get_foundation_model(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_foundation_model_response(), tuple()} |
    {error, any()} |
    {error, get_foundation_model_errors(), tuple()}.
get_foundation_model(Client, ModelIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/foundation-models/", aws_util:encode_uri(ModelIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get information about the Foundation model availability.
-spec get_foundation_model_availability(aws_client:aws_client(), binary() | list()) ->
    {ok, get_foundation_model_availability_response(), tuple()} |
    {error, any()} |
    {error, get_foundation_model_availability_errors(), tuple()}.
get_foundation_model_availability(Client, ModelId)
  when is_map(Client) ->
    get_foundation_model_availability(Client, ModelId, #{}, #{}).

-spec get_foundation_model_availability(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_foundation_model_availability_response(), tuple()} |
    {error, any()} |
    {error, get_foundation_model_availability_errors(), tuple()}.
get_foundation_model_availability(Client, ModelId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_foundation_model_availability(Client, ModelId, QueryMap, HeadersMap, []).

-spec get_foundation_model_availability(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_foundation_model_availability_response(), tuple()} |
    {error, any()} |
    {error, get_foundation_model_availability_errors(), tuple()}.
get_foundation_model_availability(Client, ModelId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/foundation-model-availability/", aws_util:encode_uri(ModelId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details about a guardrail.
%%
%% If you don't specify a version, the response returns details for the
%% `DRAFT' version.
-spec get_guardrail(aws_client:aws_client(), binary() | list()) ->
    {ok, get_guardrail_response(), tuple()} |
    {error, any()} |
    {error, get_guardrail_errors(), tuple()}.
get_guardrail(Client, GuardrailIdentifier)
  when is_map(Client) ->
    get_guardrail(Client, GuardrailIdentifier, #{}, #{}).

-spec get_guardrail(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_guardrail_response(), tuple()} |
    {error, any()} |
    {error, get_guardrail_errors(), tuple()}.
get_guardrail(Client, GuardrailIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_guardrail(Client, GuardrailIdentifier, QueryMap, HeadersMap, []).

-spec get_guardrail(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_guardrail_response(), tuple()} |
    {error, any()} |
    {error, get_guardrail_errors(), tuple()}.
get_guardrail(Client, GuardrailIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/guardrails/", aws_util:encode_uri(GuardrailIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"guardrailVersion">>, maps:get(<<"guardrailVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets properties associated with a customized model you imported.
-spec get_imported_model(aws_client:aws_client(), binary() | list()) ->
    {ok, get_imported_model_response(), tuple()} |
    {error, any()} |
    {error, get_imported_model_errors(), tuple()}.
get_imported_model(Client, ModelIdentifier)
  when is_map(Client) ->
    get_imported_model(Client, ModelIdentifier, #{}, #{}).

-spec get_imported_model(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_imported_model_response(), tuple()} |
    {error, any()} |
    {error, get_imported_model_errors(), tuple()}.
get_imported_model(Client, ModelIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_imported_model(Client, ModelIdentifier, QueryMap, HeadersMap, []).

-spec get_imported_model(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_imported_model_response(), tuple()} |
    {error, any()} |
    {error, get_imported_model_errors(), tuple()}.
get_imported_model(Client, ModelIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/imported-models/", aws_util:encode_uri(ModelIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about an inference profile.
%%
%% For more information, see Increase throughput and resilience with
%% cross-region inference in Amazon Bedrock:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html.
%% in the Amazon Bedrock User Guide.
-spec get_inference_profile(aws_client:aws_client(), binary() | list()) ->
    {ok, get_inference_profile_response(), tuple()} |
    {error, any()} |
    {error, get_inference_profile_errors(), tuple()}.
get_inference_profile(Client, InferenceProfileIdentifier)
  when is_map(Client) ->
    get_inference_profile(Client, InferenceProfileIdentifier, #{}, #{}).

-spec get_inference_profile(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_inference_profile_response(), tuple()} |
    {error, any()} |
    {error, get_inference_profile_errors(), tuple()}.
get_inference_profile(Client, InferenceProfileIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_inference_profile(Client, InferenceProfileIdentifier, QueryMap, HeadersMap, []).

-spec get_inference_profile(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_inference_profile_response(), tuple()} |
    {error, any()} |
    {error, get_inference_profile_errors(), tuple()}.
get_inference_profile(Client, InferenceProfileIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/inference-profiles/", aws_util:encode_uri(InferenceProfileIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details about a specific endpoint for a model from Amazon
%% Bedrock Marketplace.
-spec get_marketplace_model_endpoint(aws_client:aws_client(), binary() | list()) ->
    {ok, get_marketplace_model_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_marketplace_model_endpoint_errors(), tuple()}.
get_marketplace_model_endpoint(Client, EndpointArn)
  when is_map(Client) ->
    get_marketplace_model_endpoint(Client, EndpointArn, #{}, #{}).

-spec get_marketplace_model_endpoint(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_marketplace_model_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_marketplace_model_endpoint_errors(), tuple()}.
get_marketplace_model_endpoint(Client, EndpointArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_marketplace_model_endpoint(Client, EndpointArn, QueryMap, HeadersMap, []).

-spec get_marketplace_model_endpoint(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_marketplace_model_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_marketplace_model_endpoint_errors(), tuple()}.
get_marketplace_model_endpoint(Client, EndpointArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/marketplace-model/endpoints/", aws_util:encode_uri(EndpointArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a model copy job.
%%
%% For more information, see Copy models to be used in other regions:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/copy-model.html in
%% the Amazon Bedrock User Guide:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html.
-spec get_model_copy_job(aws_client:aws_client(), binary() | list()) ->
    {ok, get_model_copy_job_response(), tuple()} |
    {error, any()} |
    {error, get_model_copy_job_errors(), tuple()}.
get_model_copy_job(Client, JobArn)
  when is_map(Client) ->
    get_model_copy_job(Client, JobArn, #{}, #{}).

-spec get_model_copy_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_model_copy_job_response(), tuple()} |
    {error, any()} |
    {error, get_model_copy_job_errors(), tuple()}.
get_model_copy_job(Client, JobArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_model_copy_job(Client, JobArn, QueryMap, HeadersMap, []).

-spec get_model_copy_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_model_copy_job_response(), tuple()} |
    {error, any()} |
    {error, get_model_copy_job_errors(), tuple()}.
get_model_copy_job(Client, JobArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/model-copy-jobs/", aws_util:encode_uri(JobArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the properties associated with a model-customization job,
%% including the status of the job.
%%
%% For more information, see Custom models:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html in
%% the Amazon Bedrock User Guide:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html.
-spec get_model_customization_job(aws_client:aws_client(), binary() | list()) ->
    {ok, get_model_customization_job_response(), tuple()} |
    {error, any()} |
    {error, get_model_customization_job_errors(), tuple()}.
get_model_customization_job(Client, JobIdentifier)
  when is_map(Client) ->
    get_model_customization_job(Client, JobIdentifier, #{}, #{}).

-spec get_model_customization_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_model_customization_job_response(), tuple()} |
    {error, any()} |
    {error, get_model_customization_job_errors(), tuple()}.
get_model_customization_job(Client, JobIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_model_customization_job(Client, JobIdentifier, QueryMap, HeadersMap, []).

-spec get_model_customization_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_model_customization_job_response(), tuple()} |
    {error, any()} |
    {error, get_model_customization_job_errors(), tuple()}.
get_model_customization_job(Client, JobIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/model-customization-jobs/", aws_util:encode_uri(JobIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the properties associated with import model job, including
%% the status of the job.
%%
%% For more information, see Import a customized model:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html
%% in the Amazon Bedrock User Guide:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html.
-spec get_model_import_job(aws_client:aws_client(), binary() | list()) ->
    {ok, get_model_import_job_response(), tuple()} |
    {error, any()} |
    {error, get_model_import_job_errors(), tuple()}.
get_model_import_job(Client, JobIdentifier)
  when is_map(Client) ->
    get_model_import_job(Client, JobIdentifier, #{}, #{}).

-spec get_model_import_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_model_import_job_response(), tuple()} |
    {error, any()} |
    {error, get_model_import_job_errors(), tuple()}.
get_model_import_job(Client, JobIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_model_import_job(Client, JobIdentifier, QueryMap, HeadersMap, []).

-spec get_model_import_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_model_import_job_response(), tuple()} |
    {error, any()} |
    {error, get_model_import_job_errors(), tuple()}.
get_model_import_job(Client, JobIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/model-import-jobs/", aws_util:encode_uri(JobIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details about a batch inference job.
%%
%% For more information, see Monitor batch inference jobs:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/batch-inference-monitor
-spec get_model_invocation_job(aws_client:aws_client(), binary() | list()) ->
    {ok, get_model_invocation_job_response(), tuple()} |
    {error, any()} |
    {error, get_model_invocation_job_errors(), tuple()}.
get_model_invocation_job(Client, JobIdentifier)
  when is_map(Client) ->
    get_model_invocation_job(Client, JobIdentifier, #{}, #{}).

-spec get_model_invocation_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_model_invocation_job_response(), tuple()} |
    {error, any()} |
    {error, get_model_invocation_job_errors(), tuple()}.
get_model_invocation_job(Client, JobIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_model_invocation_job(Client, JobIdentifier, QueryMap, HeadersMap, []).

-spec get_model_invocation_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_model_invocation_job_response(), tuple()} |
    {error, any()} |
    {error, get_model_invocation_job_errors(), tuple()}.
get_model_invocation_job(Client, JobIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/model-invocation-job/", aws_util:encode_uri(JobIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the current configuration values for model invocation logging.
-spec get_model_invocation_logging_configuration(aws_client:aws_client()) ->
    {ok, get_model_invocation_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_model_invocation_logging_configuration_errors(), tuple()}.
get_model_invocation_logging_configuration(Client)
  when is_map(Client) ->
    get_model_invocation_logging_configuration(Client, #{}, #{}).

-spec get_model_invocation_logging_configuration(aws_client:aws_client(), map(), map()) ->
    {ok, get_model_invocation_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_model_invocation_logging_configuration_errors(), tuple()}.
get_model_invocation_logging_configuration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_model_invocation_logging_configuration(Client, QueryMap, HeadersMap, []).

-spec get_model_invocation_logging_configuration(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_model_invocation_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_model_invocation_logging_configuration_errors(), tuple()}.
get_model_invocation_logging_configuration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/logging/modelinvocations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details about a prompt router.
-spec get_prompt_router(aws_client:aws_client(), binary() | list()) ->
    {ok, get_prompt_router_response(), tuple()} |
    {error, any()} |
    {error, get_prompt_router_errors(), tuple()}.
get_prompt_router(Client, PromptRouterArn)
  when is_map(Client) ->
    get_prompt_router(Client, PromptRouterArn, #{}, #{}).

-spec get_prompt_router(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_prompt_router_response(), tuple()} |
    {error, any()} |
    {error, get_prompt_router_errors(), tuple()}.
get_prompt_router(Client, PromptRouterArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_prompt_router(Client, PromptRouterArn, QueryMap, HeadersMap, []).

-spec get_prompt_router(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_prompt_router_response(), tuple()} |
    {error, any()} |
    {error, get_prompt_router_errors(), tuple()}.
get_prompt_router(Client, PromptRouterArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prompt-routers/", aws_util:encode_uri(PromptRouterArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns details for a Provisioned Throughput.
%%
%% For more information, see Provisioned Throughput:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html
%% in the Amazon Bedrock User Guide:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html.
-spec get_provisioned_model_throughput(aws_client:aws_client(), binary() | list()) ->
    {ok, get_provisioned_model_throughput_response(), tuple()} |
    {error, any()} |
    {error, get_provisioned_model_throughput_errors(), tuple()}.
get_provisioned_model_throughput(Client, ProvisionedModelId)
  when is_map(Client) ->
    get_provisioned_model_throughput(Client, ProvisionedModelId, #{}, #{}).

-spec get_provisioned_model_throughput(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_provisioned_model_throughput_response(), tuple()} |
    {error, any()} |
    {error, get_provisioned_model_throughput_errors(), tuple()}.
get_provisioned_model_throughput(Client, ProvisionedModelId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_provisioned_model_throughput(Client, ProvisionedModelId, QueryMap, HeadersMap, []).

-spec get_provisioned_model_throughput(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_provisioned_model_throughput_response(), tuple()} |
    {error, any()} |
    {error, get_provisioned_model_throughput_errors(), tuple()}.
get_provisioned_model_throughput(Client, ProvisionedModelId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/provisioned-model-throughput/", aws_util:encode_uri(ProvisionedModelId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get usecase for model access.
-spec get_use_case_for_model_access(aws_client:aws_client()) ->
    {ok, get_use_case_for_model_access_response(), tuple()} |
    {error, any()} |
    {error, get_use_case_for_model_access_errors(), tuple()}.
get_use_case_for_model_access(Client)
  when is_map(Client) ->
    get_use_case_for_model_access(Client, #{}, #{}).

-spec get_use_case_for_model_access(aws_client:aws_client(), map(), map()) ->
    {ok, get_use_case_for_model_access_response(), tuple()} |
    {error, any()} |
    {error, get_use_case_for_model_access_errors(), tuple()}.
get_use_case_for_model_access(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_use_case_for_model_access(Client, QueryMap, HeadersMap, []).

-spec get_use_case_for_model_access(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_use_case_for_model_access_response(), tuple()} |
    {error, any()} |
    {error, get_use_case_for_model_access_errors(), tuple()}.
get_use_case_for_model_access(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/use-case-for-model-access"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists custom model deployments in your account.
%%
%% You can filter the results by creation time, name, status, and associated
%% model. Use this operation to manage and monitor your custom model
%% deployments.
%%
%% We recommend using pagination to ensure that the operation returns quickly
%% and successfully.
%%
%% The following actions are related to the `ListCustomModelDeployments'
%% operation:
%%
%% CreateCustomModelDeployment:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_CreateCustomModelDeployment.html
%%
%% GetCustomModelDeployment:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GetCustomModelDeployment.html
%%
%% DeleteCustomModelDeployment:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_DeleteCustomModelDeployment.html
-spec list_custom_model_deployments(aws_client:aws_client()) ->
    {ok, list_custom_model_deployments_response(), tuple()} |
    {error, any()} |
    {error, list_custom_model_deployments_errors(), tuple()}.
list_custom_model_deployments(Client)
  when is_map(Client) ->
    list_custom_model_deployments(Client, #{}, #{}).

-spec list_custom_model_deployments(aws_client:aws_client(), map(), map()) ->
    {ok, list_custom_model_deployments_response(), tuple()} |
    {error, any()} |
    {error, list_custom_model_deployments_errors(), tuple()}.
list_custom_model_deployments(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_custom_model_deployments(Client, QueryMap, HeadersMap, []).

-spec list_custom_model_deployments(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_custom_model_deployments_response(), tuple()} |
    {error, any()} |
    {error, list_custom_model_deployments_errors(), tuple()}.
list_custom_model_deployments(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/model-customization/custom-model-deployments"],
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
        {<<"createdBefore">>, maps:get(<<"createdBefore">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"modelArnEquals">>, maps:get(<<"modelArnEquals">>, QueryMap, undefined)},
        {<<"nameContains">>, maps:get(<<"nameContains">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"sortBy">>, maps:get(<<"sortBy">>, QueryMap, undefined)},
        {<<"sortOrder">>, maps:get(<<"sortOrder">>, QueryMap, undefined)},
        {<<"statusEquals">>, maps:get(<<"statusEquals">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the custom models that you have created with the
%% `CreateModelCustomizationJob' operation.
%%
%% For more information, see Custom models:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html in
%% the Amazon Bedrock User Guide:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html.
-spec list_custom_models(aws_client:aws_client()) ->
    {ok, list_custom_models_response(), tuple()} |
    {error, any()} |
    {error, list_custom_models_errors(), tuple()}.
list_custom_models(Client)
  when is_map(Client) ->
    list_custom_models(Client, #{}, #{}).

-spec list_custom_models(aws_client:aws_client(), map(), map()) ->
    {ok, list_custom_models_response(), tuple()} |
    {error, any()} |
    {error, list_custom_models_errors(), tuple()}.
list_custom_models(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_custom_models(Client, QueryMap, HeadersMap, []).

-spec list_custom_models(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_custom_models_response(), tuple()} |
    {error, any()} |
    {error, list_custom_models_errors(), tuple()}.
list_custom_models(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/custom-models"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"baseModelArnEquals">>, maps:get(<<"baseModelArnEquals">>, QueryMap, undefined)},
        {<<"creationTimeAfter">>, maps:get(<<"creationTimeAfter">>, QueryMap, undefined)},
        {<<"creationTimeBefore">>, maps:get(<<"creationTimeBefore">>, QueryMap, undefined)},
        {<<"foundationModelArnEquals">>, maps:get(<<"foundationModelArnEquals">>, QueryMap, undefined)},
        {<<"isOwned">>, maps:get(<<"isOwned">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"modelStatus">>, maps:get(<<"modelStatus">>, QueryMap, undefined)},
        {<<"nameContains">>, maps:get(<<"nameContains">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"sortBy">>, maps:get(<<"sortBy">>, QueryMap, undefined)},
        {<<"sortOrder">>, maps:get(<<"sortOrder">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all existing evaluation jobs.
-spec list_evaluation_jobs(aws_client:aws_client()) ->
    {ok, list_evaluation_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_evaluation_jobs_errors(), tuple()}.
list_evaluation_jobs(Client)
  when is_map(Client) ->
    list_evaluation_jobs(Client, #{}, #{}).

-spec list_evaluation_jobs(aws_client:aws_client(), map(), map()) ->
    {ok, list_evaluation_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_evaluation_jobs_errors(), tuple()}.
list_evaluation_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_evaluation_jobs(Client, QueryMap, HeadersMap, []).

-spec list_evaluation_jobs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_evaluation_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_evaluation_jobs_errors(), tuple()}.
list_evaluation_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/evaluation-jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"applicationTypeEquals">>, maps:get(<<"applicationTypeEquals">>, QueryMap, undefined)},
        {<<"creationTimeAfter">>, maps:get(<<"creationTimeAfter">>, QueryMap, undefined)},
        {<<"creationTimeBefore">>, maps:get(<<"creationTimeBefore">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nameContains">>, maps:get(<<"nameContains">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"sortBy">>, maps:get(<<"sortBy">>, QueryMap, undefined)},
        {<<"sortOrder">>, maps:get(<<"sortOrder">>, QueryMap, undefined)},
        {<<"statusEquals">>, maps:get(<<"statusEquals">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the offers associated with the specified model.
-spec list_foundation_model_agreement_offers(aws_client:aws_client(), binary() | list()) ->
    {ok, list_foundation_model_agreement_offers_response(), tuple()} |
    {error, any()} |
    {error, list_foundation_model_agreement_offers_errors(), tuple()}.
list_foundation_model_agreement_offers(Client, ModelId)
  when is_map(Client) ->
    list_foundation_model_agreement_offers(Client, ModelId, #{}, #{}).

-spec list_foundation_model_agreement_offers(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_foundation_model_agreement_offers_response(), tuple()} |
    {error, any()} |
    {error, list_foundation_model_agreement_offers_errors(), tuple()}.
list_foundation_model_agreement_offers(Client, ModelId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_foundation_model_agreement_offers(Client, ModelId, QueryMap, HeadersMap, []).

-spec list_foundation_model_agreement_offers(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_foundation_model_agreement_offers_response(), tuple()} |
    {error, any()} |
    {error, list_foundation_model_agreement_offers_errors(), tuple()}.
list_foundation_model_agreement_offers(Client, ModelId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/list-foundation-model-agreement-offers/", aws_util:encode_uri(ModelId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"offerType">>, maps:get(<<"offerType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists Amazon Bedrock foundation models that you can use.
%%
%% You can filter the results with the request parameters. For more
%% information, see Foundation models:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/foundation-models.html
%% in the Amazon Bedrock User Guide:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html.
-spec list_foundation_models(aws_client:aws_client()) ->
    {ok, list_foundation_models_response(), tuple()} |
    {error, any()} |
    {error, list_foundation_models_errors(), tuple()}.
list_foundation_models(Client)
  when is_map(Client) ->
    list_foundation_models(Client, #{}, #{}).

-spec list_foundation_models(aws_client:aws_client(), map(), map()) ->
    {ok, list_foundation_models_response(), tuple()} |
    {error, any()} |
    {error, list_foundation_models_errors(), tuple()}.
list_foundation_models(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_foundation_models(Client, QueryMap, HeadersMap, []).

-spec list_foundation_models(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_foundation_models_response(), tuple()} |
    {error, any()} |
    {error, list_foundation_models_errors(), tuple()}.
list_foundation_models(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/foundation-models"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"byCustomizationType">>, maps:get(<<"byCustomizationType">>, QueryMap, undefined)},
        {<<"byInferenceType">>, maps:get(<<"byInferenceType">>, QueryMap, undefined)},
        {<<"byOutputModality">>, maps:get(<<"byOutputModality">>, QueryMap, undefined)},
        {<<"byProvider">>, maps:get(<<"byProvider">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists details about all the guardrails in an account.
%%
%% To list the `DRAFT' version of all your guardrails, don't specify
%% the `guardrailIdentifier' field. To list all versions of a guardrail,
%% specify the ARN of the guardrail in the `guardrailIdentifier' field.
%%
%% You can set the maximum number of results to return in a response in the
%% `maxResults' field. If there are more results than the number you set,
%% the response returns a `nextToken' that you can send in another
%% `ListGuardrails' request to see the next batch of results.
-spec list_guardrails(aws_client:aws_client()) ->
    {ok, list_guardrails_response(), tuple()} |
    {error, any()} |
    {error, list_guardrails_errors(), tuple()}.
list_guardrails(Client)
  when is_map(Client) ->
    list_guardrails(Client, #{}, #{}).

-spec list_guardrails(aws_client:aws_client(), map(), map()) ->
    {ok, list_guardrails_response(), tuple()} |
    {error, any()} |
    {error, list_guardrails_errors(), tuple()}.
list_guardrails(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_guardrails(Client, QueryMap, HeadersMap, []).

-spec list_guardrails(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_guardrails_response(), tuple()} |
    {error, any()} |
    {error, list_guardrails_errors(), tuple()}.
list_guardrails(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/guardrails"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"guardrailIdentifier">>, maps:get(<<"guardrailIdentifier">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of models you've imported.
%%
%% You can filter the results to return based on one or more criteria. For
%% more information, see Import a customized model:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html
%% in the Amazon Bedrock User Guide:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html.
-spec list_imported_models(aws_client:aws_client()) ->
    {ok, list_imported_models_response(), tuple()} |
    {error, any()} |
    {error, list_imported_models_errors(), tuple()}.
list_imported_models(Client)
  when is_map(Client) ->
    list_imported_models(Client, #{}, #{}).

-spec list_imported_models(aws_client:aws_client(), map(), map()) ->
    {ok, list_imported_models_response(), tuple()} |
    {error, any()} |
    {error, list_imported_models_errors(), tuple()}.
list_imported_models(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_imported_models(Client, QueryMap, HeadersMap, []).

-spec list_imported_models(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_imported_models_response(), tuple()} |
    {error, any()} |
    {error, list_imported_models_errors(), tuple()}.
list_imported_models(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/imported-models"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"creationTimeAfter">>, maps:get(<<"creationTimeAfter">>, QueryMap, undefined)},
        {<<"creationTimeBefore">>, maps:get(<<"creationTimeBefore">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nameContains">>, maps:get(<<"nameContains">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"sortBy">>, maps:get(<<"sortBy">>, QueryMap, undefined)},
        {<<"sortOrder">>, maps:get(<<"sortOrder">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of inference profiles that you can use.
%%
%% For more information, see Increase throughput and resilience with
%% cross-region inference in Amazon Bedrock:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html.
%% in the Amazon Bedrock User Guide.
-spec list_inference_profiles(aws_client:aws_client()) ->
    {ok, list_inference_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_inference_profiles_errors(), tuple()}.
list_inference_profiles(Client)
  when is_map(Client) ->
    list_inference_profiles(Client, #{}, #{}).

-spec list_inference_profiles(aws_client:aws_client(), map(), map()) ->
    {ok, list_inference_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_inference_profiles_errors(), tuple()}.
list_inference_profiles(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_inference_profiles(Client, QueryMap, HeadersMap, []).

-spec list_inference_profiles(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_inference_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_inference_profiles_errors(), tuple()}.
list_inference_profiles(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/inference-profiles"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the endpoints for models from Amazon Bedrock Marketplace in
%% your Amazon Web Services account.
-spec list_marketplace_model_endpoints(aws_client:aws_client()) ->
    {ok, list_marketplace_model_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_marketplace_model_endpoints_errors(), tuple()}.
list_marketplace_model_endpoints(Client)
  when is_map(Client) ->
    list_marketplace_model_endpoints(Client, #{}, #{}).

-spec list_marketplace_model_endpoints(aws_client:aws_client(), map(), map()) ->
    {ok, list_marketplace_model_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_marketplace_model_endpoints_errors(), tuple()}.
list_marketplace_model_endpoints(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_marketplace_model_endpoints(Client, QueryMap, HeadersMap, []).

-spec list_marketplace_model_endpoints(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_marketplace_model_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_marketplace_model_endpoints_errors(), tuple()}.
list_marketplace_model_endpoints(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/marketplace-model/endpoints"],
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
        {<<"modelSourceIdentifier">>, maps:get(<<"modelSourceIdentifier">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of model copy jobs that you have submitted.
%%
%% You can filter the jobs to return based on one or more criteria. For more
%% information, see Copy models to be used in other regions:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/copy-model.html in
%% the Amazon Bedrock User Guide:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html.
-spec list_model_copy_jobs(aws_client:aws_client()) ->
    {ok, list_model_copy_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_model_copy_jobs_errors(), tuple()}.
list_model_copy_jobs(Client)
  when is_map(Client) ->
    list_model_copy_jobs(Client, #{}, #{}).

-spec list_model_copy_jobs(aws_client:aws_client(), map(), map()) ->
    {ok, list_model_copy_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_model_copy_jobs_errors(), tuple()}.
list_model_copy_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_model_copy_jobs(Client, QueryMap, HeadersMap, []).

-spec list_model_copy_jobs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_model_copy_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_model_copy_jobs_errors(), tuple()}.
list_model_copy_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/model-copy-jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"creationTimeAfter">>, maps:get(<<"creationTimeAfter">>, QueryMap, undefined)},
        {<<"creationTimeBefore">>, maps:get(<<"creationTimeBefore">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"sortBy">>, maps:get(<<"sortBy">>, QueryMap, undefined)},
        {<<"sortOrder">>, maps:get(<<"sortOrder">>, QueryMap, undefined)},
        {<<"sourceAccountEquals">>, maps:get(<<"sourceAccountEquals">>, QueryMap, undefined)},
        {<<"sourceModelArnEquals">>, maps:get(<<"sourceModelArnEquals">>, QueryMap, undefined)},
        {<<"statusEquals">>, maps:get(<<"statusEquals">>, QueryMap, undefined)},
        {<<"outputModelNameContains">>, maps:get(<<"outputModelNameContains">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of model customization jobs that you have submitted.
%%
%% You can filter the jobs to return based on one or more criteria.
%%
%% For more information, see Custom models:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html in
%% the Amazon Bedrock User Guide:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html.
-spec list_model_customization_jobs(aws_client:aws_client()) ->
    {ok, list_model_customization_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_model_customization_jobs_errors(), tuple()}.
list_model_customization_jobs(Client)
  when is_map(Client) ->
    list_model_customization_jobs(Client, #{}, #{}).

-spec list_model_customization_jobs(aws_client:aws_client(), map(), map()) ->
    {ok, list_model_customization_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_model_customization_jobs_errors(), tuple()}.
list_model_customization_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_model_customization_jobs(Client, QueryMap, HeadersMap, []).

-spec list_model_customization_jobs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_model_customization_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_model_customization_jobs_errors(), tuple()}.
list_model_customization_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/model-customization-jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"creationTimeAfter">>, maps:get(<<"creationTimeAfter">>, QueryMap, undefined)},
        {<<"creationTimeBefore">>, maps:get(<<"creationTimeBefore">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nameContains">>, maps:get(<<"nameContains">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"sortBy">>, maps:get(<<"sortBy">>, QueryMap, undefined)},
        {<<"sortOrder">>, maps:get(<<"sortOrder">>, QueryMap, undefined)},
        {<<"statusEquals">>, maps:get(<<"statusEquals">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of import jobs you've submitted.
%%
%% You can filter the results to return based on one or more criteria. For
%% more information, see Import a customized model:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html
%% in the Amazon Bedrock User Guide:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html.
-spec list_model_import_jobs(aws_client:aws_client()) ->
    {ok, list_model_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_model_import_jobs_errors(), tuple()}.
list_model_import_jobs(Client)
  when is_map(Client) ->
    list_model_import_jobs(Client, #{}, #{}).

-spec list_model_import_jobs(aws_client:aws_client(), map(), map()) ->
    {ok, list_model_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_model_import_jobs_errors(), tuple()}.
list_model_import_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_model_import_jobs(Client, QueryMap, HeadersMap, []).

-spec list_model_import_jobs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_model_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_model_import_jobs_errors(), tuple()}.
list_model_import_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/model-import-jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"creationTimeAfter">>, maps:get(<<"creationTimeAfter">>, QueryMap, undefined)},
        {<<"creationTimeBefore">>, maps:get(<<"creationTimeBefore">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nameContains">>, maps:get(<<"nameContains">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"sortBy">>, maps:get(<<"sortBy">>, QueryMap, undefined)},
        {<<"sortOrder">>, maps:get(<<"sortOrder">>, QueryMap, undefined)},
        {<<"statusEquals">>, maps:get(<<"statusEquals">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all batch inference jobs in the account.
%%
%% For more information, see View details about a batch inference job:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/batch-inference-view.html.
-spec list_model_invocation_jobs(aws_client:aws_client()) ->
    {ok, list_model_invocation_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_model_invocation_jobs_errors(), tuple()}.
list_model_invocation_jobs(Client)
  when is_map(Client) ->
    list_model_invocation_jobs(Client, #{}, #{}).

-spec list_model_invocation_jobs(aws_client:aws_client(), map(), map()) ->
    {ok, list_model_invocation_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_model_invocation_jobs_errors(), tuple()}.
list_model_invocation_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_model_invocation_jobs(Client, QueryMap, HeadersMap, []).

-spec list_model_invocation_jobs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_model_invocation_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_model_invocation_jobs_errors(), tuple()}.
list_model_invocation_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/model-invocation-jobs"],
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
        {<<"nameContains">>, maps:get(<<"nameContains">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"sortBy">>, maps:get(<<"sortBy">>, QueryMap, undefined)},
        {<<"sortOrder">>, maps:get(<<"sortOrder">>, QueryMap, undefined)},
        {<<"statusEquals">>, maps:get(<<"statusEquals">>, QueryMap, undefined)},
        {<<"submitTimeAfter">>, maps:get(<<"submitTimeAfter">>, QueryMap, undefined)},
        {<<"submitTimeBefore">>, maps:get(<<"submitTimeBefore">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of prompt routers.
-spec list_prompt_routers(aws_client:aws_client()) ->
    {ok, list_prompt_routers_response(), tuple()} |
    {error, any()} |
    {error, list_prompt_routers_errors(), tuple()}.
list_prompt_routers(Client)
  when is_map(Client) ->
    list_prompt_routers(Client, #{}, #{}).

-spec list_prompt_routers(aws_client:aws_client(), map(), map()) ->
    {ok, list_prompt_routers_response(), tuple()} |
    {error, any()} |
    {error, list_prompt_routers_errors(), tuple()}.
list_prompt_routers(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_prompt_routers(Client, QueryMap, HeadersMap, []).

-spec list_prompt_routers(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_prompt_routers_response(), tuple()} |
    {error, any()} |
    {error, list_prompt_routers_errors(), tuple()}.
list_prompt_routers(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prompt-routers"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Provisioned Throughputs in the account.
%%
%% For more information, see Provisioned Throughput:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html
%% in the Amazon Bedrock User Guide:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html.
-spec list_provisioned_model_throughputs(aws_client:aws_client()) ->
    {ok, list_provisioned_model_throughputs_response(), tuple()} |
    {error, any()} |
    {error, list_provisioned_model_throughputs_errors(), tuple()}.
list_provisioned_model_throughputs(Client)
  when is_map(Client) ->
    list_provisioned_model_throughputs(Client, #{}, #{}).

-spec list_provisioned_model_throughputs(aws_client:aws_client(), map(), map()) ->
    {ok, list_provisioned_model_throughputs_response(), tuple()} |
    {error, any()} |
    {error, list_provisioned_model_throughputs_errors(), tuple()}.
list_provisioned_model_throughputs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_provisioned_model_throughputs(Client, QueryMap, HeadersMap, []).

-spec list_provisioned_model_throughputs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_provisioned_model_throughputs_response(), tuple()} |
    {error, any()} |
    {error, list_provisioned_model_throughputs_errors(), tuple()}.
list_provisioned_model_throughputs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/provisioned-model-throughputs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"creationTimeAfter">>, maps:get(<<"creationTimeAfter">>, QueryMap, undefined)},
        {<<"creationTimeBefore">>, maps:get(<<"creationTimeBefore">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"modelArnEquals">>, maps:get(<<"modelArnEquals">>, QueryMap, undefined)},
        {<<"nameContains">>, maps:get(<<"nameContains">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"sortBy">>, maps:get(<<"sortBy">>, QueryMap, undefined)},
        {<<"sortOrder">>, maps:get(<<"sortOrder">>, QueryMap, undefined)},
        {<<"statusEquals">>, maps:get(<<"statusEquals">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the tags associated with the specified resource.
%%
%% For more information, see Tagging resources:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
%% in the Amazon Bedrock User Guide:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listTagsForResource"],
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

%% @doc Set the configuration values for model invocation logging.
-spec put_model_invocation_logging_configuration(aws_client:aws_client(), put_model_invocation_logging_configuration_request()) ->
    {ok, put_model_invocation_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_model_invocation_logging_configuration_errors(), tuple()}.
put_model_invocation_logging_configuration(Client, Input) ->
    put_model_invocation_logging_configuration(Client, Input, []).

-spec put_model_invocation_logging_configuration(aws_client:aws_client(), put_model_invocation_logging_configuration_request(), proplists:proplist()) ->
    {ok, put_model_invocation_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_model_invocation_logging_configuration_errors(), tuple()}.
put_model_invocation_logging_configuration(Client, Input0, Options0) ->
    Method = put,
    Path = ["/logging/modelinvocations"],
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

%% @doc Put usecase for model access.
-spec put_use_case_for_model_access(aws_client:aws_client(), put_use_case_for_model_access_request()) ->
    {ok, put_use_case_for_model_access_response(), tuple()} |
    {error, any()} |
    {error, put_use_case_for_model_access_errors(), tuple()}.
put_use_case_for_model_access(Client, Input) ->
    put_use_case_for_model_access(Client, Input, []).

-spec put_use_case_for_model_access(aws_client:aws_client(), put_use_case_for_model_access_request(), proplists:proplist()) ->
    {ok, put_use_case_for_model_access_response(), tuple()} |
    {error, any()} |
    {error, put_use_case_for_model_access_errors(), tuple()}.
put_use_case_for_model_access(Client, Input0, Options0) ->
    Method = post,
    Path = ["/use-case-for-model-access"],
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

%% @doc Registers an existing Amazon SageMaker endpoint with Amazon Bedrock
%% Marketplace, allowing it to be used with Amazon Bedrock APIs.
-spec register_marketplace_model_endpoint(aws_client:aws_client(), binary() | list(), register_marketplace_model_endpoint_request()) ->
    {ok, register_marketplace_model_endpoint_response(), tuple()} |
    {error, any()} |
    {error, register_marketplace_model_endpoint_errors(), tuple()}.
register_marketplace_model_endpoint(Client, EndpointIdentifier, Input) ->
    register_marketplace_model_endpoint(Client, EndpointIdentifier, Input, []).

-spec register_marketplace_model_endpoint(aws_client:aws_client(), binary() | list(), register_marketplace_model_endpoint_request(), proplists:proplist()) ->
    {ok, register_marketplace_model_endpoint_response(), tuple()} |
    {error, any()} |
    {error, register_marketplace_model_endpoint_errors(), tuple()}.
register_marketplace_model_endpoint(Client, EndpointIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/marketplace-model/endpoints/", aws_util:encode_uri(EndpointIdentifier), "/registration"],
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

%% @doc Stops an evaluation job that is current being created or running.
-spec stop_evaluation_job(aws_client:aws_client(), binary() | list(), stop_evaluation_job_request()) ->
    {ok, stop_evaluation_job_response(), tuple()} |
    {error, any()} |
    {error, stop_evaluation_job_errors(), tuple()}.
stop_evaluation_job(Client, JobIdentifier, Input) ->
    stop_evaluation_job(Client, JobIdentifier, Input, []).

-spec stop_evaluation_job(aws_client:aws_client(), binary() | list(), stop_evaluation_job_request(), proplists:proplist()) ->
    {ok, stop_evaluation_job_response(), tuple()} |
    {error, any()} |
    {error, stop_evaluation_job_errors(), tuple()}.
stop_evaluation_job(Client, JobIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/evaluation-job/", aws_util:encode_uri(JobIdentifier), "/stop"],
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

%% @doc Stops an active model customization job.
%%
%% For more information, see Custom models:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html in
%% the Amazon Bedrock User Guide:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html.
-spec stop_model_customization_job(aws_client:aws_client(), binary() | list(), stop_model_customization_job_request()) ->
    {ok, stop_model_customization_job_response(), tuple()} |
    {error, any()} |
    {error, stop_model_customization_job_errors(), tuple()}.
stop_model_customization_job(Client, JobIdentifier, Input) ->
    stop_model_customization_job(Client, JobIdentifier, Input, []).

-spec stop_model_customization_job(aws_client:aws_client(), binary() | list(), stop_model_customization_job_request(), proplists:proplist()) ->
    {ok, stop_model_customization_job_response(), tuple()} |
    {error, any()} |
    {error, stop_model_customization_job_errors(), tuple()}.
stop_model_customization_job(Client, JobIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/model-customization-jobs/", aws_util:encode_uri(JobIdentifier), "/stop"],
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

%% @doc Stops a batch inference job.
%%
%% You're only charged for tokens that were already processed. For more
%% information, see Stop a batch inference job:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/batch-inference-stop.html.
-spec stop_model_invocation_job(aws_client:aws_client(), binary() | list(), stop_model_invocation_job_request()) ->
    {ok, stop_model_invocation_job_response(), tuple()} |
    {error, any()} |
    {error, stop_model_invocation_job_errors(), tuple()}.
stop_model_invocation_job(Client, JobIdentifier, Input) ->
    stop_model_invocation_job(Client, JobIdentifier, Input, []).

-spec stop_model_invocation_job(aws_client:aws_client(), binary() | list(), stop_model_invocation_job_request(), proplists:proplist()) ->
    {ok, stop_model_invocation_job_response(), tuple()} |
    {error, any()} |
    {error, stop_model_invocation_job_errors(), tuple()}.
stop_model_invocation_job(Client, JobIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/model-invocation-job/", aws_util:encode_uri(JobIdentifier), "/stop"],
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

%% @doc Associate tags with a resource.
%%
%% For more information, see Tagging resources:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
%% in the Amazon Bedrock User Guide:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tagResource"],
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

%% @doc Remove one or more tags from a resource.
%%
%% For more information, see Tagging resources:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
%% in the Amazon Bedrock User Guide:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/untagResource"],
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

%% @doc Updates a guardrail with the values you specify.
%%
%% Specify a `name' and optional `description'.
%%
%% Specify messages for when the guardrail successfully blocks a prompt or a
%% model response in the `blockedInputMessaging' and
%% `blockedOutputsMessaging' fields.
%%
%% Specify topics for the guardrail to deny in the `topicPolicyConfig'
%% object. Each GuardrailTopicConfig:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GuardrailTopicConfig.html
%% object in the `topicsConfig' list pertains to one topic.
%%
%% Give a `name' and `description' so that the guardrail can properly
%% identify the topic.
%%
%% Specify `DENY' in the `type' field.
%%
%% (Optional) Provide up to five prompts that you would categorize as
%% belonging to the topic in the `examples' list.
%%
%% Specify filter strengths for the harmful categories defined in Amazon
%% Bedrock in the `contentPolicyConfig' object. Each
%% GuardrailContentFilterConfig:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GuardrailContentFilterConfig.html
%% object in the `filtersConfig' list pertains to a harmful category. For
%% more information, see Content filters:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails-content-filters.
%% For more information about the fields in a content filter, see
%% GuardrailContentFilterConfig:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GuardrailContentFilterConfig.html.
%%
%% Specify the category in the `type' field.
%%
%% Specify the strength of the filter for prompts in the `inputStrength'
%% field and for model responses in the `strength' field of the
%% GuardrailContentFilterConfig:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GuardrailContentFilterConfig.html.
%%
%% (Optional) For security, include the ARN of a KMS key in the
%% `kmsKeyId' field.
-spec update_guardrail(aws_client:aws_client(), binary() | list(), update_guardrail_request()) ->
    {ok, update_guardrail_response(), tuple()} |
    {error, any()} |
    {error, update_guardrail_errors(), tuple()}.
update_guardrail(Client, GuardrailIdentifier, Input) ->
    update_guardrail(Client, GuardrailIdentifier, Input, []).

-spec update_guardrail(aws_client:aws_client(), binary() | list(), update_guardrail_request(), proplists:proplist()) ->
    {ok, update_guardrail_response(), tuple()} |
    {error, any()} |
    {error, update_guardrail_errors(), tuple()}.
update_guardrail(Client, GuardrailIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/guardrails/", aws_util:encode_uri(GuardrailIdentifier), ""],
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

%% @doc Updates the configuration of an existing endpoint for a model from
%% Amazon Bedrock Marketplace.
-spec update_marketplace_model_endpoint(aws_client:aws_client(), binary() | list(), update_marketplace_model_endpoint_request()) ->
    {ok, update_marketplace_model_endpoint_response(), tuple()} |
    {error, any()} |
    {error, update_marketplace_model_endpoint_errors(), tuple()}.
update_marketplace_model_endpoint(Client, EndpointArn, Input) ->
    update_marketplace_model_endpoint(Client, EndpointArn, Input, []).

-spec update_marketplace_model_endpoint(aws_client:aws_client(), binary() | list(), update_marketplace_model_endpoint_request(), proplists:proplist()) ->
    {ok, update_marketplace_model_endpoint_response(), tuple()} |
    {error, any()} |
    {error, update_marketplace_model_endpoint_errors(), tuple()}.
update_marketplace_model_endpoint(Client, EndpointArn, Input0, Options0) ->
    Method = patch,
    Path = ["/marketplace-model/endpoints/", aws_util:encode_uri(EndpointArn), ""],
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

%% @doc Updates the name or associated model for a Provisioned Throughput.
%%
%% For more information, see Provisioned Throughput:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html
%% in the Amazon Bedrock User Guide:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html.
-spec update_provisioned_model_throughput(aws_client:aws_client(), binary() | list(), update_provisioned_model_throughput_request()) ->
    {ok, update_provisioned_model_throughput_response(), tuple()} |
    {error, any()} |
    {error, update_provisioned_model_throughput_errors(), tuple()}.
update_provisioned_model_throughput(Client, ProvisionedModelId, Input) ->
    update_provisioned_model_throughput(Client, ProvisionedModelId, Input, []).

-spec update_provisioned_model_throughput(aws_client:aws_client(), binary() | list(), update_provisioned_model_throughput_request(), proplists:proplist()) ->
    {ok, update_provisioned_model_throughput_response(), tuple()} |
    {error, any()} |
    {error, update_provisioned_model_throughput_errors(), tuple()}.
update_provisioned_model_throughput(Client, ProvisionedModelId, Input0, Options0) ->
    Method = patch,
    Path = ["/provisioned-model-throughput/", aws_util:encode_uri(ProvisionedModelId), ""],
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
    Client1 = Client#{service => <<"bedrock">>},
    Host = build_host(<<"bedrock">>, Client1),
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
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload, [{uri_encode_path, true}]),
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
