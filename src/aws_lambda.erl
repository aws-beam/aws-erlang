%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Lambda
%%
%% Overview
%%
%% Lambda is a compute service that lets you run code without provisioning or
%% managing servers.
%%
%% Lambda runs your code on a high-availability compute infrastructure and
%% performs all of the
%% administration of the compute resources, including server and operating
%% system maintenance, capacity provisioning
%% and automatic scaling, code monitoring and logging. With Lambda, you can
%% run code for virtually any
%% type of application or backend service. For more information about the
%% Lambda service, see What is Lambda:
%% https://docs.aws.amazon.com/lambda/latest/dg/welcome.html in the Lambda
%% Developer Guide.
%%
%% The Lambda API Reference provides information about
%% each of the API methods, including details about the parameters in each
%% API request and
%% response.
%%
%% You can use Software Development Kits (SDKs), Integrated Development
%% Environment (IDE) Toolkits, and command
%% line tools to access the API. For installation instructions, see Tools for
%% Amazon Web Services: http://aws.amazon.com/tools/.
%%
%% For a list of Region-specific endpoints that Lambda supports,
%% see Lambda
%% endpoints and quotas :
%% https://docs.aws.amazon.com/general/latest/gr/lambda-service.html/ in the
%% Amazon Web Services General Reference..
%%
%% When making the API calls, you will need to
%% authenticate your request by providing a signature. Lambda supports
%% signature version 4. For more information,
%% see Signature Version 4 signing process:
%% https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html in
%% the
%% Amazon Web Services General Reference..
%%
%% CA certificates
%%
%% Because Amazon Web Services SDKs use the CA certificates from your
%% computer, changes to the certificates on the Amazon Web Services servers
%% can cause connection failures when you attempt to use an SDK. You can
%% prevent these failures by keeping your
%% computer's CA certificates and operating system up-to-date. If you
%% encounter this issue in a corporate
%% environment and do not manage your own computer, you might need to ask an
%% administrator to assist with the
%% update process. The following list shows minimum operating system and Java
%% versions:
%%
%% Microsoft Windows versions that have updates from January 2005 or later
%% installed contain at least one
%% of the required CAs in their trust list.
%%
%% Mac OS X 10.4 with Java for Mac OS X 10.4 Release 5 (February 2007), Mac
%% OS X 10.5 (October 2007), and
%% later versions contain at least one of the required CAs in their trust
%% list.
%%
%% Red Hat Enterprise Linux 5 (March 2007), 6, and 7 and CentOS 5, 6, and 7
%% all contain at least one of the
%% required CAs in their default trusted CA list.
%%
%% Java 1.4.2_12 (May 2006), 5 Update 2 (March 2005), and all later versions,
%% including Java 6 (December
%% 2006), 7, and 8, contain at least one of the required CAs in their default
%% trusted CA list.
%%
%% When accessing the Lambda management console or Lambda API endpoints,
%% whether through browsers or
%% programmatically, you will need to ensure your client machines support any
%% of the following CAs:
%%
%% Amazon Root CA 1
%%
%% Starfield Services Root Certificate Authority - G2
%%
%% Starfield Class 2 Certification Authority
%%
%% Root certificates from the first two authorities are available from Amazon
%% trust services: https://www.amazontrust.com/repository/, but keeping your
%% computer
%% up-to-date is the more straightforward solution. To learn more about
%% ACM-provided certificates, see Amazon Web Services Certificate Manager
%% FAQs.: http://aws.amazon.com/certificate-manager/faqs/#certificates
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
         create_function_url_config/3,
         create_function_url_config/4,
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
         delete_function_url_config/3,
         delete_function_url_config/4,
         delete_layer_version/4,
         delete_layer_version/5,
         delete_provisioned_concurrency_config/3,
         delete_provisioned_concurrency_config/4,
         get_account_settings/1,
         get_account_settings/3,
         get_account_settings/4,
         get_alias/3,
         get_alias/5,
         get_alias/6,
         get_code_signing_config/2,
         get_code_signing_config/4,
         get_code_signing_config/5,
         get_event_source_mapping/2,
         get_event_source_mapping/4,
         get_event_source_mapping/5,
         get_function/2,
         get_function/4,
         get_function/5,
         get_function_code_signing_config/2,
         get_function_code_signing_config/4,
         get_function_code_signing_config/5,
         get_function_concurrency/2,
         get_function_concurrency/4,
         get_function_concurrency/5,
         get_function_configuration/2,
         get_function_configuration/4,
         get_function_configuration/5,
         get_function_event_invoke_config/2,
         get_function_event_invoke_config/4,
         get_function_event_invoke_config/5,
         get_function_recursion_config/2,
         get_function_recursion_config/4,
         get_function_recursion_config/5,
         get_function_url_config/2,
         get_function_url_config/4,
         get_function_url_config/5,
         get_layer_version/3,
         get_layer_version/5,
         get_layer_version/6,
         get_layer_version_by_arn/2,
         get_layer_version_by_arn/4,
         get_layer_version_by_arn/5,
         get_layer_version_policy/3,
         get_layer_version_policy/5,
         get_layer_version_policy/6,
         get_policy/2,
         get_policy/4,
         get_policy/5,
         get_provisioned_concurrency_config/3,
         get_provisioned_concurrency_config/5,
         get_provisioned_concurrency_config/6,
         get_runtime_management_config/2,
         get_runtime_management_config/4,
         get_runtime_management_config/5,
         invoke/3,
         invoke/4,
         invoke_async/3,
         invoke_async/4,
         invoke_with_response_stream/3,
         invoke_with_response_stream/4,
         list_aliases/2,
         list_aliases/4,
         list_aliases/5,
         list_code_signing_configs/1,
         list_code_signing_configs/3,
         list_code_signing_configs/4,
         list_event_source_mappings/1,
         list_event_source_mappings/3,
         list_event_source_mappings/4,
         list_function_event_invoke_configs/2,
         list_function_event_invoke_configs/4,
         list_function_event_invoke_configs/5,
         list_function_url_configs/2,
         list_function_url_configs/4,
         list_function_url_configs/5,
         list_functions/1,
         list_functions/3,
         list_functions/4,
         list_functions_by_code_signing_config/2,
         list_functions_by_code_signing_config/4,
         list_functions_by_code_signing_config/5,
         list_layer_versions/2,
         list_layer_versions/4,
         list_layer_versions/5,
         list_layers/1,
         list_layers/3,
         list_layers/4,
         list_provisioned_concurrency_configs/2,
         list_provisioned_concurrency_configs/4,
         list_provisioned_concurrency_configs/5,
         list_tags/2,
         list_tags/4,
         list_tags/5,
         list_versions_by_function/2,
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
         put_function_recursion_config/3,
         put_function_recursion_config/4,
         put_provisioned_concurrency_config/3,
         put_provisioned_concurrency_config/4,
         put_runtime_management_config/3,
         put_runtime_management_config/4,
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
         update_function_event_invoke_config/4,
         update_function_url_config/3,
         update_function_url_config/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% list_functions_by_code_signing_config_response() :: #{
%%   <<"FunctionArns">> => list(string()()),
%%   <<"NextMarker">> => string()
%% }
-type list_functions_by_code_signing_config_response() :: #{binary() => any()}.


%% Example:
%% account_usage() :: #{
%%   <<"FunctionCount">> => float(),
%%   <<"TotalCodeSize">> => float()
%% }
-type account_usage() :: #{binary() => any()}.


%% Example:
%% function_event_invoke_config() :: #{
%%   <<"DestinationConfig">> => destination_config(),
%%   <<"FunctionArn">> => string(),
%%   <<"LastModified">> => non_neg_integer(),
%%   <<"MaximumEventAgeInSeconds">> => integer(),
%%   <<"MaximumRetryAttempts">> => integer()
%% }
-type function_event_invoke_config() :: #{binary() => any()}.


%% Example:
%% list_aliases_response() :: #{
%%   <<"Aliases">> => list(alias_configuration()()),
%%   <<"NextMarker">> => string()
%% }
-type list_aliases_response() :: #{binary() => any()}.


%% Example:
%% unsupported_media_type_exception() :: #{
%%   <<"Type">> => string(),
%%   <<"message">> => string()
%% }
-type unsupported_media_type_exception() :: #{binary() => any()}.


%% Example:
%% kms_disabled_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type kms_disabled_exception() :: #{binary() => any()}.


%% Example:
%% list_aliases_request() :: #{
%%   <<"FunctionVersion">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_aliases_request() :: #{binary() => any()}.


%% Example:
%% function_code() :: #{
%%   <<"ImageUri">> => string(),
%%   <<"S3Bucket">> => string(),
%%   <<"S3Key">> => string(),
%%   <<"S3ObjectVersion">> => string(),
%%   <<"SourceKMSKeyArn">> => string(),
%%   <<"ZipFile">> => binary()
%% }
-type function_code() :: #{binary() => any()}.


%% Example:
%% invalid_security_group_id_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type invalid_security_group_id_exception() :: #{binary() => any()}.


%% Example:
%% update_event_source_mapping_request() :: #{
%%   <<"BatchSize">> => integer(),
%%   <<"BisectBatchOnFunctionError">> => boolean(),
%%   <<"DestinationConfig">> => destination_config(),
%%   <<"DocumentDBEventSourceConfig">> => document_db_event_source_config(),
%%   <<"Enabled">> => boolean(),
%%   <<"FilterCriteria">> => filter_criteria(),
%%   <<"FunctionName">> => string(),
%%   <<"FunctionResponseTypes">> => list(list(any())()),
%%   <<"KMSKeyArn">> => string(),
%%   <<"MaximumBatchingWindowInSeconds">> => integer(),
%%   <<"MaximumRecordAgeInSeconds">> => integer(),
%%   <<"MaximumRetryAttempts">> => integer(),
%%   <<"ParallelizationFactor">> => integer(),
%%   <<"ScalingConfig">> => scaling_config(),
%%   <<"SourceAccessConfigurations">> => list(source_access_configuration()()),
%%   <<"TumblingWindowInSeconds">> => integer()
%% }
-type update_event_source_mapping_request() :: #{binary() => any()}.


%% Example:
%% runtime_version_config() :: #{
%%   <<"Error">> => runtime_version_error(),
%%   <<"RuntimeVersionArn">> => string()
%% }
-type runtime_version_config() :: #{binary() => any()}.


%% Example:
%% snap_start() :: #{
%%   <<"ApplyOn">> => list(any())
%% }
-type snap_start() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% get_code_signing_config_request() :: #{}
-type get_code_signing_config_request() :: #{}.


%% Example:
%% remove_layer_version_permission_request() :: #{
%%   <<"RevisionId">> => string()
%% }
-type remove_layer_version_permission_request() :: #{binary() => any()}.

%% Example:
%% delete_function_code_signing_config_request() :: #{}
-type delete_function_code_signing_config_request() :: #{}.


%% Example:
%% environment_response() :: #{
%%   <<"Error">> => environment_error(),
%%   <<"Variables">> => map()
%% }
-type environment_response() :: #{binary() => any()}.


%% Example:
%% provisioned_concurrency_config_list_item() :: #{
%%   <<"AllocatedProvisionedConcurrentExecutions">> => integer(),
%%   <<"AvailableProvisionedConcurrentExecutions">> => integer(),
%%   <<"FunctionArn">> => string(),
%%   <<"LastModified">> => string(),
%%   <<"RequestedProvisionedConcurrentExecutions">> => integer(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => string()
%% }
-type provisioned_concurrency_config_list_item() :: #{binary() => any()}.


%% Example:
%% update_alias_request() :: #{
%%   <<"Description">> => string(),
%%   <<"FunctionVersion">> => string(),
%%   <<"RevisionId">> => string(),
%%   <<"RoutingConfig">> => alias_routing_configuration()
%% }
-type update_alias_request() :: #{binary() => any()}.


%% Example:
%% list_functions_response() :: #{
%%   <<"Functions">> => list(function_configuration()()),
%%   <<"NextMarker">> => string()
%% }
-type list_functions_response() :: #{binary() => any()}.


%% Example:
%% put_function_concurrency_request() :: #{
%%   <<"ReservedConcurrentExecutions">> := integer()
%% }
-type put_function_concurrency_request() :: #{binary() => any()}.


%% Example:
%% policy_length_exceeded_exception() :: #{
%%   <<"Type">> => string(),
%%   <<"message">> => string()
%% }
-type policy_length_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% list_provisioned_concurrency_configs_response() :: #{
%%   <<"NextMarker">> => string(),
%%   <<"ProvisionedConcurrencyConfigs">> => list(provisioned_concurrency_config_list_item()())
%% }
-type list_provisioned_concurrency_configs_response() :: #{binary() => any()}.


%% Example:
%% list_code_signing_configs_response() :: #{
%%   <<"CodeSigningConfigs">> => list(code_signing_config()()),
%%   <<"NextMarker">> => string()
%% }
-type list_code_signing_configs_response() :: #{binary() => any()}.


%% Example:
%% amazon_managed_kafka_event_source_config() :: #{
%%   <<"ConsumerGroupId">> => string()
%% }
-type amazon_managed_kafka_event_source_config() :: #{binary() => any()}.


%% Example:
%% invoke_with_response_stream_response() :: #{
%%   <<"EventStream">> => list(),
%%   <<"ExecutedVersion">> => string(),
%%   <<"ResponseStreamContentType">> => string(),
%%   <<"StatusCode">> => integer()
%% }
-type invoke_with_response_stream_response() :: #{binary() => any()}.


%% Example:
%% filter_criteria() :: #{
%%   <<"Filters">> => list(filter()())
%% }
-type filter_criteria() :: #{binary() => any()}.


%% Example:
%% function_code_location() :: #{
%%   <<"ImageUri">> => string(),
%%   <<"Location">> => string(),
%%   <<"RepositoryType">> => string(),
%%   <<"ResolvedImageUri">> => string(),
%%   <<"SourceKMSKeyArn">> => string()
%% }
-type function_code_location() :: #{binary() => any()}.

%% Example:
%% get_account_settings_request() :: #{}
-type get_account_settings_request() :: #{}.


%% Example:
%% create_alias_request() :: #{
%%   <<"Description">> => string(),
%%   <<"FunctionVersion">> := string(),
%%   <<"Name">> := string(),
%%   <<"RoutingConfig">> => alias_routing_configuration()
%% }
-type create_alias_request() :: #{binary() => any()}.


%% Example:
%% resource_in_use_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.


%% Example:
%% get_layer_version_policy_response() :: #{
%%   <<"Policy">> => string(),
%%   <<"RevisionId">> => string()
%% }
-type get_layer_version_policy_response() :: #{binary() => any()}.


%% Example:
%% get_account_settings_response() :: #{
%%   <<"AccountLimit">> => account_limit(),
%%   <<"AccountUsage">> => account_usage()
%% }
-type get_account_settings_response() :: #{binary() => any()}.


%% Example:
%% get_policy_request() :: #{
%%   <<"Qualifier">> => string()
%% }
-type get_policy_request() :: #{binary() => any()}.


%% Example:
%% get_layer_version_response() :: #{
%%   <<"CompatibleArchitectures">> => list(list(any())()),
%%   <<"CompatibleRuntimes">> => list(list(any())()),
%%   <<"Content">> => layer_version_content_output(),
%%   <<"CreatedDate">> => string(),
%%   <<"Description">> => string(),
%%   <<"LayerArn">> => string(),
%%   <<"LayerVersionArn">> => string(),
%%   <<"LicenseInfo">> => string(),
%%   <<"Version">> => float()
%% }
-type get_layer_version_response() :: #{binary() => any()}.


%% Example:
%% put_function_recursion_config_response() :: #{
%%   <<"RecursiveLoop">> => list(any())
%% }
-type put_function_recursion_config_response() :: #{binary() => any()}.


%% Example:
%% put_function_event_invoke_config_request() :: #{
%%   <<"DestinationConfig">> => destination_config(),
%%   <<"MaximumEventAgeInSeconds">> => integer(),
%%   <<"MaximumRetryAttempts">> => integer(),
%%   <<"Qualifier">> => string()
%% }
-type put_function_event_invoke_config_request() :: #{binary() => any()}.


%% Example:
%% invoke_async_request() :: #{
%%   <<"InvokeArgs">> := binary()
%% }
-type invoke_async_request() :: #{binary() => any()}.


%% Example:
%% list_layers_response() :: #{
%%   <<"Layers">> => list(layers_list_item()()),
%%   <<"NextMarker">> => string()
%% }
-type list_layers_response() :: #{binary() => any()}.


%% Example:
%% source_access_configuration() :: #{
%%   <<"Type">> => list(any()),
%%   <<"URI">> => string()
%% }
-type source_access_configuration() :: #{binary() => any()}.

%% Example:
%% get_layer_version_policy_request() :: #{}
-type get_layer_version_policy_request() :: #{}.


%% Example:
%% list_code_signing_configs_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_code_signing_configs_request() :: #{binary() => any()}.


%% Example:
%% layer_version_content_output() :: #{
%%   <<"CodeSha256">> => string(),
%%   <<"CodeSize">> => float(),
%%   <<"Location">> => string(),
%%   <<"SigningJobArn">> => string(),
%%   <<"SigningProfileVersionArn">> => string()
%% }
-type layer_version_content_output() :: #{binary() => any()}.


%% Example:
%% list_tags_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_response() :: #{binary() => any()}.


%% Example:
%% invocation_response() :: #{
%%   <<"ExecutedVersion">> => string(),
%%   <<"FunctionError">> => string(),
%%   <<"LogResult">> => string(),
%%   <<"Payload">> => binary(),
%%   <<"StatusCode">> => integer()
%% }
-type invocation_response() :: #{binary() => any()}.


%% Example:
%% delete_function_url_config_request() :: #{
%%   <<"Qualifier">> => string()
%% }
-type delete_function_url_config_request() :: #{binary() => any()}.

%% Example:
%% get_function_recursion_config_request() :: #{}
-type get_function_recursion_config_request() :: #{}.


