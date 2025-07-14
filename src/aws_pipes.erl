%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon EventBridge Pipes connects event sources to targets.
%%
%% Pipes reduces the need
%% for specialized knowledge and integration code when developing event
%% driven architectures.
%% This helps ensures consistency across your company’s applications. With
%% Pipes, the target
%% can be any available EventBridge target. To set up a pipe, you select the
%% event
%% source, add optional event filtering, define optional enrichment, and
%% select the target for
%% the event data.
-module(aws_pipes).

-export([create_pipe/3,
         create_pipe/4,
         delete_pipe/3,
         delete_pipe/4,
         describe_pipe/2,
         describe_pipe/4,
         describe_pipe/5,
         list_pipes/1,
         list_pipes/3,
         list_pipes/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_pipe/3,
         start_pipe/4,
         stop_pipe/3,
         stop_pipe/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_pipe/3,
         update_pipe/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% pipe_source_rabbit_mq_broker_parameters() :: #{
%%   <<"BatchSize">> => integer(),
%%   <<"Credentials">> => list(),
%%   <<"MaximumBatchingWindowInSeconds">> => integer(),
%%   <<"QueueName">> => string(),
%%   <<"VirtualHost">> => string()
%% }
-type pipe_source_rabbit_mq_broker_parameters() :: #{binary() => any()}.


%% Example:
%% update_pipe_source_active_mq_broker_parameters() :: #{
%%   <<"BatchSize">> => integer(),
%%   <<"Credentials">> => list(),
%%   <<"MaximumBatchingWindowInSeconds">> => integer()
%% }
-type update_pipe_source_active_mq_broker_parameters() :: #{binary() => any()}.


%% Example:
%% delete_pipe_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"CurrentState">> => string(),
%%   <<"DesiredState">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string()
%% }
-type delete_pipe_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> => map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% pipe_target_sage_maker_pipeline_parameters() :: #{
%%   <<"PipelineParameterList">> => list(sage_maker_pipeline_parameter())
%% }
-type pipe_target_sage_maker_pipeline_parameters() :: #{binary() => any()}.


%% Example:
%% pipe_log_configuration() :: #{
%%   <<"CloudwatchLogsLogDestination">> => cloudwatch_logs_log_destination(),
%%   <<"FirehoseLogDestination">> => firehose_log_destination(),
%%   <<"IncludeExecutionData">> => list(string()),
%%   <<"Level">> => string(),
%%   <<"S3LogDestination">> => s3_log_destination()
%% }
-type pipe_log_configuration() :: #{binary() => any()}.


%% Example:
%% cloudwatch_logs_log_destination_parameters() :: #{
%%   <<"LogGroupArn">> => string()
%% }
-type cloudwatch_logs_log_destination_parameters() :: #{binary() => any()}.


%% Example:
%% batch_retry_strategy() :: #{
%%   <<"Attempts">> => integer()
%% }
-type batch_retry_strategy() :: #{binary() => any()}.


%% Example:
%% update_pipe_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"CurrentState">> => string(),
%%   <<"DesiredState">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string()
%% }
-type update_pipe_response() :: #{binary() => any()}.


%% Example:
%% ecs_environment_variable() :: #{
%%   <<"name">> => string(),
%%   <<"value">> => string()
%% }
-type ecs_environment_variable() :: #{binary() => any()}.


%% Example:
%% update_pipe_source_self_managed_kafka_parameters() :: #{
%%   <<"BatchSize">> => integer(),
%%   <<"Credentials">> => list(),
%%   <<"MaximumBatchingWindowInSeconds">> => integer(),
%%   <<"ServerRootCaCertificate">> => string(),
%%   <<"Vpc">> => self_managed_kafka_access_configuration_vpc()
%% }
-type update_pipe_source_self_managed_kafka_parameters() :: #{binary() => any()}.


%% Example:
%% update_pipe_request() :: #{
%%   <<"Description">> => string(),
%%   <<"DesiredState">> => string(),
%%   <<"Enrichment">> => string(),
%%   <<"EnrichmentParameters">> => pipe_enrichment_parameters(),
%%   <<"KmsKeyIdentifier">> => string(),
%%   <<"LogConfiguration">> => pipe_log_configuration_parameters(),
%%   <<"RoleArn">> := string(),
%%   <<"SourceParameters">> => update_pipe_source_parameters(),
%%   <<"Target">> => string(),
%%   <<"TargetParameters">> => pipe_target_parameters()
%% }
-type update_pipe_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% filter_criteria() :: #{
%%   <<"Filters">> => list(filter())
%% }
-type filter_criteria() :: #{binary() => any()}.


