%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the Amazon SQS API Reference.
%%
%% Amazon SQS is a reliable, highly-scalable hosted queue for storing
%% messages as they travel
%% between applications or microservices. Amazon SQS moves data between
%% distributed application
%% components and helps you decouple these components.
%%
%% For information on the permissions you need to use this API, see Identity
%% and access management:
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-authentication-and-access-control.html
%% in the Amazon SQS Developer
%% Guide.
%%
%% You can use Amazon Web Services SDKs: http://aws.amazon.com/tools/#sdk to
%% access
%% Amazon SQS using your favorite programming language. The SDKs perform
%% tasks such as the
%% following automatically:
%%
%% Cryptographically sign your service requests
%%
%% Retry requests
%%
%% Handle error responses
%%
%% Additional information
%%
%% Amazon SQS Product Page: http://aws.amazon.com/sqs/
%%
%% Amazon SQS Developer Guide
%%
%% Making API Requests:
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-making-api-requests.html
%%
%% Amazon SQS Message Attributes:
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-metadata.html#sqs-message-attributes
%%
%% Amazon SQS Dead-Letter Queues:
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html
%%
%% Amazon SQS in the Command Line Interface
%% : http://docs.aws.amazon.com/cli/latest/reference/sqs/index.html
%%
%% Amazon Web Services General Reference
%%
%% Regions and
%% Endpoints:
%% https://docs.aws.amazon.com/general/latest/gr/rande.html#sqs_region
-module(aws_sqs).

-export([add_permission/2,
         add_permission/3,
         cancel_message_move_task/2,
         cancel_message_move_task/3,
         change_message_visibility/2,
         change_message_visibility/3,
         change_message_visibility_batch/2,
         change_message_visibility_batch/3,
         create_queue/2,
         create_queue/3,
         delete_message/2,
         delete_message/3,
         delete_message_batch/2,
         delete_message_batch/3,
         delete_queue/2,
         delete_queue/3,
         get_queue_attributes/2,
         get_queue_attributes/3,
         get_queue_url/2,
         get_queue_url/3,
         list_dead_letter_source_queues/2,
         list_dead_letter_source_queues/3,
         list_message_move_tasks/2,
         list_message_move_tasks/3,
         list_queue_tags/2,
         list_queue_tags/3,
         list_queues/2,
         list_queues/3,
         purge_queue/2,
         purge_queue/3,
         receive_message/2,
         receive_message/3,
         remove_permission/2,
         remove_permission/3,
         send_message/2,
         send_message/3,
         send_message_batch/2,
         send_message_batch/3,
         set_queue_attributes/2,
         set_queue_attributes/3,
         start_message_move_task/2,
         start_message_move_task/3,
         tag_queue/2,
         tag_queue/3,
         untag_queue/2,
         untag_queue/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% list_queue_tags_request() :: #{
%%   <<"QueueUrl">> := string()
%% }
-type list_queue_tags_request() :: #{binary() => any()}.

%% Example:
%% kms_access_denied() :: #{
%%   <<"message">> => string()
%% }
-type kms_access_denied() :: #{binary() => any()}.

%% Example:
%% tag_queue_request() :: #{
%%   <<"QueueUrl">> := string(),
%%   <<"Tags">> := map()
%% }
-type tag_queue_request() :: #{binary() => any()}.

%% Example:
%% queue_name_exists() :: #{
%%   <<"message">> => string()
%% }
-type queue_name_exists() :: #{binary() => any()}.

%% Example:
%% list_queues_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"QueueNamePrefix">> => string()
%% }
-type list_queues_request() :: #{binary() => any()}.

%% Example:
%% set_queue_attributes_request() :: #{
%%   <<"Attributes">> := map(),
%%   <<"QueueUrl">> := string()
%% }
-type set_queue_attributes_request() :: #{binary() => any()}.

%% Example:
%% invalid_message_contents() :: #{
%%   <<"message">> => string()
%% }
-type invalid_message_contents() :: #{binary() => any()}.

%% Example:
%% kms_opt_in_required() :: #{
%%   <<"message">> => string()
%% }
-type kms_opt_in_required() :: #{binary() => any()}.

%% Example:
%% purge_queue_in_progress() :: #{
%%   <<"message">> => string()
%% }
-type purge_queue_in_progress() :: #{binary() => any()}.

%% Example:
%% invalid_attribute_name() :: #{
%%   <<"message">> => string()
%% }
-type invalid_attribute_name() :: #{binary() => any()}.

%% Example:
%% queue_does_not_exist() :: #{
%%   <<"message">> => string()
%% }
-type queue_does_not_exist() :: #{binary() => any()}.

%% Example:
%% receive_message_result() :: #{
%%   <<"Messages">> => list(message())
%% }
-type receive_message_result() :: #{binary() => any()}.

%% Example:
%% purge_queue_request() :: #{
%%   <<"QueueUrl">> := string()
%% }
-type purge_queue_request() :: #{binary() => any()}.

%% Example:
%% invalid_security() :: #{
%%   <<"message">> => string()
%% }
-type invalid_security() :: #{binary() => any()}.

%% Example:
%% send_message_batch_request() :: #{
%%   <<"Entries">> := list(send_message_batch_request_entry()),
%%   <<"QueueUrl">> := string()
%% }
-type send_message_batch_request() :: #{binary() => any()}.

%% Example:
%% delete_message_batch_request() :: #{
%%   <<"Entries">> := list(delete_message_batch_request_entry()),
%%   <<"QueueUrl">> := string()
%% }
-type delete_message_batch_request() :: #{binary() => any()}.

%% Example:
%% too_many_entries_in_batch_request() :: #{
%%   <<"message">> => string()
%% }
-type too_many_entries_in_batch_request() :: #{binary() => any()}.

%% Example:
%% delete_message_request() :: #{
%%   <<"QueueUrl">> := string(),
%%   <<"ReceiptHandle">> := string()
%% }
-type delete_message_request() :: #{binary() => any()}.

%% Example:
%% get_queue_url_request() :: #{
%%   <<"QueueName">> := string(),
%%   <<"QueueOwnerAWSAccountId">> => string()
%% }
-type get_queue_url_request() :: #{binary() => any()}.

%% Example:
%% kms_throttled() :: #{
%%   <<"message">> => string()
%% }
-type kms_throttled() :: #{binary() => any()}.

%% Example:
%% cancel_message_move_task_request() :: #{
%%   <<"TaskHandle">> := string()
%% }
-type cancel_message_move_task_request() :: #{binary() => any()}.

%% Example:
%% message_attribute_value() :: #{
%%   <<"BinaryListValues">> => list(binary()),
%%   <<"BinaryValue">> => binary(),
%%   <<"DataType">> => string(),
%%   <<"StringListValues">> => list(string()),
%%   <<"StringValue">> => string()
%% }
-type message_attribute_value() :: #{binary() => any()}.

%% Example:
%% list_message_move_tasks_result() :: #{
%%   <<"Results">> => list(list_message_move_tasks_result_entry())
%% }
-type list_message_move_tasks_result() :: #{binary() => any()}.

%% Example:
%% kms_disabled() :: #{
%%   <<"message">> => string()
%% }
-type kms_disabled() :: #{binary() => any()}.

