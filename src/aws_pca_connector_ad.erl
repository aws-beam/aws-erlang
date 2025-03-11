%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Private CA Connector for Active Directory creates
%% a connector between Amazon Web Services Private CA and Active Directory
%% (AD) that enables you to
%% provision security certificates for AD signed by a private CA that you
%% own.
%%
%% For more
%% information, see Amazon Web Services Private CA Connector for Active
%% Directory:
%% https://docs.aws.amazon.com/privateca/latest/userguide/ad-connector.html.
-module(aws_pca_connector_ad).

-export([create_connector/2,
         create_connector/3,
         create_directory_registration/2,
         create_directory_registration/3,
         create_service_principal_name/4,
         create_service_principal_name/5,
         create_template/2,
         create_template/3,
         create_template_group_access_control_entry/3,
         create_template_group_access_control_entry/4,
         delete_connector/3,
         delete_connector/4,
         delete_directory_registration/3,
         delete_directory_registration/4,
         delete_service_principal_name/4,
         delete_service_principal_name/5,
         delete_template/3,
         delete_template/4,
         delete_template_group_access_control_entry/4,
         delete_template_group_access_control_entry/5,
         get_connector/2,
         get_connector/4,
         get_connector/5,
         get_directory_registration/2,
         get_directory_registration/4,
         get_directory_registration/5,
         get_service_principal_name/3,
         get_service_principal_name/5,
         get_service_principal_name/6,
         get_template/2,
         get_template/4,
         get_template/5,
         get_template_group_access_control_entry/3,
         get_template_group_access_control_entry/5,
         get_template_group_access_control_entry/6,
         list_connectors/1,
         list_connectors/3,
         list_connectors/4,
         list_directory_registrations/1,
         list_directory_registrations/3,
         list_directory_registrations/4,
         list_service_principal_names/2,
         list_service_principal_names/4,
         list_service_principal_names/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_template_group_access_control_entries/2,
         list_template_group_access_control_entries/4,
         list_template_group_access_control_entries/5,
         list_templates/2,
         list_templates/4,
         list_templates/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_template/3,
         update_template/4,
         update_template_group_access_control_entry/4,
         update_template_group_access_control_entry/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% connector() :: #{
%%   <<"Arn">> => string(),
%%   <<"CertificateAuthorityArn">> => string(),
%%   <<"CertificateEnrollmentPolicyServerEndpoint">> => [string()],
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"DirectoryId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => list(any()),
%%   <<"UpdatedAt">> => [non_neg_integer()],
%%   <<"VpcInformation">> => vpc_information()
%% }
-type connector() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% private_key_attributes_v4() :: #{
%%   <<"Algorithm">> => list(any()),
%%   <<"CryptoProviders">> => list([string()]()),
%%   <<"KeySpec">> => list(any()),
%%   <<"KeyUsageProperty">> => list(),
%%   <<"MinimalKeyLength">> => [integer()]
%% }
-type private_key_attributes_v4() :: #{binary() => any()}.


%% Example:
%% update_template_group_access_control_entry_request() :: #{
%%   <<"AccessRights">> => access_rights(),
%%   <<"GroupDisplayName">> => string()
%% }
-type update_template_group_access_control_entry_request() :: #{binary() => any()}.


%% Example:
%% list_connectors_response() :: #{
%%   <<"Connectors">> => list(connector_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_connectors_response() :: #{binary() => any()}.


%% Example:
%% create_directory_registration_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DirectoryId">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_directory_registration_request() :: #{binary() => any()}.


%% Example:
%% list_templates_request() :: #{
%%   <<"ConnectorArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_templates_request() :: #{binary() => any()}.

%% Example:
%% delete_template_group_access_control_entry_request() :: #{}
-type delete_template_group_access_control_entry_request() :: #{}.


%% Example:
%% enrollment_flags_v3() :: #{
%%   <<"EnableKeyReuseOnNtTokenKeysetStorageFull">> => [boolean()],
%%   <<"IncludeSymmetricAlgorithms">> => [boolean()],
%%   <<"NoSecurityExtension">> => [boolean()],
%%   <<"RemoveInvalidCertificateFromPersonalStore">> => [boolean()],
%%   <<"UserInteractionRequired">> => [boolean()]
%% }
-type enrollment_flags_v3() :: #{binary() => any()}.


%% Example:
%% template_v3() :: #{
%%   <<"CertificateValidity">> => certificate_validity(),
%%   <<"EnrollmentFlags">> => enrollment_flags_v3(),
%%   <<"Extensions">> => extensions_v3(),
%%   <<"GeneralFlags">> => general_flags_v3(),
%%   <<"HashAlgorithm">> => list(any()),
%%   <<"PrivateKeyAttributes">> => private_key_attributes_v3(),
%%   <<"PrivateKeyFlags">> => private_key_flags_v3(),
%%   <<"SubjectNameFlags">> => subject_name_flags_v3(),
%%   <<"SupersededTemplates">> => list(string()())
%% }
-type template_v3() :: #{binary() => any()}.


%% Example:
%% general_flags_v2() :: #{
%%   <<"AutoEnrollment">> => [boolean()],
%%   <<"MachineType">> => [boolean()]
%% }
-type general_flags_v2() :: #{binary() => any()}.


%% Example:
%% access_control_entry_summary() :: #{
%%   <<"AccessRights">> => access_rights(),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"GroupDisplayName">> => string(),
%%   <<"GroupSecurityIdentifier">> => string(),
%%   <<"TemplateArn">> => string(),
%%   <<"UpdatedAt">> => [non_neg_integer()]
%% }
-type access_control_entry_summary() :: #{binary() => any()}.