%% Example:
%% list_pipes_request() :: #{
%%   <<"CurrentState">> => string(),
%%   <<"DesiredState">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"NamePrefix">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SourcePrefix">> => string(),
%%   <<"TargetPrefix">> => string()
%% }
-type list_pipes_request() :: #{binary() => any()}.


%% Example:
%% ecs_inference_accelerator_override() :: #{
%%   <<"deviceName">> => string(),
%%   <<"deviceType">> => string()
%% }
-type ecs_inference_accelerator_override() :: #{binary() => any()}.


%% Example:
%% start_pipe_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"CurrentState">> => string(),
%%   <<"DesiredState">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string()
%% }
-type start_pipe_response() :: #{binary() => any()}.


%% Example:
%% batch_array_properties() :: #{
%%   <<"Size">> => integer()
%% }
-type batch_array_properties() :: #{binary() => any()}.


%% Example:
%% multi_measure_attribute_mapping() :: #{
%%   <<"MeasureValue">> => string(),
%%   <<"MeasureValueType">> => string(),
%%   <<"MultiMeasureAttributeName">> => string()
%% }
-type multi_measure_attribute_mapping() :: #{binary() => any()}.


%% Example:
%% pipe_target_state_machine_parameters() :: #{
%%   <<"InvocationType">> => string()
%% }
-type pipe_target_state_machine_parameters() :: #{binary() => any()}.


%% Example:
%% pipe_target_event_bridge_event_bus_parameters() :: #{
%%   <<"DetailType">> => string(),
%%   <<"EndpointId">> => string(),
%%   <<"Resources">> => list(string()),
%%   <<"Source">> => string(),
%%   <<"Time">> => string()
%% }
-type pipe_target_event_bridge_event_bus_parameters() :: #{binary() => any()}.


%% Example:
%% sage_maker_pipeline_parameter() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type sage_maker_pipeline_parameter() :: #{binary() => any()}.


%% Example:
%% batch_resource_requirement() :: #{
%%   <<"Type">> => string(),
%%   <<"Value">> => [string()]
%% }
-type batch_resource_requirement() :: #{binary() => any()}.

%% Example:
%% describe_pipe_request() :: #{}
-type describe_pipe_request() :: #{}.


%% Example:
%% s3_log_destination() :: #{
%%   <<"BucketName">> => string(),
%%   <<"BucketOwner">> => string(),
%%   <<"OutputFormat">> => string(),
%%   <<"Prefix">> => string()
%% }
-type s3_log_destination() :: #{binary() => any()}.


%% Example:
%% update_pipe_source_rabbit_mq_broker_parameters() :: #{
%%   <<"BatchSize">> => integer(),
%%   <<"Credentials">> => list(),
%%   <<"MaximumBatchingWindowInSeconds">> => integer()
%% }
-type update_pipe_source_rabbit_mq_broker_parameters() :: #{binary() => any()}.


%% Example:
%% pipe_source_managed_streaming_kafka_parameters() :: #{
%%   <<"BatchSize">> => integer(),
%%   <<"ConsumerGroupID">> => string(),
%%   <<"Credentials">> => list(),
%%   <<"MaximumBatchingWindowInSeconds">> => integer(),
%%   <<"StartingPosition">> => string(),
%%   <<"TopicName">> => string()
%% }
-type pipe_source_managed_streaming_kafka_parameters() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> => list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% firehose_log_destination_parameters() :: #{
%%   <<"DeliveryStreamArn">> => string()
%% }
-type firehose_log_destination_parameters() :: #{binary() => any()}.

%% Example:
%% start_pipe_request() :: #{}
-type start_pipe_request() :: #{}.


%% Example:
%% cloudwatch_logs_log_destination() :: #{
%%   <<"LogGroupArn">> => string()
%% }
-type cloudwatch_logs_log_destination() :: #{binary() => any()}.


%% Example:
%% pipe() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"CurrentState">> => string(),
%%   <<"DesiredState">> => string(),
%%   <<"Enrichment">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Source">> => string(),
%%   <<"StateReason">> => string(),
%%   <<"Target">> => string()
%% }
-type pipe() :: #{binary() => any()}.


