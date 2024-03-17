%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Describes the API operations for creating and managing Amazon Bedrock
%% models.
-module(aws_bedrock).

-export([create_model_customization_job/2,
         create_model_customization_job/3,
         create_provisioned_model_throughput/2,
         create_provisioned_model_throughput/3,
         delete_custom_model/3,
         delete_custom_model/4,
         delete_model_invocation_logging_configuration/2,
         delete_model_invocation_logging_configuration/3,
         delete_provisioned_model_throughput/3,
         delete_provisioned_model_throughput/4,
         get_custom_model/2,
         get_custom_model/4,
         get_custom_model/5,
         get_foundation_model/2,
         get_foundation_model/4,
         get_foundation_model/5,
         get_model_customization_job/2,
         get_model_customization_job/4,
         get_model_customization_job/5,
         get_model_invocation_logging_configuration/1,
         get_model_invocation_logging_configuration/3,
         get_model_invocation_logging_configuration/4,
         get_provisioned_model_throughput/2,
         get_provisioned_model_throughput/4,
         get_provisioned_model_throughput/5,
         list_custom_models/1,
         list_custom_models/3,
         list_custom_models/4,
         list_foundation_models/1,
         list_foundation_models/3,
         list_foundation_models/4,
         list_model_customization_jobs/1,
         list_model_customization_jobs/3,
         list_model_customization_jobs/4,
         list_provisioned_model_throughputs/1,
         list_provisioned_model_throughputs/3,
         list_provisioned_model_throughputs/4,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_model_invocation_logging_configuration/2,
         put_model_invocation_logging_configuration/3,
         stop_model_customization_job/3,
         stop_model_customization_job/4,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
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
%%   <<"status">> => list(any())
%% }
-type model_customization_job_summary() :: #{binary() => any()}.


%% Example:
%% list_custom_models_request() :: #{
%%   <<"baseModelArnEquals">> => string(),
%%   <<"creationTimeAfter">> => non_neg_integer(),
%%   <<"creationTimeBefore">> => non_neg_integer(),
%%   <<"foundationModelArnEquals">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nameContains">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any())
%% }
-type list_custom_models_request() :: #{binary() => any()}.

%% Example:
%% delete_provisioned_model_throughput_response() :: #{}
-type delete_provisioned_model_throughput_response() :: #{}.


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
%% tag_resource_request() :: #{
%%   <<"resourceARN">> := string(),
%%   <<"tags">> := list(tag()())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_custom_model_response() :: #{}
-type delete_custom_model_response() :: #{}.

%% Example:
%% get_provisioned_model_throughput_request() :: #{}
-type get_provisioned_model_throughput_request() :: #{}.


%% Example:
%% create_model_customization_job_response() :: #{
%%   <<"jobArn">> => string()
%% }
-type create_model_customization_job_response() :: #{binary() => any()}.


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
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


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
%% cloud_watch_config() :: #{
%%   <<"largeDataDeliveryS3Config">> => s3_config(),
%%   <<"logGroupName">> => string(),
%%   <<"roleArn">> => string()
%% }
-type cloud_watch_config() :: #{binary() => any()}.


%% Example:
%% logging_config() :: #{
%%   <<"cloudWatchConfig">> => cloud_watch_config(),
%%   <<"embeddingDataDeliveryEnabled">> => [boolean()],
%%   <<"imageDataDeliveryEnabled">> => [boolean()],
%%   <<"s3Config">> => s3_config(),
%%   <<"textDataDeliveryEnabled">> => [boolean()]
%% }
-type logging_config() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceARN">> := string(),
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_provisioned_model_throughputs_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"provisionedModelSummaries">> => list(provisioned_model_summary()())
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
%% get_foundation_model_request() :: #{}
-type get_foundation_model_request() :: #{}.

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
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% delete_provisioned_model_throughput_request() :: #{}
-type delete_provisioned_model_throughput_request() :: #{}.


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
%% s3_config() :: #{
%%   <<"bucketName">> => string(),
%%   <<"keyPrefix">> => string()
%% }
-type s3_config() :: #{binary() => any()}.


%% Example:
%% get_custom_model_response() :: #{
%%   <<"baseModelArn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"customizationType">> => list(any()),
%%   <<"hyperParameters">> => map(),
%%   <<"jobArn">> => string(),
%%   <<"jobName">> => string(),
%%   <<"modelArn">> => string(),
%%   <<"modelKmsKeyArn">> => string(),
%%   <<"modelName">> => string(),
%%   <<"outputDataConfig">> => output_data_config(),
%%   <<"trainingDataConfig">> => training_data_config(),
%%   <<"trainingMetrics">> => training_metrics(),
%%   <<"validationDataConfig">> => validation_data_config(),
%%   <<"validationMetrics">> => list(validator_metric()())
%% }
-type get_custom_model_response() :: #{binary() => any()}.


