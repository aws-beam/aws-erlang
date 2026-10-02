%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Lambda Web Functions let you run web applications and APIs as
%% HTTP servers on Lambda.
%%
%% A web function has one or more immutable revisions (code and
%% configuration) and one or more endpoints that expose it over HTTPS.
-module(aws_lambda_web).

-export([create_web_function/2,
         create_web_function/3,
         create_web_function_endpoint/3,
         create_web_function_endpoint/4,
         create_web_function_revision/3,
         create_web_function_revision/4,
         delete_resource_policy/3,
         delete_resource_policy/4,
         delete_web_function/3,
         delete_web_function/4,
         delete_web_function_endpoint/4,
         delete_web_function_endpoint/5,
         delete_web_function_revision/4,
         delete_web_function_revision/5,
         get_resource_policy/2,
         get_resource_policy/4,
         get_resource_policy/5,
         get_web_account_settings/1,
         get_web_account_settings/3,
         get_web_account_settings/4,
         get_web_function/2,
         get_web_function/4,
         get_web_function/5,
         get_web_function_endpoint/3,
         get_web_function_endpoint/5,
         get_web_function_endpoint/6,
         get_web_function_revision/3,
         get_web_function_revision/5,
         get_web_function_revision/6,
         list_tags/2,
         list_tags/4,
         list_tags/5,
         list_web_function_endpoints/3,
         list_web_function_endpoints/4,
         list_web_function_revisions/3,
         list_web_function_revisions/4,
         list_web_functions/2,
         list_web_functions/3,
         put_resource_policy/3,
         put_resource_policy/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_web_function_endpoint/4,
         update_web_function_endpoint/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% account_quotas() :: #{
%%   <<"maxEndpointsPerFunction">> => [integer()],
%%   <<"maxRevisionsPerFunction">> => [integer()],
%%   <<"maxTotalArmVCpus">> => [integer()],
%%   <<"maxTotalRateLimit">> => [integer()]
%% }
-type account_quotas() :: #{binary() => any()}.


%% Example:
%% account_usage() :: #{
%%   <<"functionCount">> => [integer()]
%% }
-type account_usage() :: #{binary() => any()}.


%% Example:
%% build_config() :: #{
%%   <<"codeConfig">> => code_config(),
%%   <<"runtimeConfig">> => runtime_config()
%% }
-type build_config() :: #{binary() => any()}.


%% Example:
%% code_config() :: #{
%%   <<"s3Object">> => s3_object()
%% }
-type code_config() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% create_web_function_endpoint_request() :: #{
%%   <<"authType">> := list(any()),
%%   <<"autoDeploymentMode">> => list(any()),
%%   <<"description">> => string(),
%%   <<"endpointName">> := string(),
%%   <<"endpointType">> := list(any()),
%%   <<"regions">> => list(string()),
%%   <<"revisionWeights">> => list(revision_weight()),
%%   <<"scalingConfig">> => scaling_config(),
%%   <<"throttleConfig">> => throttle_config()
%% }
-type create_web_function_endpoint_request() :: #{binary() => any()}.


%% Example:
%% create_web_function_endpoint_response() :: #{
%%   <<"authType">> => list(any()),
%%   <<"autoDeploymentMode">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"domainName">> => string(),
%%   <<"endpointArn">> => string(),
%%   <<"endpointName">> => string(),
%%   <<"endpointType">> => list(any()),
%%   <<"functionArn">> => string(),
%%   <<"regionalEndpoints">> => map(),
%%   <<"regions">> => list(string()),
%%   <<"revisionWeights">> => list(revision_weight()),
%%   <<"scalingConfig">> => scaling_config(),
%%   <<"state">> => list(any()),
%%   <<"stateReason">> => [string()],
%%   <<"throttleConfig">> => throttle_config(),
%%   <<"updateStatus">> => list(any()),
%%   <<"updateStatusReason">> => [string()],
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type create_web_function_endpoint_response() :: #{binary() => any()}.


