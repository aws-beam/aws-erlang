%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Certificate Manager
%%
%% You can use Certificate Manager (ACM) to manage SSL/TLS certificates for
%% your Amazon Web Services-based websites and applications.
%%
%% For more information about using ACM, see the Certificate Manager User
%% Guide: https://docs.aws.amazon.com/acm/latest/userguide/.
-module(aws_acm).

-export([add_tags_to_certificate/2,
         add_tags_to_certificate/3,
         create_acme_domain_validation/2,
         create_acme_domain_validation/3,
         create_acme_endpoint/2,
         create_acme_endpoint/3,
         create_acme_external_account_binding/2,
         create_acme_external_account_binding/3,
         delete_acme_domain_validation/2,
         delete_acme_domain_validation/3,
         delete_acme_endpoint/2,
         delete_acme_endpoint/3,
         delete_acme_external_account_binding/2,
         delete_acme_external_account_binding/3,
         delete_certificate/2,
         delete_certificate/3,
         describe_acme_account/2,
         describe_acme_account/3,
         describe_acme_domain_validation/2,
         describe_acme_domain_validation/3,
         describe_acme_endpoint/2,
         describe_acme_endpoint/3,
         describe_acme_external_account_binding/2,
         describe_acme_external_account_binding/3,
         describe_certificate/2,
         describe_certificate/3,
         export_certificate/2,
         export_certificate/3,
         get_account_configuration/2,
         get_account_configuration/3,
         get_acme_external_account_binding_credentials/2,
         get_acme_external_account_binding_credentials/3,
         get_certificate/2,
         get_certificate/3,
         import_certificate/2,
         import_certificate/3,
         list_acme_accounts/2,
         list_acme_accounts/3,
         list_acme_domain_validations/2,
         list_acme_domain_validations/3,
         list_acme_endpoints/2,
         list_acme_endpoints/3,
         list_acme_external_account_bindings/2,
         list_acme_external_account_bindings/3,
         list_certificates/2,
         list_certificates/3,
         list_tags_for_certificate/2,
         list_tags_for_certificate/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_account_configuration/2,
         put_account_configuration/3,
         remove_tags_from_certificate/2,
         remove_tags_from_certificate/3,
         renew_certificate/2,
         renew_certificate/3,
         request_certificate/2,
         request_certificate/3,
         resend_validation_email/2,
         resend_validation_email/3,
         revoke_acme_account/2,
         revoke_acme_account/3,
         revoke_acme_external_account_binding/2,
         revoke_acme_external_account_binding/3,
         revoke_certificate/2,
         revoke_certificate/3,
         search_certificates/2,
         search_certificates/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_acme_domain_validation/2,
         update_acme_domain_validation/3,
         update_acme_endpoint/2,
         update_acme_endpoint/3,
         update_certificate_options/2,
         update_certificate_options/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% acme_domain_validation_summary() :: #{
%%   <<"AcmeDomainValidationArn">> => string(),
%%   <<"AcmeEndpointArn">> => string(),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"DomainName">> => string(),
%%   <<"FailureDetails">> => failure_details(),
%%   <<"PrevalidationDetails">> => list(),
%%   <<"PrevalidationType">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedAt">> => [non_neg_integer()]
%% }
-type acme_domain_validation_summary() :: #{binary() => any()}.

%% Example:
%% update_certificate_options_request() :: #{
%%   <<"CertificateArn">> := string(),
%%   <<"Options">> := certificate_options()
%% }
-type update_certificate_options_request() :: #{binary() => any()}.

%% Example:
%% domain_validation_option() :: #{
%%   <<"DomainName">> => string(),
%%   <<"ValidationDomain">> => string()
%% }
-type domain_validation_option() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% create_acme_endpoint_response() :: #{
%%   <<"AcmeEndpointArn">> => string()
%% }
-type create_acme_endpoint_response() :: #{binary() => any()}.

%% Example:
%% describe_acme_endpoint_response() :: #{
%%   <<"AcmeEndpoint">> => acme_endpoint()
%% }
-type describe_acme_endpoint_response() :: #{binary() => any()}.

%% Example:
%% dns_prevalidation_details() :: #{
%%   <<"DomainScope">> => domain_scope(),
%%   <<"HostedZoneId">> => string(),
%%   <<"ResourceRecord">> => resource_record()
%% }
-type dns_prevalidation_details() :: #{binary() => any()}.

%% Example:
%% request_in_progress_exception() :: #{
%%   <<"message">> => string()
%% }
-type request_in_progress_exception() :: #{binary() => any()}.

%% Example:
%% dns_name_filter() :: #{
%%   <<"ComparisonOperator">> => list(any()),
%%   <<"Value">> => string()
%% }
-type dns_name_filter() :: #{binary() => any()}.

%% Example:
%% create_acme_external_account_binding_request() :: #{
%%   <<"AcmeEndpointArn">> := string(),
%%   <<"Expiration">> => expiration(),
%%   <<"IdempotencyToken">> => [string()],
%%   <<"RoleArn">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_acme_external_account_binding_request() :: #{binary() => any()}.

%% Example:
%% describe_acme_external_account_binding_request() :: #{
%%   <<"AcmeExternalAccountBindingArn">> := string()
%% }
-type describe_acme_external_account_binding_request() :: #{binary() => any()}.

%% Example:
%% acme_account_summary() :: #{
%%   <<"AccountUrl">> => [string()],
%%   <<"AcmeExternalAccountBindingArn">> => string(),
%%   <<"Contacts">> => list([string()]()),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"PublicKeyThumbprint">> => [string()],
%%   <<"Status">> => list(any())
%% }
-type acme_account_summary() :: #{binary() => any()}.

%% Example:
%% list_acme_accounts_request() :: #{
%%   <<"AcmeEndpointArn">> := string(),
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => [string()]
%% }
-type list_acme_accounts_request() :: #{binary() => any()}.

%% Example:
%% revoke_certificate_request() :: #{
%%   <<"CertificateArn">> := string(),
%%   <<"RevocationReason">> := list(any())
%% }
-type revoke_certificate_request() :: #{binary() => any()}.

%% Example:
%% list_acme_accounts_response() :: #{
%%   <<"AcmeAccounts">> => list(acme_account_summary()),
%%   <<"NextToken">> => [string()]
%% }
-type list_acme_accounts_response() :: #{binary() => any()}.

%% Example:
%% search_certificates_request() :: #{
%%   <<"FilterStatement">> => list(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type search_certificates_request() :: #{binary() => any()}.

%% Example:
%% resource_in_use_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.

%% Example:
%% delete_acme_external_account_binding_request() :: #{
%%   <<"AcmeExternalAccountBindingArn">> := string()
%% }
-type delete_acme_external_account_binding_request() :: #{binary() => any()}.

%% Example:
%% delete_acme_domain_validation_request() :: #{
%%   <<"AcmeDomainValidationArn">> := string()
%% }
-type delete_acme_domain_validation_request() :: #{binary() => any()}.

%% Example:
%% create_acme_domain_validation_request() :: #{
%%   <<"AcmeEndpointArn">> := string(),
%%   <<"DomainName">> := string(),
%%   <<"IdempotencyToken">> => [string()],
%%   <<"PrevalidationOptions">> := list(),
%%   <<"Tags">> => list(tag())
%% }
-type create_acme_domain_validation_request() :: #{binary() => any()}.

%% Example:
%% export_certificate_response() :: #{
%%   <<"Certificate">> => string(),
%%   <<"CertificateChain">> => string(),
%%   <<"PrivateKey">> => string()
%% }
-type export_certificate_response() :: #{binary() => any()}.

%% Example:
%% list_acme_external_account_bindings_response() :: #{
%%   <<"ExternalAccountBindings">> => list(acme_external_account_binding_summary()),
%%   <<"NextToken">> => [string()]
%% }
-type list_acme_external_account_bindings_response() :: #{binary() => any()}.

