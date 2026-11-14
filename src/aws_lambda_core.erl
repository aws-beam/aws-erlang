%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Lambda
%%
%% Overview
%%
%% Lambda Core is a set of APIs for managing shared infrastructure resources
%% used by Lambda.
%%
%% The Lambda Core API provides operations for:
%%
%% Creating and managing network connectors that enable Lambda MicroVMs and
%% Lambda Web Functions to access resources in your Amazon Virtual Private
%% Cloud (Amazon VPC).
%%
%% Creating customer-managed runtimes which can be used with Lambda Event
%% Functions.
%%
%% Network connectors provision elastic network interfaces (ENIs) in your VPC
%% subnets, providing a managed network path from Lambda compute environments
%% to private resources such as Amazon RDS databases, Amazon ElastiCache
%% clusters, and internal APIs. You create a network connector once and
%% attach it to one or more Lambda MicroVMs or Lambda Web Functions at run
%% time.
%%
%% A customer-managed runtime is a Lambda runtime that you create and manage
%% as a standalone resource. Lambda Event Functions can use your
%% customer-managed runtime instead of using one of the built-in
%% Lambda-managed runtimes. Customer-managed runtimes enable you to create
%% customized runtimes for your workloads, and give you control over runtime
%% updates and the deprecation lifecycle.
%%
%% The Lambda Core API Reference provides information about each of the API
%% methods, including details about the parameters in each API request and
%% response.
%%
%% You can use Software Development Kits (SDKs), Integrated Development
%% Environment (IDE) Toolkits, and command line tools to access the API. For
%% installation instructions, see Tools for Amazon Web Services:
%% http://aws.amazon.com/tools/.
%%
%% For a list of Region-specific endpoints that Lambda supports, see Lambda
%% endpoints and quotas:
%% https://docs.aws.amazon.com/general/latest/gr/lambda-service.html in the
%% Amazon Web Services General Reference.
%%
%% When making the API calls, you will need to authenticate your request by
%% providing a signature. Lambda supports signature version 4. For more
%% information, see Signature Version 4 signing process:
%% https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html in
%% the Amazon Web Services General Reference.
-module(aws_lambda_core).

-export([create_network_connector/2,
         create_network_connector/3,
         create_runtime/2,
         create_runtime/3,
         create_runtime_alias/3,
         create_runtime_alias/4,
         create_runtime_version/3,
         create_runtime_version/4,
         delete_network_connector/3,
         delete_network_connector/4,
         delete_runtime/3,
         delete_runtime/4,
         delete_runtime_alias/4,
         delete_runtime_alias/5,
         delete_runtime_version/4,
         delete_runtime_version/5,
         get_network_connector/2,
         get_network_connector/4,
         get_network_connector/5,
         get_runtime/2,
         get_runtime/4,
         get_runtime/5,
         get_runtime_alias/3,
         get_runtime_alias/5,
         get_runtime_alias/6,
         get_runtime_version/3,
         get_runtime_version/5,
         get_runtime_version/6,
         list_network_connector_versions/2,
         list_network_connector_versions/4,
         list_network_connector_versions/5,
         list_network_connectors/1,
         list_network_connectors/3,
         list_network_connectors/4,
         list_runtime_aliases/2,
         list_runtime_aliases/4,
         list_runtime_aliases/5,
         list_runtime_versions/2,
         list_runtime_versions/4,
         list_runtime_versions/5,
         list_runtimes/1,
         list_runtimes/3,
         list_runtimes/4,
         restore_runtime/3,
         restore_runtime/4,
         update_network_connector/3,
         update_network_connector/4,
         update_runtime/3,
         update_runtime/4,
         update_runtime_alias/4,
         update_runtime_alias/5,
         update_runtime_version/4,
         update_runtime_version/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%% hackney:body/1 is only called with hackney versions that still export it.
-ignore_xref([{hackney, body, 1}]).



%% Example:
%% compatibility() :: #{
%%   <<"Architectures">> => list(list(any())()),
%%   <<"IntegrationModels">> => list(list(any())()),
%%   <<"ManagedInstances">> => list(any())
%% }
-type compatibility() :: #{binary() => any()}.


%% Example:
%% create_network_connector_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Configuration">> := list(),
%%   <<"Name">> := string(),
%%   <<"OperatorRole">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_network_connector_request() :: #{binary() => any()}.


%% Example:
%% create_network_connector_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Configuration">> => list(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"OperatorRole">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Version">> => float(),
%%   <<"VersionArn">> => string()
%% }
-type create_network_connector_response() :: #{binary() => any()}.


%% Example:
%% create_runtime_alias_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"ReleaseLifecycle">> => runtime_release_lifecycle(),
%%   <<"RuntimeVersion">> := string()
%% }
-type create_runtime_alias_request() :: #{binary() => any()}.


%% Example:
%% create_runtime_alias_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Created">> => string(),
%%   <<"Description">> => string(),
%%   <<"LastModified">> => string(),
%%   <<"Name">> => string(),
%%   <<"ReleaseLifecycle">> => runtime_release_lifecycle(),
%%   <<"RuntimeVersion">> => string(),
%%   <<"RuntimeVersionArn">> => string(),
%%   <<"State">> => list(any())
%% }
-type create_runtime_alias_response() :: #{binary() => any()}.


%% Example:
%% create_runtime_request() :: #{
%%   <<"Description">> => string(),
%%   <<"LicenseInfo">> => string(),
%%   <<"Name">> := string(),
%%   <<"ReleaseLifecycle">> => runtime_release_lifecycle(),
%%   <<"Tags">> => map()
%% }
-type create_runtime_request() :: #{binary() => any()}.


%% Example:
%% create_runtime_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Created">> => string(),
%%   <<"Description">> => string(),
%%   <<"LastModified">> => string(),
%%   <<"LicenseInfo">> => string(),
%%   <<"Name">> => string(),
%%   <<"ReleaseLifecycle">> => runtime_release_lifecycle()
%% }
-type create_runtime_response() :: #{binary() => any()}.


%% Example:
%% create_runtime_version_request() :: #{
%%   <<"DryRun">> => [boolean()],
%%   <<"ImageUri">> := [string()],
%%   <<"Name">> := string(),
%%   <<"ReleaseNotes">> => [string()]
%% }
-type create_runtime_version_request() :: #{binary() => any()}.