%% Example:
%% ec2_access_denied_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type ec2_access_denied_exception() :: #{binary() => any()}.


%% Example:
%% update_function_url_config_request() :: #{
%%   <<"AuthType">> => list(any()),
%%   <<"Cors">> => cors(),
%%   <<"InvokeMode">> => list(any()),
%%   <<"Qualifier">> => string()
%% }
-type update_function_url_config_request() :: #{binary() => any()}.


%% Example:
%% self_managed_kafka_event_source_config() :: #{
%%   <<"ConsumerGroupId">> => string()
%% }
-type self_managed_kafka_event_source_config() :: #{binary() => any()}.


%% Example:
%% snap_start_not_ready_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type snap_start_not_ready_exception() :: #{binary() => any()}.


%% Example:
%% get_function_configuration_request() :: #{
%%   <<"Qualifier">> => string()
%% }
-type get_function_configuration_request() :: #{binary() => any()}.


%% Example:
%% get_function_response() :: #{
%%   <<"Code">> => function_code_location(),
%%   <<"Concurrency">> => concurrency(),
%%   <<"Configuration">> => function_configuration(),
%%   <<"Tags">> => map(),
%%   <<"TagsError">> => tags_error()
%% }
-type get_function_response() :: #{binary() => any()}.


%% Example:
%% logging_config() :: #{
%%   <<"ApplicationLogLevel">> => list(any()),
%%   <<"LogFormat">> => list(any()),
%%   <<"LogGroup">> => string(),
%%   <<"SystemLogLevel">> => list(any())
%% }
-type logging_config() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_function_concurrency_request() :: #{}
-type delete_function_concurrency_request() :: #{}.


%% Example:
%% image_config() :: #{
%%   <<"Command">> => list(string()()),
%%   <<"EntryPoint">> => list(string()()),
%%   <<"WorkingDirectory">> => string()
%% }
-type image_config() :: #{binary() => any()}.


%% Example:
%% update_function_url_config_response() :: #{
%%   <<"AuthType">> => list(any()),
%%   <<"Cors">> => cors(),
%%   <<"CreationTime">> => string(),
%%   <<"FunctionArn">> => string(),
%%   <<"FunctionUrl">> => string(),
%%   <<"InvokeMode">> => list(any()),
%%   <<"LastModifiedTime">> => string()
%% }
-type update_function_url_config_response() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"Reason">> => list(any()),
%%   <<"Type">> => string(),
%%   <<"message">> => string(),
%%   <<"retryAfterSeconds">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.

%% Example:
%% get_function_code_signing_config_request() :: #{}
-type get_function_code_signing_config_request() :: #{}.


%% Example:
%% put_function_recursion_config_request() :: #{
%%   <<"RecursiveLoop">> := list(any())
%% }
-type put_function_recursion_config_request() :: #{binary() => any()}.


%% Example:
%% destination_config() :: #{
%%   <<"OnFailure">> => on_failure(),
%%   <<"OnSuccess">> => on_success()
%% }
-type destination_config() :: #{binary() => any()}.


%% Example:
%% snap_start_timeout_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type snap_start_timeout_exception() :: #{binary() => any()}.


%% Example:
%% put_provisioned_concurrency_config_request() :: #{
%%   <<"ProvisionedConcurrentExecutions">> := integer(),
%%   <<"Qualifier">> := string()
%% }
-type put_provisioned_concurrency_config_request() :: #{binary() => any()}.

%% Example:
%% delete_layer_version_request() :: #{}
-type delete_layer_version_request() :: #{}.


%% Example:
%% create_code_signing_config_response() :: #{
%%   <<"CodeSigningConfig">> => code_signing_config()
%% }
-type create_code_signing_config_response() :: #{binary() => any()}.


%% Example:
%% invoke_response_stream_update() :: #{
%%   <<"Payload">> => binary()
%% }
-type invoke_response_stream_update() :: #{binary() => any()}.


%% Example:
%% list_function_event_invoke_configs_response() :: #{
%%   <<"FunctionEventInvokeConfigs">> => list(function_event_invoke_config()()),
%%   <<"NextMarker">> => string()
%% }
-type list_function_event_invoke_configs_response() :: #{binary() => any()}.


%% Example:
%% get_function_concurrency_response() :: #{
%%   <<"ReservedConcurrentExecutions">> => integer()
%% }
-type get_function_concurrency_response() :: #{binary() => any()}.

%% Example:
%% delete_event_source_mapping_request() :: #{}
-type delete_event_source_mapping_request() :: #{}.


%% Example:
%% recursive_invocation_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type recursive_invocation_exception() :: #{binary() => any()}.


%% Example:
%% invalid_runtime_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type invalid_runtime_exception() :: #{binary() => any()}.

%% Example:
%% get_function_concurrency_request() :: #{}
-type get_function_concurrency_request() :: #{}.

%% Example:
%% get_alias_request() :: #{}
-type get_alias_request() :: #{}.


%% Example:
%% on_failure() :: #{
%%   <<"Destination">> => string()
%% }
-type on_failure() :: #{binary() => any()}.


%% Example:
%% list_event_source_mappings_response() :: #{
%%   <<"EventSourceMappings">> => list(event_source_mapping_configuration()()),
%%   <<"NextMarker">> => string()
%% }
-type list_event_source_mappings_response() :: #{binary() => any()}.


%% Example:
%% get_runtime_management_config_request() :: #{
%%   <<"Qualifier">> => string()
%% }
-type get_runtime_management_config_request() :: #{binary() => any()}.


%% Example:
%% invalid_request_content_exception() :: #{
%%   <<"Type">> => string(),
%%   <<"message">> => string()
%% }
-type invalid_request_content_exception() :: #{binary() => any()}.


%% Example:
%% put_runtime_management_config_request() :: #{
%%   <<"Qualifier">> => string(),
%%   <<"RuntimeVersionArn">> => string(),
%%   <<"UpdateRuntimeOn">> := list(any())
%% }
-type put_runtime_management_config_request() :: #{binary() => any()}.


%% Example:
%% get_function_request() :: #{
%%   <<"Qualifier">> => string()
%% }
-type get_function_request() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% publish_layer_version_response() :: #{
%%   <<"CompatibleArchitectures">> => list(list(any())()),
%%   <<"CompatibleRuntimes">> => list(list(any())()),
%%   <<"Content">> => layer_version_content_output(),
%%   <<"CreatedDate">> => string(),
%%   <<"Description">> => string(),
%%   <<"LayerArn">> => string(),
%%   <<"LayerVersionArn">> => string(),
%%   <<"LicenseInfo">> => string(),
%%   <<"Version">> => float()
%% }
-type publish_layer_version_response() :: #{binary() => any()}.


%% Example:
%% document_db_event_source_config() :: #{
%%   <<"CollectionName">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"FullDocument">> => list(any())
%% }
-type document_db_event_source_config() :: #{binary() => any()}.

%% Example:
%% delete_code_signing_config_request() :: #{}
-type delete_code_signing_config_request() :: #{}.


%% Example:
%% create_function_url_config_response() :: #{
%%   <<"AuthType">> => list(any()),
%%   <<"Cors">> => cors(),
%%   <<"CreationTime">> => string(),
%%   <<"FunctionArn">> => string(),
%%   <<"FunctionUrl">> => string(),
%%   <<"InvokeMode">> => list(any())
%% }
-type create_function_url_config_response() :: #{binary() => any()}.


%% Example:
%% code_signing_config_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type code_signing_config_not_found_exception() :: #{binary() => any()}.


%% Example:
%% environment() :: #{
%%   <<"Variables">> => map()
%% }
-type environment() :: #{binary() => any()}.


%% Example:
%% delete_function_request() :: #{
%%   <<"Qualifier">> => string()
%% }
-type delete_function_request() :: #{binary() => any()}.


%% Example:
%% publish_version_request() :: #{
%%   <<"CodeSha256">> => string(),
%%   <<"Description">> => string(),
%%   <<"RevisionId">> => string()
%% }
-type publish_version_request() :: #{binary() => any()}.


%% Example:
%% put_function_code_signing_config_response() :: #{
%%   <<"CodeSigningConfigArn">> => string(),
%%   <<"FunctionName">> => string()
%% }
-type put_function_code_signing_config_response() :: #{binary() => any()}.


%% Example:
%% alias_configuration() :: #{
%%   <<"AliasArn">> => string(),
%%   <<"Description">> => string(),
%%   <<"FunctionVersion">> => string(),
%%   <<"Name">> => string(),
%%   <<"RevisionId">> => string(),
%%   <<"RoutingConfig">> => alias_routing_configuration()
%% }
-type alias_configuration() :: #{binary() => any()}.


%% Example:
%% update_function_code_request() :: #{
%%   <<"Architectures">> => list(list(any())()),
%%   <<"DryRun">> => boolean(),
%%   <<"ImageUri">> => string(),
%%   <<"Publish">> => boolean(),
%%   <<"RevisionId">> => string(),
%%   <<"S3Bucket">> => string(),
%%   <<"S3Key">> => string(),
%%   <<"S3ObjectVersion">> => string(),
%%   <<"SourceKMSKeyArn">> => string(),
%%   <<"ZipFile">> => binary()
%% }
-type update_function_code_request() :: #{binary() => any()}.


%% Example:
%% create_code_signing_config_request() :: #{
%%   <<"AllowedPublishers">> := allowed_publishers(),
%%   <<"CodeSigningPolicies">> => code_signing_policies(),
%%   <<"Description">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_code_signing_config_request() :: #{binary() => any()}.


%% Example:
%% invalid_parameter_value_exception() :: #{
%%   <<"Type">> => string(),
%%   <<"message">> => string()
%% }
-type invalid_parameter_value_exception() :: #{binary() => any()}.


%% Example:
%% event_source_mapping_configuration() :: #{
%%   <<"AmazonManagedKafkaEventSourceConfig">> => amazon_managed_kafka_event_source_config(),
%%   <<"BatchSize">> => integer(),
%%   <<"BisectBatchOnFunctionError">> => boolean(),
%%   <<"DestinationConfig">> => destination_config(),
%%   <<"DocumentDBEventSourceConfig">> => document_db_event_source_config(),
%%   <<"EventSourceArn">> => string(),
%%   <<"EventSourceMappingArn">> => string(),
%%   <<"FilterCriteria">> => filter_criteria(),
%%   <<"FilterCriteriaError">> => filter_criteria_error(),
%%   <<"FunctionArn">> => string(),
%%   <<"FunctionResponseTypes">> => list(list(any())()),
%%   <<"KMSKeyArn">> => string(),
%%   <<"LastModified">> => non_neg_integer(),
%%   <<"LastProcessingResult">> => string(),
%%   <<"MaximumBatchingWindowInSeconds">> => integer(),
%%   <<"MaximumRecordAgeInSeconds">> => integer(),
%%   <<"MaximumRetryAttempts">> => integer(),
%%   <<"ParallelizationFactor">> => integer(),
%%   <<"Queues">> => list(string()()),
%%   <<"ScalingConfig">> => scaling_config(),
%%   <<"SelfManagedEventSource">> => self_managed_event_source(),
%%   <<"SelfManagedKafkaEventSourceConfig">> => self_managed_kafka_event_source_config(),
%%   <<"SourceAccessConfigurations">> => list(source_access_configuration()()),
%%   <<"StartingPosition">> => list(any()),
%%   <<"StartingPositionTimestamp">> => non_neg_integer(),
%%   <<"State">> => string(),
%%   <<"StateTransitionReason">> => string(),
%%   <<"Topics">> => list(string()()),
%%   <<"TumblingWindowInSeconds">> => integer(),
%%   <<"UUID">> => string()
%% }
-type event_source_mapping_configuration() :: #{binary() => any()}.


%% Example:
%% create_event_source_mapping_request() :: #{
%%   <<"AmazonManagedKafkaEventSourceConfig">> => amazon_managed_kafka_event_source_config(),
%%   <<"BatchSize">> => integer(),
%%   <<"BisectBatchOnFunctionError">> => boolean(),
%%   <<"DestinationConfig">> => destination_config(),
%%   <<"DocumentDBEventSourceConfig">> => document_db_event_source_config(),
%%   <<"Enabled">> => boolean(),
%%   <<"EventSourceArn">> => string(),
%%   <<"FilterCriteria">> => filter_criteria(),
%%   <<"FunctionName">> := string(),
%%   <<"FunctionResponseTypes">> => list(list(any())()),
%%   <<"KMSKeyArn">> => string(),
%%   <<"MaximumBatchingWindowInSeconds">> => integer(),
%%   <<"MaximumRecordAgeInSeconds">> => integer(),
%%   <<"MaximumRetryAttempts">> => integer(),
%%   <<"ParallelizationFactor">> => integer(),
%%   <<"Queues">> => list(string()()),
%%   <<"ScalingConfig">> => scaling_config(),
%%   <<"SelfManagedEventSource">> => self_managed_event_source(),
%%   <<"SelfManagedKafkaEventSourceConfig">> => self_managed_kafka_event_source_config(),
%%   <<"SourceAccessConfigurations">> => list(source_access_configuration()()),
%%   <<"StartingPosition">> => list(any()),
%%   <<"StartingPositionTimestamp">> => non_neg_integer(),
%%   <<"Tags">> => map(),
%%   <<"Topics">> => list(string()()),
%%   <<"TumblingWindowInSeconds">> => integer()
%% }
-type create_event_source_mapping_request() :: #{binary() => any()}.


%% Example:
%% create_function_url_config_request() :: #{
%%   <<"AuthType">> := list(any()),
%%   <<"Cors">> => cors(),
%%   <<"InvokeMode">> => list(any()),
%%   <<"Qualifier">> => string()
%% }
-type create_function_url_config_request() :: #{binary() => any()}.


%% Example:
%% layer() :: #{
%%   <<"Arn">> => string(),
%%   <<"CodeSize">> => float(),
%%   <<"SigningJobArn">> => string(),
%%   <<"SigningProfileVersionArn">> => string()
%% }
-type layer() :: #{binary() => any()}.


%% Example:
%% get_provisioned_concurrency_config_response() :: #{
%%   <<"AllocatedProvisionedConcurrentExecutions">> => integer(),
%%   <<"AvailableProvisionedConcurrentExecutions">> => integer(),
%%   <<"LastModified">> => string(),
%%   <<"RequestedProvisionedConcurrentExecutions">> => integer(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => string()
%% }
-type get_provisioned_concurrency_config_response() :: #{binary() => any()}.


%% Example:
%% vpc_config() :: #{
%%   <<"Ipv6AllowedForDualStack">> => boolean(),
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"SubnetIds">> => list(string()())
%% }
-type vpc_config() :: #{binary() => any()}.


%% Example:
%% service_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type service_exception() :: #{binary() => any()}.


%% Example:
%% publish_layer_version_request() :: #{
%%   <<"CompatibleArchitectures">> => list(list(any())()),
%%   <<"CompatibleRuntimes">> => list(list(any())()),
%%   <<"Content">> := layer_version_content_input(),
%%   <<"Description">> => string(),
%%   <<"LicenseInfo">> => string()
%% }
-type publish_layer_version_request() :: #{binary() => any()}.


%% Example:
%% subnet_ip_address_limit_reached_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type subnet_ip_address_limit_reached_exception() :: #{binary() => any()}.


%% Example:
%% remove_permission_request() :: #{
%%   <<"Qualifier">> => string(),
%%   <<"RevisionId">> => string()
%% }
-type remove_permission_request() :: #{binary() => any()}.


%% Example:
%% account_limit() :: #{
%%   <<"CodeSizeUnzipped">> => float(),
%%   <<"CodeSizeZipped">> => float(),
%%   <<"ConcurrentExecutions">> => integer(),
%%   <<"TotalCodeSize">> => float(),
%%   <<"UnreservedConcurrentExecutions">> => integer()
%% }
-type account_limit() :: #{binary() => any()}.


%% Example:
%% update_function_event_invoke_config_request() :: #{
%%   <<"DestinationConfig">> => destination_config(),
%%   <<"MaximumEventAgeInSeconds">> => integer(),
%%   <<"MaximumRetryAttempts">> => integer(),
%%   <<"Qualifier">> => string()
%% }
-type update_function_event_invoke_config_request() :: #{binary() => any()}.

%% Example:
%% delete_code_signing_config_response() :: #{}
-type delete_code_signing_config_response() :: #{}.


%% Example:
%% file_system_config() :: #{
%%   <<"Arn">> => string(),
%%   <<"LocalMountPath">> => string()
%% }
-type file_system_config() :: #{binary() => any()}.


%% Example:
%% tracing_config() :: #{
%%   <<"Mode">> => list(any())
%% }
-type tracing_config() :: #{binary() => any()}.


%% Example:
%% get_layer_version_by_arn_request() :: #{
%%   <<"Arn">> := string()
%% }
-type get_layer_version_by_arn_request() :: #{binary() => any()}.


%% Example:
%% code_verification_failed_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type code_verification_failed_exception() :: #{binary() => any()}.


%% Example:
%% ephemeral_storage() :: #{
%%   <<"Size">> => integer()
%% }
-type ephemeral_storage() :: #{binary() => any()}.


%% Example:
%% put_provisioned_concurrency_config_response() :: #{
%%   <<"AllocatedProvisionedConcurrentExecutions">> => integer(),
%%   <<"AvailableProvisionedConcurrentExecutions">> => integer(),
%%   <<"LastModified">> => string(),
%%   <<"RequestedProvisionedConcurrentExecutions">> => integer(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => string()
%% }
-type put_provisioned_concurrency_config_response() :: #{binary() => any()}.


%% Example:
%% filter() :: #{
%%   <<"Pattern">> => string()
%% }
-type filter() :: #{binary() => any()}.


%% Example:
%% layer_versions_list_item() :: #{
%%   <<"CompatibleArchitectures">> => list(list(any())()),
%%   <<"CompatibleRuntimes">> => list(list(any())()),
%%   <<"CreatedDate">> => string(),
%%   <<"Description">> => string(),
%%   <<"LayerVersionArn">> => string(),
%%   <<"LicenseInfo">> => string(),
%%   <<"Version">> => float()
%% }
-type layer_versions_list_item() :: #{binary() => any()}.


