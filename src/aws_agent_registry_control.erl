%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Agent Registry is a managed catalog for
%% publishing and discovering resources such as MCP servers, agents, and
%% agent skills.
%%
%% Agent Registry Control is its control-plane API: use it to create and
%% manage registries and the records they contain, configure discovery and
%% authorization, govern record approval and curation workflows, and manage
%% automatic detection of resources. Data-plane search and MCP invocation
%% operations are provided by the companion Agent Registry API.
-module(aws_agent_registry_control).

-export([associate_publisher/2,
         associate_publisher/3,
         create_publisher/2,
         create_publisher/3,
         create_registry/2,
         create_registry/3,
         create_registry_record/3,
         create_registry_record/4,
         delete_publisher/3,
         delete_publisher/4,
         delete_registry/3,
         delete_registry/4,
         delete_registry_record/4,
         delete_registry_record/5,
         disassociate_publisher/3,
         disassociate_publisher/4,
         get_publisher/2,
         get_publisher/4,
         get_publisher/5,
         get_registry/2,
         get_registry/4,
         get_registry/5,
         get_registry_record/3,
         get_registry_record/5,
         get_registry_record/6,
         list_publisher_associations/1,
         list_publisher_associations/3,
         list_publisher_associations/4,
         list_publishers/1,
         list_publishers/3,
         list_publishers/4,
         list_registries/2,
         list_registries/3,
         list_registry_records/3,
         list_registry_records/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         submit_registry_record_for_approval/4,
         submit_registry_record_for_approval/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_publisher_association_approval_status/3,
         update_publisher_association_approval_status/4,
         update_registry/3,
         update_registry/4,
         update_registry_record/4,
         update_registry_record/5,
         update_registry_record_status/4,
         update_registry_record_status/5,
         validate_publisher/3,
         validate_publisher/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%% hackney:body/1 is only called with hackney versions that still export it.
-ignore_xref([{hackney, body, 1}]).



%% Example:
%% a2a_agent_card_descriptor() :: #{
%%   <<"data">> => string(),
%%   <<"dataSchemaVersion">> => string(),
%%   <<"source">> => descriptor_source()
%% }
-type a2a_agent_card_descriptor() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% ag_ui_descriptor() :: #{
%%   <<"source">> => descriptor_source()
%% }
-type ag_ui_descriptor() :: #{binary() => any()}.


%% Example:
%% agent_core_gateway_source_details() :: #{
%%   <<"authorizerConfiguration">> => list(),
%%   <<"authorizerType">> => [string()],
%%   <<"protocolType">> => list(any()),
%%   <<"workloadIdentityDetails">> => workload_identity_details()
%% }
-type agent_core_gateway_source_details() :: #{binary() => any()}.


%% Example:
%% agent_core_runtime_protocol_configuration() :: #{
%%   <<"serverProtocol">> => list(any())
%% }
-type agent_core_runtime_protocol_configuration() :: #{binary() => any()}.


%% Example:
%% agent_core_runtime_source_details() :: #{
%%   <<"authorizerConfiguration">> => list(),
%%   <<"protocolConfiguration">> => agent_core_runtime_protocol_configuration(),
%%   <<"workloadIdentityDetails">> => workload_identity_details()
%% }
-type agent_core_runtime_source_details() :: #{binary() => any()}.


%% Example:
%% agent_skills_additional_data() :: #{
%%   <<"repositoryProvider">> => list(any()),
%%   <<"skillMd">> => agent_skills_md_descriptor(),
%%   <<"skillPackage">> => agent_skills_package_descriptor(),
%%   <<"sourceConfiguration">> => list()
%% }
-type agent_skills_additional_data() :: #{binary() => any()}.


%% Example:
%% agent_skills_definition_descriptor() :: #{
%%   <<"additionalData">> => agent_skills_additional_data(),
%%   <<"data">> => string(),
%%   <<"dataSchemaVersion">> => string()
%% }
-type agent_skills_definition_descriptor() :: #{binary() => any()}.


%% Example:
%% agent_skills_md_descriptor() :: #{
%%   <<"data">> => string(),
%%   <<"dataSchemaVersion">> => string(),
%%   <<"source">> => descriptor_source()
%% }
-type agent_skills_md_descriptor() :: #{binary() => any()}.


%% Example:
%% agent_skills_package_descriptor() :: #{
%%   <<"source">> => descriptor_source()
%% }
-type agent_skills_package_descriptor() :: #{binary() => any()}.


%% Example:
%% approval_configuration() :: #{
%%   <<"autoApprovalRules">> => list(list(any())())
%% }
-type approval_configuration() :: #{binary() => any()}.


%% Example:
%% associate_publisher_request() :: #{
%%   <<"categories">> => list(string()),
%%   <<"clientToken">> => string(),
%%   <<"publisherArn">> := string(),
%%   <<"recordArn">> := string(),
%%   <<"subdomain">> => string()
%% }
-type associate_publisher_request() :: #{binary() => any()}.


%% Example:
%% associate_publisher_response() :: #{
%%   <<"publicIdentifier">> => string(),
%%   <<"publisher">> => string(),
%%   <<"recordArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => string()
%% }
-type associate_publisher_response() :: #{binary() => any()}.


%% Example:
%% authorizing_claim_match_value_type() :: #{
%%   <<"claimMatchOperator">> => list(any()),
%%   <<"claimMatchValue">> => list()
%% }
-type authorizing_claim_match_value_type() :: #{binary() => any()}.


%% Example:
%% auto_detection() :: #{
%%   <<"configuration">> => auto_detection_configuration(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type auto_detection() :: #{binary() => any()}.


%% Example:
%% auto_detection_configuration() :: #{
%%   <<"enabled">> => [boolean()],
%%   <<"scope">> => list(any())
%% }
-type auto_detection_configuration() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% create_publisher_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"tags">> => map(),
%%   <<"value">> := list()
%% }
-type create_publisher_request() :: #{binary() => any()}.


%% Example:
%% create_publisher_response() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"domainChallenge">> => domain_challenge(),
%%   <<"identifierType">> => list(any()),
%%   <<"publisherArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => string(),
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"value">> => list()
%% }
-type create_publisher_response() :: #{binary() => any()}.


%% Example:
%% create_registry_record_request() :: #{
%%   <<"artifact">> => registry_record_artifact_upload(),
%%   <<"clientToken">> => string(),
%%   <<"customMetadata">> => any(),
%%   <<"description">> => string(),
%%   <<"descriptors">> := descriptors(),
%%   <<"displayName">> => string(),
%%   <<"name">> := string(),
%%   <<"provenance">> => list(provenance()),
%%   <<"recordType">> := list(any()),
%%   <<"recordVersion">> => string(),
%%   <<"tags">> => map()
%% }
-type create_registry_record_request() :: #{binary() => any()}.


%% Example:
%% create_registry_record_response() :: #{
%%   <<"authorizationData">> => list(),
%%   <<"recordArn">> => string(),
%%   <<"status">> => list(any())
%% }
-type create_registry_record_response() :: #{binary() => any()}.


%% Example:
%% create_registry_request() :: #{
%%   <<"approvalConfiguration">> => approval_configuration(),
%%   <<"autoDetectionConfiguration">> => auto_detection_configuration(),
%%   <<"clientToken">> => string(),
%%   <<"customMetadataSchemaConfiguration">> => custom_metadata_schema_configuration(),
%%   <<"description">> => string(),
%%   <<"discoveryConfiguration">> => discovery_configuration(),
%%   <<"encryptionConfiguration">> => encryption_configuration(),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_registry_request() :: #{binary() => any()}.


