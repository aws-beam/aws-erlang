%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is the Amazon Web Services Private Certificate Authority API
%% Reference.
%%
%% It provides descriptions, syntax, and usage examples for each of the
%% actions and data types involved in creating and managing a private
%% certificate authority (CA) for your organization.
%%
%% The documentation for each action shows the API request parameters and the
%% JSON response. Alternatively, you can use one of the Amazon Web Services
%% SDKs to access an API that is tailored to the programming language or
%% platform that you prefer. For more information, see Amazon Web Services
%% SDKs: https://aws.amazon.com/tools/#SDKs.
%%
%% Each Amazon Web Services Private CA API operation has a quota that
%% determines the number of times the operation can be called per second.
%% Amazon Web Services Private CA throttles API requests at different rates
%% depending on the operation. Throttling means that Amazon Web Services
%% Private CA rejects an otherwise valid request because the request exceeds
%% the operation's quota for the number of requests per second. When a
%% request is throttled, Amazon Web Services Private CA returns a
%% ThrottlingException:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/CommonErrors.html
%% error. Amazon Web Services Private CA does not guarantee a minimum request
%% rate for APIs.
%%
%% To see an up-to-date list of your Amazon Web Services Private CA quotas,
%% or to request a quota increase, log into your Amazon Web Services account
%% and visit the Service Quotas:
%% https://console.aws.amazon.com/servicequotas/ console.
-module(aws_acm_pca).

-export([create_certificate_authority/2,
         create_certificate_authority/3,
         create_certificate_authority_audit_report/2,
         create_certificate_authority_audit_report/3,
         create_permission/2,
         create_permission/3,
         delete_certificate_authority/2,
         delete_certificate_authority/3,
         delete_permission/2,
         delete_permission/3,
         delete_policy/2,
         delete_policy/3,
         describe_certificate_authority/2,
         describe_certificate_authority/3,
         describe_certificate_authority_audit_report/2,
         describe_certificate_authority_audit_report/3,
         get_certificate/2,
         get_certificate/3,
         get_certificate_authority_certificate/2,
         get_certificate_authority_certificate/3,
         get_certificate_authority_csr/2,
         get_certificate_authority_csr/3,
         get_policy/2,
         get_policy/3,
         import_certificate_authority_certificate/2,
         import_certificate_authority_certificate/3,
         issue_certificate/2,
         issue_certificate/3,
         list_certificate_authorities/2,
         list_certificate_authorities/3,
         list_permissions/2,
         list_permissions/3,
         list_tags/2,
         list_tags/3,
         put_policy/2,
         put_policy/3,
         restore_certificate_authority/2,
         restore_certificate_authority/3,
         revoke_certificate/2,
         revoke_certificate/3,
         tag_certificate_authority/2,
         tag_certificate_authority/3,
         untag_certificate_authority/2,
         untag_certificate_authority/3,
         update_certificate_authority/2,
         update_certificate_authority/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% crl_distribution_point_extension_configuration() :: #{
%%   <<"OmitExtension">> => boolean()
%% }
-type crl_distribution_point_extension_configuration() :: #{binary() => any()}.

%% Example:
%% list_permissions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Permissions">> => list(permission())
%% }
-type list_permissions_response() :: #{binary() => any()}.

%% Example:
%% get_certificate_authority_certificate_request() :: #{
%%   <<"CertificateAuthorityArn">> := string()
%% }
-type get_certificate_authority_certificate_request() :: #{binary() => any()}.

%% Example:
%% describe_certificate_authority_audit_report_response() :: #{
%%   <<"AuditReportStatus">> => list(any()),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"S3BucketName">> => string(),
%%   <<"S3Key">> => string()
%% }
-type describe_certificate_authority_audit_report_response() :: #{binary() => any()}.

%% Example:
%% list_certificate_authorities_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceOwner">> => list(any())
%% }
-type list_certificate_authorities_request() :: #{binary() => any()}.

%% Example:
%% create_certificate_authority_request() :: #{
%%   <<"CertificateAuthorityConfiguration">> := certificate_authority_configuration(),
%%   <<"CertificateAuthorityType">> := list(any()),
%%   <<"IdempotencyToken">> => string(),
%%   <<"KeyStorageSecurityStandard">> => list(any()),
%%   <<"RevocationConfiguration">> => revocation_configuration(),
%%   <<"Tags">> => list(tag()),
%%   <<"UsageMode">> => list(any())
%% }
-type create_certificate_authority_request() :: #{binary() => any()}.

%% Example:
%% request_failed_exception() :: #{
%%   <<"message">> => string()
%% }
-type request_failed_exception() :: #{binary() => any()}.

%% Example:
%% request_in_progress_exception() :: #{
%%   <<"message">> => string()
%% }
-type request_in_progress_exception() :: #{binary() => any()}.

%% Example:
%% csr_extensions() :: #{
%%   <<"KeyUsage">> => key_usage(),
%%   <<"SubjectInformationAccess">> => list(access_description())
%% }
-type csr_extensions() :: #{binary() => any()}.

%% Example:
%% revoke_certificate_request() :: #{
%%   <<"CertificateAuthorityArn">> := string(),
%%   <<"CertificateSerial">> := string(),
%%   <<"RevocationReason">> := list(any())
%% }
-type revoke_certificate_request() :: #{binary() => any()}.

%% Example:
%% certificate_authority() :: #{
%%   <<"Arn">> => string(),
%%   <<"CertificateAuthorityConfiguration">> => certificate_authority_configuration(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"FailureReason">> => list(any()),
%%   <<"KeyStorageSecurityStandard">> => list(any()),
%%   <<"LastStateChangeAt">> => non_neg_integer(),
%%   <<"NotAfter">> => non_neg_integer(),
%%   <<"NotBefore">> => non_neg_integer(),
%%   <<"OwnerAccount">> => string(),
%%   <<"RestorableUntil">> => non_neg_integer(),
%%   <<"RevocationConfiguration">> => revocation_configuration(),
%%   <<"Serial">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Type">> => list(any()),
%%   <<"UsageMode">> => list(any())
%% }
-type certificate_authority() :: #{binary() => any()}.

%% Example:
%% get_policy_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type get_policy_request() :: #{binary() => any()}.

%% Example:
%% list_tags_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_response() :: #{binary() => any()}.

%% Example:
%% certificate_authority_configuration() :: #{
%%   <<"CsrExtensions">> => csr_extensions(),
%%   <<"KeyAlgorithm">> => list(any()),
%%   <<"SigningAlgorithm">> => list(any()),
%%   <<"Subject">> => a_s_n1_subject()
%% }
-type certificate_authority_configuration() :: #{binary() => any()}.

%% Example:
%% issue_certificate_request() :: #{
%%   <<"ApiPassthrough">> => api_passthrough(),
%%   <<"CertificateAuthorityArn">> := string(),
%%   <<"Csr">> := binary(),
%%   <<"IdempotencyToken">> => string(),
%%   <<"SigningAlgorithm">> := list(any()),
%%   <<"TemplateArn">> => string(),
%%   <<"Validity">> := validity(),
%%   <<"ValidityNotBefore">> => validity()
%% }
-type issue_certificate_request() :: #{binary() => any()}.