%% Example:
%% pipe_target_parameters() :: #{
%%   <<"BatchJobParameters">> => pipe_target_batch_job_parameters(),
%%   <<"CloudWatchLogsParameters">> => pipe_target_cloud_watch_logs_parameters(),
%%   <<"EcsTaskParameters">> => pipe_target_ecs_task_parameters(),
%%   <<"EventBridgeEventBusParameters">> => pipe_target_event_bridge_event_bus_parameters(),
%%   <<"HttpParameters">> => pipe_target_http_parameters(),
%%   <<"InputTemplate">> => string(),
%%   <<"KinesisStreamParameters">> => pipe_target_kinesis_stream_parameters(),
%%   <<"LambdaFunctionParameters">> => pipe_target_lambda_function_parameters(),
%%   <<"RedshiftDataParameters">> => pipe_target_redshift_data_parameters(),
%%   <<"SageMakerPipelineParameters">> => pipe_target_sage_maker_pipeline_parameters(),
%%   <<"SqsQueueParameters">> => pipe_target_sqs_queue_parameters(),
%%   <<"StepFunctionStateMachineParameters">> => pipe_target_state_machine_parameters(),
%%   <<"TimestreamParameters">> => pipe_target_timestream_parameters()
%% }
-type pipe_target_parameters() :: #{binary() => any()}.


%% Example:
%% pipe_source_parameters() :: #{
%%   <<"ActiveMQBrokerParameters">> => pipe_source_active_mq_broker_parameters(),
%%   <<"DynamoDBStreamParameters">> => pipe_source_dynamo_db_stream_parameters(),
%%   <<"FilterCriteria">> => filter_criteria(),
%%   <<"KinesisStreamParameters">> => pipe_source_kinesis_stream_parameters(),
%%   <<"ManagedStreamingKafkaParameters">> => pipe_source_managed_streaming_kafka_parameters(),
%%   <<"RabbitMQBrokerParameters">> => pipe_source_rabbit_mq_broker_parameters(),
%%   <<"SelfManagedKafkaParameters">> => pipe_source_self_managed_kafka_parameters(),
%%   <<"SqsQueueParameters">> => pipe_source_sqs_queue_parameters()
%% }
-type pipe_source_parameters() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% single_measure_mapping() :: #{
%%   <<"MeasureName">> => string(),
%%   <<"MeasureValue">> => string(),
%%   <<"MeasureValueType">> => string()
%% }
-type single_measure_mapping() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% pipe_target_batch_job_parameters() :: #{
%%   <<"ArrayProperties">> => batch_array_properties(),
%%   <<"ContainerOverrides">> => batch_container_overrides(),
%%   <<"DependsOn">> => list(batch_job_dependency()),
%%   <<"JobDefinition">> => [string()],
%%   <<"JobName">> => [string()],
%%   <<"Parameters">> => map(),
%%   <<"RetryStrategy">> => batch_retry_strategy()
%% }
-type pipe_target_batch_job_parameters() :: #{binary() => any()}.


%% Example:
%% pipe_source_sqs_queue_parameters() :: #{
%%   <<"BatchSize">> => integer(),
%%   <<"MaximumBatchingWindowInSeconds">> => integer()
%% }
-type pipe_source_sqs_queue_parameters() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()],
%%   <<"serviceCode">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% pipe_target_http_parameters() :: #{
%%   <<"HeaderParameters">> => map(),
%%   <<"PathParameterValues">> => list(string()),
%%   <<"QueryStringParameters">> => map()
%% }
-type pipe_target_http_parameters() :: #{binary() => any()}.


%% Example:
%% pipe_target_sqs_queue_parameters() :: #{
%%   <<"MessageDeduplicationId">> => string(),
%%   <<"MessageGroupId">> => string()
%% }
-type pipe_target_sqs_queue_parameters() :: #{binary() => any()}.


%% Example:
%% pipe_target_kinesis_stream_parameters() :: #{
%%   <<"PartitionKey">> => string()
%% }
-type pipe_target_kinesis_stream_parameters() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% list_pipes_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Pipes">> => list(pipe())
%% }
-type list_pipes_response() :: #{binary() => any()}.


%% Example:
%% pipe_target_cloud_watch_logs_parameters() :: #{
%%   <<"LogStreamName">> => string(),
%%   <<"Timestamp">> => string()
%% }
-type pipe_target_cloud_watch_logs_parameters() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% s3_log_destination_parameters() :: #{
%%   <<"BucketName">> => string(),
%%   <<"BucketOwner">> => string(),
%%   <<"OutputFormat">> => string(),
%%   <<"Prefix">> => string()
%% }
-type s3_log_destination_parameters() :: #{binary() => any()}.


%% Example:
%% create_pipe_request() :: #{
%%   <<"Description">> => string(),
%%   <<"DesiredState">> => string(),
%%   <<"Enrichment">> => string(),
%%   <<"EnrichmentParameters">> => pipe_enrichment_parameters(),
%%   <<"KmsKeyIdentifier">> => string(),
%%   <<"LogConfiguration">> => pipe_log_configuration_parameters(),
%%   <<"RoleArn">> := string(),
%%   <<"Source">> := string(),
%%   <<"SourceParameters">> => pipe_source_parameters(),
%%   <<"Tags">> => map(),
%%   <<"Target">> := string(),
%%   <<"TargetParameters">> => pipe_target_parameters()
%% }
-type create_pipe_request() :: #{binary() => any()}.


