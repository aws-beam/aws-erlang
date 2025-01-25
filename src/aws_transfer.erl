%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Transfer Family is a fully managed service that enables the transfer
%% of files over the File
%% Transfer Protocol (FTP), File Transfer Protocol over SSL (FTPS), or Secure
%% Shell (SSH) File
%% Transfer Protocol (SFTP) directly into and out of Amazon Simple Storage
%% Service (Amazon S3) or Amazon EFS.
%%
%% Additionally, you can use Applicability Statement 2 (AS2) to transfer
%% files into and out of Amazon S3.
%% Amazon Web Services helps you seamlessly migrate your file transfer
%% workflows to Transfer Family by integrating
%% with existing authentication systems, and providing DNS routing with
%% Amazon Route 53 so
%% nothing changes for your customers and partners, or their applications.
%% With your data in
%% Amazon S3, you can use it with Amazon Web Services services for
%% processing, analytics, machine learning, and
%% archiving. Getting started with Transfer Family is easy since there is no
%% infrastructure to buy and
%% set up.
-module(aws_transfer).

-export([create_access/2,
         create_access/3,
         create_agreement/2,
         create_agreement/3,
         create_connector/2,
         create_connector/3,
         create_profile/2,
         create_profile/3,
         create_server/2,
         create_server/3,
         create_user/2,
         create_user/3,
         create_web_app/2,
         create_web_app/3,
         create_workflow/2,
         create_workflow/3,
         delete_access/2,
         delete_access/3,
         delete_agreement/2,
         delete_agreement/3,
         delete_certificate/2,
         delete_certificate/3,
         delete_connector/2,
         delete_connector/3,
         delete_host_key/2,
         delete_host_key/3,
         delete_profile/2,
         delete_profile/3,
         delete_server/2,
         delete_server/3,
         delete_ssh_public_key/2,
         delete_ssh_public_key/3,
         delete_user/2,
         delete_user/3,
         delete_web_app/2,
         delete_web_app/3,
         delete_web_app_customization/2,
         delete_web_app_customization/3,
         delete_workflow/2,
         delete_workflow/3,
         describe_access/2,
         describe_access/3,
         describe_agreement/2,
         describe_agreement/3,
         describe_certificate/2,
         describe_certificate/3,
         describe_connector/2,
         describe_connector/3,
         describe_execution/2,
         describe_execution/3,
         describe_host_key/2,
         describe_host_key/3,
         describe_profile/2,
         describe_profile/3,
         describe_security_policy/2,
         describe_security_policy/3,
         describe_server/2,
         describe_server/3,
         describe_user/2,
         describe_user/3,
         describe_web_app/2,
         describe_web_app/3,
         describe_web_app_customization/2,
         describe_web_app_customization/3,
         describe_workflow/2,
         describe_workflow/3,
         import_certificate/2,
         import_certificate/3,
         import_host_key/2,
         import_host_key/3,
         import_ssh_public_key/2,
         import_ssh_public_key/3,
         list_accesses/2,
         list_accesses/3,
         list_agreements/2,
         list_agreements/3,
         list_certificates/2,
         list_certificates/3,
         list_connectors/2,
         list_connectors/3,
         list_executions/2,
         list_executions/3,
         list_file_transfer_results/2,
         list_file_transfer_results/3,
         list_host_keys/2,
         list_host_keys/3,
         list_profiles/2,
         list_profiles/3,
         list_security_policies/2,
         list_security_policies/3,
         list_servers/2,
         list_servers/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_users/2,
         list_users/3,
         list_web_apps/2,
         list_web_apps/3,
         list_workflows/2,
         list_workflows/3,
         send_workflow_step_state/2,
         send_workflow_step_state/3,
         start_directory_listing/2,
         start_directory_listing/3,
         start_file_transfer/2,
         start_file_transfer/3,
         start_server/2,
         start_server/3,
         stop_server/2,
         stop_server/3,
         tag_resource/2,
         tag_resource/3,
         test_connection/2,
         test_connection/3,
         test_identity_provider/2,
         test_identity_provider/3,
         untag_resource/2,
         untag_resource/3,
         update_access/2,
         update_access/3,
         update_agreement/2,
         update_agreement/3,
         update_certificate/2,
         update_certificate/3,
         update_connector/2,
         update_connector/3,
         update_host_key/2,
         update_host_key/3,
         update_profile/2,
         update_profile/3,
         update_server/2,
         update_server/3,
         update_user/2,
         update_user/3,
         update_web_app/2,
         update_web_app/3,
         update_web_app_customization/2,
         update_web_app_customization/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% described_certificate() :: #{
%%   <<"ActiveDate">> => non_neg_integer(),
%%   <<"Arn">> => string(),
%%   <<"Certificate">> => string(),
%%   <<"CertificateChain">> => string(),
%%   <<"CertificateId">> => string(),
%%   <<"Description">> => string(),
%%   <<"InactiveDate">> => non_neg_integer(),
%%   <<"NotAfterDate">> => non_neg_integer(),
%%   <<"NotBeforeDate">> => non_neg_integer(),
%%   <<"Serial">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => list(tag()()),
%%   <<"Type">> => list(any()),
%%   <<"Usage">> => list(any())
%% }
-type described_certificate() :: #{binary() => any()}.

%% Example:
%% workflow_detail() :: #{
%%   <<"ExecutionRole">> => string(),
%%   <<"WorkflowId">> => string()
%% }
-type workflow_detail() :: #{binary() => any()}.

%% Example:
%% describe_security_policy_request() :: #{
%%   <<"SecurityPolicyName">> := string()
%% }
-type describe_security_policy_request() :: #{binary() => any()}.

%% Example:
%% create_workflow_request() :: #{
%%   <<"Description">> => string(),
%%   <<"OnExceptionSteps">> => list(workflow_step()()),
%%   <<"Steps">> := list(workflow_step()()),
%%   <<"Tags">> => list(tag()())
%% }
-type create_workflow_request() :: #{binary() => any()}.

%% Example:
%% update_certificate_request() :: #{
%%   <<"ActiveDate">> => non_neg_integer(),
%%   <<"CertificateId">> := string(),
%%   <<"Description">> => string(),
%%   <<"InactiveDate">> => non_neg_integer()
%% }
-type update_certificate_request() :: #{binary() => any()}.

%% Example:
%% described_access() :: #{
%%   <<"ExternalId">> => string(),
%%   <<"HomeDirectory">> => string(),
%%   <<"HomeDirectoryMappings">> => list(home_directory_map_entry()()),
%%   <<"HomeDirectoryType">> => list(any()),
%%   <<"Policy">> => string(),
%%   <<"PosixProfile">> => posix_profile(),
%%   <<"Role">> => string()
%% }
-type described_access() :: #{binary() => any()}.

%% Example:
%% describe_access_response() :: #{
%%   <<"Access">> => described_access(),
%%   <<"ServerId">> => string()
%% }
-type describe_access_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"Arn">> := string(),
%%   <<"Tags">> := list(tag()())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% describe_agreement_request() :: #{
%%   <<"AgreementId">> := string(),
%%   <<"ServerId">> := string()
%% }
-type describe_agreement_request() :: #{binary() => any()}.

%% Example:
%% update_server_response() :: #{
%%   <<"ServerId">> => string()
%% }
-type update_server_response() :: #{binary() => any()}.

%% Example:
%% describe_profile_request() :: #{
%%   <<"ProfileId">> := string()
%% }
-type describe_profile_request() :: #{binary() => any()}.

%% Example:
%% describe_access_request() :: #{
%%   <<"ExternalId">> := string(),
%%   <<"ServerId">> := string()
%% }
-type describe_access_request() :: #{binary() => any()}.

%% Example:
%% described_web_app_customization() :: #{
%%   <<"Arn">> => string(),
%%   <<"FaviconFile">> => binary(),
%%   <<"LogoFile">> => binary(),
%%   <<"Title">> => string(),
%%   <<"WebAppId">> => string()
%% }
-type described_web_app_customization() :: #{binary() => any()}.

%% Example:
%% describe_server_request() :: #{
%%   <<"ServerId">> := string()
%% }
-type describe_server_request() :: #{binary() => any()}.

%% Example:
%% listed_server() :: #{
%%   <<"Arn">> => string(),
%%   <<"Domain">> => list(any()),
%%   <<"EndpointType">> => list(any()),
%%   <<"IdentityProviderType">> => list(any()),
%%   <<"LoggingRole">> => string(),
%%   <<"ServerId">> => string(),
%%   <<"State">> => list(any()),
%%   <<"UserCount">> => integer()
%% }
-type listed_server() :: #{binary() => any()}.

%% Example:
%% list_connectors_response() :: #{
%%   <<"Connectors">> => list(listed_connector()()),
%%   <<"NextToken">> => string()
%% }
-type list_connectors_response() :: #{binary() => any()}.

%% Example:
%% update_server_request() :: #{
%%   <<"Certificate">> => string(),
%%   <<"EndpointDetails">> => endpoint_details(),
%%   <<"EndpointType">> => list(any()),
%%   <<"HostKey">> => string(),
%%   <<"IdentityProviderDetails">> => identity_provider_details(),
%%   <<"LoggingRole">> => string(),
%%   <<"PostAuthenticationLoginBanner">> => string(),
%%   <<"PreAuthenticationLoginBanner">> => string(),
%%   <<"ProtocolDetails">> => protocol_details(),
%%   <<"Protocols">> => list(list(any())()),
%%   <<"S3StorageOptions">> => s3_storage_options(),
%%   <<"SecurityPolicyName">> => string(),
%%   <<"ServerId">> := string(),
%%   <<"StructuredLogDestinations">> => list(string()()),
%%   <<"WorkflowDetails">> => workflow_details()
%% }
-type update_server_request() :: #{binary() => any()}.

%% Example:
%% test_identity_provider_request() :: #{
%%   <<"ServerId">> := string(),
%%   <<"ServerProtocol">> => list(any()),
%%   <<"SourceIp">> => string(),
%%   <<"UserName">> := string(),
%%   <<"UserPassword">> => string()
%% }
-type test_identity_provider_request() :: #{binary() => any()}.

%% Example:
%% describe_execution_request() :: #{
%%   <<"ExecutionId">> := string(),
%%   <<"WorkflowId">> := string()
%% }
-type describe_execution_request() :: #{binary() => any()}.

%% Example:
%% update_user_response() :: #{
%%   <<"ServerId">> => string(),
%%   <<"UserName">> => string()
%% }
-type update_user_response() :: #{binary() => any()}.

%% Example:
%% delete_profile_request() :: #{
%%   <<"ProfileId">> := string()
%% }
-type delete_profile_request() :: #{binary() => any()}.

%% Example:
%% workflow_details() :: #{
%%   <<"OnPartialUpload">> => list(workflow_detail()()),
%%   <<"OnUpload">> => list(workflow_detail()())
%% }
-type workflow_details() :: #{binary() => any()}.

%% Example:
%% describe_workflow_response() :: #{
%%   <<"Workflow">> => described_workflow()
%% }
-type describe_workflow_response() :: #{binary() => any()}.

%% Example:
%% listed_profile() :: #{
%%   <<"Arn">> => string(),
%%   <<"As2Id">> => string(),
%%   <<"ProfileId">> => string(),
%%   <<"ProfileType">> => list(any())
%% }
-type listed_profile() :: #{binary() => any()}.

%% Example:
%% update_web_app_customization_request() :: #{
%%   <<"FaviconFile">> => binary(),
%%   <<"LogoFile">> => binary(),
%%   <<"Title">> => string(),
%%   <<"WebAppId">> := string()
%% }
-type update_web_app_customization_request() :: #{binary() => any()}.

%% Example:
%% custom_directories_type() :: #{
%%   <<"FailedFilesDirectory">> => string(),
%%   <<"MdnFilesDirectory">> => string(),
%%   <<"PayloadFilesDirectory">> => string(),
%%   <<"StatusFilesDirectory">> => string(),
%%   <<"TemporaryFilesDirectory">> => string()
%% }
-type custom_directories_type() :: #{binary() => any()}.

%% Example:
%% identity_provider_details() :: #{
%%   <<"DirectoryId">> => string(),
%%   <<"Function">> => string(),
%%   <<"InvocationRole">> => string(),
%%   <<"SftpAuthenticationMethods">> => list(any()),
%%   <<"Url">> => string()
%% }
-type identity_provider_details() :: #{binary() => any()}.

%% Example:
%% delete_workflow_request() :: #{
%%   <<"WorkflowId">> := string()
%% }
-type delete_workflow_request() :: #{binary() => any()}.

%% Example:
%% create_agreement_request() :: #{
%%   <<"AccessRole">> := string(),
%%   <<"BaseDirectory">> => string(),
%%   <<"CustomDirectories">> => custom_directories_type(),
%%   <<"Description">> => string(),
%%   <<"EnforceMessageSigning">> => list(any()),
%%   <<"LocalProfileId">> := string(),
%%   <<"PartnerProfileId">> := string(),
%%   <<"PreserveFilename">> => list(any()),
%%   <<"ServerId">> := string(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => list(tag()())
%% }
-type create_agreement_request() :: #{binary() => any()}.