%% Example:
%% create_runtime_version_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Compatibility">> => compatibility(),
%%   <<"Created">> => string(),
%%   <<"LastModified">> => string(),
%%   <<"Name">> => string(),
%%   <<"Platforms">> => list(platform()),
%%   <<"ReleaseNotes">> => [string()],
%%   <<"ResolvedUri">> => [string()],
%%   <<"State">> => list(any())
%% }
-type create_runtime_version_response() :: #{binary() => any()}.

%% Example:
%% delete_network_connector_request() :: #{}
-type delete_network_connector_request() :: #{}.


%% Example:
%% delete_network_connector_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Configuration">> => list(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"OperatorRole">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Version">> => float(),
%%   <<"VersionArn">> => string()
%% }
-type delete_network_connector_response() :: #{binary() => any()}.


%% Example:
%% delete_runtime_alias_request() :: #{
%%   <<"RecoveryWindowInDays">> => [integer()]
%% }
-type delete_runtime_alias_request() :: #{binary() => any()}.

%% Example:
%% delete_runtime_alias_response() :: #{}
-type delete_runtime_alias_response() :: #{}.


%% Example:
%% delete_runtime_request() :: #{
%%   <<"RecoveryWindowInDays">> => [integer()]
%% }
-type delete_runtime_request() :: #{binary() => any()}.

%% Example:
%% delete_runtime_response() :: #{}
-type delete_runtime_response() :: #{}.


%% Example:
%% delete_runtime_version_request() :: #{
%%   <<"RecoveryWindowInDays">> => [integer()]
%% }
-type delete_runtime_version_request() :: #{binary() => any()}.

%% Example:
%% delete_runtime_version_response() :: #{}
-type delete_runtime_version_response() :: #{}.

%% Example:
%% get_network_connector_request() :: #{}
-type get_network_connector_request() :: #{}.


%% Example:
%% get_network_connector_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Configuration">> => list(),
%%   <<"Id">> => string(),
%%   <<"LastModified">> => non_neg_integer(),
%%   <<"LastUpdateStatus">> => list(any()),
%%   <<"LastUpdateStatusReason">> => string(),
%%   <<"LastUpdateStatusReasonCode">> => list(any()),
%%   <<"LatestVersion">> => float(),
%%   <<"LatestVersionArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"OperatorRole">> => string(),
%%   <<"State">> => list(any()),
%%   <<"StateReason">> => string(),
%%   <<"StateReasonCode">> => list(any()),
%%   <<"Version">> => float(),
%%   <<"VersionArn">> => string()
%% }
-type get_network_connector_response() :: #{binary() => any()}.

%% Example:
%% get_runtime_alias_request() :: #{}
-type get_runtime_alias_request() :: #{}.


%% Example:
%% get_runtime_alias_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Compatibility">> => compatibility(),
%%   <<"Created">> => string(),
%%   <<"Description">> => string(),
%%   <<"LastModified">> => string(),
%%   <<"Name">> => string(),
%%   <<"PendingDeletionAt">> => string(),
%%   <<"ReleaseLifecycle">> => runtime_release_lifecycle(),
%%   <<"RuntimeVersion">> => string(),
%%   <<"RuntimeVersionArn">> => string(),
%%   <<"State">> => list(any())
%% }
-type get_runtime_alias_response() :: #{binary() => any()}.

%% Example:
%% get_runtime_request() :: #{}
-type get_runtime_request() :: #{}.


%% Example:
%% get_runtime_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Created">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> => [string()],
%%   <<"LastModified">> => string(),
%%   <<"LicenseInfo">> => string(),
%%   <<"Name">> => string(),
%%   <<"PendingDeletionAt">> => string(),
%%   <<"ReleaseLifecycle">> => runtime_release_lifecycle(),
%%   <<"State">> => list(any())
%% }
-type get_runtime_response() :: #{binary() => any()}.

%% Example:
%% get_runtime_version_request() :: #{}
-type get_runtime_version_request() :: #{}.


%% Example:
%% get_runtime_version_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Compatibility">> => compatibility(),
%%   <<"Created">> => string(),
%%   <<"LastModified">> => string(),
%%   <<"Name">> => string(),
%%   <<"PendingDeletionAt">> => string(),
%%   <<"Platforms">> => list(platform()),
%%   <<"ReleaseNotes">> => [string()],
%%   <<"ResolvedUri">> => [string()],
%%   <<"State">> => list(any())
%% }
-type get_runtime_version_response() :: #{binary() => any()}.


%% Example:
%% invalid_parameter_value_exception() :: #{
%%   <<"Type">> => string(),
%%   <<"message">> => string()
%% }
-type invalid_parameter_value_exception() :: #{binary() => any()}.


%% Example:
%% list_network_connector_versions_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"State">> => list(any())
%% }
-type list_network_connector_versions_request() :: #{binary() => any()}.


%% Example:
%% list_network_connector_versions_response() :: #{
%%   <<"NetworkConnectorVersions">> => list(network_connector_version_summary()),
%%   <<"NextMarker">> => string()
%% }
-type list_network_connector_versions_response() :: #{binary() => any()}.


%% Example:
%% list_network_connectors_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"State">> => list(any())
%% }
-type list_network_connectors_request() :: #{binary() => any()}.


%% Example:
%% list_network_connectors_response() :: #{
%%   <<"NetworkConnectors">> => list(network_connector_summary()),
%%   <<"NextMarker">> => string()
%% }
-type list_network_connectors_response() :: #{binary() => any()}.


%% Example:
%% list_runtime_aliases_request() :: #{
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => [string()]
%% }
-type list_runtime_aliases_request() :: #{binary() => any()}.


%% Example:
%% list_runtime_aliases_response() :: #{
%%   <<"Items">> => list(runtime_alias_info()),
%%   <<"NextToken">> => [string()]
%% }
-type list_runtime_aliases_response() :: #{binary() => any()}.


%% Example:
%% list_runtime_versions_request() :: #{
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => [string()]
%% }
-type list_runtime_versions_request() :: #{binary() => any()}.


%% Example:
%% list_runtime_versions_response() :: #{
%%   <<"Items">> => list(runtime_version_info()),
%%   <<"NextToken">> => [string()]
%% }
-type list_runtime_versions_response() :: #{binary() => any()}.