%% Example:
%% revoke_acme_external_account_binding_request() :: #{
%%   <<"AcmeExternalAccountBindingArn">> := string()
%% }
-type revoke_acme_external_account_binding_request() :: #{binary() => any()}.

%% Example:
%% describe_acme_account_request() :: #{
%%   <<"AccountUrl">> := [string()],
%%   <<"AcmeEndpointArn">> := string()
%% }
-type describe_acme_account_request() :: #{binary() => any()}.

%% Example:
%% update_acme_domain_validation_request() :: #{
%%   <<"AcmeDomainValidationArn">> := string(),
%%   <<"PrevalidationOptions">> => list()
%% }
-type update_acme_domain_validation_request() :: #{binary() => any()}.

%% Example:
%% import_certificate_response() :: #{
%%   <<"CertificateArn">> => string()
%% }
-type import_certificate_response() :: #{binary() => any()}.

%% Example:
%% export_certificate_request() :: #{
%%   <<"CertificateArn">> := string(),
%%   <<"Passphrase">> := binary()
%% }
-type export_certificate_request() :: #{binary() => any()}.

%% Example:
%% tag_policy_exception() :: #{
%%   <<"message">> => string()
%% }
-type tag_policy_exception() :: #{binary() => any()}.

%% Example:
%% renewal_summary() :: #{
%%   <<"DomainValidationOptions">> => list(domain_validation()),
%%   <<"RenewalStatus">> => list(any()),
%%   <<"RenewalStatusReason">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type renewal_summary() :: #{binary() => any()}.

%% Example:
%% http_redirect() :: #{
%%   <<"RedirectFrom">> => string(),
%%   <<"RedirectTo">> => string()
%% }
-type http_redirect() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% invalid_state_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_state_exception() :: #{binary() => any()}.

%% Example:
%% list_certificates_request() :: #{
%%   <<"CertificateKeyPairOrigins">> => list(list(any())()),
%%   <<"CertificateStatuses">> => list(list(any())()),
%%   <<"Includes">> => filters(),
%%   <<"MaxItems">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_certificates_request() :: #{binary() => any()}.

%% Example:
%% request_certificate_request() :: #{
%%   <<"CertificateAuthorityArn">> => string(),
%%   <<"DomainName">> := string(),
%%   <<"DomainValidationOptions">> => list(domain_validation_option()),
%%   <<"IdempotencyToken">> => string(),
%%   <<"KeyAlgorithm">> => list(any()),
%%   <<"ManagedBy">> => list(any()),
%%   <<"Options">> => certificate_options(),
%%   <<"SubjectAlternativeNames">> => list(string()),
%%   <<"Tags">> => list(tag()),
%%   <<"ValidationMethod">> => list(any())
%% }
-type request_certificate_request() :: #{binary() => any()}.

%% Example:
%% acme_endpoint_summary() :: #{
%%   <<"AcmeEndpointArn">> => string(),
%%   <<"AuthorizationBehavior">> => list(any()),
%%   <<"CertificateAuthority">> => list(),
%%   <<"CertificateTags">> => list(tag()),
%%   <<"Contact">> => list(any()),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"EndpointUrl">> => [string()],
%%   <<"FailureReason">> => [string()],
%%   <<"Status">> => list(any()),
%%   <<"UpdatedAt">> => [non_neg_integer()]
%% }
-type acme_endpoint_summary() :: #{binary() => any()}.

%% Example:
%% failure_details() :: #{
%%   <<"Message">> => [string()],
%%   <<"Reason">> => list(any())
%% }
-type failure_details() :: #{binary() => any()}.

%% Example:
%% remove_tags_from_certificate_request() :: #{
%%   <<"CertificateArn">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type remove_tags_from_certificate_request() :: #{binary() => any()}.

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
%% describe_acme_domain_validation_response() :: #{
%%   <<"AcmeDomainValidation">> => acme_domain_validation()
%% }
-type describe_acme_domain_validation_response() :: #{binary() => any()}.

%% Example:
%% certificate_summary() :: #{
%%   <<"CertificateArn">> => string(),
%%   <<"CertificateKeyPairOrigin">> => list(any()),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DomainName">> => string(),
%%   <<"ExportOption">> => list(any()),
%%   <<"Exported">> => boolean(),
%%   <<"ExtendedKeyUsages">> => list(list(any())()),
%%   <<"HasAdditionalSubjectAlternativeNames">> => boolean(),
%%   <<"ImportedAt">> => non_neg_integer(),
%%   <<"InUse">> => boolean(),
%%   <<"IssuedAt">> => non_neg_integer(),
%%   <<"KeyAlgorithm">> => list(any()),
%%   <<"KeyUsages">> => list(list(any())()),
%%   <<"ManagedBy">> => list(any()),
%%   <<"NotAfter">> => non_neg_integer(),
%%   <<"NotBefore">> => non_neg_integer(),
%%   <<"RenewalEligibility">> => list(any()),
%%   <<"RevokedAt">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"SubjectAlternativeNameSummaries">> => list(string()),
%%   <<"Type">> => list(any())
%% }
-type certificate_summary() :: #{binary() => any()}.

%% Example:
%% renew_certificate_request() :: #{
%%   <<"CertificateArn">> := string()
%% }
-type renew_certificate_request() :: #{binary() => any()}.

%% Example:
%% certificate_options() :: #{
%%   <<"CertificateTransparencyLoggingPreference">> => list(any()),
%%   <<"Export">> => list(any())
%% }
-type certificate_options() :: #{binary() => any()}.

%% Example:
%% create_acme_endpoint_request() :: #{
%%   <<"AuthorizationBehavior">> := list(any()),
%%   <<"CertificateAuthority">> := list(),
%%   <<"CertificateTags">> => list(tag()),
%%   <<"Contact">> => list(any()),
%%   <<"IdempotencyToken">> => [string()],
%%   <<"Tags">> => list(tag())
%% }
-type create_acme_endpoint_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_certificate_request() :: #{
%%   <<"CertificateArn">> := string()
%% }
-type list_tags_for_certificate_request() :: #{binary() => any()}.

%% Example:
%% get_acme_external_account_binding_credentials_request() :: #{
%%   <<"AcmeExternalAccountBindingArn">> := string()
%% }
-type get_acme_external_account_binding_credentials_request() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% expiry_events_configuration() :: #{
%%   <<"DaysBeforeExpiry">> => integer()
%% }
-type expiry_events_configuration() :: #{binary() => any()}.

%% Example:
%% create_acme_external_account_binding_response() :: #{
%%   <<"ExternalAccountBinding">> => acme_external_account_binding()
%% }
-type create_acme_external_account_binding_response() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% acme_external_account_binding_summary() :: #{
%%   <<"AcmeEndpointArn">> => string(),
%%   <<"AcmeExternalAccountBindingArn">> => string(),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"ExpiresAt">> => [non_neg_integer()],
%%   <<"LastUsedAt">> => [non_neg_integer()],
%%   <<"RevokedAt">> => [non_neg_integer()],
%%   <<"RoleArn">> => string(),
%%   <<"UpdatedAt">> => [non_neg_integer()]
%% }
-type acme_external_account_binding_summary() :: #{binary() => any()}.

%% Example:
%% list_acme_domain_validations_response() :: #{
%%   <<"AcmeDomainValidations">> => list(acme_domain_validation_summary()),
%%   <<"NextToken">> => [string()]
%% }
-type list_acme_domain_validations_response() :: #{binary() => any()}.

%% Example:
%% public_certificate_authority() :: #{
%%   <<"AllowedKeyAlgorithms">> => list(list(any())())
%% }
-type public_certificate_authority() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% put_account_configuration_request() :: #{
%%   <<"ExpiryEvents">> => expiry_events_configuration(),
%%   <<"IdempotencyToken">> := string()
%% }
-type put_account_configuration_request() :: #{binary() => any()}.

%% Example:
%% dns_prevalidation_options() :: #{
%%   <<"DomainScope">> => domain_scope(),
%%   <<"HostedZoneId">> => string()
%% }
-type dns_prevalidation_options() :: #{binary() => any()}.