%% Example:
%% list_profiles_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ProfileType">> => list(any())
%% }
-type list_profiles_request() :: #{binary() => any()}.

%% Example:
%% describe_connector_response() :: #{
%%   <<"Connector">> => described_connector()
%% }
-type describe_connector_response() :: #{binary() => any()}.

%% Example:
%% send_workflow_step_state_response() :: #{

%% }
-type send_workflow_step_state_response() :: #{binary() => any()}.

%% Example:
%% delete_step_details() :: #{
%%   <<"Name">> => string(),
%%   <<"SourceFileLocation">> => string()
%% }
-type delete_step_details() :: #{binary() => any()}.

%% Example:
%% endpoint_details() :: #{
%%   <<"AddressAllocationIds">> => list(string()()),
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"SubnetIds">> => list(string()()),
%%   <<"VpcEndpointId">> => string(),
%%   <<"VpcId">> => string()
%% }
-type endpoint_details() :: #{binary() => any()}.

%% Example:
%% update_connector_request() :: #{
%%   <<"AccessRole">> => string(),
%%   <<"As2Config">> => as2_connector_config(),
%%   <<"ConnectorId">> := string(),
%%   <<"LoggingRole">> => string(),
%%   <<"SecurityPolicyName">> => string(),
%%   <<"SftpConfig">> => sftp_connector_config(),
%%   <<"Url">> => string()
%% }
-type update_connector_request() :: #{binary() => any()}.

%% Example:
%% describe_web_app_customization_request() :: #{
%%   <<"WebAppId">> := string()
%% }
-type describe_web_app_customization_request() :: #{binary() => any()}.

%% Example:
%% create_access_response() :: #{
%%   <<"ExternalId">> => string(),
%%   <<"ServerId">> => string()
%% }
-type create_access_response() :: #{binary() => any()}.

%% Example:
%% describe_agreement_response() :: #{
%%   <<"Agreement">> => described_agreement()
%% }
-type describe_agreement_response() :: #{binary() => any()}.

%% Example:
%% list_servers_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_servers_request() :: #{binary() => any()}.

%% Example:
%% execution_error() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => list(any())
%% }
-type execution_error() :: #{binary() => any()}.

%% Example:
%% update_agreement_response() :: #{
%%   <<"AgreementId">> => string()
%% }
-type update_agreement_response() :: #{binary() => any()}.

%% Example:
%% service_metadata() :: #{
%%   <<"UserDetails">> => user_details()
%% }
-type service_metadata() :: #{binary() => any()}.

%% Example:
%% user_details() :: #{
%%   <<"ServerId">> => string(),
%%   <<"SessionId">> => string(),
%%   <<"UserName">> => string()
%% }
-type user_details() :: #{binary() => any()}.

%% Example:
%% connector_file_transfer_result() :: #{
%%   <<"FailureCode">> => string(),
%%   <<"FailureMessage">> => string(),
%%   <<"FilePath">> => string(),
%%   <<"StatusCode">> => list(any())
%% }
-type connector_file_transfer_result() :: #{binary() => any()}.

%% Example:
%% create_web_app_response() :: #{
%%   <<"WebAppId">> => string()
%% }
-type create_web_app_response() :: #{binary() => any()}.

%% Example:
%% describe_execution_response() :: #{
%%   <<"Execution">> => described_execution(),
%%   <<"WorkflowId">> => string()
%% }
-type describe_execution_response() :: #{binary() => any()}.

%% Example:
%% posix_profile() :: #{
%%   <<"Gid">> => float(),
%%   <<"SecondaryGids">> => list(float()()),
%%   <<"Uid">> => float()
%% }
-type posix_profile() :: #{binary() => any()}.

%% Example:
%% import_certificate_response() :: #{
%%   <<"CertificateId">> => string()
%% }
-type import_certificate_response() :: #{binary() => any()}.

%% Example:
%% start_server_request() :: #{
%%   <<"ServerId">> := string()
%% }
-type start_server_request() :: #{binary() => any()}.

%% Example:
%% list_connectors_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_connectors_request() :: #{binary() => any()}.

%% Example:
%% describe_server_response() :: #{
%%   <<"Server">> => described_server()
%% }
-type describe_server_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"Arn">> := string(),
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% list_certificates_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_certificates_request() :: #{binary() => any()}.

%% Example:
%% delete_agreement_request() :: #{
%%   <<"AgreementId">> := string(),
%%   <<"ServerId">> := string()
%% }
-type delete_agreement_request() :: #{binary() => any()}.

%% Example:
%% describe_workflow_request() :: #{
%%   <<"WorkflowId">> := string()
%% }
-type describe_workflow_request() :: #{binary() => any()}.

%% Example:
%% update_access_request() :: #{
%%   <<"ExternalId">> := string(),
%%   <<"HomeDirectory">> => string(),
%%   <<"HomeDirectoryMappings">> => list(home_directory_map_entry()()),
%%   <<"HomeDirectoryType">> => list(any()),
%%   <<"Policy">> => string(),
%%   <<"PosixProfile">> => posix_profile(),
%%   <<"Role">> => string(),
%%   <<"ServerId">> := string()
%% }
-type update_access_request() :: #{binary() => any()}.

%% Example:
%% create_server_request() :: #{
%%   <<"Certificate">> => string(),
%%   <<"Domain">> => list(any()),
%%   <<"EndpointDetails">> => endpoint_details(),
%%   <<"EndpointType">> => list(any()),
%%   <<"HostKey">> => string(),
%%   <<"IdentityProviderDetails">> => identity_provider_details(),
%%   <<"IdentityProviderType">> => list(any()),
%%   <<"LoggingRole">> => string(),
%%   <<"PostAuthenticationLoginBanner">> => string(),
%%   <<"PreAuthenticationLoginBanner">> => string(),
%%   <<"ProtocolDetails">> => protocol_details(),
%%   <<"Protocols">> => list(list(any())()),
%%   <<"S3StorageOptions">> => s3_storage_options(),
%%   <<"SecurityPolicyName">> => string(),
%%   <<"StructuredLogDestinations">> => list(string()()),
%%   <<"Tags">> => list(tag()()),
%%   <<"WorkflowDetails">> => workflow_details()
%% }
-type create_server_request() :: #{binary() => any()}.

%% Example:
%% logging_configuration() :: #{
%%   <<"LogGroupName">> => string(),
%%   <<"LoggingRole">> => string()
%% }
-type logging_configuration() :: #{binary() => any()}.

%% Example:
%% import_ssh_public_key_response() :: #{
%%   <<"ServerId">> => string(),
%%   <<"SshPublicKeyId">> => string(),
%%   <<"UserName">> => string()
%% }
-type import_ssh_public_key_response() :: #{binary() => any()}.

%% Example:
%% describe_web_app_customization_response() :: #{
%%   <<"WebAppCustomization">> => described_web_app_customization()
%% }
-type describe_web_app_customization_response() :: #{binary() => any()}.

%% Example:
%% described_security_policy() :: #{
%%   <<"Fips">> => boolean(),
%%   <<"Protocols">> => list(list(any())()),
%%   <<"SecurityPolicyName">> => string(),
%%   <<"SshCiphers">> => list(string()()),
%%   <<"SshHostKeyAlgorithms">> => list(string()()),
%%   <<"SshKexs">> => list(string()()),
%%   <<"SshMacs">> => list(string()()),
%%   <<"TlsCiphers">> => list(string()()),
%%   <<"Type">> => list(any())
%% }
-type described_security_policy() :: #{binary() => any()}.

%% Example:
%% create_web_app_request() :: #{
%%   <<"AccessEndpoint">> => string(),
%%   <<"IdentityProviderDetails">> := list(),
%%   <<"Tags">> => list(tag()()),
%%   <<"WebAppUnits">> => list()
%% }
-type create_web_app_request() :: #{binary() => any()}.

%% Example:
%% listed_user() :: #{
%%   <<"Arn">> => string(),
%%   <<"HomeDirectory">> => string(),
%%   <<"HomeDirectoryType">> => list(any()),
%%   <<"Role">> => string(),
%%   <<"SshPublicKeyCount">> => integer(),
%%   <<"UserName">> => string()
%% }
-type listed_user() :: #{binary() => any()}.

%% Example:
%% update_host_key_response() :: #{
%%   <<"HostKeyId">> => string(),
%%   <<"ServerId">> => string()
%% }
-type update_host_key_response() :: #{binary() => any()}.

%% Example:
%% cfn_user_properties() :: #{
%%   <<"SshPublicKeys">> => list(string()())
%% }
-type cfn_user_properties() :: #{binary() => any()}.

%% Example:
%% custom_step_details() :: #{
%%   <<"Name">> => string(),
%%   <<"SourceFileLocation">> => string(),
%%   <<"Target">> => string(),
%%   <<"TimeoutSeconds">> => integer()
%% }
-type custom_step_details() :: #{binary() => any()}.

%% Example:
%% create_profile_request() :: #{
%%   <<"As2Id">> := string(),
%%   <<"CertificateIds">> => list(string()()),
%%   <<"ProfileType">> := list(any()),
%%   <<"Tags">> => list(tag()())
%% }
-type create_profile_request() :: #{binary() => any()}.

%% Example:
%% list_file_transfer_results_request() :: #{
%%   <<"ConnectorId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"TransferId">> := string()
%% }
-type list_file_transfer_results_request() :: #{binary() => any()}.

%% Example:
%% described_user() :: #{
%%   <<"Arn">> => string(),
%%   <<"HomeDirectory">> => string(),
%%   <<"HomeDirectoryMappings">> => list(home_directory_map_entry()()),
%%   <<"HomeDirectoryType">> => list(any()),
%%   <<"Policy">> => string(),
%%   <<"PosixProfile">> => posix_profile(),
%%   <<"Role">> => string(),
%%   <<"SshPublicKeys">> => list(ssh_public_key()()),
%%   <<"Tags">> => list(tag()()),
%%   <<"UserName">> => string()
%% }
-type described_user() :: #{binary() => any()}.

%% Example:
%% list_accesses_response() :: #{
%%   <<"Accesses">> => list(listed_access()()),
%%   <<"NextToken">> => string(),
%%   <<"ServerId">> => string()
%% }
-type list_accesses_response() :: #{binary() => any()}.

%% Example:
%% as2_connector_config() :: #{
%%   <<"BasicAuthSecretId">> => string(),
%%   <<"Compression">> => list(any()),
%%   <<"EncryptionAlgorithm">> => list(any()),
%%   <<"LocalProfileId">> => string(),
%%   <<"MdnResponse">> => list(any()),
%%   <<"MdnSigningAlgorithm">> => list(any()),
%%   <<"MessageSubject">> => string(),
%%   <<"PartnerProfileId">> => string(),
%%   <<"PreserveContentType">> => list(any()),
%%   <<"SigningAlgorithm">> => list(any())
%% }
-type as2_connector_config() :: #{binary() => any()}.

%% Example:
%% described_host_key() :: #{
%%   <<"Arn">> => string(),
%%   <<"DateImported">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"HostKeyFingerprint">> => string(),
%%   <<"HostKeyId">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"Type">> => string()
%% }
-type described_host_key() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Resource">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% listed_access() :: #{
%%   <<"ExternalId">> => string(),
%%   <<"HomeDirectory">> => string(),
%%   <<"HomeDirectoryType">> => list(any()),
%%   <<"Role">> => string()
%% }
-type listed_access() :: #{binary() => any()}.

%% Example:
%% update_profile_request() :: #{
%%   <<"CertificateIds">> => list(string()()),
%%   <<"ProfileId">> := string()
%% }
-type update_profile_request() :: #{binary() => any()}.

%% Example:
%% list_executions_response() :: #{
%%   <<"Executions">> => list(listed_execution()()),
%%   <<"NextToken">> => string(),
%%   <<"WorkflowId">> => string()
%% }
-type list_executions_response() :: #{binary() => any()}.

%% Example:
%% import_host_key_request() :: #{
%%   <<"Description">> => string(),
%%   <<"HostKeyBody">> := string(),
%%   <<"ServerId">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type import_host_key_request() :: #{binary() => any()}.

%% Example:
%% describe_host_key_request() :: #{
%%   <<"HostKeyId">> := string(),
%%   <<"ServerId">> := string()
%% }
-type describe_host_key_request() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% create_server_response() :: #{
%%   <<"ServerId">> => string()
%% }
-type create_server_response() :: #{binary() => any()}.

%% Example:
%% s3_input_file_location() :: #{
%%   <<"Bucket">> => string(),
%%   <<"Key">> => string()
%% }
-type s3_input_file_location() :: #{binary() => any()}.

%% Example:
%% invalid_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.

