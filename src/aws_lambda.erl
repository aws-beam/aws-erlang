%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Lambda
%%
%% Overview
%%
%% This is the AWS Lambda API Reference.
%%
%% The AWS Lambda Developer Guide provides additional information. For the
%% service overview, see What is AWS Lambda, and for information about how
%% the service works, see AWS Lambda: How it Works in the AWS Lambda
%% Developer Guide.
-module(aws_lambda).

-export([add_layer_version_permission/4,
         add_layer_version_permission/5,
         add_permission/3,
         add_permission/4,
         create_alias/3,
         create_alias/4,
         create_code_signing_config/2,
         create_code_signing_config/3,
         create_event_source_mapping/2,
         create_event_source_mapping/3,
         create_function/2,
         create_function/3,
         delete_alias/4,
         delete_alias/5,
         delete_code_signing_config/3,
         delete_code_signing_config/4,
         delete_event_source_mapping/3,
         delete_event_source_mapping/4,
         delete_function/3,
         delete_function/4,
         delete_function_code_signing_config/3,
         delete_function_code_signing_config/4,
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
         get_code_signing_config/2,
         get_code_signing_config/3,
         get_event_source_mapping/2,
         get_event_source_mapping/3,
         get_function/3,
         get_function/4,
         get_function_code_signing_config/2,
         get_function_code_signing_config/3,
         get_function_concurrency/2,
         get_function_concurrency/3,
         get_function_configuration/3,
         get_function_configuration/4,
         get_function_event_invoke_config/3,
         get_function_event_invoke_config/4,
         get_layer_version/3,
         get_layer_version/4,
         get_layer_version_by_arn/2,
         get_layer_version_by_arn/3,
         get_layer_version_policy/3,
         get_layer_version_policy/4,
         get_policy/3,
         get_policy/4,
         get_provisioned_concurrency_config/3,
         get_provisioned_concurrency_config/4,
         invoke/3,
         invoke/4,
         invoke_async/3,
         invoke_async/4,
         list_aliases/5,
         list_aliases/6,
         list_code_signing_configs/3,
         list_code_signing_configs/4,
         list_event_source_mappings/5,
         list_event_source_mappings/6,
         list_function_event_invoke_configs/4,
         list_function_event_invoke_configs/5,
         list_functions/5,
         list_functions/6,
         list_functions_by_code_signing_config/4,
         list_functions_by_code_signing_config/5,
         list_layer_versions/5,
         list_layer_versions/6,
         list_layers/4,
         list_layers/5,
         list_provisioned_concurrency_configs/4,
         list_provisioned_concurrency_configs/5,
         list_tags/2,
         list_tags/3,
         list_versions_by_function/4,
         list_versions_by_function/5,
         publish_layer_version/3,
         publish_layer_version/4,
         publish_version/3,
         publish_version/4,
         put_function_code_signing_config/3,
         put_function_code_signing_config/4,
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
         update_code_signing_config/3,
         update_code_signing_config/4,
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

%% @doc Adds permissions to the resource-based policy of a version of an AWS
%% Lambda layer.
%%
%% Use this action to grant layer usage permission to other accounts. You can
%% grant permission to a single account, all AWS accounts, or all accounts in
%% an organization.
%%
%% To revoke permission, call `RemoveLayerVersionPermission' with the
%% statement ID that you specified when you added it.
add_layer_version_permission(Client, LayerName, VersionNumber, Input) ->
    add_layer_version_permission(Client, LayerName, VersionNumber, Input, []).
add_layer_version_permission(Client, LayerName, VersionNumber, Input0, Options) ->
    Method = post,
    Path = ["/2018-10-31/layers/", aws_util:encode_uri(LayerName), "/versions/", aws_util:encode_uri(VersionNumber), "/policy"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"RevisionId">>, <<"RevisionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Grants an AWS service or another account permission to use a
%% function.
%%
%% You can apply the policy at the function level, or specify a qualifier to
%% restrict access to a single version or alias. If you use a qualifier, the
%% invoker must use the full Amazon Resource Name (ARN) of that version or
%% alias to invoke the function.
%%
%% To grant permission to another account, specify the account ID as the
%% `Principal'. For AWS services, the principal is a domain-style identifier
%% defined by the service, like `s3.amazonaws.com' or `sns.amazonaws.com'.
%% For AWS services, you can also specify the ARN of the associated resource
%% as the `SourceArn'. If you grant permission to a service principal without
%% specifying the source, other accounts could potentially configure
%% resources in their account to invoke your Lambda function.
%%
%% This action adds a statement to a resource-based permissions policy for
%% the function. For more information about function policies, see Lambda
%% Function Policies.
add_permission(Client, FunctionName, Input) ->
    add_permission(Client, FunctionName, Input, []).
add_permission(Client, FunctionName, Input0, Options) ->
    Method = post,
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/policy"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an alias for a Lambda function version.
%%
%% Use aliases to provide clients with a function identifier that you can
%% update to invoke a different version.
%%
%% You can also map an alias to split invocation requests between two
%% versions. Use the `RoutingConfig' parameter to specify a second version
%% and the percentage of invocation requests that it receives.
create_alias(Client, FunctionName, Input) ->
    create_alias(Client, FunctionName, Input, []).
create_alias(Client, FunctionName, Input0, Options) ->
    Method = post,
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/aliases"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a code signing configuration.
%%
%% A code signing configuration defines a list of allowed signing profiles
%% and defines the code-signing validation policy (action to be taken if
%% deployment validation checks fail).
create_code_signing_config(Client, Input) ->
    create_code_signing_config(Client, Input, []).
create_code_signing_config(Client, Input0, Options) ->
    Method = post,
    Path = ["/2020-04-22/code-signing-configs/"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a mapping between an event source and an AWS Lambda function.
%%
%% Lambda reads items from the event source and triggers the function.
%%
%% For details about each event source type, see the following topics.
%%
%% <ul> <li> Using AWS Lambda with Amazon DynamoDB
%%
%% </li> <li> Using AWS Lambda with Amazon Kinesis
%%
%% </li> <li> Using AWS Lambda with Amazon SQS
%%
%% </li> <li> Using AWS Lambda with Amazon MQ
%%
%% </li> <li> Using AWS Lambda with Amazon MSK
%%
%% </li> <li> Using AWS Lambda with Self-Managed Apache Kafka
%%
%% </li> </ul> The following error handling options are only available for
%% stream sources (DynamoDB and Kinesis):
%%
%% <ul> <li> `BisectBatchOnFunctionError' - If the function returns an error,
%% split the batch in two and retry.
%%
%% </li> <li> `DestinationConfig' - Send discarded records to an Amazon SQS
%% queue or Amazon SNS topic.
%%
%% </li> <li> `MaximumRecordAgeInSeconds' - Discard records older than the
%% specified age. The default value is infinite (-1). When set to infinite
%% (-1), failed records are retried until the record expires
%%
%% </li> <li> `MaximumRetryAttempts' - Discard records after the specified
%% number of retries. The default value is infinite (-1). When set to
%% infinite (-1), failed records are retried until the record expires.
%%
%% </li> <li> `ParallelizationFactor' - Process multiple batches from each
%% shard concurrently.
%%
%% </li> </ul>
create_event_source_mapping(Client, Input) ->
    create_event_source_mapping(Client, Input, []).
create_event_source_mapping(Client, Input0, Options) ->
    Method = post,
    Path = ["/2015-03-31/event-source-mappings/"],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a Lambda function.
%%
%% To create a function, you need a deployment package and an execution role.
%% The deployment package is a .zip file archive or container image that
%% contains your function code. The execution role grants the function
%% permission to use AWS services, such as Amazon CloudWatch Logs for log
%% streaming and AWS X-Ray for request tracing.
%%
%% When you create a function, Lambda provisions an instance of the function
%% and its supporting resources. If your function connects to a VPC, this
%% process can take a minute or so. During this time, you can't invoke or
%% modify the function. The `State', `StateReason', and `StateReasonCode'
%% fields in the response from `GetFunctionConfiguration' indicate when the
%% function is ready to invoke. For more information, see Function States.
%%
%% A function has an unpublished version, and can have published versions and
%% aliases. The unpublished version changes when you update your function's
%% code and configuration. A published version is a snapshot of your function
%% code and configuration that can't be changed. An alias is a named resource
%% that maps to a version, and can be changed to map to a different version.
%% Use the `Publish' parameter to create version `1' of your function from
%% its initial configuration.
%%
%% The other parameters let you configure version-specific and function-level
%% settings. You can modify version-specific settings later with
%% `UpdateFunctionConfiguration'. Function-level settings apply to both the
%% unpublished and published versions of the function, and include tags
%% (`TagResource') and per-function concurrency limits
%% (`PutFunctionConcurrency').
%%
%% You can use code signing if your deployment package is a .zip file
%% archive. To enable code signing for this function, specify the ARN of a
%% code-signing configuration. When a user attempts to deploy a code package
%% with `UpdateFunctionCode', Lambda checks that the code package has a valid
%% signature from a trusted publisher. The code-signing configuration
%% includes set set of signing profiles, which define the trusted publishers
%% for this function.
%%
%% If another account or an AWS service invokes your function, use
%% `AddPermission' to grant permission by creating a resource-based IAM
%% policy. You can grant permissions at the function level, on a version, or
%% on an alias.
%%
%% To invoke your function directly, use `Invoke'. To invoke your function in
%% response to events in other AWS services, create an event source mapping
%% (`CreateEventSourceMapping'), or configure a function trigger in the other
%% service. For more information, see Invoking Functions.
create_function(Client, Input) ->
    create_function(Client, Input, []).
create_function(Client, Input0, Options) ->
    Method = post,
    Path = ["/2015-03-31/functions"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a Lambda function alias.
delete_alias(Client, FunctionName, Name, Input) ->
    delete_alias(Client, FunctionName, Name, Input, []).
delete_alias(Client, FunctionName, Name, Input0, Options) ->
    Method = delete,
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/aliases/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the code signing configuration.
%%
%% You can delete the code signing configuration only if no function is using
%% it.
delete_code_signing_config(Client, CodeSigningConfigArn, Input) ->
    delete_code_signing_config(Client, CodeSigningConfigArn, Input, []).
delete_code_signing_config(Client, CodeSigningConfigArn, Input0, Options) ->
    Method = delete,
    Path = ["/2020-04-22/code-signing-configs/", aws_util:encode_uri(CodeSigningConfigArn), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an event source mapping.
%%
%% You can get the identifier of a mapping from the output of
%% `ListEventSourceMappings'.
%%
%% When you delete an event source mapping, it enters a `Deleting' state and
%% might not be completely deleted for several seconds.
delete_event_source_mapping(Client, UUID, Input) ->
    delete_event_source_mapping(Client, UUID, Input, []).
delete_event_source_mapping(Client, UUID, Input0, Options) ->
    Method = delete,
    Path = ["/2015-03-31/event-source-mappings/", aws_util:encode_uri(UUID), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a Lambda function.
%%
%% To delete a specific function version, use the `Qualifier' parameter.
%% Otherwise, all versions and aliases are deleted.
%%
%% To delete Lambda event source mappings that invoke a function, use
%% `DeleteEventSourceMapping'. For AWS services and resources that invoke
%% your function directly, delete the trigger in the service where you
%% originally configured it.
delete_function(Client, FunctionName, Input) ->
    delete_function(Client, FunctionName, Input, []).
delete_function(Client, FunctionName, Input0, Options) ->
    Method = delete,
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the code signing configuration from the function.
delete_function_code_signing_config(Client, FunctionName, Input) ->
    delete_function_code_signing_config(Client, FunctionName, Input, []).
delete_function_code_signing_config(Client, FunctionName, Input0, Options) ->
    Method = delete,
    Path = ["/2020-06-30/functions/", aws_util:encode_uri(FunctionName), "/code-signing-config"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a concurrent execution limit from a function.
delete_function_concurrency(Client, FunctionName, Input) ->
    delete_function_concurrency(Client, FunctionName, Input, []).
delete_function_concurrency(Client, FunctionName, Input0, Options) ->
    Method = delete,
    Path = ["/2017-10-31/functions/", aws_util:encode_uri(FunctionName), "/concurrency"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the configuration for asynchronous invocation for a function,
%% version, or alias.
%%
%% To configure options for asynchronous invocation, use
%% `PutFunctionEventInvokeConfig'.
delete_function_event_invoke_config(Client, FunctionName, Input) ->
    delete_function_event_invoke_config(Client, FunctionName, Input, []).
delete_function_event_invoke_config(Client, FunctionName, Input0, Options) ->
    Method = delete,
    Path = ["/2019-09-25/functions/", aws_util:encode_uri(FunctionName), "/event-invoke-config"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a version of an AWS Lambda layer.
%%
%% Deleted versions can no longer be viewed or added to functions. To avoid
%% breaking functions, a copy of the version remains in Lambda until no
%% functions refer to it.
delete_layer_version(Client, LayerName, VersionNumber, Input) ->
    delete_layer_version(Client, LayerName, VersionNumber, Input, []).
delete_layer_version(Client, LayerName, VersionNumber, Input0, Options) ->
    Method = delete,
    Path = ["/2018-10-31/layers/", aws_util:encode_uri(LayerName), "/versions/", aws_util:encode_uri(VersionNumber), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the provisioned concurrency configuration for a function.
delete_provisioned_concurrency_config(Client, FunctionName, Input) ->
    delete_provisioned_concurrency_config(Client, FunctionName, Input, []).
delete_provisioned_concurrency_config(Client, FunctionName, Input0, Options) ->
    Method = delete,
    Path = ["/2019-09-30/functions/", aws_util:encode_uri(FunctionName), "/provisioned-concurrency"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves details about your account's limits and usage in an AWS
%% Region.
get_account_settings(Client)
  when is_map(Client) ->
    get_account_settings(Client, []).
get_account_settings(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2016-08-19/account-settings/"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns details about a Lambda function alias.
get_alias(Client, FunctionName, Name)
  when is_map(Client) ->
    get_alias(Client, FunctionName, Name, []).
get_alias(Client, FunctionName, Name, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/aliases/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the specified code signing configuration.
get_code_signing_config(Client, CodeSigningConfigArn)
  when is_map(Client) ->
    get_code_signing_config(Client, CodeSigningConfigArn, []).
get_code_signing_config(Client, CodeSigningConfigArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-04-22/code-signing-configs/", aws_util:encode_uri(CodeSigningConfigArn), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns details about an event source mapping.
%%
%% You can get the identifier of a mapping from the output of
%% `ListEventSourceMappings'.
get_event_source_mapping(Client, UUID)
  when is_map(Client) ->
    get_event_source_mapping(Client, UUID, []).
get_event_source_mapping(Client, UUID, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2015-03-31/event-source-mappings/", aws_util:encode_uri(UUID), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the function or function version, with a
%% link to download the deployment package that's valid for 10 minutes.
%%
%% If you specify a function version, only details that are specific to that
%% version are returned.
get_function(Client, FunctionName, Qualifier)
  when is_map(Client) ->
    get_function(Client, FunctionName, Qualifier, []).
get_function(Client, FunctionName, Qualifier, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"Qualifier">>, Qualifier}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the code signing configuration for the specified function.
get_function_code_signing_config(Client, FunctionName)
  when is_map(Client) ->
    get_function_code_signing_config(Client, FunctionName, []).
get_function_code_signing_config(Client, FunctionName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-06-30/functions/", aws_util:encode_uri(FunctionName), "/code-signing-config"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns details about the reserved concurrency configuration for a
%% function.
%%
%% To set a concurrency limit for a function, use `PutFunctionConcurrency'.
get_function_concurrency(Client, FunctionName)
  when is_map(Client) ->
    get_function_concurrency(Client, FunctionName, []).
get_function_concurrency(Client, FunctionName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2019-09-30/functions/", aws_util:encode_uri(FunctionName), "/concurrency"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the version-specific settings of a Lambda function or
%% version.
%%
%% The output includes only options that can vary between versions of a
%% function. To modify these settings, use `UpdateFunctionConfiguration'.
%%
%% To get all of a function's details, including function-level settings, use
%% `GetFunction'.
get_function_configuration(Client, FunctionName, Qualifier)
  when is_map(Client) ->
    get_function_configuration(Client, FunctionName, Qualifier, []).
get_function_configuration(Client, FunctionName, Qualifier, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/configuration"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"Qualifier">>, Qualifier}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the configuration for asynchronous invocation for a
%% function, version, or alias.
%%
%% To configure options for asynchronous invocation, use
%% `PutFunctionEventInvokeConfig'.
get_function_event_invoke_config(Client, FunctionName, Qualifier)
  when is_map(Client) ->
    get_function_event_invoke_config(Client, FunctionName, Qualifier, []).
get_function_event_invoke_config(Client, FunctionName, Qualifier, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2019-09-25/functions/", aws_util:encode_uri(FunctionName), "/event-invoke-config"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"Qualifier">>, Qualifier}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a version of an AWS Lambda layer, with a
%% link to download the layer archive that's valid for 10 minutes.
get_layer_version(Client, LayerName, VersionNumber)
  when is_map(Client) ->
    get_layer_version(Client, LayerName, VersionNumber, []).
get_layer_version(Client, LayerName, VersionNumber, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2018-10-31/layers/", aws_util:encode_uri(LayerName), "/versions/", aws_util:encode_uri(VersionNumber), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a version of an AWS Lambda layer, with a
%% link to download the layer archive that's valid for 10 minutes.
get_layer_version_by_arn(Client, Arn)
  when is_map(Client) ->
    get_layer_version_by_arn(Client, Arn, []).
get_layer_version_by_arn(Client, Arn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2018-10-31/layers?find=LayerVersion"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"Arn">>, Arn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the permission policy for a version of an AWS Lambda layer.
%%
%% For more information, see `AddLayerVersionPermission'.
get_layer_version_policy(Client, LayerName, VersionNumber)
  when is_map(Client) ->
    get_layer_version_policy(Client, LayerName, VersionNumber, []).
get_layer_version_policy(Client, LayerName, VersionNumber, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2018-10-31/layers/", aws_util:encode_uri(LayerName), "/versions/", aws_util:encode_uri(VersionNumber), "/policy"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the resource-based IAM policy for a function, version, or
%% alias.
get_policy(Client, FunctionName, Qualifier)
  when is_map(Client) ->
    get_policy(Client, FunctionName, Qualifier, []).
get_policy(Client, FunctionName, Qualifier, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/policy"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"Qualifier">>, Qualifier}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the provisioned concurrency configuration for a function's
%% alias or version.
get_provisioned_concurrency_config(Client, FunctionName, Qualifier)
  when is_map(Client) ->
    get_provisioned_concurrency_config(Client, FunctionName, Qualifier, []).
get_provisioned_concurrency_config(Client, FunctionName, Qualifier, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2019-09-30/functions/", aws_util:encode_uri(FunctionName), "/provisioned-concurrency"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"Qualifier">>, Qualifier}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Invokes a Lambda function.
%%
%% You can invoke a function synchronously (and wait for the response), or
%% asynchronously. To invoke a function asynchronously, set `InvocationType'
%% to `Event'.
%%
%% For synchronous invocation, details about the function response, including
%% errors, are included in the response body and headers. For either
%% invocation type, you can find more information in the execution log and
%% trace.
%%
%% When an error occurs, your function may be invoked multiple times. Retry
%% behavior varies by error type, client, event source, and invocation type.
%% For example, if you invoke a function asynchronously and it returns an
%% error, Lambda executes the function up to two more times. For more
%% information, see Retry Behavior.
%%
%% For asynchronous invocation, Lambda adds events to a queue before sending
%% them to your function. If your function does not have enough capacity to
%% keep up with the queue, events may be lost. Occasionally, your function
%% may receive the same event multiple times, even if no error occurs. To
%% retain events that were not processed, configure your function with a
%% dead-letter queue.
%%
%% The status code in the API response doesn't reflect function errors. Error
%% codes are reserved for errors that prevent your function from executing,
%% such as permissions errors, limit errors, or issues with your function's
%% code and configuration. For example, Lambda returns
%% `TooManyRequestsException' if executing the function would cause you to
%% exceed a concurrency limit at either the account level
%% (`ConcurrentInvocationLimitExceeded') or function level
%% (`ReservedFunctionConcurrentInvocationLimitExceeded').
%%
%% For functions with a long timeout, your client might be disconnected
%% during synchronous invocation while it waits for a response. Configure
%% your HTTP client, SDK, firewall, proxy, or operating system to allow for
%% long connections with timeout or keep-alive settings.
%%
%% This operation requires permission for the lambda:InvokeFunction action.
invoke(Client, FunctionName, Input) ->
    invoke(Client, FunctionName, Input, []).
invoke(Client, FunctionName, Input0, Options) ->
    Method = post,
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/invocations"],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"X-Amz-Client-Context">>, <<"ClientContext">>},
                       {<<"X-Amz-Invocation-Type">>, <<"InvocationType">>},
                       {<<"X-Amz-Log-Type">>, <<"LogType">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    QueryMapping = [
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
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

%% @doc For asynchronous function invocation, use `Invoke'.
%%
%% Invokes a function asynchronously.
invoke_async(Client, FunctionName, Input) ->
    invoke_async(Client, FunctionName, Input, []).
invoke_async(Client, FunctionName, Input0, Options) ->
    Method = post,
    Path = ["/2014-11-13/functions/", aws_util:encode_uri(FunctionName), "/invoke-async/"],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of aliases for a Lambda function.
list_aliases(Client, FunctionName, FunctionVersion, Marker, MaxItems)
  when is_map(Client) ->
    list_aliases(Client, FunctionName, FunctionVersion, Marker, MaxItems, []).
list_aliases(Client, FunctionName, FunctionVersion, Marker, MaxItems, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/aliases"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"FunctionVersion">>, FunctionVersion},
        {<<"Marker">>, Marker},
        {<<"MaxItems">>, MaxItems}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of code signing configurations.
%%
%% A request returns up to 10,000 configurations per call. You can use the
%% `MaxItems' parameter to return fewer configurations per call.
list_code_signing_configs(Client, Marker, MaxItems)
  when is_map(Client) ->
    list_code_signing_configs(Client, Marker, MaxItems, []).
list_code_signing_configs(Client, Marker, MaxItems, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-04-22/code-signing-configs/"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, Marker},
        {<<"MaxItems">>, MaxItems}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists event source mappings.
%%
%% Specify an `EventSourceArn' to only show event source mappings for a
%% single event source.
list_event_source_mappings(Client, EventSourceArn, FunctionName, Marker, MaxItems)
  when is_map(Client) ->
    list_event_source_mappings(Client, EventSourceArn, FunctionName, Marker, MaxItems, []).
list_event_source_mappings(Client, EventSourceArn, FunctionName, Marker, MaxItems, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2015-03-31/event-source-mappings/"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"EventSourceArn">>, EventSourceArn},
        {<<"FunctionName">>, FunctionName},
        {<<"Marker">>, Marker},
        {<<"MaxItems">>, MaxItems}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of configurations for asynchronous invocation for a
%% function.
%%
%% To configure options for asynchronous invocation, use
%% `PutFunctionEventInvokeConfig'.
list_function_event_invoke_configs(Client, FunctionName, Marker, MaxItems)
  when is_map(Client) ->
    list_function_event_invoke_configs(Client, FunctionName, Marker, MaxItems, []).
list_function_event_invoke_configs(Client, FunctionName, Marker, MaxItems, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2019-09-25/functions/", aws_util:encode_uri(FunctionName), "/event-invoke-config/list"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, Marker},
        {<<"MaxItems">>, MaxItems}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of Lambda functions, with the version-specific
%% configuration of each.
%%
%% Lambda returns up to 50 functions per call.
%%
%% Set `FunctionVersion' to `ALL' to include all published versions of each
%% function in addition to the unpublished version. To get more information
%% about a function or version, use `GetFunction'.
list_functions(Client, FunctionVersion, Marker, MasterRegion, MaxItems)
  when is_map(Client) ->
    list_functions(Client, FunctionVersion, Marker, MasterRegion, MaxItems, []).
list_functions(Client, FunctionVersion, Marker, MasterRegion, MaxItems, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2015-03-31/functions/"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"FunctionVersion">>, FunctionVersion},
        {<<"Marker">>, Marker},
        {<<"MasterRegion">>, MasterRegion},
        {<<"MaxItems">>, MaxItems}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the functions that use the specified code signing configuration.
%%
%% You can use this method prior to deleting a code signing configuration, to
%% verify that no functions are using it.
list_functions_by_code_signing_config(Client, CodeSigningConfigArn, Marker, MaxItems)
  when is_map(Client) ->
    list_functions_by_code_signing_config(Client, CodeSigningConfigArn, Marker, MaxItems, []).
list_functions_by_code_signing_config(Client, CodeSigningConfigArn, Marker, MaxItems, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-04-22/code-signing-configs/", aws_util:encode_uri(CodeSigningConfigArn), "/functions"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, Marker},
        {<<"MaxItems">>, MaxItems}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the versions of an AWS Lambda layer.
%%
%% Versions that have been deleted aren't listed. Specify a runtime
%% identifier to list only versions that indicate that they're compatible
%% with that runtime.
list_layer_versions(Client, LayerName, CompatibleRuntime, Marker, MaxItems)
  when is_map(Client) ->
    list_layer_versions(Client, LayerName, CompatibleRuntime, Marker, MaxItems, []).
list_layer_versions(Client, LayerName, CompatibleRuntime, Marker, MaxItems, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2018-10-31/layers/", aws_util:encode_uri(LayerName), "/versions"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"CompatibleRuntime">>, CompatibleRuntime},
        {<<"Marker">>, Marker},
        {<<"MaxItems">>, MaxItems}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists AWS Lambda layers and shows information about the latest
%% version of each.
%%
%% Specify a runtime identifier to list only layers that indicate that
%% they're compatible with that runtime.
list_layers(Client, CompatibleRuntime, Marker, MaxItems)
  when is_map(Client) ->
    list_layers(Client, CompatibleRuntime, Marker, MaxItems, []).
list_layers(Client, CompatibleRuntime, Marker, MaxItems, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2018-10-31/layers"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"CompatibleRuntime">>, CompatibleRuntime},
        {<<"Marker">>, Marker},
        {<<"MaxItems">>, MaxItems}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of provisioned concurrency configurations for a
%% function.
list_provisioned_concurrency_configs(Client, FunctionName, Marker, MaxItems)
  when is_map(Client) ->
    list_provisioned_concurrency_configs(Client, FunctionName, Marker, MaxItems, []).
list_provisioned_concurrency_configs(Client, FunctionName, Marker, MaxItems, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2019-09-30/functions/", aws_util:encode_uri(FunctionName), "/provisioned-concurrency?List=ALL"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, Marker},
        {<<"MaxItems">>, MaxItems}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a function's tags.
%%
%% You can also view tags with `GetFunction'.
list_tags(Client, Resource)
  when is_map(Client) ->
    list_tags(Client, Resource, []).
list_tags(Client, Resource, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2017-03-31/tags/", aws_util:encode_uri(Resource), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of versions, with the version-specific configuration
%% of each.
%%
%% Lambda returns up to 50 versions per call.
list_versions_by_function(Client, FunctionName, Marker, MaxItems)
  when is_map(Client) ->
    list_versions_by_function(Client, FunctionName, Marker, MaxItems, []).
list_versions_by_function(Client, FunctionName, Marker, MaxItems, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/versions"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, Marker},
        {<<"MaxItems">>, MaxItems}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Creates an AWS Lambda layer from a ZIP archive.
%%
%% Each time you call `PublishLayerVersion' with the same layer name, a new
%% version is created.
%%
%% Add layers to your function with `CreateFunction' or
%% `UpdateFunctionConfiguration'.
publish_layer_version(Client, LayerName, Input) ->
    publish_layer_version(Client, LayerName, Input, []).
publish_layer_version(Client, LayerName, Input0, Options) ->
    Method = post,
    Path = ["/2018-10-31/layers/", aws_util:encode_uri(LayerName), "/versions"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a version from the current code and configuration of a
%% function.
%%
%% Use versions to create a snapshot of your function code and configuration
%% that doesn't change.
%%
%% AWS Lambda doesn't publish a version if the function's configuration and
%% code haven't changed since the last version. Use `UpdateFunctionCode' or
%% `UpdateFunctionConfiguration' to update the function before publishing a
%% version.
%%
%% Clients can invoke versions directly or with an alias. To create an alias,
%% use `CreateAlias'.
publish_version(Client, FunctionName, Input) ->
    publish_version(Client, FunctionName, Input, []).
publish_version(Client, FunctionName, Input0, Options) ->
    Method = post,
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/versions"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Update the code signing configuration for the function.
%%
%% Changes to the code signing configuration take effect the next time a user
%% tries to deploy a code package to the function.
put_function_code_signing_config(Client, FunctionName, Input) ->
    put_function_code_signing_config(Client, FunctionName, Input, []).
put_function_code_signing_config(Client, FunctionName, Input0, Options) ->
    Method = put,
    Path = ["/2020-06-30/functions/", aws_util:encode_uri(FunctionName), "/code-signing-config"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Sets the maximum number of simultaneous executions for a function,
%% and reserves capacity for that concurrency level.
%%
%% Concurrency settings apply to the function as a whole, including all
%% published versions and the unpublished version. Reserving concurrency both
%% ensures that your function has capacity to process the specified number of
%% events simultaneously, and prevents it from scaling beyond that level. Use
%% `GetFunction' to see the current setting for a function.
%%
%% Use `GetAccountSettings' to see your Regional concurrency limit. You can
%% reserve concurrency for as many functions as you like, as long as you
%% leave at least 100 simultaneous executions unreserved for functions that
%% aren't configured with a per-function limit. For more information, see
%% Managing Concurrency.
put_function_concurrency(Client, FunctionName, Input) ->
    put_function_concurrency(Client, FunctionName, Input, []).
put_function_concurrency(Client, FunctionName, Input0, Options) ->
    Method = put,
    Path = ["/2017-10-31/functions/", aws_util:encode_uri(FunctionName), "/concurrency"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Configures options for asynchronous invocation on a function,
%% version, or alias.
%%
%% If a configuration already exists for a function, version, or alias, this
%% operation overwrites it. If you exclude any settings, they are removed. To
%% set one option without affecting existing settings for other options, use
%% `UpdateFunctionEventInvokeConfig'.
%%
%% By default, Lambda retries an asynchronous invocation twice if the
%% function returns an error. It retains events in a queue for up to six
%% hours. When an event fails all processing attempts or stays in the
%% asynchronous invocation queue for too long, Lambda discards it. To retain
%% discarded events, configure a dead-letter queue with
%% `UpdateFunctionConfiguration'.
%%
%% To send an invocation record to a queue, topic, function, or event bus,
%% specify a destination. You can configure separate destinations for
%% successful invocations (on-success) and events that fail all processing
%% attempts (on-failure). You can configure destinations in addition to or
%% instead of a dead-letter queue.
put_function_event_invoke_config(Client, FunctionName, Input) ->
    put_function_event_invoke_config(Client, FunctionName, Input, []).
put_function_event_invoke_config(Client, FunctionName, Input0, Options) ->
    Method = put,
    Path = ["/2019-09-25/functions/", aws_util:encode_uri(FunctionName), "/event-invoke-config"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds a provisioned concurrency configuration to a function's alias or
%% version.
put_provisioned_concurrency_config(Client, FunctionName, Input) ->
    put_provisioned_concurrency_config(Client, FunctionName, Input, []).
put_provisioned_concurrency_config(Client, FunctionName, Input0, Options) ->
    Method = put,
    Path = ["/2019-09-30/functions/", aws_util:encode_uri(FunctionName), "/provisioned-concurrency"],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a statement from the permissions policy for a version of an
%% AWS Lambda layer.
%%
%% For more information, see `AddLayerVersionPermission'.
remove_layer_version_permission(Client, LayerName, StatementId, VersionNumber, Input) ->
    remove_layer_version_permission(Client, LayerName, StatementId, VersionNumber, Input, []).
remove_layer_version_permission(Client, LayerName, StatementId, VersionNumber, Input0, Options) ->
    Method = delete,
    Path = ["/2018-10-31/layers/", aws_util:encode_uri(LayerName), "/versions/", aws_util:encode_uri(VersionNumber), "/policy/", aws_util:encode_uri(StatementId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"RevisionId">>, <<"RevisionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Revokes function-use permission from an AWS service or another
%% account.
%%
%% You can get the ID of the statement from the output of `GetPolicy'.
remove_permission(Client, FunctionName, StatementId, Input) ->
    remove_permission(Client, FunctionName, StatementId, Input, []).
remove_permission(Client, FunctionName, StatementId, Input0, Options) ->
    Method = delete,
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/policy/", aws_util:encode_uri(StatementId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"Qualifier">>, <<"Qualifier">>},
                     {<<"RevisionId">>, <<"RevisionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds tags to a function.
tag_resource(Client, Resource, Input) ->
    tag_resource(Client, Resource, Input, []).
tag_resource(Client, Resource, Input0, Options) ->
    Method = post,
    Path = ["/2017-03-31/tags/", aws_util:encode_uri(Resource), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes tags from a function.
untag_resource(Client, Resource, Input) ->
    untag_resource(Client, Resource, Input, []).
untag_resource(Client, Resource, Input0, Options) ->
    Method = delete,
    Path = ["/2017-03-31/tags/", aws_util:encode_uri(Resource), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the configuration of a Lambda function alias.
update_alias(Client, FunctionName, Name, Input) ->
    update_alias(Client, FunctionName, Name, Input, []).
update_alias(Client, FunctionName, Name, Input0, Options) ->
    Method = put,
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/aliases/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Update the code signing configuration.
%%
%% Changes to the code signing configuration take effect the next time a user
%% tries to deploy a code package to the function.
update_code_signing_config(Client, CodeSigningConfigArn, Input) ->
    update_code_signing_config(Client, CodeSigningConfigArn, Input, []).
update_code_signing_config(Client, CodeSigningConfigArn, Input0, Options) ->
    Method = put,
    Path = ["/2020-04-22/code-signing-configs/", aws_util:encode_uri(CodeSigningConfigArn), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an event source mapping.
%%
%% You can change the function that AWS Lambda invokes, or pause invocation
%% and resume later from the same location.
%%
%% The following error handling options are only available for stream sources
%% (DynamoDB and Kinesis):
%%
%% <ul> <li> `BisectBatchOnFunctionError' - If the function returns an error,
%% split the batch in two and retry.
%%
%% </li> <li> `DestinationConfig' - Send discarded records to an Amazon SQS
%% queue or Amazon SNS topic.
%%
%% </li> <li> `MaximumRecordAgeInSeconds' - Discard records older than the
%% specified age. The default value is infinite (-1). When set to infinite
%% (-1), failed records are retried until the record expires
%%
%% </li> <li> `MaximumRetryAttempts' - Discard records after the specified
%% number of retries. The default value is infinite (-1). When set to
%% infinite (-1), failed records are retried until the record expires.
%%
%% </li> <li> `ParallelizationFactor' - Process multiple batches from each
%% shard concurrently.
%%
%% </li> </ul>
update_event_source_mapping(Client, UUID, Input) ->
    update_event_source_mapping(Client, UUID, Input, []).
update_event_source_mapping(Client, UUID, Input0, Options) ->
    Method = put,
    Path = ["/2015-03-31/event-source-mappings/", aws_util:encode_uri(UUID), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a Lambda function's code.
%%
%% If code signing is enabled for the function, the code package must be
%% signed by a trusted publisher. For more information, see Configuring code
%% signing.
%%
%% The function's code is locked when you publish a version. You can't modify
%% the code of a published version, only the unpublished version.
%%
%% For a function defined as a container image, Lambda resolves the image tag
%% to an image digest. In Amazon ECR, if you update the image tag to a new
%% image, Lambda does not automatically update the function.
update_function_code(Client, FunctionName, Input) ->
    update_function_code(Client, FunctionName, Input, []).
update_function_code(Client, FunctionName, Input0, Options) ->
    Method = put,
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/code"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Modify the version-specific settings of a Lambda function.
%%
%% When you update a function, Lambda provisions an instance of the function
%% and its supporting resources. If your function connects to a VPC, this
%% process can take a minute. During this time, you can't modify the
%% function, but you can still invoke it. The `LastUpdateStatus',
%% `LastUpdateStatusReason', and `LastUpdateStatusReasonCode' fields in the
%% response from `GetFunctionConfiguration' indicate when the update is
%% complete and the function is processing events with the new configuration.
%% For more information, see Function States.
%%
%% These settings can vary between versions of a function and are locked when
%% you publish a version. You can't modify the configuration of a published
%% version, only the unpublished version.
%%
%% To configure function concurrency, use `PutFunctionConcurrency'. To grant
%% invoke permissions to an account or AWS service, use `AddPermission'.
update_function_configuration(Client, FunctionName, Input) ->
    update_function_configuration(Client, FunctionName, Input, []).
update_function_configuration(Client, FunctionName, Input0, Options) ->
    Method = put,
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/configuration"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the configuration for asynchronous invocation for a function,
%% version, or alias.
%%
%% To configure options for asynchronous invocation, use
%% `PutFunctionEventInvokeConfig'.
update_function_event_invoke_config(Client, FunctionName, Input) ->
    update_function_event_invoke_config(Client, FunctionName, Input, []).
update_function_event_invoke_config(Client, FunctionName, Input0, Options) ->
    Method = post,
    Path = ["/2019-09-25/functions/", aws_util:encode_uri(FunctionName), "/event-invoke-config"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"lambda">>},
    Host = build_host(<<"lambda">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(should_send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        undefined ->
          encode_payload(Input)
      end,

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
            Result = jsx:decode(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