%% Example:
%% create_registry_response() :: #{
%%   <<"registryArn">> => string()
%% }
-type create_registry_response() :: #{binary() => any()}.


%% Example:
%% custom_claim_validation_type() :: #{
%%   <<"authorizingClaimMatchValue">> => authorizing_claim_match_value_type(),
%%   <<"inboundTokenClaimName">> => string(),
%%   <<"inboundTokenClaimValueType">> => list(any())
%% }
-type custom_claim_validation_type() :: #{binary() => any()}.


%% Example:
%% custom_descriptor() :: #{
%%   <<"data">> => string()
%% }
-type custom_descriptor() :: #{binary() => any()}.


%% Example:
%% custom_j_w_t_authorizer_configuration() :: #{
%%   <<"allowedAudience">> => list(string()),
%%   <<"allowedClients">> => list(string()),
%%   <<"allowedScopes">> => list(string()),
%%   <<"customClaims">> => list(custom_claim_validation_type()),
%%   <<"discoveryUrl">> => string(),
%%   <<"privateEndpoint">> => list(),
%%   <<"privateEndpointOverrides">> => list(private_endpoint_override())
%% }
-type custom_j_w_t_authorizer_configuration() :: #{binary() => any()}.


%% Example:
%% custom_metadata_schema_configuration() :: #{
%%   <<"defaultSchema">> => string(),
%%   <<"recordTypeSchemaOverrides">> => list(record_type_schema_override())
%% }
-type custom_metadata_schema_configuration() :: #{binary() => any()}.

%% Example:
%% delete_publisher_request() :: #{}
-type delete_publisher_request() :: #{}.

%% Example:
%% delete_registry_record_request() :: #{}
-type delete_registry_record_request() :: #{}.

%% Example:
%% delete_registry_record_response() :: #{}
-type delete_registry_record_response() :: #{}.

%% Example:
%% delete_registry_request() :: #{}
-type delete_registry_request() :: #{}.


%% Example:
%% delete_registry_response() :: #{
%%   <<"status">> => list(any())
%% }
-type delete_registry_response() :: #{binary() => any()}.


%% Example:
%% dependency_exception() :: #{
%%   <<"message">> => string()
%% }
-type dependency_exception() :: #{binary() => any()}.


%% Example:
%% descriptor_source() :: #{
%%   <<"fromUrl">> => descriptor_source_from_url()
%% }
-type descriptor_source() :: #{binary() => any()}.


%% Example:
%% descriptor_source_from_url() :: #{
%%   <<"credentialProviderConfigurations">> => list(registry_record_credential_provider_configuration()),
%%   <<"url">> => string()
%% }
-type descriptor_source_from_url() :: #{binary() => any()}.


%% Example:
%% descriptors() :: #{
%%   <<"a2aAgentCard">> => a2a_agent_card_descriptor(),
%%   <<"agentSkillsDefinition">> => agent_skills_definition_descriptor(),
%%   <<"agui">> => ag_ui_descriptor(),
%%   <<"custom">> => custom_descriptor(),
%%   <<"http">> => http_descriptor(),
%%   <<"mcpServer">> => mcp_server_descriptor(),
%%   <<"signatureAgentCard">> => signature_agent_card_descriptor()
%% }
-type descriptors() :: #{binary() => any()}.

%% Example:
%% disassociate_publisher_request() :: #{}
-type disassociate_publisher_request() :: #{}.


%% Example:
%% discovery_configuration() :: #{
%%   <<"authorizerConfiguration">> => list(),
%%   <<"authorizerType">> => list(any())
%% }
-type discovery_configuration() :: #{binary() => any()}.


%% Example:
%% domain_challenge() :: #{
%%   <<"recordName">> => string(),
%%   <<"recordValue">> => string()
%% }
-type domain_challenge() :: #{binary() => any()}.


%% Example:
%% encryption_configuration() :: #{
%%   <<"kmsKeyArn">> => string()
%% }
-type encryption_configuration() :: #{binary() => any()}.

%% Example:
%% get_publisher_request() :: #{}
-type get_publisher_request() :: #{}.

%% Example:
%% get_registry_record_request() :: #{}
-type get_registry_record_request() :: #{}.


%% Example:
%% get_registry_record_response() :: #{
%%   <<"artifact">> => registry_record_artifact_download(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"createdByAutoDetection">> => [boolean()],
%%   <<"customMetadata">> => any(),
%%   <<"customMetadataSchemaComplianceStatus">> => list(any()),
%%   <<"description">> => string(),
%%   <<"descriptors">> => descriptors(),
%%   <<"displayName">> => string(),
%%   <<"name">> => string(),
%%   <<"provenance">> => list(provenance()),
%%   <<"recordArn">> => string(),
%%   <<"recordId">> => string(),
%%   <<"recordType">> => list(any()),
%%   <<"recordVersion">> => string(),
%%   <<"registryArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"synchronizedSource">> => list(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type get_registry_record_response() :: #{binary() => any()}.

%% Example:
%% get_registry_request() :: #{}
-type get_registry_request() :: #{}.


%% Example:
%% get_registry_response() :: #{
%%   <<"approvalConfiguration">> => approval_configuration(),
%%   <<"autoDetection">> => auto_detection(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"customMetadataSchemaConfiguration">> => custom_metadata_schema_configuration(),
%%   <<"description">> => string(),
%%   <<"discoveryConfiguration">> => discovery_configuration(),
%%   <<"encryptionConfiguration">> => encryption_configuration(),
%%   <<"name">> => string(),
%%   <<"registryArn">> => string(),
%%   <<"registryId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type get_registry_response() :: #{binary() => any()}.


%% Example:
%% git_hub_synchronized_source() :: #{
%%   <<"commitId">> => string(),
%%   <<"synchronizedAt">> => non_neg_integer(),
%%   <<"url">> => string()
%% }
-type git_hub_synchronized_source() :: #{binary() => any()}.


%% Example:
%% http_descriptor() :: #{
%%   <<"source">> => descriptor_source()
%% }
-type http_descriptor() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_publisher_associations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"publisherArn">> => string()
%% }
-type list_publisher_associations_request() :: #{binary() => any()}.


%% Example:
%% list_publisher_associations_response() :: #{
%%   <<"items">> => list(publisher_association()),
%%   <<"nextToken">> => string()
%% }
-type list_publisher_associations_response() :: #{binary() => any()}.


%% Example:
%% list_publishers_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_publishers_request() :: #{binary() => any()}.


%% Example:
%% list_publishers_response() :: #{
%%   <<"items">> => list(publisher_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_publishers_response() :: #{binary() => any()}.


%% Example:
%% list_registries_request() :: #{
%%   <<"filters">> => list(registry_filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_registries_request() :: #{binary() => any()}.


%% Example:
%% list_registries_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"registries">> => list(registry_summary())
%% }
-type list_registries_response() :: #{binary() => any()}.


%% Example:
%% list_registry_records_request() :: #{
%%   <<"filters">> => list(registry_record_filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_registry_records_request() :: #{binary() => any()}.


%% Example:
%% list_registry_records_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"registryRecords">> => list(registry_record_summary())
%% }
-type list_registry_records_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% managed_vpc_resource() :: #{
%%   <<"endpointIpAddressType">> => list(any()),
%%   <<"routingDomain">> => string(),
%%   <<"securityGroupIds">> => list(string()),
%%   <<"subnetIds">> => list(string()),
%%   <<"tags">> => map(),
%%   <<"vpcIdentifier">> => string()
%% }
-type managed_vpc_resource() :: #{binary() => any()}.