%% Example:
%% a_s_n1_subject() :: #{
%%   <<"CommonName">> => string(),
%%   <<"Country">> => string(),
%%   <<"CustomAttributes">> => list(custom_attribute()),
%%   <<"DistinguishedNameQualifier">> => string(),
%%   <<"GenerationQualifier">> => string(),
%%   <<"GivenName">> => string(),
%%   <<"Initials">> => string(),
%%   <<"Locality">> => string(),
%%   <<"Organization">> => string(),
%%   <<"OrganizationalUnit">> => string(),
%%   <<"Pseudonym">> => string(),
%%   <<"SerialNumber">> => string(),
%%   <<"State">> => string(),
%%   <<"Surname">> => string(),
%%   <<"Title">> => string()
%% }
-type a_s_n1_subject() :: #{binary() => any()}.

%% Example:
%% permission_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type permission_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% invalid_state_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_state_exception() :: #{binary() => any()}.

%% Example:
%% get_certificate_authority_csr_response() :: #{
%%   <<"Csr">> => string()
%% }
-type get_certificate_authority_csr_response() :: #{binary() => any()}.

%% Example:
%% invalid_arn_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_arn_exception() :: #{binary() => any()}.

%% Example:
%% invalid_args_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_args_exception() :: #{binary() => any()}.

%% Example:
%% validity() :: #{
%%   <<"Type">> => list(any()),
%%   <<"Value">> => float()
%% }
-type validity() :: #{binary() => any()}.

%% Example:
%% create_certificate_authority_audit_report_response() :: #{
%%   <<"AuditReportId">> => string(),
%%   <<"S3Key">> => string()
%% }
-type create_certificate_authority_audit_report_response() :: #{binary() => any()}.

%% Example:
%% api_passthrough() :: #{
%%   <<"Extensions">> => extensions(),
%%   <<"Subject">> => a_s_n1_subject()
%% }
-type api_passthrough() :: #{binary() => any()}.

%% Example:
%% delete_permission_request() :: #{
%%   <<"CertificateAuthorityArn">> := string(),
%%   <<"Principal">> := string(),
%%   <<"SourceAccount">> => string()
%% }
-type delete_permission_request() :: #{binary() => any()}.

%% Example:
%% invalid_policy_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_policy_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% invalid_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.

%% Example:
%% issue_certificate_response() :: #{
%%   <<"CertificateArn">> => string()
%% }
-type issue_certificate_response() :: #{binary() => any()}.

%% Example:
%% policy_information() :: #{
%%   <<"CertPolicyId">> => string(),
%%   <<"PolicyQualifiers">> => list(policy_qualifier_info())
%% }
-type policy_information() :: #{binary() => any()}.

%% Example:
%% get_certificate_request() :: #{
%%   <<"CertificateArn">> := string(),
%%   <<"CertificateAuthorityArn">> := string()
%% }
-type get_certificate_request() :: #{binary() => any()}.

%% Example:
%% invalid_next_token_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_next_token_exception() :: #{binary() => any()}.

%% Example:
%% describe_certificate_authority_request() :: #{
%%   <<"CertificateAuthorityArn">> := string()
%% }
-type describe_certificate_authority_request() :: #{binary() => any()}.

%% Example:
%% revocation_configuration() :: #{
%%   <<"CrlConfiguration">> => crl_configuration(),
%%   <<"OcspConfiguration">> => ocsp_configuration()
%% }
-type revocation_configuration() :: #{binary() => any()}.

%% Example:
%% create_certificate_authority_response() :: #{
%%   <<"CertificateAuthorityArn">> => string()
%% }
-type create_certificate_authority_response() :: #{binary() => any()}.

%% Example:
%% other_name() :: #{
%%   <<"TypeId">> => string(),
%%   <<"Value">> => string()
%% }
-type other_name() :: #{binary() => any()}.

%% Example:
%% malformed_certificate_exception() :: #{
%%   <<"message">> => string()
%% }
-type malformed_certificate_exception() :: #{binary() => any()}.

%% Example:
%% restore_certificate_authority_request() :: #{
%%   <<"CertificateAuthorityArn">> := string()
%% }
-type restore_certificate_authority_request() :: #{binary() => any()}.

%% Example:
%% delete_certificate_authority_request() :: #{
%%   <<"CertificateAuthorityArn">> := string(),
%%   <<"PermanentDeletionTimeInDays">> => integer()
%% }
-type delete_certificate_authority_request() :: #{binary() => any()}.

%% Example:
%% access_method() :: #{
%%   <<"AccessMethodType">> => list(any()),
%%   <<"CustomObjectIdentifier">> => string()
%% }
-type access_method() :: #{binary() => any()}.

%% Example:
%% update_certificate_authority_request() :: #{
%%   <<"CertificateAuthorityArn">> := string(),
%%   <<"RevocationConfiguration">> => revocation_configuration(),
%%   <<"Status">> => list(any())
%% }
-type update_certificate_authority_request() :: #{binary() => any()}.

%% Example:
%% ocsp_configuration() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"OcspCustomCname">> => string()
%% }
-type ocsp_configuration() :: #{binary() => any()}.

%% Example:
%% create_permission_request() :: #{
%%   <<"Actions">> := list(list(any())()),
%%   <<"CertificateAuthorityArn">> := string(),
%%   <<"Principal">> := string(),
%%   <<"SourceAccount">> => string()
%% }
-type create_permission_request() :: #{binary() => any()}.

%% Example:
%% get_policy_response() :: #{
%%   <<"Policy">> => string()
%% }
-type get_policy_response() :: #{binary() => any()}.

%% Example:
%% request_already_processed_exception() :: #{
%%   <<"message">> => string()
%% }
-type request_already_processed_exception() :: #{binary() => any()}.

%% Example:
%% create_certificate_authority_audit_report_request() :: #{
%%   <<"AuditReportResponseFormat">> := list(any()),
%%   <<"CertificateAuthorityArn">> := string(),
%%   <<"S3BucketName">> := string()
%% }
-type create_certificate_authority_audit_report_request() :: #{binary() => any()}.

%% Example:
%% list_permissions_request() :: #{
%%   <<"CertificateAuthorityArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_permissions_request() :: #{binary() => any()}.

%% Example:
%% malformed_c_s_r_exception() :: #{
%%   <<"message">> => string()
%% }
-type malformed_c_s_r_exception() :: #{binary() => any()}.

%% Example:
%% access_description() :: #{
%%   <<"AccessLocation">> => general_name(),
%%   <<"AccessMethod">> => access_method()
%% }
-type access_description() :: #{binary() => any()}.

%% Example:
%% delete_policy_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type delete_policy_request() :: #{binary() => any()}.

%% Example:
%% certificate_mismatch_exception() :: #{
%%   <<"message">> => string()
%% }
-type certificate_mismatch_exception() :: #{binary() => any()}.

%% Example:
%% extensions() :: #{
%%   <<"CertificatePolicies">> => list(policy_information()),
%%   <<"CustomExtensions">> => list(custom_extension()),
%%   <<"ExtendedKeyUsage">> => list(extended_key_usage()),
%%   <<"KeyUsage">> => key_usage(),
%%   <<"SubjectAlternativeNames">> => list(general_name())
%% }
-type extensions() :: #{binary() => any()}.

%% Example:
%% general_name() :: #{
%%   <<"DirectoryName">> => a_s_n1_subject(),
%%   <<"DnsName">> => string(),
%%   <<"EdiPartyName">> => edi_party_name(),
%%   <<"IpAddress">> => string(),
%%   <<"OtherName">> => other_name(),
%%   <<"RegisteredId">> => string(),
%%   <<"Rfc822Name">> => string(),
%%   <<"UniformResourceIdentifier">> => string()
%% }
-type general_name() :: #{binary() => any()}.

