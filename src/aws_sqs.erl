%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the <i>Amazon Simple Queue Service API Reference</i>.
%%
%% Amazon Simple Queue Service (Amazon SQS) is a reliable, highly-scalable
%% hosted queue for storing messages as they travel between applications or
%% microservices. Amazon SQS moves data between distributed application
%% components and helps you decouple these components.
%%
%% You can use <a href="http://aws.amazon.com/tools/#sdk">AWS SDKs</a> to
%% access Amazon SQS using your favorite programming language. The SDKs
%% perform tasks such as the following automatically:
%%
%% <ul> <li> Cryptographically sign your service requests
%%
%% </li> <li> Retry requests
%%
%% </li> <li> Handle error responses
%%
%% </li> </ul> <b>Additional Information</b>
%%
%% <ul> <li> <a href="http://aws.amazon.com/sqs/">Amazon SQS Product Page</a>
%%
%% </li> <li> <i>Amazon Simple Queue Service Developer Guide</i>
%%
%% <ul> <li> <a
%% href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-making-api-requests.html">Making
%% API Requests</a>
%%
%% </li> <li> <a
%% href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html">Amazon
%% SQS Message Attributes</a>
%%
%% </li> <li> <a
%% href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html">Amazon
%% SQS Dead-Letter Queues</a>
%%
%% </li> </ul> </li> <li> <a
%% href="http://docs.aws.amazon.com/cli/latest/reference/sqs/index.html">Amazon
%% SQS in the <i>AWS CLI Command Reference</i> </a>
%%
%% </li> <li> <i>Amazon Web Services General Reference</i>
%%
%% <ul> <li> <a
%% href="https://docs.aws.amazon.com/general/latest/gr/rande.html#sqs_region">Regions
%% and Endpoints</a>
%%
%% </li> </ul> </li> </ul>
-module(aws_sqs).