%% Example:
%% create_web_function_request() :: #{
%%   <<"endpointConfig">> => endpoint_config(),
%%   <<"functionName">> := string(),
%%   <<"revisionConfig">> => revision_config(),
%%   <<"tags">> => map()
%% }
-type create_web_function_request() :: #{binary() => any()}.


%% Example:
%% create_web_function_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"endpoint">> => function_endpoint_summary(),
%%   <<"functionArn">> => string(),
%%   <<"functionName">> => string(),
%%   <<"revision">> => function_revision_summary(),
%%   <<"state">> => list(any()),
%%   <<"stateReason">> => [string()],
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type create_web_function_response() :: #{binary() => any()}.


%% Example:
%% create_web_function_revision_request() :: #{
%%   <<"buildConfig">> := build_config(),
%%   <<"description">> => string(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"serviceConfig">> := service_config()
%% }
-type create_web_function_revision_request() :: #{binary() => any()}.


%% Example:
%% create_web_function_revision_response() :: #{
%%   <<"buildConfig">> => build_config(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"errors">> => list(revision_error()),
%%   <<"functionArn">> => string(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"revisionArn">> => string(),
%%   <<"revisionId">> => string(),
%%   <<"serviceConfig">> => service_config(),
%%   <<"state">> => list(any()),
%%   <<"stateReason">> => [string()]
%% }
-type create_web_function_revision_response() :: #{binary() => any()}.


%% Example:
%% delete_resource_policy_request() :: #{
%%   <<"revisionId">> => string()
%% }
-type delete_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% delete_web_function_endpoint_request() :: #{}
-type delete_web_function_endpoint_request() :: #{}.

%% Example:
%% delete_web_function_request() :: #{}
-type delete_web_function_request() :: #{}.

%% Example:
%% delete_web_function_revision_request() :: #{}
-type delete_web_function_revision_request() :: #{}.


%% Example:
%% endpoint_config() :: #{
%%   <<"authType">> => list(any()),
%%   <<"autoDeploymentMode">> => list(any()),
%%   <<"description">> => string(),
%%   <<"endpointName">> => string(),
%%   <<"endpointType">> => list(any()),
%%   <<"regions">> => list(string()),
%%   <<"scalingConfig">> => scaling_config(),
%%   <<"throttleConfig">> => throttle_config()
%% }
-type endpoint_config() :: #{binary() => any()}.


%% Example:
%% filter() :: #{
%%   <<"name">> => [string()],
%%   <<"values">> => list([string()]())
%% }
-type filter() :: #{binary() => any()}.


%% Example:
%% function_endpoint_summary() :: #{
%%   <<"authType">> => list(any()),
%%   <<"autoDeploymentMode">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"domainName">> => string(),
%%   <<"endpointArn">> => string(),
%%   <<"endpointName">> => string(),
%%   <<"endpointType">> => list(any()),
%%   <<"regions">> => list(string()),
%%   <<"revisionWeights">> => list(revision_weight()),
%%   <<"scalingConfig">> => scaling_config(),
%%   <<"state">> => list(any()),
%%   <<"stateReason">> => [string()],
%%   <<"throttleConfig">> => throttle_config(),
%%   <<"updateStatus">> => list(any()),
%%   <<"updateStatusReason">> => [string()],
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type function_endpoint_summary() :: #{binary() => any()}.


%% Example:
%% function_revision_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"revisionArn">> => string(),
%%   <<"revisionId">> => string(),
%%   <<"state">> => list(any()),
%%   <<"stateReason">> => [string()]
%% }
-type function_revision_summary() :: #{binary() => any()}.


%% Example:
%% function_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"functionArn">> => string(),
%%   <<"functionName">> => string(),
%%   <<"state">> => list(any()),
%%   <<"stateReason">> => [string()],
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type function_summary() :: #{binary() => any()}.

%% Example:
%% get_resource_policy_request() :: #{}
-type get_resource_policy_request() :: #{}.


%% Example:
%% get_resource_policy_response() :: #{
%%   <<"policy">> => string(),
%%   <<"revisionId">> => string()
%% }
-type get_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% get_web_account_settings_request() :: #{}
-type get_web_account_settings_request() :: #{}.