%% Example:
%% mcp_server_additional_data() :: #{
%%   <<"tools">> => mcp_tools_descriptor()
%% }
-type mcp_server_additional_data() :: #{binary() => any()}.


%% Example:
%% mcp_server_descriptor() :: #{
%%   <<"additionalData">> => mcp_server_additional_data(),
%%   <<"data">> => string(),
%%   <<"dataSchemaVersion">> => string(),
%%   <<"source">> => descriptor_source()
%% }
-type mcp_server_descriptor() :: #{binary() => any()}.


%% Example:
%% mcp_tools_descriptor() :: #{
%%   <<"data">> => string(),
%%   <<"dataSchemaVersion">> => string()
%% }
-type mcp_tools_descriptor() :: #{binary() => any()}.


%% Example:
%% o_auth2_authorization_data() :: #{
%%   <<"authorizationAttemptId">> => string(),
%%   <<"authorizationUrl">> => string(),
%%   <<"expiresAt">> => non_neg_integer(),
%%   <<"userId">> => string()
%% }
-type o_auth2_authorization_data() :: #{binary() => any()}.


%% Example:
%% private_endpoint_override() :: #{
%%   <<"domain">> => string(),
%%   <<"privateEndpoint">> => list()
%% }
-type private_endpoint_override() :: #{binary() => any()}.


%% Example:
%% provenance() :: #{
%%   <<"relation">> => list(any()),
%%   <<"sourceDetails">> => list(),
%%   <<"sourceId">> => string(),
%%   <<"sourceType">> => list(any())
%% }
-type provenance() :: #{binary() => any()}.


%% Example:
%% provenance_summary() :: #{
%%   <<"relation">> => list(any()),
%%   <<"sourceId">> => string(),
%%   <<"sourceType">> => list(any())
%% }
-type provenance_summary() :: #{binary() => any()}.


%% Example:
%% publisher() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"domainChallenge">> => domain_challenge(),
%%   <<"identifierType">> => list(any()),
%%   <<"publisherArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => string(),
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"value">> => list()
%% }
-type publisher() :: #{binary() => any()}.


%% Example:
%% publisher_association() :: #{
%%   <<"publicIdentifier">> => string(),
%%   <<"publisher">> => string(),
%%   <<"recordArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => string()
%% }
-type publisher_association() :: #{binary() => any()}.


%% Example:
%% publisher_summary() :: #{
%%   <<"associationCount">> => [integer()],
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"identifierType">> => list(any()),
%%   <<"pendingAssociationApprovalCount">> => [integer()],
%%   <<"publisherArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"value">> => list()
%% }
-type publisher_summary() :: #{binary() => any()}.


%% Example:
%% record_type_schema_override() :: #{
%%   <<"recordType">> => list(any()),
%%   <<"schema">> => string()
%% }
-type record_type_schema_override() :: #{binary() => any()}.


%% Example:
%% registry_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"values">> => list(string())
%% }
-type registry_filter() :: #{binary() => any()}.


%% Example:
%% registry_record_artifact_download() :: #{
%%   <<"downloadUrl">> => string(),
%%   <<"sha256">> => string()
%% }
-type registry_record_artifact_download() :: #{binary() => any()}.


%% Example:
%% registry_record_artifact_upload() :: #{
%%   <<"content">> => binary(),
%%   <<"sha256">> => string()
%% }
-type registry_record_artifact_upload() :: #{binary() => any()}.


%% Example:
%% registry_record_credential_provider_configuration() :: #{
%%   <<"credentialProvider">> => list(),
%%   <<"credentialProviderType">> => list(any())
%% }
-type registry_record_credential_provider_configuration() :: #{binary() => any()}.


%% Example:
%% registry_record_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"values">> => list(string())
%% }
-type registry_record_filter() :: #{binary() => any()}.


%% Example:
%% registry_record_iam_credential_provider() :: #{
%%   <<"region">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"service">> => string()
%% }
-type registry_record_iam_credential_provider() :: #{binary() => any()}.


%% Example:
%% registry_record_o_auth_credential_provider() :: #{
%%   <<"customParameters">> => map(),
%%   <<"grantType">> => list(any()),
%%   <<"providerArn">> => string(),
%%   <<"returnUrl">> => string(),
%%   <<"scopes">> => list([string()]())
%% }
-type registry_record_o_auth_credential_provider() :: #{binary() => any()}.


%% Example:
%% registry_record_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"createdByAutoDetection">> => [boolean()],
%%   <<"customMetadataSchemaComplianceStatus">> => list(any()),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"name">> => string(),
%%   <<"provenanceSummaryList">> => list(provenance_summary()),
%%   <<"recordArn">> => string(),
%%   <<"recordId">> => string(),
%%   <<"recordType">> => list(any()),
%%   <<"recordVersion">> => string(),
%%   <<"registryArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type registry_record_summary() :: #{binary() => any()}.


%% Example:
%% registry_summary() :: #{
%%   <<"autoDetection">> => auto_detection(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"discoveryConfiguration">> => discovery_configuration(),
%%   <<"name">> => string(),
%%   <<"registryArn">> => string(),
%%   <<"registryId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type registry_summary() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% s3_source_configuration() :: #{
%%   <<"bucketOwnerAccountId">> => string()
%% }
-type s3_source_configuration() :: #{binary() => any()}.


%% Example:
%% s3_synchronized_source() :: #{
%%   <<"eTag">> => string(),
%%   <<"synchronizedAt">> => non_neg_integer(),
%%   <<"url">> => string(),
%%   <<"versionId">> => string()
%% }
-type s3_synchronized_source() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% signature_agent_card_additional_data() :: #{
%%   <<"category">> => list(any())
%% }
-type signature_agent_card_additional_data() :: #{binary() => any()}.


%% Example:
%% signature_agent_card_descriptor() :: #{
%%   <<"additionalData">> => signature_agent_card_additional_data(),
%%   <<"data">> => string(),
%%   <<"dataSchemaVersion">> => string(),
%%   <<"source">> => descriptor_source()
%% }
-type signature_agent_card_descriptor() :: #{binary() => any()}.

%% Example:
%% submit_registry_record_for_approval_request() :: #{}
-type submit_registry_record_for_approval_request() :: #{}.


%% Example:
%% submit_registry_record_for_approval_response() :: #{
%%   <<"recordArn">> => string(),
%%   <<"recordId">> => string(),
%%   <<"registryArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type submit_registry_record_for_approval_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% update_publisher_association_approval_status_request() :: #{
%%   <<"approvalStatus">> := list(any()),
%%   <<"approvalStatusReason">> := string()
%% }
-type update_publisher_association_approval_status_request() :: #{binary() => any()}.

%% Example:
%% update_publisher_association_approval_status_response() :: #{}
-type update_publisher_association_approval_status_response() :: #{}.


%% Example:
%% update_registry_record_request() :: #{
%%   <<"artifact">> => updated_registry_record_artifact(),
%%   <<"customMetadata">> => updated_custom_metadata_map(),
%%   <<"description">> => updated_description(),
%%   <<"descriptors">> => updated_descriptors(),
%%   <<"displayName">> => updated_display_name(),
%%   <<"forceAuthentication">> => [boolean()],
%%   <<"name">> => string(),
%%   <<"provenance">> => list(provenance()),
%%   <<"recordType">> => list(any()),
%%   <<"recordVersion">> => string(),
%%   <<"triggerSynchronization">> => [boolean()]
%% }
-type update_registry_record_request() :: #{binary() => any()}.