%% Example:
%% multi_measure_mapping() :: #{
%%   <<"MultiMeasureAttributeMappings">> => list(multi_measure_attribute_mapping()),
%%   <<"MultiMeasureName">> => string()
%% }
-type multi_measure_mapping() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => string(),
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% filter() :: #{
%%   <<"Pattern">> => string()
%% }
-type filter() :: #{binary() => any()}.


%% Example:
%% ecs_container_override() :: #{
%%   <<"Command">> => list(string()),
%%   <<"Cpu">> => [integer()],
%%   <<"Environment">> => list(ecs_environment_variable()),
%%   <<"EnvironmentFiles">> => list(ecs_environment_file()),
%%   <<"Memory">> => [integer()],
%%   <<"MemoryReservation">> => [integer()],
%%   <<"Name">> => string(),
%%   <<"ResourceRequirements">> => list(ecs_resource_requirement())
%% }
-type ecs_container_override() :: #{binary() => any()}.


%% Example:
%% ecs_environment_file() :: #{
%%   <<"type">> => string(),
%%   <<"value">> => string()
%% }
-type ecs_environment_file() :: #{binary() => any()}.


%% Example:
%% stop_pipe_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"CurrentState">> => string(),
%%   <<"DesiredState">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string()
%% }
-type stop_pipe_response() :: #{binary() => any()}.


%% Example:
%% ecs_task_override() :: #{
%%   <<"ContainerOverrides">> => list(ecs_container_override()),
%%   <<"Cpu">> => string(),
%%   <<"EphemeralStorage">> => ecs_ephemeral_storage(),
%%   <<"ExecutionRoleArn">> => string(),
%%   <<"InferenceAcceleratorOverrides">> => list(ecs_inference_accelerator_override()),
%%   <<"Memory">> => string(),
%%   <<"TaskRoleArn">> => string()
%% }
-type ecs_task_override() :: #{binary() => any()}.


%% Example:
%% capacity_provider_strategy_item() :: #{
%%   <<"base">> => integer(),
%%   <<"capacityProvider">> => string(),
%%   <<"weight">> => integer()
%% }
-type capacity_provider_strategy_item() :: #{binary() => any()}.


%% Example:
%% placement_constraint() :: #{
%%   <<"expression">> => string(),
%%   <<"type">> => string()
%% }
-type placement_constraint() :: #{binary() => any()}.


%% Example:
%% network_configuration() :: #{
%%   <<"awsvpcConfiguration">> => aws_vpc_configuration()
%% }
-type network_configuration() :: #{binary() => any()}.


%% Example:
%% pipe_source_kinesis_stream_parameters() :: #{
%%   <<"BatchSize">> => integer(),
%%   <<"DeadLetterConfig">> => dead_letter_config(),
%%   <<"MaximumBatchingWindowInSeconds">> => integer(),
%%   <<"MaximumRecordAgeInSeconds">> => integer(),
%%   <<"MaximumRetryAttempts">> => integer(),
%%   <<"OnPartialBatchItemFailure">> => string(),
%%   <<"ParallelizationFactor">> => integer(),
%%   <<"StartingPosition">> => string(),
%%   <<"StartingPositionTimestamp">> => non_neg_integer()
%% }
-type pipe_source_kinesis_stream_parameters() :: #{binary() => any()}.


%% Example:
%% internal_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type internal_exception() :: #{binary() => any()}.


%% Example:
%% pipe_target_ecs_task_parameters() :: #{
%%   <<"CapacityProviderStrategy">> => list(capacity_provider_strategy_item()),
%%   <<"EnableECSManagedTags">> => boolean(),
%%   <<"EnableExecuteCommand">> => boolean(),
%%   <<"Group">> => string(),
%%   <<"LaunchType">> => string(),
%%   <<"NetworkConfiguration">> => network_configuration(),
%%   <<"Overrides">> => ecs_task_override(),
%%   <<"PlacementConstraints">> => list(placement_constraint()),
%%   <<"PlacementStrategy">> => list(placement_strategy()),
%%   <<"PlatformVersion">> => string(),
%%   <<"PropagateTags">> => string(),
%%   <<"ReferenceId">> => string(),
%%   <<"Tags">> => list(tag()),
%%   <<"TaskCount">> => integer(),
%%   <<"TaskDefinitionArn">> => string()
%% }
-type pipe_target_ecs_task_parameters() :: #{binary() => any()}.

%% Example:
%% delete_pipe_request() :: #{}
-type delete_pipe_request() :: #{}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% create_pipe_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"CurrentState">> => string(),
%%   <<"DesiredState">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string()
%% }
-type create_pipe_response() :: #{binary() => any()}.


