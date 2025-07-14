%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Payment Cryptography Control Plane APIs manage
%% encryption keys for use during payment-related cryptographic operations.
%%
%% You can create, import, export, share, manage, and delete keys. You can
%% also manage Identity and Access Management (IAM) policies for keys. For
%% more information, see Identity and access management:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/security-iam.html
%% in the Amazon Web Services Payment Cryptography User Guide.
%%
%% To use encryption keys for payment-related transaction processing and
%% associated cryptographic operations, you use the Amazon Web Services
%% Payment Cryptography Data Plane:
%% https://docs.aws.amazon.com/payment-cryptography/latest/DataAPIReference/Welcome.html.
%% You can perform actions like encrypt, decrypt, generate, and verify
%% payment-related data.
%%
%% All Amazon Web Services Payment Cryptography API calls must be signed and
%% transmitted using Transport Layer Security (TLS). We recommend you always
%% use the latest supported TLS version for logging API requests.
%%
%% Amazon Web Services Payment Cryptography supports CloudTrail for control
%% plane operations, a service that logs Amazon Web Services API calls and
%% related events for your Amazon Web Services account and delivers them to
%% an Amazon S3 bucket you specify. By using the information collected by
%% CloudTrail, you can determine what requests were made to Amazon Web
%% Services Payment Cryptography, who made the request, when it was made, and
%% so on. If you don't conﬁgure a trail, you can still view the most
%% recent events in the CloudTrail console. For more information, see the
%% CloudTrail User Guide:
%% https://docs.aws.amazon.com/awscloudtrail/latest/userguide/.
-module(aws_payment_cryptography).

-export([create_alias/2,
         create_alias/3,
         create_key/2,
         create_key/3,
         delete_alias/2,
         delete_alias/3,
         delete_key/2,
         delete_key/3,
         export_key/2,
         export_key/3,
         get_alias/2,
         get_alias/3,
         get_key/2,
         get_key/3,
         get_parameters_for_export/2,
         get_parameters_for_export/3,
         get_parameters_for_import/2,
         get_parameters_for_import/3,
         get_public_key_certificate/2,
         get_public_key_certificate/3,
         import_key/2,
         import_key/3,
         list_aliases/2,
         list_aliases/3,
         list_keys/2,
         list_keys/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         restore_key/2,
         restore_key/3,
         start_key_usage/2,
         start_key_usage/3,
         stop_key_usage/2,
         stop_key_usage/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_alias/2,
         update_alias/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% export_tr31_key_block() :: #{
%%   <<"KeyBlockHeaders">> => key_block_headers(),
%%   <<"WrappingKeyIdentifier">> => string()
%% }
-type export_tr31_key_block() :: #{binary() => any()}.

%% Example:
%% get_alias_output() :: #{
%%   <<"Alias">> => alias()
%% }
-type get_alias_output() :: #{binary() => any()}.

%% Example:
%% get_alias_input() :: #{
%%   <<"AliasName">> := string()
%% }
-type get_alias_input() :: #{binary() => any()}.

%% Example:
%% key_modes_of_use() :: #{
%%   <<"Decrypt">> => [boolean()],
%%   <<"DeriveKey">> => [boolean()],
%%   <<"Encrypt">> => [boolean()],
%%   <<"Generate">> => [boolean()],
%%   <<"NoRestrictions">> => [boolean()],
%%   <<"Sign">> => [boolean()],
%%   <<"Unwrap">> => [boolean()],
%%   <<"Verify">> => [boolean()],
%%   <<"Wrap">> => [boolean()]
%% }
-type key_modes_of_use() :: #{binary() => any()}.

%% Example:
%% get_parameters_for_export_input() :: #{
%%   <<"KeyMaterialType">> := string(),
%%   <<"SigningKeyAlgorithm">> := string()
%% }
-type get_parameters_for_export_input() :: #{binary() => any()}.

%% Example:
%% list_keys_input() :: #{
%%   <<"KeyState">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_keys_input() :: #{binary() => any()}.

%% Example:
%% key_summary() :: #{
%%   <<"Enabled">> => [boolean()],
%%   <<"Exportable">> => [boolean()],
%%   <<"KeyArn">> => string(),
%%   <<"KeyAttributes">> => key_attributes(),
%%   <<"KeyCheckValue">> => string(),
%%   <<"KeyState">> => string()
%% }
-type key_summary() :: #{binary() => any()}.

%% Example:
%% stop_key_usage_input() :: #{
%%   <<"KeyIdentifier">> := string()
%% }
-type stop_key_usage_input() :: #{binary() => any()}.

%% Example:
%% import_tr34_key_block() :: #{
%%   <<"CertificateAuthorityPublicKeyIdentifier">> => string(),
%%   <<"ImportToken">> => string(),
%%   <<"KeyBlockFormat">> => string(),
%%   <<"RandomNonce">> => string(),
%%   <<"SigningKeyCertificate">> => string(),
%%   <<"WrappedKeyBlock">> => string()
%% }
-type import_tr34_key_block() :: #{binary() => any()}.

%% Example:
%% import_key_input() :: #{
%%   <<"Enabled">> => [boolean()],
%%   <<"KeyCheckValueAlgorithm">> => string(),
%%   <<"KeyMaterial">> := list(),
%%   <<"Tags">> => list(tag())
%% }
-type import_key_input() :: #{binary() => any()}.

%% Example:
%% import_key_cryptogram() :: #{
%%   <<"Exportable">> => [boolean()],
%%   <<"ImportToken">> => string(),
%%   <<"KeyAttributes">> => key_attributes(),
%%   <<"WrappedKeyCryptogram">> => string(),
%%   <<"WrappingSpec">> => string()
%% }
-type import_key_cryptogram() :: #{binary() => any()}.

%% Example:
%% get_parameters_for_export_output() :: #{
%%   <<"ExportToken">> => string(),
%%   <<"ParametersValidUntilTimestamp">> => non_neg_integer(),
%%   <<"SigningKeyAlgorithm">> => string(),
%%   <<"SigningKeyCertificate">> => string(),
%%   <<"SigningKeyCertificateChain">> => string()
%% }
-type get_parameters_for_export_output() :: #{binary() => any()}.

%% Example:
%% delete_key_output() :: #{
%%   <<"Key">> => key()
%% }
-type delete_key_output() :: #{binary() => any()}.

%% Example:
%% stop_key_usage_output() :: #{
%%   <<"Key">> => key()
%% }
-type stop_key_usage_output() :: #{binary() => any()}.

%% Example:
%% list_aliases_output() :: #{
%%   <<"Aliases">> => list(alias()),
%%   <<"NextToken">> => string()
%% }
-type list_aliases_output() :: #{binary() => any()}.

%% Example:
%% restore_key_input() :: #{
%%   <<"KeyIdentifier">> := string()
%% }
-type restore_key_input() :: #{binary() => any()}.

%% Example:
%% get_parameters_for_import_output() :: #{
%%   <<"ImportToken">> => string(),
%%   <<"ParametersValidUntilTimestamp">> => non_neg_integer(),
%%   <<"WrappingKeyAlgorithm">> => string(),
%%   <<"WrappingKeyCertificate">> => string(),
%%   <<"WrappingKeyCertificateChain">> => string()
%% }
-type get_parameters_for_import_output() :: #{binary() => any()}.