%% Example:
%% update_registry_record_response() :: #{
%%   <<"authorizationData">> => list(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"createdByAutoDetection">> => [boolean()],
%%   <<"customMetadata">> => any(),
%%   <<"customMetadataSchemaComplianceStatus">> => list(any()),
%%   <<"description">> => string(),
%%   <<"descriptors">> => descriptors(),
%%   <<"displayName">> => string(),
%%   <<"name">> => string(),
%%   <<"provenance">> => list(provenance()),
%%   <<"recordArn">> => string(),
%%   <<"recordId">> => string(),
%%   <<"recordType">> => list(any()),
%%   <<"recordVersion">> => string(),
%%   <<"registryArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type update_registry_record_response() :: #{binary() => any()}.


%% Example:
%% update_registry_record_status_request() :: #{
%%   <<"status">> := list(any()),
%%   <<"statusReason">> := [string()]
%% }
-type update_registry_record_status_request() :: #{binary() => any()}.


%% Example:
%% update_registry_record_status_response() :: #{
%%   <<"recordArn">> => string(),
%%   <<"recordId">> => string(),
%%   <<"registryArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type update_registry_record_status_response() :: #{binary() => any()}.


%% Example:
%% update_registry_request() :: #{
%%   <<"approvalConfiguration">> => updated_approval_configuration(),
%%   <<"autoDetectionConfiguration">> => updated_auto_detection_configuration(),
%%   <<"customMetadataSchemaConfiguration">> => updated_custom_metadata_schema_configuration(),
%%   <<"description">> => updated_description(),
%%   <<"discoveryConfiguration">> => updated_discovery_configuration(),
%%   <<"name">> => string()
%% }
-type update_registry_request() :: #{binary() => any()}.


%% Example:
%% update_registry_response() :: #{
%%   <<"approvalConfiguration">> => approval_configuration(),
%%   <<"autoDetection">> => auto_detection(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"customMetadataSchemaConfiguration">> => custom_metadata_schema_configuration(),
%%   <<"description">> => string(),
%%   <<"discoveryConfiguration">> => discovery_configuration(),
%%   <<"encryptionConfiguration">> => encryption_configuration(),
%%   <<"name">> => string(),
%%   <<"registryArn">> => string(),
%%   <<"registryId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type update_registry_response() :: #{binary() => any()}.


%% Example:
%% updated_a2a_agent_card_descriptor() :: #{
%%   <<"optionalValue">> => updated_a2a_agent_card_descriptor_fields()
%% }
-type updated_a2a_agent_card_descriptor() :: #{binary() => any()}.


%% Example:
%% updated_a2a_agent_card_descriptor_fields() :: #{
%%   <<"data">> => updated_descriptor_data(),
%%   <<"dataSchemaVersion">> => updated_data_schema_version(),
%%   <<"source">> => updated_descriptor_source()
%% }
-type updated_a2a_agent_card_descriptor_fields() :: #{binary() => any()}.


%% Example:
%% updated_ag_ui_descriptor() :: #{
%%   <<"optionalValue">> => updated_ag_ui_descriptor_fields()
%% }
-type updated_ag_ui_descriptor() :: #{binary() => any()}.


%% Example:
%% updated_ag_ui_descriptor_fields() :: #{
%%   <<"source">> => updated_descriptor_source()
%% }
-type updated_ag_ui_descriptor_fields() :: #{binary() => any()}.


%% Example:
%% updated_agent_skills_additional_data() :: #{
%%   <<"optionalValue">> => updated_agent_skills_additional_data_fields()
%% }
-type updated_agent_skills_additional_data() :: #{binary() => any()}.


%% Example:
%% updated_agent_skills_additional_data_fields() :: #{
%%   <<"repositoryProvider">> => updated_agent_skills_repository_provider(),
%%   <<"skillMd">> => updated_agent_skills_md_descriptor(),
%%   <<"skillPackage">> => updated_agent_skills_package_descriptor(),
%%   <<"sourceConfiguration">> => updated_agent_skills_source_configuration()
%% }
-type updated_agent_skills_additional_data_fields() :: #{binary() => any()}.


%% Example:
%% updated_agent_skills_definition_descriptor() :: #{
%%   <<"optionalValue">> => updated_agent_skills_definition_descriptor_fields()
%% }
-type updated_agent_skills_definition_descriptor() :: #{binary() => any()}.


%% Example:
%% updated_agent_skills_definition_descriptor_fields() :: #{
%%   <<"additionalData">> => updated_agent_skills_additional_data(),
%%   <<"data">> => updated_descriptor_data(),
%%   <<"dataSchemaVersion">> => updated_data_schema_version()
%% }
-type updated_agent_skills_definition_descriptor_fields() :: #{binary() => any()}.


%% Example:
%% updated_agent_skills_md_descriptor() :: #{
%%   <<"optionalValue">> => updated_agent_skills_md_descriptor_fields()
%% }
-type updated_agent_skills_md_descriptor() :: #{binary() => any()}.


%% Example:
%% updated_agent_skills_md_descriptor_fields() :: #{
%%   <<"data">> => updated_descriptor_data(),
%%   <<"dataSchemaVersion">> => updated_data_schema_version(),
%%   <<"source">> => updated_descriptor_source()
%% }
-type updated_agent_skills_md_descriptor_fields() :: #{binary() => any()}.


%% Example:
%% updated_agent_skills_package_descriptor() :: #{
%%   <<"optionalValue">> => agent_skills_package_descriptor()
%% }
-type updated_agent_skills_package_descriptor() :: #{binary() => any()}.


%% Example:
%% updated_agent_skills_repository_provider() :: #{
%%   <<"optionalValue">> => list(any())
%% }
-type updated_agent_skills_repository_provider() :: #{binary() => any()}.


%% Example:
%% updated_agent_skills_source_configuration() :: #{
%%   <<"optionalValue">> => list()
%% }
-type updated_agent_skills_source_configuration() :: #{binary() => any()}.


%% Example:
%% updated_approval_configuration() :: #{
%%   <<"optionalValue">> => approval_configuration()
%% }
-type updated_approval_configuration() :: #{binary() => any()}.


%% Example:
%% updated_authorizer_configuration() :: #{
%%   <<"optionalValue">> => list()
%% }
-type updated_authorizer_configuration() :: #{binary() => any()}.


%% Example:
%% updated_auto_detection_configuration() :: #{
%%   <<"optionalValue">> => auto_detection_configuration()
%% }
-type updated_auto_detection_configuration() :: #{binary() => any()}.


%% Example:
%% updated_bot_category() :: #{
%%   <<"optionalValue">> => list(any())
%% }
-type updated_bot_category() :: #{binary() => any()}.


%% Example:
%% updated_custom_descriptor() :: #{
%%   <<"optionalValue">> => updated_custom_descriptor_fields()
%% }
-type updated_custom_descriptor() :: #{binary() => any()}.


%% Example:
%% updated_custom_descriptor_fields() :: #{
%%   <<"data">> => updated_descriptor_data()
%% }
-type updated_custom_descriptor_fields() :: #{binary() => any()}.


%% Example:
%% updated_custom_metadata_map() :: #{
%%   <<"optionalValue">> => any()
%% }
-type updated_custom_metadata_map() :: #{binary() => any()}.


%% Example:
%% updated_custom_metadata_schema_configuration() :: #{
%%   <<"optionalValue">> => custom_metadata_schema_configuration()
%% }
-type updated_custom_metadata_schema_configuration() :: #{binary() => any()}.


%% Example:
%% updated_data_schema_version() :: #{
%%   <<"optionalValue">> => string()
%% }
-type updated_data_schema_version() :: #{binary() => any()}.