%% Example:
%% pipe_target_timestream_parameters() :: #{
%%   <<"DimensionMappings">> => list(dimension_mapping()),
%%   <<"EpochTimeUnit">> => string(),
%%   <<"MultiMeasureMappings">> => list(multi_measure_mapping()),
%%   <<"SingleMeasureMappings">> => list(single_measure_mapping()),
%%   <<"TimeFieldType">> => string(),
%%   <<"TimeValue">> => string(),
%%   <<"TimestampFormat">> => string(),
%%   <<"VersionValue">> => string()
%% }
-type pipe_target_timestream_parameters() :: #{binary() => any()}.


%% Example:
%% dead_letter_config() :: #{
%%   <<"Arn">> => string()
%% }
-type dead_letter_config() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% pipe_target_lambda_function_parameters() :: #{
%%   <<"InvocationType">> => string()
%% }
-type pipe_target_lambda_function_parameters() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()],
%%   <<"serviceCode">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% pipe_target_redshift_data_parameters() :: #{
%%   <<"Database">> => string(),
%%   <<"DbUser">> => string(),
%%   <<"SecretManagerArn">> => string(),
%%   <<"Sqls">> => list(string()),
%%   <<"StatementName">> => string(),
%%   <<"WithEvent">> => boolean()
%% }
-type pipe_target_redshift_data_parameters() :: #{binary() => any()}.


%% Example:
%% pipe_source_dynamo_db_stream_parameters() :: #{
%%   <<"BatchSize">> => integer(),
%%   <<"DeadLetterConfig">> => dead_letter_config(),
%%   <<"MaximumBatchingWindowInSeconds">> => integer(),
%%   <<"MaximumRecordAgeInSeconds">> => integer(),
%%   <<"MaximumRetryAttempts">> => integer(),
%%   <<"OnPartialBatchItemFailure">> => string(),
%%   <<"ParallelizationFactor">> => integer(),
%%   <<"StartingPosition">> => string()
%% }
-type pipe_source_dynamo_db_stream_parameters() :: #{binary() => any()}.


%% Example:
%% update_pipe_source_managed_streaming_kafka_parameters() :: #{
%%   <<"BatchSize">> => integer(),
%%   <<"Credentials">> => list(),
%%   <<"MaximumBatchingWindowInSeconds">> => integer()
%% }
-type update_pipe_source_managed_streaming_kafka_parameters() :: #{binary() => any()}.


%% Example:
%% batch_job_dependency() :: #{
%%   <<"JobId">> => [string()],
%%   <<"Type">> => string()
%% }
-type batch_job_dependency() :: #{binary() => any()}.

%% Example:
%% stop_pipe_request() :: #{}
-type stop_pipe_request() :: #{}.


%% Example:
%% aws_vpc_configuration() :: #{
%%   <<"AssignPublicIp">> => string(),
%%   <<"SecurityGroups">> => list(string()),
%%   <<"Subnets">> => list(string())
%% }
-type aws_vpc_configuration() :: #{binary() => any()}.


%% Example:
%% pipe_log_configuration_parameters() :: #{
%%   <<"CloudwatchLogsLogDestination">> => cloudwatch_logs_log_destination_parameters(),
%%   <<"FirehoseLogDestination">> => firehose_log_destination_parameters(),
%%   <<"IncludeExecutionData">> => list(string()),
%%   <<"Level">> => string(),
%%   <<"S3LogDestination">> => s3_log_destination_parameters()
%% }
-type pipe_log_configuration_parameters() :: #{binary() => any()}.


%% Example:
%% ecs_ephemeral_storage() :: #{
%%   <<"sizeInGiB">> => integer()
%% }
-type ecs_ephemeral_storage() :: #{binary() => any()}.


%% Example:
%% ecs_resource_requirement() :: #{
%%   <<"type">> => string(),
%%   <<"value">> => string()
%% }
-type ecs_resource_requirement() :: #{binary() => any()}.


%% Example:
%% update_pipe_source_kinesis_stream_parameters() :: #{
%%   <<"BatchSize">> => integer(),
%%   <<"DeadLetterConfig">> => dead_letter_config(),
%%   <<"MaximumBatchingWindowInSeconds">> => integer(),
%%   <<"MaximumRecordAgeInSeconds">> => integer(),
%%   <<"MaximumRetryAttempts">> => integer(),
%%   <<"OnPartialBatchItemFailure">> => string(),
%%   <<"ParallelizationFactor">> => integer()
%% }
-type update_pipe_source_kinesis_stream_parameters() :: #{binary() => any()}.