%% Example:
%% list_certificate_authorities_response() :: #{
%%   <<"CertificateAuthorities">> => list(certificate_authority()),
%%   <<"NextToken">> => string()
%% }
-type list_certificate_authorities_response() :: #{binary() => any()}.

%% Example:
%% lockout_prevented_exception() :: #{
%%   <<"message">> => string()
%% }
-type lockout_prevented_exception() :: #{binary() => any()}.

%% Example:
%% untag_certificate_authority_request() :: #{
%%   <<"CertificateAuthorityArn">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type untag_certificate_authority_request() :: #{binary() => any()}.

%% Example:
%% concurrent_modification_exception() :: #{
%%   <<"message">> => string()
%% }
-type concurrent_modification_exception() :: #{binary() => any()}.

%% Example:
%% crl_configuration() :: #{
%%   <<"CrlDistributionPointExtensionConfiguration">> => crl_distribution_point_extension_configuration(),
%%   <<"CrlType">> => list(any()),
%%   <<"CustomCname">> => string(),
%%   <<"CustomPath">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"ExpirationInDays">> => integer(),
%%   <<"S3BucketName">> => string(),
%%   <<"S3ObjectAcl">> => list(any())
%% }
-type crl_configuration() :: #{binary() => any()}.

%% Example:
%% get_certificate_authority_certificate_response() :: #{
%%   <<"Certificate">> => string(),
%%   <<"CertificateChain">> => string()
%% }
-type get_certificate_authority_certificate_response() :: #{binary() => any()}.

%% Example:
%% describe_certificate_authority_response() :: #{
%%   <<"CertificateAuthority">> => certificate_authority()
%% }
-type describe_certificate_authority_response() :: #{binary() => any()}.

%% Example:
%% policy_qualifier_info() :: #{
%%   <<"PolicyQualifierId">> => list(any()),
%%   <<"Qualifier">> => qualifier()
%% }
-type policy_qualifier_info() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% tag_certificate_authority_request() :: #{
%%   <<"CertificateAuthorityArn">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_certificate_authority_request() :: #{binary() => any()}.

%% Example:
%% custom_extension() :: #{
%%   <<"Critical">> => boolean(),
%%   <<"ObjectIdentifier">> => string(),
%%   <<"Value">> => string()
%% }
-type custom_extension() :: #{binary() => any()}.

%% Example:
%% get_certificate_authority_csr_request() :: #{
%%   <<"CertificateAuthorityArn">> := string()
%% }
-type get_certificate_authority_csr_request() :: #{binary() => any()}.

%% Example:
%% qualifier() :: #{
%%   <<"CpsUri">> => string()
%% }
-type qualifier() :: #{binary() => any()}.

%% Example:
%% put_policy_request() :: #{
%%   <<"Policy">> := string(),
%%   <<"ResourceArn">> := string()
%% }
-type put_policy_request() :: #{binary() => any()}.

%% Example:
%% extended_key_usage() :: #{
%%   <<"ExtendedKeyUsageObjectIdentifier">> => string(),
%%   <<"ExtendedKeyUsageType">> => list(any())
%% }
-type extended_key_usage() :: #{binary() => any()}.

%% Example:
%% list_tags_request() :: #{
%%   <<"CertificateAuthorityArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_tags_request() :: #{binary() => any()}.

%% Example:
%% describe_certificate_authority_audit_report_request() :: #{
%%   <<"AuditReportId">> := string(),
%%   <<"CertificateAuthorityArn">> := string()
%% }
-type describe_certificate_authority_audit_report_request() :: #{binary() => any()}.

%% Example:
%% custom_attribute() :: #{
%%   <<"ObjectIdentifier">> => string(),
%%   <<"Value">> => string()
%% }
-type custom_attribute() :: #{binary() => any()}.

%% Example:
%% invalid_tag_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_tag_exception() :: #{binary() => any()}.

%% Example:
%% get_certificate_response() :: #{
%%   <<"Certificate">> => string(),
%%   <<"CertificateChain">> => string()
%% }
-type get_certificate_response() :: #{binary() => any()}.

%% Example:
%% edi_party_name() :: #{
%%   <<"NameAssigner">> => string(),
%%   <<"PartyName">> => string()
%% }
-type edi_party_name() :: #{binary() => any()}.

%% Example:
%% import_certificate_authority_certificate_request() :: #{
%%   <<"Certificate">> := binary(),
%%   <<"CertificateAuthorityArn">> := string(),
%%   <<"CertificateChain">> => binary()
%% }
-type import_certificate_authority_certificate_request() :: #{binary() => any()}.

%% Example:
%% permission() :: #{
%%   <<"Actions">> => list(list(any())()),
%%   <<"CertificateAuthorityArn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Policy">> => string(),
%%   <<"Principal">> => string(),
%%   <<"SourceAccount">> => string()
%% }
-type permission() :: #{binary() => any()}.

%% Example:
%% key_usage() :: #{
%%   <<"CRLSign">> => boolean(),
%%   <<"DataEncipherment">> => boolean(),
%%   <<"DecipherOnly">> => boolean(),
%%   <<"DigitalSignature">> => boolean(),
%%   <<"EncipherOnly">> => boolean(),
%%   <<"KeyAgreement">> => boolean(),
%%   <<"KeyCertSign">> => boolean(),
%%   <<"KeyEncipherment">> => boolean(),
%%   <<"NonRepudiation">> => boolean()
%% }
-type key_usage() :: #{binary() => any()}.

%% Example:
%% too_many_tags_exception() :: #{
%%   <<"message">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.

-type create_certificate_authority_errors() ::
    invalid_tag_exception() | 
    limit_exceeded_exception() | 
    invalid_policy_exception() | 
    invalid_args_exception().

-type create_certificate_authority_audit_report_errors() ::
    resource_not_found_exception() | 
    invalid_args_exception() | 
    invalid_arn_exception() | 
    invalid_state_exception() | 
    request_in_progress_exception() | 
    request_failed_exception().

-type create_permission_errors() ::
    limit_exceeded_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    invalid_state_exception() | 
    permission_already_exists_exception() | 
    request_failed_exception().

-type delete_certificate_authority_errors() ::
    concurrent_modification_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    invalid_state_exception().

-type delete_permission_errors() ::
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    invalid_state_exception() | 
    request_failed_exception().

-type delete_policy_errors() ::
    concurrent_modification_exception() | 
    lockout_prevented_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    invalid_state_exception() | 
    request_failed_exception().

-type describe_certificate_authority_errors() ::
    resource_not_found_exception() | 
    invalid_arn_exception().

-type describe_certificate_authority_audit_report_errors() ::
    resource_not_found_exception() | 
    invalid_args_exception() | 
    invalid_arn_exception().

-type get_certificate_errors() ::
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    invalid_state_exception() | 
    request_in_progress_exception() | 
    request_failed_exception().

-type get_certificate_authority_certificate_errors() ::
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    invalid_state_exception().

-type get_certificate_authority_csr_errors() ::
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    invalid_state_exception() | 
    request_in_progress_exception() | 
    request_failed_exception().

-type get_policy_errors() ::
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    invalid_state_exception() | 
    request_failed_exception().

-type import_certificate_authority_certificate_errors() ::
    concurrent_modification_exception() | 
    certificate_mismatch_exception() | 
    malformed_certificate_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    invalid_state_exception() | 
    request_in_progress_exception() | 
    request_failed_exception().

-type issue_certificate_errors() ::
    limit_exceeded_exception() | 
    malformed_c_s_r_exception() | 
    resource_not_found_exception() | 
    invalid_args_exception() | 
    invalid_arn_exception() | 
    invalid_state_exception().