%% Example:
%% updated_description() :: #{
%%   <<"optionalValue">> => string()
%% }
-type updated_description() :: #{binary() => any()}.


%% Example:
%% updated_descriptor_data() :: #{
%%   <<"optionalValue">> => string()
%% }
-type updated_descriptor_data() :: #{binary() => any()}.


%% Example:
%% updated_descriptor_source() :: #{
%%   <<"optionalValue">> => descriptor_source()
%% }
-type updated_descriptor_source() :: #{binary() => any()}.


%% Example:
%% updated_descriptors() :: #{
%%   <<"optionalValue">> => updated_descriptors_fields()
%% }
-type updated_descriptors() :: #{binary() => any()}.


%% Example:
%% updated_descriptors_fields() :: #{
%%   <<"a2aAgentCard">> => updated_a2a_agent_card_descriptor(),
%%   <<"agentSkillsDefinition">> => updated_agent_skills_definition_descriptor(),
%%   <<"agui">> => updated_ag_ui_descriptor(),
%%   <<"custom">> => updated_custom_descriptor(),
%%   <<"http">> => updated_http_descriptor(),
%%   <<"mcpServer">> => updated_mcp_server_descriptor(),
%%   <<"signatureAgentCard">> => updated_signature_agent_card_descriptor()
%% }
-type updated_descriptors_fields() :: #{binary() => any()}.


%% Example:
%% updated_discovery_configuration() :: #{
%%   <<"authorizerConfiguration">> => updated_authorizer_configuration()
%% }
-type updated_discovery_configuration() :: #{binary() => any()}.


%% Example:
%% updated_display_name() :: #{
%%   <<"optionalValue">> => string()
%% }
-type updated_display_name() :: #{binary() => any()}.


%% Example:
%% updated_http_descriptor() :: #{
%%   <<"optionalValue">> => updated_http_descriptor_fields()
%% }
-type updated_http_descriptor() :: #{binary() => any()}.


%% Example:
%% updated_http_descriptor_fields() :: #{
%%   <<"source">> => updated_descriptor_source()
%% }
-type updated_http_descriptor_fields() :: #{binary() => any()}.


%% Example:
%% updated_mcp_server_additional_data() :: #{
%%   <<"optionalValue">> => updated_mcp_server_additional_data_fields()
%% }
-type updated_mcp_server_additional_data() :: #{binary() => any()}.


%% Example:
%% updated_mcp_server_additional_data_fields() :: #{
%%   <<"tools">> => updated_mcp_tools_descriptor()
%% }
-type updated_mcp_server_additional_data_fields() :: #{binary() => any()}.


%% Example:
%% updated_mcp_server_descriptor() :: #{
%%   <<"optionalValue">> => updated_mcp_server_descriptor_fields()
%% }
-type updated_mcp_server_descriptor() :: #{binary() => any()}.


%% Example:
%% updated_mcp_server_descriptor_fields() :: #{
%%   <<"additionalData">> => updated_mcp_server_additional_data(),
%%   <<"data">> => updated_descriptor_data(),
%%   <<"dataSchemaVersion">> => updated_data_schema_version(),
%%   <<"source">> => updated_descriptor_source()
%% }
-type updated_mcp_server_descriptor_fields() :: #{binary() => any()}.


%% Example:
%% updated_mcp_tools_descriptor() :: #{
%%   <<"optionalValue">> => updated_mcp_tools_descriptor_fields()
%% }
-type updated_mcp_tools_descriptor() :: #{binary() => any()}.


%% Example:
%% updated_mcp_tools_descriptor_fields() :: #{
%%   <<"data">> => updated_descriptor_data(),
%%   <<"dataSchemaVersion">> => updated_data_schema_version()
%% }
-type updated_mcp_tools_descriptor_fields() :: #{binary() => any()}.


%% Example:
%% updated_registry_record_artifact() :: #{
%%   <<"optionalValue">> => registry_record_artifact_upload()
%% }
-type updated_registry_record_artifact() :: #{binary() => any()}.


%% Example:
%% updated_signature_agent_card_additional_data() :: #{
%%   <<"optionalValue">> => updated_signature_agent_card_additional_data_fields()
%% }
-type updated_signature_agent_card_additional_data() :: #{binary() => any()}.


%% Example:
%% updated_signature_agent_card_additional_data_fields() :: #{
%%   <<"category">> => updated_bot_category()
%% }
-type updated_signature_agent_card_additional_data_fields() :: #{binary() => any()}.


%% Example:
%% updated_signature_agent_card_descriptor() :: #{
%%   <<"optionalValue">> => updated_signature_agent_card_descriptor_fields()
%% }
-type updated_signature_agent_card_descriptor() :: #{binary() => any()}.


%% Example:
%% updated_signature_agent_card_descriptor_fields() :: #{
%%   <<"additionalData">> => updated_signature_agent_card_additional_data(),
%%   <<"data">> => updated_descriptor_data(),
%%   <<"dataSchemaVersion">> => updated_data_schema_version(),
%%   <<"source">> => updated_descriptor_source()
%% }
-type updated_signature_agent_card_descriptor_fields() :: #{binary() => any()}.

%% Example:
%% validate_publisher_request() :: #{}
-type validate_publisher_request() :: #{}.


%% Example:
%% validate_publisher_response() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"domainChallenge">> => domain_challenge(),
%%   <<"identifierType">> => list(any()),
%%   <<"publisherArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => string(),
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"value">> => list()
%% }
-type validate_publisher_response() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => [string()],
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% workload_identity_details() :: #{
%%   <<"workloadIdentityArn">> => [string()]
%% }
-type workload_identity_details() :: #{binary() => any()}.

-type associate_publisher_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    internal_server_exception() | 
    dependency_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_publisher_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_registry_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_registry_record_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_publisher_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_registry_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_registry_record_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type disassociate_publisher_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_publisher_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_registry_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_registry_record_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type list_publisher_associations_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_publishers_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_registries_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_registry_records_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type submit_registry_record_for_approval_errors() ::
    validation_exception() | 
    throttling_exception() | 
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
    access_denied_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type update_publisher_association_approval_status_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_registry_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_registry_record_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_registry_record_status_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type validate_publisher_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associate a registry record with a publisher and assign the record a
%% public identifier under the
%% publisher's domain.
%%
%% The registry record must be APPROVED and the publisher must be ACTIVE. A
%% registry record can have only one publisher association. The new
%% association starts in
%% PENDING_APPROVAL until a curator approves or rejects it.
%% A ConflictException (HTTP 409) means the publisher is not ACTIVE yet, the
%% registry record already
%% has an association, or another registry record already holds the public
%% identifier. To retry
%% safely, repeat the request with the same clientToken; a retry returns the
%% original association.
%% If the publisher has reached its association quota, the request fails with
%% ServiceQuotaExceededException (HTTP 402). Remove an unused association or
%% request a quota increase.
-spec associate_publisher(aws_client:aws_client(), associate_publisher_request()) ->
    {ok, associate_publisher_response(), tuple()} |
    {error, any()} |
    {error, associate_publisher_errors(), tuple()}.
associate_publisher(Client, Input) ->
    associate_publisher(Client, Input, []).

-spec associate_publisher(aws_client:aws_client(), associate_publisher_request(), proplists:proplist()) ->
    {ok, associate_publisher_response(), tuple()} |
    {error, any()} |
    {error, associate_publisher_errors(), tuple()}.
associate_publisher(Client, Input0, Options0) ->
    Method = post,
    Path = ["/associations"],
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