%% Example:
%% list_layer_versions_response() :: #{
%%   <<"LayerVersions">> => list(layer_versions_list_item()()),
%%   <<"NextMarker">> => string()
%% }
-type list_layer_versions_response() :: #{binary() => any()}.


%% Example:
%% invoke_async_response() :: #{
%%   <<"Status">> => integer()
%% }
-type invoke_async_response() :: #{binary() => any()}.


%% Example:
%% list_versions_by_function_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_versions_by_function_request() :: #{binary() => any()}.


%% Example:
%% request_too_large_exception() :: #{
%%   <<"Type">> => string(),
%%   <<"message">> => string()
%% }
-type request_too_large_exception() :: #{binary() => any()}.


%% Example:
%% scaling_config() :: #{
%%   <<"MaximumConcurrency">> => integer()
%% }
-type scaling_config() :: #{binary() => any()}.


%% Example:
%% get_policy_response() :: #{
%%   <<"Policy">> => string(),
%%   <<"RevisionId">> => string()
%% }
-type get_policy_response() :: #{binary() => any()}.


%% Example:
%% get_provisioned_concurrency_config_request() :: #{
%%   <<"Qualifier">> := string()
%% }
-type get_provisioned_concurrency_config_request() :: #{binary() => any()}.


%% Example:
%% list_functions_request() :: #{
%%   <<"FunctionVersion">> => list(any()),
%%   <<"Marker">> => string(),
%%   <<"MasterRegion">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_functions_request() :: #{binary() => any()}.


%% Example:
%% add_layer_version_permission_request() :: #{
%%   <<"Action">> := string(),
%%   <<"OrganizationId">> => string(),
%%   <<"Principal">> := string(),
%%   <<"RevisionId">> => string(),
%%   <<"StatementId">> := string()
%% }
-type add_layer_version_permission_request() :: #{binary() => any()}.


%% Example:
%% list_functions_by_code_signing_config_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_functions_by_code_signing_config_request() :: #{binary() => any()}.


%% Example:
%% list_event_source_mappings_request() :: #{
%%   <<"EventSourceArn">> => string(),
%%   <<"FunctionName">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_event_source_mappings_request() :: #{binary() => any()}.


%% Example:
%% kms_access_denied_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type kms_access_denied_exception() :: #{binary() => any()}.


%% Example:
%% update_code_signing_config_request() :: #{
%%   <<"AllowedPublishers">> => allowed_publishers(),
%%   <<"CodeSigningPolicies">> => code_signing_policies(),
%%   <<"Description">> => string()
%% }
-type update_code_signing_config_request() :: #{binary() => any()}.


%% Example:
%% put_function_code_signing_config_request() :: #{
%%   <<"CodeSigningConfigArn">> := string()
%% }
-type put_function_code_signing_config_request() :: #{binary() => any()}.


%% Example:
%% add_layer_version_permission_response() :: #{
%%   <<"RevisionId">> => string(),
%%   <<"Statement">> => string()
%% }
-type add_layer_version_permission_response() :: #{binary() => any()}.

%% Example:
%% get_event_source_mapping_request() :: #{}
-type get_event_source_mapping_request() :: #{}.


%% Example:
%% invocation_request() :: #{
%%   <<"ClientContext">> => string(),
%%   <<"InvocationType">> => list(any()),
%%   <<"LogType">> => list(any()),
%%   <<"Payload">> => binary(),
%%   <<"Qualifier">> => string()
%% }
-type invocation_request() :: #{binary() => any()}.


%% Example:
%% invalid_zip_file_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type invalid_zip_file_exception() :: #{binary() => any()}.


%% Example:
%% invoke_with_response_stream_complete_event() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorDetails">> => string(),
%%   <<"LogResult">> => string()
%% }
-type invoke_with_response_stream_complete_event() :: #{binary() => any()}.


%% Example:
%% kms_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type kms_not_found_exception() :: #{binary() => any()}.


%% Example:
%% invoke_with_response_stream_request() :: #{
%%   <<"ClientContext">> => string(),
%%   <<"InvocationType">> => list(any()),
%%   <<"LogType">> => list(any()),
%%   <<"Payload">> => binary(),
%%   <<"Qualifier">> => string()
%% }
-type invoke_with_response_stream_request() :: #{binary() => any()}.


%% Example:
%% get_function_url_config_request() :: #{
%%   <<"Qualifier">> => string()
%% }
-type get_function_url_config_request() :: #{binary() => any()}.


%% Example:
%% update_code_signing_config_response() :: #{
%%   <<"CodeSigningConfig">> => code_signing_config()
%% }
-type update_code_signing_config_response() :: #{binary() => any()}.


%% Example:
%% dead_letter_config() :: #{
%%   <<"TargetArn">> => string()
%% }
-type dead_letter_config() :: #{binary() => any()}.


%% Example:
%% e_f_s_mount_timeout_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type e_f_s_mount_timeout_exception() :: #{binary() => any()}.


%% Example:
%% delete_provisioned_concurrency_config_request() :: #{
%%   <<"Qualifier">> := string()
%% }
-type delete_provisioned_concurrency_config_request() :: #{binary() => any()}.


%% Example:
%% image_config_error() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"Message">> => string()
%% }
-type image_config_error() :: #{binary() => any()}.


%% Example:
%% list_layers_request() :: #{
%%   <<"CompatibleArchitecture">> => list(any()),
%%   <<"CompatibleRuntime">> => list(any()),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_layers_request() :: #{binary() => any()}.


%% Example:
%% provisioned_concurrency_config_not_found_exception() :: #{
%%   <<"Type">> => string(),
%%   <<"message">> => string()
%% }
-type provisioned_concurrency_config_not_found_exception() :: #{binary() => any()}.


%% Example:
%% get_code_signing_config_response() :: #{
%%   <<"CodeSigningConfig">> => code_signing_config()
%% }
-type get_code_signing_config_response() :: #{binary() => any()}.


%% Example:
%% runtime_version_error() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"Message">> => string()
%% }
-type runtime_version_error() :: #{binary() => any()}.

%% Example:
%% get_layer_version_request() :: #{}
-type get_layer_version_request() :: #{}.


%% Example:
%% function_configuration() :: #{
%%   <<"Environment">> => environment_response(),
%%   <<"MemorySize">> => integer(),
%%   <<"EphemeralStorage">> => ephemeral_storage(),
%%   <<"Version">> => string(),
%%   <<"CodeSize">> => float(),
%%   <<"Architectures">> => list(list(any())()),
%%   <<"FileSystemConfigs">> => list(file_system_config()()),
%%   <<"LastUpdateStatusReasonCode">> => list(any()),
%%   <<"KMSKeyArn">> => string(),
%%   <<"PackageType">> => list(any()),
%%   <<"LastModified">> => string(),
%%   <<"Layers">> => list(layer()()),
%%   <<"FunctionArn">> => string(),
%%   <<"State">> => list(any()),
%%   <<"VpcConfig">> => vpc_config_response(),
%%   <<"ImageConfigResponse">> => image_config_response(),
%%   <<"LastUpdateStatus">> => list(any()),
%%   <<"DeadLetterConfig">> => dead_letter_config(),
%%   <<"Timeout">> => integer(),
%%   <<"MasterArn">> => string(),
%%   <<"SnapStart">> => snap_start_response(),
%%   <<"CodeSha256">> => string(),
%%   <<"StateReason">> => string(),
%%   <<"RuntimeVersionConfig">> => runtime_version_config(),
%%   <<"Role">> => string(),
%%   <<"LoggingConfig">> => logging_config(),
%%   <<"StateReasonCode">> => list(any()),
%%   <<"RevisionId">> => string(),
%%   <<"FunctionName">> => string(),
%%   <<"LastUpdateStatusReason">> => string(),
%%   <<"SigningJobArn">> => string(),
%%   <<"Runtime">> => list(any()),
%%   <<"TracingConfig">> => tracing_config_response(),
%%   <<"Description">> => string(),
%%   <<"SigningProfileVersionArn">> => string(),
%%   <<"Handler">> => string()
%% }
-type function_configuration() :: #{binary() => any()}.


%% Example:
%% e_f_s_mount_connectivity_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type e_f_s_mount_connectivity_exception() :: #{binary() => any()}.


%% Example:
%% get_runtime_management_config_response() :: #{
%%   <<"FunctionArn">> => string(),
%%   <<"RuntimeVersionArn">> => string(),
%%   <<"UpdateRuntimeOn">> => list(any())
%% }
-type get_runtime_management_config_response() :: #{binary() => any()}.


%% Example:
%% put_runtime_management_config_response() :: #{
%%   <<"FunctionArn">> => string(),
%%   <<"RuntimeVersionArn">> => string(),
%%   <<"UpdateRuntimeOn">> => list(any())
%% }
-type put_runtime_management_config_response() :: #{binary() => any()}.


%% Example:
%% e_n_i_limit_reached_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type e_n_i_limit_reached_exception() :: #{binary() => any()}.


%% Example:
%% list_function_url_configs_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_function_url_configs_request() :: #{binary() => any()}.


%% Example:
%% list_layer_versions_request() :: #{
%%   <<"CompatibleArchitecture">> => list(any()),
%%   <<"CompatibleRuntime">> => list(any()),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_layer_versions_request() :: #{binary() => any()}.


%% Example:
%% delete_function_event_invoke_config_request() :: #{
%%   <<"Qualifier">> => string()
%% }
-type delete_function_event_invoke_config_request() :: #{binary() => any()}.


%% Example:
%% e_f_s_mount_failure_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type e_f_s_mount_failure_exception() :: #{binary() => any()}.


%% Example:
%% cors() :: #{
%%   <<"AllowCredentials">> => boolean(),
%%   <<"AllowHeaders">> => list(string()()),
%%   <<"AllowMethods">> => list(string()()),
%%   <<"AllowOrigins">> => list(string()()),
%%   <<"ExposeHeaders">> => list(string()()),
%%   <<"MaxAge">> => integer()
%% }
-type cors() :: #{binary() => any()}.


%% Example:
%% function_url_config() :: #{
%%   <<"AuthType">> => list(any()),
%%   <<"Cors">> => cors(),
%%   <<"CreationTime">> => string(),
%%   <<"FunctionArn">> => string(),
%%   <<"FunctionUrl">> => string(),
%%   <<"InvokeMode">> => list(any()),
%%   <<"LastModifiedTime">> => string()
%% }
-type function_url_config() :: #{binary() => any()}.


%% Example:
%% on_success() :: #{
%%   <<"Destination">> => string()
%% }
-type on_success() :: #{binary() => any()}.


%% Example:
%% self_managed_event_source() :: #{
%%   <<"Endpoints">> => map()
%% }
-type self_managed_event_source() :: #{binary() => any()}.


%% Example:
%% update_function_configuration_request() :: #{
%%   <<"DeadLetterConfig">> => dead_letter_config(),
%%   <<"Description">> => string(),
%%   <<"Environment">> => environment(),
%%   <<"EphemeralStorage">> => ephemeral_storage(),
%%   <<"FileSystemConfigs">> => list(file_system_config()()),
%%   <<"Handler">> => string(),
%%   <<"ImageConfig">> => image_config(),
%%   <<"KMSKeyArn">> => string(),
%%   <<"Layers">> => list(string()()),
%%   <<"LoggingConfig">> => logging_config(),
%%   <<"MemorySize">> => integer(),
%%   <<"RevisionId">> => string(),
%%   <<"Role">> => string(),
%%   <<"Runtime">> => list(any()),
%%   <<"SnapStart">> => snap_start(),
%%   <<"Timeout">> => integer(),
%%   <<"TracingConfig">> => tracing_config(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type update_function_configuration_request() :: #{binary() => any()}.


%% Example:
%% get_function_code_signing_config_response() :: #{
%%   <<"CodeSigningConfigArn">> => string(),
%%   <<"FunctionName">> => string()
%% }
-type get_function_code_signing_config_response() :: #{binary() => any()}.


%% Example:
%% invalid_code_signature_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type invalid_code_signature_exception() :: #{binary() => any()}.


%% Example:
%% list_function_url_configs_response() :: #{
%%   <<"FunctionUrlConfigs">> => list(function_url_config()()),
%%   <<"NextMarker">> => string()
%% }
-type list_function_url_configs_response() :: #{binary() => any()}.


%% Example:
%% allowed_publishers() :: #{
%%   <<"SigningProfileVersionArns">> => list(string()())
%% }
-type allowed_publishers() :: #{binary() => any()}.


%% Example:
%% list_versions_by_function_response() :: #{
%%   <<"NextMarker">> => string(),
%%   <<"Versions">> => list(function_configuration()())
%% }
-type list_versions_by_function_response() :: #{binary() => any()}.


%% Example:
%% vpc_config_response() :: #{
%%   <<"Ipv6AllowedForDualStack">> => boolean(),
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"SubnetIds">> => list(string()()),
%%   <<"VpcId">> => string()
%% }
-type vpc_config_response() :: #{binary() => any()}.


%% Example:
%% ec2_unexpected_exception() :: #{
%%   <<"EC2ErrorCode">> => string(),
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type ec2_unexpected_exception() :: #{binary() => any()}.


%% Example:
%% get_function_url_config_response() :: #{
%%   <<"AuthType">> => list(any()),
%%   <<"Cors">> => cors(),
%%   <<"CreationTime">> => string(),
%%   <<"FunctionArn">> => string(),
%%   <<"FunctionUrl">> => string(),
%%   <<"InvokeMode">> => list(any()),
%%   <<"LastModifiedTime">> => string()
%% }
-type get_function_url_config_response() :: #{binary() => any()}.


%% Example:
%% get_function_event_invoke_config_request() :: #{
%%   <<"Qualifier">> => string()
%% }
-type get_function_event_invoke_config_request() :: #{binary() => any()}.


%% Example:
%% create_function_request() :: #{
%%   <<"Architectures">> => list(list(any())()),
%%   <<"Code">> := function_code(),
%%   <<"CodeSigningConfigArn">> => string(),
%%   <<"DeadLetterConfig">> => dead_letter_config(),
%%   <<"Description">> => string(),
%%   <<"Environment">> => environment(),
%%   <<"EphemeralStorage">> => ephemeral_storage(),
%%   <<"FileSystemConfigs">> => list(file_system_config()()),
%%   <<"FunctionName">> := string(),
%%   <<"Handler">> => string(),
%%   <<"ImageConfig">> => image_config(),
%%   <<"KMSKeyArn">> => string(),
%%   <<"Layers">> => list(string()()),
%%   <<"LoggingConfig">> => logging_config(),
%%   <<"MemorySize">> => integer(),
%%   <<"PackageType">> => list(any()),
%%   <<"Publish">> => boolean(),
%%   <<"Role">> := string(),
%%   <<"Runtime">> => list(any()),
%%   <<"SnapStart">> => snap_start(),
%%   <<"Tags">> => map(),
%%   <<"Timeout">> => integer(),
%%   <<"TracingConfig">> => tracing_config(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type create_function_request() :: #{binary() => any()}.


%% Example:
%% environment_error() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"Message">> => string()
%% }
-type environment_error() :: #{binary() => any()}.


%% Example:
%% tags_error() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"Message">> => string()
%% }
-type tags_error() :: #{binary() => any()}.


%% Example:
%% ec2_throttled_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type ec2_throttled_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_request() :: #{}
-type list_tags_request() :: #{}.


%% Example:
%% e_f_s_i_o_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type e_f_s_i_o_exception() :: #{binary() => any()}.


%% Example:
%% kms_invalid_state_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type kms_invalid_state_exception() :: #{binary() => any()}.


%% Example:
%% layers_list_item() :: #{
%%   <<"LatestMatchingVersion">> => layer_versions_list_item(),
%%   <<"LayerArn">> => string(),
%%   <<"LayerName">> => string()
%% }
-type layers_list_item() :: #{binary() => any()}.


%% Example:
%% alias_routing_configuration() :: #{
%%   <<"AdditionalVersionWeights">> => map()
%% }
-type alias_routing_configuration() :: #{binary() => any()}.


%% Example:
%% image_config_response() :: #{
%%   <<"Error">> => image_config_error(),
%%   <<"ImageConfig">> => image_config()
%% }
-type image_config_response() :: #{binary() => any()}.


%% Example:
%% invalid_subnet_id_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type invalid_subnet_id_exception() :: #{binary() => any()}.


%% Example:
%% snap_start_response() :: #{
%%   <<"ApplyOn">> => list(any()),
%%   <<"OptimizationStatus">> => list(any())
%% }
-type snap_start_response() :: #{binary() => any()}.


%% Example:
%% code_storage_exceeded_exception() :: #{
%%   <<"Type">> => string(),
%%   <<"message">> => string()
%% }
-type code_storage_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% layer_version_content_input() :: #{
%%   <<"S3Bucket">> => string(),
%%   <<"S3Key">> => string(),
%%   <<"S3ObjectVersion">> => string(),
%%   <<"ZipFile">> => binary()
%% }
-type layer_version_content_input() :: #{binary() => any()}.


%% Example:
%% resource_not_ready_exception() :: #{
%%   <<"Type">> => string(),
%%   <<"message">> => string()
%% }
-type resource_not_ready_exception() :: #{binary() => any()}.


%% Example:
%% code_signing_policies() :: #{
%%   <<"UntrustedArtifactOnDeployment">> => list(any())
%% }
-type code_signing_policies() :: #{binary() => any()}.


%% Example:
%% precondition_failed_exception() :: #{
%%   <<"Type">> => string(),
%%   <<"message">> => string()
%% }
-type precondition_failed_exception() :: #{binary() => any()}.


%% Example:
%% list_function_event_invoke_configs_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_function_event_invoke_configs_request() :: #{binary() => any()}.


