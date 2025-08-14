%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Amazon Braket API Reference provides information about the
%% operations and structures supported by Amazon Braket.
%%
%% To learn about the permissions required to call an Amazon Braket API
%% action, see Actions, resources, and condition keys for Amazon Braket:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonbraket.html.
%% Amazon Braket Python SDK:
%% https://amazon-braket-sdk-python.readthedocs.io/en/latest/# and the AWS
%% Command Line Interface:
%% https://docs.aws.amazon.com/cli/latest/reference/braket/ can be used to
%% make discovery and creation of API calls easier. For more information
%% about Amazon Braket features, see What is Amazon Braket?:
%% https://docs.aws.amazon.com/braket/latest/developerguide/what-is-braket.html
%% and important terms and concepts:
%% https://docs.aws.amazon.com/braket/latest/developerguide/braket-terms.html
%% in the Amazon Braket Developer Guide.
%%
%% In this guide:
%%
%% `CommonParameters'
%%
%% `CommonErrors'
%%
%% Available languages for AWS SDK:
%%
%% .NET:
%% https://docs.aws.amazon.com/sdkfornet/v3/apidocs/items/Braket/NBraket.html
%%
%% C++: https://sdk.amazonaws.com/cpp/api/LATEST/root/html/index.html
%%
%% Go API reference:
%% https://docs.aws.amazon.com/sdk-for-go/api/service/braket/
%%
%% Java:
%% https://docs.aws.amazon.com/AWSJavaSDK/latest/javadoc/com/amazonaws/services/braket/package-summary.html
%%
%% JavaScript:
%% https://docs.aws.amazon.com/AWSJavaScriptSDK/latest/AWS/Braket.html
%%
%% PHP:
%% https://docs.aws.amazon.com/aws-sdk-php/v3/api/class-Aws.Braket.BraketClient.html
%%
%% Python (Boto):
%% https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/braket.html
%%
%% Ruby: https://docs.aws.amazon.com/sdk-for-ruby/v3/api/Aws/Braket.html
%%
%% Code examples from the Amazon Braket Tutorials GitHub repository:
%%
%% Amazon Braket Examples:
%% https://github.com/amazon-braket/amazon-braket-examples
-module(aws_braket).

-export([cancel_job/3,
         cancel_job/4,
         cancel_quantum_task/3,
         cancel_quantum_task/4,
         create_job/2,
         create_job/3,
         create_quantum_task/2,
         create_quantum_task/3,
         get_device/2,
         get_device/4,
         get_device/5,
         get_job/2,
         get_job/4,
         get_job/5,
         get_quantum_task/2,
         get_quantum_task/4,
         get_quantum_task/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         search_devices/2,
         search_devices/3,
         search_jobs/2,
         search_jobs/3,
         search_quantum_tasks/2,
         search_quantum_tasks/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% cancel_job_request() :: #{}
-type cancel_job_request() :: #{}.


%% Example:
%% search_quantum_tasks_response() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"quantumTasks">> := list(quantum_task_summary())
%% }
-type search_quantum_tasks_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% quantum_task_summary() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"deviceArn">> => string(),
%%   <<"endedAt">> => [non_neg_integer()],
%%   <<"outputS3Bucket">> => [string()],
%%   <<"outputS3Directory">> => [string()],
%%   <<"quantumTaskArn">> => string(),
%%   <<"shots">> => [float()],
%%   <<"status">> => string(),
%%   <<"tags">> => map()
%% }
-type quantum_task_summary() :: #{binary() => any()}.


%% Example:
%% get_quantum_task_request() :: #{
%%   <<"additionalAttributeNames">> => list(string())
%% }
-type get_quantum_task_request() :: #{binary() => any()}.


%% Example:
%% create_job_response() :: #{
%%   <<"jobArn">> := string()
%% }
-type create_job_response() :: #{binary() => any()}.