%% Example:
%% get_certificate_request() :: #{
%%   <<"CertificateArn">> := string()
%% }
-type get_certificate_request() :: #{binary() => any()}.

%% Example:
%% describe_certificate_request() :: #{
%%   <<"CertificateArn">> := string()
%% }
-type describe_certificate_request() :: #{binary() => any()}.

%% Example:
%% other_name() :: #{
%%   <<"ObjectIdentifier">> => string(),
%%   <<"Value">> => string()
%% }
-type other_name() :: #{binary() => any()}.

%% Example:
%% distinguished_name() :: #{
%%   <<"CommonName">> => string(),
%%   <<"Country">> => string(),
%%   <<"CustomAttributes">> => list(custom_attribute()),
%%   <<"DistinguishedNameQualifier">> => string(),
%%   <<"DomainComponents">> => list(string()),
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
-type distinguished_name() :: #{binary() => any()}.

%% Example:
%% request_certificate_response() :: #{
%%   <<"CertificateArn">> => string()
%% }
-type request_certificate_response() :: #{binary() => any()}.

%% Example:
%% common_name_filter() :: #{
%%   <<"ComparisonOperator">> => list(any()),
%%   <<"Value">> => string()
%% }
-type common_name_filter() :: #{binary() => any()}.

%% Example:
%% get_account_configuration_response() :: #{
%%   <<"ExpiryEvents">> => expiry_events_configuration()
%% }
-type get_account_configuration_response() :: #{binary() => any()}.

%% Example:
%% resend_validation_email_request() :: #{
%%   <<"CertificateArn">> := string(),
%%   <<"Domain">> := string(),
%%   <<"ValidationDomain">> := string()
%% }
-type resend_validation_email_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_certificate_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_certificate_response() :: #{binary() => any()}.

%% Example:
%% describe_acme_account_response() :: #{
%%   <<"AcmeAccount">> => acme_account()
%% }
-type describe_acme_account_response() :: #{binary() => any()}.

%% Example:
%% get_acme_external_account_binding_credentials_response() :: #{
%%   <<"KeyId">> => [string()],
%%   <<"MacKey">> => string()
%% }
-type get_acme_external_account_binding_credentials_response() :: #{binary() => any()}.

%% Example:
%% revoke_acme_account_request() :: #{
%%   <<"AccountUrl">> := [string()],
%%   <<"AcmeEndpointArn">> := string()
%% }
-type revoke_acme_account_request() :: #{binary() => any()}.

%% Example:
%% invalid_domain_validation_options_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_domain_validation_options_exception() :: #{binary() => any()}.

%% Example:
%% add_tags_to_certificate_request() :: #{
%%   <<"CertificateArn">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type add_tags_to_certificate_request() :: #{binary() => any()}.

%% Example:
%% list_acme_endpoints_response() :: #{
%%   <<"AcmeEndpoints">> => list(acme_endpoint_summary()),
%%   <<"NextToken">> => [string()]
%% }
-type list_acme_endpoints_response() :: #{binary() => any()}.

%% Example:
%% acme_external_account_binding() :: #{
%%   <<"AcmeEndpointArn">> => string(),
%%   <<"AcmeExternalAccountBindingArn">> => string(),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"ExpiresAt">> => [non_neg_integer()],
%%   <<"LastUsedAt">> => [non_neg_integer()],
%%   <<"RevokedAt">> => [non_neg_integer()],
%%   <<"RoleArn">> => string(),
%%   <<"UpdatedAt">> => [non_neg_integer()]
%% }
-type acme_external_account_binding() :: #{binary() => any()}.

%% Example:
%% describe_acme_external_account_binding_response() :: #{
%%   <<"ExternalAccountBinding">> => acme_external_account_binding()
%% }
-type describe_acme_external_account_binding_response() :: #{binary() => any()}.

%% Example:
%% acm_certificate_metadata() :: #{
%%   <<"AcmeAccountId">> => string(),
%%   <<"AcmeEndpointArn">> => string(),
%%   <<"CertificateKeyPairOrigin">> => list(any()),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"ExportOption">> => list(any()),
%%   <<"Exported">> => boolean(),
%%   <<"ImportedAt">> => non_neg_integer(),
%%   <<"InUse">> => boolean(),
%%   <<"IssuedAt">> => non_neg_integer(),
%%   <<"ManagedBy">> => list(any()),
%%   <<"RenewalEligibility">> => list(any()),
%%   <<"RenewalStatus">> => list(any()),
%%   <<"RevokedAt">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"Type">> => list(any()),
%%   <<"ValidationMethod">> => list(any())
%% }
-type acm_certificate_metadata() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% delete_acme_endpoint_request() :: #{
%%   <<"AcmeEndpointArn">> := string()
%% }
-type delete_acme_endpoint_request() :: #{binary() => any()}.

%% Example:
%% acme_account() :: #{
%%   <<"AccountUrl">> => [string()],
%%   <<"AcmeExternalAccountBindingArn">> => string(),
%%   <<"Contacts">> => list([string()]()),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"PublicKeyThumbprint">> => [string()],
%%   <<"Status">> => list(any())
%% }
-type acme_account() :: #{binary() => any()}.

%% Example:
%% timestamp_range() :: #{
%%   <<"End">> => non_neg_integer(),
%%   <<"Start">> => non_neg_integer()
%% }
-type timestamp_range() :: #{binary() => any()}.

%% Example:
%% import_certificate_request() :: #{
%%   <<"Certificate">> := binary(),
%%   <<"CertificateArn">> => string(),
%%   <<"CertificateChain">> => binary(),
%%   <<"PrivateKey">> := binary(),
%%   <<"Tags">> => list(tag())
%% }
-type import_certificate_request() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.

%% Example:
%% delete_certificate_request() :: #{
%%   <<"CertificateArn">> := string()
%% }
-type delete_certificate_request() :: #{binary() => any()}.

%% Example:
%% describe_certificate_response() :: #{
%%   <<"Certificate">> => certificate_detail()
%% }
-type describe_certificate_response() :: #{binary() => any()}.

%% Example:
%% domain_scope() :: #{
%%   <<"ExactDomain">> => list(any()),
%%   <<"Subdomains">> => list(any()),
%%   <<"Wildcards">> => list(any())
%% }
-type domain_scope() :: #{binary() => any()}.

%% Example:
%% list_acme_domain_validations_request() :: #{
%%   <<"AcmeEndpointArn">> := string(),
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => [string()]
%% }
-type list_acme_domain_validations_request() :: #{binary() => any()}.

%% Example:
%% list_acme_external_account_bindings_request() :: #{
%%   <<"AcmeEndpointArn">> := string(),
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => [string()]
%% }
-type list_acme_external_account_bindings_request() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string(),
%%   <<"throttlingReasons">> => list(throttling_reason())
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% create_acme_domain_validation_response() :: #{
%%   <<"AcmeDomainValidationArn">> => string()
%% }
-type create_acme_domain_validation_response() :: #{binary() => any()}.

%% Example:
%% x509_attributes() :: #{
%%   <<"ExtendedKeyUsages">> => list(list(any())()),
%%   <<"Issuer">> => distinguished_name(),
%%   <<"KeyAlgorithm">> => list(any()),
%%   <<"KeyUsages">> => list(list(any())()),
%%   <<"NotAfter">> => non_neg_integer(),
%%   <<"NotBefore">> => non_neg_integer(),
%%   <<"SerialNumber">> => string(),
%%   <<"Subject">> => distinguished_name(),
%%   <<"SubjectAlternativeNames">> => list(list())
%% }
-type x509_attributes() :: #{binary() => any()}.

%% Example:
%% filters() :: #{
%%   <<"exportOption">> => list(any()),
%%   <<"extendedKeyUsage">> => list(list(any())()),
%%   <<"keyTypes">> => list(list(any())()),
%%   <<"keyUsage">> => list(list(any())()),
%%   <<"managedBy">> => list(any())
%% }
-type filters() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% list_acme_endpoints_request() :: #{
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => [string()]
%% }
-type list_acme_endpoints_request() :: #{binary() => any()}.