%% Example:
%% resource_conflict_exception() :: #{
%%   <<"Type">> => string(),
%%   <<"message">> => string()
%% }
-type resource_conflict_exception() :: #{binary() => any()}.


%% Example:
%% concurrency() :: #{
%%   <<"ReservedConcurrentExecutions">> => integer()
%% }
-type concurrency() :: #{binary() => any()}.

%% Example:
%% delete_alias_request() :: #{}
-type delete_alias_request() :: #{}.


%% Example:
%% list_provisioned_concurrency_configs_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_provisioned_concurrency_configs_request() :: #{binary() => any()}.


%% Example:
%% add_permission_request() :: #{
%%   <<"Action">> := string(),
%%   <<"EventSourceToken">> => string(),
%%   <<"FunctionUrlAuthType">> => list(any()),
%%   <<"Principal">> := string(),
%%   <<"PrincipalOrgID">> => string(),
%%   <<"Qualifier">> => string(),
%%   <<"RevisionId">> => string(),
%%   <<"SourceAccount">> => string(),
%%   <<"SourceArn">> => string(),
%%   <<"StatementId">> := string()
%% }
-type add_permission_request() :: #{binary() => any()}.


%% Example:
%% filter_criteria_error() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"Message">> => string()
%% }
-type filter_criteria_error() :: #{binary() => any()}.


%% Example:
%% tracing_config_response() :: #{
%%   <<"Mode">> => list(any())
%% }
-type tracing_config_response() :: #{binary() => any()}.


%% Example:
%% snap_start_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type snap_start_exception() :: #{binary() => any()}.


%% Example:
%% get_function_recursion_config_response() :: #{
%%   <<"RecursiveLoop">> => list(any())
%% }
-type get_function_recursion_config_response() :: #{binary() => any()}.


%% Example:
%% add_permission_response() :: #{
%%   <<"Statement">> => string()
%% }
-type add_permission_response() :: #{binary() => any()}.


%% Example:
%% code_signing_config() :: #{
%%   <<"AllowedPublishers">> => allowed_publishers(),
%%   <<"CodeSigningConfigArn">> => string(),
%%   <<"CodeSigningConfigId">> => string(),
%%   <<"CodeSigningPolicies">> => code_signing_policies(),
%%   <<"Description">> => string(),
%%   <<"LastModified">> => string()
%% }
-type code_signing_config() :: #{binary() => any()}.

-type add_layer_version_permission_errors() ::
    resource_conflict_exception() | 
    precondition_failed_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    policy_length_exceeded_exception().

-type add_permission_errors() ::
    resource_conflict_exception() | 
    precondition_failed_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    policy_length_exceeded_exception().

-type create_alias_errors() ::
    resource_conflict_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type create_code_signing_config_errors() ::
    service_exception() | 
    invalid_parameter_value_exception().

-type create_event_source_mapping_errors() ::
    resource_conflict_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type create_function_errors() ::
    resource_conflict_exception() | 
    code_storage_exceeded_exception() | 
    invalid_code_signature_exception() | 
    code_verification_failed_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    code_signing_config_not_found_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type create_function_url_config_errors() ::
    resource_conflict_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type delete_alias_errors() ::
    resource_conflict_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    too_many_requests_exception().

-type delete_code_signing_config_errors() ::
    resource_conflict_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception().

-type delete_event_source_mapping_errors() ::
    resource_conflict_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    resource_in_use_exception().

-type delete_function_errors() ::
    resource_conflict_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type delete_function_code_signing_config_errors() ::
    resource_conflict_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    code_signing_config_not_found_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type delete_function_concurrency_errors() ::
    resource_conflict_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type delete_function_event_invoke_config_errors() ::
    resource_conflict_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type delete_function_url_config_errors() ::
    resource_conflict_exception() | 
    service_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type delete_layer_version_errors() ::
    service_exception() | 
    too_many_requests_exception().

-type delete_provisioned_concurrency_config_errors() ::
    resource_conflict_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_account_settings_errors() ::
    service_exception() | 
    too_many_requests_exception().

-type get_alias_errors() ::
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_code_signing_config_errors() ::
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception().

-type get_event_source_mapping_errors() ::
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_function_errors() ::
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_function_code_signing_config_errors() ::
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_function_concurrency_errors() ::
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_function_configuration_errors() ::
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_function_event_invoke_config_errors() ::
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_function_recursion_config_errors() ::
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_function_url_config_errors() ::
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_layer_version_errors() ::
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_layer_version_by_arn_errors() ::
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_layer_version_policy_errors() ::
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_policy_errors() ::
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_provisioned_concurrency_config_errors() ::
    provisioned_concurrency_config_not_found_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_runtime_management_config_errors() ::
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type invoke_errors() ::
    snap_start_exception() | 
    resource_conflict_exception() | 
    resource_not_ready_exception() | 
    invalid_subnet_id_exception() | 
    kms_invalid_state_exception() | 
    e_f_s_i_o_exception() | 
    ec2_throttled_exception() | 
    ec2_unexpected_exception() | 
    e_f_s_mount_failure_exception() | 
    e_n_i_limit_reached_exception() | 
    e_f_s_mount_connectivity_exception() | 
    e_f_s_mount_timeout_exception() | 
    kms_not_found_exception() | 
    invalid_zip_file_exception() | 
    kms_access_denied_exception() | 
    request_too_large_exception() | 
    subnet_ip_address_limit_reached_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    invalid_request_content_exception() | 
    invalid_runtime_exception() | 
    recursive_invocation_exception() | 
    snap_start_timeout_exception() | 
    too_many_requests_exception() | 
    snap_start_not_ready_exception() | 
    ec2_access_denied_exception() | 
    invalid_security_group_id_exception() | 
    kms_disabled_exception() | 
    unsupported_media_type_exception().

-type invoke_async_errors() ::
    resource_conflict_exception() | 
    service_exception() | 
    resource_not_found_exception() | 
    invalid_request_content_exception() | 
    invalid_runtime_exception().

-type invoke_with_response_stream_errors() ::
    snap_start_exception() | 
    resource_conflict_exception() | 
    resource_not_ready_exception() | 
    invalid_subnet_id_exception() | 
    kms_invalid_state_exception() | 
    e_f_s_i_o_exception() | 
    ec2_throttled_exception() | 
    ec2_unexpected_exception() | 
    e_f_s_mount_failure_exception() | 
    e_n_i_limit_reached_exception() | 
    e_f_s_mount_connectivity_exception() | 
    e_f_s_mount_timeout_exception() | 
    kms_not_found_exception() | 
    invalid_zip_file_exception() | 
    kms_access_denied_exception() | 
    request_too_large_exception() | 
    subnet_ip_address_limit_reached_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    invalid_request_content_exception() | 
    invalid_runtime_exception() | 
    recursive_invocation_exception() | 
    snap_start_timeout_exception() | 
    too_many_requests_exception() | 
    snap_start_not_ready_exception() | 
    ec2_access_denied_exception() | 
    invalid_security_group_id_exception() | 
    kms_disabled_exception() | 
    unsupported_media_type_exception().

-type list_aliases_errors() ::
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type list_code_signing_configs_errors() ::
    service_exception() | 
    invalid_parameter_value_exception().

-type list_event_source_mappings_errors() ::
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type list_function_event_invoke_configs_errors() ::
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type list_function_url_configs_errors() ::
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type list_functions_errors() ::
    service_exception() | 
    invalid_parameter_value_exception() | 
    too_many_requests_exception().

-type list_functions_by_code_signing_config_errors() ::
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception().

-type list_layer_versions_errors() ::
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type list_layers_errors() ::
    service_exception() | 
    invalid_parameter_value_exception() | 
    too_many_requests_exception().

-type list_provisioned_concurrency_configs_errors() ::
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type list_tags_errors() ::
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type list_versions_by_function_errors() ::
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type publish_layer_version_errors() ::
    code_storage_exceeded_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type publish_version_errors() ::
    resource_conflict_exception() | 
    precondition_failed_exception() | 
    code_storage_exceeded_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type put_function_code_signing_config_errors() ::
    resource_conflict_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    code_signing_config_not_found_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type put_function_concurrency_errors() ::
    resource_conflict_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type put_function_event_invoke_config_errors() ::
    resource_conflict_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type put_function_recursion_config_errors() ::
    resource_conflict_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type put_provisioned_concurrency_config_errors() ::
    resource_conflict_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type put_runtime_management_config_errors() ::
    resource_conflict_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type remove_layer_version_permission_errors() ::
    precondition_failed_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type remove_permission_errors() ::
    precondition_failed_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type tag_resource_errors() ::
    resource_conflict_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type untag_resource_errors() ::
    resource_conflict_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type update_alias_errors() ::
    resource_conflict_exception() | 
    precondition_failed_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type update_code_signing_config_errors() ::
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception().

-type update_event_source_mapping_errors() ::
    resource_conflict_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    resource_in_use_exception().

-type update_function_code_errors() ::
    resource_conflict_exception() | 
    precondition_failed_exception() | 
    code_storage_exceeded_exception() | 
    invalid_code_signature_exception() | 
    code_verification_failed_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    code_signing_config_not_found_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type update_function_configuration_errors() ::
    resource_conflict_exception() | 
    precondition_failed_exception() | 
    invalid_code_signature_exception() | 
    code_verification_failed_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    code_signing_config_not_found_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type update_function_event_invoke_config_errors() ::
    resource_conflict_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type update_function_url_config_errors() ::
    resource_conflict_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds permissions to the resource-based policy of a version of an
%% Lambda
%% layer:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html.
%%
%% Use this action to grant layer
%% usage permission to other accounts. You can grant permission to a single
%% account, all accounts in an organization,
%% or all Amazon Web Services accounts.
%%
%% To revoke permission, call `RemoveLayerVersionPermission' with the
%% statement ID that you
%% specified when you added it.
-spec add_layer_version_permission(aws_client:aws_client(), binary() | list(), binary() | list(), add_layer_version_permission_request()) ->
    {ok, add_layer_version_permission_response(), tuple()} |
    {error, any()} |
    {error, add_layer_version_permission_errors(), tuple()}.
add_layer_version_permission(Client, LayerName, VersionNumber, Input) ->
    add_layer_version_permission(Client, LayerName, VersionNumber, Input, []).

-spec add_layer_version_permission(aws_client:aws_client(), binary() | list(), binary() | list(), add_layer_version_permission_request(), proplists:proplist()) ->
    {ok, add_layer_version_permission_response(), tuple()} |
    {error, any()} |
    {error, add_layer_version_permission_errors(), tuple()}.
add_layer_version_permission(Client, LayerName, VersionNumber, Input0, Options0) ->
    Method = post,
    Path = ["/2018-10-31/layers/", aws_util:encode_uri(LayerName), "/versions/", aws_util:encode_uri(VersionNumber), "/policy"],
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

    QueryMapping = [
                     {<<"RevisionId">>, <<"RevisionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Grants a principal:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#Principal_specifying
%% permission to use a function.
%%
%% You can apply the policy at the function level, or specify a qualifier to
%% restrict
%% access to a single version or alias. If you use a qualifier, the invoker
%% must use the full Amazon Resource Name
%% (ARN) of that version or alias to invoke the function. Note: Lambda does
%% not support adding policies
%% to version $LATEST.
%%
%% To grant permission to another account, specify the account ID as the
%% `Principal'. To grant
%% permission to an organization defined in Organizations, specify the
%% organization ID as the
%% `PrincipalOrgID'. For Amazon Web Services services, the principal is a
%% domain-style identifier that
%% the service defines, such as `s3.amazonaws.com' or
%% `sns.amazonaws.com'. For Amazon Web Services services, you can also
%% specify the ARN of the associated resource as the `SourceArn'. If
%% you grant permission to a service principal without specifying the source,
%% other accounts could potentially
%% configure resources in their account to invoke your Lambda function.
%%
%% This operation adds a statement to a resource-based permissions policy for
%% the function. For more information
%% about function policies, see Using resource-based policies for Lambda:
%% https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html.
-spec add_permission(aws_client:aws_client(), binary() | list(), add_permission_request()) ->
    {ok, add_permission_response(), tuple()} |
    {error, any()} |
    {error, add_permission_errors(), tuple()}.
add_permission(Client, FunctionName, Input) ->
    add_permission(Client, FunctionName, Input, []).

-spec add_permission(aws_client:aws_client(), binary() | list(), add_permission_request(), proplists:proplist()) ->
    {ok, add_permission_response(), tuple()} |
    {error, any()} |
    {error, add_permission_errors(), tuple()}.