%% Example:
%% get_web_account_settings_response() :: #{
%%   <<"accountQuotas">> => account_quotas(),
%%   <<"accountUsage">> => account_usage()
%% }
-type get_web_account_settings_response() :: #{binary() => any()}.

%% Example:
%% get_web_function_endpoint_request() :: #{}
-type get_web_function_endpoint_request() :: #{}.


%% Example:
%% get_web_function_endpoint_response() :: #{
%%   <<"authType">> => list(any()),
%%   <<"autoDeploymentMode">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"domainName">> => string(),
%%   <<"endpointArn">> => string(),
%%   <<"endpointName">> => string(),
%%   <<"endpointType">> => list(any()),
%%   <<"functionArn">> => string(),
%%   <<"regionalEndpoints">> => map(),
%%   <<"regions">> => list(string()),
%%   <<"revisionWeights">> => list(revision_weight()),
%%   <<"scalingConfig">> => scaling_config(),
%%   <<"state">> => list(any()),
%%   <<"stateReason">> => [string()],
%%   <<"throttleConfig">> => throttle_config(),
%%   <<"updateStatus">> => list(any()),
%%   <<"updateStatusReason">> => [string()],
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type get_web_function_endpoint_response() :: #{binary() => any()}.

%% Example:
%% get_web_function_request() :: #{}
-type get_web_function_request() :: #{}.


%% Example:
%% get_web_function_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"functionArn">> => string(),
%%   <<"functionName">> => string(),
%%   <<"state">> => list(any()),
%%   <<"stateReason">> => [string()],
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type get_web_function_response() :: #{binary() => any()}.

%% Example:
%% get_web_function_revision_request() :: #{}
-type get_web_function_revision_request() :: #{}.


%% Example:
%% get_web_function_revision_response() :: #{
%%   <<"buildConfig">> => build_config(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"errors">> => list(revision_error()),
%%   <<"functionArn">> => string(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"revisionArn">> => string(),
%%   <<"revisionId">> => string(),
%%   <<"serviceConfig">> => service_config(),
%%   <<"state">> => list(any()),
%%   <<"stateReason">> => [string()]
%% }
-type get_web_function_revision_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_request() :: #{}
-type list_tags_request() :: #{}.


%% Example:
%% list_tags_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_response() :: #{binary() => any()}.


%% Example:
%% list_web_function_endpoints_request() :: #{
%%   <<"filters">> => list(filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_web_function_endpoints_request() :: #{binary() => any()}.


%% Example:
%% list_web_function_endpoints_response() :: #{
%%   <<"endpoints">> => list(function_endpoint_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_web_function_endpoints_response() :: #{binary() => any()}.


%% Example:
%% list_web_function_revisions_request() :: #{
%%   <<"filters">> => list(filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_web_function_revisions_request() :: #{binary() => any()}.


%% Example:
%% list_web_function_revisions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"revisions">> => list(function_revision_summary())
%% }
-type list_web_function_revisions_response() :: #{binary() => any()}.


%% Example:
%% list_web_functions_request() :: #{
%%   <<"filters">> => list(filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_web_functions_request() :: #{binary() => any()}.


%% Example:
%% list_web_functions_response() :: #{
%%   <<"functions">> => list(function_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_web_functions_response() :: #{binary() => any()}.


%% Example:
%% logging_config() :: #{
%%   <<"applicationLogLevel">> => list(any()),
%%   <<"logGroup">> => [string()],
%%   <<"systemLogLevel">> => list(any())
%% }
-type logging_config() :: #{binary() => any()}.


%% Example:
%% put_resource_policy_request() :: #{
%%   <<"policy">> := string(),
%%   <<"revisionId">> => string()
%% }
-type put_resource_policy_request() :: #{binary() => any()}.


%% Example:
%% put_resource_policy_response() :: #{
%%   <<"policy">> => string(),
%%   <<"revisionId">> => string()
%% }
-type put_resource_policy_response() :: #{binary() => any()}.


%% Example:
%% regional_endpoint() :: #{
%%   <<"authType">> => list(any()),
%%   <<"domainName">> => string(),
%%   <<"revisionWeights">> => list(revision_weight()),
%%   <<"scalingConfig">> => scaling_config(),
%%   <<"state">> => list(any()),
%%   <<"stateReason">> => [string()],
%%   <<"throttleConfig">> => throttle_config(),
%%   <<"updateStatus">> => list(any()),
%%   <<"updateStatusReason">> => [string()]
%% }
-type regional_endpoint() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% revision_config() :: #{
%%   <<"buildConfig">> => build_config(),
%%   <<"description">> => string(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"serviceConfig">> => service_config()
%% }
-type revision_config() :: #{binary() => any()}.


%% Example:
%% revision_error() :: #{
%%   <<"attribute">> => [string()],
%%   <<"errorCode">> => [string()],
%%   <<"errorMessage">> => [string()]
%% }
-type revision_error() :: #{binary() => any()}.