%% Example:
%% device_queue_info() :: #{
%%   <<"queue">> => string(),
%%   <<"queuePriority">> => string(),
%%   <<"queueSize">> => [string()]
%% }
-type device_queue_info() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% job_checkpoint_config() :: #{
%%   <<"localPath">> => string(),
%%   <<"s3Uri">> => string()
%% }
-type job_checkpoint_config() :: #{binary() => any()}.


%% Example:
%% cancel_quantum_task_response() :: #{
%%   <<"cancellationStatus">> := string(),
%%   <<"quantumTaskArn">> := string()
%% }
-type cancel_quantum_task_response() :: #{binary() => any()}.


%% Example:
%% device_offline_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type device_offline_exception() :: #{binary() => any()}.


%% Example:
%% job_stopping_condition() :: #{
%%   <<"maxRuntimeInSeconds">> => [integer()]
%% }
-type job_stopping_condition() :: #{binary() => any()}.


%% Example:
%% search_devices_filter() :: #{
%%   <<"name">> => [string()],
%%   <<"values">> => list(string())
%% }
-type search_devices_filter() :: #{binary() => any()}.


%% Example:
%% device_retired_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type device_retired_exception() :: #{binary() => any()}.


%% Example:
%% create_job_request() :: #{
%%   <<"algorithmSpecification">> := algorithm_specification(),
%%   <<"associations">> => list(association()),
%%   <<"checkpointConfig">> => job_checkpoint_config(),
%%   <<"clientToken">> := string(),
%%   <<"deviceConfig">> := device_config(),
%%   <<"hyperParameters">> => map(),
%%   <<"inputDataConfig">> => list(input_file_config()),
%%   <<"instanceConfig">> := instance_config(),
%%   <<"jobName">> := [string()],
%%   <<"outputDataConfig">> := job_output_data_config(),
%%   <<"roleArn">> := string(),
%%   <<"stoppingCondition">> => job_stopping_condition(),
%%   <<"tags">> => map()
%% }
-type create_job_request() :: #{binary() => any()}.


%% Example:
%% get_quantum_task_response() :: #{
%%   <<"actionMetadata">> => action_metadata(),
%%   <<"associations">> => list(association()),
%%   <<"createdAt">> := [non_neg_integer()],
%%   <<"deviceArn">> := string(),
%%   <<"deviceParameters">> := string(),
%%   <<"endedAt">> => [non_neg_integer()],
%%   <<"failureReason">> => [string()],
%%   <<"jobArn">> => string(),
%%   <<"numSuccessfulShots">> => [float()],
%%   <<"outputS3Bucket">> := [string()],
%%   <<"outputS3Directory">> := [string()],
%%   <<"quantumTaskArn">> := string(),
%%   <<"queueInfo">> => quantum_task_queue_info(),
%%   <<"shots">> := [float()],
%%   <<"status">> := string(),
%%   <<"tags">> => map()
%% }
-type get_quantum_task_response() :: #{binary() => any()}.


%% Example:
%% internal_service_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_service_exception() :: #{binary() => any()}.


%% Example:
%% search_quantum_tasks_request() :: #{
%%   <<"filters">> := list(search_quantum_tasks_filter()),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type search_quantum_tasks_request() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list([string()]())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% cancel_quantum_task_request() :: #{
%%   <<"clientToken">> := string()
%% }
-type cancel_quantum_task_request() :: #{binary() => any()}.


%% Example:
%% algorithm_specification() :: #{
%%   <<"containerImage">> => container_image(),
%%   <<"scriptModeConfig">> => script_mode_config()
%% }
-type algorithm_specification() :: #{binary() => any()}.


%% Example:
%% job_output_data_config() :: #{
%%   <<"kmsKeyId">> => string(),
%%   <<"s3Path">> => string()
%% }
-type job_output_data_config() :: #{binary() => any()}.


%% Example:
%% device_config() :: #{
%%   <<"device">> => string()
%% }
-type device_config() :: #{binary() => any()}.


%% Example:
%% job_summary() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"device">> => string(),
%%   <<"endedAt">> => [non_neg_integer()],
%%   <<"jobArn">> => string(),
%%   <<"jobName">> => [string()],
%%   <<"startedAt">> => [non_neg_integer()],
%%   <<"status">> => string(),
%%   <<"tags">> => map()
%% }
-type job_summary() :: #{binary() => any()}.