%% Example:
%% enrollment_flags_v4() :: #{
%%   <<"EnableKeyReuseOnNtTokenKeysetStorageFull">> => [boolean()],
%%   <<"IncludeSymmetricAlgorithms">> => [boolean()],
%%   <<"NoSecurityExtension">> => [boolean()],
%%   <<"RemoveInvalidCertificateFromPersonalStore">> => [boolean()],
%%   <<"UserInteractionRequired">> => [boolean()]
%% }
-type enrollment_flags_v4() :: #{binary() => any()}.

%% Example:
%% get_directory_registration_request() :: #{}
-type get_directory_registration_request() :: #{}.


%% Example:
%% template_revision() :: #{
%%   <<"MajorRevision">> => [integer()],
%%   <<"MinorRevision">> => [integer()]
%% }
-type template_revision() :: #{binary() => any()}.


%% Example:
%% private_key_flags_v2() :: #{
%%   <<"ClientVersion">> => list(any()),
%%   <<"ExportableKey">> => [boolean()],
%%   <<"StrongKeyProtectionRequired">> => [boolean()]
%% }
-type private_key_flags_v2() :: #{binary() => any()}.


%% Example:
%% create_template_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"ConnectorArn">> := string(),
%%   <<"Definition">> := list(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_template_request() :: #{binary() => any()}.


%% Example:
%% get_template_response() :: #{
%%   <<"Template">> => template()
%% }
-type get_template_response() :: #{binary() => any()}.


%% Example:
%% directory_registration_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"DirectoryId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => list(any()),
%%   <<"UpdatedAt">> => [non_neg_integer()]
%% }
-type directory_registration_summary() :: #{binary() => any()}.


%% Example:
%% create_template_group_access_control_entry_request() :: #{
%%   <<"AccessRights">> := access_rights(),
%%   <<"ClientToken">> => string(),
%%   <<"GroupDisplayName">> := string(),
%%   <<"GroupSecurityIdentifier">> := string()
%% }
-type create_template_group_access_control_entry_request() :: #{binary() => any()}.


%% Example:
%% list_connectors_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_connectors_request() :: #{binary() => any()}.


%% Example:
%% update_template_request() :: #{
%%   <<"Definition">> => list(),
%%   <<"ReenrollAllCertificateHolders">> => [boolean()]
%% }
-type update_template_request() :: #{binary() => any()}.


%% Example:
%% key_usage_flags() :: #{
%%   <<"DataEncipherment">> => [boolean()],
%%   <<"DigitalSignature">> => [boolean()],
%%   <<"KeyAgreement">> => [boolean()],
%%   <<"KeyEncipherment">> => [boolean()],
%%   <<"NonRepudiation">> => [boolean()]
%% }
-type key_usage_flags() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list([string()]())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% subject_name_flags_v4() :: #{
%%   <<"RequireCommonName">> => [boolean()],
%%   <<"RequireDirectoryPath">> => [boolean()],
%%   <<"RequireDnsAsCn">> => [boolean()],
%%   <<"RequireEmail">> => [boolean()],
%%   <<"SanRequireDirectoryGuid">> => [boolean()],
%%   <<"SanRequireDns">> => [boolean()],
%%   <<"SanRequireDomainDns">> => [boolean()],
%%   <<"SanRequireEmail">> => [boolean()],
%%   <<"SanRequireSpn">> => [boolean()],
%%   <<"SanRequireUpn">> => [boolean()]
%% }
-type subject_name_flags_v4() :: #{binary() => any()}.


%% Example:
%% list_service_principal_names_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ServicePrincipalNames">> => list(service_principal_name_summary()())
%% }
-type list_service_principal_names_response() :: #{binary() => any()}.


%% Example:
%% enrollment_flags_v2() :: #{
%%   <<"EnableKeyReuseOnNtTokenKeysetStorageFull">> => [boolean()],
%%   <<"IncludeSymmetricAlgorithms">> => [boolean()],
%%   <<"NoSecurityExtension">> => [boolean()],
%%   <<"RemoveInvalidCertificateFromPersonalStore">> => [boolean()],
%%   <<"UserInteractionRequired">> => [boolean()]
%% }
-type enrollment_flags_v2() :: #{binary() => any()}.


%% Example:
%% extensions_v3() :: #{
%%   <<"ApplicationPolicies">> => application_policies(),
%%   <<"KeyUsage">> => key_usage()
%% }
-type extensions_v3() :: #{binary() => any()}.

%% Example:
%% delete_template_request() :: #{}
-type delete_template_request() :: #{}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"ResourceId">> => [string()],
%%   <<"ResourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"ResourceId">> => [string()],
%%   <<"ResourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% service_principal_name_summary() :: #{
%%   <<"ConnectorArn">> => string(),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"DirectoryRegistrationArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => list(any()),
%%   <<"UpdatedAt">> => [non_neg_integer()]
%% }
-type service_principal_name_summary() :: #{binary() => any()}.


%% Example:
%% extensions_v2() :: #{
%%   <<"ApplicationPolicies">> => application_policies(),
%%   <<"KeyUsage">> => key_usage()
%% }
-type extensions_v2() :: #{binary() => any()}.