%% Example:
%% export_diffie_hellman_tr31_key_block() :: #{
%%   <<"CertificateAuthorityPublicKeyIdentifier">> => string(),
%%   <<"DerivationData">> => list(),
%%   <<"DeriveKeyAlgorithm">> => list(any()),
%%   <<"KeyBlockHeaders">> => key_block_headers(),
%%   <<"KeyDerivationFunction">> => list(any()),
%%   <<"KeyDerivationHashAlgorithm">> => list(any()),
%%   <<"PrivateKeyIdentifier">> => string(),
%%   <<"PublicKeyCertificate">> => string()
%% }
-type export_diffie_hellman_tr31_key_block() :: #{binary() => any()}.

%% Example:
%% start_key_usage_output() :: #{
%%   <<"Key">> => key()
%% }
-type start_key_usage_output() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.

%% Example:
%% export_key_cryptogram() :: #{
%%   <<"CertificateAuthorityPublicKeyIdentifier">> => string(),
%%   <<"WrappingKeyCertificate">> => string(),
%%   <<"WrappingSpec">> => string()
%% }
-type export_key_cryptogram() :: #{binary() => any()}.

%% Example:
%% wrapped_key() :: #{
%%   <<"KeyCheckValue">> => string(),
%%   <<"KeyCheckValueAlgorithm">> => string(),
%%   <<"KeyMaterial">> => string(),
%%   <<"WrappedKeyMaterialFormat">> => string(),
%%   <<"WrappingKeyArn">> => string()
%% }
-type wrapped_key() :: #{binary() => any()}.

%% Example:
%% delete_alias_input() :: #{
%%   <<"AliasName">> := string()
%% }
-type delete_alias_input() :: #{binary() => any()}.

%% Example:
%% export_attributes() :: #{
%%   <<"ExportDukptInitialKey">> => export_dukpt_initial_key(),
%%   <<"KeyCheckValueAlgorithm">> => string()
%% }
-type export_attributes() :: #{binary() => any()}.

%% Example:
%% get_key_input() :: #{
%%   <<"KeyIdentifier">> := string()
%% }
-type get_key_input() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"ResourceId">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% create_key_input() :: #{
%%   <<"DeriveKeyUsage">> => string(),
%%   <<"Enabled">> => [boolean()],
%%   <<"Exportable">> := [boolean()],
%%   <<"KeyAttributes">> := key_attributes(),
%%   <<"KeyCheckValueAlgorithm">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_key_input() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% create_alias_output() :: #{
%%   <<"Alias">> => alias()
%% }
-type create_alias_output() :: #{binary() => any()}.

%% Example:
%% import_tr31_key_block() :: #{
%%   <<"WrappedKeyBlock">> => string(),
%%   <<"WrappingKeyIdentifier">> => string()
%% }
-type import_tr31_key_block() :: #{binary() => any()}.

%% Example:
%% update_alias_output() :: #{
%%   <<"Alias">> => alias()
%% }
-type update_alias_output() :: #{binary() => any()}.

%% Example:
%% update_alias_input() :: #{
%%   <<"AliasName">> := string(),
%%   <<"KeyArn">> => string()
%% }
-type update_alias_input() :: #{binary() => any()}.

%% Example:
%% service_unavailable_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type service_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% start_key_usage_input() :: #{
%%   <<"KeyIdentifier">> := string()
%% }
-type start_key_usage_input() :: #{binary() => any()}.

%% Example:
%% list_aliases_input() :: #{
%%   <<"KeyArn">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_aliases_input() :: #{binary() => any()}.

%% Example:
%% tag_resource_input() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_input() :: #{binary() => any()}.

%% Example:
%% tag_resource_output() :: #{

%% }
-type tag_resource_output() :: #{binary() => any()}.

%% Example:
%% key_attributes() :: #{
%%   <<"KeyAlgorithm">> => string(),
%%   <<"KeyClass">> => string(),
%%   <<"KeyModesOfUse">> => key_modes_of_use(),
%%   <<"KeyUsage">> => string()
%% }
-type key_attributes() :: #{binary() => any()}.

%% Example:
%% delete_key_input() :: #{
%%   <<"DeleteKeyInDays">> => [integer()],
%%   <<"KeyIdentifier">> := string()
%% }
-type delete_key_input() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% export_key_input() :: #{
%%   <<"ExportAttributes">> => export_attributes(),
%%   <<"ExportKeyIdentifier">> := string(),
%%   <<"KeyMaterial">> := list()
%% }
-type export_key_input() :: #{binary() => any()}.

%% Example:
%% import_diffie_hellman_tr31_key_block() :: #{
%%   <<"CertificateAuthorityPublicKeyIdentifier">> => string(),
%%   <<"DerivationData">> => list(),
%%   <<"DeriveKeyAlgorithm">> => list(any()),
%%   <<"KeyDerivationFunction">> => list(any()),
%%   <<"KeyDerivationHashAlgorithm">> => list(any()),
%%   <<"PrivateKeyIdentifier">> => string(),
%%   <<"PublicKeyCertificate">> => string(),
%%   <<"WrappedKeyBlock">> => string()
%% }
-type import_diffie_hellman_tr31_key_block() :: #{binary() => any()}.

%% Example:
%% get_public_key_certificate_input() :: #{
%%   <<"KeyIdentifier">> := string()
%% }
-type get_public_key_certificate_input() :: #{binary() => any()}.

%% Example:
%% alias() :: #{
%%   <<"AliasName">> => string(),
%%   <<"KeyArn">> => string()
%% }
-type alias() :: #{binary() => any()}.

%% Example:
%% import_key_output() :: #{
%%   <<"Key">> => key()
%% }
-type import_key_output() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% untag_resource_input() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_input() :: #{binary() => any()}.

%% Example:
%% export_tr34_key_block() :: #{
%%   <<"CertificateAuthorityPublicKeyIdentifier">> => string(),
%%   <<"ExportToken">> => string(),
%%   <<"KeyBlockFormat">> => string(),
%%   <<"KeyBlockHeaders">> => key_block_headers(),
%%   <<"RandomNonce">> => string(),
%%   <<"WrappingKeyCertificate">> => string()
%% }
-type export_tr34_key_block() :: #{binary() => any()}.

%% Example:
%% trusted_certificate_public_key() :: #{
%%   <<"CertificateAuthorityPublicKeyIdentifier">> => string(),
%%   <<"KeyAttributes">> => key_attributes(),
%%   <<"PublicKeyCertificate">> => string()
%% }
-type trusted_certificate_public_key() :: #{binary() => any()}.

%% Example:
%% get_parameters_for_import_input() :: #{
%%   <<"KeyMaterialType">> := string(),
%%   <<"WrappingKeyAlgorithm">> := string()
%% }
-type get_parameters_for_import_input() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_input() :: #{binary() => any()}.

%% Example:
%% untag_resource_output() :: #{