%% Example:
%% start_file_transfer_response() :: #{
%%   <<"TransferId">> => string()
%% }
-type start_file_transfer_response() :: #{binary() => any()}.

%% Example:
%% invalid_next_token_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_next_token_exception() :: #{binary() => any()}.

%% Example:
%% describe_certificate_request() :: #{
%%   <<"CertificateId">> := string()
%% }
-type describe_certificate_request() :: #{binary() => any()}.

%% Example:
%% create_profile_response() :: #{
%%   <<"ProfileId">> => string()
%% }
-type create_profile_response() :: #{binary() => any()}.

%% Example:
%% listed_connector() :: #{
%%   <<"Arn">> => string(),
%%   <<"ConnectorId">> => string(),
%%   <<"Url">> => string()
%% }
-type listed_connector() :: #{binary() => any()}.

%% Example:
%% list_users_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ServerId">> => string(),
%%   <<"Users">> => list(listed_user()())
%% }
-type list_users_response() :: #{binary() => any()}.

%% Example:
%% delete_access_request() :: #{
%%   <<"ExternalId">> := string(),
%%   <<"ServerId">> := string()
%% }
-type delete_access_request() :: #{binary() => any()}.

%% Example:
%% list_workflows_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_workflows_request() :: #{binary() => any()}.

%% Example:
%% describe_web_app_response() :: #{
%%   <<"WebApp">> => described_web_app()
%% }
-type describe_web_app_response() :: #{binary() => any()}.

%% Example:
%% create_access_request() :: #{
%%   <<"ExternalId">> := string(),
%%   <<"HomeDirectory">> => string(),
%%   <<"HomeDirectoryMappings">> => list(home_directory_map_entry()()),
%%   <<"HomeDirectoryType">> => list(any()),
%%   <<"Policy">> => string(),
%%   <<"PosixProfile">> => posix_profile(),
%%   <<"Role">> := string(),
%%   <<"ServerId">> := string()
%% }
-type create_access_request() :: #{binary() => any()}.

%% Example:
%% described_execution() :: #{
%%   <<"ExecutionId">> => string(),
%%   <<"ExecutionRole">> => string(),
%%   <<"InitialFileLocation">> => file_location(),
%%   <<"LoggingConfiguration">> => logging_configuration(),
%%   <<"PosixProfile">> => posix_profile(),
%%   <<"Results">> => execution_results(),
%%   <<"ServiceMetadata">> => service_metadata(),
%%   <<"Status">> => list(any())
%% }
-type described_execution() :: #{binary() => any()}.

%% Example:
%% create_connector_response() :: #{
%%   <<"ConnectorId">> => string()
%% }
-type create_connector_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% describe_security_policy_response() :: #{
%%   <<"SecurityPolicy">> => described_security_policy()
%% }
-type describe_security_policy_response() :: #{binary() => any()}.

%% Example:
%% workflow_step() :: #{
%%   <<"CopyStepDetails">> => copy_step_details(),
%%   <<"CustomStepDetails">> => custom_step_details(),
%%   <<"DecryptStepDetails">> => decrypt_step_details(),
%%   <<"DeleteStepDetails">> => delete_step_details(),
%%   <<"TagStepDetails">> => tag_step_details(),
%%   <<"Type">> => list(any())
%% }
-type workflow_step() :: #{binary() => any()}.

%% Example:
%% listed_web_app() :: #{
%%   <<"AccessEndpoint">> => string(),
%%   <<"Arn">> => string(),
%%   <<"WebAppEndpoint">> => string(),
%%   <<"WebAppId">> => string()
%% }
-type listed_web_app() :: #{binary() => any()}.

%% Example:
%% service_unavailable_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% list_file_transfer_results_response() :: #{
%%   <<"FileTransferResults">> => list(connector_file_transfer_result()()),
%%   <<"NextToken">> => string()
%% }
-type list_file_transfer_results_response() :: #{binary() => any()}.

%% Example:
%% tag_step_details() :: #{
%%   <<"Name">> => string(),
%%   <<"SourceFileLocation">> => string(),
%%   <<"Tags">> => list(s3_tag()())
%% }
-type tag_step_details() :: #{binary() => any()}.

%% Example:
%% describe_web_app_request() :: #{
%%   <<"WebAppId">> := string()
%% }
-type describe_web_app_request() :: #{binary() => any()}.

%% Example:
%% create_agreement_response() :: #{
%%   <<"AgreementId">> => string()
%% }
-type create_agreement_response() :: #{binary() => any()}.

%% Example:
%% delete_web_app_customization_request() :: #{
%%   <<"WebAppId">> := string()
%% }
-type delete_web_app_customization_request() :: #{binary() => any()}.

%% Example:
%% described_identity_center_config() :: #{
%%   <<"ApplicationArn">> => string(),
%%   <<"InstanceArn">> => string(),
%%   <<"Role">> => string()
%% }
-type described_identity_center_config() :: #{binary() => any()}.

%% Example:
%% update_web_app_identity_center_config() :: #{
%%   <<"Role">> => string()
%% }
-type update_web_app_identity_center_config() :: #{binary() => any()}.

%% Example:
%% describe_connector_request() :: #{
%%   <<"ConnectorId">> := string()
%% }
-type describe_connector_request() :: #{binary() => any()}.

%% Example:
%% described_server() :: #{
%%   <<"Arn">> => string(),
%%   <<"As2ServiceManagedEgressIpAddresses">> => list(string()()),
%%   <<"Certificate">> => string(),
%%   <<"Domain">> => list(any()),
%%   <<"EndpointDetails">> => endpoint_details(),
%%   <<"EndpointType">> => list(any()),
%%   <<"HostKeyFingerprint">> => string(),
%%   <<"IdentityProviderDetails">> => identity_provider_details(),
%%   <<"IdentityProviderType">> => list(any()),
%%   <<"LoggingRole">> => string(),
%%   <<"PostAuthenticationLoginBanner">> => string(),
%%   <<"PreAuthenticationLoginBanner">> => string(),
%%   <<"ProtocolDetails">> => protocol_details(),
%%   <<"Protocols">> => list(list(any())()),
%%   <<"S3StorageOptions">> => s3_storage_options(),
%%   <<"SecurityPolicyName">> => string(),
%%   <<"ServerId">> => string(),
%%   <<"State">> => list(any()),
%%   <<"StructuredLogDestinations">> => list(string()()),
%%   <<"Tags">> => list(tag()()),
%%   <<"UserCount">> => integer(),
%%   <<"WorkflowDetails">> => workflow_details()
%% }
-type described_server() :: #{binary() => any()}.

%% Example:
%% list_agreements_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ServerId">> := string()
%% }
-type list_agreements_request() :: #{binary() => any()}.

%% Example:
%% delete_user_request() :: #{
%%   <<"ServerId">> := string(),
%%   <<"UserName">> := string()
%% }
-type delete_user_request() :: #{binary() => any()}.

%% Example:
%% described_profile() :: #{
%%   <<"Arn">> => string(),
%%   <<"As2Id">> => string(),
%%   <<"CertificateIds">> => list(string()()),
%%   <<"ProfileId">> => string(),
%%   <<"ProfileType">> => list(any()),
%%   <<"Tags">> => list(tag()())
%% }
-type described_profile() :: #{binary() => any()}.

%% Example:
%% stop_server_request() :: #{
%%   <<"ServerId">> := string()
%% }
-type stop_server_request() :: #{binary() => any()}.

%% Example:
%% delete_host_key_request() :: #{
%%   <<"HostKeyId">> := string(),
%%   <<"ServerId">> := string()
%% }
-type delete_host_key_request() :: #{binary() => any()}.

%% Example:
%% test_identity_provider_response() :: #{
%%   <<"Message">> => string(),
%%   <<"Response">> => string(),
%%   <<"StatusCode">> => integer(),
%%   <<"Url">> => string()
%% }
-type test_identity_provider_response() :: #{binary() => any()}.

%% Example:
%% delete_web_app_request() :: #{
%%   <<"WebAppId">> := string()
%% }
-type delete_web_app_request() :: #{binary() => any()}.

%% Example:
%% file_location() :: #{
%%   <<"EfsFileLocation">> => efs_file_location(),
%%   <<"S3FileLocation">> => s3_file_location()
%% }
-type file_location() :: #{binary() => any()}.

%% Example:
%% listed_execution() :: #{
%%   <<"ExecutionId">> => string(),
%%   <<"InitialFileLocation">> => file_location(),
%%   <<"ServiceMetadata">> => service_metadata(),
%%   <<"Status">> => list(any())
%% }
-type listed_execution() :: #{binary() => any()}.

%% Example:
%% send_workflow_step_state_request() :: #{
%%   <<"ExecutionId">> := string(),
%%   <<"Status">> := list(any()),
%%   <<"Token">> := string(),
%%   <<"WorkflowId">> := string()
%% }
-type send_workflow_step_state_request() :: #{binary() => any()}.

%% Example:
%% import_host_key_response() :: #{
%%   <<"HostKeyId">> => string(),
%%   <<"ServerId">> => string()
%% }
-type import_host_key_response() :: #{binary() => any()}.

%% Example:
%% test_connection_response() :: #{
%%   <<"ConnectorId">> => string(),
%%   <<"Status">> => string(),
%%   <<"StatusMessage">> => string()
%% }
-type test_connection_response() :: #{binary() => any()}.

%% Example:
%% describe_user_response() :: #{
%%   <<"ServerId">> => string(),
%%   <<"User">> => described_user()
%% }
-type describe_user_response() :: #{binary() => any()}.

%% Example:
%% input_file_location() :: #{
%%   <<"EfsFileLocation">> => efs_file_location(),
%%   <<"S3FileLocation">> => s3_input_file_location()
%% }
-type input_file_location() :: #{binary() => any()}.

%% Example:
%% update_web_app_request() :: #{
%%   <<"AccessEndpoint">> => string(),
%%   <<"IdentityProviderDetails">> => list(),
%%   <<"WebAppId">> := string(),
%%   <<"WebAppUnits">> => list()
%% }
-type update_web_app_request() :: #{binary() => any()}.

%% Example:
%% import_ssh_public_key_request() :: #{
%%   <<"ServerId">> := string(),
%%   <<"SshPublicKeyBody">> := string(),
%%   <<"UserName">> := string()
%% }
-type import_ssh_public_key_request() :: #{binary() => any()}.

%% Example:
%% decrypt_step_details() :: #{
%%   <<"DestinationFileLocation">> => input_file_location(),
%%   <<"Name">> => string(),
%%   <<"OverwriteExisting">> => list(any()),
%%   <<"SourceFileLocation">> => string(),
%%   <<"Type">> => list(any())
%% }
-type decrypt_step_details() :: #{binary() => any()}.

%% Example:
%% identity_center_config() :: #{
%%   <<"InstanceArn">> => string(),
%%   <<"Role">> => string()
%% }
-type identity_center_config() :: #{binary() => any()}.

%% Example:
%% resource_exists_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Resource">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type resource_exists_exception() :: #{binary() => any()}.

%% Example:
%% listed_host_key() :: #{
%%   <<"Arn">> => string(),
%%   <<"DateImported">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Fingerprint">> => string(),
%%   <<"HostKeyId">> => string(),
%%   <<"Type">> => string()
%% }
-type listed_host_key() :: #{binary() => any()}.

%% Example:
%% execution_step_result() :: #{
%%   <<"Error">> => execution_error(),
%%   <<"Outputs">> => string(),
%%   <<"StepType">> => list(any())
%% }
-type execution_step_result() :: #{binary() => any()}.

%% Example:
%% import_certificate_request() :: #{
%%   <<"ActiveDate">> => non_neg_integer(),
%%   <<"Certificate">> := string(),
%%   <<"CertificateChain">> => string(),
%%   <<"Description">> => string(),
%%   <<"InactiveDate">> => non_neg_integer(),
%%   <<"PrivateKey">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"Usage">> := list(any())
%% }
-type import_certificate_request() :: #{binary() => any()}.

%% Example:
%% create_workflow_response() :: #{
%%   <<"WorkflowId">> => string()
%% }
-type create_workflow_response() :: #{binary() => any()}.

%% Example:
%% list_security_policies_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_security_policies_request() :: #{binary() => any()}.

%% Example:
%% ssh_public_key() :: #{
%%   <<"DateImported">> => non_neg_integer(),
%%   <<"SshPublicKeyBody">> => string(),
%%   <<"SshPublicKeyId">> => string()
%% }
-type ssh_public_key() :: #{binary() => any()}.

%% Example:
%% update_agreement_request() :: #{
%%   <<"AccessRole">> => string(),
%%   <<"AgreementId">> := string(),
%%   <<"BaseDirectory">> => string(),
%%   <<"CustomDirectories">> => custom_directories_type(),
%%   <<"Description">> => string(),
%%   <<"EnforceMessageSigning">> => list(any()),
%%   <<"LocalProfileId">> => string(),
%%   <<"PartnerProfileId">> => string(),
%%   <<"PreserveFilename">> => list(any()),
%%   <<"ServerId">> := string(),
%%   <<"Status">> => list(any())
%% }
-type update_agreement_request() :: #{binary() => any()}.