%% Example:
%% get_template_group_access_control_entry_response() :: #{
%%   <<"AccessControlEntry">> => access_control_entry()
%% }
-type get_template_group_access_control_entry_response() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"QuotaCode">> => [string()],
%%   <<"ResourceId">> => [string()],
%%   <<"ResourceType">> => [string()],
%%   <<"ServiceCode">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% key_usage_property_flags() :: #{
%%   <<"Decrypt">> => [boolean()],
%%   <<"KeyAgreement">> => [boolean()],
%%   <<"Sign">> => [boolean()]
%% }
-type key_usage_property_flags() :: #{binary() => any()}.


%% Example:
%% template_v4() :: #{
%%   <<"CertificateValidity">> => certificate_validity(),
%%   <<"EnrollmentFlags">> => enrollment_flags_v4(),
%%   <<"Extensions">> => extensions_v4(),
%%   <<"GeneralFlags">> => general_flags_v4(),
%%   <<"HashAlgorithm">> => list(any()),
%%   <<"PrivateKeyAttributes">> => private_key_attributes_v4(),
%%   <<"PrivateKeyFlags">> => private_key_flags_v4(),
%%   <<"SubjectNameFlags">> => subject_name_flags_v4(),
%%   <<"SupersededTemplates">> => list(string()())
%% }
-type template_v4() :: #{binary() => any()}.


%% Example:
%% template_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"ConnectorArn">> => string(),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"Definition">> => list(),
%%   <<"Name">> => string(),
%%   <<"ObjectIdentifier">> => string(),
%%   <<"PolicySchema">> => [integer()],
%%   <<"Revision">> => template_revision(),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedAt">> => [non_neg_integer()]
%% }
-type template_summary() :: #{binary() => any()}.


%% Example:
%% private_key_attributes_v2() :: #{
%%   <<"CryptoProviders">> => list([string()]()),
%%   <<"KeySpec">> => list(any()),
%%   <<"MinimalKeyLength">> => [integer()]
%% }
-type private_key_attributes_v2() :: #{binary() => any()}.


%% Example:
%% directory_registration() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"DirectoryId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => list(any()),
%%   <<"UpdatedAt">> => [non_neg_integer()]
%% }
-type directory_registration() :: #{binary() => any()}.

%% Example:
%% delete_directory_registration_request() :: #{}
-type delete_directory_registration_request() :: #{}.


%% Example:
%% service_principal_name() :: #{
%%   <<"ConnectorArn">> => string(),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"DirectoryRegistrationArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => list(any()),
%%   <<"UpdatedAt">> => [non_neg_integer()]
%% }
-type service_principal_name() :: #{binary() => any()}.

%% Example:
%% get_service_principal_name_request() :: #{}
-type get_service_principal_name_request() :: #{}.


%% Example:
%% get_service_principal_name_response() :: #{
%%   <<"ServicePrincipalName">> => service_principal_name()
%% }
-type get_service_principal_name_response() :: #{binary() => any()}.


%% Example:
%% access_control_entry() :: #{
%%   <<"AccessRights">> => access_rights(),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"GroupDisplayName">> => string(),
%%   <<"GroupSecurityIdentifier">> => string(),
%%   <<"TemplateArn">> => string(),
%%   <<"UpdatedAt">> => [non_neg_integer()]
%% }
-type access_control_entry() :: #{binary() => any()}.


%% Example:
%% create_connector_response() :: #{
%%   <<"ConnectorArn">> => string()
%% }
-type create_connector_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% list_directory_registrations_response() :: #{
%%   <<"DirectoryRegistrations">> => list(directory_registration_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_directory_registrations_response() :: #{binary() => any()}.


%% Example:
%% create_directory_registration_response() :: #{
%%   <<"DirectoryRegistrationArn">> => string()
%% }
-type create_directory_registration_response() :: #{binary() => any()}.

%% Example:
%% get_connector_request() :: #{}
-type get_connector_request() :: #{}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% get_directory_registration_response() :: #{
%%   <<"DirectoryRegistration">> => directory_registration()
%% }
-type get_directory_registration_response() :: #{binary() => any()}.


%% Example:
%% create_service_principal_name_request() :: #{
%%   <<"ClientToken">> => string()
%% }
-type create_service_principal_name_request() :: #{binary() => any()}.


%% Example:
%% private_key_attributes_v3() :: #{
%%   <<"Algorithm">> => list(any()),
%%   <<"CryptoProviders">> => list([string()]()),
%%   <<"KeySpec">> => list(any()),
%%   <<"KeyUsageProperty">> => list(),
%%   <<"MinimalKeyLength">> => [integer()]
%% }
-type private_key_attributes_v3() :: #{binary() => any()}.

%% Example:
%% delete_service_principal_name_request() :: #{}
-type delete_service_principal_name_request() :: #{}.

%% Example:
%% get_template_group_access_control_entry_request() :: #{}
-type get_template_group_access_control_entry_request() :: #{}.


%% Example:
%% list_template_group_access_control_entries_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_template_group_access_control_entries_request() :: #{binary() => any()}.


%% Example:
%% subject_name_flags_v3() :: #{
%%   <<"RequireCommonName">> => [boolean()],
%%   <<"RequireDirectoryPath">> => [boolean()],
%%   <<"RequireDnsAsCn">> => [boolean()],
%%   <<"RequireEmail">> => [boolean()],
%%   <<"SanRequireDirectoryGuid">> => [boolean()],
%%   <<"SanRequireDns">> => [boolean()],
%%   <<"SanRequireDomainDns">> => [boolean()],
%%   <<"SanRequireEmail">> => [boolean()],
%%   <<"SanRequireSpn">> => [boolean()],
%%   <<"SanRequireUpn">> => [boolean()]
%% }
-type subject_name_flags_v3() :: #{binary() => any()}.