%% Example:
%% update_provisioned_model_throughput_request() :: #{
%%   <<"desiredModelId">> => string(),
%%   <<"desiredProvisionedModelName">> => string()
%% }
-type update_provisioned_model_throughput_request() :: #{binary() => any()}.


%% Example:
%% create_provisioned_model_throughput_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"commitmentDuration">> => list(any()),
%%   <<"modelId">> := string(),
%%   <<"modelUnits">> := integer(),
%%   <<"provisionedModelName">> := string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_provisioned_model_throughput_request() :: #{binary() => any()}.


%% Example:
%% vpc_config() :: #{
%%   <<"securityGroupIds">> => list(string()()),
%%   <<"subnetIds">> => list(string()())
%% }
-type vpc_config() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => list(tag()())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% delete_model_invocation_logging_configuration_response() :: #{}
-type delete_model_invocation_logging_configuration_response() :: #{}.


%% Example:
%% training_metrics() :: #{
%%   <<"trainingLoss">> => float()
%% }
-type training_metrics() :: #{binary() => any()}.

%% Example:
%% get_custom_model_request() :: #{}
-type get_custom_model_request() :: #{}.

%% Example:
%% get_model_customization_job_request() :: #{}
-type get_model_customization_job_request() :: #{}.

%% Example:
%% get_model_invocation_logging_configuration_request() :: #{}
-type get_model_invocation_logging_configuration_request() :: #{}.


%% Example:
%% list_foundation_models_request() :: #{
%%   <<"byCustomizationType">> => list(any()),
%%   <<"byInferenceType">> => list(any()),
%%   <<"byOutputModality">> => list(any()),
%%   <<"byProvider">> => string()
%% }
-type list_foundation_models_request() :: #{binary() => any()}.


%% Example:
%% foundation_model_lifecycle() :: #{
%%   <<"status">> => list(any())
%% }
-type foundation_model_lifecycle() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% validation_data_config() :: #{
%%   <<"validators">> => list(validator()())
%% }
-type validation_data_config() :: #{binary() => any()}.

%% Example:
%% update_provisioned_model_throughput_response() :: #{}
-type update_provisioned_model_throughput_response() :: #{}.


%% Example:
%% put_model_invocation_logging_configuration_request() :: #{
%%   <<"loggingConfig">> := logging_config()
%% }
-type put_model_invocation_logging_configuration_request() :: #{binary() => any()}.


%% Example:
%% list_model_customization_jobs_response() :: #{
%%   <<"modelCustomizationJobSummaries">> => list(model_customization_job_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_model_customization_jobs_response() :: #{binary() => any()}.


%% Example:
%% list_foundation_models_response() :: #{
%%   <<"modelSummaries">> => list(foundation_model_summary()())
%% }
-type list_foundation_models_response() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% create_model_customization_job_request() :: #{
%%   <<"baseModelIdentifier">> := string(),
%%   <<"clientRequestToken">> => string(),
%%   <<"customModelKmsKeyId">> => string(),
%%   <<"customModelName">> := string(),
%%   <<"customModelTags">> => list(tag()()),
%%   <<"customizationType">> => list(any()),
%%   <<"hyperParameters">> := map(),
%%   <<"jobName">> := string(),
%%   <<"jobTags">> => list(tag()()),
%%   <<"outputDataConfig">> := output_data_config(),
%%   <<"roleArn">> := string(),
%%   <<"trainingDataConfig">> := training_data_config(),
%%   <<"validationDataConfig">> => validation_data_config(),
%%   <<"vpcConfig">> => vpc_config()
%% }
-type create_model_customization_job_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% validator_metric() :: #{
%%   <<"validationLoss">> => float()
%% }
-type validator_metric() :: #{binary() => any()}.

%% Example:
%% stop_model_customization_job_request() :: #{}
-type stop_model_customization_job_request() :: #{}.

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
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% get_model_customization_job_response() :: #{
%%   <<"baseModelArn">> => string(),
%%   <<"clientRequestToken">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
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
%%   <<"trainingDataConfig">> => training_data_config(),
%%   <<"trainingMetrics">> => training_metrics(),
%%   <<"validationDataConfig">> => validation_data_config(),
%%   <<"validationMetrics">> => list(validator_metric()()),
%%   <<"vpcConfig">> => vpc_config()
%% }
-type get_model_customization_job_response() :: #{binary() => any()}.