%% Example:
%% list_queues_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"QueueUrls">> => list(string())
%% }
-type list_queues_result() :: #{binary() => any()}.

%% Example:
%% batch_result_error_entry() :: #{
%%   <<"Code">> => string(),
%%   <<"Id">> => string(),
%%   <<"Message">> => string(),
%%   <<"SenderFault">> => boolean()
%% }
-type batch_result_error_entry() :: #{binary() => any()}.

%% Example:
%% change_message_visibility_batch_result_entry() :: #{
%%   <<"Id">> => string()
%% }
-type change_message_visibility_batch_result_entry() :: #{binary() => any()}.

%% Example:
%% delete_message_batch_result() :: #{
%%   <<"Failed">> => list(batch_result_error_entry()),
%%   <<"Successful">> => list(delete_message_batch_result_entry())
%% }
-type delete_message_batch_result() :: #{binary() => any()}.

%% Example:
%% list_message_move_tasks_result_entry() :: #{
%%   <<"ApproximateNumberOfMessagesMoved">> => float(),
%%   <<"ApproximateNumberOfMessagesToMove">> => float(),
%%   <<"DestinationArn">> => string(),
%%   <<"FailureReason">> => string(),
%%   <<"MaxNumberOfMessagesPerSecond">> => integer(),
%%   <<"SourceArn">> => string(),
%%   <<"StartedTimestamp">> => float(),
%%   <<"Status">> => string(),
%%   <<"TaskHandle">> => string()
%% }
-type list_message_move_tasks_result_entry() :: #{binary() => any()}.

%% Example:
%% unsupported_operation() :: #{
%%   <<"message">> => string()
%% }
-type unsupported_operation() :: #{binary() => any()}.

%% Example:
%% send_message_batch_result() :: #{
%%   <<"Failed">> => list(batch_result_error_entry()),
%%   <<"Successful">> => list(send_message_batch_result_entry())
%% }
-type send_message_batch_result() :: #{binary() => any()}.

%% Example:
%% untag_queue_request() :: #{
%%   <<"QueueUrl">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_queue_request() :: #{binary() => any()}.

%% Example:
%% invalid_attribute_value() :: #{
%%   <<"message">> => string()
%% }
-type invalid_attribute_value() :: #{binary() => any()}.

%% Example:
%% list_message_move_tasks_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"SourceArn">> := string()
%% }
-type list_message_move_tasks_request() :: #{binary() => any()}.

%% Example:
%% cancel_message_move_task_result() :: #{
%%   <<"ApproximateNumberOfMessagesMoved">> => float()
%% }
-type cancel_message_move_task_result() :: #{binary() => any()}.

%% Example:
%% send_message_batch_result_entry() :: #{
%%   <<"Id">> => string(),
%%   <<"MD5OfMessageAttributes">> => string(),
%%   <<"MD5OfMessageBody">> => string(),
%%   <<"MD5OfMessageSystemAttributes">> => string(),
%%   <<"MessageId">> => string(),
%%   <<"SequenceNumber">> => string()
%% }
-type send_message_batch_result_entry() :: #{binary() => any()}.

%% Example:
%% empty_batch_request() :: #{
%%   <<"message">> => string()
%% }
-type empty_batch_request() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% request_throttled() :: #{
%%   <<"message">> => string()
%% }
-type request_throttled() :: #{binary() => any()}.

%% Example:
%% create_queue_result() :: #{
%%   <<"QueueUrl">> => string()
%% }
-type create_queue_result() :: #{binary() => any()}.

%% Example:
%% change_message_visibility_batch_request() :: #{
%%   <<"Entries">> := list(change_message_visibility_batch_request_entry()),
%%   <<"QueueUrl">> := string()
%% }
-type change_message_visibility_batch_request() :: #{binary() => any()}.

%% Example:
%% send_message_batch_request_entry() :: #{
%%   <<"DelaySeconds">> => integer(),
%%   <<"Id">> => string(),
%%   <<"MessageAttributes">> => map(),
%%   <<"MessageBody">> => string(),
%%   <<"MessageDeduplicationId">> => string(),
%%   <<"MessageGroupId">> => string(),
%%   <<"MessageSystemAttributes">> => map()
%% }
-type send_message_batch_request_entry() :: #{binary() => any()}.

%% Example:
%% remove_permission_request() :: #{
%%   <<"Label">> := string(),
%%   <<"QueueUrl">> := string()
%% }
-type remove_permission_request() :: #{binary() => any()}.

%% Example:
%% change_message_visibility_request() :: #{
%%   <<"QueueUrl">> := string(),
%%   <<"ReceiptHandle">> := string(),
%%   <<"VisibilityTimeout">> := integer()
%% }
-type change_message_visibility_request() :: #{binary() => any()}.

%% Example:
%% send_message_result() :: #{
%%   <<"MD5OfMessageAttributes">> => string(),
%%   <<"MD5OfMessageBody">> => string(),
%%   <<"MD5OfMessageSystemAttributes">> => string(),
%%   <<"MessageId">> => string(),
%%   <<"SequenceNumber">> => string()
%% }
-type send_message_result() :: #{binary() => any()}.

%% Example:
%% create_queue_request() :: #{
%%   <<"Attributes">> => map(),
%%   <<"QueueName">> := string(),
%%   <<"tags">> => map()
%% }
-type create_queue_request() :: #{binary() => any()}.

%% Example:
%% list_queue_tags_result() :: #{
%%   <<"Tags">> => map()
%% }
-type list_queue_tags_result() :: #{binary() => any()}.

%% Example:
%% kms_not_found() :: #{
%%   <<"message">> => string()
%% }
-type kms_not_found() :: #{binary() => any()}.

%% Example:
%% change_message_visibility_batch_request_entry() :: #{
%%   <<"Id">> => string(),
%%   <<"ReceiptHandle">> => string(),
%%   <<"VisibilityTimeout">> => integer()
%% }
-type change_message_visibility_batch_request_entry() :: #{binary() => any()}.

%% Example:
%% start_message_move_task_request() :: #{
%%   <<"DestinationArn">> => string(),
%%   <<"MaxNumberOfMessagesPerSecond">> => integer(),
%%   <<"SourceArn">> := string()
%% }
-type start_message_move_task_request() :: #{binary() => any()}.

%% Example:
%% get_queue_attributes_request() :: #{
%%   <<"AttributeNames">> => list(list(any())()),
%%   <<"QueueUrl">> := string()
%% }
-type get_queue_attributes_request() :: #{binary() => any()}.

%% Example:
%% kms_invalid_state() :: #{
%%   <<"message">> => string()
%% }
-type kms_invalid_state() :: #{binary() => any()}.

%% Example:
%% invalid_id_format() :: #{

%% }
-type invalid_id_format() :: #{binary() => any()}.

%% Example:
%% receive_message_request() :: #{
%%   <<"AttributeNames">> => list(list(any())()),
%%   <<"MaxNumberOfMessages">> => integer(),
%%   <<"MessageAttributeNames">> => list(string()),
%%   <<"MessageSystemAttributeNames">> => list(list(any())()),
%%   <<"QueueUrl">> := string(),
%%   <<"ReceiveRequestAttemptId">> => string(),
%%   <<"VisibilityTimeout">> => integer(),
%%   <<"WaitTimeSeconds">> => integer()
%% }
-type receive_message_request() :: #{binary() => any()}.