%% Example:
%% list_runtimes_request() :: #{
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => [string()]
%% }
-type list_runtimes_request() :: #{binary() => any()}.


%% Example:
%% list_runtimes_response() :: #{
%%   <<"Items">> => list(runtime_info()),
%%   <<"NextToken">> => [string()]
%% }
-type list_runtimes_response() :: #{binary() => any()}.


%% Example:
%% network_connector_limit_exceeded_exception() :: #{
%%   <<"Type">> => string(),
%%   <<"message">> => string()
%% }
-type network_connector_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% network_connector_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastModified">> => non_neg_integer(),
%%   <<"LatestVersion">> => float(),
%%   <<"LatestVersionArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type network_connector_summary() :: #{binary() => any()}.


%% Example:
%% network_connector_version_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastModified">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"State">> => list(any()),
%%   <<"StateReason">> => string(),
%%   <<"StateReasonCode">> => list(any()),
%%   <<"Version">> => float(),
%%   <<"VersionArn">> => string()
%% }
-type network_connector_version_summary() :: #{binary() => any()}.


%% Example:
%% network_connector_vpc_egress_configuration() :: #{
%%   <<"AssociatedComputeResourceTypes">> => list(list(any())()),
%%   <<"NetworkProtocol">> => list(any()),
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"SubnetIds">> => list(string())
%% }
-type network_connector_vpc_egress_configuration() :: #{binary() => any()}.


%% Example:
%% platform() :: #{
%%   <<"Architecture">> => [string()],
%%   <<"Digest">> => [string()],
%%   <<"Os">> => [string()]
%% }
-type platform() :: #{binary() => any()}.


%% Example:
%% resource_conflict_exception() :: #{
%%   <<"Type">> => string(),
%%   <<"message">> => string()
%% }
-type resource_conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% restore_runtime_request() :: #{
%%   <<"RuntimeAlias">> => string(),
%%   <<"RuntimeVersion">> => string()
%% }
-type restore_runtime_request() :: #{binary() => any()}.


%% Example:
%% restore_runtime_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"LastModified">> => string(),
%%   <<"RuntimeAlias">> => string(),
%%   <<"RuntimeName">> => string(),
%%   <<"RuntimeVersion">> => string(),
%%   <<"State">> => list(any())
%% }
-type restore_runtime_response() :: #{binary() => any()}.


%% Example:
%% runtime_alias_info() :: #{
%%   <<"Arn">> => string(),
%%   <<"Compatibility">> => compatibility(),
%%   <<"Created">> => string(),
%%   <<"Description">> => string(),
%%   <<"LastModified">> => string(),
%%   <<"Name">> => string(),
%%   <<"PendingDeletionAt">> => string(),
%%   <<"ReleaseLifecycle">> => runtime_release_lifecycle(),
%%   <<"RuntimeVersion">> => string(),
%%   <<"RuntimeVersionArn">> => string(),
%%   <<"State">> => list(any())
%% }
-type runtime_alias_info() :: #{binary() => any()}.


%% Example:
%% runtime_info() :: #{
%%   <<"Arn">> => string(),
%%   <<"Created">> => string(),
%%   <<"Description">> => string(),
%%   <<"LastModified">> => string(),
%%   <<"LicenseInfo">> => string(),
%%   <<"Name">> => string(),
%%   <<"PendingDeletionAt">> => string(),
%%   <<"ReleaseLifecycle">> => runtime_release_lifecycle(),
%%   <<"State">> => list(any())
%% }
-type runtime_info() :: #{binary() => any()}.


%% Example:
%% runtime_release_lifecycle() :: #{
%%   <<"DeprecationDate">> => string(),
%%   <<"FunctionCreateBlockDate">> => string(),
%%   <<"FunctionUpdateBlockDate">> => string(),
%%   <<"ReleaseState">> => list(any())
%% }
-type runtime_release_lifecycle() :: #{binary() => any()}.


%% Example:
%% runtime_version_info() :: #{
%%   <<"Arn">> => string(),
%%   <<"Compatibility">> => compatibility(),
%%   <<"Created">> => string(),
%%   <<"LastModified">> => string(),
%%   <<"Name">> => string(),
%%   <<"PendingDeletionAt">> => string(),
%%   <<"ReleaseNotes">> => [string()],
%%   <<"ResolvedUri">> => [string()],
%%   <<"State">> => list(any())
%% }
-type runtime_version_info() :: #{binary() => any()}.


%% Example:
%% service_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type service_exception() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"Reason">> => list(any()),
%%   <<"Type">> => string(),
%%   <<"message">> => string(),
%%   <<"retryAfterSeconds">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.


%% Example:
%% update_network_connector_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Configuration">> => list(),
%%   <<"OperatorRole">> => string()
%% }
-type update_network_connector_request() :: #{binary() => any()}.


%% Example:
%% update_network_connector_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Configuration">> => list(),
%%   <<"Id">> => string(),
%%   <<"LastModified">> => non_neg_integer(),
%%   <<"LastUpdateStatus">> => list(any()),
%%   <<"LastUpdateStatusReason">> => string(),
%%   <<"Name">> => string(),
%%   <<"OperatorRole">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Version">> => float(),
%%   <<"VersionArn">> => string()
%% }
-type update_network_connector_response() :: #{binary() => any()}.


%% Example:
%% update_runtime_alias_request() :: #{
%%   <<"Description">> => string(),
%%   <<"ReleaseLifecycle">> => runtime_release_lifecycle(),
%%   <<"RuntimeVersion">> := string()
%% }
-type update_runtime_alias_request() :: #{binary() => any()}.


%% Example:
%% update_runtime_alias_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Compatibility">> => compatibility(),
%%   <<"Created">> => string(),
%%   <<"Description">> => string(),
%%   <<"LastModified">> => string(),
%%   <<"Name">> => string(),
%%   <<"ReleaseLifecycle">> => runtime_release_lifecycle(),
%%   <<"RuntimeName">> => string(),
%%   <<"RuntimeVersion">> => string(),
%%   <<"RuntimeVersionArn">> => string(),
%%   <<"State">> => list(any())
%% }
-type update_runtime_alias_response() :: #{binary() => any()}.


%% Example:
%% update_runtime_request() :: #{
%%   <<"Description">> => string(),
%%   <<"LicenseInfo">> => string(),
%%   <<"ReleaseLifecycle">> => runtime_release_lifecycle()
%% }
-type update_runtime_request() :: #{binary() => any()}.