%% Example:
%% script_mode_config() :: #{
%%   <<"compressionType">> => string(),
%%   <<"entryPoint">> => [string()],
%%   <<"s3Uri">> => string()
%% }
-type script_mode_config() :: #{binary() => any()}.


%% Example:
%% search_jobs_request() :: #{
%%   <<"filters">> := list(search_jobs_filter()),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type search_jobs_request() :: #{binary() => any()}.


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
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% program_set_validation_failure() :: #{
%%   <<"errors">> => list([string()]()),
%%   <<"inputsIndex">> => [float()],
%%   <<"programIndex">> => [float()]
%% }
-type program_set_validation_failure() :: #{binary() => any()}.


%% Example:
%% container_image() :: #{
%%   <<"uri">> => string()
%% }
-type container_image() :: #{binary() => any()}.


%% Example:
%% association() :: #{
%%   <<"arn">> => string(),
%%   <<"type">> => string()
%% }
-type association() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% search_jobs_response() :: #{
%%   <<"jobs">> := list(job_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type search_jobs_response() :: #{binary() => any()}.


%% Example:
%% search_quantum_tasks_filter() :: #{
%%   <<"name">> => string(),
%%   <<"operator">> => string(),
%%   <<"values">> => list(string())
%% }
-type search_quantum_tasks_filter() :: #{binary() => any()}.


%% Example:
%% search_jobs_filter() :: #{
%%   <<"name">> => string(),
%%   <<"operator">> => string(),
%%   <<"values">> => list(string())
%% }
-type search_jobs_filter() :: #{binary() => any()}.


%% Example:
%% hybrid_job_queue_info() :: #{
%%   <<"message">> => [string()],
%%   <<"position">> => [string()],
%%   <<"queue">> => string()
%% }
-type hybrid_job_queue_info() :: #{binary() => any()}.


%% Example:
%% search_devices_response() :: #{
%%   <<"devices">> := list(device_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type search_devices_response() :: #{binary() => any()}.


%% Example:
%% job_event_details() :: #{
%%   <<"eventType">> => string(),
%%   <<"message">> => [string()],
%%   <<"timeOfEvent">> => [non_neg_integer()]
%% }
-type job_event_details() :: #{binary() => any()}.

%% Example:
%% get_device_request() :: #{}
-type get_device_request() :: #{}.


%% Example:
%% create_quantum_task_response() :: #{
%%   <<"quantumTaskArn">> := string()
%% }
-type create_quantum_task_response() :: #{binary() => any()}.


%% Example:
%% action_metadata() :: #{
%%   <<"actionType">> => [string()],
%%   <<"executableCount">> => [float()],
%%   <<"programCount">> => [float()]
%% }
-type action_metadata() :: #{binary() => any()}.


%% Example:
%% device_summary() :: #{
%%   <<"deviceArn">> => string(),
%%   <<"deviceName">> => [string()],
%%   <<"deviceStatus">> => string(),
%%   <<"deviceType">> => string(),
%%   <<"providerName">> => [string()]
%% }
-type device_summary() :: #{binary() => any()}.