%% Example:
%% validity_period() :: #{
%%   <<"Period">> => [float()],
%%   <<"PeriodType">> => list(any())
%% }
-type validity_period() :: #{binary() => any()}.


%% Example:
%% list_directory_registrations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_directory_registrations_request() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% application_policies() :: #{
%%   <<"Critical">> => [boolean()],
%%   <<"Policies">> => list(list()())
%% }
-type application_policies() :: #{binary() => any()}.


%% Example:
%% create_connector_request() :: #{
%%   <<"CertificateAuthorityArn">> := string(),
%%   <<"ClientToken">> => string(),
%%   <<"DirectoryId">> := string(),
%%   <<"Tags">> => map(),
%%   <<"VpcInformation">> := vpc_information()
%% }
-type create_connector_request() :: #{binary() => any()}.


%% Example:
%% list_templates_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Templates">> => list(template_summary()())
%% }
-type list_templates_response() :: #{binary() => any()}.


%% Example:
%% connector_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CertificateAuthorityArn">> => string(),
%%   <<"CertificateEnrollmentPolicyServerEndpoint">> => [string()],
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"DirectoryId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => list(any()),
%%   <<"UpdatedAt">> => [non_neg_integer()],
%%   <<"VpcInformation">> => vpc_information()
%% }
-type connector_summary() :: #{binary() => any()}.

%% Example:
%% get_template_request() :: #{}
-type get_template_request() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"Reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% list_template_group_access_control_entries_response() :: #{
%%   <<"AccessControlEntries">> => list(access_control_entry_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_template_group_access_control_entries_response() :: #{binary() => any()}.


%% Example:
%% access_rights() :: #{
%%   <<"AutoEnroll">> => list(any()),
%%   <<"Enroll">> => list(any())
%% }
-type access_rights() :: #{binary() => any()}.


%% Example:
%% extensions_v4() :: #{
%%   <<"ApplicationPolicies">> => application_policies(),
%%   <<"KeyUsage">> => key_usage()
%% }
-type extensions_v4() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"QuotaCode">> => [string()],
%%   <<"ServiceCode">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% general_flags_v4() :: #{
%%   <<"AutoEnrollment">> => [boolean()],
%%   <<"MachineType">> => [boolean()]
%% }
-type general_flags_v4() :: #{binary() => any()}.


%% Example:
%% get_connector_response() :: #{
%%   <<"Connector">> => connector()
%% }
-type get_connector_response() :: #{binary() => any()}.


%% Example:
%% template_v2() :: #{
%%   <<"CertificateValidity">> => certificate_validity(),
%%   <<"EnrollmentFlags">> => enrollment_flags_v2(),
%%   <<"Extensions">> => extensions_v2(),
%%   <<"GeneralFlags">> => general_flags_v2(),
%%   <<"PrivateKeyAttributes">> => private_key_attributes_v2(),
%%   <<"PrivateKeyFlags">> => private_key_flags_v2(),
%%   <<"SubjectNameFlags">> => subject_name_flags_v2(),
%%   <<"SupersededTemplates">> => list(string()())
%% }
-type template_v2() :: #{binary() => any()}.


%% Example:
%% private_key_flags_v4() :: #{
%%   <<"ClientVersion">> => list(any()),
%%   <<"ExportableKey">> => [boolean()],
%%   <<"RequireAlternateSignatureAlgorithm">> => [boolean()],
%%   <<"RequireSameKeyRenewal">> => [boolean()],
%%   <<"StrongKeyProtectionRequired">> => [boolean()],
%%   <<"UseLegacyProvider">> => [boolean()]
%% }
-type private_key_flags_v4() :: #{binary() => any()}.


%% Example:
%% list_service_principal_names_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_service_principal_names_request() :: #{binary() => any()}.


%% Example:
%% subject_name_flags_v2() :: #{
%%   <<"RequireCommonName">> => [boolean()],
%%   <<"RequireDirectoryPath">> => [boolean()],
%%   <<"RequireDnsAsCn">> => [boolean()],
%%   <<"RequireEmail">> => [boolean()],
%%   <<"SanRequireDirectoryGuid">> => [boolean()],
%%   <<"SanRequireDns">> => [boolean()],
%%   <<"SanRequireDomainDns">> => [boolean()],
%%   <<"SanRequireEmail">> => [boolean()],
%%   <<"SanRequireSpn">> => [boolean()],
%%   <<"SanRequireUpn">> => [boolean()]
%% }
-type subject_name_flags_v2() :: #{binary() => any()}.

%% Example:
%% delete_connector_request() :: #{}
-type delete_connector_request() :: #{}.


%% Example:
%% create_template_response() :: #{
%%   <<"TemplateArn">> => string()
%% }
-type create_template_response() :: #{binary() => any()}.


%% Example:
%% template() :: #{
%%   <<"Arn">> => string(),
%%   <<"ConnectorArn">> => string(),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"Definition">> => list(),
%%   <<"Name">> => string(),
%%   <<"ObjectIdentifier">> => string(),
%%   <<"PolicySchema">> => [integer()],
%%   <<"Revision">> => template_revision(),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedAt">> => [non_neg_integer()]
%% }
-type template() :: #{binary() => any()}.


%% Example:
%% vpc_information() :: #{
%%   <<"IpAddressType">> => list(any()),
%%   <<"SecurityGroupIds">> => list(string()())
%% }
-type vpc_information() :: #{binary() => any()}.


