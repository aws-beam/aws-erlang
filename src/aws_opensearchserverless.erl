%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Use the Amazon OpenSearch Serverless API to create, configure, and
%% manage OpenSearch Serverless collections and
%% security policies.
%%
%% OpenSearch Serverless is an on-demand, pre-provisioned serverless
%% configuration for
%% Amazon OpenSearch Service. OpenSearch Serverless removes the operational
%% complexities of provisioning,
%% configuring, and tuning your OpenSearch clusters. It enables you to easily
%% search and
%% analyze petabytes of data without having to worry about the underlying
%% infrastructure
%% and data management.
%%
%% To learn more about OpenSearch Serverless, see What is
%% Amazon OpenSearch Serverless?:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-overview.html
-module(aws_opensearchserverless).

-export([batch_get_collection/2,
         batch_get_collection/3,
         batch_get_effective_lifecycle_policy/2,
         batch_get_effective_lifecycle_policy/3,
         batch_get_lifecycle_policy/2,
         batch_get_lifecycle_policy/3,
         batch_get_vpc_endpoint/2,
         batch_get_vpc_endpoint/3,
         create_access_policy/2,
         create_access_policy/3,
         create_collection/2,
         create_collection/3,
         create_lifecycle_policy/2,
         create_lifecycle_policy/3,
         create_security_config/2,
         create_security_config/3,
         create_security_policy/2,
         create_security_policy/3,
         create_vpc_endpoint/2,
         create_vpc_endpoint/3,
         delete_access_policy/2,
         delete_access_policy/3,
         delete_collection/2,
         delete_collection/3,
         delete_lifecycle_policy/2,
         delete_lifecycle_policy/3,
         delete_security_config/2,
         delete_security_config/3,
         delete_security_policy/2,
         delete_security_policy/3,
         delete_vpc_endpoint/2,
         delete_vpc_endpoint/3,
         get_access_policy/2,
         get_access_policy/3,
         get_account_settings/2,
         get_account_settings/3,
         get_policies_stats/2,
         get_policies_stats/3,
         get_security_config/2,
         get_security_config/3,
         get_security_policy/2,
         get_security_policy/3,
         list_access_policies/2,
         list_access_policies/3,
         list_collections/2,
         list_collections/3,
         list_lifecycle_policies/2,
         list_lifecycle_policies/3,
         list_security_configs/2,
         list_security_configs/3,
         list_security_policies/2,
         list_security_policies/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_vpc_endpoints/2,
         list_vpc_endpoints/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_access_policy/2,
         update_access_policy/3,
         update_account_settings/2,
         update_account_settings/3,
         update_collection/2,
         update_collection/3,
         update_lifecycle_policy/2,
         update_lifecycle_policy/3,
         update_security_config/2,
         update_security_config/3,
         update_security_policy/2,
         update_security_policy/3,
         update_vpc_endpoint/2,
         update_vpc_endpoint/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% collection_filters() :: #{
%%   <<"name">> => string(),
%%   <<"status">> => string()
%% }
-type collection_filters() :: #{binary() => any()}.

%% Example:
%% list_access_policies_response() :: #{
%%   <<"accessPolicySummaries">> => list(access_policy_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_access_policies_response() :: #{binary() => any()}.

%% Example:
%% batch_get_lifecycle_policy_request() :: #{
%%   <<"identifiers">> := list(lifecycle_policy_identifier())
%% }
-type batch_get_lifecycle_policy_request() :: #{binary() => any()}.

%% Example:
%% delete_vpc_endpoint_detail() :: #{
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => string()
%% }
-type delete_vpc_endpoint_detail() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% iam_identity_center_config_options() :: #{
%%   <<"applicationArn">> => string(),
%%   <<"applicationDescription">> => [string()],
%%   <<"applicationName">> => [string()],
%%   <<"groupAttribute">> => string(),
%%   <<"instanceArn">> => string(),
%%   <<"userAttribute">> => string()
%% }
-type iam_identity_center_config_options() :: #{binary() => any()}.

%% Example:
%% collection_error_detail() :: #{
%%   <<"errorCode">> => [string()],
%%   <<"errorMessage">> => [string()],
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type collection_error_detail() :: #{binary() => any()}.

%% Example:
%% security_policy_summary() :: #{
%%   <<"createdDate">> => [float()],
%%   <<"description">> => string(),
%%   <<"lastModifiedDate">> => [float()],
%%   <<"name">> => string(),
%%   <<"policyVersion">> => string(),
%%   <<"type">> => string()
%% }
-type security_policy_summary() :: #{binary() => any()}.

%% Example:
%% delete_security_config_response() :: #{

%% }
-type delete_security_config_response() :: #{binary() => any()}.

%% Example:
%% list_security_configs_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()],
%%   <<"type">> := string()
%% }
-type list_security_configs_request() :: #{binary() => any()}.

%% Example:
%% update_lifecycle_policy_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"policy">> => string(),
%%   <<"policyVersion">> := string(),
%%   <<"type">> := string()
%% }
-type update_lifecycle_policy_request() :: #{binary() => any()}.

%% Example:
%% batch_get_collection_response() :: #{
%%   <<"collectionDetails">> => list(collection_detail()),
%%   <<"collectionErrorDetails">> => list(collection_error_detail())
%% }
-type batch_get_collection_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% batch_get_lifecycle_policy_response() :: #{
%%   <<"lifecyclePolicyDetails">> => list(lifecycle_policy_detail()),
%%   <<"lifecyclePolicyErrorDetails">> => list(lifecycle_policy_error_detail())
%% }
-type batch_get_lifecycle_policy_response() :: #{binary() => any()}.

%% Example:
%% get_account_settings_request() :: #{

%% }
-type get_account_settings_request() :: #{binary() => any()}.

%% Example:
%% security_config_stats() :: #{
%%   <<"SamlConfigCount">> => [float()]
%% }
-type security_config_stats() :: #{binary() => any()}.

%% Example:
%% delete_access_policy_response() :: #{

%% }
-type delete_access_policy_response() :: #{binary() => any()}.

%% Example:
%% collection_summary() :: #{
%%   <<"arn">> => [string()],
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => string()
%% }
-type collection_summary() :: #{binary() => any()}.

%% Example:
%% get_account_settings_response() :: #{
%%   <<"accountSettingsDetail">> => account_settings_detail()
%% }
-type get_account_settings_response() :: #{binary() => any()}.

%% Example:
%% list_vpc_endpoints_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()],
%%   <<"vpcEndpointFilters">> => vpc_endpoint_filters()
%% }
-type list_vpc_endpoints_request() :: #{binary() => any()}.

%% Example:
%% update_lifecycle_policy_response() :: #{
%%   <<"lifecyclePolicyDetail">> => lifecycle_policy_detail()
%% }
-type update_lifecycle_policy_response() :: #{binary() => any()}.

%% Example:
%% vpc_endpoint_summary() :: #{
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => string()
%% }
-type vpc_endpoint_summary() :: #{binary() => any()}.