%% Example:
%% create_quantum_task_request() :: #{
%%   <<"action">> := string(),
%%   <<"associations">> => list(association()),
%%   <<"clientToken">> := string(),
%%   <<"deviceArn">> := string(),
%%   <<"deviceParameters">> => string(),
%%   <<"jobToken">> => string(),
%%   <<"outputS3Bucket">> := [string()],
%%   <<"outputS3KeyPrefix">> := [string()],
%%   <<"shots">> := [float()],
%%   <<"tags">> => map()
%% }
-type create_quantum_task_request() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% quantum_task_queue_info() :: #{
%%   <<"message">> => [string()],
%%   <<"position">> => [string()],
%%   <<"queue">> => string(),
%%   <<"queuePriority">> => string()
%% }
-type quantum_task_queue_info() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% get_job_response() :: #{
%%   <<"algorithmSpecification">> := algorithm_specification(),
%%   <<"associations">> => list(association()),
%%   <<"billableDuration">> => [integer()],
%%   <<"checkpointConfig">> => job_checkpoint_config(),
%%   <<"createdAt">> := [non_neg_integer()],
%%   <<"deviceConfig">> => device_config(),
%%   <<"endedAt">> => [non_neg_integer()],
%%   <<"events">> => list(job_event_details()),
%%   <<"failureReason">> => string(),
%%   <<"hyperParameters">> => map(),
%%   <<"inputDataConfig">> => list(input_file_config()),
%%   <<"instanceConfig">> := instance_config(),
%%   <<"jobArn">> := string(),
%%   <<"jobName">> := [string()],
%%   <<"outputDataConfig">> := job_output_data_config(),
%%   <<"queueInfo">> => hybrid_job_queue_info(),
%%   <<"roleArn">> := string(),
%%   <<"startedAt">> => [non_neg_integer()],
%%   <<"status">> := string(),
%%   <<"stoppingCondition">> => job_stopping_condition(),
%%   <<"tags">> => map()
%% }
-type get_job_response() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"programSetValidationFailures">> => list(program_set_validation_failure()),
%%   <<"reason">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% instance_config() :: #{
%%   <<"instanceCount">> => [integer()],
%%   <<"instanceType">> => string(),
%%   <<"volumeSizeInGb">> => [integer()]
%% }
-type instance_config() :: #{binary() => any()}.


%% Example:
%% get_job_request() :: #{
%%   <<"additionalAttributeNames">> => list(string())
%% }
-type get_job_request() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% data_source() :: #{
%%   <<"s3DataSource">> => s3_data_source()
%% }
-type data_source() :: #{binary() => any()}.


%% Example:
%% input_file_config() :: #{
%%   <<"channelName">> => string(),
%%   <<"contentType">> => string(),
%%   <<"dataSource">> => data_source()
%% }
-type input_file_config() :: #{binary() => any()}.


%% Example:
%% cancel_job_response() :: #{
%%   <<"cancellationStatus">> := string(),
%%   <<"jobArn">> := string()
%% }
-type cancel_job_response() :: #{binary() => any()}.


%% Example:
%% search_devices_request() :: #{
%%   <<"filters">> := list(search_devices_filter()),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type search_devices_request() :: #{binary() => any()}.


%% Example:
%% get_device_response() :: #{
%%   <<"deviceArn">> := string(),
%%   <<"deviceCapabilities">> := string(),
%%   <<"deviceName">> := [string()],
%%   <<"deviceQueueInfo">> => list(device_queue_info()),
%%   <<"deviceStatus">> := string(),
%%   <<"deviceType">> := string(),
%%   <<"providerName">> := [string()]
%% }
-type get_device_response() :: #{binary() => any()}.


%% Example:
%% s3_data_source() :: #{
%%   <<"s3Uri">> => string()
%% }
-type s3_data_source() :: #{binary() => any()}.

-type cancel_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_service_exception().

-type cancel_quantum_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_service_exception().

-type create_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    internal_service_exception() | 
    device_retired_exception() | 
    device_offline_exception().

-type create_quantum_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    internal_service_exception() | 
    device_retired_exception() | 
    device_offline_exception().

-type get_device_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type get_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type get_quantum_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type search_devices_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_service_exception().

-type search_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_service_exception().

-type search_quantum_tasks_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_service_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels an Amazon Braket hybrid job.
-spec cancel_job(aws_client:aws_client(), binary() | list(), cancel_job_request()) ->
    {ok, cancel_job_response(), tuple()} |
    {error, any()} |
    {error, cancel_job_errors(), tuple()}.
cancel_job(Client, JobArn, Input) ->
    cancel_job(Client, JobArn, Input, []).

-spec cancel_job(aws_client:aws_client(), binary() | list(), cancel_job_request(), proplists:proplist()) ->
    {ok, cancel_job_response(), tuple()} |
    {error, any()} |
    {error, cancel_job_errors(), tuple()}.