%% Example:
%% private_key_flags_v3() :: #{
%%   <<"ClientVersion">> => list(any()),
%%   <<"ExportableKey">> => [boolean()],
%%   <<"RequireAlternateSignatureAlgorithm">> => [boolean()],
%%   <<"StrongKeyProtectionRequired">> => [boolean()]
%% }
-type private_key_flags_v3() :: #{binary() => any()}.


%% Example:
%% certificate_validity() :: #{
%%   <<"RenewalPeriod">> => validity_period(),
%%   <<"ValidityPeriod">> => validity_period()
%% }
-type certificate_validity() :: #{binary() => any()}.


%% Example:
%% general_flags_v3() :: #{
%%   <<"AutoEnrollment">> => [boolean()],
%%   <<"MachineType">> => [boolean()]
%% }
-type general_flags_v3() :: #{binary() => any()}.


%% Example:
%% key_usage() :: #{
%%   <<"Critical">> => [boolean()],
%%   <<"UsageFlags">> => key_usage_flags()
%% }
-type key_usage() :: #{binary() => any()}.

-type create_connector_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_directory_registration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_service_principal_name_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_template_group_access_control_entry_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_connector_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_directory_registration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_service_principal_name_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_template_group_access_control_entry_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_connector_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_directory_registration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_service_principal_name_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_template_group_access_control_entry_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_connectors_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_directory_registrations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_service_principal_names_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_template_group_access_control_entries_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_templates_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_template_group_access_control_entry_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a connector between Amazon Web Services Private CA and an
%% Active Directory.
%%
%% You must specify the private CA,
%% directory ID, and security groups.
-spec create_connector(aws_client:aws_client(), create_connector_request()) ->
    {ok, create_connector_response(), tuple()} |
    {error, any()} |
    {error, create_connector_errors(), tuple()}.
create_connector(Client, Input) ->
    create_connector(Client, Input, []).

-spec create_connector(aws_client:aws_client(), create_connector_request(), proplists:proplist()) ->
    {ok, create_connector_response(), tuple()} |
    {error, any()} |
    {error, create_connector_errors(), tuple()}.
create_connector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/connectors"],
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

%% @doc Creates a directory registration that authorizes communication
%% between Amazon Web Services Private CA and an
%% Active Directory
-spec create_directory_registration(aws_client:aws_client(), create_directory_registration_request()) ->
    {ok, create_directory_registration_response(), tuple()} |
    {error, any()} |
    {error, create_directory_registration_errors(), tuple()}.
create_directory_registration(Client, Input) ->
    create_directory_registration(Client, Input, []).

-spec create_directory_registration(aws_client:aws_client(), create_directory_registration_request(), proplists:proplist()) ->
    {ok, create_directory_registration_response(), tuple()} |
    {error, any()} |
    {error, create_directory_registration_errors(), tuple()}.
create_directory_registration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/directoryRegistrations"],
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

%% @doc Creates a service principal name (SPN) for the service account in
%% Active Directory.
%%
%% Kerberos
%% authentication uses SPNs to associate a service instance with a service
%% sign-in
%% account.
-spec create_service_principal_name(aws_client:aws_client(), binary() | list(), binary() | list(), create_service_principal_name_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_service_principal_name_errors(), tuple()}.
create_service_principal_name(Client, ConnectorArn, DirectoryRegistrationArn, Input) ->
    create_service_principal_name(Client, ConnectorArn, DirectoryRegistrationArn, Input, []).

-spec create_service_principal_name(aws_client:aws_client(), binary() | list(), binary() | list(), create_service_principal_name_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_service_principal_name_errors(), tuple()}.
create_service_principal_name(Client, ConnectorArn, DirectoryRegistrationArn, Input0, Options0) ->
    Method = post,
    Path = ["/directoryRegistrations/", aws_util:encode_uri(DirectoryRegistrationArn), "/servicePrincipalNames/", aws_util:encode_uri(ConnectorArn), ""],
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

%% @doc Creates an Active Directory compatible certificate template.
%%
%% The connectors issues certificates
%% using these templates based on the requester’s Active Directory group
%% membership.
-spec create_template(aws_client:aws_client(), create_template_request()) ->
    {ok, create_template_response(), tuple()} |
    {error, any()} |
    {error, create_template_errors(), tuple()}.
create_template(Client, Input) ->
    create_template(Client, Input, []).

-spec create_template(aws_client:aws_client(), create_template_request(), proplists:proplist()) ->
    {ok, create_template_response(), tuple()} |
    {error, any()} |
    {error, create_template_errors(), tuple()}.
create_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/templates"],
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

%% @doc Create a group access control entry.
%%
%% Allow or deny Active Directory groups from enrolling and/or
%% autoenrolling with the template based on the group security identifiers
%% (SIDs).
-spec create_template_group_access_control_entry(aws_client:aws_client(), binary() | list(), create_template_group_access_control_entry_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_template_group_access_control_entry_errors(), tuple()}.
create_template_group_access_control_entry(Client, TemplateArn, Input) ->
    create_template_group_access_control_entry(Client, TemplateArn, Input, []).

-spec create_template_group_access_control_entry(aws_client:aws_client(), binary() | list(), create_template_group_access_control_entry_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_template_group_access_control_entry_errors(), tuple()}.
create_template_group_access_control_entry(Client, TemplateArn, Input0, Options0) ->
    Method = post,
    Path = ["/templates/", aws_util:encode_uri(TemplateArn), "/accessControlEntries"],
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