%% Example:
%% list_vpc_endpoints_response() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"vpcEndpointSummaries">> => list(vpc_endpoint_summary())
%% }
-type list_vpc_endpoints_response() :: #{binary() => any()}.

%% Example:
%% get_security_policy_request() :: #{
%%   <<"name">> := string(),
%%   <<"type">> := string()
%% }
-type get_security_policy_request() :: #{binary() => any()}.

%% Example:
%% collection_detail() :: #{
%%   <<"arn">> => [string()],
%%   <<"collectionEndpoint">> => [string()],
%%   <<"createdDate">> => [float()],
%%   <<"dashboardEndpoint">> => [string()],
%%   <<"description">> => [string()],
%%   <<"failureCode">> => [string()],
%%   <<"failureMessage">> => [string()],
%%   <<"id">> => string(),
%%   <<"kmsKeyArn">> => [string()],
%%   <<"lastModifiedDate">> => [float()],
%%   <<"name">> => string(),
%%   <<"standbyReplicas">> => string(),
%%   <<"status">> => string(),
%%   <<"type">> => string()
%% }
-type collection_detail() :: #{binary() => any()}.

%% Example:
%% update_account_settings_response() :: #{
%%   <<"accountSettingsDetail">> => account_settings_detail()
%% }
-type update_account_settings_response() :: #{binary() => any()}.

%% Example:
%% delete_access_policy_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"name">> := string(),
%%   <<"type">> := string()
%% }
-type delete_access_policy_request() :: #{binary() => any()}.

%% Example:
%% list_lifecycle_policies_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()],
%%   <<"resources">> => list(string()),
%%   <<"type">> := string()
%% }
-type list_lifecycle_policies_request() :: #{binary() => any()}.

%% Example:
%% list_access_policies_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()],
%%   <<"resource">> => list(string()),
%%   <<"type">> := string()
%% }
-type list_access_policies_request() :: #{binary() => any()}.

%% Example:
%% create_access_policy_response() :: #{
%%   <<"accessPolicyDetail">> => access_policy_detail()
%% }
-type create_access_policy_response() :: #{binary() => any()}.

%% Example:
%% access_policy_summary() :: #{
%%   <<"createdDate">> => [float()],
%%   <<"description">> => string(),
%%   <<"lastModifiedDate">> => [float()],
%%   <<"name">> => string(),
%%   <<"policyVersion">> => string(),
%%   <<"type">> => string()
%% }
-type access_policy_summary() :: #{binary() => any()}.

%% Example:
%% vpc_endpoint_filters() :: #{
%%   <<"status">> => string()
%% }
-type vpc_endpoint_filters() :: #{binary() => any()}.

%% Example:
%% delete_vpc_endpoint_response() :: #{
%%   <<"deleteVpcEndpointDetail">> => delete_vpc_endpoint_detail()
%% }
-type delete_vpc_endpoint_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% batch_get_vpc_endpoint_request() :: #{
%%   <<"ids">> := list(string())
%% }
-type batch_get_vpc_endpoint_request() :: #{binary() => any()}.

%% Example:
%% list_collections_response() :: #{
%%   <<"collectionSummaries">> => list(collection_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_collections_response() :: #{binary() => any()}.

%% Example:
%% get_security_policy_response() :: #{
%%   <<"securityPolicyDetail">> => security_policy_detail()
%% }
-type get_security_policy_response() :: #{binary() => any()}.

%% Example:
%% vpc_endpoint_error_detail() :: #{
%%   <<"errorCode">> => [string()],
%%   <<"errorMessage">> => [string()],
%%   <<"id">> => string()
%% }
-type vpc_endpoint_error_detail() :: #{binary() => any()}.

%% Example:
%% lifecycle_policy_resource_identifier() :: #{
%%   <<"resource">> => string(),
%%   <<"type">> => string()
%% }
-type lifecycle_policy_resource_identifier() :: #{binary() => any()}.

%% Example:
%% update_access_policy_response() :: #{
%%   <<"accessPolicyDetail">> => access_policy_detail()
%% }
-type update_access_policy_response() :: #{binary() => any()}.

%% Example:
%% iam_federation_config_options() :: #{
%%   <<"groupAttribute">> => string(),
%%   <<"userAttribute">> => string()
%% }
-type iam_federation_config_options() :: #{binary() => any()}.

%% Example:
%% update_security_config_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"configVersion">> := string(),
%%   <<"description">> => string(),
%%   <<"iamFederationOptions">> => iam_federation_config_options(),
%%   <<"iamIdentityCenterOptionsUpdates">> => update_iam_identity_center_config_options(),
%%   <<"id">> := string(),
%%   <<"samlOptions">> => saml_config_options()
%% }
-type update_security_config_request() :: #{binary() => any()}.

%% Example:
%% lifecycle_policy_error_detail() :: #{
%%   <<"errorCode">> => [string()],
%%   <<"errorMessage">> => [string()],
%%   <<"name">> => string(),
%%   <<"type">> => string()
%% }
-type lifecycle_policy_error_detail() :: #{binary() => any()}.

%% Example:
%% delete_lifecycle_policy_response() :: #{

%% }
-type delete_lifecycle_policy_response() :: #{binary() => any()}.

%% Example:
%% vpc_endpoint_detail() :: #{
%%   <<"createdDate">> => [float()],
%%   <<"failureCode">> => [string()],
%%   <<"failureMessage">> => [string()],
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"securityGroupIds">> => list(string()),
%%   <<"status">> => string(),
%%   <<"subnetIds">> => list(string()),
%%   <<"vpcId">> => string()
%% }
-type vpc_endpoint_detail() :: #{binary() => any()}.

%% Example:
%% security_policy_detail() :: #{
%%   <<"createdDate">> => [float()],
%%   <<"description">> => string(),
%%   <<"lastModifiedDate">> => [float()],
%%   <<"name">> => string(),
%%   <<"policy">> => [any()],
%%   <<"policyVersion">> => string(),
%%   <<"type">> => string()
%% }
-type security_policy_detail() :: #{binary() => any()}.

%% Example:
%% create_security_policy_response() :: #{
%%   <<"securityPolicyDetail">> => security_policy_detail()
%% }
-type create_security_policy_response() :: #{binary() => any()}.

%% Example:
%% lifecycle_policy_detail() :: #{
%%   <<"createdDate">> => [float()],
%%   <<"description">> => string(),
%%   <<"lastModifiedDate">> => [float()],
%%   <<"name">> => string(),
%%   <<"policy">> => [any()],
%%   <<"policyVersion">> => string(),
%%   <<"type">> => string()
%% }
-type lifecycle_policy_detail() :: #{binary() => any()}.

%% Example:
%% get_access_policy_request() :: #{
%%   <<"name">> := string(),
%%   <<"type">> := string()
%% }
-type get_access_policy_request() :: #{binary() => any()}.

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
%% batch_get_effective_lifecycle_policy_request() :: #{
%%   <<"resourceIdentifiers">> := list(lifecycle_policy_resource_identifier())
%% }
-type batch_get_effective_lifecycle_policy_request() :: #{binary() => any()}.

