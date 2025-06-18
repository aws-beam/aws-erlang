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
         delete_certificate/2,
         delete_certificate/3,
         describe_certificate/2,
         describe_certificate/3,
         export_certificate/2,
         export_certificate/3,
         get_account_configuration/2,
         get_account_configuration/3,
         get_certificate/2,
         get_certificate/3,
         import_certificate/2,
         import_certificate/3,
         list_certificates/2,
         list_certificates/3,
         list_tags_for_certificate/2,
         list_tags_for_certificate/3,
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
         revoke_certificate/2,
         revoke_certificate/3,
         update_certificate_options/2,
         update_certificate_options/3]).

-include_lib("hackney/include/hackney_lib.hrl").


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
%% request_in_progress_exception() :: #{
%%   <<"message">> => string()
%% }
-type request_in_progress_exception() :: #{binary() => any()}.

%% Example:
%% revoke_certificate_request() :: #{
%%   <<"CertificateArn">> := string(),
%%   <<"RevocationReason">> := list(any())
%% }
-type revoke_certificate_request() :: #{binary() => any()}.

%% Example:
%% resource_in_use_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.

%% Example:
%% export_certificate_response() :: #{
%%   <<"Certificate">> => string(),
%%   <<"CertificateChain">> => string(),
%%   <<"PrivateKey">> => string()
%% }
-type export_certificate_response() :: #{binary() => any()}.

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
%%   <<"DomainValidationOptions">> => list(domain_validation()()),
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
%% invalid_state_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_state_exception() :: #{binary() => any()}.

%% Example:
%% list_certificates_request() :: #{
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
%%   <<"DomainValidationOptions">> => list(domain_validation_option()()),
%%   <<"IdempotencyToken">> => string(),
%%   <<"KeyAlgorithm">> => list(any()),
%%   <<"ManagedBy">> => list(any()),
%%   <<"Options">> => certificate_options(),
%%   <<"SubjectAlternativeNames">> => list(string()()),
%%   <<"Tags">> => list(tag()()),
%%   <<"ValidationMethod">> => list(any())
%% }
-type request_certificate_request() :: #{binary() => any()}.

%% Example:
%% remove_tags_from_certificate_request() :: #{
%%   <<"CertificateArn">> := string(),
%%   <<"Tags">> := list(tag()())
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
%% certificate_summary() :: #{
%%   <<"CertificateArn">> => string(),
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
%%   <<"SubjectAlternativeNameSummaries">> => list(string()()),
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
%% list_tags_for_certificate_request() :: #{
%%   <<"CertificateArn">> := string()
%% }
-type list_tags_for_certificate_request() :: #{binary() => any()}.

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
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% put_account_configuration_request() :: #{
%%   <<"ExpiryEvents">> => expiry_events_configuration(),
%%   <<"IdempotencyToken">> := string()
%% }
-type put_account_configuration_request() :: #{binary() => any()}.

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
%% request_certificate_response() :: #{
%%   <<"CertificateArn">> => string()
%% }
-type request_certificate_response() :: #{binary() => any()}.

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
%% list_tags_for_certificate_response() :: #{
%%   <<"Tags">> => list(tag()())
%% }
-type list_tags_for_certificate_response() :: #{binary() => any()}.

%% Example:
%% invalid_domain_validation_options_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_domain_validation_options_exception() :: #{binary() => any()}.

%% Example:
%% add_tags_to_certificate_request() :: #{
%%   <<"CertificateArn">> := string(),
%%   <<"Tags">> := list(tag()())
%% }
-type add_tags_to_certificate_request() :: #{binary() => any()}.

%% Example:
%% import_certificate_request() :: #{
%%   <<"Certificate">> := binary(),
%%   <<"CertificateArn">> => string(),
%%   <<"CertificateChain">> => binary(),
%%   <<"PrivateKey">> := binary(),
%%   <<"Tags">> => list(tag()())
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
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

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
%% extended_key_usage() :: #{
%%   <<"Name">> => list(any()),
%%   <<"OID">> => string()
%% }
-type extended_key_usage() :: #{binary() => any()}.