%% }
-type untag_resource_output() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% key() :: #{
%%   <<"CreateTimestamp">> => non_neg_integer(),
%%   <<"DeletePendingTimestamp">> => non_neg_integer(),
%%   <<"DeleteTimestamp">> => non_neg_integer(),
%%   <<"DeriveKeyUsage">> => string(),
%%   <<"Enabled">> => [boolean()],
%%   <<"Exportable">> => [boolean()],
%%   <<"KeyArn">> => string(),
%%   <<"KeyAttributes">> => key_attributes(),
%%   <<"KeyCheckValue">> => string(),
%%   <<"KeyCheckValueAlgorithm">> => string(),
%%   <<"KeyOrigin">> => string(),
%%   <<"KeyState">> => string(),
%%   <<"UsageStartTimestamp">> => non_neg_integer(),
%%   <<"UsageStopTimestamp">> => non_neg_integer()
%% }
-type key() :: #{binary() => any()}.

%% Example:
%% list_keys_output() :: #{
%%   <<"Keys">> => list(key_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_keys_output() :: #{binary() => any()}.

%% Example:
%% create_alias_input() :: #{
%%   <<"AliasName">> := string(),
%%   <<"KeyArn">> => string()
%% }
-type create_alias_input() :: #{binary() => any()}.

%% Example:
%% delete_alias_output() :: #{

%% }
-type delete_alias_output() :: #{binary() => any()}.

%% Example:
%% export_key_output() :: #{
%%   <<"WrappedKey">> => wrapped_key()
%% }
-type export_key_output() :: #{binary() => any()}.

%% Example:
%% export_dukpt_initial_key() :: #{
%%   <<"KeySerialNumber">> => string()
%% }
-type export_dukpt_initial_key() :: #{binary() => any()}.

%% Example:
%% restore_key_output() :: #{
%%   <<"Key">> => key()
%% }
-type restore_key_output() :: #{binary() => any()}.

%% Example:
%% root_certificate_public_key() :: #{
%%   <<"KeyAttributes">> => key_attributes(),
%%   <<"PublicKeyCertificate">> => string()
%% }
-type root_certificate_public_key() :: #{binary() => any()}.

%% Example:
%% get_key_output() :: #{
%%   <<"Key">> => key()
%% }
-type get_key_output() :: #{binary() => any()}.

%% Example:
%% create_key_output() :: #{
%%   <<"Key">> => key()
%% }
-type create_key_output() :: #{binary() => any()}.

%% Example:
%% get_public_key_certificate_output() :: #{
%%   <<"KeyCertificate">> => string(),
%%   <<"KeyCertificateChain">> => string()
%% }
-type get_public_key_certificate_output() :: #{binary() => any()}.

%% Example:
%% key_block_headers() :: #{
%%   <<"KeyExportability">> => string(),
%%   <<"KeyModesOfUse">> => key_modes_of_use(),
%%   <<"KeyVersion">> => string(),
%%   <<"OptionalBlocks">> => map()
%% }
-type key_block_headers() :: #{binary() => any()}.

-type create_alias_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_key_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_alias_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_key_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type export_key_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_alias_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type get_key_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type get_parameters_for_export_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_parameters_for_import_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_public_key_certificate_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type import_key_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_aliases_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type list_keys_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type restore_key_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_key_usage_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_key_usage_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_alias_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an alias, or a friendly name, for an Amazon Web Services
%% Payment Cryptography key.
%%
%% You can use an alias to identify a key in the console and when you call
%% cryptographic operations such as EncryptData:
%% https://docs.aws.amazon.com/payment-cryptography/latest/DataAPIReference/API_EncryptData.html
%% or DecryptData:
%% https://docs.aws.amazon.com/payment-cryptography/latest/DataAPIReference/API_DecryptData.html.
%%
%% You can associate the alias with any key in the same Amazon Web Services
%% Region. Each alias is associated with only one key at a time, but a key
%% can have multiple aliases. You can't create an alias without a key.
%% The alias must be unique in the account and Amazon Web Services Region,
%% but you can create another alias with the same name in a different Amazon
%% Web Services Region.
%%
%% To change the key that's associated with the alias, call UpdateAlias:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UpdateAlias.html.
%% To delete the alias, call DeleteAlias:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteAlias.html.
%% These operations don't affect the underlying key. To get the alias
%% that you created, call ListAliases:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListAliases.html.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% DeleteAlias:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteAlias.html
%%
%% GetAlias:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetAlias.html
%%
%% ListAliases:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListAliases.html
%%
%% UpdateAlias:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UpdateAlias.html
-spec create_alias(aws_client:aws_client(), create_alias_input()) ->
    {ok, create_alias_output(), tuple()} |
    {error, any()} |
    {error, create_alias_errors(), tuple()}.
create_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_alias(Client, Input, []).

-spec create_alias(aws_client:aws_client(), create_alias_input(), proplists:proplist()) ->
    {ok, create_alias_output(), tuple()} |
    {error, any()} |
    {error, create_alias_errors(), tuple()}.
create_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAlias">>, Input, Options).