%% Example:
%% lifecycle_policy_summary() :: #{
%%   <<"createdDate">> => [float()],
%%   <<"description">> => string(),
%%   <<"lastModifiedDate">> => [float()],
%%   <<"name">> => string(),
%%   <<"policyVersion">> => string(),
%%   <<"type">> => string()
%% }
-type lifecycle_policy_summary() :: #{binary() => any()}.

%% Example:
%% list_collections_request() :: #{
%%   <<"collectionFilters">> => collection_filters(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_collections_request() :: #{binary() => any()}.

%% Example:
%% delete_collection_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"id">> := string()
%% }
-type delete_collection_request() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% get_access_policy_response() :: #{
%%   <<"accessPolicyDetail">> => access_policy_detail()
%% }
-type get_access_policy_response() :: #{binary() => any()}.

%% Example:
%% security_config_summary() :: #{
%%   <<"configVersion">> => string(),
%%   <<"createdDate">> => [float()],
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"lastModifiedDate">> => [float()],
%%   <<"type">> => string()
%% }
-type security_config_summary() :: #{binary() => any()}.

%% Example:
%% create_security_config_response() :: #{
%%   <<"securityConfigDetail">> => security_config_detail()
%% }
-type create_security_config_response() :: #{binary() => any()}.

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
%% list_lifecycle_policies_response() :: #{
%%   <<"lifecyclePolicySummaries">> => list(lifecycle_policy_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_lifecycle_policies_response() :: #{binary() => any()}.

%% Example:
%% get_security_config_response() :: #{
%%   <<"securityConfigDetail">> => security_config_detail()
%% }
-type get_security_config_response() :: #{binary() => any()}.

%% Example:
%% delete_security_policy_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"name">> := string(),
%%   <<"type">> := string()
%% }
-type delete_security_policy_request() :: #{binary() => any()}.

%% Example:
%% update_iam_identity_center_config_options() :: #{
%%   <<"groupAttribute">> => string(),
%%   <<"userAttribute">> => string()
%% }
-type update_iam_identity_center_config_options() :: #{binary() => any()}.

%% Example:
%% security_policy_stats() :: #{
%%   <<"EncryptionPolicyCount">> => [float()],
%%   <<"NetworkPolicyCount">> => [float()]
%% }
-type security_policy_stats() :: #{binary() => any()}.

%% Example:
%% account_settings_detail() :: #{
%%   <<"capacityLimits">> => capacity_limits()
%% }
-type account_settings_detail() :: #{binary() => any()}.

%% Example:
%% delete_collection_detail() :: #{
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => string()
%% }
-type delete_collection_detail() :: #{binary() => any()}.

%% Example:
%% create_collection_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => [string()],
%%   <<"name">> := string(),
%%   <<"standbyReplicas">> => string(),
%%   <<"tags">> => list(tag()),
%%   <<"type">> => string()
%% }
-type create_collection_request() :: #{binary() => any()}.

%% Example:
%% update_vpc_endpoint_response() :: #{
%%   <<"UpdateVpcEndpointDetail">> => update_vpc_endpoint_detail()
%% }
-type update_vpc_endpoint_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% update_account_settings_request() :: #{
%%   <<"capacityLimits">> => capacity_limits()
%% }
-type update_account_settings_request() :: #{binary() => any()}.

%% Example:
%% update_collection_response() :: #{
%%   <<"updateCollectionDetail">> => update_collection_detail()
%% }
-type update_collection_response() :: #{binary() => any()}.

%% Example:
%% create_lifecycle_policy_response() :: #{
%%   <<"lifecyclePolicyDetail">> => lifecycle_policy_detail()
%% }
-type create_lifecycle_policy_response() :: #{binary() => any()}.

%% Example:
%% security_config_detail() :: #{
%%   <<"configVersion">> => string(),
%%   <<"createdDate">> => [float()],
%%   <<"description">> => string(),
%%   <<"iamFederationOptions">> => iam_federation_config_options(),
%%   <<"iamIdentityCenterOptions">> => iam_identity_center_config_options(),
%%   <<"id">> => string(),
%%   <<"lastModifiedDate">> => [float()],
%%   <<"samlOptions">> => saml_config_options(),
%%   <<"type">> => string()
%% }
-type security_config_detail() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% create_collection_response() :: #{
%%   <<"createCollectionDetail">> => create_collection_detail()
%% }
-type create_collection_response() :: #{binary() => any()}.

%% Example:
%% update_security_config_response() :: #{
%%   <<"securityConfigDetail">> => security_config_detail()
%% }
-type update_security_config_response() :: #{binary() => any()}.

%% Example:
%% batch_get_collection_request() :: #{
%%   <<"ids">> => list(string()),
%%   <<"names">> => list(string())
%% }
-type batch_get_collection_request() :: #{binary() => any()}.

%% Example:
%% create_vpc_endpoint_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"name">> := string(),
%%   <<"securityGroupIds">> => list(string()),
%%   <<"subnetIds">> := list(string()),
%%   <<"vpcId">> := string()
%% }
-type create_vpc_endpoint_request() :: #{binary() => any()}.

%% Example:
%% delete_lifecycle_policy_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"name">> := string(),
%%   <<"type">> := string()
%% }
-type delete_lifecycle_policy_request() :: #{binary() => any()}.

%% Example:
%% get_policies_stats_response() :: #{
%%   <<"AccessPolicyStats">> => access_policy_stats(),
%%   <<"LifecyclePolicyStats">> => lifecycle_policy_stats(),
%%   <<"SecurityConfigStats">> => security_config_stats(),
%%   <<"SecurityPolicyStats">> => security_policy_stats(),
%%   <<"TotalPolicyCount">> => [float()]
%% }
-type get_policies_stats_response() :: #{binary() => any()}.

%% Example:
%% list_security_configs_response() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"securityConfigSummaries">> => list(security_config_summary())
%% }
-type list_security_configs_response() :: #{binary() => any()}.

%% Example:
%% access_policy_detail() :: #{
%%   <<"createdDate">> => [float()],
%%   <<"description">> => string(),
%%   <<"lastModifiedDate">> => [float()],
%%   <<"name">> => string(),
%%   <<"policy">> => [any()],
%%   <<"policyVersion">> => string(),
%%   <<"type">> => string()
%% }
-type access_policy_detail() :: #{binary() => any()}.

%% Example:
%% list_security_policies_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()],
%%   <<"resource">> => list(string()),
%%   <<"type">> := string()
%% }
-type list_security_policies_request() :: #{binary() => any()}.

%% Example:
%% list_security_policies_response() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"securityPolicySummaries">> => list(security_policy_summary())
%% }
-type list_security_policies_response() :: #{binary() => any()}.