%% Example:
%% list_web_apps_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_web_apps_request() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% delete_certificate_request() :: #{
%%   <<"CertificateId">> := string()
%% }
-type delete_certificate_request() :: #{binary() => any()}.

%% Example:
%% create_connector_request() :: #{
%%   <<"AccessRole">> := string(),
%%   <<"As2Config">> => as2_connector_config(),
%%   <<"LoggingRole">> => string(),
%%   <<"SecurityPolicyName">> => string(),
%%   <<"SftpConfig">> => sftp_connector_config(),
%%   <<"Tags">> => list(tag()()),
%%   <<"Url">> := string()
%% }
-type create_connector_request() :: #{binary() => any()}.

%% Example:
%% list_security_policies_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SecurityPolicyNames">> => list(string()())
%% }
-type list_security_policies_response() :: #{binary() => any()}.

%% Example:
%% describe_certificate_response() :: #{
%%   <<"Certificate">> => described_certificate()
%% }
-type describe_certificate_response() :: #{binary() => any()}.

%% Example:
%% listed_agreement() :: #{
%%   <<"AgreementId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"Description">> => string(),
%%   <<"LocalProfileId">> => string(),
%%   <<"PartnerProfileId">> => string(),
%%   <<"ServerId">> => string(),
%%   <<"Status">> => list(any())
%% }
-type listed_agreement() :: #{binary() => any()}.

%% Example:
%% efs_file_location() :: #{
%%   <<"FileSystemId">> => string(),
%%   <<"Path">> => string()
%% }
-type efs_file_location() :: #{binary() => any()}.

%% Example:
%% s3_storage_options() :: #{
%%   <<"DirectoryListingOptimization">> => list(any())
%% }
-type s3_storage_options() :: #{binary() => any()}.

%% Example:
%% internal_service_error() :: #{
%%   <<"Message">> => string()
%% }
-type internal_service_error() :: #{binary() => any()}.

%% Example:
%% describe_user_request() :: #{
%%   <<"ServerId">> := string(),
%%   <<"UserName">> := string()
%% }
-type describe_user_request() :: #{binary() => any()}.

%% Example:
%% list_accesses_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ServerId">> := string()
%% }
-type list_accesses_request() :: #{binary() => any()}.

%% Example:
%% update_access_response() :: #{
%%   <<"ExternalId">> => string(),
%%   <<"ServerId">> => string()
%% }
-type update_access_response() :: #{binary() => any()}.

%% Example:
%% update_profile_response() :: #{
%%   <<"ProfileId">> => string()
%% }
-type update_profile_response() :: #{binary() => any()}.

%% Example:
%% update_user_request() :: #{
%%   <<"HomeDirectory">> => string(),
%%   <<"HomeDirectoryMappings">> => list(home_directory_map_entry()()),
%%   <<"HomeDirectoryType">> => list(any()),
%%   <<"Policy">> => string(),
%%   <<"PosixProfile">> => posix_profile(),
%%   <<"Role">> => string(),
%%   <<"ServerId">> := string(),
%%   <<"UserName">> := string()
%% }
-type update_user_request() :: #{binary() => any()}.

%% Example:
%% list_profiles_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Profiles">> => list(listed_profile()())
%% }
-type list_profiles_response() :: #{binary() => any()}.

%% Example:
%% listed_workflow() :: #{
%%   <<"Arn">> => string(),
%%   <<"Description">> => string(),
%%   <<"WorkflowId">> => string()
%% }
-type listed_workflow() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"Arn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% list_host_keys_response() :: #{
%%   <<"HostKeys">> => list(listed_host_key()()),
%%   <<"NextToken">> => string(),
%%   <<"ServerId">> => string()
%% }
-type list_host_keys_response() :: #{binary() => any()}.

%% Example:
%% list_web_apps_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"WebApps">> => list(listed_web_app()())
%% }
-type list_web_apps_response() :: #{binary() => any()}.

%% Example:
%% update_connector_response() :: #{
%%   <<"ConnectorId">> => string()
%% }
-type update_connector_response() :: #{binary() => any()}.

%% Example:
%% s3_file_location() :: #{
%%   <<"Bucket">> => string(),
%%   <<"Etag">> => string(),
%%   <<"Key">> => string(),
%%   <<"VersionId">> => string()
%% }
-type s3_file_location() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"RetryAfterSeconds">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% described_workflow() :: #{
%%   <<"Arn">> => string(),
%%   <<"Description">> => string(),
%%   <<"OnExceptionSteps">> => list(workflow_step()()),
%%   <<"Steps">> => list(workflow_step()()),
%%   <<"Tags">> => list(tag()()),
%%   <<"WorkflowId">> => string()
%% }
-type described_workflow() :: #{binary() => any()}.

%% Example:
%% list_servers_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Servers">> => list(listed_server()())
%% }
-type list_servers_response() :: #{binary() => any()}.

%% Example:
%% list_host_keys_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ServerId">> := string()
%% }
-type list_host_keys_request() :: #{binary() => any()}.

%% Example:
%% list_users_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ServerId">> := string()
%% }
-type list_users_request() :: #{binary() => any()}.

%% Example:
%% start_directory_listing_request() :: #{
%%   <<"ConnectorId">> := string(),
%%   <<"MaxItems">> => integer(),
%%   <<"OutputDirectoryPath">> := string(),
%%   <<"RemoteDirectoryPath">> := string()
%% }
-type start_directory_listing_request() :: #{binary() => any()}.

%% Example:
%% listed_certificate() :: #{
%%   <<"ActiveDate">> => non_neg_integer(),
%%   <<"Arn">> => string(),
%%   <<"CertificateId">> => string(),
%%   <<"Description">> => string(),
%%   <<"InactiveDate">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"Type">> => list(any()),
%%   <<"Usage">> => list(any())
%% }
-type listed_certificate() :: #{binary() => any()}.

%% Example:
%% delete_connector_request() :: #{
%%   <<"ConnectorId">> := string()
%% }
-type delete_connector_request() :: #{binary() => any()}.

%% Example:
%% home_directory_map_entry() :: #{
%%   <<"Entry">> => string(),
%%   <<"Target">> => string(),
%%   <<"Type">> => list(any())
%% }
-type home_directory_map_entry() :: #{binary() => any()}.

%% Example:
%% update_host_key_request() :: #{
%%   <<"Description">> := string(),
%%   <<"HostKeyId">> := string(),
%%   <<"ServerId">> := string()
%% }
-type update_host_key_request() :: #{binary() => any()}.

%% Example:
%% described_agreement() :: #{
%%   <<"AccessRole">> => string(),
%%   <<"AgreementId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"BaseDirectory">> => string(),
%%   <<"CustomDirectories">> => custom_directories_type(),
%%   <<"Description">> => string(),
%%   <<"EnforceMessageSigning">> => list(any()),
%%   <<"LocalProfileId">> => string(),
%%   <<"PartnerProfileId">> => string(),
%%   <<"PreserveFilename">> => list(any()),
%%   <<"ServerId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => list(tag()())
%% }
-type described_agreement() :: #{binary() => any()}.

%% Example:
%% list_agreements_response() :: #{
%%   <<"Agreements">> => list(listed_agreement()()),
%%   <<"NextToken">> => string()
%% }
-type list_agreements_response() :: #{binary() => any()}.

%% Example:
%% sftp_connector_config() :: #{
%%   <<"TrustedHostKeys">> => list(string()()),
%%   <<"UserSecretId">> => string()
%% }
-type sftp_connector_config() :: #{binary() => any()}.

%% Example:
%% describe_host_key_response() :: #{
%%   <<"HostKey">> => described_host_key()
%% }
-type describe_host_key_response() :: #{binary() => any()}.

%% Example:
%% described_web_app() :: #{
%%   <<"AccessEndpoint">> => string(),
%%   <<"Arn">> => string(),
%%   <<"DescribedIdentityProviderDetails">> => list(),
%%   <<"Tags">> => list(tag()()),
%%   <<"WebAppEndpoint">> => string(),
%%   <<"WebAppId">> => string(),
%%   <<"WebAppUnits">> => list()
%% }
-type described_web_app() :: #{binary() => any()}.

%% Example:
%% s3_tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type s3_tag() :: #{binary() => any()}.

%% Example:
%% list_workflows_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Workflows">> => list(listed_workflow()())
%% }
-type list_workflows_response() :: #{binary() => any()}.

%% Example:
%% delete_ssh_public_key_request() :: #{
%%   <<"ServerId">> := string(),
%%   <<"SshPublicKeyId">> := string(),
%%   <<"UserName">> := string()
%% }
-type delete_ssh_public_key_request() :: #{binary() => any()}.

%% Example:
%% start_directory_listing_response() :: #{
%%   <<"ListingId">> => string(),
%%   <<"OutputFileName">> => string()
%% }
-type start_directory_listing_response() :: #{binary() => any()}.

%% Example:
%% create_user_response() :: #{
%%   <<"ServerId">> => string(),
%%   <<"UserName">> => string()
%% }
-type create_user_response() :: #{binary() => any()}.

%% Example:
%% update_certificate_response() :: #{
%%   <<"CertificateId">> => string()
%% }
-type update_certificate_response() :: #{binary() => any()}.

%% Example:
%% copy_step_details() :: #{
%%   <<"DestinationFileLocation">> => input_file_location(),
%%   <<"Name">> => string(),
%%   <<"OverwriteExisting">> => list(any()),
%%   <<"SourceFileLocation">> => string()
%% }
-type copy_step_details() :: #{binary() => any()}.

%% Example:
%% start_file_transfer_request() :: #{
%%   <<"ConnectorId">> := string(),
%%   <<"LocalDirectoryPath">> => string(),
%%   <<"RemoteDirectoryPath">> => string(),
%%   <<"RetrieveFilePaths">> => list(string()()),
%%   <<"SendFilePaths">> => list(string()())
%% }
-type start_file_transfer_request() :: #{binary() => any()}.

%% Example:
%% describe_profile_response() :: #{
%%   <<"Profile">> => described_profile()
%% }
-type describe_profile_response() :: #{binary() => any()}.

%% Example:
%% update_web_app_response() :: #{
%%   <<"WebAppId">> => string()
%% }
-type update_web_app_response() :: #{binary() => any()}.

%% Example:
%% execution_results() :: #{
%%   <<"OnExceptionSteps">> => list(execution_step_result()()),
%%   <<"Steps">> => list(execution_step_result()())
%% }
-type execution_results() :: #{binary() => any()}.

%% Example:
%% described_connector() :: #{
%%   <<"AccessRole">> => string(),
%%   <<"Arn">> => string(),
%%   <<"As2Config">> => as2_connector_config(),
%%   <<"ConnectorId">> => string(),
%%   <<"LoggingRole">> => string(),
%%   <<"SecurityPolicyName">> => string(),
%%   <<"ServiceManagedEgressIpAddresses">> => list(string()()),
%%   <<"SftpConfig">> => sftp_connector_config(),
%%   <<"Tags">> => list(tag()()),
%%   <<"Url">> => string()
%% }
-type described_connector() :: #{binary() => any()}.

%% Example:
%% list_certificates_response() :: #{
%%   <<"Certificates">> => list(listed_certificate()()),
%%   <<"NextToken">> => string()
%% }
-type list_certificates_response() :: #{binary() => any()}.

%% Example:
%% list_executions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"WorkflowId">> := string()
%% }
-type list_executions_request() :: #{binary() => any()}.

%% Example:
%% test_connection_request() :: #{
%%   <<"ConnectorId">> := string()
%% }
-type test_connection_request() :: #{binary() => any()}.

%% Example:
%% delete_server_request() :: #{
%%   <<"ServerId">> := string()
%% }
-type delete_server_request() :: #{binary() => any()}.

%% Example:
%% protocol_details() :: #{
%%   <<"As2Transports">> => list(list(any())()),
%%   <<"PassiveIp">> => string(),
%%   <<"SetStatOption">> => list(any()),
%%   <<"TlsSessionResumptionMode">> => list(any())
%% }
-type protocol_details() :: #{binary() => any()}.

%% Example:
%% create_user_request() :: #{
%%   <<"HomeDirectory">> => string(),
%%   <<"HomeDirectoryMappings">> => list(home_directory_map_entry()()),
%%   <<"HomeDirectoryType">> => list(any()),
%%   <<"Policy">> => string(),
%%   <<"PosixProfile">> => posix_profile(),
%%   <<"Role">> := string(),
%%   <<"ServerId">> := string(),
%%   <<"SshPublicKeyBody">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"UserName">> := string()
%% }
-type create_user_request() :: #{binary() => any()}.

%% Example:
%% update_web_app_customization_response() :: #{
%%   <<"WebAppId">> => string()
%% }
-type update_web_app_customization_response() :: #{binary() => any()}.