%% Example:
%% pipe_source_self_managed_kafka_parameters() :: #{
%%   <<"AdditionalBootstrapServers">> => list(string()),
%%   <<"BatchSize">> => integer(),
%%   <<"ConsumerGroupID">> => string(),
%%   <<"Credentials">> => list(),
%%   <<"MaximumBatchingWindowInSeconds">> => integer(),
%%   <<"ServerRootCaCertificate">> => string(),
%%   <<"StartingPosition">> => string(),
%%   <<"TopicName">> => string(),
%%   <<"Vpc">> => self_managed_kafka_access_configuration_vpc()
%% }
-type pipe_source_self_managed_kafka_parameters() :: #{binary() => any()}.


%% Example:
%% batch_container_overrides() :: #{
%%   <<"Command">> => list(string()),
%%   <<"Environment">> => list(batch_environment_variable()),
%%   <<"InstanceType">> => [string()],
%%   <<"ResourceRequirements">> => list(batch_resource_requirement())
%% }
-type batch_container_overrides() :: #{binary() => any()}.


%% Example:
%% batch_environment_variable() :: #{
%%   <<"Name">> => [string()],
%%   <<"Value">> => [string()]
%% }
-type batch_environment_variable() :: #{binary() => any()}.


%% Example:
%% pipe_enrichment_http_parameters() :: #{
%%   <<"HeaderParameters">> => map(),
%%   <<"PathParameterValues">> => list(string()),
%%   <<"QueryStringParameters">> => map()
%% }
-type pipe_enrichment_http_parameters() :: #{binary() => any()}.


%% Example:
%% dimension_mapping() :: #{
%%   <<"DimensionName">> => string(),
%%   <<"DimensionValue">> => string(),
%%   <<"DimensionValueType">> => string()
%% }
-type dimension_mapping() :: #{binary() => any()}.


%% Example:
%% update_pipe_source_sqs_queue_parameters() :: #{
%%   <<"BatchSize">> => integer(),
%%   <<"MaximumBatchingWindowInSeconds">> => integer()
%% }
-type update_pipe_source_sqs_queue_parameters() :: #{binary() => any()}.


%% Example:
%% firehose_log_destination() :: #{
%%   <<"DeliveryStreamArn">> => string()
%% }
-type firehose_log_destination() :: #{binary() => any()}.


%% Example:
%% pipe_enrichment_parameters() :: #{
%%   <<"HttpParameters">> => pipe_enrichment_http_parameters(),
%%   <<"InputTemplate">> => string()
%% }
-type pipe_enrichment_parameters() :: #{binary() => any()}.


%% Example:
%% update_pipe_source_parameters() :: #{
%%   <<"ActiveMQBrokerParameters">> => update_pipe_source_active_mq_broker_parameters(),
%%   <<"DynamoDBStreamParameters">> => update_pipe_source_dynamo_db_stream_parameters(),
%%   <<"FilterCriteria">> => filter_criteria(),
%%   <<"KinesisStreamParameters">> => update_pipe_source_kinesis_stream_parameters(),
%%   <<"ManagedStreamingKafkaParameters">> => update_pipe_source_managed_streaming_kafka_parameters(),
%%   <<"RabbitMQBrokerParameters">> => update_pipe_source_rabbit_mq_broker_parameters(),
%%   <<"SelfManagedKafkaParameters">> => update_pipe_source_self_managed_kafka_parameters(),
%%   <<"SqsQueueParameters">> => update_pipe_source_sqs_queue_parameters()
%% }
-type update_pipe_source_parameters() :: #{binary() => any()}.


%% Example:
%% self_managed_kafka_access_configuration_vpc() :: #{
%%   <<"SecurityGroup">> => list(string()),
%%   <<"Subnets">> => list(string())
%% }
-type self_managed_kafka_access_configuration_vpc() :: #{binary() => any()}.


%% Example:
%% describe_pipe_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"CurrentState">> => string(),
%%   <<"Description">> => string(),
%%   <<"DesiredState">> => string(),
%%   <<"Enrichment">> => string(),
%%   <<"EnrichmentParameters">> => pipe_enrichment_parameters(),
%%   <<"KmsKeyIdentifier">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"LogConfiguration">> => pipe_log_configuration(),
%%   <<"Name">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"Source">> => string(),
%%   <<"SourceParameters">> => pipe_source_parameters(),
%%   <<"StateReason">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Target">> => string(),
%%   <<"TargetParameters">> => pipe_target_parameters()
%% }
-type describe_pipe_response() :: #{binary() => any()}.


%% Example:
%% placement_strategy() :: #{
%%   <<"field">> => string(),
%%   <<"type">> => string()
%% }
-type placement_strategy() :: #{binary() => any()}.


