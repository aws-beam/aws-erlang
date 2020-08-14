%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <fullname>AWS Lambda</fullname>
%%
%% <b>Overview</b>
%%
%% This is the <i>AWS Lambda API Reference</i>. The AWS Lambda Developer
%% Guide provides additional information. For the service overview, see <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/welcome.html">What is
%% AWS Lambda</a>, and for information about how the service works, see <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html">AWS
%% Lambda: How it Works</a> in the <b>AWS Lambda Developer Guide</b>.
-module(aws_lambda).

-export([add_layer_version_permission/4,
         add_layer_version_permission/5,
         add_permission/3,
         add_permission/4,
         create_alias/3,
         create_alias/4,
         create_event_source_mapping/2,
         create_event_source_mapping/3,
         create_function/2,
         create_function/3,
         delete_alias/4,
         delete_alias/5,
         delete_event_source_mapping/3,
         delete_event_source_mapping/4,
         delete_function/3,
         delete_function/4,
         delete_function_concurrency/3,
         delete_function_concurrency/4,
         delete_function_event_invoke_config/3,
         delete_function_event_invoke_config/4,
         delete_layer_version/4,
         delete_layer_version/5,
         delete_provisioned_concurrency_config/3,
         delete_provisioned_concurrency_config/4,
         get_account_settings/1,
         get_account_settings/2,
         get_alias/3,
         get_alias/4,
         get_event_source_mapping/2,
         get_event_source_mapping/3,
         get_function/2,
         get_function/3,
         get_function_concurrency/2,
         get_function_concurrency/3,
         get_function_configuration/2,
         get_function_configuration/3,
         get_function_event_invoke_config/2,
         get_function_event_invoke_config/3,
         get_layer_version/3,
         get_layer_version/4,
         get_layer_version_by_arn/1,
         get_layer_version_by_arn/2,
         get_layer_version_policy/3,
         get_layer_version_policy/4,
         get_policy/2,
         get_policy/3,
         get_provisioned_concurrency_config/2,
         get_provisioned_concurrency_config/3,
         invoke/3,
         invoke/4,
         invoke_async/3,
         invoke_async/4,
         list_aliases/2,
         list_aliases/3,
         list_event_source_mappings/1,
         list_event_source_mappings/2,
         list_function_event_invoke_configs/2,
         list_function_event_invoke_configs/3,
         list_functions/1,
         list_functions/2,
         list_layer_versions/2,
         list_layer_versions/3,
         list_layers/1,
         list_layers/2,
         list_provisioned_concurrency_configs/2,
         list_provisioned_concurrency_configs/3,
         list_tags/2,
         list_tags/3,
         list_versions_by_function/2,
         list_versions_by_function/3,
         publish_layer_version/3,
         publish_layer_version/4,
         publish_version/3,
         publish_version/4,
         put_function_concurrency/3,
         put_function_concurrency/4,
         put_function_event_invoke_config/3,
         put_function_event_invoke_config/4,
         put_provisioned_concurrency_config/3,
         put_provisioned_concurrency_config/4,
         remove_layer_version_permission/5,
         remove_layer_version_permission/6,
         remove_permission/4,
         remove_permission/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_alias/4,
         update_alias/5,
         update_event_source_mapping/3,
         update_event_source_mapping/4,
         update_function_code/3,
         update_function_code/4,
         update_function_configuration/3,
         update_function_configuration/4,
         update_function_event_invoke_config/3,
         update_function_event_invoke_config/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds permissions to the resource-based policy of a version of an <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">AWS
%% Lambda layer</a>. Use this action to grant layer usage permission to other
%% accounts. You can grant permission to a single account, all AWS accounts,
%% or all accounts in an organization.
%%
%% To revoke permission, call <a>RemoveLayerVersionPermission</a> with the
%% statement ID that you specified when you added it.
add_layer_version_permission(Client, LayerName, VersionNumber, Input) ->
    add_layer_version_permission(Client, LayerName, VersionNumber, Input, []).
add_layer_version_permission(Client, LayerName, VersionNumber, Input0, Options) ->
    Method = post,
    Path = ["/2018-10-31/layers/", http_uri:encode(LayerName), "/versions/", http_uri:encode(VersionNumber), "/policy"],
    SuccessStatusCode = 201,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Grants an AWS service or another account permission to use a
%% function. You can apply the policy at the function level, or specify a
%% qualifier to restrict access to a single version or alias. If you use a
%% qualifier, the invoker must use the full Amazon Resource Name (ARN) of
%% that version or alias to invoke the function.
%%
%% To grant permission to another account, specify the account ID as the
%% <code>Principal</code>. For AWS services, the principal is a domain-style
%% identifier defined by the service, like <code>s3.amazonaws.com</code> or
%% <code>sns.amazonaws.com</code>. For AWS services, you can also specify the
%% ARN of the associated resource as the <code>SourceArn</code>. If you grant
%% permission to a service principal without specifying the source, other
%% accounts could potentially configure resources in their account to invoke
%% your Lambda function.
%%
%% This action adds a statement to a resource-based permissions policy for
%% the function. For more information about function policies, see <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html">Lambda
%% Function Policies</a>.
add_permission(Client, FunctionName, Input) ->
    add_permission(Client, FunctionName, Input, []).
add_permission(Client, FunctionName, Input0, Options) ->
    Method = post,
    Path = ["/2015-03-31/functions/", http_uri:encode(FunctionName), "/policy"],
    SuccessStatusCode = 201,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">alias</a>
%% for a Lambda function version. Use aliases to provide clients with a
%% function identifier that you can update to invoke a different version.
%%
%% You can also map an alias to split invocation requests between two
%% versions. Use the <code>RoutingConfig</code> parameter to specify a second
%% version and the percentage of invocation requests that it receives.
create_alias(Client, FunctionName, Input) ->
    create_alias(Client, FunctionName, Input, []).
create_alias(Client, FunctionName, Input0, Options) ->
    Method = post,
    Path = ["/2015-03-31/functions/", http_uri:encode(FunctionName), "/aliases"],
    SuccessStatusCode = 201,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a mapping between an event source and an AWS Lambda function.
%% Lambda reads items from the event source and triggers the function.
%%
%% For details about each event source type, see the following topics.
%%
%% <ul> <li> <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html">Using
%% AWS Lambda with Amazon DynamoDB</a>
%%
%% </li> <li> <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html">Using
%% AWS Lambda with Amazon Kinesis</a>
%%
%% </li> <li> <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html">Using
%% AWS Lambda with Amazon SQS</a>
%%
%% </li> </ul> The following error handling options are only available for
%% stream sources (DynamoDB and Kinesis):
%%
%% <ul> <li> <code>BisectBatchOnFunctionError</code> - If the function
%% returns an error, split the batch in two and retry.
%%
%% </li> <li> <code>DestinationConfig</code> - Send discarded records to an
%% Amazon SQS queue or Amazon SNS topic.
%%
%% </li> <li> <code>MaximumRecordAgeInSeconds</code> - Discard records older
%% than the specified age.
%%
%% </li> <li> <code>MaximumRetryAttempts</code> - Discard records after the
%% specified number of retries.
%%
%% </li> <li> <code>ParallelizationFactor</code> - Process multiple batches
%% from each shard concurrently.
%%
%% </li> </ul>
create_event_source_mapping(Client, Input) ->
    create_event_source_mapping(Client, Input, []).
create_event_source_mapping(Client, Input0, Options) ->
    Method = post,
    Path = ["/2015-03-31/event-source-mappings/"],
    SuccessStatusCode = 202,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a Lambda function. To create a function, you need a <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/deployment-package-v2.html">deployment
%% package</a> and an <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role">execution
%% role</a>. The deployment package contains your function code. The
%% execution role grants the function permission to use AWS services, such as
%% Amazon CloudWatch Logs for log streaming and AWS X-Ray for request
%% tracing.
%%
%% When you create a function, Lambda provisions an instance of the function
%% and its supporting resources. If your function connects to a VPC, this
%% process can take a minute or so. During this time, you can't invoke or
%% modify the function. The <code>State</code>, <code>StateReason</code>, and
%% <code>StateReasonCode</code> fields in the response from
%% <a>GetFunctionConfiguration</a> indicate when the function is ready to
%% invoke. For more information, see <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html">Function
%% States</a>.
%%
%% A function has an unpublished version, and can have published versions and
%% aliases. The unpublished version changes when you update your function's
%% code and configuration. A published version is a snapshot of your function
%% code and configuration that can't be changed. An alias is a named resource
%% that maps to a version, and can be changed to map to a different version.
%% Use the <code>Publish</code> parameter to create version <code>1</code> of
%% your function from its initial configuration.
%%
%% The other parameters let you configure version-specific and function-level
%% settings. You can modify version-specific settings later with
%% <a>UpdateFunctionConfiguration</a>. Function-level settings apply to both
%% the unpublished and published versions of the function, and include tags
%% (<a>TagResource</a>) and per-function concurrency limits
%% (<a>PutFunctionConcurrency</a>).
%%
%% If another account or an AWS service invokes your function, use
%% <a>AddPermission</a> to grant permission by creating a resource-based IAM
%% policy. You can grant permissions at the function level, on a version, or
%% on an alias.
%%
%% To invoke your function directly, use <a>Invoke</a>. To invoke your
%% function in response to events in other AWS services, create an event
%% source mapping (<a>CreateEventSourceMapping</a>), or configure a function
%% trigger in the other service. For more information, see <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-invocation.html">Invoking
%% Functions</a>.
create_function(Client, Input) ->
    create_function(Client, Input, []).
create_function(Client, Input0, Options) ->
    Method = post,
    Path = ["/2015-03-31/functions"],
    SuccessStatusCode = 201,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a Lambda function <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">alias</a>.
delete_alias(Client, FunctionName, Name, Input) ->
    delete_alias(Client, FunctionName, Name, Input, []).
delete_alias(Client, FunctionName, Name, Input0, Options) ->
    Method = delete,
    Path = ["/2015-03-31/functions/", http_uri:encode(FunctionName), "/aliases/", http_uri:encode(Name), ""],
    SuccessStatusCode = 204,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/intro-invocation-modes.html">event
%% source mapping</a>. You can get the identifier of a mapping from the
%% output of <a>ListEventSourceMappings</a>.
%%
%% When you delete an event source mapping, it enters a <code>Deleting</code>
%% state and might not be completely deleted for several seconds.
delete_event_source_mapping(Client, UUID, Input) ->
    delete_event_source_mapping(Client, UUID, Input, []).
delete_event_source_mapping(Client, UUID, Input0, Options) ->
    Method = delete,
    Path = ["/2015-03-31/event-source-mappings/", http_uri:encode(UUID), ""],
    SuccessStatusCode = 202,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a Lambda function. To delete a specific function version, use
%% the <code>Qualifier</code> parameter. Otherwise, all versions and aliases
%% are deleted.
%%
%% To delete Lambda event source mappings that invoke a function, use
%% <a>DeleteEventSourceMapping</a>. For AWS services and resources that
%% invoke your function directly, delete the trigger in the service where you
%% originally configured it.
delete_function(Client, FunctionName, Input) ->
    delete_function(Client, FunctionName, Input, []).
delete_function(Client, FunctionName, Input0, Options) ->
    Method = delete,
    Path = ["/2015-03-31/functions/", http_uri:encode(FunctionName), ""],
    SuccessStatusCode = 204,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a concurrent execution limit from a function.
delete_function_concurrency(Client, FunctionName, Input) ->
    delete_function_concurrency(Client, FunctionName, Input, []).
delete_function_concurrency(Client, FunctionName, Input0, Options) ->
    Method = delete,
    Path = ["/2017-10-31/functions/", http_uri:encode(FunctionName), "/concurrency"],
    SuccessStatusCode = 204,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the configuration for asynchronous invocation for a function,
%% version, or alias.
%%
%% To configure options for asynchronous invocation, use
%% <a>PutFunctionEventInvokeConfig</a>.
delete_function_event_invoke_config(Client, FunctionName, Input) ->
    delete_function_event_invoke_config(Client, FunctionName, Input, []).
delete_function_event_invoke_config(Client, FunctionName, Input0, Options) ->
    Method = delete,
    Path = ["/2019-09-25/functions/", http_uri:encode(FunctionName), "/event-invoke-config"],
    SuccessStatusCode = 204,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a version of an <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">AWS
%% Lambda layer</a>. Deleted versions can no longer be viewed or added to
%% functions. To avoid breaking functions, a copy of the version remains in
%% Lambda until no functions refer to it.
delete_layer_version(Client, LayerName, VersionNumber, Input) ->
    delete_layer_version(Client, LayerName, VersionNumber, Input, []).
delete_layer_version(Client, LayerName, VersionNumber, Input0, Options) ->
    Method = delete,
    Path = ["/2018-10-31/layers/", http_uri:encode(LayerName), "/versions/", http_uri:encode(VersionNumber), ""],
    SuccessStatusCode = 204,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the provisioned concurrency configuration for a function.
delete_provisioned_concurrency_config(Client, FunctionName, Input) ->
    delete_provisioned_concurrency_config(Client, FunctionName, Input, []).
delete_provisioned_concurrency_config(Client, FunctionName, Input0, Options) ->
    Method = delete,
    Path = ["/2019-09-30/functions/", http_uri:encode(FunctionName), "/provisioned-concurrency"],
    SuccessStatusCode = 204,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves details about your account's <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/limits.html">limits</a>
%% and usage in an AWS Region.
get_account_settings(Client)
  when is_map(Client) ->
    get_account_settings(Client, []).
get_account_settings(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2016-08-19/account-settings/"],
    SuccessStatusCode = 200,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns details about a Lambda function <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">alias</a>.
get_alias(Client, FunctionName, Name)
  when is_map(Client) ->
    get_alias(Client, FunctionName, Name, []).
get_alias(Client, FunctionName, Name, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2015-03-31/functions/", http_uri:encode(FunctionName), "/aliases/", http_uri:encode(Name), ""],
    SuccessStatusCode = 200,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns details about an event source mapping. You can get the
%% identifier of a mapping from the output of <a>ListEventSourceMappings</a>.
get_event_source_mapping(Client, UUID)
  when is_map(Client) ->
    get_event_source_mapping(Client, UUID, []).
get_event_source_mapping(Client, UUID, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2015-03-31/event-source-mappings/", http_uri:encode(UUID), ""],
    SuccessStatusCode = 200,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the function or function version, with a
%% link to download the deployment package that's valid for 10 minutes. If
%% you specify a function version, only details that are specific to that
%% version are returned.
get_function(Client, FunctionName)
  when is_map(Client) ->
    get_function(Client, FunctionName, []).
get_function(Client, FunctionName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2015-03-31/functions/", http_uri:encode(FunctionName), ""],
    SuccessStatusCode = 200,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns details about the reserved concurrency configuration for a
%% function. To set a concurrency limit for a function, use
%% <a>PutFunctionConcurrency</a>.
get_function_concurrency(Client, FunctionName)
  when is_map(Client) ->
    get_function_concurrency(Client, FunctionName, []).
get_function_concurrency(Client, FunctionName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2019-09-30/functions/", http_uri:encode(FunctionName), "/concurrency"],
    SuccessStatusCode = 200,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the version-specific settings of a Lambda function or
%% version. The output includes only options that can vary between versions
%% of a function. To modify these settings, use
%% <a>UpdateFunctionConfiguration</a>.
%%
%% To get all of a function's details, including function-level settings, use
%% <a>GetFunction</a>.
get_function_configuration(Client, FunctionName)
  when is_map(Client) ->
    get_function_configuration(Client, FunctionName, []).
get_function_configuration(Client, FunctionName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2015-03-31/functions/", http_uri:encode(FunctionName), "/configuration"],
    SuccessStatusCode = 200,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the configuration for asynchronous invocation for a
%% function, version, or alias.
%%
%% To configure options for asynchronous invocation, use
%% <a>PutFunctionEventInvokeConfig</a>.
get_function_event_invoke_config(Client, FunctionName)
  when is_map(Client) ->
    get_function_event_invoke_config(Client, FunctionName, []).
get_function_event_invoke_config(Client, FunctionName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2019-09-25/functions/", http_uri:encode(FunctionName), "/event-invoke-config"],
    SuccessStatusCode = 200,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a version of an <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">AWS
%% Lambda layer</a>, with a link to download the layer archive that's valid
%% for 10 minutes.
get_layer_version(Client, LayerName, VersionNumber)
  when is_map(Client) ->
    get_layer_version(Client, LayerName, VersionNumber, []).
get_layer_version(Client, LayerName, VersionNumber, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2018-10-31/layers/", http_uri:encode(LayerName), "/versions/", http_uri:encode(VersionNumber), ""],
    SuccessStatusCode = 200,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a version of an <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">AWS
%% Lambda layer</a>, with a link to download the layer archive that's valid
%% for 10 minutes.
get_layer_version_by_arn(Client)
  when is_map(Client) ->
    get_layer_version_by_arn(Client, []).
get_layer_version_by_arn(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2018-10-31/layers?find=LayerVersion"],
    SuccessStatusCode = 200,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the permission policy for a version of an <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">AWS
%% Lambda layer</a>. For more information, see
%% <a>AddLayerVersionPermission</a>.
get_layer_version_policy(Client, LayerName, VersionNumber)
  when is_map(Client) ->
    get_layer_version_policy(Client, LayerName, VersionNumber, []).
get_layer_version_policy(Client, LayerName, VersionNumber, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2018-10-31/layers/", http_uri:encode(LayerName), "/versions/", http_uri:encode(VersionNumber), "/policy"],
    SuccessStatusCode = 200,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html">resource-based
%% IAM policy</a> for a function, version, or alias.
get_policy(Client, FunctionName)
  when is_map(Client) ->
    get_policy(Client, FunctionName, []).
get_policy(Client, FunctionName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2015-03-31/functions/", http_uri:encode(FunctionName), "/policy"],
    SuccessStatusCode = 200,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the provisioned concurrency configuration for a function's
%% alias or version.
get_provisioned_concurrency_config(Client, FunctionName)
  when is_map(Client) ->
    get_provisioned_concurrency_config(Client, FunctionName, []).
get_provisioned_concurrency_config(Client, FunctionName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2019-09-30/functions/", http_uri:encode(FunctionName), "/provisioned-concurrency"],
    SuccessStatusCode = 200,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Invokes a Lambda function. You can invoke a function synchronously
%% (and wait for the response), or asynchronously. To invoke a function
%% asynchronously, set <code>InvocationType</code> to <code>Event</code>.
%%
%% For <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-sync.html">synchronous
%% invocation</a>, details about the function response, including errors, are
%% included in the response body and headers. For either invocation type, you
%% can find more information in the <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/monitoring-functions.html">execution
%% log</a> and <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-x-ray.html">trace</a>.
%%
%% When an error occurs, your function may be invoked multiple times. Retry
%% behavior varies by error type, client, event source, and invocation type.
%% For example, if you invoke a function asynchronously and it returns an
%% error, Lambda executes the function up to two more times. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/retries-on-errors.html">Retry
%% Behavior</a>.
%%
%% For <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html">asynchronous
%% invocation</a>, Lambda adds events to a queue before sending them to your
%% function. If your function does not have enough capacity to keep up with
%% the queue, events may be lost. Occasionally, your function may receive the
%% same event multiple times, even if no error occurs. To retain events that
%% were not processed, configure your function with a <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#dlq">dead-letter
%% queue</a>.
%%
%% The status code in the API response doesn't reflect function errors. Error
%% codes are reserved for errors that prevent your function from executing,
%% such as permissions errors, <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/limits.html">limit
%% errors</a>, or issues with your function's code and configuration. For
%% example, Lambda returns <code>TooManyRequestsException</code> if executing
%% the function would cause you to exceed a concurrency limit at either the
%% account level (<code>ConcurrentInvocationLimitExceeded</code>) or function
%% level (<code>ReservedFunctionConcurrentInvocationLimitExceeded</code>).
%%
%% For functions with a long timeout, your client might be disconnected
%% during synchronous invocation while it waits for a response. Configure
%% your HTTP client, SDK, firewall, proxy, or operating system to allow for
%% long connections with timeout or keep-alive settings.
%%
%% This operation requires permission for the <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awslambda.html">lambda:InvokeFunction</a>
%% action.
invoke(Client, FunctionName, Input) ->
    invoke(Client, FunctionName, Input, []).
invoke(Client, FunctionName, Input0, Options) ->
    Method = post,
    Path = ["/2015-03-31/functions/", http_uri:encode(FunctionName), "/invocations"],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"X-Amz-Client-Context">>, <<"ClientContext">>},
                       {<<"X-Amz-Invocation-Type">>, <<"InvocationType">>},
                       {<<"X-Amz-Log-Type">>, <<"LogType">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"X-Amz-Executed-Version">>, <<"ExecutedVersion">>},
            {<<"X-Amz-Function-Error">>, <<"FunctionError">>},
            {<<"X-Amz-Log-Result">>, <<"LogResult">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc <important> For asynchronous function invocation, use <a>Invoke</a>.
%%
%% </important> Invokes a function asynchronously.
invoke_async(Client, FunctionName, Input) ->
    invoke_async(Client, FunctionName, Input, []).
invoke_async(Client, FunctionName, Input0, Options) ->
    Method = post,
    Path = ["/2014-11-13/functions/", http_uri:encode(FunctionName), "/invoke-async/"],
    SuccessStatusCode = 202,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">aliases</a>
%% for a Lambda function.
list_aliases(Client, FunctionName)
  when is_map(Client) ->
    list_aliases(Client, FunctionName, []).
list_aliases(Client, FunctionName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2015-03-31/functions/", http_uri:encode(FunctionName), "/aliases"],
    SuccessStatusCode = 200,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists event source mappings. Specify an <code>EventSourceArn</code>
%% to only show event source mappings for a single event source.
list_event_source_mappings(Client)
  when is_map(Client) ->
    list_event_source_mappings(Client, []).
list_event_source_mappings(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2015-03-31/event-source-mappings/"],
    SuccessStatusCode = 200,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of configurations for asynchronous invocation for a
%% function.
%%
%% To configure options for asynchronous invocation, use
%% <a>PutFunctionEventInvokeConfig</a>.
list_function_event_invoke_configs(Client, FunctionName)
  when is_map(Client) ->
    list_function_event_invoke_configs(Client, FunctionName, []).
list_function_event_invoke_configs(Client, FunctionName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2019-09-25/functions/", http_uri:encode(FunctionName), "/event-invoke-config/list"],
    SuccessStatusCode = 200,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of Lambda functions, with the version-specific
%% configuration of each. Lambda returns up to 50 functions per call.
%%
%% Set <code>FunctionVersion</code> to <code>ALL</code> to include all
%% published versions of each function in addition to the unpublished
%% version. To get more information about a function or version, use
%% <a>GetFunction</a>.
list_functions(Client)
  when is_map(Client) ->
    list_functions(Client, []).
list_functions(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2015-03-31/functions/"],
    SuccessStatusCode = 200,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the versions of an <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">AWS
%% Lambda layer</a>. Versions that have been deleted aren't listed. Specify a
%% <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html">runtime
%% identifier</a> to list only versions that indicate that they're compatible
%% with that runtime.
list_layer_versions(Client, LayerName)
  when is_map(Client) ->
    list_layer_versions(Client, LayerName, []).
list_layer_versions(Client, LayerName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2018-10-31/layers/", http_uri:encode(LayerName), "/versions"],
    SuccessStatusCode = 200,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">AWS
%% Lambda layers</a> and shows information about the latest version of each.
%% Specify a <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html">runtime
%% identifier</a> to list only layers that indicate that they're compatible
%% with that runtime.
list_layers(Client)
  when is_map(Client) ->
    list_layers(Client, []).
list_layers(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2018-10-31/layers"],
    SuccessStatusCode = 200,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of provisioned concurrency configurations for a
%% function.
list_provisioned_concurrency_configs(Client, FunctionName)
  when is_map(Client) ->
    list_provisioned_concurrency_configs(Client, FunctionName, []).
list_provisioned_concurrency_configs(Client, FunctionName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2019-09-30/functions/", http_uri:encode(FunctionName), "/provisioned-concurrency?List=ALL"],
    SuccessStatusCode = 200,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a function's <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/tagging.html">tags</a>.
%% You can also view tags with <a>GetFunction</a>.
list_tags(Client, Resource)
  when is_map(Client) ->
    list_tags(Client, Resource, []).
list_tags(Client, Resource, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2017-03-31/tags/", http_uri:encode(Resource), ""],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">versions</a>,
%% with the version-specific configuration of each. Lambda returns up to 50
%% versions per call.
list_versions_by_function(Client, FunctionName)
  when is_map(Client) ->
    list_versions_by_function(Client, FunctionName, []).
list_versions_by_function(Client, FunctionName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2015-03-31/functions/", http_uri:encode(FunctionName), "/versions"],
    SuccessStatusCode = 200,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Creates an <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">AWS
%% Lambda layer</a> from a ZIP archive. Each time you call
%% <code>PublishLayerVersion</code> with the same layer name, a new version
%% is created.
%%
%% Add layers to your function with <a>CreateFunction</a> or
%% <a>UpdateFunctionConfiguration</a>.
publish_layer_version(Client, LayerName, Input) ->
    publish_layer_version(Client, LayerName, Input, []).
publish_layer_version(Client, LayerName, Input0, Options) ->
    Method = post,
    Path = ["/2018-10-31/layers/", http_uri:encode(LayerName), "/versions"],
    SuccessStatusCode = 201,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">version</a>
%% from the current code and configuration of a function. Use versions to
%% create a snapshot of your function code and configuration that doesn't
%% change.
%%
%% AWS Lambda doesn't publish a version if the function's configuration and
%% code haven't changed since the last version. Use <a>UpdateFunctionCode</a>
%% or <a>UpdateFunctionConfiguration</a> to update the function before
%% publishing a version.
%%
%% Clients can invoke versions directly or with an alias. To create an alias,
%% use <a>CreateAlias</a>.
publish_version(Client, FunctionName, Input) ->
    publish_version(Client, FunctionName, Input, []).
publish_version(Client, FunctionName, Input0, Options) ->
    Method = post,
    Path = ["/2015-03-31/functions/", http_uri:encode(FunctionName), "/versions"],
    SuccessStatusCode = 201,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Sets the maximum number of simultaneous executions for a function,
%% and reserves capacity for that concurrency level.
%%
%% Concurrency settings apply to the function as a whole, including all
%% published versions and the unpublished version. Reserving concurrency both
%% ensures that your function has capacity to process the specified number of
%% events simultaneously, and prevents it from scaling beyond that level. Use
%% <a>GetFunction</a> to see the current setting for a function.
%%
%% Use <a>GetAccountSettings</a> to see your Regional concurrency limit. You
%% can reserve concurrency for as many functions as you like, as long as you
%% leave at least 100 simultaneous executions unreserved for functions that
%% aren't configured with a per-function limit. For more information, see <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html">Managing
%% Concurrency</a>.
put_function_concurrency(Client, FunctionName, Input) ->
    put_function_concurrency(Client, FunctionName, Input, []).
put_function_concurrency(Client, FunctionName, Input0, Options) ->
    Method = put,
    Path = ["/2017-10-31/functions/", http_uri:encode(FunctionName), "/concurrency"],
    SuccessStatusCode = 200,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Configures options for <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html">asynchronous
%% invocation</a> on a function, version, or alias. If a configuration
%% already exists for a function, version, or alias, this operation
%% overwrites it. If you exclude any settings, they are removed. To set one
%% option without affecting existing settings for other options, use
%% <a>UpdateFunctionEventInvokeConfig</a>.
%%
%% By default, Lambda retries an asynchronous invocation twice if the
%% function returns an error. It retains events in a queue for up to six
%% hours. When an event fails all processing attempts or stays in the
%% asynchronous invocation queue for too long, Lambda discards it. To retain
%% discarded events, configure a dead-letter queue with
%% <a>UpdateFunctionConfiguration</a>.
%%
%% To send an invocation record to a queue, topic, function, or event bus,
%% specify a <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-async-destinations">destination</a>.
%% You can configure separate destinations for successful invocations
%% (on-success) and events that fail all processing attempts (on-failure).
%% You can configure destinations in addition to or instead of a dead-letter
%% queue.
put_function_event_invoke_config(Client, FunctionName, Input) ->
    put_function_event_invoke_config(Client, FunctionName, Input, []).
put_function_event_invoke_config(Client, FunctionName, Input0, Options) ->
    Method = put,
    Path = ["/2019-09-25/functions/", http_uri:encode(FunctionName), "/event-invoke-config"],
    SuccessStatusCode = 200,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds a provisioned concurrency configuration to a function's alias or
%% version.
put_provisioned_concurrency_config(Client, FunctionName, Input) ->
    put_provisioned_concurrency_config(Client, FunctionName, Input, []).
put_provisioned_concurrency_config(Client, FunctionName, Input0, Options) ->
    Method = put,
    Path = ["/2019-09-30/functions/", http_uri:encode(FunctionName), "/provisioned-concurrency"],
    SuccessStatusCode = 202,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a statement from the permissions policy for a version of an
%% <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">AWS
%% Lambda layer</a>. For more information, see
%% <a>AddLayerVersionPermission</a>.
remove_layer_version_permission(Client, LayerName, StatementId, VersionNumber, Input) ->
    remove_layer_version_permission(Client, LayerName, StatementId, VersionNumber, Input, []).
remove_layer_version_permission(Client, LayerName, StatementId, VersionNumber, Input0, Options) ->
    Method = delete,
    Path = ["/2018-10-31/layers/", http_uri:encode(LayerName), "/versions/", http_uri:encode(VersionNumber), "/policy/", http_uri:encode(StatementId), ""],
    SuccessStatusCode = 204,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Revokes function-use permission from an AWS service or another
%% account. You can get the ID of the statement from the output of
%% <a>GetPolicy</a>.
remove_permission(Client, FunctionName, StatementId, Input) ->
    remove_permission(Client, FunctionName, StatementId, Input, []).
remove_permission(Client, FunctionName, StatementId, Input0, Options) ->
    Method = delete,
    Path = ["/2015-03-31/functions/", http_uri:encode(FunctionName), "/policy/", http_uri:encode(StatementId), ""],
    SuccessStatusCode = 204,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/tagging.html">tags</a>
%% to a function.
tag_resource(Client, Resource, Input) ->
    tag_resource(Client, Resource, Input, []).
tag_resource(Client, Resource, Input0, Options) ->
    Method = post,
    Path = ["/2017-03-31/tags/", http_uri:encode(Resource), ""],
    SuccessStatusCode = 204,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/tagging.html">tags</a>
%% from a function.
untag_resource(Client, Resource, Input) ->
    untag_resource(Client, Resource, Input, []).
untag_resource(Client, Resource, Input0, Options) ->
    Method = delete,
    Path = ["/2017-03-31/tags/", http_uri:encode(Resource), ""],
    SuccessStatusCode = 204,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the configuration of a Lambda function <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">alias</a>.
update_alias(Client, FunctionName, Name, Input) ->
    update_alias(Client, FunctionName, Name, Input, []).
update_alias(Client, FunctionName, Name, Input0, Options) ->
    Method = put,
    Path = ["/2015-03-31/functions/", http_uri:encode(FunctionName), "/aliases/", http_uri:encode(Name), ""],
    SuccessStatusCode = 200,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an event source mapping. You can change the function that AWS
%% Lambda invokes, or pause invocation and resume later from the same
%% location.
%%
%% The following error handling options are only available for stream sources
%% (DynamoDB and Kinesis):
%%
%% <ul> <li> <code>BisectBatchOnFunctionError</code> - If the function
%% returns an error, split the batch in two and retry.
%%
%% </li> <li> <code>DestinationConfig</code> - Send discarded records to an
%% Amazon SQS queue or Amazon SNS topic.
%%
%% </li> <li> <code>MaximumRecordAgeInSeconds</code> - Discard records older
%% than the specified age.
%%
%% </li> <li> <code>MaximumRetryAttempts</code> - Discard records after the
%% specified number of retries.
%%
%% </li> <li> <code>ParallelizationFactor</code> - Process multiple batches
%% from each shard concurrently.
%%
%% </li> </ul>
update_event_source_mapping(Client, UUID, Input) ->
    update_event_source_mapping(Client, UUID, Input, []).
update_event_source_mapping(Client, UUID, Input0, Options) ->
    Method = put,
    Path = ["/2015-03-31/event-source-mappings/", http_uri:encode(UUID), ""],
    SuccessStatusCode = 202,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a Lambda function's code.
%%
%% The function's code is locked when you publish a version. You can't modify
%% the code of a published version, only the unpublished version.
update_function_code(Client, FunctionName, Input) ->
    update_function_code(Client, FunctionName, Input, []).
update_function_code(Client, FunctionName, Input0, Options) ->
    Method = put,
    Path = ["/2015-03-31/functions/", http_uri:encode(FunctionName), "/code"],
    SuccessStatusCode = 200,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Modify the version-specific settings of a Lambda function.
%%
%% When you update a function, Lambda provisions an instance of the function
%% and its supporting resources. If your function connects to a VPC, this
%% process can take a minute. During this time, you can't modify the
%% function, but you can still invoke it. The <code>LastUpdateStatus</code>,
%% <code>LastUpdateStatusReason</code>, and
%% <code>LastUpdateStatusReasonCode</code> fields in the response from
%% <a>GetFunctionConfiguration</a> indicate when the update is complete and
%% the function is processing events with the new configuration. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html">Function
%% States</a>.
%%
%% These settings can vary between versions of a function and are locked when
%% you publish a version. You can't modify the configuration of a published
%% version, only the unpublished version.
%%
%% To configure function concurrency, use <a>PutFunctionConcurrency</a>. To
%% grant invoke permissions to an account or AWS service, use
%% <a>AddPermission</a>.
update_function_configuration(Client, FunctionName, Input) ->
    update_function_configuration(Client, FunctionName, Input, []).
update_function_configuration(Client, FunctionName, Input0, Options) ->
    Method = put,
    Path = ["/2015-03-31/functions/", http_uri:encode(FunctionName), "/configuration"],
    SuccessStatusCode = 200,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the configuration for asynchronous invocation for a function,
%% version, or alias.
%%
%% To configure options for asynchronous invocation, use
%% <a>PutFunctionEventInvokeConfig</a>.
update_function_event_invoke_config(Client, FunctionName, Input) ->
    update_function_event_invoke_config(Client, FunctionName, Input, []).
update_function_event_invoke_config(Client, FunctionName, Input0, Options) ->
    Method = post,
    Path = ["/2019-09-25/functions/", http_uri:encode(FunctionName), "/event-invoke-config"],
    SuccessStatusCode = 200,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"lambda">>},
    Host = get_host(<<"lambda">>, Client1),
    URL = get_url(Host, Path, Client1),
    Headers1 = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
        | Headers0
    ],
    Payload = encode_payload(Input),
    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    handle_response(Response, SuccessStatusCode).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body, [return_maps]),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
  {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

get_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