%% @doc Creates an Amazon Web Services Payment Cryptography key, a logical
%% representation of a cryptographic key, that is unique in your account and
%% Amazon Web Services Region.
%%
%% You use keys for cryptographic functions such as encryption and
%% decryption.
%%
%% In addition to the key material used in cryptographic operations, an
%% Amazon Web Services Payment Cryptography key includes metadata such as the
%% key ARN, key usage, key origin, creation date, description, and key state.
%%
%% When you create a key, you specify both immutable and mutable data about
%% the key. The immutable data contains key attributes that define the scope
%% and cryptographic operations that you can perform using the key, for
%% example key class (example: `SYMMETRIC_KEY'), key algorithm (example:
%% `TDES_2KEY'), key usage (example: `TR31_P0_PIN_ENCRYPTION_KEY')
%% and key modes of use (example: `Encrypt'). Amazon Web Services Payment
%% Cryptography binds key attributes to keys using key blocks when you store
%% or export them. Amazon Web Services Payment Cryptography stores the key
%% contents wrapped and never stores or transmits them in the clear.
%%
%% For information about valid combinations of key attributes, see
%% Understanding key attributes:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html
%% in the Amazon Web Services Payment Cryptography User Guide. The mutable
%% data contained within a key includes usage timestamp and key deletion
%% timestamp and can be modified after creation.
%%
%% You can use the `CreateKey' operation to generate an ECC (Elliptic
%% Curve Cryptography) key pair used for establishing an ECDH (Elliptic Curve
%% Diffie-Hellman) key agreement between two parties. In the ECDH key
%% agreement process, both parties generate their own ECC key pair with key
%% usage K3 and exchange the public keys. Each party then use their private
%% key, the received public key from the other party, and the key derivation
%% parameters including key derivation function, hash algorithm, derivation
%% data, and key algorithm to derive a shared key.
%%
%% To maintain the single-use principle of cryptographic keys in payments,
%% ECDH derived keys should not be used for multiple purposes, such as a
%% `TR31_P0_PIN_ENCRYPTION_KEY' and
%% `TR31_K1_KEY_BLOCK_PROTECTION_KEY'. When creating ECC key pairs in
%% Amazon Web Services Payment Cryptography you can optionally set the
%% `DeriveKeyUsage' parameter, which defines the key usage bound to the
%% symmetric key that will be derived using the ECC key pair.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% DeleteKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteKey.html
%%
%% GetKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetKey.html
%%
%% ListKeys:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListKeys.html
-spec create_key(aws_client:aws_client(), create_key_input()) ->
    {ok, create_key_output(), tuple()} |
    {error, any()} |
    {error, create_key_errors(), tuple()}.
create_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_key(Client, Input, []).

-spec create_key(aws_client:aws_client(), create_key_input(), proplists:proplist()) ->
    {ok, create_key_output(), tuple()} |
    {error, any()} |
    {error, create_key_errors(), tuple()}.
create_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateKey">>, Input, Options).

%% @doc Deletes the alias, but doesn't affect the underlying key.
%%
%% Each key can have multiple aliases. To get the aliases of all keys, use
%% the UpdateAlias:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UpdateAlias.html
%% operation. To change the alias of a key, first use DeleteAlias:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteAlias.html
%% to delete the current alias and then use CreateAlias:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateAlias.html
%% to create a new alias. To associate an existing alias with a different
%% key, call UpdateAlias:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UpdateAlias.html.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% CreateAlias:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateAlias.html
%%
%% GetAlias:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetAlias.html
%%
%% ListAliases:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListAliases.html
%%
%% UpdateAlias:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UpdateAlias.html
-spec delete_alias(aws_client:aws_client(), delete_alias_input()) ->
    {ok, delete_alias_output(), tuple()} |
    {error, any()} |
    {error, delete_alias_errors(), tuple()}.
delete_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_alias(Client, Input, []).

-spec delete_alias(aws_client:aws_client(), delete_alias_input(), proplists:proplist()) ->
    {ok, delete_alias_output(), tuple()} |
    {error, any()} |
    {error, delete_alias_errors(), tuple()}.
delete_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAlias">>, Input, Options).

%% @doc Deletes the key material and metadata associated with Amazon Web
%% Services Payment Cryptography key.
%%
%% Key deletion is irreversible. After a key is deleted, you can't
%% perform cryptographic operations using the key. For example, you can't
%% decrypt data that was encrypted by a deleted Amazon Web Services Payment
%% Cryptography key, and the data may become unrecoverable. Because key
%% deletion is destructive, Amazon Web Services Payment Cryptography has a
%% safety mechanism to prevent accidental deletion of a key. When you call
%% this operation, Amazon Web Services Payment Cryptography disables the
%% specified key but doesn't delete it until after a waiting period set
%% using `DeleteKeyInDays'. The default waiting period is 7 days. During
%% the waiting period, the `KeyState' is `DELETE_PENDING'. After the
%% key is deleted, the `KeyState' is `DELETE_COMPLETE'.
%%
%% You should delete a key only when you are sure that you don't need to
%% use it anymore and no other parties are utilizing this key. If you
%% aren't sure, consider deactivating it instead by calling StopKeyUsage:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_StopKeyUsage.html.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% RestoreKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_RestoreKey.html
%%
%% StartKeyUsage:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_StartKeyUsage.html
%%
%% StopKeyUsage:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_StopKeyUsage.html
-spec delete_key(aws_client:aws_client(), delete_key_input()) ->
    {ok, delete_key_output(), tuple()} |
    {error, any()} |
    {error, delete_key_errors(), tuple()}.
delete_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_key(Client, Input, []).

-spec delete_key(aws_client:aws_client(), delete_key_input(), proplists:proplist()) ->
    {ok, delete_key_output(), tuple()} |
    {error, any()} |
    {error, delete_key_errors(), tuple()}.
delete_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteKey">>, Input, Options).