-type create_access_errors() ::
    internal_service_error() | 
    resource_exists_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type create_agreement_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    resource_exists_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type create_connector_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    resource_exists_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type create_profile_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type create_server_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type create_user_errors() ::
    internal_service_error() | 
    resource_exists_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type create_web_app_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type create_workflow_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception().

-type delete_access_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type delete_agreement_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type delete_certificate_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type delete_connector_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type delete_host_key_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type delete_profile_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type delete_server_errors() ::
    internal_service_error() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type delete_ssh_public_key_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type delete_user_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type delete_web_app_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type delete_web_app_customization_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_workflow_errors() ::
    internal_service_error() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type describe_access_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type describe_agreement_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type describe_certificate_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type describe_connector_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type describe_execution_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type describe_host_key_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type describe_profile_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type describe_security_policy_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type describe_server_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type describe_user_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type describe_web_app_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type describe_web_app_customization_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type describe_workflow_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type import_certificate_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type import_host_key_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    resource_exists_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type import_ssh_public_key_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    resource_exists_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_accesses_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_next_token_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_agreements_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_next_token_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_certificates_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_next_token_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_connectors_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_next_token_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_executions_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_next_token_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_file_transfer_results_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_host_keys_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_next_token_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_profiles_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_next_token_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_security_policies_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_next_token_exception() | 
    invalid_request_exception().

-type list_servers_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_next_token_exception() | 
    invalid_request_exception().

-type list_tags_for_resource_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_next_token_exception() | 
    invalid_request_exception().

-type list_users_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_next_token_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_web_apps_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    invalid_next_token_exception() | 
    invalid_request_exception().

-type list_workflows_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_next_token_exception() | 
    invalid_request_exception().

-type send_workflow_step_state_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type start_directory_listing_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type start_file_transfer_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type start_server_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type stop_server_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type test_connection_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type test_identity_provider_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type update_access_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    resource_exists_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type update_agreement_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    resource_exists_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type update_certificate_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type update_connector_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    resource_exists_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type update_host_key_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type update_profile_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type update_server_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_user_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type update_web_app_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_web_app_customization_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Used by administrators to choose which groups in the directory should
%% have access to
%% upload and download files over the enabled protocols using Transfer
%% Family.
%%
%% For example, a
%% Microsoft Active Directory might contain 50,000 users, but only a small
%% fraction might need
%% the ability to transfer files to the server. An administrator can use
%% `CreateAccess' to limit the access to the correct set of users who
%% need this
%% ability.
-spec create_access(aws_client:aws_client(), create_access_request()) ->
    {ok, create_access_response(), tuple()} |
    {error, any()} |
    {error, create_access_errors(), tuple()}.
create_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_access(Client, Input, []).

-spec create_access(aws_client:aws_client(), create_access_request(), proplists:proplist()) ->
    {ok, create_access_response(), tuple()} |
    {error, any()} |
    {error, create_access_errors(), tuple()}.
create_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAccess">>, Input, Options).

%% @doc Creates an agreement.
%%
%% An agreement is a bilateral trading partner agreement, or partnership,
%% between an Transfer Family server and an AS2 process. The agreement
%% defines the file and message
%% transfer relationship between the server and the AS2 process. To define an
%% agreement, Transfer Family
%% combines a server, local profile, partner profile, certificate, and other
%% attributes.
%%
%% The partner is identified with the `PartnerProfileId', and the AS2
%% process is identified with the `LocalProfileId'.
%%
%% Specify either
%% `BaseDirectory' or `CustomDirectories', but not both. Specifying
%% both causes the command to fail.
-spec create_agreement(aws_client:aws_client(), create_agreement_request()) ->
    {ok, create_agreement_response(), tuple()} |
    {error, any()} |
    {error, create_agreement_errors(), tuple()}.