%% Example:
%% delete_message_batch_result_entry() :: #{
%%   <<"Id">> => string()
%% }
-type delete_message_batch_result_entry() :: #{binary() => any()}.

%% Example:
%% message_system_attribute_value() :: #{
%%   <<"BinaryListValues">> => list(binary()),
%%   <<"BinaryValue">> => binary(),
%%   <<"DataType">> => string(),
%%   <<"StringListValues">> => list(string()),
%%   <<"StringValue">> => string()
%% }
-type message_system_attribute_value() :: #{binary() => any()}.

%% Example:
%% queue_deleted_recently() :: #{
%%   <<"message">> => string()
%% }
-type queue_deleted_recently() :: #{binary() => any()}.

%% Example:
%% start_message_move_task_result() :: #{
%%   <<"TaskHandle">> => string()
%% }
-type start_message_move_task_result() :: #{binary() => any()}.

%% Example:
%% list_dead_letter_source_queues_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"queueUrls">> => list(string())
%% }
-type list_dead_letter_source_queues_result() :: #{binary() => any()}.

%% Example:
%% invalid_batch_entry_id() :: #{
%%   <<"message">> => string()
%% }
-type invalid_batch_entry_id() :: #{binary() => any()}.

%% Example:
%% batch_entry_ids_not_distinct() :: #{
%%   <<"message">> => string()
%% }
-type batch_entry_ids_not_distinct() :: #{binary() => any()}.

%% Example:
%% kms_invalid_key_usage() :: #{
%%   <<"message">> => string()
%% }
-type kms_invalid_key_usage() :: #{binary() => any()}.

%% Example:
%% send_message_request() :: #{
%%   <<"DelaySeconds">> => integer(),
%%   <<"MessageAttributes">> => map(),
%%   <<"MessageBody">> := string(),
%%   <<"MessageDeduplicationId">> => string(),
%%   <<"MessageGroupId">> => string(),
%%   <<"MessageSystemAttributes">> => map(),
%%   <<"QueueUrl">> := string()
%% }
-type send_message_request() :: #{binary() => any()}.

%% Example:
%% delete_queue_request() :: #{
%%   <<"QueueUrl">> := string()
%% }
-type delete_queue_request() :: #{binary() => any()}.

%% Example:
%% message_not_inflight() :: #{

%% }
-type message_not_inflight() :: #{binary() => any()}.

%% Example:
%% over_limit() :: #{
%%   <<"message">> => string()
%% }
-type over_limit() :: #{binary() => any()}.

%% Example:
%% get_queue_url_result() :: #{
%%   <<"QueueUrl">> => string()
%% }
-type get_queue_url_result() :: #{binary() => any()}.

%% Example:
%% batch_request_too_long() :: #{
%%   <<"message">> => string()
%% }
-type batch_request_too_long() :: #{binary() => any()}.

%% Example:
%% change_message_visibility_batch_result() :: #{
%%   <<"Failed">> => list(batch_result_error_entry()),
%%   <<"Successful">> => list(change_message_visibility_batch_result_entry())
%% }
-type change_message_visibility_batch_result() :: #{binary() => any()}.

%% Example:
%% invalid_address() :: #{
%%   <<"message">> => string()
%% }
-type invalid_address() :: #{binary() => any()}.

%% Example:
%% list_dead_letter_source_queues_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"QueueUrl">> := string()
%% }
-type list_dead_letter_source_queues_request() :: #{binary() => any()}.

%% Example:
%% delete_message_batch_request_entry() :: #{
%%   <<"Id">> => string(),
%%   <<"ReceiptHandle">> => string()
%% }
-type delete_message_batch_request_entry() :: #{binary() => any()}.

%% Example:
%% get_queue_attributes_result() :: #{
%%   <<"Attributes">> => map()
%% }
-type get_queue_attributes_result() :: #{binary() => any()}.

%% Example:
%% receipt_handle_is_invalid() :: #{
%%   <<"message">> => string()
%% }
-type receipt_handle_is_invalid() :: #{binary() => any()}.

%% Example:
%% add_permission_request() :: #{
%%   <<"AWSAccountIds">> := list(string()),
%%   <<"Actions">> := list(string()),
%%   <<"Label">> := string(),
%%   <<"QueueUrl">> := string()
%% }
-type add_permission_request() :: #{binary() => any()}.

%% Example:
%% message() :: #{
%%   <<"Attributes">> => map(),
%%   <<"Body">> => string(),
%%   <<"MD5OfBody">> => string(),
%%   <<"MD5OfMessageAttributes">> => string(),
%%   <<"MessageAttributes">> => map(),
%%   <<"MessageId">> => string(),
%%   <<"ReceiptHandle">> => string()
%% }
-type message() :: #{binary() => any()}.

-type add_permission_errors() ::
    invalid_address() | 
    over_limit() | 
    request_throttled() | 
    unsupported_operation() | 
    invalid_security() | 
    queue_does_not_exist().

-type cancel_message_move_task_errors() ::
    invalid_address() | 
    request_throttled() | 
    resource_not_found_exception() | 
    unsupported_operation() | 
    invalid_security().

-type change_message_visibility_errors() ::
    receipt_handle_is_invalid() | 
    invalid_address() | 
    message_not_inflight() | 
    request_throttled() | 
    unsupported_operation() | 
    invalid_security() | 
    queue_does_not_exist().

-type change_message_visibility_batch_errors() ::
    invalid_address() | 
    batch_entry_ids_not_distinct() | 
    invalid_batch_entry_id() | 
    request_throttled() | 
    empty_batch_request() | 
    unsupported_operation() | 
    too_many_entries_in_batch_request() | 
    invalid_security() | 
    queue_does_not_exist().

-type create_queue_errors() ::
    invalid_address() | 
    queue_deleted_recently() | 
    request_throttled() | 
    invalid_attribute_value() | 
    unsupported_operation() | 
    invalid_security() | 
    invalid_attribute_name() | 
    queue_name_exists().

-type delete_message_errors() ::
    receipt_handle_is_invalid() | 
    invalid_address() | 
    invalid_id_format() | 
    request_throttled() | 
    unsupported_operation() | 
    invalid_security() | 
    queue_does_not_exist().

-type delete_message_batch_errors() ::
    invalid_address() | 
    batch_entry_ids_not_distinct() | 
    invalid_batch_entry_id() | 
    request_throttled() | 
    empty_batch_request() | 
    unsupported_operation() | 
    too_many_entries_in_batch_request() | 
    invalid_security() | 
    queue_does_not_exist().

-type delete_queue_errors() ::
    invalid_address() | 
    request_throttled() | 
    unsupported_operation() | 
    invalid_security() | 
    queue_does_not_exist().

-type get_queue_attributes_errors() ::
    invalid_address() | 
    request_throttled() | 
    unsupported_operation() | 
    invalid_security() | 
    queue_does_not_exist() | 
    invalid_attribute_name().

-type get_queue_url_errors() ::
    invalid_address() | 
    request_throttled() | 
    unsupported_operation() | 
    invalid_security() | 
    queue_does_not_exist().

-type list_dead_letter_source_queues_errors() ::
    invalid_address() | 
    request_throttled() | 
    unsupported_operation() | 
    invalid_security() | 
    queue_does_not_exist().