add_permission(Client, FunctionName, Input0, Options0) ->
    Method = post,
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/policy"],
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

    QueryMapping = [
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an alias:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html
%% for a
%% Lambda function version.
%%
%% Use aliases to provide clients with a function identifier that you can
%% update to invoke a
%% different version.
%%
%% You can also map an alias to split invocation requests between two
%% versions. Use the
%% `RoutingConfig' parameter to specify a second version and the
%% percentage of invocation requests that
%% it receives.
-spec create_alias(aws_client:aws_client(), binary() | list(), create_alias_request()) ->
    {ok, alias_configuration(), tuple()} |
    {error, any()} |
    {error, create_alias_errors(), tuple()}.
create_alias(Client, FunctionName, Input) ->
    create_alias(Client, FunctionName, Input, []).

-spec create_alias(aws_client:aws_client(), binary() | list(), create_alias_request(), proplists:proplist()) ->
    {ok, alias_configuration(), tuple()} |
    {error, any()} |
    {error, create_alias_errors(), tuple()}.
create_alias(Client, FunctionName, Input0, Options0) ->
    Method = post,
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/aliases"],
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

%% @doc Creates a code signing configuration.
%%
%% A code signing configuration:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html
%% defines a list of
%% allowed signing profiles and defines the code-signing validation policy
%% (action to be taken if deployment
%% validation checks fail).
-spec create_code_signing_config(aws_client:aws_client(), create_code_signing_config_request()) ->
    {ok, create_code_signing_config_response(), tuple()} |
    {error, any()} |
    {error, create_code_signing_config_errors(), tuple()}.
create_code_signing_config(Client, Input) ->
    create_code_signing_config(Client, Input, []).

-spec create_code_signing_config(aws_client:aws_client(), create_code_signing_config_request(), proplists:proplist()) ->
    {ok, create_code_signing_config_response(), tuple()} |
    {error, any()} |
    {error, create_code_signing_config_errors(), tuple()}.
create_code_signing_config(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-04-22/code-signing-configs"],
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

%% @doc Creates a mapping between an event source and an Lambda function.
%%
%% Lambda reads items from the event source and invokes the function.
%%
%% For details about how to configure different event sources, see the
%% following topics.
%%
%% Amazon DynamoDB Streams:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-dynamodb-eventsourcemapping
%%
%% Amazon Kinesis:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-eventsourcemapping
%%
%% Amazon SQS:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-eventsource
%%
%% Amazon MQ and RabbitMQ:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-eventsourcemapping
%%
%% Amazon MSK: https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html
%%
%% Apache Kafka: https://docs.aws.amazon.com/lambda/latest/dg/kafka-smaa.html
%%
%% Amazon DocumentDB:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html
%%
%% The following error handling options are available only for stream sources
%% (DynamoDB and Kinesis):
%%
%% `BisectBatchOnFunctionError' – If the function returns an error, split
%% the batch in two and retry.
%%
%% `DestinationConfig' – Send discarded records to an Amazon SQS queue or
%% Amazon SNS topic.
%%
%% `MaximumRecordAgeInSeconds' – Discard records older than the specified
%% age. The default value is infinite (-1). When set to infinite (-1), failed
%% records are retried until the record expires
%%
%% `MaximumRetryAttempts' – Discard records after the specified number of
%% retries. The default value is infinite (-1). When set to infinite (-1),
%% failed records are retried until the record expires.
%%
%% `ParallelizationFactor' – Process multiple batches from each shard
%% concurrently.
%%
%% For information about which configuration parameters apply to each event
%% source, see the following topics.
%%
%% Amazon DynamoDB Streams:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-ddb-params
%%
%% Amazon Kinesis:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-params
%%
%% Amazon SQS:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#services-sqs-params
%%
%% Amazon MQ and RabbitMQ:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-params
%%
%% Amazon MSK:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#services-msk-parms
%%
%% Apache Kafka:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-kafka.html#services-kafka-parms
%%
%% Amazon DocumentDB:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html#docdb-configuration
-spec create_event_source_mapping(aws_client:aws_client(), create_event_source_mapping_request()) ->
    {ok, event_source_mapping_configuration(), tuple()} |
    {error, any()} |
    {error, create_event_source_mapping_errors(), tuple()}.
create_event_source_mapping(Client, Input) ->
    create_event_source_mapping(Client, Input, []).

-spec create_event_source_mapping(aws_client:aws_client(), create_event_source_mapping_request(), proplists:proplist()) ->
    {ok, event_source_mapping_configuration(), tuple()} |
    {error, any()} |
    {error, create_event_source_mapping_errors(), tuple()}.
create_event_source_mapping(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2015-03-31/event-source-mappings"],
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

%% @doc Creates a Lambda function.
%%
%% To create a function, you need a deployment package:
%% https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html
%% and an execution role:
%% https://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role.
%% The
%% deployment package is a .zip file archive or container image that contains
%% your function code. The execution role
%% grants the function permission to use Amazon Web Services services, such
%% as Amazon CloudWatch Logs for log
%% streaming and X-Ray for request tracing.
%%
%% If the deployment package is a container
%% image: https://docs.aws.amazon.com/lambda/latest/dg/lambda-images.html,
%% then you set the package type to `Image'. For a container image, the
%% code property
%% must include the URI of a container image in the Amazon ECR registry. You
%% do not need to specify the
%% handler and runtime properties.
%%
%% If the deployment package is a .zip file archive:
%% https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html#gettingstarted-package-zip,
%% then
%% you set the package type to `Zip'. For a .zip file archive, the code
%% property specifies the location of
%% the .zip file. You must also specify the handler and runtime properties.
%% The code in the deployment package must
%% be compatible with the target instruction set architecture of the function
%% (`x86-64' or
%% `arm64'). If you do not specify the architecture, then the default
%% value is
%% `x86-64'.
%%
%% When you create a function, Lambda provisions an instance of the function
%% and its supporting
%% resources. If your function connects to a VPC, this process can take a
%% minute or so. During this time, you can't
%% invoke or modify the function. The `State', `StateReason', and
%% `StateReasonCode'
%% fields in the response from `GetFunctionConfiguration' indicate when
%% the function is ready to
%% invoke. For more information, see Lambda function states:
%% https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html.
%%
%% A function has an unpublished version, and can have published versions and
%% aliases. The unpublished version
%% changes when you update your function's code and configuration. A
%% published version is a snapshot of your function
%% code and configuration that can't be changed. An alias is a named
%% resource that maps to a version, and can be
%% changed to map to a different version. Use the `Publish' parameter to
%% create version `1' of
%% your function from its initial configuration.
%%
%% The other parameters let you configure version-specific and function-level
%% settings. You can modify
%% version-specific settings later with `UpdateFunctionConfiguration'.
%% Function-level settings apply
%% to both the unpublished and published versions of the function, and
%% include tags (`TagResource')
%% and per-function concurrency limits (`PutFunctionConcurrency').
%%
%% You can use code signing if your deployment package is a .zip file
%% archive. To enable code signing for this
%% function, specify the ARN of a code-signing configuration. When a user
%% attempts to deploy a code package with
%% `UpdateFunctionCode', Lambda checks that the code package has a valid
%% signature from
%% a trusted publisher. The code-signing configuration includes set of
%% signing profiles, which define the trusted
%% publishers for this function.
%%
%% If another Amazon Web Services account or an Amazon Web Services service
%% invokes your function, use `AddPermission' to grant permission by
%% creating a resource-based Identity and Access Management (IAM) policy. You
%% can grant permissions at the function level, on a version, or on an alias.
%%
%% To invoke your function directly, use `Invoke'. To invoke your
%% function in response to events
%% in other Amazon Web Services services, create an event source mapping
%% (`CreateEventSourceMapping'),
%% or configure a function trigger in the other service. For more
%% information, see Invoking Lambda
%% functions:
%% https://docs.aws.amazon.com/lambda/latest/dg/lambda-invocation.html.
-spec create_function(aws_client:aws_client(), create_function_request()) ->
    {ok, function_configuration(), tuple()} |
    {error, any()} |
    {error, create_function_errors(), tuple()}.
create_function(Client, Input) ->
    create_function(Client, Input, []).

-spec create_function(aws_client:aws_client(), create_function_request(), proplists:proplist()) ->
    {ok, function_configuration(), tuple()} |
    {error, any()} |
    {error, create_function_errors(), tuple()}.
create_function(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2015-03-31/functions"],
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

%% @doc Creates a Lambda function URL with the specified configuration
%% parameters.
%%
%% A function URL is
%% a dedicated HTTP(S) endpoint that you can use to invoke your function.
-spec create_function_url_config(aws_client:aws_client(), binary() | list(), create_function_url_config_request()) ->
    {ok, create_function_url_config_response(), tuple()} |
    {error, any()} |
    {error, create_function_url_config_errors(), tuple()}.
create_function_url_config(Client, FunctionName, Input) ->
    create_function_url_config(Client, FunctionName, Input, []).

-spec create_function_url_config(aws_client:aws_client(), binary() | list(), create_function_url_config_request(), proplists:proplist()) ->
    {ok, create_function_url_config_response(), tuple()} |
    {error, any()} |
    {error, create_function_url_config_errors(), tuple()}.
create_function_url_config(Client, FunctionName, Input0, Options0) ->
    Method = post,
    Path = ["/2021-10-31/functions/", aws_util:encode_uri(FunctionName), "/url"],
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

    QueryMapping = [
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a Lambda function alias:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html.
-spec delete_alias(aws_client:aws_client(), binary() | list(), binary() | list(), delete_alias_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_alias_errors(), tuple()}.
delete_alias(Client, FunctionName, Name, Input) ->
    delete_alias(Client, FunctionName, Name, Input, []).

-spec delete_alias(aws_client:aws_client(), binary() | list(), binary() | list(), delete_alias_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_alias_errors(), tuple()}.
delete_alias(Client, FunctionName, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/aliases/", aws_util:encode_uri(Name), ""],
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

%% @doc Deletes the code signing configuration.
%%
%% You can delete the code signing configuration only if no function is
%% using it.
-spec delete_code_signing_config(aws_client:aws_client(), binary() | list(), delete_code_signing_config_request()) ->
    {ok, delete_code_signing_config_response(), tuple()} |
    {error, any()} |
    {error, delete_code_signing_config_errors(), tuple()}.
delete_code_signing_config(Client, CodeSigningConfigArn, Input) ->
    delete_code_signing_config(Client, CodeSigningConfigArn, Input, []).

-spec delete_code_signing_config(aws_client:aws_client(), binary() | list(), delete_code_signing_config_request(), proplists:proplist()) ->
    {ok, delete_code_signing_config_response(), tuple()} |
    {error, any()} |
    {error, delete_code_signing_config_errors(), tuple()}.
delete_code_signing_config(Client, CodeSigningConfigArn, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-04-22/code-signing-configs/", aws_util:encode_uri(CodeSigningConfigArn), ""],
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

%% @doc Deletes an event source
%% mapping:
%% https://docs.aws.amazon.com/lambda/latest/dg/intro-invocation-modes.html.
%%
%% You can get the identifier of a mapping from the output of
%% `ListEventSourceMappings'.
%%
%% When you delete an event source mapping, it enters a `Deleting' state
%% and might not be completely
%% deleted for several seconds.
-spec delete_event_source_mapping(aws_client:aws_client(), binary() | list(), delete_event_source_mapping_request()) ->
    {ok, event_source_mapping_configuration(), tuple()} |
    {error, any()} |
    {error, delete_event_source_mapping_errors(), tuple()}.
delete_event_source_mapping(Client, UUID, Input) ->
    delete_event_source_mapping(Client, UUID, Input, []).

-spec delete_event_source_mapping(aws_client:aws_client(), binary() | list(), delete_event_source_mapping_request(), proplists:proplist()) ->
    {ok, event_source_mapping_configuration(), tuple()} |
    {error, any()} |
    {error, delete_event_source_mapping_errors(), tuple()}.
delete_event_source_mapping(Client, UUID, Input0, Options0) ->
    Method = delete,
    Path = ["/2015-03-31/event-source-mappings/", aws_util:encode_uri(UUID), ""],
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

%% @doc Deletes a Lambda function.
%%
%% To delete a specific function version, use the `Qualifier' parameter.
%% Otherwise, all versions and aliases are deleted. This doesn't require
%% the user to have explicit
%% permissions for `DeleteAlias'.
%%
%% To delete Lambda event source mappings that invoke a function, use
%% `DeleteEventSourceMapping'. For Amazon Web Services services and
%% resources that invoke your function
%% directly, delete the trigger in the service where you originally
%% configured it.
-spec delete_function(aws_client:aws_client(), binary() | list(), delete_function_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_function_errors(), tuple()}.
delete_function(Client, FunctionName, Input) ->
    delete_function(Client, FunctionName, Input, []).

-spec delete_function(aws_client:aws_client(), binary() | list(), delete_function_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_function_errors(), tuple()}.
delete_function(Client, FunctionName, Input0, Options0) ->
    Method = delete,
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), ""],
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
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the code signing configuration from the function.
-spec delete_function_code_signing_config(aws_client:aws_client(), binary() | list(), delete_function_code_signing_config_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_function_code_signing_config_errors(), tuple()}.
delete_function_code_signing_config(Client, FunctionName, Input) ->
    delete_function_code_signing_config(Client, FunctionName, Input, []).

-spec delete_function_code_signing_config(aws_client:aws_client(), binary() | list(), delete_function_code_signing_config_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_function_code_signing_config_errors(), tuple()}.
delete_function_code_signing_config(Client, FunctionName, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-06-30/functions/", aws_util:encode_uri(FunctionName), "/code-signing-config"],
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

%% @doc Removes a concurrent execution limit from a function.
-spec delete_function_concurrency(aws_client:aws_client(), binary() | list(), delete_function_concurrency_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_function_concurrency_errors(), tuple()}.
delete_function_concurrency(Client, FunctionName, Input) ->
    delete_function_concurrency(Client, FunctionName, Input, []).

-spec delete_function_concurrency(aws_client:aws_client(), binary() | list(), delete_function_concurrency_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_function_concurrency_errors(), tuple()}.
delete_function_concurrency(Client, FunctionName, Input0, Options0) ->
    Method = delete,
    Path = ["/2017-10-31/functions/", aws_util:encode_uri(FunctionName), "/concurrency"],
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

%% @doc Deletes the configuration for asynchronous invocation for a function,
%% version, or alias.
%%
%% To configure options for asynchronous invocation, use
%% `PutFunctionEventInvokeConfig'.
-spec delete_function_event_invoke_config(aws_client:aws_client(), binary() | list(), delete_function_event_invoke_config_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_function_event_invoke_config_errors(), tuple()}.
delete_function_event_invoke_config(Client, FunctionName, Input) ->
    delete_function_event_invoke_config(Client, FunctionName, Input, []).

-spec delete_function_event_invoke_config(aws_client:aws_client(), binary() | list(), delete_function_event_invoke_config_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_function_event_invoke_config_errors(), tuple()}.
delete_function_event_invoke_config(Client, FunctionName, Input0, Options0) ->
    Method = delete,
    Path = ["/2019-09-25/functions/", aws_util:encode_uri(FunctionName), "/event-invoke-config"],
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
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a Lambda function URL.
%%
%% When you delete a function URL, you
%% can't recover it. Creating a new function URL results in a different
%% URL address.
-spec delete_function_url_config(aws_client:aws_client(), binary() | list(), delete_function_url_config_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_function_url_config_errors(), tuple()}.
delete_function_url_config(Client, FunctionName, Input) ->
    delete_function_url_config(Client, FunctionName, Input, []).

-spec delete_function_url_config(aws_client:aws_client(), binary() | list(), delete_function_url_config_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_function_url_config_errors(), tuple()}.
delete_function_url_config(Client, FunctionName, Input0, Options0) ->
    Method = delete,
    Path = ["/2021-10-31/functions/", aws_util:encode_uri(FunctionName), "/url"],
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
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a version of an Lambda
%% layer:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html.
%%
%% Deleted versions can no longer be viewed or added to functions. To avoid
%% breaking functions, a copy of the version remains in Lambda until no
%% functions refer to it.
-spec delete_layer_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_layer_version_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_layer_version_errors(), tuple()}.
delete_layer_version(Client, LayerName, VersionNumber, Input) ->
    delete_layer_version(Client, LayerName, VersionNumber, Input, []).

-spec delete_layer_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_layer_version_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_layer_version_errors(), tuple()}.
delete_layer_version(Client, LayerName, VersionNumber, Input0, Options0) ->
    Method = delete,
    Path = ["/2018-10-31/layers/", aws_util:encode_uri(LayerName), "/versions/", aws_util:encode_uri(VersionNumber), ""],
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

%% @doc Deletes the provisioned concurrency configuration for a function.
-spec delete_provisioned_concurrency_config(aws_client:aws_client(), binary() | list(), delete_provisioned_concurrency_config_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_provisioned_concurrency_config_errors(), tuple()}.
delete_provisioned_concurrency_config(Client, FunctionName, Input) ->
    delete_provisioned_concurrency_config(Client, FunctionName, Input, []).

-spec delete_provisioned_concurrency_config(aws_client:aws_client(), binary() | list(), delete_provisioned_concurrency_config_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_provisioned_concurrency_config_errors(), tuple()}.
delete_provisioned_concurrency_config(Client, FunctionName, Input0, Options0) ->
    Method = delete,
    Path = ["/2019-09-30/functions/", aws_util:encode_uri(FunctionName), "/provisioned-concurrency"],
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
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves details about your account's limits:
%% https://docs.aws.amazon.com/lambda/latest/dg/limits.html and usage in an
%% Amazon Web Services Region.
-spec get_account_settings(aws_client:aws_client()) ->
    {ok, get_account_settings_response(), tuple()} |
    {error, any()} |
    {error, get_account_settings_errors(), tuple()}.
get_account_settings(Client)
  when is_map(Client) ->
    get_account_settings(Client, #{}, #{}).

-spec get_account_settings(aws_client:aws_client(), map(), map()) ->
    {ok, get_account_settings_response(), tuple()} |
    {error, any()} |
    {error, get_account_settings_errors(), tuple()}.
get_account_settings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_account_settings(Client, QueryMap, HeadersMap, []).

-spec get_account_settings(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_account_settings_response(), tuple()} |
    {error, any()} |
    {error, get_account_settings_errors(), tuple()}.
get_account_settings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2016-08-19/account-settings"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns details about a Lambda function alias:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html.
-spec get_alias(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, alias_configuration(), tuple()} |
    {error, any()} |
    {error, get_alias_errors(), tuple()}.
get_alias(Client, FunctionName, Name)
  when is_map(Client) ->
    get_alias(Client, FunctionName, Name, #{}, #{}).

-spec get_alias(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, alias_configuration(), tuple()} |
    {error, any()} |
    {error, get_alias_errors(), tuple()}.
get_alias(Client, FunctionName, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_alias(Client, FunctionName, Name, QueryMap, HeadersMap, []).

-spec get_alias(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, alias_configuration(), tuple()} |
    {error, any()} |
    {error, get_alias_errors(), tuple()}.
get_alias(Client, FunctionName, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/aliases/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the specified code signing configuration.
-spec get_code_signing_config(aws_client:aws_client(), binary() | list()) ->
    {ok, get_code_signing_config_response(), tuple()} |
    {error, any()} |
    {error, get_code_signing_config_errors(), tuple()}.
get_code_signing_config(Client, CodeSigningConfigArn)
  when is_map(Client) ->
    get_code_signing_config(Client, CodeSigningConfigArn, #{}, #{}).

-spec get_code_signing_config(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_code_signing_config_response(), tuple()} |
    {error, any()} |
    {error, get_code_signing_config_errors(), tuple()}.
get_code_signing_config(Client, CodeSigningConfigArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_code_signing_config(Client, CodeSigningConfigArn, QueryMap, HeadersMap, []).

-spec get_code_signing_config(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_code_signing_config_response(), tuple()} |
    {error, any()} |
    {error, get_code_signing_config_errors(), tuple()}.
get_code_signing_config(Client, CodeSigningConfigArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-04-22/code-signing-configs/", aws_util:encode_uri(CodeSigningConfigArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns details about an event source mapping.
%%
%% You can get the identifier of a mapping from the output of
%% `ListEventSourceMappings'.
-spec get_event_source_mapping(aws_client:aws_client(), binary() | list()) ->
    {ok, event_source_mapping_configuration(), tuple()} |
    {error, any()} |
    {error, get_event_source_mapping_errors(), tuple()}.
get_event_source_mapping(Client, UUID)
  when is_map(Client) ->
    get_event_source_mapping(Client, UUID, #{}, #{}).

-spec get_event_source_mapping(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, event_source_mapping_configuration(), tuple()} |
    {error, any()} |
    {error, get_event_source_mapping_errors(), tuple()}.
get_event_source_mapping(Client, UUID, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_event_source_mapping(Client, UUID, QueryMap, HeadersMap, []).

-spec get_event_source_mapping(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, event_source_mapping_configuration(), tuple()} |
    {error, any()} |
    {error, get_event_source_mapping_errors(), tuple()}.
get_event_source_mapping(Client, UUID, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-03-31/event-source-mappings/", aws_util:encode_uri(UUID), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the function or function version, with a
%% link to download the deployment package
%% that's valid for 10 minutes.
%%
%% If you specify a function version, only details that are specific to that
%% version are
%% returned.
-spec get_function(aws_client:aws_client(), binary() | list()) ->
    {ok, get_function_response(), tuple()} |
    {error, any()} |
    {error, get_function_errors(), tuple()}.
get_function(Client, FunctionName)
  when is_map(Client) ->
    get_function(Client, FunctionName, #{}, #{}).

-spec get_function(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_function_response(), tuple()} |
    {error, any()} |
    {error, get_function_errors(), tuple()}.
get_function(Client, FunctionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_function(Client, FunctionName, QueryMap, HeadersMap, []).

-spec get_function(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_function_response(), tuple()} |
    {error, any()} |
    {error, get_function_errors(), tuple()}.
get_function(Client, FunctionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Qualifier">>, maps:get(<<"Qualifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the code signing configuration for the specified function.
-spec get_function_code_signing_config(aws_client:aws_client(), binary() | list()) ->
    {ok, get_function_code_signing_config_response(), tuple()} |
    {error, any()} |
    {error, get_function_code_signing_config_errors(), tuple()}.
get_function_code_signing_config(Client, FunctionName)
  when is_map(Client) ->
    get_function_code_signing_config(Client, FunctionName, #{}, #{}).

-spec get_function_code_signing_config(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_function_code_signing_config_response(), tuple()} |
    {error, any()} |
    {error, get_function_code_signing_config_errors(), tuple()}.
get_function_code_signing_config(Client, FunctionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_function_code_signing_config(Client, FunctionName, QueryMap, HeadersMap, []).

-spec get_function_code_signing_config(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_function_code_signing_config_response(), tuple()} |
    {error, any()} |
    {error, get_function_code_signing_config_errors(), tuple()}.
get_function_code_signing_config(Client, FunctionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-06-30/functions/", aws_util:encode_uri(FunctionName), "/code-signing-config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns details about the reserved concurrency configuration for a
%% function.
%%
%% To set a concurrency limit for a
%% function, use `PutFunctionConcurrency'.
-spec get_function_concurrency(aws_client:aws_client(), binary() | list()) ->
    {ok, get_function_concurrency_response(), tuple()} |
    {error, any()} |
    {error, get_function_concurrency_errors(), tuple()}.
get_function_concurrency(Client, FunctionName)
  when is_map(Client) ->
    get_function_concurrency(Client, FunctionName, #{}, #{}).

-spec get_function_concurrency(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_function_concurrency_response(), tuple()} |
    {error, any()} |
    {error, get_function_concurrency_errors(), tuple()}.
get_function_concurrency(Client, FunctionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_function_concurrency(Client, FunctionName, QueryMap, HeadersMap, []).

-spec get_function_concurrency(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_function_concurrency_response(), tuple()} |
    {error, any()} |
    {error, get_function_concurrency_errors(), tuple()}.
get_function_concurrency(Client, FunctionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2019-09-30/functions/", aws_util:encode_uri(FunctionName), "/concurrency"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the version-specific settings of a Lambda function or
%% version.
%%
%% The output includes only options that
%% can vary between versions of a function. To modify these settings, use
%% `UpdateFunctionConfiguration'.
%%
%% To get all of a function's details, including function-level settings,
%% use `GetFunction'.
-spec get_function_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, function_configuration(), tuple()} |
    {error, any()} |
    {error, get_function_configuration_errors(), tuple()}.
get_function_configuration(Client, FunctionName)
  when is_map(Client) ->
    get_function_configuration(Client, FunctionName, #{}, #{}).

-spec get_function_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, function_configuration(), tuple()} |
    {error, any()} |
    {error, get_function_configuration_errors(), tuple()}.
get_function_configuration(Client, FunctionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_function_configuration(Client, FunctionName, QueryMap, HeadersMap, []).

-spec get_function_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, function_configuration(), tuple()} |
    {error, any()} |
    {error, get_function_configuration_errors(), tuple()}.
get_function_configuration(Client, FunctionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Qualifier">>, maps:get(<<"Qualifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the configuration for asynchronous invocation for a
%% function, version, or alias.
%%
%% To configure options for asynchronous invocation, use
%% `PutFunctionEventInvokeConfig'.
-spec get_function_event_invoke_config(aws_client:aws_client(), binary() | list()) ->
    {ok, function_event_invoke_config(), tuple()} |
    {error, any()} |
    {error, get_function_event_invoke_config_errors(), tuple()}.
get_function_event_invoke_config(Client, FunctionName)
  when is_map(Client) ->
    get_function_event_invoke_config(Client, FunctionName, #{}, #{}).

-spec get_function_event_invoke_config(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, function_event_invoke_config(), tuple()} |
    {error, any()} |
    {error, get_function_event_invoke_config_errors(), tuple()}.
get_function_event_invoke_config(Client, FunctionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_function_event_invoke_config(Client, FunctionName, QueryMap, HeadersMap, []).

-spec get_function_event_invoke_config(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, function_event_invoke_config(), tuple()} |
    {error, any()} |
    {error, get_function_event_invoke_config_errors(), tuple()}.
get_function_event_invoke_config(Client, FunctionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2019-09-25/functions/", aws_util:encode_uri(FunctionName), "/event-invoke-config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Qualifier">>, maps:get(<<"Qualifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns your function's recursive loop detection:
%% https://docs.aws.amazon.com/lambda/latest/dg/invocation-recursion.html
%% configuration.
-spec get_function_recursion_config(aws_client:aws_client(), binary() | list()) ->
    {ok, get_function_recursion_config_response(), tuple()} |
    {error, any()} |
    {error, get_function_recursion_config_errors(), tuple()}.
get_function_recursion_config(Client, FunctionName)
  when is_map(Client) ->
    get_function_recursion_config(Client, FunctionName, #{}, #{}).

-spec get_function_recursion_config(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_function_recursion_config_response(), tuple()} |
    {error, any()} |
    {error, get_function_recursion_config_errors(), tuple()}.
get_function_recursion_config(Client, FunctionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_function_recursion_config(Client, FunctionName, QueryMap, HeadersMap, []).

-spec get_function_recursion_config(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_function_recursion_config_response(), tuple()} |
    {error, any()} |
    {error, get_function_recursion_config_errors(), tuple()}.
get_function_recursion_config(Client, FunctionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2024-08-31/functions/", aws_util:encode_uri(FunctionName), "/recursion-config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns details about a Lambda function URL.
-spec get_function_url_config(aws_client:aws_client(), binary() | list()) ->
    {ok, get_function_url_config_response(), tuple()} |
    {error, any()} |
    {error, get_function_url_config_errors(), tuple()}.
get_function_url_config(Client, FunctionName)
  when is_map(Client) ->
    get_function_url_config(Client, FunctionName, #{}, #{}).

-spec get_function_url_config(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_function_url_config_response(), tuple()} |
    {error, any()} |
    {error, get_function_url_config_errors(), tuple()}.
get_function_url_config(Client, FunctionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_function_url_config(Client, FunctionName, QueryMap, HeadersMap, []).

-spec get_function_url_config(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_function_url_config_response(), tuple()} |
    {error, any()} |
    {error, get_function_url_config_errors(), tuple()}.
get_function_url_config(Client, FunctionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-10-31/functions/", aws_util:encode_uri(FunctionName), "/url"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Qualifier">>, maps:get(<<"Qualifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a version of an Lambda
%% layer:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html,
%% with a link to download the layer archive
%% that's valid for 10 minutes.
-spec get_layer_version(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_layer_version_response(), tuple()} |
    {error, any()} |
    {error, get_layer_version_errors(), tuple()}.
get_layer_version(Client, LayerName, VersionNumber)
  when is_map(Client) ->
    get_layer_version(Client, LayerName, VersionNumber, #{}, #{}).

-spec get_layer_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_layer_version_response(), tuple()} |
    {error, any()} |
    {error, get_layer_version_errors(), tuple()}.
get_layer_version(Client, LayerName, VersionNumber, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_layer_version(Client, LayerName, VersionNumber, QueryMap, HeadersMap, []).

-spec get_layer_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_layer_version_response(), tuple()} |
    {error, any()} |
    {error, get_layer_version_errors(), tuple()}.
get_layer_version(Client, LayerName, VersionNumber, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2018-10-31/layers/", aws_util:encode_uri(LayerName), "/versions/", aws_util:encode_uri(VersionNumber), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a version of an Lambda
%% layer:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html,
%% with a link to download the layer archive
%% that's valid for 10 minutes.
-spec get_layer_version_by_arn(aws_client:aws_client(), binary() | list()) ->
    {ok, get_layer_version_response(), tuple()} |
    {error, any()} |
    {error, get_layer_version_by_arn_errors(), tuple()}.
get_layer_version_by_arn(Client, Arn)
  when is_map(Client) ->
    get_layer_version_by_arn(Client, Arn, #{}, #{}).

-spec get_layer_version_by_arn(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_layer_version_response(), tuple()} |
    {error, any()} |
    {error, get_layer_version_by_arn_errors(), tuple()}.
get_layer_version_by_arn(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_layer_version_by_arn(Client, Arn, QueryMap, HeadersMap, []).

-spec get_layer_version_by_arn(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_layer_version_response(), tuple()} |
    {error, any()} |
    {error, get_layer_version_by_arn_errors(), tuple()}.
get_layer_version_by_arn(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2018-10-31/layers?find=LayerVersion"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Arn">>, Arn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the permission policy for a version of an Lambda
%% layer:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html.
%%
%% For more information, see `AddLayerVersionPermission'.
-spec get_layer_version_policy(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_layer_version_policy_response(), tuple()} |
    {error, any()} |
    {error, get_layer_version_policy_errors(), tuple()}.
get_layer_version_policy(Client, LayerName, VersionNumber)
  when is_map(Client) ->
    get_layer_version_policy(Client, LayerName, VersionNumber, #{}, #{}).

-spec get_layer_version_policy(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_layer_version_policy_response(), tuple()} |
    {error, any()} |
    {error, get_layer_version_policy_errors(), tuple()}.
get_layer_version_policy(Client, LayerName, VersionNumber, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_layer_version_policy(Client, LayerName, VersionNumber, QueryMap, HeadersMap, []).

-spec get_layer_version_policy(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_layer_version_policy_response(), tuple()} |
    {error, any()} |
    {error, get_layer_version_policy_errors(), tuple()}.
get_layer_version_policy(Client, LayerName, VersionNumber, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2018-10-31/layers/", aws_util:encode_uri(LayerName), "/versions/", aws_util:encode_uri(VersionNumber), "/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the resource-based IAM policy:
%% https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html
%% for a function, version, or alias.
-spec get_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_policy_response(), tuple()} |
    {error, any()} |
    {error, get_policy_errors(), tuple()}.
get_policy(Client, FunctionName)
  when is_map(Client) ->
    get_policy(Client, FunctionName, #{}, #{}).

-spec get_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_policy_response(), tuple()} |
    {error, any()} |
    {error, get_policy_errors(), tuple()}.
get_policy(Client, FunctionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_policy(Client, FunctionName, QueryMap, HeadersMap, []).

-spec get_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_policy_response(), tuple()} |
    {error, any()} |
    {error, get_policy_errors(), tuple()}.
get_policy(Client, FunctionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Qualifier">>, maps:get(<<"Qualifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the provisioned concurrency configuration for a
%% function's alias or version.
-spec get_provisioned_concurrency_config(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_provisioned_concurrency_config_response(), tuple()} |
    {error, any()} |
    {error, get_provisioned_concurrency_config_errors(), tuple()}.
get_provisioned_concurrency_config(Client, FunctionName, Qualifier)
  when is_map(Client) ->
    get_provisioned_concurrency_config(Client, FunctionName, Qualifier, #{}, #{}).

-spec get_provisioned_concurrency_config(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_provisioned_concurrency_config_response(), tuple()} |
    {error, any()} |
    {error, get_provisioned_concurrency_config_errors(), tuple()}.
get_provisioned_concurrency_config(Client, FunctionName, Qualifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_provisioned_concurrency_config(Client, FunctionName, Qualifier, QueryMap, HeadersMap, []).

-spec get_provisioned_concurrency_config(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_provisioned_concurrency_config_response(), tuple()} |
    {error, any()} |
    {error, get_provisioned_concurrency_config_errors(), tuple()}.
get_provisioned_concurrency_config(Client, FunctionName, Qualifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2019-09-30/functions/", aws_util:encode_uri(FunctionName), "/provisioned-concurrency"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Qualifier">>, Qualifier}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the runtime management configuration for a function's
%% version.
%%
%% If the runtime update mode is Manual, this includes the ARN of the
%% runtime version and the runtime update mode. If the runtime update mode is
%% Auto or Function update,
%% this includes the runtime update mode and `null' is returned for the
%% ARN. For more information, see Runtime updates:
%% https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html.
-spec get_runtime_management_config(aws_client:aws_client(), binary() | list()) ->
    {ok, get_runtime_management_config_response(), tuple()} |
    {error, any()} |
    {error, get_runtime_management_config_errors(), tuple()}.
get_runtime_management_config(Client, FunctionName)
  when is_map(Client) ->
    get_runtime_management_config(Client, FunctionName, #{}, #{}).

-spec get_runtime_management_config(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_runtime_management_config_response(), tuple()} |
    {error, any()} |
    {error, get_runtime_management_config_errors(), tuple()}.
get_runtime_management_config(Client, FunctionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_runtime_management_config(Client, FunctionName, QueryMap, HeadersMap, []).

-spec get_runtime_management_config(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_runtime_management_config_response(), tuple()} |
    {error, any()} |
    {error, get_runtime_management_config_errors(), tuple()}.
get_runtime_management_config(Client, FunctionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-07-20/functions/", aws_util:encode_uri(FunctionName), "/runtime-management-config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Qualifier">>, maps:get(<<"Qualifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Invokes a Lambda function.
%%
%% You can invoke a function synchronously (and wait for the response), or
%% asynchronously. By default, Lambda invokes your function synchronously
%% (i.e. the`InvocationType'
%% is `RequestResponse'). To invoke a function asynchronously, set
%% `InvocationType' to
%% `Event'. Lambda passes the `ClientContext' object to your function
%% for
%% synchronous invocations only.
%%
%% For synchronous invocation:
%% https://docs.aws.amazon.com/lambda/latest/dg/invocation-sync.html,
%% details about the function response, including errors, are included in the
%% response body and headers. For either
%% invocation type, you can find more information in the execution log:
%% https://docs.aws.amazon.com/lambda/latest/dg/monitoring-functions.html and
%% trace: https://docs.aws.amazon.com/lambda/latest/dg/lambda-x-ray.html.
%%
%% When an error occurs, your function may be invoked multiple times. Retry
%% behavior varies by error type,
%% client, event source, and invocation type. For example, if you invoke a
%% function asynchronously and it returns an
%% error, Lambda executes the function up to two more times. For more
%% information, see Error handling and automatic retries in
%% Lambda:
%% https://docs.aws.amazon.com/lambda/latest/dg/invocation-retries.html.
%%
%% For asynchronous invocation:
%% https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html,
%% Lambda adds events to a queue before sending them to your function. If
%% your function does not have enough capacity
%% to keep up with the queue, events may be lost. Occasionally, your function
%% may receive the same event multiple
%% times, even if no error occurs. To retain events that were not processed,
%% configure your function with a dead-letter queue:
%% https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-dlq.
%%
%% The status code in the API response doesn't reflect function errors.
%% Error codes are reserved for errors that
%% prevent your function from executing, such as permissions errors, quota:
%% https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html
%% errors, or issues with your function's code and
%% configuration. For example, Lambda returns `TooManyRequestsException'
%% if running the
%% function would cause you to exceed a concurrency limit at either the
%% account level
%% (`ConcurrentInvocationLimitExceeded') or function level
%% (`ReservedFunctionConcurrentInvocationLimitExceeded').
%%
%% For functions with a long timeout, your client might disconnect during
%% synchronous invocation while it waits
%% for a response. Configure your HTTP client, SDK, firewall, proxy, or
%% operating system to allow for long
%% connections with timeout or keep-alive settings.
%%
%% This operation requires permission for the lambda:InvokeFunction:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awslambda.html
%% action. For details on how to set up
%% permissions for cross-account invocations, see Granting function
%% access to other accounts:
%% https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html#permissions-resource-xaccountinvoke.
-spec invoke(aws_client:aws_client(), binary() | list(), invocation_request()) ->
    {ok, invocation_response(), tuple()} |
    {error, any()} |
    {error, invoke_errors(), tuple()}.
invoke(Client, FunctionName, Input) ->
    invoke(Client, FunctionName, Input, []).

-spec invoke(aws_client:aws_client(), binary() | list(), invocation_request(), proplists:proplist()) ->
    {ok, invocation_response(), tuple()} |
    {error, any()} |
    {error, invoke_errors(), tuple()}.
invoke(Client, FunctionName, Input0, Options0) ->
    Method = post,
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/invocations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Context">>, <<"ClientContext">>},
                       {<<"X-Amz-Invocation-Type">>, <<"InvocationType">>},
                       {<<"X-Amz-Log-Type">>, <<"LogType">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
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

%% @doc
%% For asynchronous function invocation, use `Invoke'.
%%
%% Invokes a function asynchronously.
%%
%% If you do use the InvokeAsync action, note that it doesn't support the
%% use of X-Ray active tracing. Trace ID is not
%% propagated to the function, even if X-Ray active tracing is turned on.
-spec invoke_async(aws_client:aws_client(), binary() | list(), invoke_async_request()) ->
    {ok, invoke_async_response(), tuple()} |
    {error, any()} |
    {error, invoke_async_errors(), tuple()}.
invoke_async(Client, FunctionName, Input) ->
    invoke_async(Client, FunctionName, Input, []).

-spec invoke_async(aws_client:aws_client(), binary() | list(), invoke_async_request(), proplists:proplist()) ->
    {ok, invoke_async_response(), tuple()} |
    {error, any()} |
    {error, invoke_async_errors(), tuple()}.
invoke_async(Client, FunctionName, Input0, Options0) ->
    Method = post,
    Path = ["/2014-11-13/functions/", aws_util:encode_uri(FunctionName), "/invoke-async"],
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

%% @doc Configure your Lambda functions to stream response payloads back to
%% clients.
%%
%% For more information, see Configuring a Lambda function to stream
%% responses:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuration-response-streaming.html.
%%
%% This operation requires permission for the lambda:InvokeFunction:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awslambda.html
%% action. For details on how to set up
%% permissions for cross-account invocations, see Granting function
%% access to other accounts:
%% https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html#permissions-resource-xaccountinvoke.
-spec invoke_with_response_stream(aws_client:aws_client(), binary() | list(), invoke_with_response_stream_request()) ->
    {ok, invoke_with_response_stream_response(), tuple()} |
    {error, any()} |
    {error, invoke_with_response_stream_errors(), tuple()}.
invoke_with_response_stream(Client, FunctionName, Input) ->
    invoke_with_response_stream(Client, FunctionName, Input, []).

-spec invoke_with_response_stream(aws_client:aws_client(), binary() | list(), invoke_with_response_stream_request(), proplists:proplist()) ->
    {ok, invoke_with_response_stream_response(), tuple()} |
    {error, any()} |
    {error, invoke_with_response_stream_errors(), tuple()}.
invoke_with_response_stream(Client, FunctionName, Input0, Options0) ->
    Method = post,
    Path = ["/2021-11-15/functions/", aws_util:encode_uri(FunctionName), "/response-streaming-invocations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Context">>, <<"ClientContext">>},
                       {<<"X-Amz-Invocation-Type">>, <<"InvocationType">>},
                       {<<"X-Amz-Log-Type">>, <<"LogType">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"X-Amz-Executed-Version">>, <<"ExecutedVersion">>},
            {<<"Content-Type">>, <<"ResponseStreamContentType">>}
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

%% @doc Returns a list of aliases:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html
%% for a Lambda function.
-spec list_aliases(aws_client:aws_client(), binary() | list()) ->
    {ok, list_aliases_response(), tuple()} |
    {error, any()} |
    {error, list_aliases_errors(), tuple()}.
list_aliases(Client, FunctionName)
  when is_map(Client) ->
    list_aliases(Client, FunctionName, #{}, #{}).

-spec list_aliases(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_aliases_response(), tuple()} |
    {error, any()} |
    {error, list_aliases_errors(), tuple()}.
list_aliases(Client, FunctionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_aliases(Client, FunctionName, QueryMap, HeadersMap, []).

-spec list_aliases(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_aliases_response(), tuple()} |
    {error, any()} |
    {error, list_aliases_errors(), tuple()}.
list_aliases(Client, FunctionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/aliases"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"FunctionVersion">>, maps:get(<<"FunctionVersion">>, QueryMap, undefined)},
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of code
%% signing configurations:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuring-codesigning.html.
%%
%% A request returns up to 10,000 configurations per
%% call. You can use the `MaxItems' parameter to return fewer
%% configurations per call.
-spec list_code_signing_configs(aws_client:aws_client()) ->
    {ok, list_code_signing_configs_response(), tuple()} |
    {error, any()} |
    {error, list_code_signing_configs_errors(), tuple()}.
list_code_signing_configs(Client)
  when is_map(Client) ->
    list_code_signing_configs(Client, #{}, #{}).

-spec list_code_signing_configs(aws_client:aws_client(), map(), map()) ->
    {ok, list_code_signing_configs_response(), tuple()} |
    {error, any()} |
    {error, list_code_signing_configs_errors(), tuple()}.
list_code_signing_configs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_code_signing_configs(Client, QueryMap, HeadersMap, []).

-spec list_code_signing_configs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_code_signing_configs_response(), tuple()} |
    {error, any()} |
    {error, list_code_signing_configs_errors(), tuple()}.
list_code_signing_configs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-04-22/code-signing-configs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists event source mappings.
%%
%% Specify an `EventSourceArn' to show only event source mappings for a
%% single event source.
-spec list_event_source_mappings(aws_client:aws_client()) ->
    {ok, list_event_source_mappings_response(), tuple()} |
    {error, any()} |
    {error, list_event_source_mappings_errors(), tuple()}.
list_event_source_mappings(Client)
  when is_map(Client) ->
    list_event_source_mappings(Client, #{}, #{}).

-spec list_event_source_mappings(aws_client:aws_client(), map(), map()) ->
    {ok, list_event_source_mappings_response(), tuple()} |
    {error, any()} |
    {error, list_event_source_mappings_errors(), tuple()}.
list_event_source_mappings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_event_source_mappings(Client, QueryMap, HeadersMap, []).

-spec list_event_source_mappings(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_event_source_mappings_response(), tuple()} |
    {error, any()} |
    {error, list_event_source_mappings_errors(), tuple()}.
list_event_source_mappings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-03-31/event-source-mappings"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"EventSourceArn">>, maps:get(<<"EventSourceArn">>, QueryMap, undefined)},
        {<<"FunctionName">>, maps:get(<<"FunctionName">>, QueryMap, undefined)},
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of configurations for asynchronous invocation for a
%% function.
%%
%% To configure options for asynchronous invocation, use
%% `PutFunctionEventInvokeConfig'.
-spec list_function_event_invoke_configs(aws_client:aws_client(), binary() | list()) ->
    {ok, list_function_event_invoke_configs_response(), tuple()} |
    {error, any()} |
    {error, list_function_event_invoke_configs_errors(), tuple()}.
list_function_event_invoke_configs(Client, FunctionName)
  when is_map(Client) ->
    list_function_event_invoke_configs(Client, FunctionName, #{}, #{}).

-spec list_function_event_invoke_configs(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_function_event_invoke_configs_response(), tuple()} |
    {error, any()} |
    {error, list_function_event_invoke_configs_errors(), tuple()}.
list_function_event_invoke_configs(Client, FunctionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_function_event_invoke_configs(Client, FunctionName, QueryMap, HeadersMap, []).

-spec list_function_event_invoke_configs(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_function_event_invoke_configs_response(), tuple()} |
    {error, any()} |
    {error, list_function_event_invoke_configs_errors(), tuple()}.
list_function_event_invoke_configs(Client, FunctionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2019-09-25/functions/", aws_util:encode_uri(FunctionName), "/event-invoke-config/list"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of Lambda function URLs for the specified function.
-spec list_function_url_configs(aws_client:aws_client(), binary() | list()) ->
    {ok, list_function_url_configs_response(), tuple()} |
    {error, any()} |
    {error, list_function_url_configs_errors(), tuple()}.
list_function_url_configs(Client, FunctionName)
  when is_map(Client) ->
    list_function_url_configs(Client, FunctionName, #{}, #{}).

-spec list_function_url_configs(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_function_url_configs_response(), tuple()} |
    {error, any()} |
    {error, list_function_url_configs_errors(), tuple()}.
list_function_url_configs(Client, FunctionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_function_url_configs(Client, FunctionName, QueryMap, HeadersMap, []).

-spec list_function_url_configs(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_function_url_configs_response(), tuple()} |
    {error, any()} |
    {error, list_function_url_configs_errors(), tuple()}.
list_function_url_configs(Client, FunctionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-10-31/functions/", aws_util:encode_uri(FunctionName), "/urls"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of Lambda functions, with the version-specific
%% configuration of each.
%%
%% Lambda returns up to 50
%% functions per call.
%%
%% Set `FunctionVersion' to `ALL' to include all published versions
%% of each function in
%% addition to the unpublished version.
%%
%% The `ListFunctions' operation returns a subset of the
%% `FunctionConfiguration' fields.
%% To get the additional fields (State, StateReasonCode, StateReason,
%% LastUpdateStatus, LastUpdateStatusReason,
%% LastUpdateStatusReasonCode, RuntimeVersionConfig) for a function or
%% version, use `GetFunction'.
-spec list_functions(aws_client:aws_client()) ->
    {ok, list_functions_response(), tuple()} |
    {error, any()} |
    {error, list_functions_errors(), tuple()}.
list_functions(Client)
  when is_map(Client) ->
    list_functions(Client, #{}, #{}).

-spec list_functions(aws_client:aws_client(), map(), map()) ->
    {ok, list_functions_response(), tuple()} |
    {error, any()} |
    {error, list_functions_errors(), tuple()}.
list_functions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_functions(Client, QueryMap, HeadersMap, []).

-spec list_functions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_functions_response(), tuple()} |
    {error, any()} |
    {error, list_functions_errors(), tuple()}.
list_functions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-03-31/functions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"FunctionVersion">>, maps:get(<<"FunctionVersion">>, QueryMap, undefined)},
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MasterRegion">>, maps:get(<<"MasterRegion">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the functions that use the specified code signing configuration.
%%
%% You can use this method prior to deleting a
%% code signing configuration, to verify that no functions are using it.
-spec list_functions_by_code_signing_config(aws_client:aws_client(), binary() | list()) ->
    {ok, list_functions_by_code_signing_config_response(), tuple()} |
    {error, any()} |
    {error, list_functions_by_code_signing_config_errors(), tuple()}.
list_functions_by_code_signing_config(Client, CodeSigningConfigArn)
  when is_map(Client) ->
    list_functions_by_code_signing_config(Client, CodeSigningConfigArn, #{}, #{}).

-spec list_functions_by_code_signing_config(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_functions_by_code_signing_config_response(), tuple()} |
    {error, any()} |
    {error, list_functions_by_code_signing_config_errors(), tuple()}.
list_functions_by_code_signing_config(Client, CodeSigningConfigArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_functions_by_code_signing_config(Client, CodeSigningConfigArn, QueryMap, HeadersMap, []).

-spec list_functions_by_code_signing_config(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_functions_by_code_signing_config_response(), tuple()} |
    {error, any()} |
    {error, list_functions_by_code_signing_config_errors(), tuple()}.
list_functions_by_code_signing_config(Client, CodeSigningConfigArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-04-22/code-signing-configs/", aws_util:encode_uri(CodeSigningConfigArn), "/functions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the versions of an Lambda
%% layer:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html.
%%
%% Versions that have been deleted aren't listed. Specify a runtime
%% identifier:
%% https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html to list
%% only
%% versions that indicate that they're compatible with that runtime.
%% Specify a compatible architecture to include only
%% layer versions that are compatible with that architecture.
-spec list_layer_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_layer_versions_response(), tuple()} |
    {error, any()} |
    {error, list_layer_versions_errors(), tuple()}.
list_layer_versions(Client, LayerName)
  when is_map(Client) ->
    list_layer_versions(Client, LayerName, #{}, #{}).

-spec list_layer_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_layer_versions_response(), tuple()} |
    {error, any()} |
    {error, list_layer_versions_errors(), tuple()}.
list_layer_versions(Client, LayerName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_layer_versions(Client, LayerName, QueryMap, HeadersMap, []).

-spec list_layer_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_layer_versions_response(), tuple()} |
    {error, any()} |
    {error, list_layer_versions_errors(), tuple()}.
list_layer_versions(Client, LayerName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2018-10-31/layers/", aws_util:encode_uri(LayerName), "/versions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"CompatibleArchitecture">>, maps:get(<<"CompatibleArchitecture">>, QueryMap, undefined)},
        {<<"CompatibleRuntime">>, maps:get(<<"CompatibleRuntime">>, QueryMap, undefined)},
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists Lambda
%% layers:
%% https://docs.aws.amazon.com/lambda/latest/dg/invocation-layers.html and
%% shows information about the latest version of each.
%%
%% Specify a
%% runtime
%% identifier:
%% https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html to list
%% only layers that indicate that they're compatible with that
%% runtime. Specify a compatible architecture to include only layers that are
%% compatible with
%% that instruction set architecture:
%% https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html.
-spec list_layers(aws_client:aws_client()) ->
    {ok, list_layers_response(), tuple()} |
    {error, any()} |
    {error, list_layers_errors(), tuple()}.
list_layers(Client)
  when is_map(Client) ->
    list_layers(Client, #{}, #{}).

-spec list_layers(aws_client:aws_client(), map(), map()) ->
    {ok, list_layers_response(), tuple()} |
    {error, any()} |
    {error, list_layers_errors(), tuple()}.
list_layers(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_layers(Client, QueryMap, HeadersMap, []).

-spec list_layers(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_layers_response(), tuple()} |
    {error, any()} |
    {error, list_layers_errors(), tuple()}.
list_layers(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2018-10-31/layers"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"CompatibleArchitecture">>, maps:get(<<"CompatibleArchitecture">>, QueryMap, undefined)},
        {<<"CompatibleRuntime">>, maps:get(<<"CompatibleRuntime">>, QueryMap, undefined)},
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of provisioned concurrency configurations for a
%% function.
-spec list_provisioned_concurrency_configs(aws_client:aws_client(), binary() | list()) ->
    {ok, list_provisioned_concurrency_configs_response(), tuple()} |
    {error, any()} |
    {error, list_provisioned_concurrency_configs_errors(), tuple()}.
list_provisioned_concurrency_configs(Client, FunctionName)
  when is_map(Client) ->
    list_provisioned_concurrency_configs(Client, FunctionName, #{}, #{}).

-spec list_provisioned_concurrency_configs(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_provisioned_concurrency_configs_response(), tuple()} |
    {error, any()} |
    {error, list_provisioned_concurrency_configs_errors(), tuple()}.
list_provisioned_concurrency_configs(Client, FunctionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_provisioned_concurrency_configs(Client, FunctionName, QueryMap, HeadersMap, []).

-spec list_provisioned_concurrency_configs(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_provisioned_concurrency_configs_response(), tuple()} |
    {error, any()} |
    {error, list_provisioned_concurrency_configs_errors(), tuple()}.
list_provisioned_concurrency_configs(Client, FunctionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2019-09-30/functions/", aws_util:encode_uri(FunctionName), "/provisioned-concurrency?List=ALL"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a function, event source mapping, or code signing
%% configuration's tags:
%% https://docs.aws.amazon.com/lambda/latest/dg/tagging.html.
%%
%% You can
%% also view function tags with `GetFunction'.
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
    Path = ["/2017-03-31/tags/", aws_util:encode_uri(Resource), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of versions:
%% https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html,
%% with the version-specific configuration of each.
%%
%% Lambda returns up to 50 versions per call.
-spec list_versions_by_function(aws_client:aws_client(), binary() | list()) ->
    {ok, list_versions_by_function_response(), tuple()} |
    {error, any()} |
    {error, list_versions_by_function_errors(), tuple()}.
list_versions_by_function(Client, FunctionName)
  when is_map(Client) ->
    list_versions_by_function(Client, FunctionName, #{}, #{}).

-spec list_versions_by_function(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_versions_by_function_response(), tuple()} |
    {error, any()} |
    {error, list_versions_by_function_errors(), tuple()}.
list_versions_by_function(Client, FunctionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_versions_by_function(Client, FunctionName, QueryMap, HeadersMap, []).

-spec list_versions_by_function(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_versions_by_function_response(), tuple()} |
    {error, any()} |
    {error, list_versions_by_function_errors(), tuple()}.
list_versions_by_function(Client, FunctionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/versions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Creates an Lambda
%% layer:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
%% from a ZIP archive.
%%
%% Each time you call `PublishLayerVersion' with the same
%% layer name, a new version is created.
%%
%% Add layers to your function with `CreateFunction' or
%% `UpdateFunctionConfiguration'.
-spec publish_layer_version(aws_client:aws_client(), binary() | list(), publish_layer_version_request()) ->
    {ok, publish_layer_version_response(), tuple()} |
    {error, any()} |
    {error, publish_layer_version_errors(), tuple()}.
publish_layer_version(Client, LayerName, Input) ->
    publish_layer_version(Client, LayerName, Input, []).

-spec publish_layer_version(aws_client:aws_client(), binary() | list(), publish_layer_version_request(), proplists:proplist()) ->
    {ok, publish_layer_version_response(), tuple()} |
    {error, any()} |
    {error, publish_layer_version_errors(), tuple()}.
publish_layer_version(Client, LayerName, Input0, Options0) ->
    Method = post,
    Path = ["/2018-10-31/layers/", aws_util:encode_uri(LayerName), "/versions"],
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

%% @doc Creates a version:
%% https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html from
%% the
%% current code and configuration of a function.
%%
%% Use versions to create a snapshot of your function code and
%% configuration that doesn't change.
%%
%% Lambda doesn't publish a version if the function's configuration
%% and code haven't changed since the last
%% version. Use `UpdateFunctionCode' or `UpdateFunctionConfiguration'
%% to update the
%% function before publishing a version.
%%
%% Clients can invoke versions directly or with an alias. To create an alias,
%% use `CreateAlias'.
-spec publish_version(aws_client:aws_client(), binary() | list(), publish_version_request()) ->
    {ok, function_configuration(), tuple()} |
    {error, any()} |
    {error, publish_version_errors(), tuple()}.
publish_version(Client, FunctionName, Input) ->
    publish_version(Client, FunctionName, Input, []).

-spec publish_version(aws_client:aws_client(), binary() | list(), publish_version_request(), proplists:proplist()) ->
    {ok, function_configuration(), tuple()} |
    {error, any()} |
    {error, publish_version_errors(), tuple()}.
publish_version(Client, FunctionName, Input0, Options0) ->
    Method = post,
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/versions"],
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

%% @doc Update the code signing configuration for the function.
%%
%% Changes to the code signing configuration take effect the
%% next time a user tries to deploy a code package to the function.
-spec put_function_code_signing_config(aws_client:aws_client(), binary() | list(), put_function_code_signing_config_request()) ->
    {ok, put_function_code_signing_config_response(), tuple()} |
    {error, any()} |
    {error, put_function_code_signing_config_errors(), tuple()}.
put_function_code_signing_config(Client, FunctionName, Input) ->
    put_function_code_signing_config(Client, FunctionName, Input, []).

-spec put_function_code_signing_config(aws_client:aws_client(), binary() | list(), put_function_code_signing_config_request(), proplists:proplist()) ->
    {ok, put_function_code_signing_config_response(), tuple()} |
    {error, any()} |
    {error, put_function_code_signing_config_errors(), tuple()}.
put_function_code_signing_config(Client, FunctionName, Input0, Options0) ->
    Method = put,
    Path = ["/2020-06-30/functions/", aws_util:encode_uri(FunctionName), "/code-signing-config"],
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

%% @doc Sets the maximum number of simultaneous executions for a function,
%% and reserves capacity for that concurrency
%% level.
%%
%% Concurrency settings apply to the function as a whole, including all
%% published versions and the unpublished
%% version. Reserving concurrency both ensures that your function has
%% capacity to process the specified number of
%% events simultaneously, and prevents it from scaling beyond that level. Use
%% `GetFunction' to see
%% the current setting for a function.
%%
%% Use `GetAccountSettings' to see your Regional concurrency limit. You
%% can reserve concurrency
%% for as many functions as you like, as long as you leave at least 100
%% simultaneous executions unreserved for
%% functions that aren't configured with a per-function limit. For more
%% information, see Lambda function scaling:
%% https://docs.aws.amazon.com/lambda/latest/dg/invocation-scaling.html.
-spec put_function_concurrency(aws_client:aws_client(), binary() | list(), put_function_concurrency_request()) ->
    {ok, concurrency(), tuple()} |
    {error, any()} |
    {error, put_function_concurrency_errors(), tuple()}.
put_function_concurrency(Client, FunctionName, Input) ->
    put_function_concurrency(Client, FunctionName, Input, []).

-spec put_function_concurrency(aws_client:aws_client(), binary() | list(), put_function_concurrency_request(), proplists:proplist()) ->
    {ok, concurrency(), tuple()} |
    {error, any()} |
    {error, put_function_concurrency_errors(), tuple()}.
put_function_concurrency(Client, FunctionName, Input0, Options0) ->
    Method = put,
    Path = ["/2017-10-31/functions/", aws_util:encode_uri(FunctionName), "/concurrency"],
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

%% @doc Configures options for asynchronous
%% invocation:
%% https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html on a
%% function, version, or alias.
%%
%% If a configuration already exists for a function, version,
%% or alias, this operation overwrites it. If you exclude any settings, they
%% are removed. To set one option without
%% affecting existing settings for other options, use
%% `UpdateFunctionEventInvokeConfig'.
%%
%% By default, Lambda retries an asynchronous invocation twice if the
%% function returns an error. It retains
%% events in a queue for up to six hours. When an event fails all processing
%% attempts or stays in the asynchronous
%% invocation queue for too long, Lambda discards it. To retain discarded
%% events, configure a dead-letter queue with
%% `UpdateFunctionConfiguration'.
%%
%% To send an invocation record to a queue, topic, function, or event bus,
%% specify a destination:
%% https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-async-destinations.
%% You can configure separate destinations for successful invocations
%% (on-success) and events
%% that fail all processing attempts (on-failure). You can configure
%% destinations in addition to or instead of a
%% dead-letter queue.
-spec put_function_event_invoke_config(aws_client:aws_client(), binary() | list(), put_function_event_invoke_config_request()) ->
    {ok, function_event_invoke_config(), tuple()} |
    {error, any()} |
    {error, put_function_event_invoke_config_errors(), tuple()}.
put_function_event_invoke_config(Client, FunctionName, Input) ->
    put_function_event_invoke_config(Client, FunctionName, Input, []).

-spec put_function_event_invoke_config(aws_client:aws_client(), binary() | list(), put_function_event_invoke_config_request(), proplists:proplist()) ->
    {ok, function_event_invoke_config(), tuple()} |
    {error, any()} |
    {error, put_function_event_invoke_config_errors(), tuple()}.
put_function_event_invoke_config(Client, FunctionName, Input0, Options0) ->
    Method = put,
    Path = ["/2019-09-25/functions/", aws_util:encode_uri(FunctionName), "/event-invoke-config"],
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
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Sets your function's recursive loop detection:
%% https://docs.aws.amazon.com/lambda/latest/dg/invocation-recursion.html
%% configuration.
%%
%% When you configure a Lambda function to output to the same service or
%% resource that invokes the function, it's possible to create
%% an infinite recursive loop. For example, a Lambda function might write a
%% message to an Amazon Simple Queue Service (Amazon SQS) queue, which then
%% invokes the same
%% function. This invocation causes the function to write another message to
%% the queue, which in turn invokes the function again.
%%
%% Lambda can detect certain types of recursive loops shortly after they
%% occur. When Lambda detects a recursive loop and your
%% function's recursive loop detection configuration is set to
%% `Terminate', it stops your function being invoked and notifies
%% you.
-spec put_function_recursion_config(aws_client:aws_client(), binary() | list(), put_function_recursion_config_request()) ->
    {ok, put_function_recursion_config_response(), tuple()} |
    {error, any()} |
    {error, put_function_recursion_config_errors(), tuple()}.
put_function_recursion_config(Client, FunctionName, Input) ->
    put_function_recursion_config(Client, FunctionName, Input, []).

-spec put_function_recursion_config(aws_client:aws_client(), binary() | list(), put_function_recursion_config_request(), proplists:proplist()) ->
    {ok, put_function_recursion_config_response(), tuple()} |
    {error, any()} |
    {error, put_function_recursion_config_errors(), tuple()}.
put_function_recursion_config(Client, FunctionName, Input0, Options0) ->
    Method = put,
    Path = ["/2024-08-31/functions/", aws_util:encode_uri(FunctionName), "/recursion-config"],
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

%% @doc Adds a provisioned concurrency configuration to a function's
%% alias or version.
-spec put_provisioned_concurrency_config(aws_client:aws_client(), binary() | list(), put_provisioned_concurrency_config_request()) ->
    {ok, put_provisioned_concurrency_config_response(), tuple()} |
    {error, any()} |
    {error, put_provisioned_concurrency_config_errors(), tuple()}.
put_provisioned_concurrency_config(Client, FunctionName, Input) ->
    put_provisioned_concurrency_config(Client, FunctionName, Input, []).

-spec put_provisioned_concurrency_config(aws_client:aws_client(), binary() | list(), put_provisioned_concurrency_config_request(), proplists:proplist()) ->
    {ok, put_provisioned_concurrency_config_response(), tuple()} |
    {error, any()} |
    {error, put_provisioned_concurrency_config_errors(), tuple()}.
put_provisioned_concurrency_config(Client, FunctionName, Input0, Options0) ->
    Method = put,
    Path = ["/2019-09-30/functions/", aws_util:encode_uri(FunctionName), "/provisioned-concurrency"],
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
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Sets the runtime management configuration for a function's
%% version.
%%
%% For more information,
%% see Runtime updates:
%% https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html.
-spec put_runtime_management_config(aws_client:aws_client(), binary() | list(), put_runtime_management_config_request()) ->
    {ok, put_runtime_management_config_response(), tuple()} |
    {error, any()} |
    {error, put_runtime_management_config_errors(), tuple()}.
put_runtime_management_config(Client, FunctionName, Input) ->
    put_runtime_management_config(Client, FunctionName, Input, []).

-spec put_runtime_management_config(aws_client:aws_client(), binary() | list(), put_runtime_management_config_request(), proplists:proplist()) ->
    {ok, put_runtime_management_config_response(), tuple()} |
    {error, any()} |
    {error, put_runtime_management_config_errors(), tuple()}.
put_runtime_management_config(Client, FunctionName, Input0, Options0) ->
    Method = put,
    Path = ["/2021-07-20/functions/", aws_util:encode_uri(FunctionName), "/runtime-management-config"],
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
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a statement from the permissions policy for a version of an
%% Lambda
%% layer:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html.
%%
%% For more information, see
%% `AddLayerVersionPermission'.
-spec remove_layer_version_permission(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), remove_layer_version_permission_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_layer_version_permission_errors(), tuple()}.
remove_layer_version_permission(Client, LayerName, StatementId, VersionNumber, Input) ->
    remove_layer_version_permission(Client, LayerName, StatementId, VersionNumber, Input, []).

-spec remove_layer_version_permission(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), remove_layer_version_permission_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_layer_version_permission_errors(), tuple()}.
remove_layer_version_permission(Client, LayerName, StatementId, VersionNumber, Input0, Options0) ->
    Method = delete,
    Path = ["/2018-10-31/layers/", aws_util:encode_uri(LayerName), "/versions/", aws_util:encode_uri(VersionNumber), "/policy/", aws_util:encode_uri(StatementId), ""],
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
                     {<<"RevisionId">>, <<"RevisionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Revokes function-use permission from an Amazon Web Services service
%% or another Amazon Web Services account.
%%
%% You
%% can get the ID of the statement from the output of `GetPolicy'.
-spec remove_permission(aws_client:aws_client(), binary() | list(), binary() | list(), remove_permission_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_permission_errors(), tuple()}.
remove_permission(Client, FunctionName, StatementId, Input) ->
    remove_permission(Client, FunctionName, StatementId, Input, []).

-spec remove_permission(aws_client:aws_client(), binary() | list(), binary() | list(), remove_permission_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_permission_errors(), tuple()}.
remove_permission(Client, FunctionName, StatementId, Input0, Options0) ->
    Method = delete,
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/policy/", aws_util:encode_uri(StatementId), ""],
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
                     {<<"Qualifier">>, <<"Qualifier">>},
                     {<<"RevisionId">>, <<"RevisionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds tags: https://docs.aws.amazon.com/lambda/latest/dg/tagging.html
%% to a function, event source mapping, or code signing configuration.
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
    Path = ["/2017-03-31/tags/", aws_util:encode_uri(Resource), ""],
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

%% @doc Removes tags:
%% https://docs.aws.amazon.com/lambda/latest/dg/tagging.html from a function,
%% event source mapping, or code signing configuration.
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
    Path = ["/2017-03-31/tags/", aws_util:encode_uri(Resource), ""],
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
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the configuration of a Lambda function alias:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html.
-spec update_alias(aws_client:aws_client(), binary() | list(), binary() | list(), update_alias_request()) ->
    {ok, alias_configuration(), tuple()} |
    {error, any()} |
    {error, update_alias_errors(), tuple()}.
update_alias(Client, FunctionName, Name, Input) ->
    update_alias(Client, FunctionName, Name, Input, []).

-spec update_alias(aws_client:aws_client(), binary() | list(), binary() | list(), update_alias_request(), proplists:proplist()) ->
    {ok, alias_configuration(), tuple()} |
    {error, any()} |
    {error, update_alias_errors(), tuple()}.
update_alias(Client, FunctionName, Name, Input0, Options0) ->
    Method = put,
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/aliases/", aws_util:encode_uri(Name), ""],
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

%% @doc Update the code signing configuration.
%%
%% Changes to the code signing configuration take effect the next time a
%% user tries to deploy a code package to the function.
-spec update_code_signing_config(aws_client:aws_client(), binary() | list(), update_code_signing_config_request()) ->
    {ok, update_code_signing_config_response(), tuple()} |
    {error, any()} |
    {error, update_code_signing_config_errors(), tuple()}.
update_code_signing_config(Client, CodeSigningConfigArn, Input) ->
    update_code_signing_config(Client, CodeSigningConfigArn, Input, []).

-spec update_code_signing_config(aws_client:aws_client(), binary() | list(), update_code_signing_config_request(), proplists:proplist()) ->
    {ok, update_code_signing_config_response(), tuple()} |
    {error, any()} |
    {error, update_code_signing_config_errors(), tuple()}.
update_code_signing_config(Client, CodeSigningConfigArn, Input0, Options0) ->
    Method = put,
    Path = ["/2020-04-22/code-signing-configs/", aws_util:encode_uri(CodeSigningConfigArn), ""],
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

%% @doc Updates an event source mapping.
%%
%% You can change the function that Lambda invokes, or pause
%% invocation and resume later from the same location.
%%
%% For details about how to configure different event sources, see the
%% following topics.
%%
%% Amazon DynamoDB Streams:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-dynamodb-eventsourcemapping
%%
%% Amazon Kinesis:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-eventsourcemapping
%%
%% Amazon SQS:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-eventsource
%%
%% Amazon MQ and RabbitMQ:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-eventsourcemapping
%%
%% Amazon MSK: https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html
%%
%% Apache Kafka: https://docs.aws.amazon.com/lambda/latest/dg/kafka-smaa.html
%%
%% Amazon DocumentDB:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html
%%
%% The following error handling options are available only for stream sources
%% (DynamoDB and Kinesis):
%%
%% `BisectBatchOnFunctionError' – If the function returns an error, split
%% the batch in two and retry.
%%
%% `DestinationConfig' – Send discarded records to an Amazon SQS queue or
%% Amazon SNS topic.
%%
%% `MaximumRecordAgeInSeconds' – Discard records older than the specified
%% age. The default value is infinite (-1). When set to infinite (-1), failed
%% records are retried until the record expires
%%
%% `MaximumRetryAttempts' – Discard records after the specified number of
%% retries. The default value is infinite (-1). When set to infinite (-1),
%% failed records are retried until the record expires.
%%
%% `ParallelizationFactor' – Process multiple batches from each shard
%% concurrently.
%%
%% For information about which configuration parameters apply to each event
%% source, see the following topics.
%%
%% Amazon DynamoDB Streams:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-ddb-params
%%
%% Amazon Kinesis:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-params
%%
%% Amazon SQS:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#services-sqs-params
%%
%% Amazon MQ and RabbitMQ:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-params
%%
%% Amazon MSK:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#services-msk-parms
%%
%% Apache Kafka:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-kafka.html#services-kafka-parms
%%
%% Amazon DocumentDB:
%% https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html#docdb-configuration
-spec update_event_source_mapping(aws_client:aws_client(), binary() | list(), update_event_source_mapping_request()) ->
    {ok, event_source_mapping_configuration(), tuple()} |
    {error, any()} |
    {error, update_event_source_mapping_errors(), tuple()}.
update_event_source_mapping(Client, UUID, Input) ->
    update_event_source_mapping(Client, UUID, Input, []).

-spec update_event_source_mapping(aws_client:aws_client(), binary() | list(), update_event_source_mapping_request(), proplists:proplist()) ->
    {ok, event_source_mapping_configuration(), tuple()} |
    {error, any()} |
    {error, update_event_source_mapping_errors(), tuple()}.
update_event_source_mapping(Client, UUID, Input0, Options0) ->
    Method = put,
    Path = ["/2015-03-31/event-source-mappings/", aws_util:encode_uri(UUID), ""],
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

%% @doc Updates a Lambda function's code.
%%
%% If code signing is enabled for the function, the code package
%% must be signed by a trusted publisher. For more information, see
%% Configuring code signing for Lambda:
%% https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html.
%%
%% If the function's package type is `Image', then you must specify
%% the code package in
%% `ImageUri' as the URI of a container image:
%% https://docs.aws.amazon.com/lambda/latest/dg/lambda-images.html in the
%% Amazon ECR registry.
%%
%% If the function's package type is `Zip', then you must specify the
%% deployment package as a .zip file
%% archive:
%% https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html#gettingstarted-package-zip.
%% Enter the Amazon S3 bucket and key of the code .zip file location. You can
%% also provide
%% the function code inline using the `ZipFile' field.
%%
%% The code in the deployment package must be compatible with the target
%% instruction set architecture of the
%% function (`x86-64' or `arm64').
%%
%% The function's code is locked when you publish a version. You
%% can't modify the code of a published version,
%% only the unpublished version.
%%
%% For a function defined as a container image, Lambda resolves the image tag
%% to an image digest. In
%% Amazon ECR, if you update the image tag to a new image, Lambda does not
%% automatically
%% update the function.
-spec update_function_code(aws_client:aws_client(), binary() | list(), update_function_code_request()) ->
    {ok, function_configuration(), tuple()} |
    {error, any()} |
    {error, update_function_code_errors(), tuple()}.
update_function_code(Client, FunctionName, Input) ->
    update_function_code(Client, FunctionName, Input, []).

-spec update_function_code(aws_client:aws_client(), binary() | list(), update_function_code_request(), proplists:proplist()) ->
    {ok, function_configuration(), tuple()} |
    {error, any()} |
    {error, update_function_code_errors(), tuple()}.
update_function_code(Client, FunctionName, Input0, Options0) ->
    Method = put,
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/code"],
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

%% @doc Modify the version-specific settings of a Lambda function.
%%
%% When you update a function, Lambda provisions an instance of the function
%% and its supporting
%% resources. If your function connects to a VPC, this process can take a
%% minute. During this time, you can't modify
%% the function, but you can still invoke it. The `LastUpdateStatus',
%% `LastUpdateStatusReason',
%% and `LastUpdateStatusReasonCode' fields in the response from
%% `GetFunctionConfiguration'
%% indicate when the update is complete and the function is processing events
%% with the new configuration. For more
%% information, see Lambda
%% function states:
%% https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html.
%%
%% These settings can vary between versions of a function and are locked when
%% you publish a version. You can't
%% modify the configuration of a published version, only the unpublished
%% version.
%%
%% To configure function concurrency, use `PutFunctionConcurrency'. To
%% grant invoke permissions
%% to an Amazon Web Services account or Amazon Web Services service, use
%% `AddPermission'.
-spec update_function_configuration(aws_client:aws_client(), binary() | list(), update_function_configuration_request()) ->
    {ok, function_configuration(), tuple()} |
    {error, any()} |
    {error, update_function_configuration_errors(), tuple()}.
update_function_configuration(Client, FunctionName, Input) ->
    update_function_configuration(Client, FunctionName, Input, []).

-spec update_function_configuration(aws_client:aws_client(), binary() | list(), update_function_configuration_request(), proplists:proplist()) ->
    {ok, function_configuration(), tuple()} |
    {error, any()} |
    {error, update_function_configuration_errors(), tuple()}.
update_function_configuration(Client, FunctionName, Input0, Options0) ->
    Method = put,
    Path = ["/2015-03-31/functions/", aws_util:encode_uri(FunctionName), "/configuration"],
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

%% @doc Updates the configuration for asynchronous invocation for a function,
%% version, or alias.
%%
%% To configure options for asynchronous invocation, use
%% `PutFunctionEventInvokeConfig'.
-spec update_function_event_invoke_config(aws_client:aws_client(), binary() | list(), update_function_event_invoke_config_request()) ->
    {ok, function_event_invoke_config(), tuple()} |
    {error, any()} |
    {error, update_function_event_invoke_config_errors(), tuple()}.
update_function_event_invoke_config(Client, FunctionName, Input) ->
    update_function_event_invoke_config(Client, FunctionName, Input, []).

-spec update_function_event_invoke_config(aws_client:aws_client(), binary() | list(), update_function_event_invoke_config_request(), proplists:proplist()) ->
    {ok, function_event_invoke_config(), tuple()} |
    {error, any()} |
    {error, update_function_event_invoke_config_errors(), tuple()}.
update_function_event_invoke_config(Client, FunctionName, Input0, Options0) ->
    Method = post,
    Path = ["/2019-09-25/functions/", aws_util:encode_uri(FunctionName), "/event-invoke-config"],
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
                     {<<"Qualifier">>, <<"Qualifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the configuration for a Lambda function URL.
-spec update_function_url_config(aws_client:aws_client(), binary() | list(), update_function_url_config_request()) ->
    {ok, update_function_url_config_response(), tuple()} |
    {error, any()} |
    {error, update_function_url_config_errors(), tuple()}.
update_function_url_config(Client, FunctionName, Input) ->
    update_function_url_config(Client, FunctionName, Input, []).

-spec update_function_url_config(aws_client:aws_client(), binary() | list(), update_function_url_config_request(), proplists:proplist()) ->
    {ok, update_function_url_config_response(), tuple()} |
    {error, any()} |
    {error, update_function_url_config_errors(), tuple()}.
update_function_url_config(Client, FunctionName, Input0, Options0) ->
    Method = put,
    Path = ["/2021-10-31/functions/", aws_util:encode_uri(FunctionName), "/url"],
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
                     {<<"Qualifier">>, <<"Qualifier">>}
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
    Client1 = Client#{service => <<"lambda">>},
    Host = build_host(<<"lambda">>, Client1),
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