%% @doc Exports a key from Amazon Web Services Payment Cryptography.
%%
%% Amazon Web Services Payment Cryptography simplifies key exchange by
%% replacing the existing paper-based approach with a modern electronic
%% approach. With `ExportKey' you can export symmetric keys using either
%% symmetric and asymmetric key exchange mechanisms. Using this operation,
%% you can share your Amazon Web Services Payment Cryptography generated keys
%% with other service partners to perform cryptographic operations outside of
%% Amazon Web Services Payment Cryptography
%%
%% For symmetric key exchange, Amazon Web Services Payment Cryptography uses
%% the ANSI X9 TR-31 norm in accordance with PCI PIN guidelines. And for
%% asymmetric key exchange, Amazon Web Services Payment Cryptography supports
%% ANSI X9 TR-34 norm, RSA unwrap, and ECDH (Elliptic Curve Diffie-Hellman)
%% key exchange mechanisms. Asymmetric key exchange methods are typically
%% used to establish bi-directional trust between the two parties exhanging
%% keys and are used for initial key exchange such as Key Encryption Key
%% (KEK). After which you can export working keys using symmetric method to
%% perform various cryptographic operations within Amazon Web Services
%% Payment Cryptography.
%%
%% PCI requires specific minimum key strength of wrapping keys used to
%% protect the keys being exchanged electronically. These requirements can
%% change when PCI standards are revised. The rules specify that wrapping
%% keys used for transport must be at least as strong as the key being
%% protected. For more information on recommended key strength of wrapping
%% keys and key exchange mechanism, see Importing and exporting keys:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-importexport.html
%% in the Amazon Web Services Payment Cryptography User Guide.
%%
%% You can also use `ExportKey' functionality to generate and export an
%% IPEK (Initial Pin Encryption Key) from Amazon Web Services Payment
%% Cryptography using either TR-31 or TR-34 export key exchange. IPEK is
%% generated from BDK (Base Derivation Key) and `ExportDukptInitialKey'
%% attribute KSN (`KeySerialNumber'). The generated IPEK does not persist
%% within Amazon Web Services Payment Cryptography and has to be re-generated
%% each time during export.
%%
%% For key exchange using TR-31 or TR-34 key blocks, you can also export
%% optional blocks within the key block header which contain additional
%% attribute information about the key. The `KeyVersion' within
%% `KeyBlockHeaders' indicates the version of the key within the key
%% block. Furthermore, `KeyExportability' within `KeyBlockHeaders'
%% can be used to further restrict exportability of the key after export from
%% Amazon Web Services Payment Cryptography.
%%
%% The `OptionalBlocks' contain the additional data related to the key.
%% For information on data type that can be included within optional blocks,
%% refer to ASC X9.143-2022:
%% https://webstore.ansi.org/standards/ascx9/ansix91432022.
%%
%% Data included in key block headers is signed but transmitted in clear
%% text. Sensitive or confidential information should not be included in
%% optional blocks. Refer to ASC X9.143-2022 standard for information on
%% allowed data type.
%%
%% To export initial keys (KEK) or IPEK using TR-34
%%
%% Using this operation, you can export initial key using TR-34 asymmetric
%% key exchange. You can only export KEK generated within Amazon Web Services
%% Payment Cryptography. In TR-34 terminology, the sending party of the key
%% is called Key Distribution Host (KDH) and the receiving party of the key
%% is called Key Receiving Device (KRD). During key export process, KDH is
%% Amazon Web Services Payment Cryptography which initiates key export and
%% KRD is the user receiving the key.
%%
%% To initiate TR-34 key export, the KRD must obtain an export token by
%% calling GetParametersForExport:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForExport.html.
%% This operation also generates a key pair for the purpose of key export,
%% signs the key and returns back the signing public key certificate (also
%% known as KDH signing certificate) and root certificate chain. The KDH uses
%% the private key to sign the the export payload and the signing public key
%% certificate is provided to KRD to verify the signature. The KRD can import
%% the root certificate into its Hardware Security Module (HSM), as required.
%% The export token and the associated KDH signing certificate expires after
%% 30 days.
%%
%% Next the KRD generates a key pair for the the purpose of encrypting the
%% KDH key and provides the public key cerificate (also known as KRD wrapping
%% certificate) back to KDH. The KRD will also import the root cerificate
%% chain into Amazon Web Services Payment Cryptography by calling ImportKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html
%% for `RootCertificatePublicKey'. The KDH, Amazon Web Services Payment
%% Cryptography, will use the KRD wrapping cerificate to encrypt (wrap) the
%% key under export and signs it with signing private key to generate a TR-34
%% WrappedKeyBlock. For more information on TR-34 key export, see section
%% Exporting symmetric keys:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-export.html
%% in the Amazon Web Services Payment Cryptography User Guide.
%%
%% Set the following parameters:
%%
%% `ExportAttributes': Specify export attributes in case of IPEK export.
%% This parameter is optional for KEK export.
%%
%% `ExportKeyIdentifier': The `KeyARN' of the KEK or BDK (in case of
%% IPEK) under export.
%%
%% `KeyMaterial': Use `Tr34KeyBlock' parameters.
%%
%% `CertificateAuthorityPublicKeyIdentifier': The `KeyARN' of the
%% certificate chain that signed the KRD wrapping key certificate.
%%
%% `ExportToken': Obtained from KDH by calling GetParametersForImport:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForImport.html.
%%
%% `WrappingKeyCertificate': The public key certificate in PEM format
%% (base64 encoded) of the KRD wrapping key Amazon Web Services Payment
%% Cryptography uses for encryption of the TR-34 export payload. This
%% certificate must be signed by the root certificate
%% (CertificateAuthorityPublicKeyIdentifier) imported into Amazon Web
%% Services Payment Cryptography.
%%
%% When this operation is successful, Amazon Web Services Payment
%% Cryptography returns the KEK or IPEK as a TR-34 WrappedKeyBlock.
%%
%% To export initial keys (KEK) or IPEK using RSA Wrap and Unwrap
%%
%% Using this operation, you can export initial key using asymmetric RSA wrap
%% and unwrap key exchange method. To initiate export, generate an asymmetric
%% key pair on the receiving HSM and obtain the public key certificate in PEM
%% format (base64 encoded) for the purpose of wrapping and the root
%% certifiate chain. Import the root certificate into Amazon Web Services
%% Payment Cryptography by calling ImportKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html
%% for `RootCertificatePublicKey'.
%%
%% Next call `ExportKey' and set the following parameters:
%%
%% `CertificateAuthorityPublicKeyIdentifier': The `KeyARN' of the
%% certificate chain that signed wrapping key certificate.
%%
%% `KeyMaterial': Set to `KeyCryptogram'.
%%
%% `WrappingKeyCertificate': The public key certificate in PEM format
%% (base64 encoded) obtained by the receiving HSM and signed by the root
%% certificate (CertificateAuthorityPublicKeyIdentifier) imported into Amazon
%% Web Services Payment Cryptography. The receiving HSM uses its private key
%% component to unwrap the WrappedKeyCryptogram.
%%
%% When this operation is successful, Amazon Web Services Payment
%% Cryptography returns the WrappedKeyCryptogram.
%%
%% To export working keys or IPEK using TR-31
%%
%% Using this operation, you can export working keys or IPEK using TR-31
%% symmetric key exchange. In TR-31, you must use an initial key such as KEK
%% to encrypt or wrap the key under export. To establish a KEK, you can use
%% CreateKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html
%% or ImportKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html.
%%
%% Set the following parameters:
%%
%% `ExportAttributes': Specify export attributes in case of IPEK export.
%% This parameter is optional for KEK export.
%%
%% `ExportKeyIdentifier': The `KeyARN' of the KEK or BDK (in case of
%% IPEK) under export.
%%
%% `KeyMaterial': Use `Tr31KeyBlock' parameters.
%%
%% To export working keys using ECDH
%%
%% You can also use ECDH key agreement to export working keys in a TR-31
%% keyblock, where the wrapping key is an ECDH derived key.
%%
%% To initiate a TR-31 key export using ECDH, both sides must create an ECC
%% key pair with key usage K3 and exchange public key certificates. In Amazon
%% Web Services Payment Cryptography, you can do this by calling
%% `CreateKey'. If you have not already done so, you must import the CA
%% chain that issued the receiving public key certificate by calling
%% `ImportKey' with input `RootCertificatePublicKey' for root CA or
%% `TrustedPublicKey' for intermediate CA. You can then complete a TR-31
%% key export by deriving a shared wrapping key using the service ECC key
%% pair, public certificate of your ECC key pair outside of Amazon Web
%% Services Payment Cryptography, and the key derivation parameters including
%% key derivation function, hash algorithm, derivation data, key algorithm.
%%
%% `KeyMaterial': Use `DiffieHellmanTr31KeyBlock' parameters.
%%
%% `PrivateKeyIdentifier': The `KeyArn' of the ECC key pair created
%% within Amazon Web Services Payment Cryptography to derive a shared KEK.
%%
%% `PublicKeyCertificate': The public key certificate of the receiving
%% ECC key pair in PEM format (base64 encoded) to derive a shared KEK.
%%
%% `CertificateAuthorityPublicKeyIdentifier': The `keyARN' of the CA
%% that signed the public key certificate of the receiving ECC key pair.
%%
%% When this operation is successful, Amazon Web Services Payment
%% Cryptography returns the working key as a TR-31 WrappedKeyBlock, where the
%% wrapping key is the ECDH derived key.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% GetParametersForExport:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForExport.html
%%
%% ImportKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html
-spec export_key(aws_client:aws_client(), export_key_input()) ->
    {ok, export_key_output(), tuple()} |
    {error, any()} |
    {error, export_key_errors(), tuple()}.
export_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_key(Client, Input, []).

-spec export_key(aws_client:aws_client(), export_key_input(), proplists:proplist()) ->
    {ok, export_key_output(), tuple()} |
    {error, any()} |
    {error, export_key_errors(), tuple()}.
export_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportKey">>, Input, Options).

%% @doc Gets the Amazon Web Services Payment Cryptography key associated with
%% the alias.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% CreateAlias:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateAlias.html
%%
%% DeleteAlias:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteAlias.html
%%
%% ListAliases:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListAliases.html
%%
%% UpdateAlias:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UpdateAlias.html
-spec get_alias(aws_client:aws_client(), get_alias_input()) ->
    {ok, get_alias_output(), tuple()} |
    {error, any()} |
    {error, get_alias_errors(), tuple()}.
get_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_alias(Client, Input, []).

-spec get_alias(aws_client:aws_client(), get_alias_input(), proplists:proplist()) ->
    {ok, get_alias_output(), tuple()} |
    {error, any()} |
    {error, get_alias_errors(), tuple()}.
get_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAlias">>, Input, Options).

%% @doc Gets the key material for an Amazon Web Services Payment Cryptography
%% key, including the immutable and mutable data specified when the key was
%% created.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% CreateKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html
%%
%% DeleteKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteKey.html
%%
%% ListKeys:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListKeys.html
-spec get_key(aws_client:aws_client(), get_key_input()) ->
    {ok, get_key_output(), tuple()} |
    {error, any()} |
    {error, get_key_errors(), tuple()}.