%% Example:
%% list_custom_models_response() :: #{
%%   <<"modelSummaries">> => list(custom_model_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_custom_models_response() :: #{binary() => any()}.


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
%% put_model_invocation_logging_configuration_response() :: #{}
-type put_model_invocation_logging_configuration_response() :: #{}.


%% Example:
%% validator() :: #{
%%   <<"s3Uri">> => string()
%% }
-type validator() :: #{binary() => any()}.


%% Example:
%% training_data_config() :: #{
%%   <<"s3Uri">> => string()
%% }
-type training_data_config() :: #{binary() => any()}.

%% Example:
%% delete_model_invocation_logging_configuration_request() :: #{}
-type delete_model_invocation_logging_configuration_request() :: #{}.


%% Example:
%% custom_model_summary() :: #{
%%   <<"baseModelArn">> => string(),
%%   <<"baseModelName">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"customizationType">> => list(any()),
%%   <<"modelArn">> => string(),
%%   <<"modelName">> => string()
%% }
-type custom_model_summary() :: #{binary() => any()}.


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

-type create_model_customization_job_errors() ::
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

-type delete_model_invocation_logging_configuration_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type delete_provisioned_model_throughput_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_custom_model_errors() ::
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

-type get_model_customization_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_model_invocation_logging_configuration_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_provisioned_model_throughput_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_custom_models_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_foundation_models_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_model_customization_jobs_errors() ::
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

-type stop_model_customization_job_errors() ::
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

-type update_provisioned_model_throughput_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a fine-tuning job to customize a base model.
%%
%% You specify the base foundation model and the location of the training
%% data.
%% After the model-customization job completes successfully, your custom
%% model resource will be ready to use. Training data
%% contains input and output text for each record in a JSONL format.
%% Optionally, you can specify validation data
%% in the same format as the training data. Amazon Bedrock returns validation
%% loss metrics and output generations
%% after the job completes.
%%
%% Model-customization jobs are asynchronous and the completion time depends
%% on the base model and the training/validation data size.
%% To monitor a job, use the `GetModelCustomizationJob' operation to
%% retrieve the job status.
%%
%% For more information, see Custom models:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html in
%% the Bedrock User Guide.
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

%% @doc Creates a provisioned throughput with dedicated capacity for a
%% foundation model or a fine-tuned model.
%%
%% For more information, see Provisioned throughput:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
%% in the Bedrock User Guide.
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
%% the Bedrock User Guide.
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

%% @doc Deletes a provisioned throughput.
%%
%% For more information, see Provisioned throughput:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
%% in the Bedrock User Guide.
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

%% @doc Get the properties associated with a Amazon Bedrock custom model that
%% you have created.For more information, see Custom models:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html in
%% the Bedrock User Guide.
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

%% @doc Retrieves the properties associated with a model-customization job,
%% including the status of the job.
%%
%% For more information, see Custom models:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html in
%% the Bedrock User Guide.
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

%% @doc Get details for a provisioned throughput.
%%
%% For more information, see Provisioned throughput:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
%% in the Bedrock User Guide.
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

%% @doc Returns a list of the custom models that you have created with the
%% `CreateModelCustomizationJob' operation.
%%
%% For more information, see Custom models:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html in
%% the Bedrock User Guide.
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
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nameContains">>, maps:get(<<"nameContains">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"sortBy">>, maps:get(<<"sortBy">>, QueryMap, undefined)},
        {<<"sortOrder">>, maps:get(<<"sortOrder">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List of Amazon Bedrock foundation models that you can use.
%%
%% For more information, see Foundation models:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/foundation-models.html
%% in the Bedrock User Guide.
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

%% @doc Returns a list of model customization jobs that you have submitted.
%%
%% You can filter the jobs to return based on
%% one or more criteria.
%%
%% For more information, see Custom models:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html in
%% the Bedrock User Guide.
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

%% @doc List the provisioned capacities.
%%
%% For more information, see Provisioned throughput:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
%% in the Bedrock User Guide.
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
%% in the Bedrock User Guide.
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

%% @doc Stops an active model customization job.
%%
%% For more information, see Custom models:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html in
%% the Bedrock User Guide.
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

%% @doc Associate tags with a resource.
%%
%% For more information, see Tagging resources:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
%% in the Bedrock User Guide.
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
%% in the Bedrock User Guide.
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

%% @doc Update a provisioned throughput.
%%
%% For more information, see Provisioned throughput:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
%% in the Bedrock User Guide.
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