%% Example:
%% update_access_policy_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"policy">> => string(),
%%   <<"policyVersion">> := string(),
%%   <<"type">> := string()
%% }
-type update_access_policy_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% lifecycle_policy_stats() :: #{
%%   <<"RetentionPolicyCount">> => [float()]
%% }
-type lifecycle_policy_stats() :: #{binary() => any()}.

%% Example:
%% update_security_policy_response() :: #{
%%   <<"securityPolicyDetail">> => security_policy_detail()
%% }
-type update_security_policy_response() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_security_config_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"id">> := string()
%% }
-type delete_security_config_request() :: #{binary() => any()}.

%% Example:
%% create_lifecycle_policy_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"policy">> := string(),
%%   <<"type">> := string()
%% }
-type create_lifecycle_policy_request() :: #{binary() => any()}.

%% Example:
%% capacity_limits() :: #{
%%   <<"maxIndexingCapacityInOCU">> => integer(),
%%   <<"maxSearchCapacityInOCU">> => integer()
%% }
-type capacity_limits() :: #{binary() => any()}.

%% Example:
%% batch_get_effective_lifecycle_policy_response() :: #{
%%   <<"effectiveLifecyclePolicyDetails">> => list(effective_lifecycle_policy_detail()),
%%   <<"effectiveLifecyclePolicyErrorDetails">> => list(effective_lifecycle_policy_error_detail())
%% }
-type batch_get_effective_lifecycle_policy_response() :: #{binary() => any()}.

%% Example:
%% update_vpc_endpoint_detail() :: #{
%%   <<"id">> => string(),
%%   <<"lastModifiedDate">> => [float()],
%%   <<"name">> => string(),
%%   <<"securityGroupIds">> => list(string()),
%%   <<"status">> => string(),
%%   <<"subnetIds">> => list(string())
%% }
-type update_vpc_endpoint_detail() :: #{binary() => any()}.

%% Example:
%% create_vpc_endpoint_detail() :: #{
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => string()
%% }
-type create_vpc_endpoint_detail() :: #{binary() => any()}.

%% Example:
%% delete_vpc_endpoint_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"id">> := string()
%% }
-type delete_vpc_endpoint_request() :: #{binary() => any()}.

%% Example:
%% get_policies_stats_request() :: #{

%% }
-type get_policies_stats_request() :: #{binary() => any()}.

%% Example:
%% access_policy_stats() :: #{
%%   <<"DataPolicyCount">> => [float()]
%% }
-type access_policy_stats() :: #{binary() => any()}.

%% Example:
%% ocu_limit_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type ocu_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% update_collection_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => [string()],
%%   <<"id">> := string()
%% }
-type update_collection_request() :: #{binary() => any()}.

%% Example:
%% create_vpc_endpoint_response() :: #{
%%   <<"createVpcEndpointDetail">> => create_vpc_endpoint_detail()
%% }
-type create_vpc_endpoint_response() :: #{binary() => any()}.

%% Example:
%% batch_get_vpc_endpoint_response() :: #{
%%   <<"vpcEndpointDetails">> => list(vpc_endpoint_detail()),
%%   <<"vpcEndpointErrorDetails">> => list(vpc_endpoint_error_detail())
%% }
-type batch_get_vpc_endpoint_response() :: #{binary() => any()}.

%% Example:
%% update_security_policy_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"policy">> => string(),
%%   <<"policyVersion">> := string(),
%%   <<"type">> := string()
%% }
-type update_security_policy_request() :: #{binary() => any()}.

%% Example:
%% update_collection_detail() :: #{
%%   <<"arn">> => [string()],
%%   <<"createdDate">> => [float()],
%%   <<"description">> => [string()],
%%   <<"id">> => string(),
%%   <<"lastModifiedDate">> => [float()],
%%   <<"name">> => string(),
%%   <<"status">> => string(),
%%   <<"type">> => string()
%% }
-type update_collection_detail() :: #{binary() => any()}.

%% Example:
%% effective_lifecycle_policy_error_detail() :: #{
%%   <<"errorCode">> => [string()],
%%   <<"errorMessage">> => [string()],
%%   <<"resource">> => string(),
%%   <<"type">> => string()
%% }
-type effective_lifecycle_policy_error_detail() :: #{binary() => any()}.

%% Example:
%% update_vpc_endpoint_request() :: #{
%%   <<"addSecurityGroupIds">> => list(string()),
%%   <<"addSubnetIds">> => list(string()),
%%   <<"clientToken">> => string(),
%%   <<"id">> := string(),
%%   <<"removeSecurityGroupIds">> => list(string()),
%%   <<"removeSubnetIds">> => list(string())
%% }
-type update_vpc_endpoint_request() :: #{binary() => any()}.

%% Example:
%% create_iam_identity_center_config_options() :: #{
%%   <<"groupAttribute">> => string(),
%%   <<"instanceArn">> => string(),
%%   <<"userAttribute">> => string()
%% }
-type create_iam_identity_center_config_options() :: #{binary() => any()}.

%% Example:
%% create_security_config_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"iamFederationOptions">> => iam_federation_config_options(),
%%   <<"iamIdentityCenterOptions">> => create_iam_identity_center_config_options(),
%%   <<"name">> := string(),
%%   <<"samlOptions">> => saml_config_options(),
%%   <<"type">> := string()
%% }
-type create_security_config_request() :: #{binary() => any()}.

%% Example:
%% get_security_config_request() :: #{
%%   <<"id">> := string()
%% }
-type get_security_config_request() :: #{binary() => any()}.

%% Example:
%% delete_collection_response() :: #{
%%   <<"deleteCollectionDetail">> => delete_collection_detail()
%% }
-type delete_collection_response() :: #{binary() => any()}.

%% Example:
%% create_access_policy_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"policy">> := string(),
%%   <<"type">> := string()
%% }
-type create_access_policy_request() :: #{binary() => any()}.

%% Example:
%% delete_security_policy_response() :: #{

%% }
-type delete_security_policy_response() :: #{binary() => any()}.

%% Example:
%% saml_config_options() :: #{
%%   <<"groupAttribute">> => string(),
%%   <<"metadata">> => string(),
%%   <<"openSearchServerlessEntityId">> => string(),
%%   <<"sessionTimeout">> => [integer()],
%%   <<"userAttribute">> => string()
%% }
-type saml_config_options() :: #{binary() => any()}.

%% Example:
%% create_collection_detail() :: #{
%%   <<"arn">> => [string()],
%%   <<"createdDate">> => [float()],
%%   <<"description">> => [string()],
%%   <<"id">> => string(),
%%   <<"kmsKeyArn">> => [string()],
%%   <<"lastModifiedDate">> => [float()],
%%   <<"name">> => string(),
%%   <<"standbyReplicas">> => string(),
%%   <<"status">> => string(),
%%   <<"type">> => string()
%% }
-type create_collection_detail() :: #{binary() => any()}.

%% Example:
%% effective_lifecycle_policy_detail() :: #{
%%   <<"noMinRetentionPeriod">> => [boolean()],
%%   <<"policyName">> => string(),
%%   <<"resource">> => string(),
%%   <<"resourceType">> => string(),
%%   <<"retentionPeriod">> => [string()],
%%   <<"type">> => string()
%% }
-type effective_lifecycle_policy_detail() :: #{binary() => any()}.