cancel_job(Client, JobArn, Input0, Options0) ->
    Method = put,
    Path = ["/job/", aws_util:encode_uri(JobArn), "/cancel"],
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

%% @doc Cancels the specified task.
-spec cancel_quantum_task(aws_client:aws_client(), binary() | list(), cancel_quantum_task_request()) ->
    {ok, cancel_quantum_task_response(), tuple()} |
    {error, any()} |
    {error, cancel_quantum_task_errors(), tuple()}.
cancel_quantum_task(Client, QuantumTaskArn, Input) ->
    cancel_quantum_task(Client, QuantumTaskArn, Input, []).

-spec cancel_quantum_task(aws_client:aws_client(), binary() | list(), cancel_quantum_task_request(), proplists:proplist()) ->
    {ok, cancel_quantum_task_response(), tuple()} |
    {error, any()} |
    {error, cancel_quantum_task_errors(), tuple()}.
cancel_quantum_task(Client, QuantumTaskArn, Input0, Options0) ->
    Method = put,
    Path = ["/quantum-task/", aws_util:encode_uri(QuantumTaskArn), "/cancel"],
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

%% @doc Creates an Amazon Braket hybrid job.
-spec create_job(aws_client:aws_client(), create_job_request()) ->
    {ok, create_job_response(), tuple()} |
    {error, any()} |
    {error, create_job_errors(), tuple()}.
create_job(Client, Input) ->
    create_job(Client, Input, []).

-spec create_job(aws_client:aws_client(), create_job_request(), proplists:proplist()) ->
    {ok, create_job_response(), tuple()} |
    {error, any()} |
    {error, create_job_errors(), tuple()}.
create_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/job"],
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

%% @doc Creates a quantum task.
-spec create_quantum_task(aws_client:aws_client(), create_quantum_task_request()) ->
    {ok, create_quantum_task_response(), tuple()} |
    {error, any()} |
    {error, create_quantum_task_errors(), tuple()}.
create_quantum_task(Client, Input) ->
    create_quantum_task(Client, Input, []).

-spec create_quantum_task(aws_client:aws_client(), create_quantum_task_request(), proplists:proplist()) ->
    {ok, create_quantum_task_response(), tuple()} |
    {error, any()} |
    {error, create_quantum_task_errors(), tuple()}.
create_quantum_task(Client, Input0, Options0) ->
    Method = post,
    Path = ["/quantum-task"],
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

%% @doc Retrieves the devices available in Amazon Braket.
%%
%% For backwards compatibility with older versions of BraketSchemas, OpenQASM
%% information is omitted from GetDevice API calls. To get this information
%% the user-agent needs to present a recent version of the BraketSchemas
%% (1.8.0 or later). The Braket SDK automatically reports this for you. If
%% you do not see OpenQASM results in the GetDevice response when using a
%% Braket SDK, you may need to set AWS_EXECUTION_ENV environment variable to
%% configure user-agent. See the code examples provided below for how to do
%% this for the AWS CLI, Boto3, and the Go, Java, and JavaScript/TypeScript
%% SDKs.
-spec get_device(aws_client:aws_client(), binary() | list()) ->
    {ok, get_device_response(), tuple()} |
    {error, any()} |
    {error, get_device_errors(), tuple()}.