%% @doc Create a publisher for a domain you control.
%%
%% The publisher starts in ACTION_REQUIRED, and the
%% response includes a domainChallenge. To verify the domain, create a DNS
%% TXT record with the
%% challenge's recordName and recordValue. When the registry finds the
%% record, the publisher becomes
%% ACTIVE and you can associate registry records with it.
%% Your account can have one publisher per domain. Creating a second
%% publisher for the same domain
%% fails with ConflictException unless the request repeats the original
%% clientToken, which returns the
%% existing publisher. The request also fails with ConflictException when
%% another account has already
%% verified the domain.
%% If your account has reached its Publisher quota, the request fails with
%% ServiceQuotaExceededException (HTTP 402). Delete an unused Publisher or
%% request a quota increase.
-spec create_publisher(aws_client:aws_client(), create_publisher_request()) ->
    {ok, create_publisher_response(), tuple()} |
    {error, any()} |
    {error, create_publisher_errors(), tuple()}.
create_publisher(Client, Input) ->
    create_publisher(Client, Input, []).

-spec create_publisher(aws_client:aws_client(), create_publisher_request(), proplists:proplist()) ->
    {ok, create_publisher_response(), tuple()} |
    {error, any()} |
    {error, create_publisher_errors(), tuple()}.
create_publisher(Client, Input0, Options0) ->
    Method = post,
    Path = ["/publishers"],
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

%% @doc Creates a new registry, a catalog that organizes registry records and
%% defines their discovery authorization and record approval behavior.
%%
%% Creation is asynchronous: the registry begins in the CREATING status and
%% becomes usable once it reaches READY.
-spec create_registry(aws_client:aws_client(), create_registry_request()) ->
    {ok, create_registry_response(), tuple()} |
    {error, any()} |
    {error, create_registry_errors(), tuple()}.
create_registry(Client, Input) ->
    create_registry(Client, Input, []).

-spec create_registry(aws_client:aws_client(), create_registry_request(), proplists:proplist()) ->
    {ok, create_registry_response(), tuple()} |
    {error, any()} |
    {error, create_registry_errors(), tuple()}.
create_registry(Client, Input0, Options0) ->
    Method = post,
    Path = ["/registries"],
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