%% Example:
%% update_pipe_source_dynamo_db_stream_parameters() :: #{
%%   <<"BatchSize">> => integer(),
%%   <<"DeadLetterConfig">> => dead_letter_config(),
%%   <<"MaximumBatchingWindowInSeconds">> => integer(),
%%   <<"MaximumRecordAgeInSeconds">> => integer(),
%%   <<"MaximumRetryAttempts">> => integer(),
%%   <<"OnPartialBatchItemFailure">> => string(),
%%   <<"ParallelizationFactor">> => integer()
%% }
-type update_pipe_source_dynamo_db_stream_parameters() :: #{binary() => any()}.


%% Example:
%% pipe_source_active_mq_broker_parameters() :: #{
%%   <<"BatchSize">> => integer(),
%%   <<"Credentials">> => list(),
%%   <<"MaximumBatchingWindowInSeconds">> => integer(),
%%   <<"QueueName">> => string()
%% }
-type pipe_source_active_mq_broker_parameters() :: #{binary() => any()}.

-type create_pipe_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_pipe_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_exception() | 
    not_found_exception() | 
    conflict_exception().

-type describe_pipe_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_exception() | 
    not_found_exception().

-type list_pipes_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    internal_exception() | 
    not_found_exception().

-type start_pipe_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_exception() | 
    not_found_exception() | 
    conflict_exception().

-type stop_pipe_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_exception() | 
    not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    internal_exception() | 
    not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    internal_exception() | 
    not_found_exception().

-type update_pipe_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_exception() | 
    not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Create a pipe.
%%
%% Amazon EventBridge Pipes connect event sources to targets and reduces
%% the need for specialized knowledge and integration code.
-spec create_pipe(aws_client:aws_client(), binary() | list(), create_pipe_request()) ->
    {ok, create_pipe_response(), tuple()} |
    {error, any()} |
    {error, create_pipe_errors(), tuple()}.
create_pipe(Client, Name, Input) ->
    create_pipe(Client, Name, Input, []).

-spec create_pipe(aws_client:aws_client(), binary() | list(), create_pipe_request(), proplists:proplist()) ->
    {ok, create_pipe_response(), tuple()} |
    {error, any()} |
    {error, create_pipe_errors(), tuple()}.