-type list_message_move_tasks_errors() ::
    invalid_address() | 
    request_throttled() | 
    resource_not_found_exception() | 
    unsupported_operation() | 
    invalid_security().

-type list_queue_tags_errors() ::
    invalid_address() | 
    request_throttled() | 
    unsupported_operation() | 
    invalid_security() | 
    queue_does_not_exist().

-type list_queues_errors() ::
    invalid_address() | 
    request_throttled() | 
    unsupported_operation() | 
    invalid_security().

-type purge_queue_errors() ::
    invalid_address() | 
    request_throttled() | 
    unsupported_operation() | 
    invalid_security() | 
    queue_does_not_exist() | 
    purge_queue_in_progress().

-type receive_message_errors() ::
    invalid_address() | 
    over_limit() | 
    kms_invalid_key_usage() | 
    kms_invalid_state() | 
    kms_not_found() | 
    request_throttled() | 
    unsupported_operation() | 
    kms_disabled() | 
    kms_throttled() | 
    invalid_security() | 
    queue_does_not_exist() | 
    kms_opt_in_required() | 
    kms_access_denied().

-type remove_permission_errors() ::
    invalid_address() | 
    request_throttled() | 
    unsupported_operation() | 
    invalid_security() | 
    queue_does_not_exist().

-type send_message_errors() ::
    invalid_address() | 
    kms_invalid_key_usage() | 
    kms_invalid_state() | 
    kms_not_found() | 
    request_throttled() | 
    unsupported_operation() | 
    kms_disabled() | 
    kms_throttled() | 
    invalid_security() | 
    queue_does_not_exist() | 
    kms_opt_in_required() | 
    invalid_message_contents() | 
    kms_access_denied().

-type send_message_batch_errors() ::
    invalid_address() | 
    batch_request_too_long() | 
    kms_invalid_key_usage() | 
    batch_entry_ids_not_distinct() | 
    invalid_batch_entry_id() | 
    kms_invalid_state() | 
    kms_not_found() | 
    request_throttled() | 
    empty_batch_request() | 
    unsupported_operation() | 
    kms_disabled() | 
    kms_throttled() | 
    too_many_entries_in_batch_request() | 
    invalid_security() | 
    queue_does_not_exist() | 
    kms_opt_in_required() | 
    kms_access_denied().

-type set_queue_attributes_errors() ::
    invalid_address() | 
    over_limit() | 
    request_throttled() | 
    invalid_attribute_value() | 
    unsupported_operation() | 
    invalid_security() | 
    queue_does_not_exist() | 
    invalid_attribute_name().

-type start_message_move_task_errors() ::
    invalid_address() | 
    request_throttled() | 
    resource_not_found_exception() | 
    unsupported_operation() | 
    invalid_security().

-type tag_queue_errors() ::
    invalid_address() | 
    request_throttled() | 
    unsupported_operation() | 
    invalid_security() | 
    queue_does_not_exist().

-type untag_queue_errors() ::
    invalid_address() | 
    request_throttled() | 
    unsupported_operation() | 
    invalid_security() | 
    queue_does_not_exist().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds a permission to a queue for a specific principal:
%% https://docs.aws.amazon.com/general/latest/gr/glos-chap.html#P.
%%
%% This allows sharing
%% access to the queue.
%%
%% When you create a queue, you have full control access rights for the
%% queue. Only you,
%% the owner of the queue, can grant or deny permissions to the queue. For
%% more information
%% about these permissions, see Allow Developers to Write Messages to a
%% Shared Queue:
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-writing-an-sqs-policy.html#write-messages-to-shared-queue
%% in the Amazon SQS
%% Developer Guide.
%%
%% `AddPermission' generates a policy for you. You can use
%%
%% ```
%% `SetQueueAttributes' ''' to upload your
%% policy. For more information, see Using Custom Policies with the Amazon
%% SQS Access Policy Language:
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-creating-custom-policies.html
%% in
%% the Amazon SQS Developer Guide.
%%
%% An Amazon SQS policy can have a maximum of seven actions per statement.
%%
%% To remove the ability to change queue permissions, you must deny
%% permission to the `AddPermission', `RemovePermission', and
%% `SetQueueAttributes' actions in your IAM policy.
%%
%% Amazon SQS `AddPermission' does not support adding a non-account
%% principal.
%%
%% Cross-account permissions don't apply to this action. For more
%% information,
%% see Grant
%% cross-account permissions to a role and a username:
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name
%% in the Amazon SQS Developer Guide.
-spec add_permission(aws_client:aws_client(), add_permission_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, add_permission_errors(), tuple()}.
add_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_permission(Client, Input, []).

-spec add_permission(aws_client:aws_client(), add_permission_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, add_permission_errors(), tuple()}.
add_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddPermission">>, Input, Options).

%% @doc Cancels a specified message movement task.
%%
%% A message movement can only be cancelled
%% when the current status is RUNNING. Cancelling a message movement task
%% does not revert
%% the messages that have already been moved. It can only stop the messages
%% that have not
%% been moved yet.
%%
%% This action is currently limited to supporting message redrive from
%% dead-letter queues (DLQs):
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html
%% only. In this context, the source
%% queue is the dead-letter queue (DLQ), while the destination queue can be
%% the
%% original source queue (from which the messages were driven to the
%% dead-letter-queue), or a custom destination queue.
%%
%% Only one active message movement task is supported per queue at any given
%% time.
-spec cancel_message_move_task(aws_client:aws_client(), cancel_message_move_task_request()) ->
    {ok, cancel_message_move_task_result(), tuple()} |
    {error, any()} |
    {error, cancel_message_move_task_errors(), tuple()}.
cancel_message_move_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_message_move_task(Client, Input, []).

-spec cancel_message_move_task(aws_client:aws_client(), cancel_message_move_task_request(), proplists:proplist()) ->
    {ok, cancel_message_move_task_result(), tuple()} |
    {error, any()} |
    {error, cancel_message_move_task_errors(), tuple()}.
cancel_message_move_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelMessageMoveTask">>, Input, Options).