%% Example:
%% update_runtime_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Created">> => string(),
%%   <<"Description">> => string(),
%%   <<"LastModified">> => string(),
%%   <<"LicenseInfo">> => string(),
%%   <<"Name">> => string(),
%%   <<"ReleaseLifecycle">> => runtime_release_lifecycle()
%% }
-type update_runtime_response() :: #{binary() => any()}.


%% Example:
%% update_runtime_version_request() :: #{
%%   <<"ReleaseNotes">> := [string()]
%% }
-type update_runtime_version_request() :: #{binary() => any()}.


%% Example:
%% update_runtime_version_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Compatibility">> => compatibility(),
%%   <<"Created">> => string(),
%%   <<"LastModified">> => string(),
%%   <<"Name">> => string(),
%%   <<"Platforms">> => list(platform()),
%%   <<"ReleaseNotes">> => [string()],
%%   <<"ResolvedUri">> => [string()],
%%   <<"State">> => list(any())
%% }
-type update_runtime_version_response() :: #{binary() => any()}.

-type create_network_connector_errors() ::
    too_many_requests_exception() | 
    service_exception() | 
    resource_conflict_exception() | 
    network_connector_limit_exceeded_exception() | 
    invalid_parameter_value_exception().

-type create_runtime_errors() ::
    too_many_requests_exception() | 
    service_quota_exceeded_exception() | 
    service_exception() | 
    resource_conflict_exception() | 
    invalid_parameter_value_exception().

-type create_runtime_alias_errors() ::
    too_many_requests_exception() | 
    service_quota_exceeded_exception() | 
    service_exception() | 
    resource_not_found_exception() | 
    resource_conflict_exception() | 
    invalid_parameter_value_exception().

-type create_runtime_version_errors() ::
    too_many_requests_exception() | 
    service_quota_exceeded_exception() | 
    service_exception() | 
    resource_not_found_exception() | 
    resource_conflict_exception() | 
    invalid_parameter_value_exception().

-type delete_network_connector_errors() ::
    too_many_requests_exception() | 
    service_exception() | 
    resource_not_found_exception() | 
    resource_conflict_exception() | 
    invalid_parameter_value_exception().

-type delete_runtime_errors() ::
    too_many_requests_exception() | 
    service_exception() | 
    resource_not_found_exception() | 
    resource_conflict_exception() | 
    invalid_parameter_value_exception().

-type delete_runtime_alias_errors() ::
    too_many_requests_exception() | 
    service_exception() | 
    resource_not_found_exception() | 
    resource_conflict_exception() | 
    invalid_parameter_value_exception().

-type delete_runtime_version_errors() ::
    too_many_requests_exception() | 
    service_exception() | 
    resource_not_found_exception() | 
    resource_conflict_exception() | 
    invalid_parameter_value_exception().

-type get_network_connector_errors() ::
    too_many_requests_exception() | 
    service_exception() | 
    resource_not_found_exception() | 
    invalid_parameter_value_exception().

-type get_runtime_errors() ::
    too_many_requests_exception() | 
    service_exception() | 
    resource_not_found_exception() | 
    invalid_parameter_value_exception().

-type get_runtime_alias_errors() ::
    too_many_requests_exception() | 
    service_exception() | 
    resource_not_found_exception() | 
    invalid_parameter_value_exception().

-type get_runtime_version_errors() ::
    too_many_requests_exception() | 
    service_exception() | 
    resource_not_found_exception() | 
    invalid_parameter_value_exception().

-type list_network_connector_versions_errors() ::
    too_many_requests_exception() | 
    service_exception() | 
    resource_not_found_exception() | 
    invalid_parameter_value_exception().

-type list_network_connectors_errors() ::
    too_many_requests_exception() | 
    service_exception() | 
    invalid_parameter_value_exception().

-type list_runtime_aliases_errors() ::
    too_many_requests_exception() | 
    service_exception() | 
    resource_not_found_exception() | 
    invalid_parameter_value_exception().

-type list_runtime_versions_errors() ::
    too_many_requests_exception() | 
    service_exception() | 
    resource_not_found_exception() | 
    invalid_parameter_value_exception().

-type list_runtimes_errors() ::
    too_many_requests_exception() | 
    service_exception() | 
    invalid_parameter_value_exception().

-type restore_runtime_errors() ::
    too_many_requests_exception() | 
    service_exception() | 
    resource_not_found_exception() | 
    resource_conflict_exception() | 
    invalid_parameter_value_exception().

-type update_network_connector_errors() ::
    too_many_requests_exception() | 
    service_exception() | 
    resource_not_found_exception() | 
    resource_conflict_exception() | 
    network_connector_limit_exceeded_exception() | 
    invalid_parameter_value_exception().

-type update_runtime_errors() ::
    too_many_requests_exception() | 
    service_exception() | 
    resource_not_found_exception() | 
    resource_conflict_exception() | 
    invalid_parameter_value_exception().

-type update_runtime_alias_errors() ::
    too_many_requests_exception() | 
    service_exception() | 
    resource_not_found_exception() | 
    resource_conflict_exception() | 
    invalid_parameter_value_exception().

-type update_runtime_version_errors() ::
    too_many_requests_exception() | 
    service_exception() | 
    resource_not_found_exception() | 
    resource_conflict_exception() | 
    invalid_parameter_value_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a network connector that enables Lambda compute resources to
%% route outbound traffic through your Amazon VPC.
%%
%% The network connector provisions elastic network interfaces (ENIs) in the
%% subnets you specify, providing a managed network path to private resources
%% such as databases, caches, and internal APIs.
%%
%% This operation is asynchronous. The network connector starts in
%% `PENDING' state while ENIs are provisioned in your VPC (provisioning
%% typically takes up to 10 minutes). Use `GetNetworkConnector' to poll
%% the connector state until it reaches `ACTIVE'. Once active, you can
%% attach the connector to supported Lambda compute resources — such as
%% MicroVMs and WebFunctions — at run time. For how to attach a connector,
%% see the documentation for the specific compute type.
%%
%% This operation is idempotent when you provide a `ClientToken' — if you
%% retry a request that completed successfully using the same client token,
%% the operation returns the existing connector without creating a duplicate.
-spec create_network_connector(aws_client:aws_client(), create_network_connector_request()) ->
    {ok, create_network_connector_response(), tuple()} |
    {error, any()} |
    {error, create_network_connector_errors(), tuple()}.