%% Example:
%% expiration() :: #{
%%   <<"Type">> => list(any()),
%%   <<"Value">> => [float()]
%% }
-type expiration() :: #{binary() => any()}.

%% Example:
%% describe_acme_endpoint_request() :: #{
%%   <<"AcmeEndpointArn">> := string()
%% }
-type describe_acme_endpoint_request() :: #{binary() => any()}.

%% Example:
%% describe_acme_domain_validation_request() :: #{
%%   <<"AcmeDomainValidationArn">> := string()
%% }
-type describe_acme_domain_validation_request() :: #{binary() => any()}.

%% Example:
%% extended_key_usage() :: #{
%%   <<"Name">> => list(any()),
%%   <<"OID">> => string()
%% }
-type extended_key_usage() :: #{binary() => any()}.

%% Example:
%% acme_domain_validation() :: #{
%%   <<"AcmeDomainValidationArn">> => string(),
%%   <<"AcmeEndpointArn">> => string(),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"DomainName">> => string(),
%%   <<"FailureDetails">> => failure_details(),
%%   <<"PrevalidationDetails">> => list(),
%%   <<"PrevalidationType">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedAt">> => [non_neg_integer()]
%% }
-type acme_domain_validation() :: #{binary() => any()}.

%% Example:
%% domain_validation() :: #{
%%   <<"DomainName">> => string(),
%%   <<"HttpRedirect">> => http_redirect(),
%%   <<"ResourceRecord">> => resource_record(),
%%   <<"ValidationDomain">> => string(),
%%   <<"ValidationEmails">> => list(string()),
%%   <<"ValidationMethod">> => list(any()),
%%   <<"ValidationStatus">> => list(any())
%% }
-type domain_validation() :: #{binary() => any()}.

%% Example:
%% resource_record() :: #{
%%   <<"Name">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"Value">> => string()
%% }
-type resource_record() :: #{binary() => any()}.

%% Example:
%% revoke_certificate_response() :: #{
%%   <<"CertificateArn">> => string()
%% }
-type revoke_certificate_response() :: #{binary() => any()}.

%% Example:
%% throttling_reason() :: #{
%%   <<"reason">> => string(),
%%   <<"resource">> => string()
%% }
-type throttling_reason() :: #{binary() => any()}.

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
%% update_acme_endpoint_request() :: #{
%%   <<"AcmeEndpointArn">> := string(),
%%   <<"AuthorizationBehavior">> => list(any()),
%%   <<"CertificateAuthority">> => list(),
%%   <<"Contact">> => list(any())
%% }
-type update_acme_endpoint_request() :: #{binary() => any()}.

%% Example:
%% certificate_search_result() :: #{
%%   <<"CertificateArn">> => string(),
%%   <<"CertificateMetadata">> => list(),
%%   <<"X509Attributes">> => x509_attributes()
%% }
-type certificate_search_result() :: #{binary() => any()}.

%% Example:
%% key_usage() :: #{
%%   <<"Name">> => list(any())
%% }
-type key_usage() :: #{binary() => any()}.

%% Example:
%% too_many_tags_exception() :: #{
%%   <<"message">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.

%% Example:
%% list_certificates_response() :: #{
%%   <<"CertificateSummaryList">> => list(certificate_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_certificates_response() :: #{binary() => any()}.

%% Example:
%% certificate_detail() :: #{
%%   <<"AcmeAccountId">> => string(),
%%   <<"AcmeEndpointArn">> => string(),
%%   <<"CertificateArn">> => string(),
%%   <<"CertificateAuthorityArn">> => string(),
%%   <<"CertificateKeyPairOrigin">> => list(any()),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DomainName">> => string(),
%%   <<"DomainValidationOptions">> => list(domain_validation()),
%%   <<"ExtendedKeyUsages">> => list(extended_key_usage()),
%%   <<"FailureReason">> => list(any()),
%%   <<"ImportedAt">> => non_neg_integer(),
%%   <<"InUseBy">> => list(string()),
%%   <<"IssuedAt">> => non_neg_integer(),
%%   <<"Issuer">> => string(),
%%   <<"KeyAlgorithm">> => list(any()),
%%   <<"KeyUsages">> => list(key_usage()),
%%   <<"ManagedBy">> => list(any()),
%%   <<"NotAfter">> => non_neg_integer(),
%%   <<"NotBefore">> => non_neg_integer(),
%%   <<"Options">> => certificate_options(),
%%   <<"RenewalEligibility">> => list(any()),
%%   <<"RenewalSummary">> => renewal_summary(),
%%   <<"RevocationReason">> => list(any()),
%%   <<"RevokedAt">> => non_neg_integer(),
%%   <<"Serial">> => string(),
%%   <<"SignatureAlgorithm">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Subject">> => string(),
%%   <<"SubjectAlternativeNames">> => list(string()),
%%   <<"Type">> => list(any())
%% }
-type certificate_detail() :: #{binary() => any()}.

%% Example:
%% search_certificates_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Results">> => list(certificate_search_result())
%% }
-type search_certificates_response() :: #{binary() => any()}.

%% Example:
%% acme_endpoint() :: #{
%%   <<"AcmeEndpointArn">> => string(),
%%   <<"AuthorizationBehavior">> => list(any()),
%%   <<"CertificateAuthority">> => list(),
%%   <<"CertificateTags">> => list(tag()),
%%   <<"Contact">> => list(any()),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"EndpointUrl">> => [string()],
%%   <<"FailureReason">> => [string()],
%%   <<"Status">> => list(any()),
%%   <<"UpdatedAt">> => [non_neg_integer()]
%% }
-type acme_endpoint() :: #{binary() => any()}.

-type add_tags_to_certificate_errors() ::
    too_many_tags_exception() | 
    invalid_tag_exception() | 
    throttling_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    tag_policy_exception().

-type create_acme_domain_validation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_acme_endpoint_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_acme_external_account_binding_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_acme_domain_validation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_acme_endpoint_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_acme_external_account_binding_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type delete_certificate_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    invalid_arn_exception() | 
    resource_in_use_exception().

-type describe_acme_account_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_acme_domain_validation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_acme_endpoint_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_acme_external_account_binding_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_certificate_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception().

-type export_certificate_errors() ::
    throttling_exception() | 
    validation_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    request_in_progress_exception().

-type get_account_configuration_errors() ::
    throttling_exception() | 
    access_denied_exception().

-type get_acme_external_account_binding_credentials_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_certificate_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    request_in_progress_exception().

-type import_certificate_errors() ::
    too_many_tags_exception() | 
    invalid_tag_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    invalid_arn_exception() | 
    tag_policy_exception().

-type list_acme_accounts_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_acme_domain_validations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_acme_endpoints_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_acme_external_account_bindings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_certificates_errors() ::
    validation_exception() | 
    invalid_args_exception().

-type list_tags_for_certificate_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type put_account_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    conflict_exception().

-type remove_tags_from_certificate_errors() ::
    invalid_tag_exception() | 
    throttling_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    tag_policy_exception().

-type renew_certificate_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    request_in_progress_exception().

-type request_certificate_errors() ::
    too_many_tags_exception() | 
    invalid_tag_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    invalid_domain_validation_options_exception() | 
    invalid_arn_exception() | 
    tag_policy_exception().

-type resend_validation_email_errors() ::
    validation_exception() | 
    invalid_domain_validation_options_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    invalid_state_exception().

-type revoke_acme_account_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type revoke_acme_external_account_binding_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type revoke_certificate_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    invalid_arn_exception() | 
    resource_in_use_exception().