create_pipe(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/v1/pipes/", aws_util:encode_uri(Name), ""],
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

%% @doc Delete an existing pipe.
%%
%% For more information about pipes, see Amazon EventBridge Pipes:
%% https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html in
%% the Amazon EventBridge User Guide.
-spec delete_pipe(aws_client:aws_client(), binary() | list(), delete_pipe_request()) ->
    {ok, delete_pipe_response(), tuple()} |
    {error, any()} |
    {error, delete_pipe_errors(), tuple()}.
delete_pipe(Client, Name, Input) ->
    delete_pipe(Client, Name, Input, []).

-spec delete_pipe(aws_client:aws_client(), binary() | list(), delete_pipe_request(), proplists:proplist()) ->
    {ok, delete_pipe_response(), tuple()} |
    {error, any()} |
    {error, delete_pipe_errors(), tuple()}.
delete_pipe(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/pipes/", aws_util:encode_uri(Name), ""],
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

%% @doc Get the information about an existing pipe.
%%
%% For more information about pipes, see Amazon EventBridge Pipes:
%% https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html in
%% the Amazon EventBridge User Guide.
-spec describe_pipe(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_pipe_response(), tuple()} |
    {error, any()} |
    {error, describe_pipe_errors(), tuple()}.
describe_pipe(Client, Name)
  when is_map(Client) ->
    describe_pipe(Client, Name, #{}, #{}).

-spec describe_pipe(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_pipe_response(), tuple()} |
    {error, any()} |
    {error, describe_pipe_errors(), tuple()}.
describe_pipe(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_pipe(Client, Name, QueryMap, HeadersMap, []).

-spec describe_pipe(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_pipe_response(), tuple()} |
    {error, any()} |
    {error, describe_pipe_errors(), tuple()}.
describe_pipe(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/pipes/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the pipes associated with this account.
%%
%% For more information about pipes, see Amazon EventBridge Pipes:
%% https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html in
%% the Amazon EventBridge User Guide.
-spec list_pipes(aws_client:aws_client()) ->
    {ok, list_pipes_response(), tuple()} |
    {error, any()} |
    {error, list_pipes_errors(), tuple()}.
list_pipes(Client)
  when is_map(Client) ->
    list_pipes(Client, #{}, #{}).

-spec list_pipes(aws_client:aws_client(), map(), map()) ->
    {ok, list_pipes_response(), tuple()} |
    {error, any()} |
    {error, list_pipes_errors(), tuple()}.
list_pipes(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_pipes(Client, QueryMap, HeadersMap, []).

-spec list_pipes(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_pipes_response(), tuple()} |
    {error, any()} |
    {error, list_pipes_errors(), tuple()}.
list_pipes(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/pipes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"CurrentState">>, maps:get(<<"CurrentState">>, QueryMap, undefined)},
        {<<"DesiredState">>, maps:get(<<"DesiredState">>, QueryMap, undefined)},
        {<<"Limit">>, maps:get(<<"Limit">>, QueryMap, undefined)},
        {<<"NamePrefix">>, maps:get(<<"NamePrefix">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"SourcePrefix">>, maps:get(<<"SourcePrefix">>, QueryMap, undefined)},
        {<<"TargetPrefix">>, maps:get(<<"TargetPrefix">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays the tags associated with a pipe.
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

%% @doc Start an existing pipe.
-spec start_pipe(aws_client:aws_client(), binary() | list(), start_pipe_request()) ->
    {ok, start_pipe_response(), tuple()} |
    {error, any()} |
    {error, start_pipe_errors(), tuple()}.
start_pipe(Client, Name, Input) ->
    start_pipe(Client, Name, Input, []).

-spec start_pipe(aws_client:aws_client(), binary() | list(), start_pipe_request(), proplists:proplist()) ->
    {ok, start_pipe_response(), tuple()} |
    {error, any()} |
    {error, start_pipe_errors(), tuple()}.
start_pipe(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/v1/pipes/", aws_util:encode_uri(Name), "/start"],
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

%% @doc Stop an existing pipe.
-spec stop_pipe(aws_client:aws_client(), binary() | list(), stop_pipe_request()) ->
    {ok, stop_pipe_response(), tuple()} |
    {error, any()} |
    {error, stop_pipe_errors(), tuple()}.
stop_pipe(Client, Name, Input) ->
    stop_pipe(Client, Name, Input, []).

-spec stop_pipe(aws_client:aws_client(), binary() | list(), stop_pipe_request(), proplists:proplist()) ->
    {ok, stop_pipe_response(), tuple()} |
    {error, any()} |
    {error, stop_pipe_errors(), tuple()}.
stop_pipe(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/v1/pipes/", aws_util:encode_uri(Name), "/stop"],
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

%% @doc Assigns one or more tags (key-value pairs) to the specified pipe.
%%
%% Tags can help you
%% organize and categorize your resources. You can also use them to scope
%% user permissions by
%% granting a user permission to access or change only resources with certain
%% tag
%% values.
%%
%% Tags don't have any semantic meaning to Amazon Web Services and are
%% interpreted strictly
%% as strings of characters.
%%
%% You can use the `TagResource' action with a pipe that already has
%% tags. If
%% you specify a new tag key, this tag is appended to the list of tags
%% associated with the
%% pipe. If you specify a tag key that is already associated with the pipe,
%% the new tag value
%% that you specify replaces the previous value for that tag.
%%
%% You can associate as many as 50 tags with a pipe.
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

%% @doc Removes one or more tags from the specified pipes.
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

%% @doc Update an existing pipe.
%%
%% When you call `UpdatePipe', EventBridge only the
%% updates fields you have specified in the request; the rest remain
%% unchanged. The exception
%% to this is if you modify any Amazon Web Services-service specific fields
%% in the
%% `SourceParameters', `EnrichmentParameters', or
%% `TargetParameters' objects. For example,
%% `DynamoDBStreamParameters' or `EventBridgeEventBusParameters'.
%% EventBridge updates the fields in these objects atomically as one and
%% overrides existing
%% values. This is by design, and means that if you don't specify an
%% optional field in one of
%% these `Parameters' objects, EventBridge sets that field to its
%% system-default
%% value during the update.
%%
%% For more information about pipes, see
%% Amazon EventBridge Pipes:
%% https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html in
%% the Amazon EventBridge User Guide.
-spec update_pipe(aws_client:aws_client(), binary() | list(), update_pipe_request()) ->
    {ok, update_pipe_response(), tuple()} |
    {error, any()} |
    {error, update_pipe_errors(), tuple()}.
update_pipe(Client, Name, Input) ->
    update_pipe(Client, Name, Input, []).

-spec update_pipe(aws_client:aws_client(), binary() | list(), update_pipe_request(), proplists:proplist()) ->
    {ok, update_pipe_response(), tuple()} |
    {error, any()} |
    {error, update_pipe_errors(), tuple()}.
update_pipe(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/v1/pipes/", aws_util:encode_uri(Name), ""],
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
    Client1 = Client#{service => <<"pipes">>},
    Host = build_host(<<"pipes">>, Client1),
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