%% Example:
%% domain_validation() :: #{
%%   <<"DomainName">> => string(),
%%   <<"HttpRedirect">> => http_redirect(),
%%   <<"ResourceRecord">> => resource_record(),
%%   <<"ValidationDomain">> => string(),
%%   <<"ValidationEmails">> => list(string()()),
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
%%   <<"CertificateSummaryList">> => list(certificate_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_certificates_response() :: #{binary() => any()}.

%% Example:
%% certificate_detail() :: #{
%%   <<"CertificateArn">> => string(),
%%   <<"CertificateAuthorityArn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DomainName">> => string(),
%%   <<"DomainValidationOptions">> => list(domain_validation()()),
%%   <<"ExtendedKeyUsages">> => list(extended_key_usage()()),
%%   <<"FailureReason">> => list(any()),
%%   <<"ImportedAt">> => non_neg_integer(),
%%   <<"InUseBy">> => list(string()()),
%%   <<"IssuedAt">> => non_neg_integer(),
%%   <<"Issuer">> => string(),
%%   <<"KeyAlgorithm">> => list(any()),
%%   <<"KeyUsages">> => list(key_usage()()),
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
%%   <<"SubjectAlternativeNames">> => list(string()()),
%%   <<"Type">> => list(any())
%% }
-type certificate_detail() :: #{binary() => any()}.

-type add_tags_to_certificate_errors() ::
    too_many_tags_exception() | 
    invalid_tag_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    tag_policy_exception().

-type delete_certificate_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    invalid_arn_exception() | 
    resource_in_use_exception().

-type describe_certificate_errors() ::
    resource_not_found_exception() | 
    invalid_arn_exception().

-type export_certificate_errors() ::
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    request_in_progress_exception().

-type get_account_configuration_errors() ::
    throttling_exception() | 
    access_denied_exception().

-type get_certificate_errors() ::
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    request_in_progress_exception().

-type import_certificate_errors() ::
    too_many_tags_exception() | 
    invalid_tag_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    tag_policy_exception().

-type list_certificates_errors() ::
    validation_exception() | 
    invalid_args_exception().

-type list_tags_for_certificate_errors() ::
    resource_not_found_exception() | 
    invalid_arn_exception().

-type put_account_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    conflict_exception().

-type remove_tags_from_certificate_errors() ::
    invalid_tag_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    tag_policy_exception().

-type renew_certificate_errors() ::
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
    invalid_domain_validation_options_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    invalid_state_exception().

-type revoke_certificate_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    invalid_arn_exception() | 
    resource_in_use_exception().

-type update_certificate_options_errors() ::
    limit_exceeded_exception() | 
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

%% @doc Deletes a certificate and its associated private key.
%%
%% If this action succeeds, the certificate no longer appears in the list
%% that can be displayed by calling the `ListCertificates' action or be
%% retrieved by calling the `GetCertificate' action. The certificate will
%% not be available for use by Amazon Web Services services integrated with
%% ACM.
%%
%% You cannot delete an ACM certificate that is being used by another Amazon
%% Web Services service. To delete a certificate that is in use, the
%% certificate association must first be removed.
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
%% authority (CA) or public certificate for use anywhere.
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

%% @doc Retrieves a list of certificate ARNs and domain names.
%%
%% You can request that only certificates that match a specific status be
%% listed. You can also filter by specific attributes of the certificate.
%% Default filtering returns only `RSA_2048' certificates. For more
%% information, see `Filters'.
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
%% https://docs.aws.amazon.com/privateca/latest/userguide/PcaPermissions.html.
%% For more information, see Testing Managed Renewal:
%% https://docs.aws.amazon.com/acm/latest/userguide/manual-renewal.html in
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

%% @doc Revokes a public ACM certificate.
%%
%% You can only revoke certificates that have been previously exported.
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

%% @doc Updates a certificate.
%%
%% You can use this function to specify whether to opt in to or out of
%% recording your certificate in a certificate transparency log and
%% exporting. For more information, see Opting Out of Certificate
%% Transparency Logging:
%% https://docs.aws.amazon.com/acm/latest/userguide/acm-bestpractices.html#best-practices-transparency
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
    Host = build_host(<<"acm">>, Client1),
    URL = build_url(Host, Client1),
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