get_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_key(Client, Input, []).

-spec get_key(aws_client:aws_client(), get_key_input(), proplists:proplist()) ->
    {ok, get_key_output(), tuple()} |
    {error, any()} |
    {error, get_key_errors(), tuple()}.
get_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetKey">>, Input, Options).

%% @doc Gets the export token and the signing key certificate to initiate a
%% TR-34 key export from Amazon Web Services Payment Cryptography.
%%
%% The signing key certificate signs the wrapped key under export within the
%% TR-34 key payload. The export token and signing key certificate must be in
%% place and operational before calling ExportKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ExportKey.html.
%% The export token expires in 30 days. You can use the same export token to
%% export multiple keys from your service account.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% ExportKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ExportKey.html
%%
%% GetParametersForImport:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForImport.html
-spec get_parameters_for_export(aws_client:aws_client(), get_parameters_for_export_input()) ->
    {ok, get_parameters_for_export_output(), tuple()} |
    {error, any()} |
    {error, get_parameters_for_export_errors(), tuple()}.
get_parameters_for_export(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_parameters_for_export(Client, Input, []).

-spec get_parameters_for_export(aws_client:aws_client(), get_parameters_for_export_input(), proplists:proplist()) ->
    {ok, get_parameters_for_export_output(), tuple()} |
    {error, any()} |
    {error, get_parameters_for_export_errors(), tuple()}.
get_parameters_for_export(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetParametersForExport">>, Input, Options).

%% @doc Gets the import token and the wrapping key certificate in PEM format
%% (base64 encoded) to initiate a TR-34 WrappedKeyBlock or a RSA
%% WrappedKeyCryptogram import into Amazon Web Services Payment Cryptography.
%%
%% The wrapping key certificate wraps the key under import. The import token
%% and wrapping key certificate must be in place and operational before
%% calling ImportKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html.
%% The import token expires in 30 days. You can use the same import token to
%% import multiple keys into your service account.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% GetParametersForExport:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForExport.html
%%
%% ImportKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html
-spec get_parameters_for_import(aws_client:aws_client(), get_parameters_for_import_input()) ->
    {ok, get_parameters_for_import_output(), tuple()} |
    {error, any()} |
    {error, get_parameters_for_import_errors(), tuple()}.
get_parameters_for_import(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_parameters_for_import(Client, Input, []).

-spec get_parameters_for_import(aws_client:aws_client(), get_parameters_for_import_input(), proplists:proplist()) ->
    {ok, get_parameters_for_import_output(), tuple()} |
    {error, any()} |
    {error, get_parameters_for_import_errors(), tuple()}.
get_parameters_for_import(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetParametersForImport">>, Input, Options).

%% @doc Gets the public key certificate of the asymmetric key pair that
%% exists within Amazon Web Services Payment Cryptography.
%%
%% Unlike the private key of an asymmetric key, which never leaves Amazon Web
%% Services Payment Cryptography unencrypted, callers with
%% `GetPublicKeyCertificate' permission can download the public key
%% certificate of the asymmetric key. You can share the public key
%% certificate to allow others to encrypt messages and verify signatures
%% outside of Amazon Web Services Payment Cryptography
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
-spec get_public_key_certificate(aws_client:aws_client(), get_public_key_certificate_input()) ->
    {ok, get_public_key_certificate_output(), tuple()} |
    {error, any()} |
    {error, get_public_key_certificate_errors(), tuple()}.
get_public_key_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_public_key_certificate(Client, Input, []).

-spec get_public_key_certificate(aws_client:aws_client(), get_public_key_certificate_input(), proplists:proplist()) ->
    {ok, get_public_key_certificate_output(), tuple()} |
    {error, any()} |
    {error, get_public_key_certificate_errors(), tuple()}.
get_public_key_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPublicKeyCertificate">>, Input, Options).

%% @doc Imports symmetric keys and public key certificates in PEM format
%% (base64 encoded) into Amazon Web Services Payment Cryptography.
%%
%% Amazon Web Services Payment Cryptography simplifies key exchange by
%% replacing the existing paper-based approach with a modern electronic
%% approach. With `ImportKey' you can import symmetric keys using either
%% symmetric and asymmetric key exchange mechanisms.
%%
%% For symmetric key exchange, Amazon Web Services Payment Cryptography uses
%% the ANSI X9 TR-31 norm in accordance with PCI PIN guidelines. And for
%% asymmetric key exchange, Amazon Web Services Payment Cryptography supports
%% ANSI X9 TR-34 norm, RSA unwrap, and ECDH (Elliptic Curve Diffie-Hellman)
%% key exchange mechanisms. Asymmetric key exchange methods are typically
%% used to establish bi-directional trust between the two parties exhanging
%% keys and are used for initial key exchange such as Key Encryption Key
%% (KEK) or Zone Master Key (ZMK). After which you can import working keys
%% using symmetric method to perform various cryptographic operations within
%% Amazon Web Services Payment Cryptography.
%%
%% PCI requires specific minimum key strength of wrapping keys used to
%% protect the keys being exchanged electronically. These requirements can
%% change when PCI standards are revised. The rules specify that wrapping
%% keys used for transport must be at least as strong as the key being
%% protected. For more information on recommended key strength of wrapping
%% keys and key exchange mechanism, see Importing and exporting keys:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-importexport.html
%% in the Amazon Web Services Payment Cryptography User Guide.
%%
%% You can also import a root public key certificate, used to sign other
%% public key certificates, or a trusted public key certificate under an
%% already established root public key certificate.
%%
%% To import a public root key certificate
%%
%% Using this operation, you can import the public component (in PEM
%% cerificate format) of your private root key. You can use the imported
%% public root key certificate for digital signatures, for example signing
%% wrapping key or signing key in TR-34, within your Amazon Web Services
%% Payment Cryptography account.
%%
%% Set the following parameters:
%%
%% `KeyMaterial': `RootCertificatePublicKey'
%%
%% `KeyClass': `PUBLIC_KEY'
%%
%% `KeyModesOfUse': `Verify'
%%
%% `KeyUsage': `TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE'
%%
%% `PublicKeyCertificate': The public key certificate in PEM format
%% (base64 encoded) of the private root key under import.
%%
%% To import a trusted public key certificate
%%
%% The root public key certificate must be in place and operational before
%% you import a trusted public key certificate. Set the following parameters:
%%
%% `KeyMaterial': `TrustedCertificatePublicKey'
%%
%% `CertificateAuthorityPublicKeyIdentifier': `KeyArn' of the
%% `RootCertificatePublicKey'.
%%
%% `KeyModesOfUse' and `KeyUsage': Corresponding to the cryptographic
%% operations such as wrap, sign, or encrypt that you will allow the trusted
%% public key certificate to perform.
%%
%% `PublicKeyCertificate': The trusted public key certificate in PEM
%% format (base64 encoded) under import.
%%
%% To import initial keys (KEK or ZMK or similar) using TR-34
%%
%% Using this operation, you can import initial key using TR-34 asymmetric
%% key exchange. In TR-34 terminology, the sending party of the key is called
%% Key Distribution Host (KDH) and the receiving party of the key is called
%% Key Receiving Device (KRD). During the key import process, KDH is the user
%% who initiates the key import and KRD is Amazon Web Services Payment
%% Cryptography who receives the key.
%%
%% To initiate TR-34 key import, the KDH must obtain an import token by
%% calling GetParametersForImport:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForImport.html.
%% This operation generates an encryption keypair for the purpose of key
%% import, signs the key and returns back the wrapping key certificate (also
%% known as KRD wrapping certificate) and the root certificate chain. The KDH
%% must trust and install the KRD wrapping certificate on its HSM and use it
%% to encrypt (wrap) the KDH key during TR-34 WrappedKeyBlock generation. The
%% import token and associated KRD wrapping certificate expires after 30
%% days.
%%
%% Next the KDH generates a key pair for the purpose of signing the encrypted
%% KDH key and provides the public certificate of the signing key to Amazon
%% Web Services Payment Cryptography. The KDH will also need to import the
%% root certificate chain of the KDH signing certificate by calling
%% `ImportKey' for `RootCertificatePublicKey'. For more information
%% on TR-34 key import, see section Importing symmetric keys:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-import.html
%% in the Amazon Web Services Payment Cryptography User Guide.
%%
%% Set the following parameters:
%%
%% `KeyMaterial': Use `Tr34KeyBlock' parameters.
%%
%% `CertificateAuthorityPublicKeyIdentifier': The `KeyARN' of the
%% certificate chain that signed the KDH signing key certificate.
%%
%% `ImportToken': Obtained from KRD by calling GetParametersForImport:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForImport.html.
%%
%% `WrappedKeyBlock': The TR-34 wrapped key material from KDH. It
%% contains the KDH key under import, wrapped with KRD wrapping certificate
%% and signed by KDH signing private key. This TR-34 key block is typically
%% generated by the KDH Hardware Security Module (HSM) outside of Amazon Web
%% Services Payment Cryptography.
%%
%% `SigningKeyCertificate': The public key certificate in PEM format
%% (base64 encoded) of the KDH signing key generated under the root
%% certificate (CertificateAuthorityPublicKeyIdentifier) imported in Amazon
%% Web Services Payment Cryptography.
%%
%% To import initial keys (KEK or ZMK or similar) using RSA Wrap and Unwrap
%%
%% Using this operation, you can import initial key using asymmetric RSA wrap
%% and unwrap key exchange method. To initiate import, call
%% GetParametersForImport:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForImport.html
%% with `KeyMaterial' set to `KEY_CRYPTOGRAM' to generate an import
%% token. This operation also generates an encryption keypair for the purpose
%% of key import, signs the key and returns back the wrapping key certificate
%% in PEM format (base64 encoded) and its root certificate chain. The import
%% token and associated KRD wrapping certificate expires after 30 days.
%%
%% You must trust and install the wrapping certificate and its certificate
%% chain on the sending HSM and use it to wrap the key under export for
%% WrappedKeyCryptogram generation. Next call `ImportKey' with
%% `KeyMaterial' set to `KEY_CRYPTOGRAM' and provide the
%% `ImportToken' and `KeyAttributes' for the key under import.
%%
%% To import working keys using TR-31
%%
%% Amazon Web Services Payment Cryptography uses TR-31 symmetric key exchange
%% norm to import working keys. A KEK must be established within Amazon Web
%% Services Payment Cryptography by using TR-34 key import or by using
%% CreateKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html.
%% To initiate a TR-31 key import, set the following parameters:
%%
%% `KeyMaterial': Use `Tr31KeyBlock' parameters.
%%
%% `WrappedKeyBlock': The TR-31 wrapped key material. It contains the key
%% under import, encrypted using KEK. The TR-31 key block is typically
%% generated by a HSM outside of Amazon Web Services Payment Cryptography.
%%
%% `WrappingKeyIdentifier': The `KeyArn' of the KEK that Amazon Web
%% Services Payment Cryptography uses to decrypt or unwrap the key under
%% import.
%%
%% To import working keys using ECDH
%%
%% You can also use ECDH key agreement to import working keys as a TR-31
%% keyblock, where the wrapping key is an ECDH derived key.
%%
%% To initiate a TR-31 key import using ECDH, both sides must create an ECC
%% key pair with key usage K3 and exchange public key certificates. In Amazon
%% Web Services Payment Cryptography, you can do this by calling
%% `CreateKey' and then `GetPublicKeyCertificate' to retrieve its
%% public key certificate. Next, you can then generate a TR-31
%% WrappedKeyBlock using your own ECC key pair, the public certificate of the
%% service's ECC key pair, and the key derivation parameters including
%% key derivation function, hash algorithm, derivation data, and key
%% algorithm. If you have not already done so, you must import the CA chain
%% that issued the receiving public key certificate by calling
%% `ImportKey' with input `RootCertificatePublicKey' for root CA or
%% `TrustedPublicKey' for intermediate CA. To complete the TR-31 key
%% import, you can use the following parameters. It is important that the
%% ECDH key derivation parameters you use should match those used during
%% import to derive the same shared wrapping key within Amazon Web Services
%% Payment Cryptography.
%%
%% `KeyMaterial': Use `DiffieHellmanTr31KeyBlock' parameters.
%%
%% `PrivateKeyIdentifier': The `KeyArn' of the ECC key pair created
%% within Amazon Web Services Payment Cryptography to derive a shared KEK.
%%
%% `PublicKeyCertificate': The public key certificate of the receiving
%% ECC key pair in PEM format (base64 encoded) to derive a shared KEK.
%%
%% `CertificateAuthorityPublicKeyIdentifier': The `keyARN' of the CA
%% that signed the public key certificate of the receiving ECC key pair.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% ExportKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ExportKey.html
%%
%% GetParametersForImport:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForImport.html
-spec import_key(aws_client:aws_client(), import_key_input()) ->
    {ok, import_key_output(), tuple()} |
    {error, any()} |
    {error, import_key_errors(), tuple()}.
import_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_key(Client, Input, []).

-spec import_key(aws_client:aws_client(), import_key_input(), proplists:proplist()) ->
    {ok, import_key_output(), tuple()} |
    {error, any()} |
    {error, import_key_errors(), tuple()}.
import_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportKey">>, Input, Options).

%% @doc Lists the aliases for all keys in the caller's Amazon Web
%% Services account and Amazon Web Services Region.
%%
%% You can filter the aliases by `keyARN'. For more information, see
%% Using aliases:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-managealias.html
%% in the Amazon Web Services Payment Cryptography User Guide.
%%
%% This is a paginated operation, which means that each response might
%% contain only a subset of all the aliases. When the response contains only
%% a subset of aliases, it includes a `NextToken' value. Use this value
%% in a subsequent `ListAliases' request to get more aliases. When you
%% receive a response with no NextToken (or an empty or null value), that
%% means there are no more aliases to get.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% CreateAlias:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateAlias.html
%%
%% DeleteAlias:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteAlias.html
%%
%% GetAlias:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetAlias.html
%%
%% UpdateAlias:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UpdateAlias.html
-spec list_aliases(aws_client:aws_client(), list_aliases_input()) ->
    {ok, list_aliases_output(), tuple()} |
    {error, any()} |
    {error, list_aliases_errors(), tuple()}.
list_aliases(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_aliases(Client, Input, []).

-spec list_aliases(aws_client:aws_client(), list_aliases_input(), proplists:proplist()) ->
    {ok, list_aliases_output(), tuple()} |
    {error, any()} |
    {error, list_aliases_errors(), tuple()}.
list_aliases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAliases">>, Input, Options).

%% @doc Lists the keys in the caller's Amazon Web Services account and
%% Amazon Web Services Region.
%%
%% You can filter the list of keys.
%%
%% This is a paginated operation, which means that each response might
%% contain only a subset of all the keys. When the response contains only a
%% subset of keys, it includes a `NextToken' value. Use this value in a
%% subsequent `ListKeys' request to get more keys. When you receive a
%% response with no NextToken (or an empty or null value), that means there
%% are no more keys to get.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% CreateKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html
%%
%% DeleteKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteKey.html
%%
%% GetKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetKey.html
-spec list_keys(aws_client:aws_client(), list_keys_input()) ->
    {ok, list_keys_output(), tuple()} |
    {error, any()} |
    {error, list_keys_errors(), tuple()}.
list_keys(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_keys(Client, Input, []).

-spec list_keys(aws_client:aws_client(), list_keys_input(), proplists:proplist()) ->
    {ok, list_keys_output(), tuple()} |
    {error, any()} |
    {error, list_keys_errors(), tuple()}.
list_keys(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListKeys">>, Input, Options).

%% @doc Lists the tags for an Amazon Web Services resource.
%%
%% This is a paginated operation, which means that each response might
%% contain only a subset of all the tags. When the response contains only a
%% subset of tags, it includes a `NextToken' value. Use this value in a
%% subsequent `ListTagsForResource' request to get more tags. When you
%% receive a response with no NextToken (or an empty or null value), that
%% means there are no more tags to get.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% TagResource:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_TagResource.html
%%
%% UntagResource:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UntagResource.html
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_input()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_input(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Cancels a scheduled key deletion during the waiting period.
%%
%% Use this operation to restore a `Key' that is scheduled for deletion.
%%
%% During the waiting period, the `KeyState' is `DELETE_PENDING' and
%% `deletePendingTimestamp' contains the date and time after which the
%% `Key' will be deleted. After `Key' is restored, the `KeyState'
%% is `CREATE_COMPLETE', and the value for `deletePendingTimestamp'
%% is removed.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% DeleteKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteKey.html
%%
%% StartKeyUsage:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_StartKeyUsage.html
%%
%% StopKeyUsage:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_StopKeyUsage.html
-spec restore_key(aws_client:aws_client(), restore_key_input()) ->
    {ok, restore_key_output(), tuple()} |
    {error, any()} |
    {error, restore_key_errors(), tuple()}.
restore_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_key(Client, Input, []).

-spec restore_key(aws_client:aws_client(), restore_key_input(), proplists:proplist()) ->
    {ok, restore_key_output(), tuple()} |
    {error, any()} |
    {error, restore_key_errors(), tuple()}.
restore_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreKey">>, Input, Options).

%% @doc Enables an Amazon Web Services Payment Cryptography key, which makes
%% it active for cryptographic operations within Amazon Web Services Payment
%% Cryptography
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% StopKeyUsage:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_StopKeyUsage.html
-spec start_key_usage(aws_client:aws_client(), start_key_usage_input()) ->
    {ok, start_key_usage_output(), tuple()} |
    {error, any()} |
    {error, start_key_usage_errors(), tuple()}.
start_key_usage(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_key_usage(Client, Input, []).

-spec start_key_usage(aws_client:aws_client(), start_key_usage_input(), proplists:proplist()) ->
    {ok, start_key_usage_output(), tuple()} |
    {error, any()} |
    {error, start_key_usage_errors(), tuple()}.
start_key_usage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartKeyUsage">>, Input, Options).

%% @doc Disables an Amazon Web Services Payment Cryptography key, which makes
%% it inactive within Amazon Web Services Payment Cryptography.
%%
%% You can use this operation instead of DeleteKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteKey.html
%% to deactivate a key. You can enable the key in the future by calling
%% StartKeyUsage:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_StartKeyUsage.html.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% DeleteKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteKey.html
%%
%% StartKeyUsage:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_StartKeyUsage.html
-spec stop_key_usage(aws_client:aws_client(), stop_key_usage_input()) ->
    {ok, stop_key_usage_output(), tuple()} |
    {error, any()} |
    {error, stop_key_usage_errors(), tuple()}.
stop_key_usage(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_key_usage(Client, Input, []).

-spec stop_key_usage(aws_client:aws_client(), stop_key_usage_input(), proplists:proplist()) ->
    {ok, stop_key_usage_output(), tuple()} |
    {error, any()} |
    {error, stop_key_usage_errors(), tuple()}.
stop_key_usage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopKeyUsage">>, Input, Options).

%% @doc Adds or edits tags on an Amazon Web Services Payment Cryptography
%% key.
%%
%% Tagging or untagging an Amazon Web Services Payment Cryptography key can
%% allow or deny permission to the key.
%%
%% Each tag consists of a tag key and a tag value, both of which are
%% case-sensitive strings. The tag value can be an empty (null) string. To
%% add a tag, specify a new tag key and a tag value. To edit a tag, specify
%% an existing tag key and a new tag value. You can also add tags to an
%% Amazon Web Services Payment Cryptography key when you create it with
%% CreateKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% ListTagsForResource:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListTagsForResource.html
%%
%% UntagResource:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UntagResource.html
-spec tag_resource(aws_client:aws_client(), tag_resource_input()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_input(), proplists:proplist()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Deletes a tag from an Amazon Web Services Payment Cryptography key.
%%
%% Tagging or untagging an Amazon Web Services Payment Cryptography key can
%% allow or deny permission to the key.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% ListTagsForResource:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListTagsForResource.html
%%
%% TagResource:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_TagResource.html
-spec untag_resource(aws_client:aws_client(), untag_resource_input()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_input(), proplists:proplist()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Associates an existing Amazon Web Services Payment Cryptography alias
%% with a different key.
%%
%% Each alias is associated with only one Amazon Web Services Payment
%% Cryptography key at a time, although a key can have multiple aliases. The
%% alias and the Amazon Web Services Payment Cryptography key must be in the
%% same Amazon Web Services account and Amazon Web Services Region
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% CreateAlias:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateAlias.html
%%
%% DeleteAlias:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteAlias.html
%%
%% GetAlias:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetAlias.html
%%
%% ListAliases:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListAliases.html
-spec update_alias(aws_client:aws_client(), update_alias_input()) ->
    {ok, update_alias_output(), tuple()} |
    {error, any()} |
    {error, update_alias_errors(), tuple()}.
update_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_alias(Client, Input, []).

-spec update_alias(aws_client:aws_client(), update_alias_input(), proplists:proplist()) ->
    {ok, update_alias_output(), tuple()} |
    {error, any()} |
    {error, update_alias_errors(), tuple()}.
update_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAlias">>, Input, Options).

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
    Client1 = Client#{service => <<"payment-cryptography">>},
    Host = build_host(<<"controlplane.payment-cryptography">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"PaymentCryptographyControlPlane.", Action/binary>>}
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