%% Example:
%% revision_weight() :: #{
%%   <<"revisionId">> => string(),
%%   <<"weight">> => [integer()]
%% }
-type revision_weight() :: #{binary() => any()}.


%% Example:
%% runtime_config() :: #{
%%   <<"runtime">> => [string()]
%% }
-type runtime_config() :: #{binary() => any()}.


%% Example:
%% s3_object() :: #{
%%   <<"bucket">> => [string()],
%%   <<"key">> => [string()],
%%   <<"versionId">> => [string()]
%% }
-type s3_object() :: #{binary() => any()}.


%% Example:
%% scaling_config() :: #{
%%   <<"maxEnvironments">> => [integer()]
%% }
-type scaling_config() :: #{binary() => any()}.


%% Example:
%% service_config() :: #{
%%   <<"environmentVariables">> => map(),
%%   <<"executionRoleArn">> => string(),
%%   <<"maxConcurrencyPerEnvironment">> => [integer()],
%%   <<"telemetryConfig">> => telemetry_config(),
%%   <<"timeoutSeconds">> => [integer()]
%% }
-type service_config() :: #{binary() => any()}.


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
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% telemetry_config() :: #{
%%   <<"loggingConfig">> => logging_config()
%% }
-type telemetry_config() :: #{binary() => any()}.


%% Example:
%% throttle_config() :: #{
%%   <<"rateLimit">> => [integer()]
%% }
-type throttle_config() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()],
%%   <<"serviceCode">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% update_web_function_endpoint_request() :: #{
%%   <<"authType">> => list(any()),
%%   <<"autoDeploymentMode">> => list(any()),
%%   <<"description">> => string(),
%%   <<"revisionWeights">> => list(revision_weight()),
%%   <<"scalingConfig">> => scaling_config(),
%%   <<"throttleConfig">> => throttle_config()
%% }
-type update_web_function_endpoint_request() :: #{binary() => any()}.


%% Example:
%% update_web_function_endpoint_response() :: #{
%%   <<"authType">> => list(any()),
%%   <<"autoDeploymentMode">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"domainName">> => string(),
%%   <<"endpointArn">> => string(),
%%   <<"endpointName">> => string(),
%%   <<"endpointType">> => list(any()),
%%   <<"functionArn">> => string(),
%%   <<"regionalEndpoints">> => map(),
%%   <<"regions">> => list(string()),
%%   <<"revisionWeights">> => list(revision_weight()),
%%   <<"scalingConfig">> => scaling_config(),
%%   <<"state">> => list(any()),
%%   <<"stateReason">> => [string()],
%%   <<"throttleConfig">> => throttle_config(),
%%   <<"updateStatus">> => list(any()),
%%   <<"updateStatusReason">> => [string()],
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type update_web_function_endpoint_response() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