-type list_certificate_authorities_errors() ::
    invalid_next_token_exception().

-type list_permissions_errors() ::
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    invalid_state_exception() | 
    request_failed_exception().

-type list_tags_errors() ::
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    invalid_state_exception() | 
    request_failed_exception().

-type put_policy_errors() ::
    concurrent_modification_exception() | 
    lockout_prevented_exception() | 
    resource_not_found_exception() | 
    invalid_policy_exception() | 
    invalid_arn_exception() | 
    invalid_state_exception() | 
    request_failed_exception().

-type restore_certificate_authority_errors() ::
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    invalid_state_exception().

-type revoke_certificate_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    request_already_processed_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    invalid_state_exception() | 
    request_in_progress_exception() | 
    request_failed_exception().

-type tag_certificate_authority_errors() ::
    too_many_tags_exception() | 
    invalid_tag_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    invalid_state_exception().

-type untag_certificate_authority_errors() ::
    invalid_tag_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    invalid_state_exception().

-type update_certificate_authority_errors() ::
    concurrent_modification_exception() | 
    resource_not_found_exception() | 
    invalid_policy_exception() | 
    invalid_args_exception() | 
    invalid_arn_exception() | 
    invalid_state_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a root or subordinate private certificate authority (CA).
%%
%% You must specify the CA configuration, an optional configuration for
%% Online Certificate Status Protocol (OCSP) and/or a certificate revocation
%% list (CRL), the CA type, and an optional idempotency token to avoid
%% accidental creation of multiple CAs. The CA configuration specifies the
%% name of the algorithm and key size to be used to create the CA private
%% key, the type of signing algorithm that the CA uses, and X.500 subject
%% information. The OCSP configuration can optionally specify a custom URL
%% for the OCSP responder. The CRL configuration specifies the CRL expiration
%% period in days (the validity period of the CRL), the Amazon S3 bucket that
%% will contain the CRL, and a CNAME alias for the S3 bucket that is included
%% in certificates issued by the CA. If successful, this action returns the
%% Amazon Resource Name (ARN) of the CA.
%%
%% Both Amazon Web Services Private CA and the IAM principal must have
%% permission to write to the S3 bucket that you specify. If the IAM
%% principal making the call does not have permission to write to the bucket,
%% then an exception is thrown. For more information, see Access policies for
%% CRLs in Amazon S3:
%% https://docs.aws.amazon.com/privateca/latest/userguide/crl-planning.html#s3-policies.
%%
%% Amazon Web Services Private CA assets that are stored in Amazon S3 can be
%% protected with encryption. For more information, see Encrypting Your CRLs:
%% https://docs.aws.amazon.com/privateca/latest/userguide/crl-planning.html#crl-encryption.
-spec create_certificate_authority(aws_client:aws_client(), create_certificate_authority_request()) ->
    {ok, create_certificate_authority_response(), tuple()} |
    {error, any()} |
    {error, create_certificate_authority_errors(), tuple()}.