%% @doc Deletes a connector for Active Directory.
%%
%% You must provide the Amazon Resource Name (ARN) of the
%% connector that you want to delete. You can find the ARN by calling the
%% [https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_ListConnectors]
%% action. Deleting a connector does not deregister your directory with
%% Amazon Web Services Private CA. You can
%% deregister your directory by calling the
%% [https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_DeleteDirectoryRegistration]
%% action.
-spec delete_connector(aws_client:aws_client(), binary() | list(), delete_connector_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_connector_errors(), tuple()}.
delete_connector(Client, ConnectorArn, Input) ->
    delete_connector(Client, ConnectorArn, Input, []).

-spec delete_connector(aws_client:aws_client(), binary() | list(), delete_connector_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_connector_errors(), tuple()}.
delete_connector(Client, ConnectorArn, Input0, Options0) ->
    Method = delete,
    Path = ["/connectors/", aws_util:encode_uri(ConnectorArn), ""],
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

%% @doc Deletes a directory registration.
%%
%% Deleting a directory registration deauthorizes
%% Amazon Web Services Private CA with the directory.
-spec delete_directory_registration(aws_client:aws_client(), binary() | list(), delete_directory_registration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_directory_registration_errors(), tuple()}.
delete_directory_registration(Client, DirectoryRegistrationArn, Input) ->
    delete_directory_registration(Client, DirectoryRegistrationArn, Input, []).

-spec delete_directory_registration(aws_client:aws_client(), binary() | list(), delete_directory_registration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_directory_registration_errors(), tuple()}.
delete_directory_registration(Client, DirectoryRegistrationArn, Input0, Options0) ->
    Method = delete,
    Path = ["/directoryRegistrations/", aws_util:encode_uri(DirectoryRegistrationArn), ""],
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

%% @doc Deletes the service principal name (SPN) used by a connector to
%% authenticate with your
%% Active Directory.
-spec delete_service_principal_name(aws_client:aws_client(), binary() | list(), binary() | list(), delete_service_principal_name_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_service_principal_name_errors(), tuple()}.
delete_service_principal_name(Client, ConnectorArn, DirectoryRegistrationArn, Input) ->
    delete_service_principal_name(Client, ConnectorArn, DirectoryRegistrationArn, Input, []).

-spec delete_service_principal_name(aws_client:aws_client(), binary() | list(), binary() | list(), delete_service_principal_name_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_service_principal_name_errors(), tuple()}.
delete_service_principal_name(Client, ConnectorArn, DirectoryRegistrationArn, Input0, Options0) ->
    Method = delete,
    Path = ["/directoryRegistrations/", aws_util:encode_uri(DirectoryRegistrationArn), "/servicePrincipalNames/", aws_util:encode_uri(ConnectorArn), ""],
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

%% @doc Deletes a template.
%%
%% Certificates issued using the template are still valid until they
%% are revoked or expired.
-spec delete_template(aws_client:aws_client(), binary() | list(), delete_template_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_template_errors(), tuple()}.
delete_template(Client, TemplateArn, Input) ->
    delete_template(Client, TemplateArn, Input, []).

-spec delete_template(aws_client:aws_client(), binary() | list(), delete_template_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_template_errors(), tuple()}.
delete_template(Client, TemplateArn, Input0, Options0) ->
    Method = delete,
    Path = ["/templates/", aws_util:encode_uri(TemplateArn), ""],
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

%% @doc Deletes a group access control entry.
-spec delete_template_group_access_control_entry(aws_client:aws_client(), binary() | list(), binary() | list(), delete_template_group_access_control_entry_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_template_group_access_control_entry_errors(), tuple()}.
delete_template_group_access_control_entry(Client, GroupSecurityIdentifier, TemplateArn, Input) ->
    delete_template_group_access_control_entry(Client, GroupSecurityIdentifier, TemplateArn, Input, []).

-spec delete_template_group_access_control_entry(aws_client:aws_client(), binary() | list(), binary() | list(), delete_template_group_access_control_entry_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_template_group_access_control_entry_errors(), tuple()}.
delete_template_group_access_control_entry(Client, GroupSecurityIdentifier, TemplateArn, Input0, Options0) ->
    Method = delete,
    Path = ["/templates/", aws_util:encode_uri(TemplateArn), "/accessControlEntries/", aws_util:encode_uri(GroupSecurityIdentifier), ""],
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

%% @doc Lists information about your connector.
%%
%% You specify the connector on input by its ARN
%% (Amazon Resource Name).
-spec get_connector(aws_client:aws_client(), binary() | list()) ->
    {ok, get_connector_response(), tuple()} |
    {error, any()} |
    {error, get_connector_errors(), tuple()}.