get_device(Client, DeviceArn)
  when is_map(Client) ->
    get_device(Client, DeviceArn, #{}, #{}).

-spec get_device(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_device_response(), tuple()} |
    {error, any()} |
    {error, get_device_errors(), tuple()}.
get_device(Client, DeviceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_device(Client, DeviceArn, QueryMap, HeadersMap, []).

-spec get_device(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_device_response(), tuple()} |
    {error, any()} |
    {error, get_device_errors(), tuple()}.
get_device(Client, DeviceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/device/", aws_util:encode_uri(DeviceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the specified Amazon Braket hybrid job.
-spec get_job(aws_client:aws_client(), binary() | list()) ->
    {ok, get_job_response(), tuple()} |
    {error, any()} |
    {error, get_job_errors(), tuple()}.
get_job(Client, JobArn)
  when is_map(Client) ->
    get_job(Client, JobArn, #{}, #{}).

-spec get_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_job_response(), tuple()} |
    {error, any()} |
    {error, get_job_errors(), tuple()}.
get_job(Client, JobArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_job(Client, JobArn, QueryMap, HeadersMap, []).

-spec get_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_job_response(), tuple()} |
    {error, any()} |
    {error, get_job_errors(), tuple()}.
get_job(Client, JobArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/job/", aws_util:encode_uri(JobArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"additionalAttributeNames">>, maps:get(<<"additionalAttributeNames">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the specified quantum task.
-spec get_quantum_task(aws_client:aws_client(), binary() | list()) ->
    {ok, get_quantum_task_response(), tuple()} |
    {error, any()} |
    {error, get_quantum_task_errors(), tuple()}.
get_quantum_task(Client, QuantumTaskArn)
  when is_map(Client) ->
    get_quantum_task(Client, QuantumTaskArn, #{}, #{}).

-spec get_quantum_task(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_quantum_task_response(), tuple()} |
    {error, any()} |
    {error, get_quantum_task_errors(), tuple()}.
get_quantum_task(Client, QuantumTaskArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_quantum_task(Client, QuantumTaskArn, QueryMap, HeadersMap, []).

-spec get_quantum_task(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_quantum_task_response(), tuple()} |
    {error, any()} |
    {error, get_quantum_task_errors(), tuple()}.
get_quantum_task(Client, QuantumTaskArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/quantum-task/", aws_util:encode_uri(QuantumTaskArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"additionalAttributeNames">>, maps:get(<<"additionalAttributeNames">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Shows the tags associated with this resource.
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

%% @doc Searches for devices using the specified filters.
-spec search_devices(aws_client:aws_client(), search_devices_request()) ->
    {ok, search_devices_response(), tuple()} |
    {error, any()} |
    {error, search_devices_errors(), tuple()}.
search_devices(Client, Input) ->
    search_devices(Client, Input, []).

-spec search_devices(aws_client:aws_client(), search_devices_request(), proplists:proplist()) ->
    {ok, search_devices_response(), tuple()} |
    {error, any()} |
    {error, search_devices_errors(), tuple()}.
search_devices(Client, Input0, Options0) ->
    Method = post,
    Path = ["/devices"],
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

%% @doc Searches for Amazon Braket hybrid jobs that match the specified
%% filter values.
-spec search_jobs(aws_client:aws_client(), search_jobs_request()) ->
    {ok, search_jobs_response(), tuple()} |
    {error, any()} |
    {error, search_jobs_errors(), tuple()}.
search_jobs(Client, Input) ->
    search_jobs(Client, Input, []).

-spec search_jobs(aws_client:aws_client(), search_jobs_request(), proplists:proplist()) ->
    {ok, search_jobs_response(), tuple()} |
    {error, any()} |
    {error, search_jobs_errors(), tuple()}.
search_jobs(Client, Input0, Options0) ->
    Method = post,
    Path = ["/jobs"],
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

%% @doc Searches for tasks that match the specified filter values.
-spec search_quantum_tasks(aws_client:aws_client(), search_quantum_tasks_request()) ->
    {ok, search_quantum_tasks_response(), tuple()} |
    {error, any()} |
    {error, search_quantum_tasks_errors(), tuple()}.
search_quantum_tasks(Client, Input) ->
    search_quantum_tasks(Client, Input, []).

-spec search_quantum_tasks(aws_client:aws_client(), search_quantum_tasks_request(), proplists:proplist()) ->
    {ok, search_quantum_tasks_response(), tuple()} |
    {error, any()} |
    {error, search_quantum_tasks_errors(), tuple()}.
search_quantum_tasks(Client, Input0, Options0) ->
    Method = post,
    Path = ["/quantum-tasks"],
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

%% @doc Add a tag to the specified resource.
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

%% @doc Remove tags from a resource.
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
    Client1 = Client#{service => <<"braket">>},
    Host = build_host(<<"">>, Client1),
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