-export([add_permission/2,
         add_permission/3,
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
         tag_queue/2,
         tag_queue/3,
         untag_queue/2,
         untag_queue/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds a permission to a queue for a specific <a
%% href="https://docs.aws.amazon.com/general/latest/gr/glos-chap.html#P">principal</a>.
%% This allows sharing access to the queue.
%%
%% When you create a queue, you have full control access rights for the
%% queue. Only you, the owner of the queue, can grant or deny permissions to
%% the queue. For more information about these permissions, see <a
%% href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-writing-an-sqs-policy.html#write-messages-to-shared-queue">Allow
%% Developers to Write Messages to a Shared Queue</a> in the <i>Amazon Simple
%% Queue Service Developer Guide</i>.
%%
%% <note> <ul> <li> <code>AddPermission</code> generates a policy for you.
%% You can use <code> <a>SetQueueAttributes</a> </code> to upload your
%% policy. For more information, see <a
%% href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-creating-custom-policies.html">Using
%% Custom Policies with the Amazon SQS Access Policy Language</a> in the
%% <i>Amazon Simple Queue Service Developer Guide</i>.
%%
%% </li> <li> An Amazon SQS policy can have a maximum of 7 actions.
%%
%% </li> <li> To remove the ability to change queue permissions, you must
%% deny permission to the <code>AddPermission</code>,
%% <code>RemovePermission</code>, and <code>SetQueueAttributes</code> actions
%% in your IAM policy.
%%
%% </li> </ul> </note> Some actions take lists of parameters. These lists are
%% specified using the <code>param.n</code> notation. Values of
%% <code>n</code> are integers starting from 1. For example, a parameter list
%% with two elements looks like this:
%%
%% <code>&amp;AttributeName.1=first</code>
%%
%% <code>&amp;AttributeName.2=second</code>
%%
%% <note> Cross-account permissions don't apply to this action. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name">Grant
%% Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon
%% Simple Queue Service Developer Guide</i>.
%%
%% </note>
add_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_permission(Client, Input, []).
add_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddPermission">>, Input, Options).

%% @doc Changes the visibility timeout of a specified message in a queue to a
%% new value. The default visibility timeout for a message is 30 seconds. The
%% minimum is 0 seconds. The maximum is 12 hours. For more information, see
%% <a
%% href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html">Visibility
%% Timeout</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.
%%
%% For example, you have a message with a visibility timeout of 5 minutes.
%% After 3 minutes, you call <code>ChangeMessageVisibility</code> with a
%% timeout of 10 minutes. You can continue to call
%% <code>ChangeMessageVisibility</code> to extend the visibility timeout to
%% the maximum allowed time. If you try to extend the visibility timeout
%% beyond the maximum, your request is rejected.
%%
%% An Amazon SQS message has three basic states:
%%
%% <ol> <li> Sent to a queue by a producer.
%%
%% </li> <li> Received from the queue by a consumer.
%%
%% </li> <li> Deleted from the queue.
%%
%% </li> </ol> A message is considered to be <i>stored</i> after it is sent
%% to a queue by a producer, but not yet received from the queue by a
%% consumer (that is, between states 1 and 2). There is no limit to the
%% number of stored messages. A message is considered to be <i>in flight</i>
%% after it is received from a queue by a consumer, but not yet deleted from
%% the queue (that is, between states 2 and 3). There is a limit to the
%% number of inflight messages.
%%
%% Limits that apply to inflight messages are unrelated to the
%% <i>unlimited</i> number of stored messages.
%%
%% For most standard queues (depending on queue traffic and message backlog),
%% there can be a maximum of approximately 120,000 inflight messages
%% (received from a queue by a consumer, but not yet deleted from the queue).
%% If you reach this limit, Amazon SQS returns the <code>OverLimit</code>
%% error message. To avoid reaching the limit, you should delete messages
%% from the queue after they're processed. You can also increase the number
%% of queues you use to process your messages. To request a limit increase,
%% <a
%% href="https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&amp;limitType=service-code-sqs">file
%% a support request</a>.
%%
%% For FIFO queues, there can be a maximum of 20,000 inflight messages
%% (received from a queue by a consumer, but not yet deleted from the queue).
%% If you reach this limit, Amazon SQS returns no error messages.
%%
%% <important> If you attempt to set the <code>VisibilityTimeout</code> to a
%% value greater than the maximum time left, Amazon SQS returns an error.
%% Amazon SQS doesn't automatically recalculate and increase the timeout to
%% the maximum remaining time.
%%
%% Unlike with a queue, when you change the visibility timeout for a specific
%% message the timeout value is applied immediately but isn't saved in memory
%% for that message. If you don't delete a message after it is received, the
%% visibility timeout for the message reverts to the original timeout value
%% (not to the value you set using the <code>ChangeMessageVisibility</code>
%% action) the next time the message is received.
%%
%% </important>
change_message_visibility(Client, Input)
  when is_map(Client), is_map(Input) ->
    change_message_visibility(Client, Input, []).
change_message_visibility(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ChangeMessageVisibility">>, Input, Options).

%% @doc Changes the visibility timeout of multiple messages. This is a batch
%% version of <code> <a>ChangeMessageVisibility</a>.</code> The result of the
%% action on each message is reported individually in the response. You can
%% send up to 10 <code> <a>ChangeMessageVisibility</a> </code> requests with
%% each <code>ChangeMessageVisibilityBatch</code> action.
%%
%% <important> Because the batch request can result in a combination of
%% successful and unsuccessful actions, you should check for batch errors
%% even when the call returns an HTTP status code of <code>200</code>.
%%
%% </important> Some actions take lists of parameters. These lists are
%% specified using the <code>param.n</code> notation. Values of
%% <code>n</code> are integers starting from 1. For example, a parameter list
%% with two elements looks like this:
%%
%% <code>&amp;AttributeName.1=first</code>
%%
%% <code>&amp;AttributeName.2=second</code>
change_message_visibility_batch(Client, Input)
  when is_map(Client), is_map(Input) ->
    change_message_visibility_batch(Client, Input, []).
change_message_visibility_batch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ChangeMessageVisibilityBatch">>, Input, Options).

%% @doc Creates a new standard or FIFO queue. You can pass one or more
%% attributes in the request. Keep the following in mind:
%%
%% <ul> <li> If you don't specify the <code>FifoQueue</code> attribute,
%% Amazon SQS creates a standard queue.
%%
%% <note> You can't change the queue type after you create it and you can't
%% convert an existing standard queue into a FIFO queue. You must either
%% create a new FIFO queue for your application or delete your existing
%% standard queue and recreate it as a FIFO queue. For more information, see
%% <a
%% href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-moving">Moving
%% From a Standard Queue to a FIFO Queue</a> in the <i>Amazon Simple Queue
%% Service Developer Guide</i>.
%%
%% </note> </li> <li> If you don't provide a value for an attribute, the
%% queue is created with the default value for the attribute.
%%
%% </li> <li> If you delete a queue, you must wait at least 60 seconds before
%% creating a queue with the same name.
%%
%% </li> </ul> To successfully create a new queue, you must provide a queue
%% name that adheres to the <a
%% href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/limits-queues.html">limits
%% related to queues</a> and is unique within the scope of your queues.
%%
%% <note> After you create a queue, you must wait at least one second after
%% the queue is created to be able to use the queue.
%%
%% </note> To get the queue URL, use the <code> <a>GetQueueUrl</a> </code>
%% action. <code> <a>GetQueueUrl</a> </code> requires only the
%% <code>QueueName</code> parameter. be aware of existing queue names:
%%
%% <ul> <li> If you provide the name of an existing queue along with the
%% exact names and values of all the queue's attributes,
%% <code>CreateQueue</code> returns the queue URL for the existing queue.
%%
%% </li> <li> If the queue name, attribute names, or attribute values don't
%% match an existing queue, <code>CreateQueue</code> returns an error.
%%
%% </li> </ul> Some actions take lists of parameters. These lists are
%% specified using the <code>param.n</code> notation. Values of
%% <code>n</code> are integers starting from 1. For example, a parameter list
%% with two elements looks like this:
%%
%% <code>&amp;AttributeName.1=first</code>
%%
%% <code>&amp;AttributeName.2=second</code>
%%
%% <note> Cross-account permissions don't apply to this action. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name">Grant
%% Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon
%% Simple Queue Service Developer Guide</i>.
%%
%% </note>
create_queue(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_queue(Client, Input, []).
create_queue(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateQueue">>, Input, Options).

%% @doc Deletes the specified message from the specified queue. To select the
%% message to delete, use the <code>ReceiptHandle</code> of the message
%% (<i>not</i> the <code>MessageId</code> which you receive when you send the
%% message). Amazon SQS can delete a message from a queue even if a
%% visibility timeout setting causes the message to be locked by another
%% consumer. Amazon SQS automatically deletes messages left in a queue longer
%% than the retention period configured for the queue.
%%
%% <note> The <code>ReceiptHandle</code> is associated with a <i>specific
%% instance</i> of receiving a message. If you receive a message more than
%% once, the <code>ReceiptHandle</code> is different each time you receive a
%% message. When you use the <code>DeleteMessage</code> action, you must
%% provide the most recently received <code>ReceiptHandle</code> for the
%% message (otherwise, the request succeeds, but the message might not be
%% deleted).
%%
%% For standard queues, it is possible to receive a message even after you
%% delete it. This might happen on rare occasions if one of the servers which
%% stores a copy of the message is unavailable when you send the request to
%% delete the message. The copy remains on the server and might be returned
%% to you during a subsequent receive request. You should ensure that your
%% application is idempotent, so that receiving a message more than once does
%% not cause issues.
%%
%% </note>
delete_message(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_message(Client, Input, []).
delete_message(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMessage">>, Input, Options).

%% @doc Deletes up to ten messages from the specified queue. This is a batch
%% version of <code> <a>DeleteMessage</a>.</code> The result of the action on
%% each message is reported individually in the response.
%%
%% <important> Because the batch request can result in a combination of
%% successful and unsuccessful actions, you should check for batch errors
%% even when the call returns an HTTP status code of <code>200</code>.
%%
%% </important> Some actions take lists of parameters. These lists are
%% specified using the <code>param.n</code> notation. Values of
%% <code>n</code> are integers starting from 1. For example, a parameter list
%% with two elements looks like this:
%%
%% <code>&amp;AttributeName.1=first</code>
%%
%% <code>&amp;AttributeName.2=second</code>
delete_message_batch(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_message_batch(Client, Input, []).
delete_message_batch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMessageBatch">>, Input, Options).

%% @doc Deletes the queue specified by the <code>QueueUrl</code>, regardless
%% of the queue's contents.
%%
%% <important> Be careful with the <code>DeleteQueue</code> action: When you
%% delete a queue, any messages in the queue are no longer available.
%%
%% </important> When you delete a queue, the deletion process takes up to 60
%% seconds. Requests you send involving that queue during the 60 seconds
%% might succeed. For example, a <code> <a>SendMessage</a> </code> request
%% might succeed, but after 60 seconds the queue and the message you sent no
%% longer exist.
%%
%% When you delete a queue, you must wait at least 60 seconds before creating
%% a queue with the same name.
%%
%% <note> Cross-account permissions don't apply to this action. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name">Grant
%% Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon
%% Simple Queue Service Developer Guide</i>.
%%
%% </note>
delete_queue(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_queue(Client, Input, []).
delete_queue(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteQueue">>, Input, Options).

%% @doc Gets attributes for the specified queue.
%%
%% <note> To determine whether a queue is <a
%% href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html">FIFO</a>,
%% you can check whether <code>QueueName</code> ends with the
%% <code>.fifo</code> suffix.
%%
%% </note>
get_queue_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_queue_attributes(Client, Input, []).
get_queue_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetQueueAttributes">>, Input, Options).

%% @doc Returns the URL of an existing Amazon SQS queue.
%%
%% To access a queue that belongs to another AWS account, use the
%% <code>QueueOwnerAWSAccountId</code> parameter to specify the account ID of
%% the queue's owner. The queue's owner must grant you permission to access
%% the queue. For more information about shared queue access, see <code>
%% <a>AddPermission</a> </code> or see <a
%% href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-writing-an-sqs-policy.html#write-messages-to-shared-queue">Allow
%% Developers to Write Messages to a Shared Queue</a> in the <i>Amazon Simple
%% Queue Service Developer Guide</i>.
get_queue_url(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_queue_url(Client, Input, []).
get_queue_url(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetQueueUrl">>, Input, Options).

%% @doc Returns a list of your queues that have the
%% <code>RedrivePolicy</code> queue attribute configured with a dead-letter
%% queue.
%%
%% For more information about using dead-letter queues, see <a
%% href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html">Using
%% Amazon SQS Dead-Letter Queues</a> in the <i>Amazon Simple Queue Service
%% Developer Guide</i>.
list_dead_letter_source_queues(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_dead_letter_source_queues(Client, Input, []).
list_dead_letter_source_queues(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDeadLetterSourceQueues">>, Input, Options).

%% @doc List all cost allocation tags added to the specified Amazon SQS
%% queue. For an overview, see <a
%% href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-tags.html">Tagging
%% Your Amazon SQS Queues</a> in the <i>Amazon Simple Queue Service Developer
%% Guide</i>.
%%
%% <note> Cross-account permissions don't apply to this action. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name">Grant
%% Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon
%% Simple Queue Service Developer Guide</i>.
%%
%% </note>
list_queue_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_queue_tags(Client, Input, []).
list_queue_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListQueueTags">>, Input, Options).

%% @doc Returns a list of your queues. The maximum number of queues that can
%% be returned is 1,000. If you specify a value for the optional
%% <code>QueueNamePrefix</code> parameter, only queues with a name that
%% begins with the specified value are returned.
%%
%% <note> Cross-account permissions don't apply to this action. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name">Grant
%% Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon
%% Simple Queue Service Developer Guide</i>.
%%
%% </note>
list_queues(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_queues(Client, Input, []).
list_queues(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListQueues">>, Input, Options).

%% @doc Deletes the messages in a queue specified by the
%% <code>QueueURL</code> parameter.
%%
%% <important> When you use the <code>PurgeQueue</code> action, you can't
%% retrieve any messages deleted from a queue.
%%
%% The message deletion process takes up to 60 seconds. We recommend waiting
%% for 60 seconds regardless of your queue's size.
%%
%% </important> Messages sent to the queue <i>before</i> you call
%% <code>PurgeQueue</code> might be received but are deleted within the next
%% minute.
%%
%% Messages sent to the queue <i>after</i> you call <code>PurgeQueue</code>
%% might be deleted while the queue is being purged.
purge_queue(Client, Input)
  when is_map(Client), is_map(Input) ->
    purge_queue(Client, Input, []).
purge_queue(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PurgeQueue">>, Input, Options).

%% @doc Retrieves one or more messages (up to 10), from the specified queue.
%% Using the <code>WaitTimeSeconds</code> parameter enables long-poll
%% support. For more information, see <a
%% href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-long-polling.html">Amazon
%% SQS Long Polling</a> in the <i>Amazon Simple Queue Service Developer
%% Guide</i>.
%%
%% Short poll is the default behavior where a weighted random set of machines
%% is sampled on a <code>ReceiveMessage</code> call. Thus, only the messages
%% on the sampled machines are returned. If the number of messages in the
%% queue is small (fewer than 1,000), you most likely get fewer messages than
%% you requested per <code>ReceiveMessage</code> call. If the number of
%% messages in the queue is extremely small, you might not receive any
%% messages in a particular <code>ReceiveMessage</code> response. If this
%% happens, repeat the request.
%%
%% For each message returned, the response includes the following:
%%
%% <ul> <li> The message body.
%%
%% </li> <li> An MD5 digest of the message body. For information about MD5,
%% see <a href="https://www.ietf.org/rfc/rfc1321.txt">RFC1321</a>.
%%
%% </li> <li> The <code>MessageId</code> you received when you sent the
%% message to the queue.
%%
%% </li> <li> The receipt handle.
%%
%% </li> <li> The message attributes.
%%
%% </li> <li> An MD5 digest of the message attributes.
%%
%% </li> </ul> The receipt handle is the identifier you must provide when
%% deleting the message. For more information, see <a
%% href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-message-identifiers.html">Queue
%% and Message Identifiers</a> in the <i>Amazon Simple Queue Service
%% Developer Guide</i>.
%%
%% You can provide the <code>VisibilityTimeout</code> parameter in your
%% request. The parameter is applied to the messages that Amazon SQS returns
%% in the response. If you don't include the parameter, the overall
%% visibility timeout for the queue is used for the returned messages. For
%% more information, see <a
%% href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html">Visibility
%% Timeout</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.
%%
%% A message that isn't deleted or a message whose visibility isn't extended
%% before the visibility timeout expires counts as a failed receive.
%% Depending on the configuration of the queue, the message might be sent to
%% the dead-letter queue.
%%
%% <note> In the future, new attributes might be added. If you write code
%% that calls this action, we recommend that you structure your code so that
%% it can handle new attributes gracefully.
%%
%% </note>
receive_message(Client, Input)
  when is_map(Client), is_map(Input) ->
    receive_message(Client, Input, []).
receive_message(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReceiveMessage">>, Input, Options).

%% @doc Revokes any permissions in the queue policy that matches the
%% specified <code>Label</code> parameter.
%%
%% <note> <ul> <li> Only the owner of a queue can remove permissions from it.
%%
%% </li> <li> Cross-account permissions don't apply to this action. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name">Grant
%% Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon
%% Simple Queue Service Developer Guide</i>.
%%
%% </li> <li> To remove the ability to change queue permissions, you must
%% deny permission to the <code>AddPermission</code>,
%% <code>RemovePermission</code>, and <code>SetQueueAttributes</code> actions
%% in your IAM policy.
%%
%% </li> </ul> </note>
remove_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_permission(Client, Input, []).
remove_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemovePermission">>, Input, Options).

%% @doc Delivers a message to the specified queue.
%%
%% <important> A message can include only XML, JSON, and unformatted text.
%% The following Unicode characters are allowed:
%%
%% <code>#x9</code> | <code>#xA</code> | <code>#xD</code> | <code>#x20</code>
%% to <code>#xD7FF</code> | <code>#xE000</code> to <code>#xFFFD</code> |
%% <code>#x10000</code> to <code>#x10FFFF</code>
%%
%% Any characters not included in this list will be rejected. For more
%% information, see the <a href="http://www.w3.org/TR/REC-xml/#charsets">W3C
%% specification for characters</a>.
%%
%% </important>
send_message(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_message(Client, Input, []).
send_message(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendMessage">>, Input, Options).

%% @doc Delivers up to ten messages to the specified queue. This is a batch
%% version of <code> <a>SendMessage</a>.</code> For a FIFO queue, multiple
%% messages within a single batch are enqueued in the order they are sent.
%%
%% The result of sending each message is reported individually in the
%% response. Because the batch request can result in a combination of
%% successful and unsuccessful actions, you should check for batch errors
%% even when the call returns an HTTP status code of <code>200</code>.
%%
%% The maximum allowed individual message size and the maximum total payload
%% size (the sum of the individual lengths of all of the batched messages)
%% are both 256 KB (262,144 bytes).
%%
%% <important> A message can include only XML, JSON, and unformatted text.
%% The following Unicode characters are allowed:
%%
%% <code>#x9</code> | <code>#xA</code> | <code>#xD</code> | <code>#x20</code>
%% to <code>#xD7FF</code> | <code>#xE000</code> to <code>#xFFFD</code> |
%% <code>#x10000</code> to <code>#x10FFFF</code>
%%
%% Any characters not included in this list will be rejected. For more
%% information, see the <a href="http://www.w3.org/TR/REC-xml/#charsets">W3C
%% specification for characters</a>.
%%
%% </important> If you don't specify the <code>DelaySeconds</code> parameter
%% for an entry, Amazon SQS uses the default value for the queue.
%%
%% Some actions take lists of parameters. These lists are specified using the
%% <code>param.n</code> notation. Values of <code>n</code> are integers
%% starting from 1. For example, a parameter list with two elements looks
%% like this:
%%
%% <code>&amp;AttributeName.1=first</code>
%%
%% <code>&amp;AttributeName.2=second</code>
send_message_batch(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_message_batch(Client, Input, []).
send_message_batch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendMessageBatch">>, Input, Options).

%% @doc Sets the value of one or more queue attributes. When you change a
%% queue's attributes, the change can take up to 60 seconds for most of the
%% attributes to propagate throughout the Amazon SQS system. Changes made to
%% the <code>MessageRetentionPeriod</code> attribute can take up to 15
%% minutes.
%%
%% <note> <ul> <li> In the future, new attributes might be added. If you
%% write code that calls this action, we recommend that you structure your
%% code so that it can handle new attributes gracefully.
%%
%% </li> <li> Cross-account permissions don't apply to this action. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name">Grant
%% Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon
%% Simple Queue Service Developer Guide</i>.
%%
%% </li> <li> To remove the ability to change queue permissions, you must
%% deny permission to the <code>AddPermission</code>,
%% <code>RemovePermission</code>, and <code>SetQueueAttributes</code> actions
%% in your IAM policy.
%%
%% </li> </ul> </note>
set_queue_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_queue_attributes(Client, Input, []).
set_queue_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetQueueAttributes">>, Input, Options).

%% @doc Add cost allocation tags to the specified Amazon SQS queue. For an
%% overview, see <a
%% href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-tags.html">Tagging
%% Your Amazon SQS Queues</a> in the <i>Amazon Simple Queue Service Developer
%% Guide</i>.
%%
%% When you use queue tags, keep the following guidelines in mind:
%%
%% <ul> <li> Adding more than 50 tags to a queue isn't recommended.
%%
%% </li> <li> Tags don't have any semantic meaning. Amazon SQS interprets
%% tags as character strings.
%%
%% </li> <li> Tags are case-sensitive.
%%
%% </li> <li> A new tag with a key identical to that of an existing tag
%% overwrites the existing tag.
%%
%% </li> </ul> For a full list of tag restrictions, see <a
%% href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-limits.html#limits-queues">Limits
%% Related to Queues</a> in the <i>Amazon Simple Queue Service Developer
%% Guide</i>.
%%
%% <note> Cross-account permissions don't apply to this action. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name">Grant
%% Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon
%% Simple Queue Service Developer Guide</i>.
%%
%% </note>
tag_queue(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_queue(Client, Input, []).
tag_queue(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagQueue">>, Input, Options).

%% @doc Remove cost allocation tags from the specified Amazon SQS queue. For
%% an overview, see <a
%% href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-tags.html">Tagging
%% Your Amazon SQS Queues</a> in the <i>Amazon Simple Queue Service Developer
%% Guide</i>.
%%
%% <note> Cross-account permissions don't apply to this action. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name">Grant
%% Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon
%% Simple Queue Service Developer Guide</i>.
%%
%% </note>
untag_queue(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_queue(Client, Input, []).
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
request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"sqs">>},
    Host = get_host(<<"sqs">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-www-form-urlencoded">>}
    ],
    Input = Input0#{ <<"Action">> => Action
                   , <<"Version">> => <<"2012-11-05">>
                   },
    Payload = uri_string:compose_query(maps:to_list(Input)),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = aws_util:decode_xml(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = aws_util:decode_xml(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