-type create_web_function_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_web_function_endpoint_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_web_function_revision_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_resource_policy_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_web_function_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_web_function_endpoint_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_web_function_revision_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type get_resource_policy_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_web_account_settings_errors() ::
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_web_function_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_web_function_endpoint_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_web_function_revision_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_tags_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_web_function_endpoints_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_web_function_revisions_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_web_functions_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type put_resource_policy_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_web_function_endpoint_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a web function with an initial revision and endpoint.
%%
%% To create a web function, you provide the function name, revision
%% configuration (code and service settings), and endpoint configuration.
%%
%% To use this operation, you must have the `CreateWebFunction'
%% permission on the web function. You don't need separate permissions
%% for the initial revision or endpoint.
-spec create_web_function(aws_client:aws_client(), create_web_function_request()) ->
    {ok, create_web_function_response(), tuple()} |
    {error, any()} |
    {error, create_web_function_errors(), tuple()}.
create_web_function(Client, Input) ->
    create_web_function(Client, Input, []).

-spec create_web_function(aws_client:aws_client(), create_web_function_request(), proplists:proplist()) ->
    {ok, create_web_function_response(), tuple()} |
    {error, any()} |
    {error, create_web_function_errors(), tuple()}.
create_web_function(Client, Input0, Options0) ->
    Method = put,
    Path = ["/2025-03-07/web-functions"],
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

%% @doc Creates an endpoint for a web function.
%%
%% An endpoint exposes the web function over HTTPS and routes traffic to one
%% or more revisions.
%%
%% To use this operation, you must have the `CreateWebFunctionEndpoint'
%% permission on the web function, not on the endpoint being created.
-spec create_web_function_endpoint(aws_client:aws_client(), binary() | list(), create_web_function_endpoint_request()) ->
    {ok, create_web_function_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_web_function_endpoint_errors(), tuple()}.
create_web_function_endpoint(Client, FunctionName, Input) ->
    create_web_function_endpoint(Client, FunctionName, Input, []).

-spec create_web_function_endpoint(aws_client:aws_client(), binary() | list(), create_web_function_endpoint_request(), proplists:proplist()) ->
    {ok, create_web_function_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_web_function_endpoint_errors(), tuple()}.
create_web_function_endpoint(Client, FunctionName, Input0, Options0) ->
    Method = put,
    Path = ["/2025-03-07/web-functions/", aws_util:encode_uri(FunctionName), "/endpoints"],
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

%% @doc Creates an immutable revision for a web function.
%%
%% A revision represents a specific version of the function code and
%% configuration.
%%
%% To use this operation, you must have the `CreateWebFunctionRevision'
%% permission on the web function, not on the revision being created.
-spec create_web_function_revision(aws_client:aws_client(), binary() | list(), create_web_function_revision_request()) ->
    {ok, create_web_function_revision_response(), tuple()} |
    {error, any()} |
    {error, create_web_function_revision_errors(), tuple()}.
create_web_function_revision(Client, FunctionName, Input) ->
    create_web_function_revision(Client, FunctionName, Input, []).

-spec create_web_function_revision(aws_client:aws_client(), binary() | list(), create_web_function_revision_request(), proplists:proplist()) ->
    {ok, create_web_function_revision_response(), tuple()} |
    {error, any()} |
    {error, create_web_function_revision_errors(), tuple()}.
create_web_function_revision(Client, FunctionName, Input0, Options0) ->
    Method = post,
    Path = ["/2025-03-07/web-functions/", aws_util:encode_uri(FunctionName), "/revisions"],
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

%% @doc Removes the resource-based policy from a web function.
-spec delete_resource_policy(aws_client:aws_client(), binary() | list(), delete_resource_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, ResourceArn, Input) ->
    delete_resource_policy(Client, ResourceArn, Input, []).

-spec delete_resource_policy(aws_client:aws_client(), binary() | list(), delete_resource_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/2025-03-07/resource-policy/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
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
                     {<<"RevisionId">>, <<"revisionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a web function and all of its associated revisions and
%% endpoints.
%%
%% To use this operation, you must have the `DeleteWebFunction'
%% permission on the web function. You don't need the
%% `DeleteWebFunctionRevision' or `DeleteWebFunctionEndpoint'
%% permission.
-spec delete_web_function(aws_client:aws_client(), binary() | list(), delete_web_function_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_web_function_errors(), tuple()}.
delete_web_function(Client, FunctionName, Input) ->
    delete_web_function(Client, FunctionName, Input, []).