%% @doc Changes the visibility timeout of a specified message in a queue to a
%% new value.
%%
%% The
%% default visibility timeout for a message is 30 seconds. The minimum is 0
%% seconds. The
%% maximum is 12 hours. For more information, see Visibility Timeout:
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html
%% in the Amazon SQS Developer
%% Guide.
%%
%% For example, if the default timeout for a queue is 60 seconds, 15 seconds
%% have elapsed
%% since you received the message, and you send a ChangeMessageVisibility
%% call with
%% `VisibilityTimeout' set to 10 seconds, the 10 seconds begin to count
%% from
%% the time that you make the `ChangeMessageVisibility' call. Thus, any
%% attempt
%% to change the visibility timeout or to delete that message 10 seconds
%% after you
%% initially change the visibility timeout (a total of 25 seconds) might
%% result in an
%% error.
%%
%% An Amazon SQS message has three basic states:
%%
%% Sent to a queue by a producer.
%%
%% Received from the queue by a consumer.
%%
%% Deleted from the queue.
%%
%% A message is considered to be stored after it is sent to a queue by a
%% producer, but not yet received from the queue by a consumer (that is,
%% between states 1 and 2). There is no limit to the number of stored
%% messages.
%% A message is considered to be in flight after it is received from a queue
%% by a consumer, but not yet deleted from the queue (that is, between states
%% 2 and 3). There is a limit to the number of in flight messages.
%%
%% Limits that apply to in flight messages are unrelated to the unlimited
%% number of stored messages.
%%
%% For most standard queues (depending on queue traffic and message backlog),
%% there can be a maximum of approximately 120,000 in flight messages
%% (received from a queue by a consumer, but not yet deleted from the queue).
%% If you reach this limit, Amazon SQS returns the `OverLimit' error
%% message.
%% To avoid reaching the limit, you should delete messages from the queue
%% after they're processed. You can also increase the number of queues
%% you use to process your messages.
%% To request a limit increase, file a support request:
%% https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&amp;limitType=service-code-sqs.
%%
%% For FIFO queues, there can be a maximum of 120,000 in flight messages
%% (received from a queue by a consumer, but not yet deleted from the queue).
%% If you reach this limit, Amazon SQS returns no error messages.
%%
%% If you attempt to set the `VisibilityTimeout' to a value greater than
%% the maximum time left, Amazon SQS returns an error. Amazon SQS doesn't
%% automatically
%% recalculate and increase the timeout to the maximum remaining time.
%%
%% Unlike with a queue, when you change the visibility timeout for a specific
%% message
%% the timeout value is applied immediately but isn't saved in memory for
%% that message.
%% If you don't delete a message after it is received, the visibility
%% timeout for the
%% message reverts to the original timeout value (not to the value you set
%% using the
%% `ChangeMessageVisibility' action) the next time the message is
%% received.
-spec change_message_visibility(aws_client:aws_client(), change_message_visibility_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, change_message_visibility_errors(), tuple()}.
change_message_visibility(Client, Input)
  when is_map(Client), is_map(Input) ->
    change_message_visibility(Client, Input, []).

-spec change_message_visibility(aws_client:aws_client(), change_message_visibility_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, change_message_visibility_errors(), tuple()}.
change_message_visibility(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ChangeMessageVisibility">>, Input, Options).

%% @doc Changes the visibility timeout of multiple messages.
%%
%% This is a batch version of
%%
%% ```
%% `ChangeMessageVisibility'.''' The result of the action
%% on each message is reported individually in the response. You can send up
%% to 10
%%
%% ```
%% `ChangeMessageVisibility' ''' requests with each
%% `ChangeMessageVisibilityBatch' action.
%%
%% Because the batch request can result in a combination of successful and
%% unsuccessful actions, you should check for batch errors even when the call
%% returns an HTTP status code of `200'.
-spec change_message_visibility_batch(aws_client:aws_client(), change_message_visibility_batch_request()) ->
    {ok, change_message_visibility_batch_result(), tuple()} |
    {error, any()} |
    {error, change_message_visibility_batch_errors(), tuple()}.
change_message_visibility_batch(Client, Input)
  when is_map(Client), is_map(Input) ->
    change_message_visibility_batch(Client, Input, []).

-spec change_message_visibility_batch(aws_client:aws_client(), change_message_visibility_batch_request(), proplists:proplist()) ->
    {ok, change_message_visibility_batch_result(), tuple()} |
    {error, any()} |
    {error, change_message_visibility_batch_errors(), tuple()}.
change_message_visibility_batch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ChangeMessageVisibilityBatch">>, Input, Options).

%% @doc Creates a new standard or FIFO queue.
%%
%% You can pass one or more attributes in
%% the request. Keep the following in mind:
%%
%% If you don't specify the `FifoQueue' attribute, Amazon SQS creates
%% a standard queue.
%%
%% You can't change the queue type after you create it and you can't
%% convert
%% an existing standard queue into a FIFO queue. You must either create a new
%% FIFO queue for your application or delete your existing standard queue and
%% recreate it as a FIFO queue. For more information, see Moving From a
%% Standard Queue to a FIFO Queue:
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-moving
%% in the
%% Amazon SQS Developer Guide.
%%
%% If you don't provide a value for an attribute, the queue is created
%% with the
%% default value for the attribute.
%%
%% If you delete a queue, you must wait at least 60 seconds before creating a
%% queue with the same name.
%%
%% To successfully create a new queue, you must provide a queue name that
%% adheres to the
%% limits
%% related to queues:
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/limits-queues.html
%% and is unique within the scope of your queues.
%%
%% After you create a queue, you must wait at least one second after the
%% queue is
%% created to be able to use the queue.
%%
%% To retrieve the URL of a queue, use the
%% `GetQueueUrl'
%% :
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/APIReference/API_GetQueueUrl.html
%% action. This action only requires the
%% `QueueName'
%% :
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/APIReference/API_CreateQueue.html#API_CreateQueue_RequestSyntax
%% parameter.
%%
%% When creating queues, keep the following points in mind:
%%
%% If you specify the name of an existing queue and provide the exact same
%% names
%% and values for all its attributes, the
%% `CreateQueue'
%% :
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/APIReference/API_CreateQueue.html
%% action will return the URL of the
%% existing queue instead of creating a new one.
%%
%% If you attempt to create a queue with a name that already exists but with
%% different attribute names or values, the `CreateQueue' action will
%% return an error. This ensures that existing queues are not inadvertently
%% altered.
%%
%% Cross-account permissions don't apply to this action. For more
%% information,
%% see Grant
%% cross-account permissions to a role and a username:
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name
%% in the Amazon SQS Developer Guide.
-spec create_queue(aws_client:aws_client(), create_queue_request()) ->
    {ok, create_queue_result(), tuple()} |
    {error, any()} |
    {error, create_queue_errors(), tuple()}.
create_queue(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_queue(Client, Input, []).

-spec create_queue(aws_client:aws_client(), create_queue_request(), proplists:proplist()) ->
    {ok, create_queue_result(), tuple()} |
    {error, any()} |
    {error, create_queue_errors(), tuple()}.
create_queue(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateQueue">>, Input, Options).

%% @doc Deletes the specified message from the specified queue.
%%
%% To select the message to
%% delete, use the `ReceiptHandle' of the message (not the
%% `MessageId' which you receive when you send the message). Amazon SQS
%% can
%% delete a message from a queue even if a visibility timeout setting causes
%% the message to
%% be locked by another consumer. Amazon SQS automatically deletes messages
%% left in a queue
%% longer than the retention period configured for the queue.
%%
%% Each time you receive a message, meaning when a consumer retrieves a
%% message from
%% the queue, it comes with a unique `ReceiptHandle'. If you receive the
%% same message more than once, you will get a different `ReceiptHandle'
%% each time. When you want to delete a message using the `DeleteMessage'
%% action, you must use the `ReceiptHandle' from the most recent time you
%% received the message. If you use an old `ReceiptHandle', the request
%% will
%% succeed, but the message might not be deleted.
%%
%% For standard queues, it is possible to receive a message even after you
%% delete it. This might happen on rare occasions if one of the servers which
%% stores a
%% copy of the message is unavailable when you send the request to delete the
%% message.
%% The copy remains on the server and might be returned to you during a
%% subsequent
%% receive request. You should ensure that your application is idempotent, so
%% that
%% receiving a message more than once does not cause issues.
-spec delete_message(aws_client:aws_client(), delete_message_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_message_errors(), tuple()}.
delete_message(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_message(Client, Input, []).

-spec delete_message(aws_client:aws_client(), delete_message_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_message_errors(), tuple()}.
delete_message(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMessage">>, Input, Options).

%% @doc Deletes up to ten messages from the specified queue.
%%
%% This is a batch version of
%%
%% ```
%% `DeleteMessage'.''' The result of the action on each
%% message is reported individually in the response.
%%
%% Because the batch request can result in a combination of successful and
%% unsuccessful actions, you should check for batch errors even when the call
%% returns an HTTP status code of `200'.
-spec delete_message_batch(aws_client:aws_client(), delete_message_batch_request()) ->
    {ok, delete_message_batch_result(), tuple()} |
    {error, any()} |
    {error, delete_message_batch_errors(), tuple()}.
delete_message_batch(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_message_batch(Client, Input, []).

-spec delete_message_batch(aws_client:aws_client(), delete_message_batch_request(), proplists:proplist()) ->
    {ok, delete_message_batch_result(), tuple()} |
    {error, any()} |
    {error, delete_message_batch_errors(), tuple()}.
delete_message_batch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMessageBatch">>, Input, Options).

%% @doc Deletes the queue specified by the `QueueUrl', regardless of the
%% queue's
%% contents.
%%
%% Be careful with the `DeleteQueue' action: When you delete a queue, any
%% messages in the queue are no longer available.
%%
%% When you delete a queue, the deletion process takes up to 60 seconds.
%% Requests you
%% send involving that queue during the 60 seconds might succeed. For
%% example, a
%%
%% ```
%% `SendMessage' ''' request might succeed, but after 60
%% seconds the queue and the message you sent no longer exist.
%%
%% When you delete a queue, you must wait at least 60 seconds before creating
%% a queue
%% with the same name.
%%
%% Cross-account permissions don't apply to this action. For more
%% information,
%% see Grant
%% cross-account permissions to a role and a username:
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name
%% in the Amazon SQS Developer Guide.
%%
%% The delete operation uses the HTTP `GET' verb.
-spec delete_queue(aws_client:aws_client(), delete_queue_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_queue_errors(), tuple()}.
delete_queue(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_queue(Client, Input, []).

-spec delete_queue(aws_client:aws_client(), delete_queue_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_queue_errors(), tuple()}.
delete_queue(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteQueue">>, Input, Options).

%% @doc Gets attributes for the specified queue.
%%
%% To determine whether a queue is FIFO:
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html,
%% you can check whether `QueueName' ends with the `.fifo' suffix.
-spec get_queue_attributes(aws_client:aws_client(), get_queue_attributes_request()) ->
    {ok, get_queue_attributes_result(), tuple()} |
    {error, any()} |
    {error, get_queue_attributes_errors(), tuple()}.
get_queue_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_queue_attributes(Client, Input, []).

-spec get_queue_attributes(aws_client:aws_client(), get_queue_attributes_request(), proplists:proplist()) ->
    {ok, get_queue_attributes_result(), tuple()} |
    {error, any()} |
    {error, get_queue_attributes_errors(), tuple()}.
get_queue_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetQueueAttributes">>, Input, Options).

%% @doc The `GetQueueUrl' API returns the URL of an existing Amazon SQS
%% queue.
%%
%% This is
%% useful when you know the queue's name but need to retrieve its URL for
%% further
%% operations.
%%
%% To access a queue owned by another Amazon Web Services account, use the
%% `QueueOwnerAWSAccountId' parameter to specify the account ID of the
%% queue's owner. Note that the queue owner must grant you the necessary
%% permissions to
%% access the queue. For more information about accessing shared queues, see
%% the
%%
%% ```
%% `AddPermission' ''' API or Allow developers to write
%% messages to a shared queue:
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-writing-an-sqs-policy.html#write-messages-to-shared-queue
%% in the Amazon SQS
%% Developer Guide.
-spec get_queue_url(aws_client:aws_client(), get_queue_url_request()) ->
    {ok, get_queue_url_result(), tuple()} |
    {error, any()} |
    {error, get_queue_url_errors(), tuple()}.
get_queue_url(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_queue_url(Client, Input, []).

-spec get_queue_url(aws_client:aws_client(), get_queue_url_request(), proplists:proplist()) ->
    {ok, get_queue_url_result(), tuple()} |
    {error, any()} |
    {error, get_queue_url_errors(), tuple()}.
get_queue_url(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetQueueUrl">>, Input, Options).

%% @doc Returns a list of your queues that have the `RedrivePolicy' queue
%% attribute
%% configured with a dead-letter queue.
%%
%% The `ListDeadLetterSourceQueues' methods supports pagination. Set
%% parameter `MaxResults' in the request to specify the maximum number of
%% results to be returned in the response. If you do not set
%% `MaxResults', the
%% response includes a maximum of 1,000 results. If you set `MaxResults'
%% and
%% there are additional results to display, the response includes a value for
%% `NextToken'. Use `NextToken' as a parameter in your next
%% request to `ListDeadLetterSourceQueues' to receive the next page of
%% results.
%%
%% For more information about using dead-letter queues, see Using Amazon SQS
%% Dead-Letter Queues:
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html
%% in the Amazon SQS Developer
%% Guide.
-spec list_dead_letter_source_queues(aws_client:aws_client(), list_dead_letter_source_queues_request()) ->
    {ok, list_dead_letter_source_queues_result(), tuple()} |
    {error, any()} |
    {error, list_dead_letter_source_queues_errors(), tuple()}.
list_dead_letter_source_queues(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_dead_letter_source_queues(Client, Input, []).

-spec list_dead_letter_source_queues(aws_client:aws_client(), list_dead_letter_source_queues_request(), proplists:proplist()) ->
    {ok, list_dead_letter_source_queues_result(), tuple()} |
    {error, any()} |
    {error, list_dead_letter_source_queues_errors(), tuple()}.
list_dead_letter_source_queues(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDeadLetterSourceQueues">>, Input, Options).

%% @doc Gets the most recent message movement tasks (up to 10) under a
%% specific source
%% queue.
%%
%% This action is currently limited to supporting message redrive from
%% dead-letter queues (DLQs):
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html
%% only. In this context, the source
%% queue is the dead-letter queue (DLQ), while the destination queue can be
%% the
%% original source queue (from which the messages were driven to the
%% dead-letter-queue), or a custom destination queue.
%%
%% Only one active message movement task is supported per queue at any given
%% time.
-spec list_message_move_tasks(aws_client:aws_client(), list_message_move_tasks_request()) ->
    {ok, list_message_move_tasks_result(), tuple()} |
    {error, any()} |
    {error, list_message_move_tasks_errors(), tuple()}.
list_message_move_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_message_move_tasks(Client, Input, []).

-spec list_message_move_tasks(aws_client:aws_client(), list_message_move_tasks_request(), proplists:proplist()) ->
    {ok, list_message_move_tasks_result(), tuple()} |
    {error, any()} |
    {error, list_message_move_tasks_errors(), tuple()}.
list_message_move_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMessageMoveTasks">>, Input, Options).

%% @doc List all cost allocation tags added to the specified Amazon SQS
%% queue.
%%
%% For an overview, see Tagging
%% Your Amazon SQS Queues:
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-tags.html
%% in the Amazon SQS Developer Guide.
%%
%% Cross-account permissions don't apply to this action. For more
%% information,
%% see Grant
%% cross-account permissions to a role and a username:
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name
%% in the Amazon SQS Developer Guide.
-spec list_queue_tags(aws_client:aws_client(), list_queue_tags_request()) ->
    {ok, list_queue_tags_result(), tuple()} |
    {error, any()} |
    {error, list_queue_tags_errors(), tuple()}.
list_queue_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_queue_tags(Client, Input, []).

-spec list_queue_tags(aws_client:aws_client(), list_queue_tags_request(), proplists:proplist()) ->
    {ok, list_queue_tags_result(), tuple()} |
    {error, any()} |
    {error, list_queue_tags_errors(), tuple()}.
list_queue_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListQueueTags">>, Input, Options).

%% @doc Returns a list of your queues in the current region.
%%
%% The response includes a maximum
%% of 1,000 results. If you specify a value for the optional
%% `QueueNamePrefix'
%% parameter, only queues with a name that begins with the specified value
%% are
%% returned.
%%
%% The `listQueues' methods supports pagination. Set parameter
%% `MaxResults' in the request to specify the maximum number of results
%% to
%% be returned in the response. If you do not set `MaxResults', the
%% response
%% includes a maximum of 1,000 results. If you set `MaxResults' and there
%% are
%% additional results to display, the response includes a value for
%% `NextToken'.
%% Use `NextToken' as a parameter in your next request to
%% `listQueues' to receive the next page of results.
%%
%% Cross-account permissions don't apply to this action. For more
%% information,
%% see Grant
%% cross-account permissions to a role and a username:
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name
%% in the Amazon SQS Developer Guide.
-spec list_queues(aws_client:aws_client(), list_queues_request()) ->
    {ok, list_queues_result(), tuple()} |
    {error, any()} |
    {error, list_queues_errors(), tuple()}.
list_queues(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_queues(Client, Input, []).

-spec list_queues(aws_client:aws_client(), list_queues_request(), proplists:proplist()) ->
    {ok, list_queues_result(), tuple()} |
    {error, any()} |
    {error, list_queues_errors(), tuple()}.
list_queues(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListQueues">>, Input, Options).

%% @doc Deletes available messages in a queue (including in-flight messages)
%% specified by the
%% `QueueURL' parameter.
%%
%% When you use the `PurgeQueue' action, you can't retrieve any
%% messages
%% deleted from a queue.
%%
%% The message deletion process takes up to 60 seconds. We recommend waiting
%% for 60
%% seconds regardless of your queue's size.
%%
%% Messages sent to the queue before you call
%% `PurgeQueue' might be received but are deleted within the next
%% minute.
%%
%% Messages sent to the queue after you call `PurgeQueue'
%% might be deleted while the queue is being purged.
-spec purge_queue(aws_client:aws_client(), purge_queue_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, purge_queue_errors(), tuple()}.
purge_queue(Client, Input)
  when is_map(Client), is_map(Input) ->
    purge_queue(Client, Input, []).

-spec purge_queue(aws_client:aws_client(), purge_queue_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, purge_queue_errors(), tuple()}.
purge_queue(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PurgeQueue">>, Input, Options).

%% @doc Retrieves one or more messages (up to 10), from the specified queue.
%%
%% Using the
%% `WaitTimeSeconds' parameter enables long-poll support. For more
%% information, see Amazon SQS
%% Long Polling:
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-long-polling.html
%% in the Amazon SQS Developer Guide.
%%
%% Short poll is the default behavior where a weighted random set of machines
%% is sampled
%% on a `ReceiveMessage' call. Therefore, only the messages on the
%% sampled
%% machines are returned. If the number of messages in the queue is small
%% (fewer than
%% 1,000), you most likely get fewer messages than you requested per
%% `ReceiveMessage' call. If the number of messages in the queue is
%% extremely small, you might not receive any messages in a particular
%% `ReceiveMessage' response. If this happens, repeat the request.
%%
%% For each message returned, the response includes the following:
%%
%% The message body.
%%
%% An MD5 digest of the message body. For information about MD5, see RFC1321:
%% https://www.ietf.org/rfc/rfc1321.txt.
%%
%% The `MessageId' you received when you sent the message to the
%% queue.
%%
%% The receipt handle.
%%
%% The message attributes.
%%
%% An MD5 digest of the message attributes.
%%
%% The receipt handle is the identifier you must provide when deleting the
%% message. For
%% more information, see Queue and Message Identifiers:
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-message-identifiers.html
%% in the Amazon SQS Developer
%% Guide.
%%
%% You can provide the `VisibilityTimeout' parameter in your request. The
%% parameter is applied to the messages that Amazon SQS returns in the
%% response. If you don't
%% include the parameter, the overall visibility timeout for the queue is
%% used for the
%% returned messages. The default visibility timeout for a queue is 30
%% seconds.
%%
%% In the future, new attributes might be added. If you write code that calls
%% this action, we recommend that you structure your code so that it can
%% handle new attributes gracefully.
-spec receive_message(aws_client:aws_client(), receive_message_request()) ->
    {ok, receive_message_result(), tuple()} |
    {error, any()} |
    {error, receive_message_errors(), tuple()}.
receive_message(Client, Input)
  when is_map(Client), is_map(Input) ->
    receive_message(Client, Input, []).

-spec receive_message(aws_client:aws_client(), receive_message_request(), proplists:proplist()) ->
    {ok, receive_message_result(), tuple()} |
    {error, any()} |
    {error, receive_message_errors(), tuple()}.
receive_message(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReceiveMessage">>, Input, Options).

%% @doc Revokes any permissions in the queue policy that matches the
%% specified
%% `Label' parameter.
%%
%% Only the owner of a queue can remove permissions from it.
%%
%% Cross-account permissions don't apply to this action. For more
%% information,
%% see Grant
%% cross-account permissions to a role and a username:
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name
%% in the Amazon SQS Developer Guide.
%%
%% To remove the ability to change queue permissions, you must deny
%% permission to the `AddPermission', `RemovePermission', and
%% `SetQueueAttributes' actions in your IAM policy.
-spec remove_permission(aws_client:aws_client(), remove_permission_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_permission_errors(), tuple()}.
remove_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_permission(Client, Input, []).

-spec remove_permission(aws_client:aws_client(), remove_permission_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_permission_errors(), tuple()}.
remove_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemovePermission">>, Input, Options).

%% @doc Delivers a message to the specified queue.
%%
%% A message can include only XML, JSON, and unformatted text. The following
%% Unicode characters are allowed. For more information, see the W3C
%% specification for characters: http://www.w3.org/TR/REC-xml/#charsets.
%%
%% `#x9' | `#xA' | `#xD' | `#x20' to `#xD7FF' |
%% `#xE000' to `#xFFFD' | `#x10000' to `#x10FFFF'
%%
%% Amazon SQS does not throw an exception or completely reject the message if
%% it contains invalid characters. Instead, it replaces those invalid
%% characters with `U+FFFD' before storing the message in the queue, as
%% long as the message body contains at least one valid character.
-spec send_message(aws_client:aws_client(), send_message_request()) ->
    {ok, send_message_result(), tuple()} |
    {error, any()} |
    {error, send_message_errors(), tuple()}.
send_message(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_message(Client, Input, []).

-spec send_message(aws_client:aws_client(), send_message_request(), proplists:proplist()) ->
    {ok, send_message_result(), tuple()} |
    {error, any()} |
    {error, send_message_errors(), tuple()}.
send_message(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendMessage">>, Input, Options).

%% @doc You can use `SendMessageBatch' to send up to 10 messages to the
%% specified
%% queue by assigning either identical or different values to each message
%% (or by not
%% assigning values at all).
%%
%% This is a batch version of
%% ```
%% `SendMessage'.''' For a FIFO queue, multiple messages
%% within a single batch are enqueued
%% in the order they are sent.
%%
%% The result of sending each message is reported individually in the
%% response.
%% Because the batch request can result in a combination of successful and
%% unsuccessful actions, you should check for batch errors even when the call
%% returns an HTTP status code of `200'.
%%
%% The maximum allowed individual message size and the maximum total payload
%% size (the
%% sum of the individual lengths of all of the batched messages) are both 256
%% KiB (262,144
%% bytes).
%%
%% A message can include only XML, JSON, and unformatted text. The following
%% Unicode characters are allowed. For more information, see the W3C
%% specification for characters: http://www.w3.org/TR/REC-xml/#charsets.
%%
%% `#x9' | `#xA' | `#xD' | `#x20' to `#xD7FF' |
%% `#xE000' to `#xFFFD' | `#x10000' to `#x10FFFF'
%%
%% Amazon SQS does not throw an exception or completely reject the message if
%% it contains invalid characters. Instead, it replaces those invalid
%% characters with `U+FFFD' before storing the message in the queue, as
%% long as the message body contains at least one valid character.
%%
%% If you don't specify the `DelaySeconds' parameter for an entry,
%% Amazon SQS uses
%% the default value for the queue.
-spec send_message_batch(aws_client:aws_client(), send_message_batch_request()) ->
    {ok, send_message_batch_result(), tuple()} |
    {error, any()} |
    {error, send_message_batch_errors(), tuple()}.
send_message_batch(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_message_batch(Client, Input, []).

-spec send_message_batch(aws_client:aws_client(), send_message_batch_request(), proplists:proplist()) ->
    {ok, send_message_batch_result(), tuple()} |
    {error, any()} |
    {error, send_message_batch_errors(), tuple()}.
send_message_batch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendMessageBatch">>, Input, Options).

%% @doc Sets the value of one or more queue attributes, like a policy.
%%
%% When you change a
%% queue's attributes, the change can take up to 60 seconds for most of
%% the attributes to
%% propagate throughout the Amazon SQS system. Changes made to the
%% `MessageRetentionPeriod' attribute can take up to 15 minutes and will
%% impact existing messages in the queue potentially causing them to be
%% expired and deleted
%% if the `MessageRetentionPeriod' is reduced below the age of existing
%% messages.
%%
%% In the future, new attributes might be added. If you write code that calls
%% this action, we recommend that you structure your code so that it can
%% handle new attributes gracefully.
%%
%% Cross-account permissions don't apply to this action. For more
%% information,
%% see Grant
%% cross-account permissions to a role and a username:
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name
%% in the Amazon SQS Developer Guide.
%%
%% To remove the ability to change queue permissions, you must deny
%% permission to the `AddPermission', `RemovePermission', and
%% `SetQueueAttributes' actions in your IAM policy.
-spec set_queue_attributes(aws_client:aws_client(), set_queue_attributes_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_queue_attributes_errors(), tuple()}.
set_queue_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_queue_attributes(Client, Input, []).

-spec set_queue_attributes(aws_client:aws_client(), set_queue_attributes_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_queue_attributes_errors(), tuple()}.
set_queue_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetQueueAttributes">>, Input, Options).

%% @doc Starts an asynchronous task to move messages from a specified source
%% queue to a
%% specified destination queue.
%%
%% This action is currently limited to supporting message redrive from queues
%% that are configured as dead-letter queues (DLQs):
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html
%% of other Amazon SQS queues only. Non-SQS
%% queue sources of dead-letter queues, such as Lambda or Amazon SNS topics,
%% are
%% currently not supported.
%%
%% In dead-letter queues redrive context, the
%% `StartMessageMoveTask' the source queue is the DLQ, while the
%% destination queue can be the original source queue (from which the
%% messages
%% were driven to the dead-letter-queue), or a custom destination queue.
%%
%% Only one active message movement task is supported per queue at any given
%% time.
-spec start_message_move_task(aws_client:aws_client(), start_message_move_task_request()) ->
    {ok, start_message_move_task_result(), tuple()} |
    {error, any()} |
    {error, start_message_move_task_errors(), tuple()}.
start_message_move_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_message_move_task(Client, Input, []).

-spec start_message_move_task(aws_client:aws_client(), start_message_move_task_request(), proplists:proplist()) ->
    {ok, start_message_move_task_result(), tuple()} |
    {error, any()} |
    {error, start_message_move_task_errors(), tuple()}.
start_message_move_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMessageMoveTask">>, Input, Options).

%% @doc Add cost allocation tags to the specified Amazon SQS queue.
%%
%% For an overview, see Tagging
%% Your Amazon SQS Queues:
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-tags.html
%% in the Amazon SQS Developer Guide.
%%
%% When you use queue tags, keep the following guidelines in mind:
%%
%% Adding more than 50 tags to a queue isn't recommended.
%%
%% Tags don't have any semantic meaning. Amazon SQS interprets tags as
%% character strings.
%%
%% Tags are case-sensitive.
%%
%% A new tag with a key identical to that of an existing tag overwrites the
%% existing tag.
%%
%% For a full list of tag restrictions, see
%% Quotas related to queues:
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-limits.html#limits-queues
%% in the Amazon SQS Developer Guide.
%%
%% Cross-account permissions don't apply to this action. For more
%% information,
%% see Grant
%% cross-account permissions to a role and a username:
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name
%% in the Amazon SQS Developer Guide.
-spec tag_queue(aws_client:aws_client(), tag_queue_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_queue_errors(), tuple()}.
tag_queue(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_queue(Client, Input, []).

-spec tag_queue(aws_client:aws_client(), tag_queue_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_queue_errors(), tuple()}.
tag_queue(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagQueue">>, Input, Options).

%% @doc Remove cost allocation tags from the specified Amazon SQS queue.
%%
%% For an overview, see Tagging
%% Your Amazon SQS Queues:
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-tags.html
%% in the Amazon SQS Developer Guide.
%%
%% Cross-account permissions don't apply to this action. For more
%% information,
%% see Grant
%% cross-account permissions to a role and a username:
%% https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name
%% in the Amazon SQS Developer Guide.
-spec untag_queue(aws_client:aws_client(), untag_queue_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_queue_errors(), tuple()}.
untag_queue(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_queue(Client, Input, []).

-spec untag_queue(aws_client:aws_client(), untag_queue_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_queue_errors(), tuple()}.
untag_queue(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagQueue">>, Input, Options).

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
    Client1 = Client#{service => <<"sqs">>},
    Host = build_host(<<"sqs">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"AmazonSQS.", Action/binary>>}
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