-type search_certificates_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type update_acme_domain_validation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_acme_endpoint_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_certificate_options_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    invalid_state_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds one or more tags to an ACM certificate.
%%
%% Tags are labels that you can use to identify and organize your Amazon Web
%% Services resources. Each tag consists of a `key' and an optional
%% `value'. You specify the certificate on input by its Amazon Resource
%% Name (ARN). You specify the tag by using a key-value pair.
%%
%% This action applies only to the `certificate' resource type. For all
%% other ACM resource types, use `TagResource' instead.
%%
%% You can apply a tag to just one certificate if you want to identify a
%% specific characteristic of that certificate, or you can apply the same tag
%% to multiple certificates if you want to filter for a common relationship
%% among those certificates. Similarly, you can apply the same tag to
%% multiple resources if you want to specify a relationship among those
%% resources. For example, you can add the same tag to an ACM certificate and
%% an Elastic Load Balancing load balancer to indicate that they are both
%% used by the same website. For more information, see Tagging ACM
%% certificates: https://docs.aws.amazon.com/acm/latest/userguide/tags.html.
%%
%% To remove one or more tags, use the `RemoveTagsFromCertificate'
%% action. To view all of the tags that have been applied to the certificate,
%% use the `ListTagsForCertificate' action.
-spec add_tags_to_certificate(aws_client:aws_client(), add_tags_to_certificate_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, add_tags_to_certificate_errors(), tuple()}.
add_tags_to_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags_to_certificate(Client, Input, []).

-spec add_tags_to_certificate(aws_client:aws_client(), add_tags_to_certificate_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, add_tags_to_certificate_errors(), tuple()}.
add_tags_to_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTagsToCertificate">>, Input, Options).

%% @doc Creates a domain validation for an ACME endpoint.
%%
%% Domain validations authorize the endpoint to issue certificates for
%% specified domain names. You configure prevalidation to prove domain
%% ownership.
-spec create_acme_domain_validation(aws_client:aws_client(), create_acme_domain_validation_request()) ->
    {ok, create_acme_domain_validation_response(), tuple()} |
    {error, any()} |
    {error, create_acme_domain_validation_errors(), tuple()}.