%% Example:
%% lifecycle_policy_identifier() :: #{
%%   <<"name">> => string(),
%%   <<"type">> => string()
%% }
-type lifecycle_policy_identifier() :: #{binary() => any()}.

%% Example:
%% create_security_policy_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"policy">> := string(),
%%   <<"type">> := string()
%% }
-type create_security_policy_request() :: #{binary() => any()}.

-type batch_get_collection_errors() ::
    validation_exception() | 
    internal_server_exception().

-type batch_get_effective_lifecycle_policy_errors() ::
    validation_exception() | 
    internal_server_exception().

-type batch_get_lifecycle_policy_errors() ::
    validation_exception() | 
    internal_server_exception().

-type batch_get_vpc_endpoint_errors() ::
    validation_exception() | 
    internal_server_exception().

-type create_access_policy_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_collection_errors() ::
    ocu_limit_exceeded_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_lifecycle_policy_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_security_config_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_security_policy_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_vpc_endpoint_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_access_policy_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_collection_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_lifecycle_policy_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_security_config_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_security_policy_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_vpc_endpoint_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_access_policy_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_account_settings_errors() ::
    validation_exception() | 
    internal_server_exception().

-type get_policies_stats_errors() ::
    internal_server_exception().

-type get_security_config_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_security_policy_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_access_policies_errors() ::
    validation_exception() | 
    internal_server_exception().

-type list_collections_errors() ::
    validation_exception() | 
    internal_server_exception().

-type list_lifecycle_policies_errors() ::
    validation_exception() | 
    internal_server_exception().

-type list_security_configs_errors() ::
    validation_exception() | 
    internal_server_exception().

-type list_security_policies_errors() ::
    validation_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_vpc_endpoints_errors() ::
    validation_exception() | 
    internal_server_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_access_policy_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_account_settings_errors() ::
    validation_exception() | 
    internal_server_exception().

-type update_collection_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type update_lifecycle_policy_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_security_config_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_security_policy_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_vpc_endpoint_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Returns attributes for one or more collections, including the
%% collection endpoint and
%% the OpenSearch Dashboards endpoint.
%%
%% For more information, see Creating and
%% managing Amazon OpenSearch Serverless collections:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html.
-spec batch_get_collection(aws_client:aws_client(), batch_get_collection_request()) ->
    {ok, batch_get_collection_response(), tuple()} |
    {error, any()} |
    {error, batch_get_collection_errors(), tuple()}.