create_certificate_authority(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_certificate_authority(Client, Input, []).

-spec create_certificate_authority(aws_client:aws_client(), create_certificate_authority_request(), proplists:proplist()) ->
    {ok, create_certificate_authority_response(), tuple()} |
    {error, any()} |
    {error, create_certificate_authority_errors(), tuple()}.
create_certificate_authority(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCertificateAuthority">>, Input, Options).

%% @doc Creates an audit report that lists every time that your CA private
%% key is used to issue a certificate.
%%
%% The IssueCertificate:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_IssueCertificate.html
%% and RevokeCertificate:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_RevokeCertificate.html
%% actions use the private key.
%%
%% To save the audit report to your designated Amazon S3 bucket, you must
%% create a bucket policy that grants Amazon Web Services Private CA
%% permission to access and write to it. For an example policy, see Prepare
%% an Amazon S3 bucket for audit reports:
%% https://docs.aws.amazon.com/privateca/latest/userguide/PcaAuditReport.html#s3-access.
%%
%% Amazon Web Services Private CA assets that are stored in Amazon S3 can be
%% protected with encryption. For more information, see Encrypting Your Audit
%% Reports:
%% https://docs.aws.amazon.com/privateca/latest/userguide/PcaAuditReport.html#audit-report-encryption.
%%
%% You can generate a maximum of one report every 30 minutes.
-spec create_certificate_authority_audit_report(aws_client:aws_client(), create_certificate_authority_audit_report_request()) ->
    {ok, create_certificate_authority_audit_report_response(), tuple()} |
    {error, any()} |
    {error, create_certificate_authority_audit_report_errors(), tuple()}.
create_certificate_authority_audit_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_certificate_authority_audit_report(Client, Input, []).

-spec create_certificate_authority_audit_report(aws_client:aws_client(), create_certificate_authority_audit_report_request(), proplists:proplist()) ->
    {ok, create_certificate_authority_audit_report_response(), tuple()} |
    {error, any()} |
    {error, create_certificate_authority_audit_report_errors(), tuple()}.
create_certificate_authority_audit_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCertificateAuthorityAuditReport">>, Input, Options).

%% @doc Grants one or more permissions on a private CA to the Certificate
%% Manager (ACM) service principal (`acm.amazonaws.com').
%%
%% These permissions allow ACM to issue and renew ACM certificates that
%% reside in the same Amazon Web Services account as the CA.
%%
%% You can list current permissions with the ListPermissions:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListPermissions.html
%% action and revoke them with the DeletePermission:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_DeletePermission.html
%% action.
%%
%% == About Permissions ==
%%
%% If the private CA and the certificates it issues reside in the same
%% account, you can use `CreatePermission' to grant permissions for ACM
%% to carry out automatic certificate renewals.
%%
%% For automatic certificate renewal to succeed, the ACM service principal
%% needs permissions to create, retrieve, and list certificates.
%%
%% If the private CA and the ACM certificates reside in different accounts,
%% then permissions cannot be used to enable automatic renewals. Instead, the
%% ACM certificate owner must set up a resource-based policy to enable
%% cross-account issuance and renewals. For more information, see Using a
%% Resource Based Policy with Amazon Web Services Private CA:
%% https://docs.aws.amazon.com/privateca/latest/userguide/pca-rbp.html.
-spec create_permission(aws_client:aws_client(), create_permission_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_permission_errors(), tuple()}.
create_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_permission(Client, Input, []).

-spec create_permission(aws_client:aws_client(), create_permission_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_permission_errors(), tuple()}.
create_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePermission">>, Input, Options).

%% @doc Deletes a private certificate authority (CA).
%%
%% You must provide the Amazon Resource Name (ARN) of the private CA that you
%% want to delete. You can find the ARN by calling the
%% ListCertificateAuthorities:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListCertificateAuthorities.html
%% action.
%%
%% Deleting a CA will invalidate other CAs and certificates below it in your
%% CA hierarchy.
%%
%% Before you can delete a CA that you have created and activated, you must
%% disable it. To do this, call the UpdateCertificateAuthority:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_UpdateCertificateAuthority.html
%% action and set the CertificateAuthorityStatus parameter to `DISABLED'.
%%
%% Additionally, you can delete a CA if you are waiting for it to be created
%% (that is, the status of the CA is `CREATING'). You can also delete it
%% if the CA has been created but you haven't yet imported the signed
%% certificate into Amazon Web Services Private CA (that is, the status of
%% the CA is `PENDING_CERTIFICATE').
%%
%% When you successfully call DeleteCertificateAuthority:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_DeleteCertificateAuthority.html,
%% the CA's status changes to `DELETED'. However, the CA won't be
%% permanently deleted until the restoration period has passed. By default,
%% if you do not set the `PermanentDeletionTimeInDays' parameter, the CA
%% remains restorable for 30 days. You can set the parameter from 7 to 30
%% days. The DescribeCertificateAuthority:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_DescribeCertificateAuthority.html
%% action returns the time remaining in the restoration window of a private
%% CA in the `DELETED' state. To restore an eligible CA, call the
%% RestoreCertificateAuthority:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_RestoreCertificateAuthority.html
%% action.
%%
%% A private CA can be deleted if it is in the `PENDING_CERTIFICATE',
%% `CREATING', `EXPIRED', `DISABLED', or `FAILED' state. To
%% delete a CA in the `ACTIVE' state, you must first disable it, or else
%% the delete request results in an exception. If you are deleting a private
%% CA in the `PENDING_CERTIFICATE' or `DISABLED' state, you can set
%% the length of its restoration period to 7-30 days. The default is 30.
%% During this time, the status is set to `DELETED' and the CA can be
%% restored. A private CA deleted in the `CREATING' or `FAILED' state
%% has no assigned restoration period and cannot be restored.
-spec delete_certificate_authority(aws_client:aws_client(), delete_certificate_authority_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_certificate_authority_errors(), tuple()}.
delete_certificate_authority(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_certificate_authority(Client, Input, []).

-spec delete_certificate_authority(aws_client:aws_client(), delete_certificate_authority_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_certificate_authority_errors(), tuple()}.
delete_certificate_authority(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCertificateAuthority">>, Input, Options).

%% @doc Revokes permissions on a private CA granted to the Certificate
%% Manager (ACM) service principal (acm.amazonaws.com).
%%
%% These permissions allow ACM to issue and renew ACM certificates that
%% reside in the same Amazon Web Services account as the CA. If you revoke
%% these permissions, ACM will no longer renew the affected certificates
%% automatically.
%%
%% Permissions can be granted with the CreatePermission:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreatePermission.html
%% action and listed with the ListPermissions:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListPermissions.html
%% action.
%%
%% == About Permissions ==
%%
%% If the private CA and the certificates it issues reside in the same
%% account, you can use `CreatePermission' to grant permissions for ACM
%% to carry out automatic certificate renewals.
%%
%% For automatic certificate renewal to succeed, the ACM service principal
%% needs permissions to create, retrieve, and list certificates.
%%
%% If the private CA and the ACM certificates reside in different accounts,
%% then permissions cannot be used to enable automatic renewals. Instead, the
%% ACM certificate owner must set up a resource-based policy to enable
%% cross-account issuance and renewals. For more information, see Using a
%% Resource Based Policy with Amazon Web Services Private CA:
%% https://docs.aws.amazon.com/privateca/latest/userguide/pca-rbp.html.
-spec delete_permission(aws_client:aws_client(), delete_permission_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_permission_errors(), tuple()}.
delete_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_permission(Client, Input, []).

-spec delete_permission(aws_client:aws_client(), delete_permission_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_permission_errors(), tuple()}.
delete_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePermission">>, Input, Options).

%% @doc Deletes the resource-based policy attached to a private CA.
%%
%% Deletion will remove any access that the policy has granted. If there is
%% no policy attached to the private CA, this action will return successful.
%%
%% If you delete a policy that was applied through Amazon Web Services
%% Resource Access Manager (RAM), the CA will be removed from all shares in
%% which it was included.
%%
%% The Certificate Manager Service Linked Role that the policy supports is
%% not affected when you delete the policy.
%%
%% The current policy can be shown with GetPolicy:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_GetPolicy.html
%% and updated with PutPolicy:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_PutPolicy.html.
%%
%% == About Policies ==
%%
%% A policy grants access on a private CA to an Amazon Web Services customer
%% account, to Amazon Web Services Organizations, or to an Amazon Web
%% Services Organizations unit. Policies are under the control of a CA
%% administrator. For more information, see Using a Resource Based Policy
%% with Amazon Web Services Private CA:
%% https://docs.aws.amazon.com/privateca/latest/userguide/pca-rbp.html.
%%
%% A policy permits a user of Certificate Manager (ACM) to issue ACM
%% certificates signed by a CA in another account.
%%
%% For ACM to manage automatic renewal of these certificates, the ACM user
%% must configure a Service Linked Role (SLR). The SLR allows the ACM service
%% to assume the identity of the user, subject to confirmation against the
%% Amazon Web Services Private CA policy. For more information, see Using a
%% Service Linked Role with ACM:
%% https://docs.aws.amazon.com/acm/latest/userguide/acm-slr.html.
%%
%% Updates made in Amazon Web Services Resource Manager (RAM) are reflected
%% in policies. For more information, see Attach a Policy for Cross-Account
%% Access:
%% https://docs.aws.amazon.com/privateca/latest/userguide/pca-ram.html.
-spec delete_policy(aws_client:aws_client(), delete_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_policy_errors(), tuple()}.
delete_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_policy(Client, Input, []).

-spec delete_policy(aws_client:aws_client(), delete_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_policy_errors(), tuple()}.
delete_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePolicy">>, Input, Options).

%% @doc Lists information about your private certificate authority (CA) or
%% one that has been shared with you.
%%
%% You specify the private CA on input by its ARN (Amazon Resource Name). The
%% output contains the status of your CA. This can be any of the following:
%%
%% `CREATING' - Amazon Web Services Private CA is creating your private
%% certificate authority.
%%
%% `PENDING_CERTIFICATE' - The certificate is pending. You must use your
%% Amazon Web Services Private CA-hosted or on-premises root or subordinate
%% CA to sign your private CA CSR and then import it into Amazon Web Services
%% Private CA.
%%
%% `ACTIVE' - Your private CA is active.
%%
%% `DISABLED' - Your private CA has been disabled.
%%
%% `EXPIRED' - Your private CA certificate has expired.
%%
%% `FAILED' - Your private CA has failed. Your CA can fail because of
%% problems such a network outage or back-end Amazon Web Services failure or
%% other errors. A failed CA can never return to the pending state. You must
%% create a new CA.
%%
%% `DELETED' - Your private CA is within the restoration period, after
%% which it is permanently deleted. The length of time remaining in the
%% CA's restoration period is also included in this action's output.
-spec describe_certificate_authority(aws_client:aws_client(), describe_certificate_authority_request()) ->
    {ok, describe_certificate_authority_response(), tuple()} |
    {error, any()} |
    {error, describe_certificate_authority_errors(), tuple()}.
describe_certificate_authority(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_certificate_authority(Client, Input, []).

-spec describe_certificate_authority(aws_client:aws_client(), describe_certificate_authority_request(), proplists:proplist()) ->
    {ok, describe_certificate_authority_response(), tuple()} |
    {error, any()} |
    {error, describe_certificate_authority_errors(), tuple()}.
describe_certificate_authority(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCertificateAuthority">>, Input, Options).

%% @doc Lists information about a specific audit report created by calling
%% the CreateCertificateAuthorityAuditReport:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html
%% action.
%%
%% Audit information is created every time the certificate authority (CA)
%% private key is used. The private key is used when you call the
%% IssueCertificate:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_IssueCertificate.html
%% action or the RevokeCertificate:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_RevokeCertificate.html
%% action.
-spec describe_certificate_authority_audit_report(aws_client:aws_client(), describe_certificate_authority_audit_report_request()) ->
    {ok, describe_certificate_authority_audit_report_response(), tuple()} |
    {error, any()} |
    {error, describe_certificate_authority_audit_report_errors(), tuple()}.
describe_certificate_authority_audit_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_certificate_authority_audit_report(Client, Input, []).

-spec describe_certificate_authority_audit_report(aws_client:aws_client(), describe_certificate_authority_audit_report_request(), proplists:proplist()) ->
    {ok, describe_certificate_authority_audit_report_response(), tuple()} |
    {error, any()} |
    {error, describe_certificate_authority_audit_report_errors(), tuple()}.
describe_certificate_authority_audit_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCertificateAuthorityAuditReport">>, Input, Options).

%% @doc Retrieves a certificate from your private CA or one that has been
%% shared with you.
%%
%% The ARN of the certificate is returned when you call the IssueCertificate:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_IssueCertificate.html
%% action. You must specify both the ARN of your private CA and the ARN of
%% the issued certificate when calling the GetCertificate action. You can
%% retrieve the certificate if it is in the ISSUED, EXPIRED, or REVOKED
%% state. You can call the CreateCertificateAuthorityAuditReport:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html
%% action to create a report that contains information about all of the
%% certificates issued and revoked by your private CA.
-spec get_certificate(aws_client:aws_client(), get_certificate_request()) ->
    {ok, get_certificate_response(), tuple()} |
    {error, any()} |
    {error, get_certificate_errors(), tuple()}.
get_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_certificate(Client, Input, []).

-spec get_certificate(aws_client:aws_client(), get_certificate_request(), proplists:proplist()) ->
    {ok, get_certificate_response(), tuple()} |
    {error, any()} |
    {error, get_certificate_errors(), tuple()}.
get_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCertificate">>, Input, Options).

%% @doc Retrieves the certificate and certificate chain for your private
%% certificate authority (CA) or one that has been shared with you.
%%
%% Both the certificate and the chain are base64 PEM-encoded. The chain does
%% not include the CA certificate. Each certificate in the chain signs the
%% one before it.
-spec get_certificate_authority_certificate(aws_client:aws_client(), get_certificate_authority_certificate_request()) ->
    {ok, get_certificate_authority_certificate_response(), tuple()} |
    {error, any()} |
    {error, get_certificate_authority_certificate_errors(), tuple()}.
get_certificate_authority_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_certificate_authority_certificate(Client, Input, []).

-spec get_certificate_authority_certificate(aws_client:aws_client(), get_certificate_authority_certificate_request(), proplists:proplist()) ->
    {ok, get_certificate_authority_certificate_response(), tuple()} |
    {error, any()} |
    {error, get_certificate_authority_certificate_errors(), tuple()}.
get_certificate_authority_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCertificateAuthorityCertificate">>, Input, Options).

%% @doc Retrieves the certificate signing request (CSR) for your private
%% certificate authority (CA).
%%
%% The CSR is created when you call the CreateCertificateAuthority:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html
%% action. Sign the CSR with your Amazon Web Services Private CA-hosted or
%% on-premises root or subordinate CA. Then import the signed certificate
%% back into Amazon Web Services Private CA by calling the
%% ImportCertificateAuthorityCertificate:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_ImportCertificateAuthorityCertificate.html
%% action. The CSR is returned as a base64 PEM-encoded string.
-spec get_certificate_authority_csr(aws_client:aws_client(), get_certificate_authority_csr_request()) ->
    {ok, get_certificate_authority_csr_response(), tuple()} |
    {error, any()} |
    {error, get_certificate_authority_csr_errors(), tuple()}.
get_certificate_authority_csr(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_certificate_authority_csr(Client, Input, []).

-spec get_certificate_authority_csr(aws_client:aws_client(), get_certificate_authority_csr_request(), proplists:proplist()) ->
    {ok, get_certificate_authority_csr_response(), tuple()} |
    {error, any()} |
    {error, get_certificate_authority_csr_errors(), tuple()}.
get_certificate_authority_csr(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCertificateAuthorityCsr">>, Input, Options).

%% @doc Retrieves the resource-based policy attached to a private CA.
%%
%% If either the private CA resource or the policy cannot be found, this
%% action returns a `ResourceNotFoundException'.
%%
%% The policy can be attached or updated with PutPolicy:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_PutPolicy.html
%% and removed with DeletePolicy:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_DeletePolicy.html.
%%
%% == About Policies ==
%%
%% A policy grants access on a private CA to an Amazon Web Services customer
%% account, to Amazon Web Services Organizations, or to an Amazon Web
%% Services Organizations unit. Policies are under the control of a CA
%% administrator. For more information, see Using a Resource Based Policy
%% with Amazon Web Services Private CA:
%% https://docs.aws.amazon.com/privateca/latest/userguide/pca-rbp.html.
%%
%% A policy permits a user of Certificate Manager (ACM) to issue ACM
%% certificates signed by a CA in another account.
%%
%% For ACM to manage automatic renewal of these certificates, the ACM user
%% must configure a Service Linked Role (SLR). The SLR allows the ACM service
%% to assume the identity of the user, subject to confirmation against the
%% Amazon Web Services Private CA policy. For more information, see Using a
%% Service Linked Role with ACM:
%% https://docs.aws.amazon.com/acm/latest/userguide/acm-slr.html.
%%
%% Updates made in Amazon Web Services Resource Manager (RAM) are reflected
%% in policies. For more information, see Attach a Policy for Cross-Account
%% Access:
%% https://docs.aws.amazon.com/privateca/latest/userguide/pca-ram.html.
-spec get_policy(aws_client:aws_client(), get_policy_request()) ->
    {ok, get_policy_response(), tuple()} |
    {error, any()} |
    {error, get_policy_errors(), tuple()}.
get_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_policy(Client, Input, []).

-spec get_policy(aws_client:aws_client(), get_policy_request(), proplists:proplist()) ->
    {ok, get_policy_response(), tuple()} |
    {error, any()} |
    {error, get_policy_errors(), tuple()}.
get_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPolicy">>, Input, Options).

%% @doc Imports a signed private CA certificate into Amazon Web Services
%% Private CA.
%%
%% This action is used when you are using a chain of trust whose root is
%% located outside Amazon Web Services Private CA. Before you can call this
%% action, the following preparations must in place:
%%
%% In Amazon Web Services Private CA, call the CreateCertificateAuthority:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html
%% action to create the private CA that you plan to back with the imported
%% certificate.
%%
%% Call the GetCertificateAuthorityCsr:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_GetCertificateAuthorityCsr.html
%% action to generate a certificate signing request (CSR).
%%
%% Sign the CSR using a root or intermediate CA hosted by either an
%% on-premises PKI hierarchy or by a commercial CA.
%%
%% Create a certificate chain and copy the signed certificate and the
%% certificate chain to your working directory.
%%
%% Amazon Web Services Private CA supports three scenarios for installing a
%% CA certificate:
%%
%% Installing a certificate for a root CA hosted by Amazon Web Services
%% Private CA.
%%
%% Installing a subordinate CA certificate whose parent authority is hosted
%% by Amazon Web Services Private CA.
%%
%% Installing a subordinate CA certificate whose parent authority is
%% externally hosted.
%%
%% The following additional requirements apply when you import a CA
%% certificate.
%%
%% Only a self-signed certificate can be imported as a root CA.
%%
%% A self-signed certificate cannot be imported as a subordinate CA.
%%
%% Your certificate chain must not include the private CA certificate that
%% you are importing.
%%
%% Your root CA must be the last certificate in your chain. The subordinate
%% certificate, if any, that your root CA signed must be next to last. The
%% subordinate certificate signed by the preceding subordinate CA must come
%% next, and so on until your chain is built.
%%
%% The chain must be PEM-encoded.
%%
%% The maximum allowed size of a certificate is 32 KB.
%%
%% The maximum allowed size of a certificate chain is 2 MB.
%%
%% Enforcement of Critical Constraints
%%
%% Amazon Web Services Private CA allows the following extensions to be
%% marked critical in the imported CA certificate or chain.
%%
%% Authority key identifier
%%
%% Basic constraints (must be marked critical)
%%
%% Certificate policies
%%
%% Extended key usage
%%
%% Inhibit anyPolicy
%%
%% Issuer alternative name
%%
%% Key usage
%%
%% Name constraints
%%
%% Policy mappings
%%
%% Subject alternative name
%%
%% Subject directory attributes
%%
%% Subject key identifier
%%
%% Subject information access
%%
%% Amazon Web Services Private CA rejects the following extensions when they
%% are marked critical in an imported CA certificate or chain.
%%
%% Authority information access
%%
%% CRL distribution points
%%
%% Freshest CRL
%%
%% Policy constraints
%%
%% Amazon Web Services Private Certificate Authority will also reject any
%% other extension marked as critical not contained on the preceding list of
%% allowed extensions.
-spec import_certificate_authority_certificate(aws_client:aws_client(), import_certificate_authority_certificate_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, import_certificate_authority_certificate_errors(), tuple()}.
import_certificate_authority_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_certificate_authority_certificate(Client, Input, []).

-spec import_certificate_authority_certificate(aws_client:aws_client(), import_certificate_authority_certificate_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, import_certificate_authority_certificate_errors(), tuple()}.
import_certificate_authority_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportCertificateAuthorityCertificate">>, Input, Options).

%% @doc Uses your private certificate authority (CA), or one that has been
%% shared with you, to issue a client certificate.
%%
%% This action returns the Amazon Resource Name (ARN) of the certificate. You
%% can retrieve the certificate by calling the GetCertificate:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_GetCertificate.html
%% action and specifying the ARN.
%%
%% You cannot use the ACM ListCertificateAuthorities action to retrieve the
%% ARNs of the certificates that you issue by using Amazon Web Services
%% Private CA.
-spec issue_certificate(aws_client:aws_client(), issue_certificate_request()) ->
    {ok, issue_certificate_response(), tuple()} |
    {error, any()} |
    {error, issue_certificate_errors(), tuple()}.
issue_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    issue_certificate(Client, Input, []).

-spec issue_certificate(aws_client:aws_client(), issue_certificate_request(), proplists:proplist()) ->
    {ok, issue_certificate_response(), tuple()} |
    {error, any()} |
    {error, issue_certificate_errors(), tuple()}.
issue_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"IssueCertificate">>, Input, Options).

%% @doc Lists the private certificate authorities that you created by using
%% the CreateCertificateAuthority:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html
%% action.
-spec list_certificate_authorities(aws_client:aws_client(), list_certificate_authorities_request()) ->
    {ok, list_certificate_authorities_response(), tuple()} |
    {error, any()} |
    {error, list_certificate_authorities_errors(), tuple()}.
list_certificate_authorities(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_certificate_authorities(Client, Input, []).

-spec list_certificate_authorities(aws_client:aws_client(), list_certificate_authorities_request(), proplists:proplist()) ->
    {ok, list_certificate_authorities_response(), tuple()} |
    {error, any()} |
    {error, list_certificate_authorities_errors(), tuple()}.
list_certificate_authorities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCertificateAuthorities">>, Input, Options).

%% @doc List all permissions on a private CA, if any, granted to the
%% Certificate Manager (ACM) service principal (acm.amazonaws.com).
%%
%% These permissions allow ACM to issue and renew ACM certificates that
%% reside in the same Amazon Web Services account as the CA.
%%
%% Permissions can be granted with the CreatePermission:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreatePermission.html
%% action and revoked with the DeletePermission:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_DeletePermission.html
%% action.
%%
%% == About Permissions ==
%%
%% If the private CA and the certificates it issues reside in the same
%% account, you can use `CreatePermission' to grant permissions for ACM
%% to carry out automatic certificate renewals.
%%
%% For automatic certificate renewal to succeed, the ACM service principal
%% needs permissions to create, retrieve, and list certificates.
%%
%% If the private CA and the ACM certificates reside in different accounts,
%% then permissions cannot be used to enable automatic renewals. Instead, the
%% ACM certificate owner must set up a resource-based policy to enable
%% cross-account issuance and renewals. For more information, see Using a
%% Resource Based Policy with Amazon Web Services Private CA:
%% https://docs.aws.amazon.com/privateca/latest/userguide/pca-rbp.html.
-spec list_permissions(aws_client:aws_client(), list_permissions_request()) ->
    {ok, list_permissions_response(), tuple()} |
    {error, any()} |
    {error, list_permissions_errors(), tuple()}.
list_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_permissions(Client, Input, []).

-spec list_permissions(aws_client:aws_client(), list_permissions_request(), proplists:proplist()) ->
    {ok, list_permissions_response(), tuple()} |
    {error, any()} |
    {error, list_permissions_errors(), tuple()}.
list_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPermissions">>, Input, Options).

%% @doc Lists the tags, if any, that are associated with your private CA or
%% one that has been shared with you.
%%
%% Tags are labels that you can use to identify and organize your CAs. Each
%% tag consists of a key and an optional value. Call the
%% TagCertificateAuthority:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_TagCertificateAuthority.html
%% action to add one or more tags to your CA. Call the
%% UntagCertificateAuthority:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_UntagCertificateAuthority.html
%% action to remove tags.
-spec list_tags(aws_client:aws_client(), list_tags_request()) ->
    {ok, list_tags_response(), tuple()} |
    {error, any()} |
    {error, list_tags_errors(), tuple()}.
list_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags(Client, Input, []).

-spec list_tags(aws_client:aws_client(), list_tags_request(), proplists:proplist()) ->
    {ok, list_tags_response(), tuple()} |
    {error, any()} |
    {error, list_tags_errors(), tuple()}.
list_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTags">>, Input, Options).

%% @doc Attaches a resource-based policy to a private CA.
%%
%% A policy can also be applied by sharing a private CA through Amazon Web
%% Services Resource Access Manager (RAM). For more information, see Attach a
%% Policy for Cross-Account Access:
%% https://docs.aws.amazon.com/privateca/latest/userguide/pca-ram.html.
%%
%% The policy can be displayed with GetPolicy:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_GetPolicy.html
%% and removed with DeletePolicy:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_DeletePolicy.html.
%%
%% == About Policies ==
%%
%% A policy grants access on a private CA to an Amazon Web Services customer
%% account, to Amazon Web Services Organizations, or to an Amazon Web
%% Services Organizations unit. Policies are under the control of a CA
%% administrator. For more information, see Using a Resource Based Policy
%% with Amazon Web Services Private CA:
%% https://docs.aws.amazon.com/privateca/latest/userguide/pca-rbp.html.
%%
%% A policy permits a user of Certificate Manager (ACM) to issue ACM
%% certificates signed by a CA in another account.
%%
%% For ACM to manage automatic renewal of these certificates, the ACM user
%% must configure a Service Linked Role (SLR). The SLR allows the ACM service
%% to assume the identity of the user, subject to confirmation against the
%% Amazon Web Services Private CA policy. For more information, see Using a
%% Service Linked Role with ACM:
%% https://docs.aws.amazon.com/acm/latest/userguide/acm-slr.html.
%%
%% Updates made in Amazon Web Services Resource Manager (RAM) are reflected
%% in policies. For more information, see Attach a Policy for Cross-Account
%% Access:
%% https://docs.aws.amazon.com/privateca/latest/userguide/pca-ram.html.
-spec put_policy(aws_client:aws_client(), put_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_policy_errors(), tuple()}.
put_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_policy(Client, Input, []).

-spec put_policy(aws_client:aws_client(), put_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_policy_errors(), tuple()}.
put_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutPolicy">>, Input, Options).

%% @doc Restores a certificate authority (CA) that is in the `DELETED'
%% state.
%%
%% You can restore a CA during the period that you defined in the
%% PermanentDeletionTimeInDays parameter of the DeleteCertificateAuthority:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_DeleteCertificateAuthority.html
%% action. Currently, you can specify 7 to 30 days. If you did not specify a
%% PermanentDeletionTimeInDays value, by default you can restore the CA at
%% any time in a 30 day period. You can check the time remaining in the
%% restoration period of a private CA in the `DELETED' state by calling
%% the DescribeCertificateAuthority:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_DescribeCertificateAuthority.html
%% or ListCertificateAuthorities:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListCertificateAuthorities.html
%% actions. The status of a restored CA is set to its pre-deletion status
%% when the RestoreCertificateAuthority action returns. To change its status
%% to `ACTIVE', call the UpdateCertificateAuthority:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_UpdateCertificateAuthority.html
%% action. If the private CA was in the `PENDING_CERTIFICATE' state at
%% deletion, you must use the ImportCertificateAuthorityCertificate:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_ImportCertificateAuthorityCertificate.html
%% action to import a certificate authority into the private CA before it can
%% be activated. You cannot restore a CA after the restoration period has
%% ended.
-spec restore_certificate_authority(aws_client:aws_client(), restore_certificate_authority_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, restore_certificate_authority_errors(), tuple()}.
restore_certificate_authority(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_certificate_authority(Client, Input, []).

-spec restore_certificate_authority(aws_client:aws_client(), restore_certificate_authority_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, restore_certificate_authority_errors(), tuple()}.
restore_certificate_authority(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreCertificateAuthority">>, Input, Options).

%% @doc Revokes a certificate that was issued inside Amazon Web Services
%% Private CA.
%%
%% If you enable a certificate revocation list (CRL) when you create or
%% update your private CA, information about the revoked certificates will be
%% included in the CRL. Amazon Web Services Private CA writes the CRL to an
%% S3 bucket that you specify. A CRL is typically updated approximately 30
%% minutes after a certificate is revoked. If for any reason the CRL update
%% fails, Amazon Web Services Private CA attempts makes further attempts
%% every 15 minutes. With Amazon CloudWatch, you can create alarms for the
%% metrics `CRLGenerated' and `MisconfiguredCRLBucket'. For more
%% information, see Supported CloudWatch Metrics:
%% https://docs.aws.amazon.com/privateca/latest/userguide/PcaCloudWatch.html.
%%
%% Both Amazon Web Services Private CA and the IAM principal must have
%% permission to write to the S3 bucket that you specify. If the IAM
%% principal making the call does not have permission to write to the bucket,
%% then an exception is thrown. For more information, see Access policies for
%% CRLs in Amazon S3:
%% https://docs.aws.amazon.com/privateca/latest/userguide/crl-planning.html#s3-policies.
%%
%% Amazon Web Services Private CA also writes revocation information to the
%% audit report. For more information, see
%% CreateCertificateAuthorityAuditReport:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html.
%%
%% You cannot revoke a root CA self-signed certificate.
-spec revoke_certificate(aws_client:aws_client(), revoke_certificate_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, revoke_certificate_errors(), tuple()}.
revoke_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    revoke_certificate(Client, Input, []).

-spec revoke_certificate(aws_client:aws_client(), revoke_certificate_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, revoke_certificate_errors(), tuple()}.
revoke_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RevokeCertificate">>, Input, Options).

%% @doc Adds one or more tags to your private CA.
%%
%% Tags are labels that you can use to identify and organize your Amazon Web
%% Services resources. Each tag consists of a key and an optional value. You
%% specify the private CA on input by its Amazon Resource Name (ARN). You
%% specify the tag by using a key-value pair. You can apply a tag to just one
%% private CA if you want to identify a specific characteristic of that CA,
%% or you can apply the same tag to multiple private CAs if you want to
%% filter for a common relationship among those CAs. To remove one or more
%% tags, use the UntagCertificateAuthority:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_UntagCertificateAuthority.html
%% action. Call the ListTags:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListTags.html
%% action to see what tags are associated with your CA.
%%
%% To attach tags to a private CA during the creation procedure, a CA
%% administrator must first associate an inline IAM policy with the
%% `CreateCertificateAuthority' action and explicitly allow tagging. For
%% more information, see Attaching tags to a CA at the time of creation:
%% https://docs.aws.amazon.com/privateca/latest/userguide/auth-InlinePolicies.html#policy-tag-ca.
-spec tag_certificate_authority(aws_client:aws_client(), tag_certificate_authority_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_certificate_authority_errors(), tuple()}.
tag_certificate_authority(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_certificate_authority(Client, Input, []).

-spec tag_certificate_authority(aws_client:aws_client(), tag_certificate_authority_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_certificate_authority_errors(), tuple()}.
tag_certificate_authority(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagCertificateAuthority">>, Input, Options).

%% @doc Remove one or more tags from your private CA.
%%
%% A tag consists of a key-value pair. If you do not specify the value
%% portion of the tag when calling this action, the tag will be removed
%% regardless of value. If you specify a value, the tag is removed only if it
%% is associated with the specified value. To add tags to a private CA, use
%% the TagCertificateAuthority:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_TagCertificateAuthority.html.
%% Call the ListTags:
%% https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListTags.html
%% action to see what tags are associated with your CA.
-spec untag_certificate_authority(aws_client:aws_client(), untag_certificate_authority_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_certificate_authority_errors(), tuple()}.
untag_certificate_authority(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_certificate_authority(Client, Input, []).

-spec untag_certificate_authority(aws_client:aws_client(), untag_certificate_authority_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_certificate_authority_errors(), tuple()}.
untag_certificate_authority(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagCertificateAuthority">>, Input, Options).

%% @doc Updates the status or configuration of a private certificate
%% authority (CA).
%%
%% Your private CA must be in the `ACTIVE' or `DISABLED' state before
%% you can update it. You can disable a private CA that is in the
%% `ACTIVE' state or make a CA that is in the `DISABLED' state active
%% again.
%%
%% Both Amazon Web Services Private CA and the IAM principal must have
%% permission to write to the S3 bucket that you specify. If the IAM
%% principal making the call does not have permission to write to the bucket,
%% then an exception is thrown. For more information, see Access policies for
%% CRLs in Amazon S3:
%% https://docs.aws.amazon.com/privateca/latest/userguide/crl-planning.html#s3-policies.
-spec update_certificate_authority(aws_client:aws_client(), update_certificate_authority_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_certificate_authority_errors(), tuple()}.
update_certificate_authority(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_certificate_authority(Client, Input, []).

-spec update_certificate_authority(aws_client:aws_client(), update_certificate_authority_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_certificate_authority_errors(), tuple()}.
update_certificate_authority(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCertificateAuthority">>, Input, Options).

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
    Client1 = Client#{service => <<"acm-pca">>},
    Host = build_host(<<"acm-pca">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"ACMPrivateCA.", Action/binary>>}
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