create_agreement(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_agreement(Client, Input, []).

-spec create_agreement(aws_client:aws_client(), create_agreement_request(), proplists:proplist()) ->
    {ok, create_agreement_response(), tuple()} |
    {error, any()} |
    {error, create_agreement_errors(), tuple()}.
create_agreement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAgreement">>, Input, Options).

%% @doc Creates the connector, which captures the parameters for a connection
%% for the
%% AS2 or SFTP protocol.
%%
%% For AS2, the connector is required for sending files to an externally
%% hosted AS2 server. For SFTP, the connector is required when sending files
%% to an SFTP server or receiving files from an SFTP server.
%% For more details about connectors, see Configure AS2 connectors:
%% https://docs.aws.amazon.com/transfer/latest/userguide/configure-as2-connector.html
%% and Create SFTP connectors:
%% https://docs.aws.amazon.com/transfer/latest/userguide/configure-sftp-connector.html.
%%
%% You must specify exactly one configuration object: either for AS2
%% (`As2Config') or SFTP (`SftpConfig').
-spec create_connector(aws_client:aws_client(), create_connector_request()) ->
    {ok, create_connector_response(), tuple()} |
    {error, any()} |
    {error, create_connector_errors(), tuple()}.
create_connector(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_connector(Client, Input, []).

-spec create_connector(aws_client:aws_client(), create_connector_request(), proplists:proplist()) ->
    {ok, create_connector_response(), tuple()} |
    {error, any()} |
    {error, create_connector_errors(), tuple()}.
create_connector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConnector">>, Input, Options).

%% @doc Creates the local or partner profile to use for AS2 transfers.
-spec create_profile(aws_client:aws_client(), create_profile_request()) ->
    {ok, create_profile_response(), tuple()} |
    {error, any()} |
    {error, create_profile_errors(), tuple()}.
create_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_profile(Client, Input, []).

-spec create_profile(aws_client:aws_client(), create_profile_request(), proplists:proplist()) ->
    {ok, create_profile_response(), tuple()} |
    {error, any()} |
    {error, create_profile_errors(), tuple()}.
create_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProfile">>, Input, Options).

%% @doc Instantiates an auto-scaling virtual server based on the selected
%% file transfer protocol
%% in Amazon Web Services.
%%
%% When you make updates to your file transfer protocol-enabled server or
%% when you work
%% with users, use the service-generated `ServerId' property that is
%% assigned to the
%% newly created server.
-spec create_server(aws_client:aws_client(), create_server_request()) ->
    {ok, create_server_response(), tuple()} |
    {error, any()} |
    {error, create_server_errors(), tuple()}.
create_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_server(Client, Input, []).

-spec create_server(aws_client:aws_client(), create_server_request(), proplists:proplist()) ->
    {ok, create_server_response(), tuple()} |
    {error, any()} |
    {error, create_server_errors(), tuple()}.
create_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateServer">>, Input, Options).

%% @doc Creates a user and associates them with an existing file transfer
%% protocol-enabled server.
%%
%% You can only create and associate users with servers that have the
%% `IdentityProviderType' set to `SERVICE_MANAGED'. Using parameters
%% for
%% `CreateUser', you can specify the user name, set the home directory,
%% store the
%% user's public key, and assign the user's Identity and Access
%% Management (IAM)
%% role. You can also optionally add a session policy, and assign metadata
%% with tags that can
%% be used to group and search for users.
-spec create_user(aws_client:aws_client(), create_user_request()) ->
    {ok, create_user_response(), tuple()} |
    {error, any()} |
    {error, create_user_errors(), tuple()}.
create_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user(Client, Input, []).

-spec create_user(aws_client:aws_client(), create_user_request(), proplists:proplist()) ->
    {ok, create_user_response(), tuple()} |
    {error, any()} |
    {error, create_user_errors(), tuple()}.
create_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUser">>, Input, Options).

%% @doc Creates a web app based on specified parameters, and returns the ID
%% for the new web app.
-spec create_web_app(aws_client:aws_client(), create_web_app_request()) ->
    {ok, create_web_app_response(), tuple()} |
    {error, any()} |
    {error, create_web_app_errors(), tuple()}.
create_web_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_web_app(Client, Input, []).

-spec create_web_app(aws_client:aws_client(), create_web_app_request(), proplists:proplist()) ->
    {ok, create_web_app_response(), tuple()} |
    {error, any()} |
    {error, create_web_app_errors(), tuple()}.
create_web_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWebApp">>, Input, Options).

%% @doc
%% Allows you to create a workflow with specified steps and step details the
%% workflow invokes after file transfer completes.
%%
%% After creating a workflow, you can associate the workflow created with any
%% transfer servers by specifying the `workflow-details' field in
%% `CreateServer' and `UpdateServer' operations.
-spec create_workflow(aws_client:aws_client(), create_workflow_request()) ->
    {ok, create_workflow_response(), tuple()} |
    {error, any()} |
    {error, create_workflow_errors(), tuple()}.
create_workflow(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_workflow(Client, Input, []).

-spec create_workflow(aws_client:aws_client(), create_workflow_request(), proplists:proplist()) ->
    {ok, create_workflow_response(), tuple()} |
    {error, any()} |
    {error, create_workflow_errors(), tuple()}.
create_workflow(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWorkflow">>, Input, Options).

%% @doc Allows you to delete the access specified in the `ServerID' and
%% `ExternalID' parameters.
-spec delete_access(aws_client:aws_client(), delete_access_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_access_errors(), tuple()}.
delete_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_access(Client, Input, []).

-spec delete_access(aws_client:aws_client(), delete_access_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_access_errors(), tuple()}.
delete_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAccess">>, Input, Options).

%% @doc Delete the agreement that's specified in the provided
%% `AgreementId'.
-spec delete_agreement(aws_client:aws_client(), delete_agreement_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_agreement_errors(), tuple()}.
delete_agreement(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_agreement(Client, Input, []).

-spec delete_agreement(aws_client:aws_client(), delete_agreement_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_agreement_errors(), tuple()}.
delete_agreement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAgreement">>, Input, Options).

%% @doc Deletes the certificate that's specified in the
%% `CertificateId'
%% parameter.
-spec delete_certificate(aws_client:aws_client(), delete_certificate_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_certificate_errors(), tuple()}.
delete_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_certificate(Client, Input, []).

-spec delete_certificate(aws_client:aws_client(), delete_certificate_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_certificate_errors(), tuple()}.
delete_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCertificate">>, Input, Options).

%% @doc Deletes the connector that's specified in the provided
%% `ConnectorId'.
-spec delete_connector(aws_client:aws_client(), delete_connector_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_connector_errors(), tuple()}.
delete_connector(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_connector(Client, Input, []).

-spec delete_connector(aws_client:aws_client(), delete_connector_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_connector_errors(), tuple()}.
delete_connector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConnector">>, Input, Options).

%% @doc Deletes the host key that's specified in the `HostKeyId'
%% parameter.
-spec delete_host_key(aws_client:aws_client(), delete_host_key_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_host_key_errors(), tuple()}.
delete_host_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_host_key(Client, Input, []).

-spec delete_host_key(aws_client:aws_client(), delete_host_key_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_host_key_errors(), tuple()}.
delete_host_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteHostKey">>, Input, Options).

%% @doc Deletes the profile that's specified in the `ProfileId'
%% parameter.
-spec delete_profile(aws_client:aws_client(), delete_profile_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_profile_errors(), tuple()}.
delete_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_profile(Client, Input, []).

-spec delete_profile(aws_client:aws_client(), delete_profile_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_profile_errors(), tuple()}.
delete_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProfile">>, Input, Options).

%% @doc Deletes the file transfer protocol-enabled server that you specify.
%%
%% No response returns from this operation.
-spec delete_server(aws_client:aws_client(), delete_server_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_server_errors(), tuple()}.
delete_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_server(Client, Input, []).

-spec delete_server(aws_client:aws_client(), delete_server_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_server_errors(), tuple()}.
delete_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteServer">>, Input, Options).

%% @doc Deletes a user's Secure Shell (SSH) public key.
-spec delete_ssh_public_key(aws_client:aws_client(), delete_ssh_public_key_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_ssh_public_key_errors(), tuple()}.
delete_ssh_public_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_ssh_public_key(Client, Input, []).

-spec delete_ssh_public_key(aws_client:aws_client(), delete_ssh_public_key_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_ssh_public_key_errors(), tuple()}.
delete_ssh_public_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSshPublicKey">>, Input, Options).

%% @doc Deletes the user belonging to a file transfer protocol-enabled server
%% you specify.
%%
%% No response returns from this operation.
%%
%% When you delete a user from a server, the user's information is lost.
-spec delete_user(aws_client:aws_client(), delete_user_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_user_errors(), tuple()}.
delete_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user(Client, Input, []).

-spec delete_user(aws_client:aws_client(), delete_user_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_user_errors(), tuple()}.
delete_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUser">>, Input, Options).

%% @doc Deletes the specified web app.
-spec delete_web_app(aws_client:aws_client(), delete_web_app_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_web_app_errors(), tuple()}.
delete_web_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_web_app(Client, Input, []).

-spec delete_web_app(aws_client:aws_client(), delete_web_app_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_web_app_errors(), tuple()}.
delete_web_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWebApp">>, Input, Options).

%% @doc Deletes the `WebAppCustomization' object that corresponds to the
%% web app ID specified.
-spec delete_web_app_customization(aws_client:aws_client(), delete_web_app_customization_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_web_app_customization_errors(), tuple()}.
delete_web_app_customization(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_web_app_customization(Client, Input, []).

-spec delete_web_app_customization(aws_client:aws_client(), delete_web_app_customization_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_web_app_customization_errors(), tuple()}.
delete_web_app_customization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWebAppCustomization">>, Input, Options).

%% @doc Deletes the specified workflow.
-spec delete_workflow(aws_client:aws_client(), delete_workflow_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_workflow_errors(), tuple()}.
delete_workflow(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_workflow(Client, Input, []).

-spec delete_workflow(aws_client:aws_client(), delete_workflow_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_workflow_errors(), tuple()}.
delete_workflow(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWorkflow">>, Input, Options).

%% @doc Describes the access that is assigned to the specific file transfer
%% protocol-enabled
%% server, as identified by its `ServerId' property and its
%% `ExternalId'.
%%
%% The response from this call returns the properties of the access that is
%% associated with
%% the `ServerId' value that was specified.
-spec describe_access(aws_client:aws_client(), describe_access_request()) ->
    {ok, describe_access_response(), tuple()} |
    {error, any()} |
    {error, describe_access_errors(), tuple()}.
describe_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_access(Client, Input, []).

-spec describe_access(aws_client:aws_client(), describe_access_request(), proplists:proplist()) ->
    {ok, describe_access_response(), tuple()} |
    {error, any()} |
    {error, describe_access_errors(), tuple()}.
describe_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccess">>, Input, Options).

%% @doc Describes the agreement that's identified by the
%% `AgreementId'.
-spec describe_agreement(aws_client:aws_client(), describe_agreement_request()) ->
    {ok, describe_agreement_response(), tuple()} |
    {error, any()} |
    {error, describe_agreement_errors(), tuple()}.
describe_agreement(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_agreement(Client, Input, []).

-spec describe_agreement(aws_client:aws_client(), describe_agreement_request(), proplists:proplist()) ->
    {ok, describe_agreement_response(), tuple()} |
    {error, any()} |
    {error, describe_agreement_errors(), tuple()}.
describe_agreement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAgreement">>, Input, Options).

%% @doc Describes the certificate that's identified by the
%% `CertificateId'.
-spec describe_certificate(aws_client:aws_client(), describe_certificate_request()) ->
    {ok, describe_certificate_response(), tuple()} |
    {error, any()} |
    {error, describe_certificate_errors(), tuple()}.
describe_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_certificate(Client, Input, []).

-spec describe_certificate(aws_client:aws_client(), describe_certificate_request(), proplists:proplist()) ->
    {ok, describe_certificate_response(), tuple()} |
    {error, any()} |
    {error, describe_certificate_errors(), tuple()}.
describe_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCertificate">>, Input, Options).

%% @doc Describes the connector that's identified by the
%% `ConnectorId.'
-spec describe_connector(aws_client:aws_client(), describe_connector_request()) ->
    {ok, describe_connector_response(), tuple()} |
    {error, any()} |
    {error, describe_connector_errors(), tuple()}.
describe_connector(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_connector(Client, Input, []).

-spec describe_connector(aws_client:aws_client(), describe_connector_request(), proplists:proplist()) ->
    {ok, describe_connector_response(), tuple()} |
    {error, any()} |
    {error, describe_connector_errors(), tuple()}.
describe_connector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConnector">>, Input, Options).

%% @doc You can use `DescribeExecution' to check the details of the
%% execution of the specified workflow.
%%
%% This API call only returns details for in-progress workflows.
%%
%% If you provide an ID for an execution that is not in progress, or if the
%% execution doesn't match the specified workflow ID, you receive a
%% `ResourceNotFound' exception.
-spec describe_execution(aws_client:aws_client(), describe_execution_request()) ->
    {ok, describe_execution_response(), tuple()} |
    {error, any()} |
    {error, describe_execution_errors(), tuple()}.
describe_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_execution(Client, Input, []).

-spec describe_execution(aws_client:aws_client(), describe_execution_request(), proplists:proplist()) ->
    {ok, describe_execution_response(), tuple()} |
    {error, any()} |
    {error, describe_execution_errors(), tuple()}.
describe_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeExecution">>, Input, Options).

%% @doc Returns the details of the host key that's specified by the
%% `HostKeyId' and `ServerId'.
-spec describe_host_key(aws_client:aws_client(), describe_host_key_request()) ->
    {ok, describe_host_key_response(), tuple()} |
    {error, any()} |
    {error, describe_host_key_errors(), tuple()}.
describe_host_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_host_key(Client, Input, []).

-spec describe_host_key(aws_client:aws_client(), describe_host_key_request(), proplists:proplist()) ->
    {ok, describe_host_key_response(), tuple()} |
    {error, any()} |
    {error, describe_host_key_errors(), tuple()}.
describe_host_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHostKey">>, Input, Options).

%% @doc Returns the details of the profile that's specified by the
%% `ProfileId'.
-spec describe_profile(aws_client:aws_client(), describe_profile_request()) ->
    {ok, describe_profile_response(), tuple()} |
    {error, any()} |
    {error, describe_profile_errors(), tuple()}.
describe_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_profile(Client, Input, []).

-spec describe_profile(aws_client:aws_client(), describe_profile_request(), proplists:proplist()) ->
    {ok, describe_profile_response(), tuple()} |
    {error, any()} |
    {error, describe_profile_errors(), tuple()}.
describe_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProfile">>, Input, Options).

%% @doc Describes the security policy that is attached to your server or SFTP
%% connector.
%%
%% The response contains a description of the security policy's
%% properties. For more
%% information about security policies, see Working with security
%% policies for servers:
%% https://docs.aws.amazon.com/transfer/latest/userguide/security-policies.html
%% or Working with security
%% policies for SFTP connectors:
%% https://docs.aws.amazon.com/transfer/latest/userguide/security-policies-connectors.html.
-spec describe_security_policy(aws_client:aws_client(), describe_security_policy_request()) ->
    {ok, describe_security_policy_response(), tuple()} |
    {error, any()} |
    {error, describe_security_policy_errors(), tuple()}.
describe_security_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_security_policy(Client, Input, []).

-spec describe_security_policy(aws_client:aws_client(), describe_security_policy_request(), proplists:proplist()) ->
    {ok, describe_security_policy_response(), tuple()} |
    {error, any()} |
    {error, describe_security_policy_errors(), tuple()}.
describe_security_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSecurityPolicy">>, Input, Options).

%% @doc Describes a file transfer protocol-enabled server that you specify by
%% passing the
%% `ServerId' parameter.
%%
%% The response contains a description of a server's properties. When you
%% set
%% `EndpointType' to VPC, the response will contain the
%% `EndpointDetails'.
-spec describe_server(aws_client:aws_client(), describe_server_request()) ->
    {ok, describe_server_response(), tuple()} |
    {error, any()} |
    {error, describe_server_errors(), tuple()}.
describe_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_server(Client, Input, []).

-spec describe_server(aws_client:aws_client(), describe_server_request(), proplists:proplist()) ->
    {ok, describe_server_response(), tuple()} |
    {error, any()} |
    {error, describe_server_errors(), tuple()}.
describe_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeServer">>, Input, Options).

%% @doc Describes the user assigned to the specific file transfer
%% protocol-enabled server, as
%% identified by its `ServerId' property.
%%
%% The response from this call returns the properties of the user associated
%% with the
%% `ServerId' value that was specified.
-spec describe_user(aws_client:aws_client(), describe_user_request()) ->
    {ok, describe_user_response(), tuple()} |
    {error, any()} |
    {error, describe_user_errors(), tuple()}.
describe_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_user(Client, Input, []).

-spec describe_user(aws_client:aws_client(), describe_user_request(), proplists:proplist()) ->
    {ok, describe_user_response(), tuple()} |
    {error, any()} |
    {error, describe_user_errors(), tuple()}.
describe_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUser">>, Input, Options).

%% @doc Describes the web app that's identified by `WebAppId'.
-spec describe_web_app(aws_client:aws_client(), describe_web_app_request()) ->
    {ok, describe_web_app_response(), tuple()} |
    {error, any()} |
    {error, describe_web_app_errors(), tuple()}.
describe_web_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_web_app(Client, Input, []).

-spec describe_web_app(aws_client:aws_client(), describe_web_app_request(), proplists:proplist()) ->
    {ok, describe_web_app_response(), tuple()} |
    {error, any()} |
    {error, describe_web_app_errors(), tuple()}.
describe_web_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWebApp">>, Input, Options).

%% @doc Describes the web app customization object that's identified by
%% `WebAppId'.
-spec describe_web_app_customization(aws_client:aws_client(), describe_web_app_customization_request()) ->
    {ok, describe_web_app_customization_response(), tuple()} |
    {error, any()} |
    {error, describe_web_app_customization_errors(), tuple()}.
describe_web_app_customization(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_web_app_customization(Client, Input, []).

-spec describe_web_app_customization(aws_client:aws_client(), describe_web_app_customization_request(), proplists:proplist()) ->
    {ok, describe_web_app_customization_response(), tuple()} |
    {error, any()} |
    {error, describe_web_app_customization_errors(), tuple()}.
describe_web_app_customization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWebAppCustomization">>, Input, Options).

%% @doc Describes the specified workflow.
-spec describe_workflow(aws_client:aws_client(), describe_workflow_request()) ->
    {ok, describe_workflow_response(), tuple()} |
    {error, any()} |
    {error, describe_workflow_errors(), tuple()}.
describe_workflow(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workflow(Client, Input, []).

-spec describe_workflow(aws_client:aws_client(), describe_workflow_request(), proplists:proplist()) ->
    {ok, describe_workflow_response(), tuple()} |
    {error, any()} |
    {error, describe_workflow_errors(), tuple()}.
describe_workflow(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkflow">>, Input, Options).

%% @doc Imports the signing and encryption certificates that you need to
%% create local (AS2)
%% profiles and partner
%% profiles.
-spec import_certificate(aws_client:aws_client(), import_certificate_request()) ->
    {ok, import_certificate_response(), tuple()} |
    {error, any()} |
    {error, import_certificate_errors(), tuple()}.
import_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_certificate(Client, Input, []).

-spec import_certificate(aws_client:aws_client(), import_certificate_request(), proplists:proplist()) ->
    {ok, import_certificate_response(), tuple()} |
    {error, any()} |
    {error, import_certificate_errors(), tuple()}.
import_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportCertificate">>, Input, Options).

%% @doc Adds a host key to the server that's specified by the
%% `ServerId'
%% parameter.
-spec import_host_key(aws_client:aws_client(), import_host_key_request()) ->
    {ok, import_host_key_response(), tuple()} |
    {error, any()} |
    {error, import_host_key_errors(), tuple()}.
import_host_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_host_key(Client, Input, []).

-spec import_host_key(aws_client:aws_client(), import_host_key_request(), proplists:proplist()) ->
    {ok, import_host_key_response(), tuple()} |
    {error, any()} |
    {error, import_host_key_errors(), tuple()}.
import_host_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportHostKey">>, Input, Options).

%% @doc Adds a Secure Shell (SSH) public key to a Transfer Family user
%% identified by a
%% `UserName' value assigned to the specific file transfer
%% protocol-enabled server,
%% identified by `ServerId'.
%%
%% The response returns the `UserName' value, the `ServerId' value,
%% and
%% the name of the `SshPublicKeyId'.
-spec import_ssh_public_key(aws_client:aws_client(), import_ssh_public_key_request()) ->
    {ok, import_ssh_public_key_response(), tuple()} |
    {error, any()} |
    {error, import_ssh_public_key_errors(), tuple()}.
import_ssh_public_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_ssh_public_key(Client, Input, []).

-spec import_ssh_public_key(aws_client:aws_client(), import_ssh_public_key_request(), proplists:proplist()) ->
    {ok, import_ssh_public_key_response(), tuple()} |
    {error, any()} |
    {error, import_ssh_public_key_errors(), tuple()}.
import_ssh_public_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportSshPublicKey">>, Input, Options).

%% @doc Lists the details for all the accesses you have on your server.
-spec list_accesses(aws_client:aws_client(), list_accesses_request()) ->
    {ok, list_accesses_response(), tuple()} |
    {error, any()} |
    {error, list_accesses_errors(), tuple()}.
list_accesses(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_accesses(Client, Input, []).

-spec list_accesses(aws_client:aws_client(), list_accesses_request(), proplists:proplist()) ->
    {ok, list_accesses_response(), tuple()} |
    {error, any()} |
    {error, list_accesses_errors(), tuple()}.
list_accesses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccesses">>, Input, Options).

%% @doc Returns a list of the agreements for the server that's identified
%% by the
%% `ServerId' that you supply.
%%
%% If you want to limit the results to a certain number,
%% supply a value for the `MaxResults' parameter. If you ran the command
%% previously
%% and received a value for `NextToken', you can supply that value to
%% continue listing
%% agreements from where you left off.
-spec list_agreements(aws_client:aws_client(), list_agreements_request()) ->
    {ok, list_agreements_response(), tuple()} |
    {error, any()} |
    {error, list_agreements_errors(), tuple()}.
list_agreements(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_agreements(Client, Input, []).

-spec list_agreements(aws_client:aws_client(), list_agreements_request(), proplists:proplist()) ->
    {ok, list_agreements_response(), tuple()} |
    {error, any()} |
    {error, list_agreements_errors(), tuple()}.
list_agreements(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAgreements">>, Input, Options).

%% @doc Returns a list of the current certificates that have been imported
%% into Transfer Family.
%%
%% If you want to
%% limit the results to a certain number, supply a value for the
%% `MaxResults'
%% parameter. If you ran the command previously and received a value for the
%% `NextToken' parameter, you can supply that value to continue listing
%% certificates
%% from where you left off.
-spec list_certificates(aws_client:aws_client(), list_certificates_request()) ->
    {ok, list_certificates_response(), tuple()} |
    {error, any()} |
    {error, list_certificates_errors(), tuple()}.
list_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_certificates(Client, Input, []).

-spec list_certificates(aws_client:aws_client(), list_certificates_request(), proplists:proplist()) ->
    {ok, list_certificates_response(), tuple()} |
    {error, any()} |
    {error, list_certificates_errors(), tuple()}.
list_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCertificates">>, Input, Options).

%% @doc Lists the connectors for the specified Region.
-spec list_connectors(aws_client:aws_client(), list_connectors_request()) ->
    {ok, list_connectors_response(), tuple()} |
    {error, any()} |
    {error, list_connectors_errors(), tuple()}.
list_connectors(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_connectors(Client, Input, []).

-spec list_connectors(aws_client:aws_client(), list_connectors_request(), proplists:proplist()) ->
    {ok, list_connectors_response(), tuple()} |
    {error, any()} |
    {error, list_connectors_errors(), tuple()}.
list_connectors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListConnectors">>, Input, Options).

%% @doc Lists all in-progress executions for the specified workflow.
%%
%% If the specified workflow ID cannot be found, `ListExecutions' returns
%% a
%% `ResourceNotFound' exception.
-spec list_executions(aws_client:aws_client(), list_executions_request()) ->
    {ok, list_executions_response(), tuple()} |
    {error, any()} |
    {error, list_executions_errors(), tuple()}.
list_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_executions(Client, Input, []).

-spec list_executions(aws_client:aws_client(), list_executions_request(), proplists:proplist()) ->
    {ok, list_executions_response(), tuple()} |
    {error, any()} |
    {error, list_executions_errors(), tuple()}.
list_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListExecutions">>, Input, Options).

%% @doc
%% Returns real-time updates and detailed information on the status of each
%% individual file being transferred in a specific file transfer operation.
%%
%% You specify the file transfer by providing its `ConnectorId' and its
%% `TransferId'.
%%
%% File transfer results are available up to 7 days after an operation has
%% been requested.
-spec list_file_transfer_results(aws_client:aws_client(), list_file_transfer_results_request()) ->
    {ok, list_file_transfer_results_response(), tuple()} |
    {error, any()} |
    {error, list_file_transfer_results_errors(), tuple()}.
list_file_transfer_results(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_file_transfer_results(Client, Input, []).

-spec list_file_transfer_results(aws_client:aws_client(), list_file_transfer_results_request(), proplists:proplist()) ->
    {ok, list_file_transfer_results_response(), tuple()} |
    {error, any()} |
    {error, list_file_transfer_results_errors(), tuple()}.
list_file_transfer_results(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFileTransferResults">>, Input, Options).

%% @doc Returns a list of host keys for the server that's specified by
%% the `ServerId'
%% parameter.
-spec list_host_keys(aws_client:aws_client(), list_host_keys_request()) ->
    {ok, list_host_keys_response(), tuple()} |
    {error, any()} |
    {error, list_host_keys_errors(), tuple()}.
list_host_keys(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_host_keys(Client, Input, []).

-spec list_host_keys(aws_client:aws_client(), list_host_keys_request(), proplists:proplist()) ->
    {ok, list_host_keys_response(), tuple()} |
    {error, any()} |
    {error, list_host_keys_errors(), tuple()}.
list_host_keys(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListHostKeys">>, Input, Options).

%% @doc Returns a list of the profiles for your system.
%%
%% If you want to limit the results to a
%% certain number, supply a value for the `MaxResults' parameter. If you
%% ran the
%% command previously and received a value for `NextToken', you can
%% supply that value
%% to continue listing profiles from where you left off.
-spec list_profiles(aws_client:aws_client(), list_profiles_request()) ->
    {ok, list_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_profiles_errors(), tuple()}.
list_profiles(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_profiles(Client, Input, []).

-spec list_profiles(aws_client:aws_client(), list_profiles_request(), proplists:proplist()) ->
    {ok, list_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_profiles_errors(), tuple()}.
list_profiles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProfiles">>, Input, Options).

%% @doc Lists the security policies that are attached to your servers and
%% SFTP connectors.
%%
%% For more information
%% about security policies, see Working with security
%% policies for servers:
%% https://docs.aws.amazon.com/transfer/latest/userguide/security-policies.html
%% or Working with security
%% policies for SFTP connectors:
%% https://docs.aws.amazon.com/transfer/latest/userguide/security-policies-connectors.html.
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

%% @doc Lists the file transfer protocol-enabled servers that are associated
%% with your Amazon Web Services
%% account.
-spec list_servers(aws_client:aws_client(), list_servers_request()) ->
    {ok, list_servers_response(), tuple()} |
    {error, any()} |
    {error, list_servers_errors(), tuple()}.
list_servers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_servers(Client, Input, []).

-spec list_servers(aws_client:aws_client(), list_servers_request(), proplists:proplist()) ->
    {ok, list_servers_response(), tuple()} |
    {error, any()} |
    {error, list_servers_errors(), tuple()}.
list_servers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServers">>, Input, Options).

%% @doc Lists all of the tags associated with the Amazon Resource Name (ARN)
%% that you specify.
%%
%% The
%% resource can be a user, server, or role.
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

%% @doc Lists the users for a file transfer protocol-enabled server that you
%% specify by passing
%% the `ServerId' parameter.
-spec list_users(aws_client:aws_client(), list_users_request()) ->
    {ok, list_users_response(), tuple()} |
    {error, any()} |
    {error, list_users_errors(), tuple()}.
list_users(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_users(Client, Input, []).

-spec list_users(aws_client:aws_client(), list_users_request(), proplists:proplist()) ->
    {ok, list_users_response(), tuple()} |
    {error, any()} |
    {error, list_users_errors(), tuple()}.
list_users(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUsers">>, Input, Options).

%% @doc Lists all web apps associated with your Amazon Web Services account
%% for your current region.
-spec list_web_apps(aws_client:aws_client(), list_web_apps_request()) ->
    {ok, list_web_apps_response(), tuple()} |
    {error, any()} |
    {error, list_web_apps_errors(), tuple()}.
list_web_apps(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_web_apps(Client, Input, []).

-spec list_web_apps(aws_client:aws_client(), list_web_apps_request(), proplists:proplist()) ->
    {ok, list_web_apps_response(), tuple()} |
    {error, any()} |
    {error, list_web_apps_errors(), tuple()}.
list_web_apps(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWebApps">>, Input, Options).

%% @doc Lists all workflows associated with your Amazon Web Services account
%% for your current region.
-spec list_workflows(aws_client:aws_client(), list_workflows_request()) ->
    {ok, list_workflows_response(), tuple()} |
    {error, any()} |
    {error, list_workflows_errors(), tuple()}.
list_workflows(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_workflows(Client, Input, []).

-spec list_workflows(aws_client:aws_client(), list_workflows_request(), proplists:proplist()) ->
    {ok, list_workflows_response(), tuple()} |
    {error, any()} |
    {error, list_workflows_errors(), tuple()}.
list_workflows(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWorkflows">>, Input, Options).

%% @doc Sends a callback for asynchronous custom steps.
%%
%% The `ExecutionId', `WorkflowId', and `Token' are passed to the
%% target resource during execution of a custom step of a workflow.
%% You must include those with their callback as well as providing a status.
-spec send_workflow_step_state(aws_client:aws_client(), send_workflow_step_state_request()) ->
    {ok, send_workflow_step_state_response(), tuple()} |
    {error, any()} |
    {error, send_workflow_step_state_errors(), tuple()}.
send_workflow_step_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_workflow_step_state(Client, Input, []).

-spec send_workflow_step_state(aws_client:aws_client(), send_workflow_step_state_request(), proplists:proplist()) ->
    {ok, send_workflow_step_state_response(), tuple()} |
    {error, any()} |
    {error, send_workflow_step_state_errors(), tuple()}.
send_workflow_step_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendWorkflowStepState">>, Input, Options).

%% @doc Retrieves a list of the contents of a directory from a remote SFTP
%% server.
%%
%% You specify the
%% connector ID, the output path, and the remote directory path. You can also
%% specify the
%% optional `MaxItems' value to control the maximum number of items that
%% are listed
%% from the remote directory. This API returns a list of all files and
%% directories in the remote
%% directory (up to the maximum value), but does not return files or folders
%% in sub-directories.
%% That is, it only returns a list of files and directories one-level deep.
%%
%% After you receive the listing file, you can provide the files that you
%% want to transfer to
%% the `RetrieveFilePaths' parameter of the `StartFileTransfer' API
%% call.
%%
%% The naming convention for the output file is
%%
%% ```
%% connector-ID-listing-ID.json'''. The
%% output file contains the following information:
%%
%% `filePath': the complete path of a remote file, relative to the
%% directory
%% of the listing request for your SFTP connector on the remote server.
%%
%% `modifiedTimestamp': the last time the file was modified, in UTC time
%% format. This field is optional. If the remote file attributes don't
%% contain a timestamp,
%% it is omitted from the file listing.
%%
%% `size': the size of the file, in bytes. This field is optional. If the
%% remote file attributes don't contain a file size, it is omitted from
%% the file
%% listing.
%%
%% `path': the complete path of a remote directory, relative to the
%% directory
%% of the listing request for your SFTP connector on the remote server.
%%
%% `truncated': a flag indicating whether the list output contains all of
%% the
%% items contained in the remote directory or not. If your `Truncated'
%% output
%% value is true, you can increase the value provided in the optional
%% `max-items'
%% input attribute to be able to list more items (up to the maximum allowed
%% list size of
%% 10,000 items).
-spec start_directory_listing(aws_client:aws_client(), start_directory_listing_request()) ->
    {ok, start_directory_listing_response(), tuple()} |
    {error, any()} |
    {error, start_directory_listing_errors(), tuple()}.
start_directory_listing(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_directory_listing(Client, Input, []).

-spec start_directory_listing(aws_client:aws_client(), start_directory_listing_request(), proplists:proplist()) ->
    {ok, start_directory_listing_response(), tuple()} |
    {error, any()} |
    {error, start_directory_listing_errors(), tuple()}.
start_directory_listing(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDirectoryListing">>, Input, Options).

%% @doc Begins a file transfer between local Amazon Web Services storage and
%% a remote AS2 or SFTP server.
%%
%% For an AS2 connector, you specify the `ConnectorId' and one or more
%% `SendFilePaths' to identify the files
%% you want to transfer.
%%
%% For an SFTP connector, the file transfer can be either outbound or
%% inbound. In both
%% cases, you specify the `ConnectorId'. Depending on the direction of
%% the transfer,
%% you also specify the following items:
%%
%% If you are transferring file from a partner's SFTP server to Amazon
%% Web Services
%% storage, you specify one or more `RetrieveFilePaths' to identify the
%% files
%% you want to transfer, and a `LocalDirectoryPath' to specify the
%% destination
%% folder.
%%
%% If you are transferring file to a partner's SFTP server from Amazon
%% Web Services
%% storage, you specify one or more `SendFilePaths' to identify the files
%% you
%% want to transfer, and a `RemoteDirectoryPath' to specify the
%% destination
%% folder.
-spec start_file_transfer(aws_client:aws_client(), start_file_transfer_request()) ->
    {ok, start_file_transfer_response(), tuple()} |
    {error, any()} |
    {error, start_file_transfer_errors(), tuple()}.
start_file_transfer(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_file_transfer(Client, Input, []).

-spec start_file_transfer(aws_client:aws_client(), start_file_transfer_request(), proplists:proplist()) ->
    {ok, start_file_transfer_response(), tuple()} |
    {error, any()} |
    {error, start_file_transfer_errors(), tuple()}.
start_file_transfer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartFileTransfer">>, Input, Options).

%% @doc Changes the state of a file transfer protocol-enabled server from
%% `OFFLINE' to
%% `ONLINE'.
%%
%% It has no impact on a server that is already `ONLINE'. An
%% `ONLINE' server can accept and process file transfer jobs.
%%
%% The state of `STARTING' indicates that the server is in an
%% intermediate state,
%% either not fully able to respond, or not fully online. The values of
%% `START_FAILED'
%% can indicate an error condition.
%%
%% No response is returned from this call.
-spec start_server(aws_client:aws_client(), start_server_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_server_errors(), tuple()}.
start_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_server(Client, Input, []).

-spec start_server(aws_client:aws_client(), start_server_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_server_errors(), tuple()}.
start_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartServer">>, Input, Options).

%% @doc Changes the state of a file transfer protocol-enabled server from
%% `ONLINE' to
%% `OFFLINE'.
%%
%% An `OFFLINE' server cannot accept and process file transfer
%% jobs. Information tied to your server, such as server and user properties,
%% are not affected by
%% stopping your server.
%%
%% Stopping the server does not reduce or impact your file transfer protocol
%% endpoint
%% billing; you must delete the server to stop being billed.
%%
%% The state of `STOPPING' indicates that the server is in an
%% intermediate state,
%% either not fully able to respond, or not fully offline. The values of
%% `STOP_FAILED'
%% can indicate an error condition.
%%
%% No response is returned from this call.
-spec stop_server(aws_client:aws_client(), stop_server_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_server_errors(), tuple()}.
stop_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_server(Client, Input, []).

-spec stop_server(aws_client:aws_client(), stop_server_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_server_errors(), tuple()}.
stop_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopServer">>, Input, Options).

%% @doc Attaches a key-value pair to a resource, as identified by its Amazon
%% Resource Name (ARN).
%%
%% Resources are users, servers, roles, and other entities.
%%
%% There is no response returned from this call.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Tests whether your SFTP connector is set up successfully.
%%
%% We highly recommend that you call this
%% operation to test your ability to transfer files between local Amazon Web
%% Services storage and a trading partner's
%% SFTP server.
-spec test_connection(aws_client:aws_client(), test_connection_request()) ->
    {ok, test_connection_response(), tuple()} |
    {error, any()} |
    {error, test_connection_errors(), tuple()}.
test_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_connection(Client, Input, []).

-spec test_connection(aws_client:aws_client(), test_connection_request(), proplists:proplist()) ->
    {ok, test_connection_response(), tuple()} |
    {error, any()} |
    {error, test_connection_errors(), tuple()}.
test_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestConnection">>, Input, Options).

%% @doc If the `IdentityProviderType' of a file transfer protocol-enabled
%% server is
%% `AWS_DIRECTORY_SERVICE' or `API_Gateway', tests whether your
%% identity
%% provider is set up successfully.
%%
%% We highly recommend that you call this operation to test your
%% authentication method as soon as you create your server. By doing so, you
%% can troubleshoot
%% issues with the identity provider integration to ensure that your users
%% can successfully use
%% the service.
%%
%% The `ServerId' and `UserName' parameters are required. The
%% `ServerProtocol', `SourceIp', and `UserPassword' are all
%% optional.
%%
%% Note the following:
%%
%% You cannot use `TestIdentityProvider' if the
%% `IdentityProviderType' of your server is `SERVICE_MANAGED'.
%%
%% `TestIdentityProvider' does not work with keys: it only accepts
%% passwords.
%%
%% `TestIdentityProvider' can test the password operation for a custom
%% Identity Provider that handles keys and passwords.
%%
%% If you provide any incorrect values for any parameters, the `Response'
%% field is empty.
%%
%% If you provide a server ID for a server that uses service-managed users,
%% you get an error:
%%
%% ```
%% An error occurred (InvalidRequestException) when calling the
%% TestIdentityProvider operation: s-server-ID not configured for external
%% auth '''
%%
%% If you enter a Server ID for the `--server-id' parameter that does not
%% identify an actual Transfer server, you receive the following error:
%%
%% `An error occurred (ResourceNotFoundException) when calling the
%% TestIdentityProvider operation: Unknown server'.
%%
%% It is possible your sever is in a different region. You can specify a
%% region by adding the following: `--region region-code',
%% such as `--region us-east-2' to specify a server in US East (Ohio).
-spec test_identity_provider(aws_client:aws_client(), test_identity_provider_request()) ->
    {ok, test_identity_provider_response(), tuple()} |
    {error, any()} |
    {error, test_identity_provider_errors(), tuple()}.
test_identity_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_identity_provider(Client, Input, []).

-spec test_identity_provider(aws_client:aws_client(), test_identity_provider_request(), proplists:proplist()) ->
    {ok, test_identity_provider_response(), tuple()} |
    {error, any()} |
    {error, test_identity_provider_errors(), tuple()}.
test_identity_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestIdentityProvider">>, Input, Options).

%% @doc Detaches a key-value pair from a resource, as identified by its
%% Amazon Resource Name
%% (ARN).
%%
%% Resources are users, servers, roles, and other entities.
%%
%% No response is returned from this call.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Allows you to update parameters for the access specified in the
%% `ServerID' and
%% `ExternalID' parameters.
-spec update_access(aws_client:aws_client(), update_access_request()) ->
    {ok, update_access_response(), tuple()} |
    {error, any()} |
    {error, update_access_errors(), tuple()}.
update_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_access(Client, Input, []).

-spec update_access(aws_client:aws_client(), update_access_request(), proplists:proplist()) ->
    {ok, update_access_response(), tuple()} |
    {error, any()} |
    {error, update_access_errors(), tuple()}.
update_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAccess">>, Input, Options).

%% @doc Updates some of the parameters for an existing agreement.
%%
%% Provide the
%% `AgreementId' and the `ServerId' for the agreement that you want
%% to
%% update, along with the new values for the parameters to update.
%%
%% Specify either
%% `BaseDirectory' or `CustomDirectories', but not both. Specifying
%% both causes the command to fail.
%%
%% If you update an agreement from using base directory to custom
%% directories, the base directory is no longer used. Similarly, if you
%% change from custom directories to a base directory, the custom directories
%% are no longer used.
-spec update_agreement(aws_client:aws_client(), update_agreement_request()) ->
    {ok, update_agreement_response(), tuple()} |
    {error, any()} |
    {error, update_agreement_errors(), tuple()}.
update_agreement(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_agreement(Client, Input, []).

-spec update_agreement(aws_client:aws_client(), update_agreement_request(), proplists:proplist()) ->
    {ok, update_agreement_response(), tuple()} |
    {error, any()} |
    {error, update_agreement_errors(), tuple()}.
update_agreement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAgreement">>, Input, Options).

%% @doc Updates the active and inactive dates for a certificate.
-spec update_certificate(aws_client:aws_client(), update_certificate_request()) ->
    {ok, update_certificate_response(), tuple()} |
    {error, any()} |
    {error, update_certificate_errors(), tuple()}.
update_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_certificate(Client, Input, []).

-spec update_certificate(aws_client:aws_client(), update_certificate_request(), proplists:proplist()) ->
    {ok, update_certificate_response(), tuple()} |
    {error, any()} |
    {error, update_certificate_errors(), tuple()}.
update_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCertificate">>, Input, Options).

%% @doc Updates some of the parameters for an existing connector.
%%
%% Provide the
%% `ConnectorId' for the connector that you want to update, along with
%% the new
%% values for the parameters to update.
-spec update_connector(aws_client:aws_client(), update_connector_request()) ->
    {ok, update_connector_response(), tuple()} |
    {error, any()} |
    {error, update_connector_errors(), tuple()}.
update_connector(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_connector(Client, Input, []).

-spec update_connector(aws_client:aws_client(), update_connector_request(), proplists:proplist()) ->
    {ok, update_connector_response(), tuple()} |
    {error, any()} |
    {error, update_connector_errors(), tuple()}.
update_connector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateConnector">>, Input, Options).

%% @doc Updates the description for the host key that's specified by the
%% `ServerId' and
%% `HostKeyId' parameters.
-spec update_host_key(aws_client:aws_client(), update_host_key_request()) ->
    {ok, update_host_key_response(), tuple()} |
    {error, any()} |
    {error, update_host_key_errors(), tuple()}.
update_host_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_host_key(Client, Input, []).

-spec update_host_key(aws_client:aws_client(), update_host_key_request(), proplists:proplist()) ->
    {ok, update_host_key_response(), tuple()} |
    {error, any()} |
    {error, update_host_key_errors(), tuple()}.
update_host_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateHostKey">>, Input, Options).

%% @doc Updates some of the parameters for an existing profile.
%%
%% Provide the `ProfileId'
%% for the profile that you want to update, along with the new values for the
%% parameters to
%% update.
-spec update_profile(aws_client:aws_client(), update_profile_request()) ->
    {ok, update_profile_response(), tuple()} |
    {error, any()} |
    {error, update_profile_errors(), tuple()}.
update_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_profile(Client, Input, []).

-spec update_profile(aws_client:aws_client(), update_profile_request(), proplists:proplist()) ->
    {ok, update_profile_response(), tuple()} |
    {error, any()} |
    {error, update_profile_errors(), tuple()}.
update_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProfile">>, Input, Options).

%% @doc Updates the file transfer protocol-enabled server's properties
%% after that server has
%% been created.
%%
%% The `UpdateServer' call returns the `ServerId' of the server you
%% updated.
-spec update_server(aws_client:aws_client(), update_server_request()) ->
    {ok, update_server_response(), tuple()} |
    {error, any()} |
    {error, update_server_errors(), tuple()}.
update_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_server(Client, Input, []).

-spec update_server(aws_client:aws_client(), update_server_request(), proplists:proplist()) ->
    {ok, update_server_response(), tuple()} |
    {error, any()} |
    {error, update_server_errors(), tuple()}.
update_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateServer">>, Input, Options).

%% @doc Assigns new properties to a user.
%%
%% Parameters you pass modify any or all of the following:
%% the home directory, role, and policy for the `UserName' and
%% `ServerId'
%% you specify.
%%
%% The response returns the `ServerId' and the `UserName' for the
%% updated user.
%%
%% In the console, you can select Restricted when you create or update a
%% user. This ensures that the user can't access anything outside of
%% their home directory. The
%% programmatic way to configure this behavior is to update the user. Set
%% their
%% `HomeDirectoryType' to `LOGICAL', and specify
%% `HomeDirectoryMappings' with `Entry' as root (`/') and
%% `Target' as their home directory.
%%
%% For example, if the user's home directory is `/test/admin-user',
%% the following
%% command updates the user so that their configuration in the console shows
%% the
%% Restricted flag as selected.
%%
%% ` aws transfer update-user --server-id &lt;server-id&gt; --user-name
%% admin-user --home-directory-type LOGICAL --home-directory-mappings
%% &quot;[{\&quot;Entry\&quot;:\&quot;/\&quot;,
%% \&quot;Target\&quot;:\&quot;/test/admin-user\&quot;}]&quot;'
-spec update_user(aws_client:aws_client(), update_user_request()) ->
    {ok, update_user_response(), tuple()} |
    {error, any()} |
    {error, update_user_errors(), tuple()}.
update_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_user(Client, Input, []).

-spec update_user(aws_client:aws_client(), update_user_request(), proplists:proplist()) ->
    {ok, update_user_response(), tuple()} |
    {error, any()} |
    {error, update_user_errors(), tuple()}.
update_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateUser">>, Input, Options).

%% @doc Assigns new properties to a web app.
%%
%% You can modify the access point, identity provider details, and the web
%% app units.
-spec update_web_app(aws_client:aws_client(), update_web_app_request()) ->
    {ok, update_web_app_response(), tuple()} |
    {error, any()} |
    {error, update_web_app_errors(), tuple()}.
update_web_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_web_app(Client, Input, []).

-spec update_web_app(aws_client:aws_client(), update_web_app_request(), proplists:proplist()) ->
    {ok, update_web_app_response(), tuple()} |
    {error, any()} |
    {error, update_web_app_errors(), tuple()}.
update_web_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateWebApp">>, Input, Options).

%% @doc Assigns new customization properties to a web app.
%%
%% You can modify the icon file, logo file, and title.
-spec update_web_app_customization(aws_client:aws_client(), update_web_app_customization_request()) ->
    {ok, update_web_app_customization_response(), tuple()} |
    {error, any()} |
    {error, update_web_app_customization_errors(), tuple()}.
update_web_app_customization(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_web_app_customization(Client, Input, []).

-spec update_web_app_customization(aws_client:aws_client(), update_web_app_customization_request(), proplists:proplist()) ->
    {ok, update_web_app_customization_response(), tuple()} |
    {error, any()} |
    {error, update_web_app_customization_errors(), tuple()}.
update_web_app_customization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateWebAppCustomization">>, Input, Options).

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
    Client1 = Client#{service => <<"transfer">>},
    Host = build_host(<<"transfer">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"TransferService.", Action/binary>>}
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