%% @doc Creates a registry record within a registry.
%%
%% A registry record describes a discoverable resource, such as an MCP
%% server, an agent, an agent skill, or a custom resource. For an agent
%% skill, you can upload a skill package in `artifact', or synchronize
%% the skill from an Amazon S3 or GitHub source. Creation is asynchronous:
%% the operation returns the record with the `CREATING' status while the
%% registry processes it. If a GitHub user must first authorize access to the
%% source, the operation returns the record with the
%% `CREATE_PENDING_AUTH' status instead.
-spec create_registry_record(aws_client:aws_client(), binary() | list(), create_registry_record_request()) ->
    {ok, create_registry_record_response(), tuple()} |
    {error, any()} |
    {error, create_registry_record_errors(), tuple()}.
create_registry_record(Client, RegistryId, Input) ->
    create_registry_record(Client, RegistryId, Input, []).

-spec create_registry_record(aws_client:aws_client(), binary() | list(), create_registry_record_request(), proplists:proplist()) ->
    {ok, create_registry_record_response(), tuple()} |
    {error, any()} |
    {error, create_registry_record_errors(), tuple()}.
create_registry_record(Client, RegistryId, Input0, Options0) ->
    Method = post,
    Path = ["/registries/", aws_util:encode_uri(RegistryId), "/records"],
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

%% @doc Delete a publisher.
%%
%% A successful call returns an empty response. You can't delete a
%% publisher
%% that has registry record associations; disassociate every registry record
%% from it first. The
%% request fails with ConflictException while the publisher has associations
%% or another delete is in
%% progress. Association removals can take a few seconds to be reflected, so
%% a delete that follows a
%% disassociation can briefly fail with ConflictException; retry after a
%% short wait. If the publisher
%% ARN names your account and the publisher doesn't exist, the request
%% fails with
%% ResourceNotFoundException.
-spec delete_publisher(aws_client:aws_client(), binary() | list(), delete_publisher_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_publisher_errors(), tuple()}.
delete_publisher(Client, PublisherArn, Input) ->
    delete_publisher(Client, PublisherArn, Input, []).

-spec delete_publisher(aws_client:aws_client(), binary() | list(), delete_publisher_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_publisher_errors(), tuple()}.
delete_publisher(Client, PublisherArn, Input0, Options0) ->
    Method = delete,
    Path = ["/publishers/", aws_util:encode_uri(PublisherArn), ""],
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

%% @doc Deletes a registry.
%%
%% Deletion is asynchronous: the registry transitions to the DELETING status
%% and is removed along with its registry records.
-spec delete_registry(aws_client:aws_client(), binary() | list(), delete_registry_request()) ->
    {ok, delete_registry_response(), tuple()} |
    {error, any()} |
    {error, delete_registry_errors(), tuple()}.
delete_registry(Client, RegistryId, Input) ->
    delete_registry(Client, RegistryId, Input, []).

-spec delete_registry(aws_client:aws_client(), binary() | list(), delete_registry_request(), proplists:proplist()) ->
    {ok, delete_registry_response(), tuple()} |
    {error, any()} |
    {error, delete_registry_errors(), tuple()}.
delete_registry(Client, RegistryId, Input0, Options0) ->
    Method = delete,
    Path = ["/registries/", aws_util:encode_uri(RegistryId), ""],
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

%% @doc Deletes a registry record
-spec delete_registry_record(aws_client:aws_client(), binary() | list(), binary() | list(), delete_registry_record_request()) ->
    {ok, delete_registry_record_response(), tuple()} |
    {error, any()} |
    {error, delete_registry_record_errors(), tuple()}.
delete_registry_record(Client, RecordId, RegistryId, Input) ->
    delete_registry_record(Client, RecordId, RegistryId, Input, []).

-spec delete_registry_record(aws_client:aws_client(), binary() | list(), binary() | list(), delete_registry_record_request(), proplists:proplist()) ->
    {ok, delete_registry_record_response(), tuple()} |
    {error, any()} |
    {error, delete_registry_record_errors(), tuple()}.
delete_registry_record(Client, RecordId, RegistryId, Input0, Options0) ->
    Method = delete,
    Path = ["/registries/", aws_util:encode_uri(RegistryId), "/records/", aws_util:encode_uri(RecordId), ""],
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

%% @doc Remove a registry record's publisher association and release its
%% public identifier.
%%
%% A successful
%% call returns an empty response. Disassociating a registry record that has
%% no association succeeds.
%% If another account created the association, the request fails with
%% AccessDeniedException.
-spec disassociate_publisher(aws_client:aws_client(), binary() | list(), disassociate_publisher_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_publisher_errors(), tuple()}.
disassociate_publisher(Client, RecordArn, Input) ->
    disassociate_publisher(Client, RecordArn, Input, []).

-spec disassociate_publisher(aws_client:aws_client(), binary() | list(), disassociate_publisher_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_publisher_errors(), tuple()}.
disassociate_publisher(Client, RecordArn, Input0, Options0) ->
    Method = delete,
    Path = ["/associations/", aws_util:encode_multi_segment_uri(RecordArn), ""],
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

%% @doc Get a publisher, including its verification status and the DNS
%% challenge for its domain.
%%
%% If the
%% publisher ARN names your account and the publisher doesn't exist, the
%% request fails with
%% ResourceNotFoundException.
-spec get_publisher(aws_client:aws_client(), binary() | list()) ->
    {ok, publisher(), tuple()} |
    {error, any()} |
    {error, get_publisher_errors(), tuple()}.
get_publisher(Client, PublisherArn)
  when is_map(Client) ->
    get_publisher(Client, PublisherArn, #{}, #{}).

-spec get_publisher(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, publisher(), tuple()} |
    {error, any()} |
    {error, get_publisher_errors(), tuple()}.
get_publisher(Client, PublisherArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_publisher(Client, PublisherArn, QueryMap, HeadersMap, []).

-spec get_publisher(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, publisher(), tuple()} |
    {error, any()} |
    {error, get_publisher_errors(), tuple()}.
get_publisher(Client, PublisherArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/publishers/", aws_util:encode_uri(PublisherArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a registry by identifier (ARN or ID)
-spec get_registry(aws_client:aws_client(), binary() | list()) ->
    {ok, get_registry_response(), tuple()} |
    {error, any()} |
    {error, get_registry_errors(), tuple()}.
get_registry(Client, RegistryId)
  when is_map(Client) ->
    get_registry(Client, RegistryId, #{}, #{}).

-spec get_registry(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_registry_response(), tuple()} |
    {error, any()} |
    {error, get_registry_errors(), tuple()}.
get_registry(Client, RegistryId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_registry(Client, RegistryId, QueryMap, HeadersMap, []).

-spec get_registry(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_registry_response(), tuple()} |
    {error, any()} |
    {error, get_registry_errors(), tuple()}.
get_registry(Client, RegistryId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/registries/", aws_util:encode_uri(RegistryId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the details of a registry record.
%%
%% The response describes the record's latest revision, including a
%% revision that isn't approved yet. For a skill record, the operation
%% also returns the skill package in `artifact' and the source that the
%% registry last synchronized the skill from in `synchronizedSource'.
-spec get_registry_record(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_registry_record_response(), tuple()} |
    {error, any()} |
    {error, get_registry_record_errors(), tuple()}.
get_registry_record(Client, RecordId, RegistryId)
  when is_map(Client) ->
    get_registry_record(Client, RecordId, RegistryId, #{}, #{}).

-spec get_registry_record(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_registry_record_response(), tuple()} |
    {error, any()} |
    {error, get_registry_record_errors(), tuple()}.
get_registry_record(Client, RecordId, RegistryId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_registry_record(Client, RecordId, RegistryId, QueryMap, HeadersMap, []).

-spec get_registry_record(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_registry_record_response(), tuple()} |
    {error, any()} |
    {error, get_registry_record_errors(), tuple()}.
get_registry_record(Client, RecordId, RegistryId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/registries/", aws_util:encode_uri(RegistryId), "/records/", aws_util:encode_uri(RecordId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the registry record associations your account created.
%%
%% Pass publisherArn to list only the
%% associations for that publisher; omit it to list associations across all
%% publishers. Results are
%% eventually consistent, so an association you just created or removed can
%% take a few seconds to
%% appear in or disappear from the list.
-spec list_publisher_associations(aws_client:aws_client()) ->
    {ok, list_publisher_associations_response(), tuple()} |
    {error, any()} |
    {error, list_publisher_associations_errors(), tuple()}.
list_publisher_associations(Client)
  when is_map(Client) ->
    list_publisher_associations(Client, #{}, #{}).

-spec list_publisher_associations(aws_client:aws_client(), map(), map()) ->
    {ok, list_publisher_associations_response(), tuple()} |
    {error, any()} |
    {error, list_publisher_associations_errors(), tuple()}.
list_publisher_associations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_publisher_associations(Client, QueryMap, HeadersMap, []).

-spec list_publisher_associations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_publisher_associations_response(), tuple()} |
    {error, any()} |
    {error, list_publisher_associations_errors(), tuple()}.
list_publisher_associations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/associations"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"publisherArn">>, maps:get(<<"publisherArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the publishers your account owns, followed by the ACTIVE
%% publishers shared with your account.
-spec list_publishers(aws_client:aws_client()) ->
    {ok, list_publishers_response(), tuple()} |
    {error, any()} |
    {error, list_publishers_errors(), tuple()}.
list_publishers(Client)
  when is_map(Client) ->
    list_publishers(Client, #{}, #{}).

-spec list_publishers(aws_client:aws_client(), map(), map()) ->
    {ok, list_publishers_response(), tuple()} |
    {error, any()} |
    {error, list_publishers_errors(), tuple()}.
list_publishers(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_publishers(Client, QueryMap, HeadersMap, []).

-spec list_publishers(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_publishers_response(), tuple()} |
    {error, any()} |
    {error, list_publishers_errors(), tuple()}.
list_publishers(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/publishers"],
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

%% @doc Lists the registries in the caller's account and Region, with
%% optional filtering by status and discovery authorizer type
-spec list_registries(aws_client:aws_client(), list_registries_request()) ->
    {ok, list_registries_response(), tuple()} |
    {error, any()} |
    {error, list_registries_errors(), tuple()}.
list_registries(Client, Input) ->
    list_registries(Client, Input, []).

-spec list_registries(aws_client:aws_client(), list_registries_request(), proplists:proplist()) ->
    {ok, list_registries_response(), tuple()} |
    {error, any()} |
    {error, list_registries_errors(), tuple()}.
list_registries(Client, Input0, Options0) ->
    Method = post,
    Path = ["/registries-list"],
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

%% @doc Lists the registry records within a registry, with optional filtering
%% by name, status, and record type
-spec list_registry_records(aws_client:aws_client(), binary() | list(), list_registry_records_request()) ->
    {ok, list_registry_records_response(), tuple()} |
    {error, any()} |
    {error, list_registry_records_errors(), tuple()}.
list_registry_records(Client, RegistryId, Input) ->
    list_registry_records(Client, RegistryId, Input, []).

-spec list_registry_records(aws_client:aws_client(), binary() | list(), list_registry_records_request(), proplists:proplist()) ->
    {ok, list_registry_records_response(), tuple()} |
    {error, any()} |
    {error, list_registry_records_errors(), tuple()}.
list_registry_records(Client, RegistryId, Input0, Options0) ->
    Method = post,
    Path = ["/registries/", aws_util:encode_uri(RegistryId), "/records-list"],
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

%% @doc Lists the tags associated with the specified Amazon Web Services
%% Agent Registry resource.
%%
%% Returns the current tag key-value pairs on the resource.
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
    Path = ["/tags/", aws_util:encode_multi_segment_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Submits a DRAFT registry record for approval, moving it into the
%% registry's approval workflow.
%%
%% Depending on the registry's approval configuration, the record is
%% either auto-approved or set to PENDING_APPROVAL for a curator to approve
%% or reject.
-spec submit_registry_record_for_approval(aws_client:aws_client(), binary() | list(), binary() | list(), submit_registry_record_for_approval_request()) ->
    {ok, submit_registry_record_for_approval_response(), tuple()} |
    {error, any()} |
    {error, submit_registry_record_for_approval_errors(), tuple()}.
submit_registry_record_for_approval(Client, RecordId, RegistryId, Input) ->
    submit_registry_record_for_approval(Client, RecordId, RegistryId, Input, []).

-spec submit_registry_record_for_approval(aws_client:aws_client(), binary() | list(), binary() | list(), submit_registry_record_for_approval_request(), proplists:proplist()) ->
    {ok, submit_registry_record_for_approval_response(), tuple()} |
    {error, any()} |
    {error, submit_registry_record_for_approval_errors(), tuple()}.
submit_registry_record_for_approval(Client, RecordId, RegistryId, Input0, Options0) ->
    Method = post,
    Path = ["/registries/", aws_util:encode_uri(RegistryId), "/records/", aws_util:encode_uri(RecordId), "/submit-for-approval"],
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

%% @doc Adds or overwrites one or more tags for the specified Amazon Web
%% Services Agent Registry resource.
%%
%% Tags are key-value pairs that you can use to categorize and manage Amazon
%% Web Services resources. If a tag with the same key already exists on the
%% resource, the service replaces its value with the value you specify.
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
    Path = ["/tags/", aws_util:encode_multi_segment_uri(ResourceArn), ""],
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

%% @doc Removes one or more tags from the specified Amazon Web Services Agent
%% Registry resource.
%%
%% The operation removes only the tags whose keys you supply; other tags on
%% the resource remain unchanged.
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
    Path = ["/tags/", aws_util:encode_multi_segment_uri(ResourceArn), ""],
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

%% @doc Record the curator's decision (APPROVED or REJECTED) on a
%% registry record's publisher association.
%%
%% A successful call returns an empty response. Repeating the decision the
%% association already holds
%% changes nothing; the same approvalStatus with a different
%% approvalStatusReason updates the reason.
%% If the caller has no publisher association for the registry record, the
%% request fails with
%% AccessDeniedException. A ConflictException (HTTP 409) means the
%% association is not in a state
%% that accepts the decision (e.g. not PENDING_APPROVAL/APPROVED/REJECTED) or
%% it changed while the
%% request was being applied; read it again before deciding whether to
%% resubmit.
-spec update_publisher_association_approval_status(aws_client:aws_client(), binary() | list(), update_publisher_association_approval_status_request()) ->
    {ok, update_publisher_association_approval_status_response(), tuple()} |
    {error, any()} |
    {error, update_publisher_association_approval_status_errors(), tuple()}.
update_publisher_association_approval_status(Client, RecordArn, Input) ->
    update_publisher_association_approval_status(Client, RecordArn, Input, []).

-spec update_publisher_association_approval_status(aws_client:aws_client(), binary() | list(), update_publisher_association_approval_status_request(), proplists:proplist()) ->
    {ok, update_publisher_association_approval_status_response(), tuple()} |
    {error, any()} |
    {error, update_publisher_association_approval_status_errors(), tuple()}.
update_publisher_association_approval_status(Client, RecordArn, Input0, Options0) ->
    Method = patch,
    Path = ["/associations/", aws_util:encode_multi_segment_uri(RecordArn), ""],
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

%% @doc Updates an existing registry.
%%
%% This operation uses PATCH semantics: specify only the fields you want to
%% change, and omit the rest to leave them unchanged. Updates are applied
%% asynchronously and the registry transitions to the UPDATING status while
%% they are processed.
-spec update_registry(aws_client:aws_client(), binary() | list(), update_registry_request()) ->
    {ok, update_registry_response(), tuple()} |
    {error, any()} |
    {error, update_registry_errors(), tuple()}.
update_registry(Client, RegistryId, Input) ->
    update_registry(Client, RegistryId, Input, []).

-spec update_registry(aws_client:aws_client(), binary() | list(), update_registry_request(), proplists:proplist()) ->
    {ok, update_registry_response(), tuple()} |
    {error, any()} |
    {error, update_registry_errors(), tuple()}.
update_registry(Client, RegistryId, Input0, Options0) ->
    Method = patch,
    Path = ["/registries/", aws_util:encode_uri(RegistryId), ""],
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

%% @doc Updates a registry record.
%%
%% The update is asynchronous: the operation returns the record with the
%% `UPDATING' status while the registry processes it. If a GitHub user
%% must first authorize access to the record's skill source, the
%% operation returns the record with the `UPDATE_PENDING_AUTH' status
%% instead. Fields that use update wrappers follow PATCH semantics: omit the
%% field to leave it unchanged.
-spec update_registry_record(aws_client:aws_client(), binary() | list(), binary() | list(), update_registry_record_request()) ->
    {ok, update_registry_record_response(), tuple()} |
    {error, any()} |
    {error, update_registry_record_errors(), tuple()}.
update_registry_record(Client, RecordId, RegistryId, Input) ->
    update_registry_record(Client, RecordId, RegistryId, Input, []).

-spec update_registry_record(aws_client:aws_client(), binary() | list(), binary() | list(), update_registry_record_request(), proplists:proplist()) ->
    {ok, update_registry_record_response(), tuple()} |
    {error, any()} |
    {error, update_registry_record_errors(), tuple()}.
update_registry_record(Client, RecordId, RegistryId, Input0, Options0) ->
    Method = patch,
    Path = ["/registries/", aws_util:encode_uri(RegistryId), "/records/", aws_util:encode_uri(RecordId), ""],
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

%% @doc Updates the status of a registry record as part of the registry's
%% curation workflow, for example to approve or reject a record that is
%% pending approval, or to deprecate an approved record so that it is no
%% longer discoverable
-spec update_registry_record_status(aws_client:aws_client(), binary() | list(), binary() | list(), update_registry_record_status_request()) ->
    {ok, update_registry_record_status_response(), tuple()} |
    {error, any()} |
    {error, update_registry_record_status_errors(), tuple()}.
update_registry_record_status(Client, RecordId, RegistryId, Input) ->
    update_registry_record_status(Client, RecordId, RegistryId, Input, []).

-spec update_registry_record_status(aws_client:aws_client(), binary() | list(), binary() | list(), update_registry_record_status_request(), proplists:proplist()) ->
    {ok, update_registry_record_status_response(), tuple()} |
    {error, any()} |
    {error, update_registry_record_status_errors(), tuple()}.
update_registry_record_status(Client, RecordId, RegistryId, Input0, Options0) ->
    Method = patch,
    Path = ["/registries/", aws_util:encode_uri(RegistryId), "/records/", aws_util:encode_uri(RecordId), "/status"],
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

%% @doc Restart domain verification for a publisher in FAILED or SUSPENDED.
%%
%% The publisher returns to
%% ACTION_REQUIRED with a new domainChallenge, which the response includes.
%% Update the DNS TXT record
%% with the new recordValue; the previous value no longer verifies the
%% domain. The request fails with
%% ConflictException when the publisher is ACTIVE, verification is already in
%% progress
%% (ACTION_REQUIRED), or the publisher is being deleted.
-spec validate_publisher(aws_client:aws_client(), binary() | list(), validate_publisher_request()) ->
    {ok, validate_publisher_response(), tuple()} |
    {error, any()} |
    {error, validate_publisher_errors(), tuple()}.
validate_publisher(Client, PublisherArn, Input) ->
    validate_publisher(Client, PublisherArn, Input, []).

-spec validate_publisher(aws_client:aws_client(), binary() | list(), validate_publisher_request(), proplists:proplist()) ->
    {ok, validate_publisher_response(), tuple()} |
    {error, any()} |
    {error, validate_publisher_errors(), tuple()}.
validate_publisher(Client, PublisherArn, Input0, Options0) ->
    Method = post,
    Path = ["/publishers/", aws_util:encode_uri(PublisherArn), "/verification"],
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
    Client1 = Client#{service => <<"agent-registry">>},
    DefaultHost = build_host(<<"agent-registry-control">>, Client1),
    URL0 = build_url(DefaultHost, Path, Client1),
    PathBin = erlang:iolist_to_binary(Path),
    {URL1, Host} = aws_util:apply_endpoint_url_override(URL0, DefaultHost, PathBin, <<"AWS_ENDPOINT_URL_AGENT_REGISTRY_CONTROL">>),
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