-spec delete_web_function(aws_client:aws_client(), binary() | list(), delete_web_function_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_web_function_errors(), tuple()}.
delete_web_function(Client, FunctionName, Input0, Options0) ->
    Method = delete,
    Path = ["/2025-03-07/web-functions/", aws_util:encode_uri(FunctionName), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes a web function endpoint.
-spec delete_web_function_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), delete_web_function_endpoint_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_web_function_endpoint_errors(), tuple()}.
delete_web_function_endpoint(Client, EndpointName, FunctionName, Input) ->
    delete_web_function_endpoint(Client, EndpointName, FunctionName, Input, []).

-spec delete_web_function_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), delete_web_function_endpoint_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_web_function_endpoint_errors(), tuple()}.
delete_web_function_endpoint(Client, EndpointName, FunctionName, Input0, Options0) ->
    Method = delete,
    Path = ["/2025-03-07/web-functions/", aws_util:encode_uri(FunctionName), "/endpoints/", aws_util:encode_uri(EndpointName), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes a web function revision.
%%
%% You cannot delete a revision that is currently serving traffic on an
%% endpoint.
-spec delete_web_function_revision(aws_client:aws_client(), binary() | list(), binary() | list(), delete_web_function_revision_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_web_function_revision_errors(), tuple()}.
delete_web_function_revision(Client, FunctionName, RevisionId, Input) ->
    delete_web_function_revision(Client, FunctionName, RevisionId, Input, []).

-spec delete_web_function_revision(aws_client:aws_client(), binary() | list(), binary() | list(), delete_web_function_revision_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_web_function_revision_errors(), tuple()}.
delete_web_function_revision(Client, FunctionName, RevisionId, Input0, Options0) ->
    Method = delete,
    Path = ["/2025-03-07/web-functions/", aws_util:encode_uri(FunctionName), "/revisions/", aws_util:encode_uri(RevisionId), ""],
    SuccessStatusCode = 204,
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

%% @doc Retrieves the resource-based policy attached to a web function.
-spec get_resource_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, ResourceArn)
  when is_map(Client) ->
    get_resource_policy(Client, ResourceArn, #{}, #{}).

-spec get_resource_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resource_policy(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec get_resource_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2025-03-07/resource-policy/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details about your AWS Lambda Web Functions account
%% settings for the current AWS Region, including the quotas that apply to
%% web functions and your current usage.
-spec get_web_account_settings(aws_client:aws_client()) ->
    {ok, get_web_account_settings_response(), tuple()} |
    {error, any()} |
    {error, get_web_account_settings_errors(), tuple()}.
get_web_account_settings(Client)
  when is_map(Client) ->
    get_web_account_settings(Client, #{}, #{}).

-spec get_web_account_settings(aws_client:aws_client(), map(), map()) ->
    {ok, get_web_account_settings_response(), tuple()} |
    {error, any()} |
    {error, get_web_account_settings_errors(), tuple()}.
get_web_account_settings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_web_account_settings(Client, QueryMap, HeadersMap, []).

-spec get_web_account_settings(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_web_account_settings_response(), tuple()} |
    {error, any()} |
    {error, get_web_account_settings_errors(), tuple()}.
get_web_account_settings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2025-03-07/web-account-settings"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details about a web function, including its current state
%% and configuration.
-spec get_web_function(aws_client:aws_client(), binary() | list()) ->
    {ok, get_web_function_response(), tuple()} |
    {error, any()} |
    {error, get_web_function_errors(), tuple()}.
get_web_function(Client, FunctionName)
  when is_map(Client) ->
    get_web_function(Client, FunctionName, #{}, #{}).

-spec get_web_function(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_web_function_response(), tuple()} |
    {error, any()} |
    {error, get_web_function_errors(), tuple()}.
get_web_function(Client, FunctionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_web_function(Client, FunctionName, QueryMap, HeadersMap, []).

-spec get_web_function(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_web_function_response(), tuple()} |
    {error, any()} |
    {error, get_web_function_errors(), tuple()}.
get_web_function(Client, FunctionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2025-03-07/web-functions/", aws_util:encode_uri(FunctionName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details about a web function endpoint, including its
%% current state, configuration, and domain name.
-spec get_web_function_endpoint(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_web_function_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_web_function_endpoint_errors(), tuple()}.
get_web_function_endpoint(Client, EndpointName, FunctionName)
  when is_map(Client) ->
    get_web_function_endpoint(Client, EndpointName, FunctionName, #{}, #{}).

-spec get_web_function_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_web_function_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_web_function_endpoint_errors(), tuple()}.
get_web_function_endpoint(Client, EndpointName, FunctionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_web_function_endpoint(Client, EndpointName, FunctionName, QueryMap, HeadersMap, []).

-spec get_web_function_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_web_function_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_web_function_endpoint_errors(), tuple()}.
get_web_function_endpoint(Client, EndpointName, FunctionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2025-03-07/web-functions/", aws_util:encode_uri(FunctionName), "/endpoints/", aws_util:encode_uri(EndpointName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details about a web function revision, including its state
%% and configuration.
-spec get_web_function_revision(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_web_function_revision_response(), tuple()} |
    {error, any()} |
    {error, get_web_function_revision_errors(), tuple()}.
get_web_function_revision(Client, FunctionName, RevisionId)
  when is_map(Client) ->
    get_web_function_revision(Client, FunctionName, RevisionId, #{}, #{}).

-spec get_web_function_revision(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_web_function_revision_response(), tuple()} |
    {error, any()} |
    {error, get_web_function_revision_errors(), tuple()}.
get_web_function_revision(Client, FunctionName, RevisionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_web_function_revision(Client, FunctionName, RevisionId, QueryMap, HeadersMap, []).

-spec get_web_function_revision(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_web_function_revision_response(), tuple()} |
    {error, any()} |
    {error, get_web_function_revision_errors(), tuple()}.
get_web_function_revision(Client, FunctionName, RevisionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2025-03-07/web-functions/", aws_util:encode_uri(FunctionName), "/revisions/", aws_util:encode_uri(RevisionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of tags applied to a web function.
-spec list_tags(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_response(), tuple()} |
    {error, any()} |
    {error, list_tags_errors(), tuple()}.
list_tags(Client, Resource)
  when is_map(Client) ->
    list_tags(Client, Resource, #{}, #{}).

-spec list_tags(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_response(), tuple()} |
    {error, any()} |
    {error, list_tags_errors(), tuple()}.
list_tags(Client, Resource, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags(Client, Resource, QueryMap, HeadersMap, []).

-spec list_tags(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_response(), tuple()} |
    {error, any()} |
    {error, list_tags_errors(), tuple()}.
list_tags(Client, Resource, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2025-03-07/tags/", aws_util:encode_uri(Resource), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists endpoints for a web function.
%%
%% We recommend using pagination to ensure that the operation returns quickly
%% and successfully.
-spec list_web_function_endpoints(aws_client:aws_client(), binary() | list(), list_web_function_endpoints_request()) ->
    {ok, list_web_function_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_web_function_endpoints_errors(), tuple()}.
list_web_function_endpoints(Client, FunctionName, Input) ->
    list_web_function_endpoints(Client, FunctionName, Input, []).

-spec list_web_function_endpoints(aws_client:aws_client(), binary() | list(), list_web_function_endpoints_request(), proplists:proplist()) ->
    {ok, list_web_function_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_web_function_endpoints_errors(), tuple()}.
list_web_function_endpoints(Client, FunctionName, Input0, Options0) ->
    Method = post,
    Path = ["/2025-03-07/web-functions/", aws_util:encode_uri(FunctionName), "/list-endpoints"],
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

%% @doc Lists revisions for a web function.
%%
%% We recommend using pagination to ensure that the operation returns quickly
%% and successfully.
-spec list_web_function_revisions(aws_client:aws_client(), binary() | list(), list_web_function_revisions_request()) ->
    {ok, list_web_function_revisions_response(), tuple()} |
    {error, any()} |
    {error, list_web_function_revisions_errors(), tuple()}.
list_web_function_revisions(Client, FunctionName, Input) ->
    list_web_function_revisions(Client, FunctionName, Input, []).

-spec list_web_function_revisions(aws_client:aws_client(), binary() | list(), list_web_function_revisions_request(), proplists:proplist()) ->
    {ok, list_web_function_revisions_response(), tuple()} |
    {error, any()} |
    {error, list_web_function_revisions_errors(), tuple()}.
list_web_function_revisions(Client, FunctionName, Input0, Options0) ->
    Method = post,
    Path = ["/2025-03-07/web-functions/", aws_util:encode_uri(FunctionName), "/list-revisions"],
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

%% @doc Lists web functions in your account.
%%
%% We recommend using pagination to ensure that the operation returns quickly
%% and successfully.
-spec list_web_functions(aws_client:aws_client(), list_web_functions_request()) ->
    {ok, list_web_functions_response(), tuple()} |
    {error, any()} |
    {error, list_web_functions_errors(), tuple()}.
list_web_functions(Client, Input) ->
    list_web_functions(Client, Input, []).

-spec list_web_functions(aws_client:aws_client(), list_web_functions_request(), proplists:proplist()) ->
    {ok, list_web_functions_response(), tuple()} |
    {error, any()} |
    {error, list_web_functions_errors(), tuple()}.
list_web_functions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2025-03-07/web-functions"],
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

%% @doc Adds or updates a resource-based policy on a web function.
%%
%% A resource-based policy grants permissions to other AWS accounts or
%% services to perform actions on the web function.
-spec put_resource_policy(aws_client:aws_client(), binary() | list(), put_resource_policy_request()) ->
    {ok, put_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, ResourceArn, Input) ->
    put_resource_policy(Client, ResourceArn, Input, []).

-spec put_resource_policy(aws_client:aws_client(), binary() | list(), put_resource_policy_request(), proplists:proplist()) ->
    {ok, put_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, ResourceArn, Input0, Options0) ->
    Method = put,
    Path = ["/2025-03-07/resource-policy/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Adds tags to a web function.
%%
%% If a tag key already exists, the existing value is overwritten with the
%% new value.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Resource, Input) ->
    tag_resource(Client, Resource, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Resource, Input0, Options0) ->
    Method = post,
    Path = ["/2025-03-07/tags/", aws_util:encode_uri(Resource), ""],
    SuccessStatusCode = 204,
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

%% @doc Removes tags from a web function.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Resource, Input) ->
    untag_resource(Client, Resource, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Resource, Input0, Options0) ->
    Method = delete,
    Path = ["/2025-03-07/tags/", aws_util:encode_uri(Resource), ""],
    SuccessStatusCode = 204,
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

%% @doc Updates the configuration of a web function endpoint.
%%
%% You can modify the authorization type, auto-deployment mode, revision
%% weights, scaling, and throttling settings.
-spec update_web_function_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), update_web_function_endpoint_request()) ->
    {ok, update_web_function_endpoint_response(), tuple()} |
    {error, any()} |
    {error, update_web_function_endpoint_errors(), tuple()}.
update_web_function_endpoint(Client, EndpointName, FunctionName, Input) ->
    update_web_function_endpoint(Client, EndpointName, FunctionName, Input, []).

-spec update_web_function_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), update_web_function_endpoint_request(), proplists:proplist()) ->
    {ok, update_web_function_endpoint_response(), tuple()} |
    {error, any()} |
    {error, update_web_function_endpoint_errors(), tuple()}.
update_web_function_endpoint(Client, EndpointName, FunctionName, Input0, Options0) ->
    Method = patch,
    Path = ["/2025-03-07/web-functions/", aws_util:encode_uri(FunctionName), "/endpoints/", aws_util:encode_uri(EndpointName), ""],
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
    Client1 = Client#{service => <<"lambda">>},
    DefaultHost = build_host(<<"lambda">>, Client1),
    URL0 = build_url(DefaultHost, Path, Client1),
    PathBin = erlang:iolist_to_binary(Path),
    {URL1, Host} = aws_util:apply_endpoint_url_override(URL0, DefaultHost, PathBin, <<"AWS_ENDPOINT_URL_LAMBDA_WEB">>),
    URL = aws_request:add_query(URL1, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
         true when is_list(Input) ->
           proplists:get_value(<<"Body">>, Input, <<"">>);
         true when Input =:= undefined ->
           <<"">>;
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