get_connector(Client, ConnectorArn)
  when is_map(Client) ->
    get_connector(Client, ConnectorArn, #{}, #{}).

-spec get_connector(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_connector_response(), tuple()} |
    {error, any()} |
    {error, get_connector_errors(), tuple()}.
get_connector(Client, ConnectorArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_connector(Client, ConnectorArn, QueryMap, HeadersMap, []).

-spec get_connector(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_connector_response(), tuple()} |
    {error, any()} |
    {error, get_connector_errors(), tuple()}.
get_connector(Client, ConnectorArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/connectors/", aws_util:encode_uri(ConnectorArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc A structure that contains information about your directory
%% registration.
-spec get_directory_registration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_directory_registration_response(), tuple()} |
    {error, any()} |
    {error, get_directory_registration_errors(), tuple()}.
get_directory_registration(Client, DirectoryRegistrationArn)
  when is_map(Client) ->
    get_directory_registration(Client, DirectoryRegistrationArn, #{}, #{}).

-spec get_directory_registration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_directory_registration_response(), tuple()} |
    {error, any()} |
    {error, get_directory_registration_errors(), tuple()}.
get_directory_registration(Client, DirectoryRegistrationArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_directory_registration(Client, DirectoryRegistrationArn, QueryMap, HeadersMap, []).

-spec get_directory_registration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_directory_registration_response(), tuple()} |
    {error, any()} |
    {error, get_directory_registration_errors(), tuple()}.
get_directory_registration(Client, DirectoryRegistrationArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/directoryRegistrations/", aws_util:encode_uri(DirectoryRegistrationArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the service principal name that the connector uses to
%% authenticate with
%% Active Directory.
-spec get_service_principal_name(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_service_principal_name_response(), tuple()} |
    {error, any()} |
    {error, get_service_principal_name_errors(), tuple()}.
get_service_principal_name(Client, ConnectorArn, DirectoryRegistrationArn)
  when is_map(Client) ->
    get_service_principal_name(Client, ConnectorArn, DirectoryRegistrationArn, #{}, #{}).

-spec get_service_principal_name(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_service_principal_name_response(), tuple()} |
    {error, any()} |
    {error, get_service_principal_name_errors(), tuple()}.
get_service_principal_name(Client, ConnectorArn, DirectoryRegistrationArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_service_principal_name(Client, ConnectorArn, DirectoryRegistrationArn, QueryMap, HeadersMap, []).

-spec get_service_principal_name(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_service_principal_name_response(), tuple()} |
    {error, any()} |
    {error, get_service_principal_name_errors(), tuple()}.
get_service_principal_name(Client, ConnectorArn, DirectoryRegistrationArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/directoryRegistrations/", aws_util:encode_uri(DirectoryRegistrationArn), "/servicePrincipalNames/", aws_util:encode_uri(ConnectorArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a certificate template that the connector uses to issue
%% certificates from a
%% private CA.
-spec get_template(aws_client:aws_client(), binary() | list()) ->
    {ok, get_template_response(), tuple()} |
    {error, any()} |
    {error, get_template_errors(), tuple()}.
get_template(Client, TemplateArn)
  when is_map(Client) ->
    get_template(Client, TemplateArn, #{}, #{}).

-spec get_template(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_template_response(), tuple()} |
    {error, any()} |
    {error, get_template_errors(), tuple()}.
get_template(Client, TemplateArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_template(Client, TemplateArn, QueryMap, HeadersMap, []).

-spec get_template(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_template_response(), tuple()} |
    {error, any()} |
    {error, get_template_errors(), tuple()}.
get_template(Client, TemplateArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/templates/", aws_util:encode_uri(TemplateArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the group access control entries for a template.
-spec get_template_group_access_control_entry(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_template_group_access_control_entry_response(), tuple()} |
    {error, any()} |
    {error, get_template_group_access_control_entry_errors(), tuple()}.
get_template_group_access_control_entry(Client, GroupSecurityIdentifier, TemplateArn)
  when is_map(Client) ->
    get_template_group_access_control_entry(Client, GroupSecurityIdentifier, TemplateArn, #{}, #{}).

-spec get_template_group_access_control_entry(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_template_group_access_control_entry_response(), tuple()} |
    {error, any()} |
    {error, get_template_group_access_control_entry_errors(), tuple()}.
get_template_group_access_control_entry(Client, GroupSecurityIdentifier, TemplateArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_template_group_access_control_entry(Client, GroupSecurityIdentifier, TemplateArn, QueryMap, HeadersMap, []).

-spec get_template_group_access_control_entry(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_template_group_access_control_entry_response(), tuple()} |
    {error, any()} |
    {error, get_template_group_access_control_entry_errors(), tuple()}.
get_template_group_access_control_entry(Client, GroupSecurityIdentifier, TemplateArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/templates/", aws_util:encode_uri(TemplateArn), "/accessControlEntries/", aws_util:encode_uri(GroupSecurityIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the connectors that you created by using the
%% [https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector]
%% action.
-spec list_connectors(aws_client:aws_client()) ->
    {ok, list_connectors_response(), tuple()} |
    {error, any()} |
    {error, list_connectors_errors(), tuple()}.
list_connectors(Client)
  when is_map(Client) ->
    list_connectors(Client, #{}, #{}).

-spec list_connectors(aws_client:aws_client(), map(), map()) ->
    {ok, list_connectors_response(), tuple()} |
    {error, any()} |
    {error, list_connectors_errors(), tuple()}.
list_connectors(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_connectors(Client, QueryMap, HeadersMap, []).

-spec list_connectors(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_connectors_response(), tuple()} |
    {error, any()} |
    {error, list_connectors_errors(), tuple()}.
list_connectors(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/connectors"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the directory registrations that you created by using the
%% [https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration]
%% action.
-spec list_directory_registrations(aws_client:aws_client()) ->
    {ok, list_directory_registrations_response(), tuple()} |
    {error, any()} |
    {error, list_directory_registrations_errors(), tuple()}.
list_directory_registrations(Client)
  when is_map(Client) ->
    list_directory_registrations(Client, #{}, #{}).

-spec list_directory_registrations(aws_client:aws_client(), map(), map()) ->
    {ok, list_directory_registrations_response(), tuple()} |
    {error, any()} |
    {error, list_directory_registrations_errors(), tuple()}.
list_directory_registrations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_directory_registrations(Client, QueryMap, HeadersMap, []).

-spec list_directory_registrations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_directory_registrations_response(), tuple()} |
    {error, any()} |
    {error, list_directory_registrations_errors(), tuple()}.
list_directory_registrations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/directoryRegistrations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the service principal names that the connector uses to
%% authenticate with
%% Active Directory.
-spec list_service_principal_names(aws_client:aws_client(), binary() | list()) ->
    {ok, list_service_principal_names_response(), tuple()} |
    {error, any()} |
    {error, list_service_principal_names_errors(), tuple()}.
list_service_principal_names(Client, DirectoryRegistrationArn)
  when is_map(Client) ->
    list_service_principal_names(Client, DirectoryRegistrationArn, #{}, #{}).

-spec list_service_principal_names(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_service_principal_names_response(), tuple()} |
    {error, any()} |
    {error, list_service_principal_names_errors(), tuple()}.
list_service_principal_names(Client, DirectoryRegistrationArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_service_principal_names(Client, DirectoryRegistrationArn, QueryMap, HeadersMap, []).

-spec list_service_principal_names(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_service_principal_names_response(), tuple()} |
    {error, any()} |
    {error, list_service_principal_names_errors(), tuple()}.
list_service_principal_names(Client, DirectoryRegistrationArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/directoryRegistrations/", aws_util:encode_uri(DirectoryRegistrationArn), "/servicePrincipalNames"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags, if any, that are associated with your resource.
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
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists group access control entries you created.
-spec list_template_group_access_control_entries(aws_client:aws_client(), binary() | list()) ->
    {ok, list_template_group_access_control_entries_response(), tuple()} |
    {error, any()} |
    {error, list_template_group_access_control_entries_errors(), tuple()}.
list_template_group_access_control_entries(Client, TemplateArn)
  when is_map(Client) ->
    list_template_group_access_control_entries(Client, TemplateArn, #{}, #{}).

-spec list_template_group_access_control_entries(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_template_group_access_control_entries_response(), tuple()} |
    {error, any()} |
    {error, list_template_group_access_control_entries_errors(), tuple()}.
list_template_group_access_control_entries(Client, TemplateArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_template_group_access_control_entries(Client, TemplateArn, QueryMap, HeadersMap, []).

-spec list_template_group_access_control_entries(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_template_group_access_control_entries_response(), tuple()} |
    {error, any()} |
    {error, list_template_group_access_control_entries_errors(), tuple()}.
list_template_group_access_control_entries(Client, TemplateArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/templates/", aws_util:encode_uri(TemplateArn), "/accessControlEntries"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the templates, if any, that are associated with a connector.
-spec list_templates(aws_client:aws_client(), binary() | list()) ->
    {ok, list_templates_response(), tuple()} |
    {error, any()} |
    {error, list_templates_errors(), tuple()}.
list_templates(Client, ConnectorArn)
  when is_map(Client) ->
    list_templates(Client, ConnectorArn, #{}, #{}).

-spec list_templates(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_templates_response(), tuple()} |
    {error, any()} |
    {error, list_templates_errors(), tuple()}.
list_templates(Client, ConnectorArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_templates(Client, ConnectorArn, QueryMap, HeadersMap, []).

-spec list_templates(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_templates_response(), tuple()} |
    {error, any()} |
    {error, list_templates_errors(), tuple()}.
list_templates(Client, ConnectorArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/templates"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"ConnectorArn">>, ConnectorArn},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Adds one or more tags to your resource.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes one or more tags from your resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Update template configuration to define the information included in
%% certificates.
-spec update_template(aws_client:aws_client(), binary() | list(), update_template_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_template_errors(), tuple()}.
update_template(Client, TemplateArn, Input) ->
    update_template(Client, TemplateArn, Input, []).

-spec update_template(aws_client:aws_client(), binary() | list(), update_template_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_template_errors(), tuple()}.
update_template(Client, TemplateArn, Input0, Options0) ->
    Method = patch,
    Path = ["/templates/", aws_util:encode_uri(TemplateArn), ""],
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

%% @doc Update a group access control entry you created using
%% CreateTemplateGroupAccessControlEntry:
%% https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplateGroupAccessControlEntry.html.
-spec update_template_group_access_control_entry(aws_client:aws_client(), binary() | list(), binary() | list(), update_template_group_access_control_entry_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_template_group_access_control_entry_errors(), tuple()}.
update_template_group_access_control_entry(Client, GroupSecurityIdentifier, TemplateArn, Input) ->
    update_template_group_access_control_entry(Client, GroupSecurityIdentifier, TemplateArn, Input, []).

-spec update_template_group_access_control_entry(aws_client:aws_client(), binary() | list(), binary() | list(), update_template_group_access_control_entry_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_template_group_access_control_entry_errors(), tuple()}.
update_template_group_access_control_entry(Client, GroupSecurityIdentifier, TemplateArn, Input0, Options0) ->
    Method = patch,
    Path = ["/templates/", aws_util:encode_uri(TemplateArn), "/accessControlEntries/", aws_util:encode_uri(GroupSecurityIdentifier), ""],
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
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
  RequestFun = fun() -> do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) end,
  aws_request:request(RequestFun, Options).

do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"pca-connector-ad">>},
    Host = build_host(<<"pca-connector-ad">>, Client1),
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