create_network_connector(Client, Input) ->
    create_network_connector(Client, Input, []).

-spec create_network_connector(aws_client:aws_client(), create_network_connector_request(), proplists:proplist()) ->
    {ok, create_network_connector_response(), tuple()} |
    {error, any()} |
    {error, create_network_connector_errors(), tuple()}.
create_network_connector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2026-04-04/network-connectors"],
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

%% @doc Creates a customer-managed runtime, a resource providing a centrally
%% managed execution environment for your Lambda functions.
%%
%% The runtime resource is the parent of the runtime version and runtime
%% alias child resources.
-spec create_runtime(aws_client:aws_client(), create_runtime_request()) ->
    {ok, create_runtime_response(), tuple()} |
    {error, any()} |
    {error, create_runtime_errors(), tuple()}.
create_runtime(Client, Input) ->
    create_runtime(Client, Input, []).

-spec create_runtime(aws_client:aws_client(), create_runtime_request(), proplists:proplist()) ->
    {ok, create_runtime_response(), tuple()} |
    {error, any()} |
    {error, create_runtime_errors(), tuple()}.
create_runtime(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2026-10-01/runtimes"],
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

%% @doc Creates a new customer-managed runtime alias.
%%
%% The alias is a named pointer to a runtime version. Functions consume the
%% customer-managed runtime through the runtime alias.
-spec create_runtime_alias(aws_client:aws_client(), binary() | list(), create_runtime_alias_request()) ->
    {ok, create_runtime_alias_response(), tuple()} |
    {error, any()} |
    {error, create_runtime_alias_errors(), tuple()}.
create_runtime_alias(Client, RuntimeName, Input) ->
    create_runtime_alias(Client, RuntimeName, Input, []).

-spec create_runtime_alias(aws_client:aws_client(), binary() | list(), create_runtime_alias_request(), proplists:proplist()) ->
    {ok, create_runtime_alias_response(), tuple()} |
    {error, any()} |
    {error, create_runtime_alias_errors(), tuple()}.
create_runtime_alias(Client, RuntimeName, Input0, Options0) ->
    Method = post,
    Path = ["/2026-10-01/runtimes/", aws_util:encode_uri(RuntimeName), "/aliases"],
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

%% @doc Creates a new runtime version.
%%
%% A runtime version defines the function execution environment by
%% referencing a container image. Runtime versions are immutable. To update
%% the runtime, create a new runtime version and migrate functions by
%% updating the runtime aliases to point to the new runtime version.
-spec create_runtime_version(aws_client:aws_client(), binary() | list(), create_runtime_version_request()) ->
    {ok, create_runtime_version_response(), tuple()} |
    {error, any()} |
    {error, create_runtime_version_errors(), tuple()}.
create_runtime_version(Client, RuntimeName, Input) ->
    create_runtime_version(Client, RuntimeName, Input, []).

-spec create_runtime_version(aws_client:aws_client(), binary() | list(), create_runtime_version_request(), proplists:proplist()) ->
    {ok, create_runtime_version_response(), tuple()} |
    {error, any()} |
    {error, create_runtime_version_errors(), tuple()}.
create_runtime_version(Client, RuntimeName, Input0, Options0) ->
    Method = post,
    Path = ["/2026-10-01/runtimes/", aws_util:encode_uri(RuntimeName), "/versions"],
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

%% @doc Initiates deletion of a network connector.
%%
%% The connector transitions to `DELETING' state while elastic network
%% interfaces are cleaned up asynchronously. After deletion completes,
%% subsequent calls to `GetNetworkConnector' return
%% `ResourceNotFoundException'.
%%
%% This operation is idempotent — calling delete on a connector that is
%% already deleting or has been deleted succeeds without error. You can
%% delete connectors in `ACTIVE' or `FAILED' states. Before deleting
%% a connector, ensure that no Lambda compute resources are using it, as they
%% will lose VPC egress connectivity immediately.
%%
%% Deleting with an unqualified identifier removes the connector and all of
%% its versions. To remove a single historical version, supply its
%% version-qualified ARN; the connector and its remaining versions are
%% unaffected. You can't delete the latest version on its own — delete
%% the connector to remove it.
-spec delete_network_connector(aws_client:aws_client(), binary() | list(), delete_network_connector_request()) ->
    {ok, delete_network_connector_response(), tuple()} |
    {error, any()} |
    {error, delete_network_connector_errors(), tuple()}.
delete_network_connector(Client, Identifier, Input) ->
    delete_network_connector(Client, Identifier, Input, []).

-spec delete_network_connector(aws_client:aws_client(), binary() | list(), delete_network_connector_request(), proplists:proplist()) ->
    {ok, delete_network_connector_response(), tuple()} |
    {error, any()} |
    {error, delete_network_connector_errors(), tuple()}.
delete_network_connector(Client, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/2026-04-04/network-connectors/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Schedules a customer-managed runtime to be deleted.
%%
%% Runtimes scheduled for deletion enter the PENDING_DELETION state and can
%% be restored during the scheduled deletion window. Runtime versions and
%% aliases must be deleted or scheduled for deletion before deleting the
%% runtime. Function invokes fail for functions using runtime versions or
%% aliases that are deleted or pending deletion.
-spec delete_runtime(aws_client:aws_client(), binary() | list(), delete_runtime_request()) ->
    {ok, delete_runtime_response(), tuple()} |
    {error, any()} |
    {error, delete_runtime_errors(), tuple()}.
delete_runtime(Client, RuntimeName, Input) ->
    delete_runtime(Client, RuntimeName, Input, []).

-spec delete_runtime(aws_client:aws_client(), binary() | list(), delete_runtime_request(), proplists:proplist()) ->
    {ok, delete_runtime_response(), tuple()} |
    {error, any()} |
    {error, delete_runtime_errors(), tuple()}.
delete_runtime(Client, RuntimeName, Input0, Options0) ->
    Method = delete,
    Path = ["/2026-10-01/runtimes/", aws_util:encode_uri(RuntimeName), ""],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amzn-runtime-recovery-window-in-days">>, <<"RecoveryWindowInDays">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Schedules a runtime alias to be deleted.
%%
%% Runtime aliases scheduled for deletion enter the PENDING_DELETION state
%% and can be restored during the scheduled deletion window. Function invokes
%% fail for functions using runtime aliases that are deleted or pending
%% deletion.
-spec delete_runtime_alias(aws_client:aws_client(), binary() | list(), binary() | list(), delete_runtime_alias_request()) ->
    {ok, delete_runtime_alias_response(), tuple()} |
    {error, any()} |
    {error, delete_runtime_alias_errors(), tuple()}.
delete_runtime_alias(Client, Name, RuntimeName, Input) ->
    delete_runtime_alias(Client, Name, RuntimeName, Input, []).

-spec delete_runtime_alias(aws_client:aws_client(), binary() | list(), binary() | list(), delete_runtime_alias_request(), proplists:proplist()) ->
    {ok, delete_runtime_alias_response(), tuple()} |
    {error, any()} |
    {error, delete_runtime_alias_errors(), tuple()}.
delete_runtime_alias(Client, Name, RuntimeName, Input0, Options0) ->
    Method = delete,
    Path = ["/2026-10-01/runtimes/", aws_util:encode_uri(RuntimeName), "/aliases/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amzn-runtime-recovery-window-in-days">>, <<"RecoveryWindowInDays">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Schedules a runtime version to be deleted.
%%
%% Runtime versions scheduled for deletion enter the PENDING_DELETION state
%% and can be restored during the scheduled deletion window. Function invokes
%% fail for functions using a runtime version that is deleted or pending
%% deletion.
-spec delete_runtime_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_runtime_version_request()) ->
    {ok, delete_runtime_version_response(), tuple()} |
    {error, any()} |
    {error, delete_runtime_version_errors(), tuple()}.
delete_runtime_version(Client, Name, RuntimeName, Input) ->
    delete_runtime_version(Client, Name, RuntimeName, Input, []).

-spec delete_runtime_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_runtime_version_request(), proplists:proplist()) ->
    {ok, delete_runtime_version_response(), tuple()} |
    {error, any()} |
    {error, delete_runtime_version_errors(), tuple()}.
delete_runtime_version(Client, Name, RuntimeName, Input0, Options0) ->
    Method = delete,
    Path = ["/2026-10-01/runtimes/", aws_util:encode_uri(RuntimeName), "/versions/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amzn-runtime-recovery-window-in-days">>, <<"RecoveryWindowInDays">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the current configuration, state, and metadata of a network
%% connector.
%%
%% The `Identifier' parameter accepts the connector ID, name, or full
%% ARN. Use this operation to poll connector state after creation or update,
%% or to inspect the current VPC configuration and any failure reasons.
%%
%% The response includes the full connector configuration, current state, and
%% — if the connector has been updated — the `LastUpdateStatus' and
%% `LastUpdateStatusReasonCode' fields that indicate whether the most
%% recent update succeeded or failed.
-spec get_network_connector(aws_client:aws_client(), binary() | list()) ->
    {ok, get_network_connector_response(), tuple()} |
    {error, any()} |
    {error, get_network_connector_errors(), tuple()}.
get_network_connector(Client, Identifier)
  when is_map(Client) ->
    get_network_connector(Client, Identifier, #{}, #{}).

-spec get_network_connector(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_network_connector_response(), tuple()} |
    {error, any()} |
    {error, get_network_connector_errors(), tuple()}.
get_network_connector(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_network_connector(Client, Identifier, QueryMap, HeadersMap, []).

-spec get_network_connector(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_network_connector_response(), tuple()} |
    {error, any()} |
    {error, get_network_connector_errors(), tuple()}.
get_network_connector(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2026-04-04/network-connectors/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the configuration and metadata of a runtime.
-spec get_runtime(aws_client:aws_client(), binary() | list()) ->
    {ok, get_runtime_response(), tuple()} |
    {error, any()} |
    {error, get_runtime_errors(), tuple()}.
get_runtime(Client, RuntimeName)
  when is_map(Client) ->
    get_runtime(Client, RuntimeName, #{}, #{}).

-spec get_runtime(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_runtime_response(), tuple()} |
    {error, any()} |
    {error, get_runtime_errors(), tuple()}.
get_runtime(Client, RuntimeName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_runtime(Client, RuntimeName, QueryMap, HeadersMap, []).

-spec get_runtime(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_runtime_response(), tuple()} |
    {error, any()} |
    {error, get_runtime_errors(), tuple()}.
get_runtime(Client, RuntimeName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2026-10-01/runtimes/", aws_util:encode_uri(RuntimeName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the configuration, state, and metadata of a runtime alias.
-spec get_runtime_alias(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_runtime_alias_response(), tuple()} |
    {error, any()} |
    {error, get_runtime_alias_errors(), tuple()}.
get_runtime_alias(Client, Name, RuntimeName)
  when is_map(Client) ->
    get_runtime_alias(Client, Name, RuntimeName, #{}, #{}).

-spec get_runtime_alias(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_runtime_alias_response(), tuple()} |
    {error, any()} |
    {error, get_runtime_alias_errors(), tuple()}.
get_runtime_alias(Client, Name, RuntimeName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_runtime_alias(Client, Name, RuntimeName, QueryMap, HeadersMap, []).

-spec get_runtime_alias(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_runtime_alias_response(), tuple()} |
    {error, any()} |
    {error, get_runtime_alias_errors(), tuple()}.
get_runtime_alias(Client, Name, RuntimeName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2026-10-01/runtimes/", aws_util:encode_uri(RuntimeName), "/aliases/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the configuration, state, and metadata of a runtime
%% version.
-spec get_runtime_version(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_runtime_version_response(), tuple()} |
    {error, any()} |
    {error, get_runtime_version_errors(), tuple()}.
get_runtime_version(Client, Name, RuntimeName)
  when is_map(Client) ->
    get_runtime_version(Client, Name, RuntimeName, #{}, #{}).

-spec get_runtime_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_runtime_version_response(), tuple()} |
    {error, any()} |
    {error, get_runtime_version_errors(), tuple()}.
get_runtime_version(Client, Name, RuntimeName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_runtime_version(Client, Name, RuntimeName, QueryMap, HeadersMap, []).

-spec get_runtime_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_runtime_version_response(), tuple()} |
    {error, any()} |
    {error, get_runtime_version_errors(), tuple()}.
get_runtime_version(Client, Name, RuntimeName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2026-10-01/runtimes/", aws_util:encode_uri(RuntimeName), "/versions/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a paginated list of the versions of a network connector.
%%
%% Each configuration update creates a new immutable version; this operation
%% lists those versions for the connector you specify. You can optionally
%% filter results by version state. Use the `Marker' parameter from a
%% previous response to retrieve the next page of results.
%%
%% Each item in the response includes the version-qualified ARN, version
%% number, current state, and last modified timestamp for that version. To
%% retrieve the current (latest) configuration of the connector, use
%% `GetNetworkConnector'; to inspect a specific version, call
%% `GetNetworkConnector' with a version-qualified identifier.
-spec list_network_connector_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_network_connector_versions_response(), tuple()} |
    {error, any()} |
    {error, list_network_connector_versions_errors(), tuple()}.
list_network_connector_versions(Client, Identifier)
  when is_map(Client) ->
    list_network_connector_versions(Client, Identifier, #{}, #{}).

-spec list_network_connector_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_network_connector_versions_response(), tuple()} |
    {error, any()} |
    {error, list_network_connector_versions_errors(), tuple()}.
list_network_connector_versions(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_network_connector_versions(Client, Identifier, QueryMap, HeadersMap, []).

-spec list_network_connector_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_network_connector_versions_response(), tuple()} |
    {error, any()} |
    {error, list_network_connector_versions_errors(), tuple()}.
list_network_connector_versions(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2026-04-04/network-connectors/", aws_util:encode_uri(Identifier), "/versions"],
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
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)},
        {<<"State">>, maps:get(<<"State">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a paginated list of network connectors in your account for
%% the current Region.
%%
%% You can optionally filter results by connector state. Use the `Marker'
%% parameter from a previous response to retrieve the next page of results.
%%
%% Each item in the response includes the connector ARN, name, ID, type,
%% current state, and last modified timestamp. To retrieve full configuration
%% details for a specific connector, use `GetNetworkConnector'.
-spec list_network_connectors(aws_client:aws_client()) ->
    {ok, list_network_connectors_response(), tuple()} |
    {error, any()} |
    {error, list_network_connectors_errors(), tuple()}.
list_network_connectors(Client)
  when is_map(Client) ->
    list_network_connectors(Client, #{}, #{}).

-spec list_network_connectors(aws_client:aws_client(), map(), map()) ->
    {ok, list_network_connectors_response(), tuple()} |
    {error, any()} |
    {error, list_network_connectors_errors(), tuple()}.
list_network_connectors(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_network_connectors(Client, QueryMap, HeadersMap, []).

-spec list_network_connectors(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_network_connectors_response(), tuple()} |
    {error, any()} |
    {error, list_network_connectors_errors(), tuple()}.
list_network_connectors(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2026-04-04/network-connectors"],
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
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)},
        {<<"State">>, maps:get(<<"State">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a paginated list of aliases for the specified runtime.
-spec list_runtime_aliases(aws_client:aws_client(), binary() | list()) ->
    {ok, list_runtime_aliases_response(), tuple()} |
    {error, any()} |
    {error, list_runtime_aliases_errors(), tuple()}.
list_runtime_aliases(Client, RuntimeName)
  when is_map(Client) ->
    list_runtime_aliases(Client, RuntimeName, #{}, #{}).

-spec list_runtime_aliases(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_runtime_aliases_response(), tuple()} |
    {error, any()} |
    {error, list_runtime_aliases_errors(), tuple()}.
list_runtime_aliases(Client, RuntimeName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_runtime_aliases(Client, RuntimeName, QueryMap, HeadersMap, []).

-spec list_runtime_aliases(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_runtime_aliases_response(), tuple()} |
    {error, any()} |
    {error, list_runtime_aliases_errors(), tuple()}.
list_runtime_aliases(Client, RuntimeName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2026-10-01/runtimes/", aws_util:encode_uri(RuntimeName), "/aliases"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a paginated list of versions for the specified runtime.
-spec list_runtime_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_runtime_versions_response(), tuple()} |
    {error, any()} |
    {error, list_runtime_versions_errors(), tuple()}.
list_runtime_versions(Client, RuntimeName)
  when is_map(Client) ->
    list_runtime_versions(Client, RuntimeName, #{}, #{}).

-spec list_runtime_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_runtime_versions_response(), tuple()} |
    {error, any()} |
    {error, list_runtime_versions_errors(), tuple()}.
list_runtime_versions(Client, RuntimeName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_runtime_versions(Client, RuntimeName, QueryMap, HeadersMap, []).

-spec list_runtime_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_runtime_versions_response(), tuple()} |
    {error, any()} |
    {error, list_runtime_versions_errors(), tuple()}.
list_runtime_versions(Client, RuntimeName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2026-10-01/runtimes/", aws_util:encode_uri(RuntimeName), "/versions"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a paginated list of runtimes in your account for the current
%% Region.
-spec list_runtimes(aws_client:aws_client()) ->
    {ok, list_runtimes_response(), tuple()} |
    {error, any()} |
    {error, list_runtimes_errors(), tuple()}.
list_runtimes(Client)
  when is_map(Client) ->
    list_runtimes(Client, #{}, #{}).

-spec list_runtimes(aws_client:aws_client(), map(), map()) ->
    {ok, list_runtimes_response(), tuple()} |
    {error, any()} |
    {error, list_runtimes_errors(), tuple()}.
list_runtimes(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_runtimes(Client, QueryMap, HeadersMap, []).

-spec list_runtimes(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_runtimes_response(), tuple()} |
    {error, any()} |
    {error, list_runtimes_errors(), tuple()}.
list_runtimes(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2026-10-01/runtimes"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Cancels a pending scheduled deletion, returning the resource to the
%% ACTIVE state.
%%
%% Scope is
%% determined by the RuntimeName path parameter plus an optional, mutually
%% exclusive RuntimeVersion
%% or RuntimeAlias query parameter: with neither, the runtime itself is
%% restored; with RuntimeVersion,
%% the named runtime version; with RuntimeAlias, the named runtime alias.
%% Restoring a resource that is
%% already ACTIVE is a no-op success. Restore only works while the target is
%% PENDING_DELETION; once the
%% scheduled deletion has begun executing (DELETING) or has completed, the
%% call fails.
-spec restore_runtime(aws_client:aws_client(), binary() | list(), restore_runtime_request()) ->
    {ok, restore_runtime_response(), tuple()} |
    {error, any()} |
    {error, restore_runtime_errors(), tuple()}.
restore_runtime(Client, RuntimeName, Input) ->
    restore_runtime(Client, RuntimeName, Input, []).

-spec restore_runtime(aws_client:aws_client(), binary() | list(), restore_runtime_request(), proplists:proplist()) ->
    {ok, restore_runtime_response(), tuple()} |
    {error, any()} |
    {error, restore_runtime_errors(), tuple()}.
restore_runtime(Client, RuntimeName, Input0, Options0) ->
    Method = post,
    Path = ["/2026-10-01/runtimes/", aws_util:encode_uri(RuntimeName), "/restore"],
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
                     {<<"RuntimeAlias">>, <<"RuntimeAlias">>},
                     {<<"RuntimeVersion">>, <<"RuntimeVersion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the VPC configuration or operator role of an existing network
%% connector.
%%
%% You can modify the subnet IDs, security group IDs, network protocol, or
%% operator role. The connector must be in `ACTIVE' state to accept
%% updates.
%%
%% This operation is asynchronous. The connector remains in `ACTIVE'
%% state during the update — existing workloads that reference this connector
%% are not disrupted. Use `GetNetworkConnector' to monitor the
%% `LastUpdateStatus' field, which transitions through `InProgress'
%% to `Successful' or `Failed'. If the update fails, the
%% `LastUpdateStatusReasonCode' field provides a specific error code for
%% troubleshooting. This operation is idempotent when you provide a
%% `ClientToken'.
%%
%% Each successful configuration change creates a new immutable version. A
%% connector can have a limited number of versions; once that limit is
%% reached, further updates fail with
%% `NetworkConnectorLimitExceededException' until you delete older
%% versions.
-spec update_network_connector(aws_client:aws_client(), binary() | list(), update_network_connector_request()) ->
    {ok, update_network_connector_response(), tuple()} |
    {error, any()} |
    {error, update_network_connector_errors(), tuple()}.
update_network_connector(Client, Identifier, Input) ->
    update_network_connector(Client, Identifier, Input, []).

-spec update_network_connector(aws_client:aws_client(), binary() | list(), update_network_connector_request(), proplists:proplist()) ->
    {ok, update_network_connector_response(), tuple()} |
    {error, any()} |
    {error, update_network_connector_errors(), tuple()}.
update_network_connector(Client, Identifier, Input0, Options0) ->
    Method = put,
    Path = ["/2026-04-04/network-connectors/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Updates the properties of an existing customer-managed runtime, such
%% as its description, license information, or lifecycle information.
-spec update_runtime(aws_client:aws_client(), binary() | list(), update_runtime_request()) ->
    {ok, update_runtime_response(), tuple()} |
    {error, any()} |
    {error, update_runtime_errors(), tuple()}.
update_runtime(Client, RuntimeName, Input) ->
    update_runtime(Client, RuntimeName, Input, []).

-spec update_runtime(aws_client:aws_client(), binary() | list(), update_runtime_request(), proplists:proplist()) ->
    {ok, update_runtime_response(), tuple()} |
    {error, any()} |
    {error, update_runtime_errors(), tuple()}.
update_runtime(Client, RuntimeName, Input0, Options0) ->
    Method = put,
    Path = ["/2026-10-01/runtimes/", aws_util:encode_uri(RuntimeName), ""],
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

%% @doc Updates an existing runtime alias to point to a different runtime
%% version or to change its description or lifecycle information.
-spec update_runtime_alias(aws_client:aws_client(), binary() | list(), binary() | list(), update_runtime_alias_request()) ->
    {ok, update_runtime_alias_response(), tuple()} |
    {error, any()} |
    {error, update_runtime_alias_errors(), tuple()}.
update_runtime_alias(Client, Name, RuntimeName, Input) ->
    update_runtime_alias(Client, Name, RuntimeName, Input, []).

-spec update_runtime_alias(aws_client:aws_client(), binary() | list(), binary() | list(), update_runtime_alias_request(), proplists:proplist()) ->
    {ok, update_runtime_alias_response(), tuple()} |
    {error, any()} |
    {error, update_runtime_alias_errors(), tuple()}.
update_runtime_alias(Client, Name, RuntimeName, Input0, Options0) ->
    Method = put,
    Path = ["/2026-10-01/runtimes/", aws_util:encode_uri(RuntimeName), "/aliases/", aws_util:encode_uri(Name), ""],
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

%% @doc Updates the runtime version release notes.
%%
%% The runtime version must be in the ACTIVE state. The runtime version image
%% is immutable. To change the runtime contents, create a new runtime
%% version.
-spec update_runtime_version(aws_client:aws_client(), binary() | list(), binary() | list(), update_runtime_version_request()) ->
    {ok, update_runtime_version_response(), tuple()} |
    {error, any()} |
    {error, update_runtime_version_errors(), tuple()}.
update_runtime_version(Client, Name, RuntimeName, Input) ->
    update_runtime_version(Client, Name, RuntimeName, Input, []).

-spec update_runtime_version(aws_client:aws_client(), binary() | list(), binary() | list(), update_runtime_version_request(), proplists:proplist()) ->
    {ok, update_runtime_version_response(), tuple()} |
    {error, any()} |
    {error, update_runtime_version_errors(), tuple()}.
update_runtime_version(Client, Name, RuntimeName, Input0, Options0) ->
    Method = patch,
    Path = ["/2026-10-01/runtimes/", aws_util:encode_uri(RuntimeName), "/versions/", aws_util:encode_uri(Name), ""],
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
    {ok, Result, {integer(), list(), term()}} |
    {error, Error, {integer(), list(), term()}} |
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
    {URL1, Host} = aws_util:apply_endpoint_url_override(URL0, DefaultHost, PathBin, <<"AWS_ENDPOINT_URL_LAMBDA_CORE">>),
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
    case response_body(Client) of
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
    {ok, Body} = response_body(Client),
    try
      DecodedError = jsx:decode(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

%% hackney 1.x and 2.x return a client reference that is read with
%% hackney:body/1. hackney 3.0 removed hackney:body/1 and returns the body in
%% the response tuple, so a binary is already the body.
response_body(Body) when is_binary(Body) ->
    {ok, Body};
response_body(Client) ->
    apply(hackney, body, [Client]).

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