create_acme_domain_validation(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_acme_domain_validation(Client, Input, []).

-spec create_acme_domain_validation(aws_client:aws_client(), create_acme_domain_validation_request(), proplists:proplist()) ->
    {ok, create_acme_domain_validation_response(), tuple()} |
    {error, any()} |
    {error, create_acme_domain_validation_errors(), tuple()}.
create_acme_domain_validation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAcmeDomainValidation">>, Input, Options).

%% @doc Creates an ACME endpoint, which is a managed ACME server with a
%% unique endpoint URL.
%%
%% After creation, ACME clients can use the endpoint URL to automate
%% certificate issuance using the ACME protocol.
-spec create_acme_endpoint(aws_client:aws_client(), create_acme_endpoint_request()) ->
    {ok, create_acme_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_acme_endpoint_errors(), tuple()}.
create_acme_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_acme_endpoint(Client, Input, []).

-spec create_acme_endpoint(aws_client:aws_client(), create_acme_endpoint_request(), proplists:proplist()) ->
    {ok, create_acme_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_acme_endpoint_errors(), tuple()}.
create_acme_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAcmeEndpoint">>, Input, Options).

%% @doc Creates an external account binding (EAB) for an ACME endpoint.
%%
%% An EAB provides credentials that authorize an ACME client to register an
%% account with the endpoint. Each EAB is associated with an IAM role that
%% controls what certificate operations the ACME client can perform.
-spec create_acme_external_account_binding(aws_client:aws_client(), create_acme_external_account_binding_request()) ->
    {ok, create_acme_external_account_binding_response(), tuple()} |
    {error, any()} |
    {error, create_acme_external_account_binding_errors(), tuple()}.
create_acme_external_account_binding(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_acme_external_account_binding(Client, Input, []).

-spec create_acme_external_account_binding(aws_client:aws_client(), create_acme_external_account_binding_request(), proplists:proplist()) ->
    {ok, create_acme_external_account_binding_response(), tuple()} |
    {error, any()} |
    {error, create_acme_external_account_binding_errors(), tuple()}.
create_acme_external_account_binding(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAcmeExternalAccountBinding">>, Input, Options).

%% @doc Deletes a domain validation.
%%
%% After deletion, the ACME endpoint can no longer issue certificates for the
%% associated domain.
-spec delete_acme_domain_validation(aws_client:aws_client(), delete_acme_domain_validation_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_acme_domain_validation_errors(), tuple()}.
delete_acme_domain_validation(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_acme_domain_validation(Client, Input, []).

-spec delete_acme_domain_validation(aws_client:aws_client(), delete_acme_domain_validation_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_acme_domain_validation_errors(), tuple()}.
delete_acme_domain_validation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAcmeDomainValidation">>, Input, Options).

%% @doc Deletes an ACME endpoint.
%%
%% After deletion, the endpoint URL is no longer accessible and ACME clients
%% cannot issue certificates through it. Any existing external account
%% bindings and domain validations associated with the endpoint are also
%% deleted.
-spec delete_acme_endpoint(aws_client:aws_client(), delete_acme_endpoint_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_acme_endpoint_errors(), tuple()}.
delete_acme_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_acme_endpoint(Client, Input, []).

-spec delete_acme_endpoint(aws_client:aws_client(), delete_acme_endpoint_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_acme_endpoint_errors(), tuple()}.
delete_acme_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAcmeEndpoint">>, Input, Options).

%% @doc Deletes an external account binding.
%%
%% Previously fetched credentials for this binding will no longer be usable
%% for account registration. A deleted binding cannot be recovered.
-spec delete_acme_external_account_binding(aws_client:aws_client(), delete_acme_external_account_binding_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_acme_external_account_binding_errors(), tuple()}.
delete_acme_external_account_binding(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_acme_external_account_binding(Client, Input, []).

-spec delete_acme_external_account_binding(aws_client:aws_client(), delete_acme_external_account_binding_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_acme_external_account_binding_errors(), tuple()}.
delete_acme_external_account_binding(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAcmeExternalAccountBinding">>, Input, Options).

%% @doc Deletes a certificate and its associated private key.
%%
%% If this action succeeds, the certificate is not available for use by
%% Amazon Web Services services integrated with ACM. Deleting a certificate
%% is eventually consistent. The may be a short delay before the certificate
%% no longer appears in the list that can be displayed by calling the
%% `ListCertificates' action or be retrieved by calling the
%% `GetCertificate' action.
%%
%% You cannot delete an ACM certificate that is being used by another Amazon
%% Web Services service. To delete a certificate that is in use, you must
%% first remove the certificate association using the console or the CLI for
%% the associated service.
%%
%% Deleting a certificate issued by a private certificate authority (CA) has
%% no effect on the CA. You will continue to be charged for the CA until it
%% is deleted. For more information, see Deleting Your Private CA:
%% https://docs.aws.amazon.com/privateca/latest/userguide/PCADeleteCA.html in
%% the Private Certificate Authority User Guide.
%%
%% You cannot delete a certificate with a `CertificateKeyPairOrigin' of
%% `ACME'. ACM automatically deletes these certificates 1 year after they
%% expire.
%%
%% Deleting a certificate issued by a private certificate authority (CA) has
%% no effect on the CA. You will continue to be charged for the CA until it
%% is deleted. For more information, see Deleting your private CA:
%% https://docs.aws.amazon.com/privateca/latest/userguide/PCADeleteCA.html in
%% the Amazon Web Services Private Certificate Authority User Guide.
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

%% @doc Returns detailed metadata about the specified ACME account, including
%% its status, public key thumbprint, and associated external account
%% binding.
-spec describe_acme_account(aws_client:aws_client(), describe_acme_account_request()) ->
    {ok, describe_acme_account_response(), tuple()} |
    {error, any()} |
    {error, describe_acme_account_errors(), tuple()}.
describe_acme_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_acme_account(Client, Input, []).

-spec describe_acme_account(aws_client:aws_client(), describe_acme_account_request(), proplists:proplist()) ->
    {ok, describe_acme_account_response(), tuple()} |
    {error, any()} |
    {error, describe_acme_account_errors(), tuple()}.
describe_acme_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAcmeAccount">>, Input, Options).

%% @doc Returns detailed metadata about the specified domain validation,
%% including its status, domain scope, and DNS resource records required for
%% validation.
-spec describe_acme_domain_validation(aws_client:aws_client(), describe_acme_domain_validation_request()) ->
    {ok, describe_acme_domain_validation_response(), tuple()} |
    {error, any()} |
    {error, describe_acme_domain_validation_errors(), tuple()}.
describe_acme_domain_validation(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_acme_domain_validation(Client, Input, []).

-spec describe_acme_domain_validation(aws_client:aws_client(), describe_acme_domain_validation_request(), proplists:proplist()) ->
    {ok, describe_acme_domain_validation_response(), tuple()} |
    {error, any()} |
    {error, describe_acme_domain_validation_errors(), tuple()}.
describe_acme_domain_validation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAcmeDomainValidation">>, Input, Options).

%% @doc Returns detailed metadata about the specified ACME endpoint,
%% including its status, URL, authorization behavior, and certificate
%% authority configuration.
-spec describe_acme_endpoint(aws_client:aws_client(), describe_acme_endpoint_request()) ->
    {ok, describe_acme_endpoint_response(), tuple()} |
    {error, any()} |
    {error, describe_acme_endpoint_errors(), tuple()}.
describe_acme_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_acme_endpoint(Client, Input, []).

-spec describe_acme_endpoint(aws_client:aws_client(), describe_acme_endpoint_request(), proplists:proplist()) ->
    {ok, describe_acme_endpoint_response(), tuple()} |
    {error, any()} |
    {error, describe_acme_endpoint_errors(), tuple()}.
describe_acme_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAcmeEndpoint">>, Input, Options).

%% @doc Returns detailed metadata about the specified external account
%% binding, including the associated IAM role, expiration time, and usage
%% history.
-spec describe_acme_external_account_binding(aws_client:aws_client(), describe_acme_external_account_binding_request()) ->
    {ok, describe_acme_external_account_binding_response(), tuple()} |
    {error, any()} |
    {error, describe_acme_external_account_binding_errors(), tuple()}.
describe_acme_external_account_binding(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_acme_external_account_binding(Client, Input, []).

-spec describe_acme_external_account_binding(aws_client:aws_client(), describe_acme_external_account_binding_request(), proplists:proplist()) ->
    {ok, describe_acme_external_account_binding_response(), tuple()} |
    {error, any()} |
    {error, describe_acme_external_account_binding_errors(), tuple()}.
describe_acme_external_account_binding(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAcmeExternalAccountBinding">>, Input, Options).

%% @doc Returns detailed metadata about the specified ACM certificate.
%%
%% If you have just created a certificate using the `RequestCertificate'
%% action, there is a delay of several seconds before you can retrieve
%% information about it.
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

%% @doc Exports a private certificate issued by a private certificate
%% authority (CA) or a public certificate for use anywhere.
%%
%% The exported file contains the certificate, the certificate chain, and the
%% encrypted private key associated with the public key that is embedded in
%% the certificate. For security, you must assign a passphrase for the
%% private key when exporting it.
%%
%% For information about exporting and formatting a certificate using the ACM
%% console or CLI, see Export a private certificate:
%% https://docs.aws.amazon.com/acm/latest/userguide/export-private.html and
%% Export a public certificate:
%% https://docs.aws.amazon.com/acm/latest/userguide/export-public-certificate.
%%
%% ACM public certificates created prior to June 17, 2025 cannot be exported.
-spec export_certificate(aws_client:aws_client(), export_certificate_request()) ->
    {ok, export_certificate_response(), tuple()} |
    {error, any()} |
    {error, export_certificate_errors(), tuple()}.
export_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_certificate(Client, Input, []).

-spec export_certificate(aws_client:aws_client(), export_certificate_request(), proplists:proplist()) ->
    {ok, export_certificate_response(), tuple()} |
    {error, any()} |
    {error, export_certificate_errors(), tuple()}.
export_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportCertificate">>, Input, Options).

%% @doc Returns the account configuration options associated with an Amazon
%% Web Services account.
-spec get_account_configuration(aws_client:aws_client(), #{}) ->
    {ok, get_account_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_account_configuration_errors(), tuple()}.
get_account_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_account_configuration(Client, Input, []).

-spec get_account_configuration(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, get_account_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_account_configuration_errors(), tuple()}.
get_account_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccountConfiguration">>, Input, Options).

%% @doc Retrieves the key ID and MAC key credentials for an external account
%% binding.
%%
%% These credentials are used by ACME clients during account registration to
%% bind to the endpoint.
-spec get_acme_external_account_binding_credentials(aws_client:aws_client(), get_acme_external_account_binding_credentials_request()) ->
    {ok, get_acme_external_account_binding_credentials_response(), tuple()} |
    {error, any()} |
    {error, get_acme_external_account_binding_credentials_errors(), tuple()}.
get_acme_external_account_binding_credentials(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_acme_external_account_binding_credentials(Client, Input, []).

-spec get_acme_external_account_binding_credentials(aws_client:aws_client(), get_acme_external_account_binding_credentials_request(), proplists:proplist()) ->
    {ok, get_acme_external_account_binding_credentials_response(), tuple()} |
    {error, any()} |
    {error, get_acme_external_account_binding_credentials_errors(), tuple()}.
get_acme_external_account_binding_credentials(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAcmeExternalAccountBindingCredentials">>, Input, Options).

%% @doc Retrieves a certificate and its certificate chain.
%%
%% The certificate may be either a public or private certificate issued using
%% the ACM `RequestCertificate' action, or a certificate imported into
%% ACM using the `ImportCertificate' action. The chain consists of the
%% certificate of the issuing CA and the intermediate certificates of any
%% other subordinate CAs. All of the certificates are base64 encoded. You can
%% use OpenSSL: https://wiki.openssl.org/index.php/Command_Line_Utilities to
%% decode the certificates and inspect individual fields.
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

%% @doc Imports a certificate into Certificate Manager (ACM) to use with
%% services that are integrated with ACM.
%%
%% Note that integrated services:
%% https://docs.aws.amazon.com/acm/latest/userguide/acm-services.html allow
%% only certificate types and keys they support to be associated with their
%% resources. Further, their support differs depending on whether the
%% certificate is imported into IAM or into ACM. For more information, see
%% the documentation for each service. For more information about importing
%% certificates into ACM, see Importing Certificates:
%% https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html
%% in the Certificate Manager User Guide.
%%
%% ACM does not provide managed renewal:
%% https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html for
%% certificates that you import.
%%
%% Note the following guidelines when importing third party certificates:
%%
%% You must enter the private key that matches the certificate you are
%% importing.
%%
%% The private key must be unencrypted. You cannot import a private key that
%% is protected by a password or a passphrase.
%%
%% The private key must be no larger than 5 KB (5,120 bytes).
%%
%% The certificate, private key, and certificate chain must be PEM-encoded.
%%
%% The current time must be between the `Not Before' and `Not After'
%% certificate fields.
%%
%% The `Issuer' field must not be empty.
%%
%% The OCSP authority URL, if present, must not exceed 1000 characters.
%%
%% To import a new certificate, omit the `CertificateArn' argument.
%% Include this argument only when you want to replace a previously imported
%% certificate.
%%
%% When you import a certificate by using the CLI, you must specify the
%% certificate, the certificate chain, and the private key by their file
%% names preceded by `fileb://'. For example, you can specify a
%% certificate saved in the `C:\temp' folder as
%% `fileb://C:\temp\certificate_to_import.pem'. If you are making an HTTP
%% or HTTPS Query request, include these arguments as BLOBs.
%%
%% When you import a certificate by using an SDK, you must specify the
%% certificate, the certificate chain, and the private key files in the
%% manner required by the programming language you're using.
%%
%% The cryptographic algorithm of an imported certificate must match the
%% algorithm of the signing CA. For example, if the signing CA key type is
%% RSA, then the certificate key type must also be RSA.
%%
%% This operation returns the Amazon Resource Name (ARN):
%% https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
%% of the imported certificate.
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

%% @doc Retrieves a list of ACME accounts registered with the specified ACME
%% endpoint.
%%
%% ACME accounts are created when clients use external account binding
%% credentials to register.
-spec list_acme_accounts(aws_client:aws_client(), list_acme_accounts_request()) ->
    {ok, list_acme_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_acme_accounts_errors(), tuple()}.
list_acme_accounts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_acme_accounts(Client, Input, []).

-spec list_acme_accounts(aws_client:aws_client(), list_acme_accounts_request(), proplists:proplist()) ->
    {ok, list_acme_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_acme_accounts_errors(), tuple()}.
list_acme_accounts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAcmeAccounts">>, Input, Options).

%% @doc Retrieves a list of domain validations for the specified ACME
%% endpoint.
-spec list_acme_domain_validations(aws_client:aws_client(), list_acme_domain_validations_request()) ->
    {ok, list_acme_domain_validations_response(), tuple()} |
    {error, any()} |
    {error, list_acme_domain_validations_errors(), tuple()}.
list_acme_domain_validations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_acme_domain_validations(Client, Input, []).

-spec list_acme_domain_validations(aws_client:aws_client(), list_acme_domain_validations_request(), proplists:proplist()) ->
    {ok, list_acme_domain_validations_response(), tuple()} |
    {error, any()} |
    {error, list_acme_domain_validations_errors(), tuple()}.
list_acme_domain_validations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAcmeDomainValidations">>, Input, Options).

%% @doc Retrieves a list of ACME endpoints in your account.
%%
%% Use this operation to view all configured ACME endpoints and their current
%% status.
-spec list_acme_endpoints(aws_client:aws_client(), list_acme_endpoints_request()) ->
    {ok, list_acme_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_acme_endpoints_errors(), tuple()}.
list_acme_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_acme_endpoints(Client, Input, []).

-spec list_acme_endpoints(aws_client:aws_client(), list_acme_endpoints_request(), proplists:proplist()) ->
    {ok, list_acme_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_acme_endpoints_errors(), tuple()}.
list_acme_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAcmeEndpoints">>, Input, Options).

%% @doc Retrieves a list of external account bindings for the specified ACME
%% endpoint.
-spec list_acme_external_account_bindings(aws_client:aws_client(), list_acme_external_account_bindings_request()) ->
    {ok, list_acme_external_account_bindings_response(), tuple()} |
    {error, any()} |
    {error, list_acme_external_account_bindings_errors(), tuple()}.
list_acme_external_account_bindings(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_acme_external_account_bindings(Client, Input, []).

-spec list_acme_external_account_bindings(aws_client:aws_client(), list_acme_external_account_bindings_request(), proplists:proplist()) ->
    {ok, list_acme_external_account_bindings_response(), tuple()} |
    {error, any()} |
    {error, list_acme_external_account_bindings_errors(), tuple()}.
list_acme_external_account_bindings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAcmeExternalAccountBindings">>, Input, Options).

%% @doc Retrieves a list of certificate ARNs and domain names.
%%
%% You can request that only certificates that match a specific status be
%% listed. You can also filter by specific attributes of the certificate.
%% Default filtering returns only `RSA_2048' certificates. For more
%% information, see `Filters'.
%%
%% By default, this action does not return certificates with a
%% `CertificateKeyPairOrigin' of `ACME'. To include ACME
%% certificates, specify `ACME' in the `CertificateKeyPairOrigins'
%% filter.
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

%% @doc Lists the tags that have been applied to the ACM certificate.
%%
%% Use the certificate's Amazon Resource Name (ARN) to specify the
%% certificate. To add a tag to an ACM certificate, use the
%% `AddTagsToCertificate' action. To delete a tag, use the
%% `RemoveTagsFromCertificate' action.
%%
%% This action applies only to the `certificate' resource type. For all
%% other ACM resource types, use `ListTagsForResource' instead.
-spec list_tags_for_certificate(aws_client:aws_client(), list_tags_for_certificate_request()) ->
    {ok, list_tags_for_certificate_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_certificate_errors(), tuple()}.
list_tags_for_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_certificate(Client, Input, []).

-spec list_tags_for_certificate(aws_client:aws_client(), list_tags_for_certificate_request(), proplists:proplist()) ->
    {ok, list_tags_for_certificate_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_certificate_errors(), tuple()}.
list_tags_for_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForCertificate">>, Input, Options).

%% @doc Lists the tags associated with an ACM resource.
%%
%% Use this action for all ACM resource types except the `certificate'
%% resource type. For certificate resources, use `ListTagsForCertificate'
%% instead.
%%
%% To add one or more tags, use the `TagResource' action. To remove one
%% or more tags, use the `UntagResource' action.
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

%% @doc Adds or modifies account-level configurations in ACM.
%%
%% The supported configuration option is `DaysBeforeExpiry'. This option
%% specifies the number of days prior to certificate expiration when ACM
%% starts generating `EventBridge' events. ACM sends one event per day
%% per certificate until the certificate expires. By default, accounts
%% receive events starting 45 days before certificate expiration.
-spec put_account_configuration(aws_client:aws_client(), put_account_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_account_configuration_errors(), tuple()}.
put_account_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_account_configuration(Client, Input, []).

-spec put_account_configuration(aws_client:aws_client(), put_account_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_account_configuration_errors(), tuple()}.
put_account_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAccountConfiguration">>, Input, Options).

%% @doc Remove one or more tags from an ACM certificate.
%%
%% A tag consists of a key-value pair. If you do not specify the value
%% portion of the tag when calling this function, the tag will be removed
%% regardless of value. If you specify a value, the tag is removed only if it
%% is associated with the specified value.
%%
%% This action applies only to the `certificate' resource type. For all
%% other ACM resource types, use `UntagResource' instead.
%%
%% To add tags to a certificate, use the `AddTagsToCertificate' action.
%% To view all of the tags that have been applied to a specific ACM
%% certificate, use the `ListTagsForCertificate' action.
-spec remove_tags_from_certificate(aws_client:aws_client(), remove_tags_from_certificate_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_tags_from_certificate_errors(), tuple()}.
remove_tags_from_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags_from_certificate(Client, Input, []).

-spec remove_tags_from_certificate(aws_client:aws_client(), remove_tags_from_certificate_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_tags_from_certificate_errors(), tuple()}.
remove_tags_from_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTagsFromCertificate">>, Input, Options).

%% @doc Renews an eligible ACM certificate:
%% https://docs.aws.amazon.com/acm/latest/userguide/managed-renewal.html.
%%
%% In order to renew your Amazon Web Services Private CA certificates with
%% ACM, you must first grant the ACM service principal permission to do so:
%% https://docs.aws.amazon.com/privateca/latest/userguide/assign-permissions.html#PcaPermissions.
%% For more information, see Testing Managed Renewal:
%% https://docs.aws.amazon.com/acm/latest/userguide/managed-renewal.html in
%% the ACM User Guide.
-spec renew_certificate(aws_client:aws_client(), renew_certificate_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, renew_certificate_errors(), tuple()}.
renew_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    renew_certificate(Client, Input, []).

-spec renew_certificate(aws_client:aws_client(), renew_certificate_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, renew_certificate_errors(), tuple()}.
renew_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RenewCertificate">>, Input, Options).

%% @doc Requests an ACM certificate for use with other Amazon Web Services
%% services.
%%
%% To request an ACM certificate, you must specify a fully qualified domain
%% name (FQDN) in the `DomainName' parameter. You can also specify
%% additional FQDNs in the `SubjectAlternativeNames' parameter.
%%
%% If you are requesting a private certificate, domain validation is not
%% required. If you are requesting a public certificate, each domain name
%% that you specify must be validated to verify that you own or control the
%% domain. You can use DNS validation:
%% https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html
%% or email validation:
%% https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-email.html.
%% We recommend that you use DNS validation.
%%
%% ACM behavior differs from the RFC 6125:
%% https://datatracker.ietf.org/doc/html/rfc6125#appendix-B.2 specification
%% of the certificate validation process. ACM first checks for a Subject
%% Alternative Name, and, if it finds one, ignores the common name (CN).
%%
%% After successful completion of the `RequestCertificate' action, there
%% is a delay of several seconds before you can retrieve information about
%% the new certificate.
-spec request_certificate(aws_client:aws_client(), request_certificate_request()) ->
    {ok, request_certificate_response(), tuple()} |
    {error, any()} |
    {error, request_certificate_errors(), tuple()}.
request_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    request_certificate(Client, Input, []).

-spec request_certificate(aws_client:aws_client(), request_certificate_request(), proplists:proplist()) ->
    {ok, request_certificate_response(), tuple()} |
    {error, any()} |
    {error, request_certificate_errors(), tuple()}.
request_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RequestCertificate">>, Input, Options).

%% @doc Resends the email that requests domain ownership validation.
%%
%% The domain owner or an authorized representative must approve the ACM
%% certificate before it can be issued. The certificate can be approved by
%% clicking a link in the mail to navigate to the Amazon certificate approval
%% website and then clicking I Approve. However, the validation email can be
%% blocked by spam filters. Therefore, if you do not receive the original
%% mail, you can request that the mail be resent within 72 hours of
%% requesting the ACM certificate. If more than 72 hours have elapsed since
%% your original request or since your last attempt to resend validation
%% mail, you must request a new certificate. For more information about
%% setting up your contact email addresses, see Configure Email for your
%% Domain: https://docs.aws.amazon.com/acm/latest/userguide/setup-email.html.
-spec resend_validation_email(aws_client:aws_client(), resend_validation_email_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, resend_validation_email_errors(), tuple()}.
resend_validation_email(Client, Input)
  when is_map(Client), is_map(Input) ->
    resend_validation_email(Client, Input, []).

-spec resend_validation_email(aws_client:aws_client(), resend_validation_email_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, resend_validation_email_errors(), tuple()}.
resend_validation_email(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResendValidationEmail">>, Input, Options).

%% @doc Revokes an ACME account, preventing it from requesting or revoking
%% certificates.
%%
%% This operation is irreversible.
-spec revoke_acme_account(aws_client:aws_client(), revoke_acme_account_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, revoke_acme_account_errors(), tuple()}.
revoke_acme_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    revoke_acme_account(Client, Input, []).

-spec revoke_acme_account(aws_client:aws_client(), revoke_acme_account_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, revoke_acme_account_errors(), tuple()}.
revoke_acme_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RevokeAcmeAccount">>, Input, Options).

%% @doc Revokes an external account binding, preventing new ACME accounts
%% from being registered using this binding.
%%
%% Existing ACME accounts that were previously registered using the binding
%% are not affected and must be revoked separately.
-spec revoke_acme_external_account_binding(aws_client:aws_client(), revoke_acme_external_account_binding_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, revoke_acme_external_account_binding_errors(), tuple()}.
revoke_acme_external_account_binding(Client, Input)
  when is_map(Client), is_map(Input) ->
    revoke_acme_external_account_binding(Client, Input, []).

-spec revoke_acme_external_account_binding(aws_client:aws_client(), revoke_acme_external_account_binding_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, revoke_acme_external_account_binding_errors(), tuple()}.
revoke_acme_external_account_binding(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RevokeAcmeExternalAccountBinding">>, Input, Options).

%% @doc Revokes a public ACM certificate.
%%
%% You can only revoke certificates that have been previously exported.
%%
%% Once a certificate is revoked, you cannot reuse the certificate. Revoking
%% a certificate is permanent.
-spec revoke_certificate(aws_client:aws_client(), revoke_certificate_request()) ->
    {ok, revoke_certificate_response(), tuple()} |
    {error, any()} |
    {error, revoke_certificate_errors(), tuple()}.
revoke_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    revoke_certificate(Client, Input, []).

-spec revoke_certificate(aws_client:aws_client(), revoke_certificate_request(), proplists:proplist()) ->
    {ok, revoke_certificate_response(), tuple()} |
    {error, any()} |
    {error, revoke_certificate_errors(), tuple()}.
revoke_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RevokeCertificate">>, Input, Options).

%% @doc Retrieves a list of certificates matching search criteria.
%%
%% You can filter certificates by X.509 attributes and ACM specific
%% properties like certificate status, type and renewal eligibility. This
%% operation provides more flexible filtering than `ListCertificates' by
%% supporting complex filter statements.
-spec search_certificates(aws_client:aws_client(), search_certificates_request()) ->
    {ok, search_certificates_response(), tuple()} |
    {error, any()} |
    {error, search_certificates_errors(), tuple()}.
search_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_certificates(Client, Input, []).

-spec search_certificates(aws_client:aws_client(), search_certificates_request(), proplists:proplist()) ->
    {ok, search_certificates_response(), tuple()} |
    {error, any()} |
    {error, search_certificates_errors(), tuple()}.
search_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchCertificates">>, Input, Options).

%% @doc Adds one or more tags to an ACM resource.
%%
%% Tags are labels that you can use to identify and organize your Amazon Web
%% Services resources. Each tag consists of a `key' and an optional
%% `value'.
%%
%% Use this action for all ACM resource types except the `certificate'
%% resource type. For certificate resources, use `AddTagsToCertificate'
%% instead.
%%
%% To remove one or more tags, use the `UntagResource' action. To view
%% all of the tags that have been applied to a resource, use the
%% `ListTagsForResource' action.
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

%% @doc Removes one or more tags from an ACM resource.
%%
%% Use this action for all ACM resource types except the `certificate'
%% resource type. For certificate resources, use
%% `RemoveTagsFromCertificate' instead.
%%
%% To add one or more tags, use the `TagResource' action. To view all of
%% the tags that have been applied to a resource, use the
%% `ListTagsForResource' action.
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

%% @doc Updates the prevalidation configuration of an existing domain
%% validation.
-spec update_acme_domain_validation(aws_client:aws_client(), update_acme_domain_validation_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_acme_domain_validation_errors(), tuple()}.
update_acme_domain_validation(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_acme_domain_validation(Client, Input, []).

-spec update_acme_domain_validation(aws_client:aws_client(), update_acme_domain_validation_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_acme_domain_validation_errors(), tuple()}.
update_acme_domain_validation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAcmeDomainValidation">>, Input, Options).

%% @doc Updates the configuration of an existing ACME endpoint.
%%
%% You can change the authorization behavior, contact requirement, or
%% certificate authority settings.
-spec update_acme_endpoint(aws_client:aws_client(), update_acme_endpoint_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_acme_endpoint_errors(), tuple()}.
update_acme_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_acme_endpoint(Client, Input, []).

-spec update_acme_endpoint(aws_client:aws_client(), update_acme_endpoint_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_acme_endpoint_errors(), tuple()}.
update_acme_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAcmeEndpoint">>, Input, Options).

%% @doc Updates a certificate.
%%
%% You can use this function to specify whether to export your certificate.
%% Certificate transparency logging opt-out is no longer available. For more
%% information, see Certificate Transparency Logging:
%% https://docs.aws.amazon.com/acm/latest/userguide/acm-concepts.html#concept-transparency
%% and Certificate Manager Exportable Managed Certificates:
%% https://docs.aws.amazon.com/acm/latest/userguide/acm-exportable-certificates.html.
-spec update_certificate_options(aws_client:aws_client(), update_certificate_options_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_certificate_options_errors(), tuple()}.
update_certificate_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_certificate_options(Client, Input, []).

-spec update_certificate_options(aws_client:aws_client(), update_certificate_options_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_certificate_options_errors(), tuple()}.
update_certificate_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCertificateOptions">>, Input, Options).

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
    Client1 = Client#{service => <<"acm">>},
    DefaultHost = build_host(<<"acm">>, Client1),
    {URL, Host} = aws_util:apply_endpoint_url_override(build_url(DefaultHost, Client1), DefaultHost, <<"/">>, <<"AWS_ENDPOINT_URL_ACM">>),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"CertificateManager.", Action/binary>>}
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