batch_get_collection(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_collection(Client, Input, []).

-spec batch_get_collection(aws_client:aws_client(), batch_get_collection_request(), proplists:proplist()) ->
    {ok, batch_get_collection_response(), tuple()} |
    {error, any()} |
    {error, batch_get_collection_errors(), tuple()}.
batch_get_collection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetCollection">>, Input, Options).

%% @doc Returns a list of successful and failed retrievals for the OpenSearch
%% Serverless indexes.
%%
%% For more
%% information, see Viewing data lifecycle policies:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-list.
-spec batch_get_effective_lifecycle_policy(aws_client:aws_client(), batch_get_effective_lifecycle_policy_request()) ->
    {ok, batch_get_effective_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, batch_get_effective_lifecycle_policy_errors(), tuple()}.
batch_get_effective_lifecycle_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_effective_lifecycle_policy(Client, Input, []).

-spec batch_get_effective_lifecycle_policy(aws_client:aws_client(), batch_get_effective_lifecycle_policy_request(), proplists:proplist()) ->
    {ok, batch_get_effective_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, batch_get_effective_lifecycle_policy_errors(), tuple()}.
batch_get_effective_lifecycle_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetEffectiveLifecyclePolicy">>, Input, Options).

%% @doc Returns one or more configured OpenSearch Serverless lifecycle
%% policies.
%%
%% For more information, see
%% Viewing data lifecycle policies:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-list.
-spec batch_get_lifecycle_policy(aws_client:aws_client(), batch_get_lifecycle_policy_request()) ->
    {ok, batch_get_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, batch_get_lifecycle_policy_errors(), tuple()}.
batch_get_lifecycle_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_lifecycle_policy(Client, Input, []).

-spec batch_get_lifecycle_policy(aws_client:aws_client(), batch_get_lifecycle_policy_request(), proplists:proplist()) ->
    {ok, batch_get_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, batch_get_lifecycle_policy_errors(), tuple()}.
batch_get_lifecycle_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetLifecyclePolicy">>, Input, Options).

%% @doc Returns attributes for one or more VPC endpoints associated with the
%% current account.
%%
%% For more information, see Access
%% Amazon OpenSearch Serverless using an interface endpoint:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html.
-spec batch_get_vpc_endpoint(aws_client:aws_client(), batch_get_vpc_endpoint_request()) ->
    {ok, batch_get_vpc_endpoint_response(), tuple()} |
    {error, any()} |
    {error, batch_get_vpc_endpoint_errors(), tuple()}.
batch_get_vpc_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_vpc_endpoint(Client, Input, []).

-spec batch_get_vpc_endpoint(aws_client:aws_client(), batch_get_vpc_endpoint_request(), proplists:proplist()) ->
    {ok, batch_get_vpc_endpoint_response(), tuple()} |
    {error, any()} |
    {error, batch_get_vpc_endpoint_errors(), tuple()}.
batch_get_vpc_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetVpcEndpoint">>, Input, Options).

%% @doc Creates a data access policy for OpenSearch Serverless.
%%
%% Access policies limit access to collections
%% and the resources within them, and allow a user to access that data
%% irrespective of the
%% access mechanism or network source. For more information, see Data
%% access control for Amazon OpenSearch Serverless:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html.
-spec create_access_policy(aws_client:aws_client(), create_access_policy_request()) ->
    {ok, create_access_policy_response(), tuple()} |
    {error, any()} |
    {error, create_access_policy_errors(), tuple()}.
create_access_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_access_policy(Client, Input, []).

-spec create_access_policy(aws_client:aws_client(), create_access_policy_request(), proplists:proplist()) ->
    {ok, create_access_policy_response(), tuple()} |
    {error, any()} |
    {error, create_access_policy_errors(), tuple()}.
create_access_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAccessPolicy">>, Input, Options).

%% @doc Creates a new OpenSearch Serverless collection.
%%
%% For more information, see Creating and
%% managing Amazon OpenSearch Serverless collections:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html.
-spec create_collection(aws_client:aws_client(), create_collection_request()) ->
    {ok, create_collection_response(), tuple()} |
    {error, any()} |
    {error, create_collection_errors(), tuple()}.
create_collection(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_collection(Client, Input, []).

-spec create_collection(aws_client:aws_client(), create_collection_request(), proplists:proplist()) ->
    {ok, create_collection_response(), tuple()} |
    {error, any()} |
    {error, create_collection_errors(), tuple()}.
create_collection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCollection">>, Input, Options).

%% @doc Creates a lifecyle policy to be applied to OpenSearch Serverless
%% indexes.
%%
%% Lifecycle policies define
%% the number of days or hours to retain the data on an OpenSearch Serverless
%% index. For more information,
%% see Creating data lifecycle policies:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-create.
-spec create_lifecycle_policy(aws_client:aws_client(), create_lifecycle_policy_request()) ->
    {ok, create_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, create_lifecycle_policy_errors(), tuple()}.
create_lifecycle_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_lifecycle_policy(Client, Input, []).

-spec create_lifecycle_policy(aws_client:aws_client(), create_lifecycle_policy_request(), proplists:proplist()) ->
    {ok, create_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, create_lifecycle_policy_errors(), tuple()}.
create_lifecycle_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLifecyclePolicy">>, Input, Options).

%% @doc Specifies a security configuration for OpenSearch Serverless.
%%
%% For more information, see SAML
%% authentication for Amazon OpenSearch Serverless:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html.
-spec create_security_config(aws_client:aws_client(), create_security_config_request()) ->
    {ok, create_security_config_response(), tuple()} |
    {error, any()} |
    {error, create_security_config_errors(), tuple()}.
create_security_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_security_config(Client, Input, []).

-spec create_security_config(aws_client:aws_client(), create_security_config_request(), proplists:proplist()) ->
    {ok, create_security_config_response(), tuple()} |
    {error, any()} |
    {error, create_security_config_errors(), tuple()}.
create_security_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSecurityConfig">>, Input, Options).

%% @doc Creates a security policy to be used by one or more OpenSearch
%% Serverless collections.
%%
%% Security
%% policies provide access to a collection and its OpenSearch Dashboards
%% endpoint from
%% public networks or specific VPC endpoints. They also allow you to secure a
%% collection
%% with a KMS encryption key. For more information, see Network
%% access for Amazon OpenSearch Serverless:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-network.html
%% and Encryption
%% at rest for Amazon OpenSearch Serverless:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-encryption.html.
-spec create_security_policy(aws_client:aws_client(), create_security_policy_request()) ->
    {ok, create_security_policy_response(), tuple()} |
    {error, any()} |
    {error, create_security_policy_errors(), tuple()}.
create_security_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_security_policy(Client, Input, []).

-spec create_security_policy(aws_client:aws_client(), create_security_policy_request(), proplists:proplist()) ->
    {ok, create_security_policy_response(), tuple()} |
    {error, any()} |
    {error, create_security_policy_errors(), tuple()}.
create_security_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSecurityPolicy">>, Input, Options).

%% @doc Creates an OpenSearch Serverless-managed interface VPC endpoint.
%%
%% For more information, see Access
%% Amazon OpenSearch Serverless using an interface endpoint:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html.
-spec create_vpc_endpoint(aws_client:aws_client(), create_vpc_endpoint_request()) ->
    {ok, create_vpc_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_vpc_endpoint_errors(), tuple()}.
create_vpc_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_vpc_endpoint(Client, Input, []).

-spec create_vpc_endpoint(aws_client:aws_client(), create_vpc_endpoint_request(), proplists:proplist()) ->
    {ok, create_vpc_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_vpc_endpoint_errors(), tuple()}.
create_vpc_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVpcEndpoint">>, Input, Options).

%% @doc Deletes an OpenSearch Serverless access policy.
%%
%% For more information, see Data
%% access control for Amazon OpenSearch Serverless:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html.
-spec delete_access_policy(aws_client:aws_client(), delete_access_policy_request()) ->
    {ok, delete_access_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_access_policy_errors(), tuple()}.
delete_access_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_access_policy(Client, Input, []).

-spec delete_access_policy(aws_client:aws_client(), delete_access_policy_request(), proplists:proplist()) ->
    {ok, delete_access_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_access_policy_errors(), tuple()}.
delete_access_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAccessPolicy">>, Input, Options).

%% @doc Deletes an OpenSearch Serverless collection.
%%
%% For more information, see Creating and
%% managing Amazon OpenSearch Serverless collections:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html.
-spec delete_collection(aws_client:aws_client(), delete_collection_request()) ->
    {ok, delete_collection_response(), tuple()} |
    {error, any()} |
    {error, delete_collection_errors(), tuple()}.
delete_collection(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_collection(Client, Input, []).

-spec delete_collection(aws_client:aws_client(), delete_collection_request(), proplists:proplist()) ->
    {ok, delete_collection_response(), tuple()} |
    {error, any()} |
    {error, delete_collection_errors(), tuple()}.
delete_collection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCollection">>, Input, Options).

%% @doc Deletes an OpenSearch Serverless lifecycle policy.
%%
%% For more information, see Deleting data lifecycle policies:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-delete.
-spec delete_lifecycle_policy(aws_client:aws_client(), delete_lifecycle_policy_request()) ->
    {ok, delete_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_lifecycle_policy_errors(), tuple()}.
delete_lifecycle_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_lifecycle_policy(Client, Input, []).

-spec delete_lifecycle_policy(aws_client:aws_client(), delete_lifecycle_policy_request(), proplists:proplist()) ->
    {ok, delete_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_lifecycle_policy_errors(), tuple()}.
delete_lifecycle_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLifecyclePolicy">>, Input, Options).

%% @doc Deletes a security configuration for OpenSearch Serverless.
%%
%% For more information, see SAML
%% authentication for Amazon OpenSearch Serverless:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html.
-spec delete_security_config(aws_client:aws_client(), delete_security_config_request()) ->
    {ok, delete_security_config_response(), tuple()} |
    {error, any()} |
    {error, delete_security_config_errors(), tuple()}.
delete_security_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_security_config(Client, Input, []).

-spec delete_security_config(aws_client:aws_client(), delete_security_config_request(), proplists:proplist()) ->
    {ok, delete_security_config_response(), tuple()} |
    {error, any()} |
    {error, delete_security_config_errors(), tuple()}.
delete_security_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSecurityConfig">>, Input, Options).

%% @doc Deletes an OpenSearch Serverless security policy.
-spec delete_security_policy(aws_client:aws_client(), delete_security_policy_request()) ->
    {ok, delete_security_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_security_policy_errors(), tuple()}.
delete_security_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_security_policy(Client, Input, []).

-spec delete_security_policy(aws_client:aws_client(), delete_security_policy_request(), proplists:proplist()) ->
    {ok, delete_security_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_security_policy_errors(), tuple()}.
delete_security_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSecurityPolicy">>, Input, Options).

%% @doc Deletes an OpenSearch Serverless-managed interface endpoint.
%%
%% For more information, see Access
%% Amazon OpenSearch Serverless using an interface endpoint:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html.
-spec delete_vpc_endpoint(aws_client:aws_client(), delete_vpc_endpoint_request()) ->
    {ok, delete_vpc_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_vpc_endpoint_errors(), tuple()}.
delete_vpc_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_vpc_endpoint(Client, Input, []).

-spec delete_vpc_endpoint(aws_client:aws_client(), delete_vpc_endpoint_request(), proplists:proplist()) ->
    {ok, delete_vpc_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_vpc_endpoint_errors(), tuple()}.
delete_vpc_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVpcEndpoint">>, Input, Options).

%% @doc Returns an OpenSearch Serverless access policy.
%%
%% For more information, see Data
%% access control for Amazon OpenSearch Serverless:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html.
-spec get_access_policy(aws_client:aws_client(), get_access_policy_request()) ->
    {ok, get_access_policy_response(), tuple()} |
    {error, any()} |
    {error, get_access_policy_errors(), tuple()}.
get_access_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_access_policy(Client, Input, []).

-spec get_access_policy(aws_client:aws_client(), get_access_policy_request(), proplists:proplist()) ->
    {ok, get_access_policy_response(), tuple()} |
    {error, any()} |
    {error, get_access_policy_errors(), tuple()}.
get_access_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccessPolicy">>, Input, Options).

%% @doc Returns account-level settings related to OpenSearch Serverless.
-spec get_account_settings(aws_client:aws_client(), get_account_settings_request()) ->
    {ok, get_account_settings_response(), tuple()} |
    {error, any()} |
    {error, get_account_settings_errors(), tuple()}.
get_account_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_account_settings(Client, Input, []).

-spec get_account_settings(aws_client:aws_client(), get_account_settings_request(), proplists:proplist()) ->
    {ok, get_account_settings_response(), tuple()} |
    {error, any()} |
    {error, get_account_settings_errors(), tuple()}.
get_account_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccountSettings">>, Input, Options).

%% @doc Returns statistical information about your OpenSearch Serverless
%% access policies, security
%% configurations, and security policies.
-spec get_policies_stats(aws_client:aws_client(), get_policies_stats_request()) ->
    {ok, get_policies_stats_response(), tuple()} |
    {error, any()} |
    {error, get_policies_stats_errors(), tuple()}.
get_policies_stats(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_policies_stats(Client, Input, []).

-spec get_policies_stats(aws_client:aws_client(), get_policies_stats_request(), proplists:proplist()) ->
    {ok, get_policies_stats_response(), tuple()} |
    {error, any()} |
    {error, get_policies_stats_errors(), tuple()}.
get_policies_stats(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPoliciesStats">>, Input, Options).

%% @doc Returns information about an OpenSearch Serverless security
%% configuration.
%%
%% For more information, see
%% SAML
%% authentication for Amazon OpenSearch Serverless:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html.
-spec get_security_config(aws_client:aws_client(), get_security_config_request()) ->
    {ok, get_security_config_response(), tuple()} |
    {error, any()} |
    {error, get_security_config_errors(), tuple()}.
get_security_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_security_config(Client, Input, []).

-spec get_security_config(aws_client:aws_client(), get_security_config_request(), proplists:proplist()) ->
    {ok, get_security_config_response(), tuple()} |
    {error, any()} |
    {error, get_security_config_errors(), tuple()}.
get_security_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSecurityConfig">>, Input, Options).

%% @doc Returns information about a configured OpenSearch Serverless security
%% policy.
%%
%% For more information,
%% see Network
%% access for Amazon OpenSearch Serverless:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-network.html
%% and Encryption
%% at rest for Amazon OpenSearch Serverless:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-encryption.html.
-spec get_security_policy(aws_client:aws_client(), get_security_policy_request()) ->
    {ok, get_security_policy_response(), tuple()} |
    {error, any()} |
    {error, get_security_policy_errors(), tuple()}.
get_security_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_security_policy(Client, Input, []).

-spec get_security_policy(aws_client:aws_client(), get_security_policy_request(), proplists:proplist()) ->
    {ok, get_security_policy_response(), tuple()} |
    {error, any()} |
    {error, get_security_policy_errors(), tuple()}.
get_security_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSecurityPolicy">>, Input, Options).

%% @doc Returns information about a list of OpenSearch Serverless access
%% policies.
-spec list_access_policies(aws_client:aws_client(), list_access_policies_request()) ->
    {ok, list_access_policies_response(), tuple()} |
    {error, any()} |
    {error, list_access_policies_errors(), tuple()}.
list_access_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_access_policies(Client, Input, []).

-spec list_access_policies(aws_client:aws_client(), list_access_policies_request(), proplists:proplist()) ->
    {ok, list_access_policies_response(), tuple()} |
    {error, any()} |
    {error, list_access_policies_errors(), tuple()}.
list_access_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccessPolicies">>, Input, Options).

%% @doc Lists all OpenSearch Serverless collections.
%%
%% For more information, see Creating and
%% managing Amazon OpenSearch Serverless collections:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html.
%%
%% Make sure to include an empty request body {} if you don't include any
%% collection
%% filters in the request.
-spec list_collections(aws_client:aws_client(), list_collections_request()) ->
    {ok, list_collections_response(), tuple()} |
    {error, any()} |
    {error, list_collections_errors(), tuple()}.
list_collections(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_collections(Client, Input, []).

-spec list_collections(aws_client:aws_client(), list_collections_request(), proplists:proplist()) ->
    {ok, list_collections_response(), tuple()} |
    {error, any()} |
    {error, list_collections_errors(), tuple()}.
list_collections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCollections">>, Input, Options).

%% @doc Returns a list of OpenSearch Serverless lifecycle policies.
%%
%% For more information, see Viewing data lifecycle policies:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-list.
-spec list_lifecycle_policies(aws_client:aws_client(), list_lifecycle_policies_request()) ->
    {ok, list_lifecycle_policies_response(), tuple()} |
    {error, any()} |
    {error, list_lifecycle_policies_errors(), tuple()}.
list_lifecycle_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_lifecycle_policies(Client, Input, []).

-spec list_lifecycle_policies(aws_client:aws_client(), list_lifecycle_policies_request(), proplists:proplist()) ->
    {ok, list_lifecycle_policies_response(), tuple()} |
    {error, any()} |
    {error, list_lifecycle_policies_errors(), tuple()}.
list_lifecycle_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLifecyclePolicies">>, Input, Options).

%% @doc Returns information about configured OpenSearch Serverless security
%% configurations.
%%
%% For more
%% information, see SAML
%% authentication for Amazon OpenSearch Serverless:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html.
-spec list_security_configs(aws_client:aws_client(), list_security_configs_request()) ->
    {ok, list_security_configs_response(), tuple()} |
    {error, any()} |
    {error, list_security_configs_errors(), tuple()}.
list_security_configs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_security_configs(Client, Input, []).

-spec list_security_configs(aws_client:aws_client(), list_security_configs_request(), proplists:proplist()) ->
    {ok, list_security_configs_response(), tuple()} |
    {error, any()} |
    {error, list_security_configs_errors(), tuple()}.
list_security_configs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSecurityConfigs">>, Input, Options).

%% @doc Returns information about configured OpenSearch Serverless security
%% policies.
-spec list_security_policies(aws_client:aws_client(), list_security_policies_request()) ->
    {ok, list_security_policies_response(), tuple()} |
    {error, any()} |
    {error, list_security_policies_errors(), tuple()}.
list_security_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_security_policies(Client, Input, []).

-spec list_security_policies(aws_client:aws_client(), list_security_policies_request(), proplists:proplist()) ->
    {ok, list_security_policies_response(), tuple()} |
    {error, any()} |
    {error, list_security_policies_errors(), tuple()}.
list_security_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSecurityPolicies">>, Input, Options).

%% @doc Returns the tags for an OpenSearch Serverless resource.
%%
%% For more information, see Tagging
%% Amazon OpenSearch Serverless collections:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-collection.html.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Returns the OpenSearch Serverless-managed interface VPC endpoints
%% associated with the current
%% account.
%%
%% For more information, see Access
%% Amazon OpenSearch Serverless using an interface endpoint:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html.
-spec list_vpc_endpoints(aws_client:aws_client(), list_vpc_endpoints_request()) ->
    {ok, list_vpc_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_vpc_endpoints_errors(), tuple()}.
list_vpc_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_vpc_endpoints(Client, Input, []).

-spec list_vpc_endpoints(aws_client:aws_client(), list_vpc_endpoints_request(), proplists:proplist()) ->
    {ok, list_vpc_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_vpc_endpoints_errors(), tuple()}.
list_vpc_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListVpcEndpoints">>, Input, Options).

%% @doc Associates tags with an OpenSearch Serverless resource.
%%
%% For more information, see Tagging
%% Amazon OpenSearch Serverless collections:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-collection.html.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes a tag or set of tags from an OpenSearch Serverless resource.
%%
%% For more information, see Tagging
%% Amazon OpenSearch Serverless collections:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-collection.html.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates an OpenSearch Serverless access policy.
%%
%% For more information, see Data
%% access control for Amazon OpenSearch Serverless:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html.
-spec update_access_policy(aws_client:aws_client(), update_access_policy_request()) ->
    {ok, update_access_policy_response(), tuple()} |
    {error, any()} |
    {error, update_access_policy_errors(), tuple()}.
update_access_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_access_policy(Client, Input, []).

-spec update_access_policy(aws_client:aws_client(), update_access_policy_request(), proplists:proplist()) ->
    {ok, update_access_policy_response(), tuple()} |
    {error, any()} |
    {error, update_access_policy_errors(), tuple()}.
update_access_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAccessPolicy">>, Input, Options).

%% @doc Update the OpenSearch Serverless settings for the current Amazon Web
%% Services account.
%%
%% For more
%% information, see Managing
%% capacity limits for Amazon OpenSearch Serverless:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-scaling.html.
-spec update_account_settings(aws_client:aws_client(), update_account_settings_request()) ->
    {ok, update_account_settings_response(), tuple()} |
    {error, any()} |
    {error, update_account_settings_errors(), tuple()}.
update_account_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_account_settings(Client, Input, []).

-spec update_account_settings(aws_client:aws_client(), update_account_settings_request(), proplists:proplist()) ->
    {ok, update_account_settings_response(), tuple()} |
    {error, any()} |
    {error, update_account_settings_errors(), tuple()}.
update_account_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAccountSettings">>, Input, Options).

%% @doc Updates an OpenSearch Serverless collection.
-spec update_collection(aws_client:aws_client(), update_collection_request()) ->
    {ok, update_collection_response(), tuple()} |
    {error, any()} |
    {error, update_collection_errors(), tuple()}.
update_collection(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_collection(Client, Input, []).

-spec update_collection(aws_client:aws_client(), update_collection_request(), proplists:proplist()) ->
    {ok, update_collection_response(), tuple()} |
    {error, any()} |
    {error, update_collection_errors(), tuple()}.
update_collection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCollection">>, Input, Options).

%% @doc Updates an OpenSearch Serverless access policy.
%%
%% For more information, see Updating data lifecycle policies:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-update.
-spec update_lifecycle_policy(aws_client:aws_client(), update_lifecycle_policy_request()) ->
    {ok, update_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, update_lifecycle_policy_errors(), tuple()}.
update_lifecycle_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_lifecycle_policy(Client, Input, []).

-spec update_lifecycle_policy(aws_client:aws_client(), update_lifecycle_policy_request(), proplists:proplist()) ->
    {ok, update_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, update_lifecycle_policy_errors(), tuple()}.
update_lifecycle_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLifecyclePolicy">>, Input, Options).

%% @doc Updates a security configuration for OpenSearch Serverless.
%%
%% For more information, see SAML
%% authentication for Amazon OpenSearch Serverless:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html.
-spec update_security_config(aws_client:aws_client(), update_security_config_request()) ->
    {ok, update_security_config_response(), tuple()} |
    {error, any()} |
    {error, update_security_config_errors(), tuple()}.
update_security_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_security_config(Client, Input, []).

-spec update_security_config(aws_client:aws_client(), update_security_config_request(), proplists:proplist()) ->
    {ok, update_security_config_response(), tuple()} |
    {error, any()} |
    {error, update_security_config_errors(), tuple()}.
update_security_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSecurityConfig">>, Input, Options).

%% @doc Updates an OpenSearch Serverless security policy.
%%
%% For more information, see Network
%% access for Amazon OpenSearch Serverless:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-network.html
%% and Encryption
%% at rest for Amazon OpenSearch Serverless:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-encryption.html.
-spec update_security_policy(aws_client:aws_client(), update_security_policy_request()) ->
    {ok, update_security_policy_response(), tuple()} |
    {error, any()} |
    {error, update_security_policy_errors(), tuple()}.
update_security_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_security_policy(Client, Input, []).

-spec update_security_policy(aws_client:aws_client(), update_security_policy_request(), proplists:proplist()) ->
    {ok, update_security_policy_response(), tuple()} |
    {error, any()} |
    {error, update_security_policy_errors(), tuple()}.
update_security_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSecurityPolicy">>, Input, Options).

%% @doc Updates an OpenSearch Serverless-managed interface endpoint.
%%
%% For more information, see Access
%% Amazon OpenSearch Serverless using an interface endpoint:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html.
-spec update_vpc_endpoint(aws_client:aws_client(), update_vpc_endpoint_request()) ->
    {ok, update_vpc_endpoint_response(), tuple()} |
    {error, any()} |
    {error, update_vpc_endpoint_errors(), tuple()}.
update_vpc_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_vpc_endpoint(Client, Input, []).

-spec update_vpc_endpoint(aws_client:aws_client(), update_vpc_endpoint_request(), proplists:proplist()) ->
    {ok, update_vpc_endpoint_response(), tuple()} |
    {error, any()} |
    {error, update_vpc_endpoint_errors(), tuple()}.
update_vpc_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateVpcEndpoint">>, Input, Options).

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
    Client1 = Client#{service => <<"aoss">>},
    Host = build_host(<<"aoss">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"OpenSearchServerless.", Action/binary>>}
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
