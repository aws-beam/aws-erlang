%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc You use the Amazon Web Services Payment Cryptography Control Plane to
%% manage the encryption keys you use for payment-related cryptographic
%% operations.
%%
%% You can create, import, export, share, manage, and delete keys. You can
%% also manage Identity and Access Management (IAM) policies for keys. For
%% more information, see Identity and access management in the Amazon Web
%% Services Payment Cryptography User Guide.
%%
%% To use encryption keys for payment-related transaction processing and
%% associated cryptographic operations, you use the Amazon Web Services
%% Payment Cryptography Data Plane. You can encrypt, decrypt, generate,
%% verify, and translate payment-related cryptographic operations.
%%
%% All Amazon Web Services Payment Cryptography API calls must be signed and
%% transmitted using Transport Layer Security (TLS). We recommend you always
%% use the latest supported TLS version for logging API requests.
%%
%% Amazon Web Services Payment Cryptography supports CloudTrail, a service
%% that logs Amazon Web Services API calls and related events for your Amazon
%% Web Services account and delivers them to an Amazon S3 bucket that you
%% specify. By using the information collected by CloudTrail, you can
%% determine what requests were made to Amazon Web Services Payment
%% Cryptography, who made the request, when it was made, and so on. If you
%% don't conﬁgure a trail, you can still view the most recent events in
%% the CloudTrail console. For more information, see the CloudTrail User
%% Guide.
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

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an alias, or a friendly name, for an Amazon Web Services
%% Payment Cryptography key.
%%
%% You can use an alias to identify a key in the console and when you call
%% cryptographic operations such as EncryptData or DecryptData.
%%
%% You can associate the alias with any key in the same Amazon Web Services
%% Region. Each alias is associated with only one key at a time, but a key
%% can have multiple aliases. You can't create an alias without a key.
%% The alias must be unique in the account and Amazon Web Services Region,
%% but you can create another alias with the same name in a different Amazon
%% Web Services Region.
%%
%% To change the key that's associated with the alias, call
%% `UpdateAlias'. To delete the alias, call `DeleteAlias'. These
%% operations don't affect the underlying key. To get the alias that you
%% created, call `ListAliases'.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% <ul> <li> `DeleteAlias'
%%
%% </li> <li> `GetAlias'
%%
%% </li> <li> `ListAliases'
%%
%% </li> <li> `UpdateAlias'
%%
%% </li> </ul>
create_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_alias(Client, Input, []).
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
%% the key. The immutable data contains key attributes that defines the scope
%% and cryptographic operations that you can perform using the key, for
%% example key class (example: `SYMMETRIC_KEY'), key algorithm (example:
%% `TDES_2KEY'), key usage (example: `TR31_P0_PIN_ENCRYPTION_KEY')
%% and key modes of use (example: `Encrypt'). For information about valid
%% combinations of key attributes, see Understanding key attributes in the
%% Amazon Web Services Payment Cryptography User Guide. The mutable data
%% contained within a key includes usage timestamp and key deletion timestamp
%% and can be modified after creation.
%%
%% Amazon Web Services Payment Cryptography binds key attributes to keys
%% using key blocks when you store or export them. Amazon Web Services
%% Payment Cryptography stores the key contents wrapped and never stores or
%% transmits them in the clear.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% <ul> <li> `DeleteKey'
%%
%% </li> <li> `GetKey'
%%
%% </li> <li> `ListKeys'
%%
%% </li> </ul>
create_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_key(Client, Input, []).
create_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateKey">>, Input, Options).

%% @doc Deletes the alias, but doesn't affect the underlying key.
%%
%% Each key can have multiple aliases. To get the aliases of all keys, use
%% the `ListAliases' operation. To change the alias of a key, first use
%% `DeleteAlias' to delete the current alias and then use
%% `CreateAlias' to create a new alias. To associate an existing alias
%% with a different key, call `UpdateAlias'.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% <ul> <li> `CreateAlias'
%%
%% </li> <li> `GetAlias'
%%
%% </li> <li> `ListAliases'
%%
%% </li> <li> `UpdateAlias'
%%
%% </li> </ul>
delete_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_alias(Client, Input, []).
delete_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAlias">>, Input, Options).

%% @doc Deletes the key material and all metadata associated with Amazon Web
%% Services Payment Cryptography key.
%%
%% Key deletion is irreversible. After a key is deleted, you can't
%% perform cryptographic operations using the key. For example, you can't
%% decrypt data that was encrypted by a deleted Amazon Web Services Payment
%% Cryptography key, and the data may become unrecoverable. Because key
%% deletion is destructive, Amazon Web Services Payment Cryptography has a
%% safety mechanism to prevent accidental deletion of a key. When you call
%% this operation, Amazon Web Services Payment Cryptography disables the
%% specified key but doesn't delete it until after a waiting period. The
%% default waiting period is 7 days. To set a different waiting period, set
%% `DeleteKeyInDays'. During the waiting period, the `KeyState' is
%% `DELETE_PENDING'. After the key is deleted, the `KeyState' is
%% `DELETE_COMPLETE'.
%%
%% If you delete key material, you can use `ImportKey' to reimport the
%% same key material into the Amazon Web Services Payment Cryptography key.
%%
%% You should delete a key only when you are sure that you don't need to
%% use it anymore and no other parties are utilizing this key. If you
%% aren't sure, consider deactivating it instead by calling
%% `StopKeyUsage'.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% <ul> <li> `RestoreKey'
%%
%% </li> <li> `StartKeyUsage'
%%
%% </li> <li> `StopKeyUsage'
%%
%% </li> </ul>
delete_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_key(Client, Input, []).
delete_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteKey">>, Input, Options).

%% @doc Exports a key from Amazon Web Services Payment Cryptography using
%% either ANSI X9 TR-34 or TR-31 key export standard.
%%
%% Amazon Web Services Payment Cryptography simplifies main or root key
%% exchange process by eliminating the need of a paper-based key exchange
%% process. It takes a modern and secure approach based of the ANSI X9 TR-34
%% key exchange standard.
%%
%% You can use `ExportKey' to export main or root keys such as KEK (Key
%% Encryption Key), using asymmetric key exchange technique following ANSI X9
%% TR-34 standard. The ANSI X9 TR-34 standard uses asymmetric keys to
%% establishes bi-directional trust between the two parties exchanging keys.
%% After which you can export working keys using the ANSI X9 TR-31 symmetric
%% key exchange standard as mandated by PCI PIN. Using this operation, you
%% can share your Amazon Web Services Payment Cryptography generated keys
%% with other service partners to perform cryptographic operations outside of
%% Amazon Web Services Payment Cryptography
%%
%% TR-34 key export
%%
%% Amazon Web Services Payment Cryptography uses TR-34 asymmetric key
%% exchange standard to export main keys such as KEK. In TR-34 terminology,
%% the sending party of the key is called Key Distribution Host (KDH) and the
%% receiving party of the key is called Key Receiving Host (KRH). In key
%% export process, KDH is Amazon Web Services Payment Cryptography which
%% initiates key export. KRH is the user receiving the key. Before you
%% initiate TR-34 key export, you must obtain an export token by calling
%% `GetParametersForExport'. This operation also returns the signing key
%% certificate that KDH uses to sign the wrapped key to generate a TR-34
%% wrapped key block. The export token expires after 7 days.
%%
%% Set the following parameters:
%%
%% <dl> <dt>CertificateAuthorityPublicKeyIdentifier</dt> <dd> The
%% `KeyARN' of the certificate chain that will sign the wrapping key
%% certificate. This must exist within Amazon Web Services Payment
%% Cryptography before you initiate TR-34 key export. If it does not exist,
%% you can import it by calling `ImportKey' for
%% `RootCertificatePublicKey'.
%%
%% </dd> <dt>ExportToken</dt> <dd> Obtained from KDH by calling
%% `GetParametersForExport'.
%%
%% </dd> <dt>WrappingKeyCertificate</dt> <dd> Amazon Web Services Payment
%% Cryptography uses this to wrap the key under export.
%%
%% </dd> </dl> When this operation is successful, Amazon Web Services Payment
%% Cryptography returns the TR-34 wrapped key block.
%%
%% TR-31 key export
%%
%% Amazon Web Services Payment Cryptography uses TR-31 symmetric key exchange
%% standard to export working keys. In TR-31, you must use a main key such as
%% KEK to encrypt or wrap the key under export. To establish a KEK, you can
%% use `CreateKey' or `ImportKey'. When this operation is successful,
%% Amazon Web Services Payment Cryptography returns a TR-31 wrapped key
%% block.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% <ul> <li> `GetParametersForExport'
%%
%% </li> <li> `ImportKey'
%%
%% </li> </ul>
export_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_key(Client, Input, []).
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
%% <ul> <li> `CreateAlias'
%%
%% </li> <li> `DeleteAlias'
%%
%% </li> <li> `ListAliases'
%%
%% </li> <li> `UpdateAlias'
%%
%% </li> </ul>
get_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_alias(Client, Input, []).
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
%% <ul> <li> `CreateKey'
%%
%% </li> <li> `DeleteKey'
%%
%% </li> <li> `ListKeys'
%%
%% </li> </ul>
get_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_key(Client, Input, []).
get_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetKey">>, Input, Options).

%% @doc Gets the export token and the signing key certificate to initiate a
%% TR-34 key export from Amazon Web Services Payment Cryptography.
%%
%% The signing key certificate signs the wrapped key under export within the
%% TR-34 key payload. The export token and signing key certificate must be in
%% place and operational before calling `ExportKey'. The export token
%% expires in 7 days. You can use the same export token to export multiple
%% keys from your service account.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% <ul> <li> `ExportKey'
%%
%% </li> <li> `GetParametersForImport'
%%
%% </li> </ul>
get_parameters_for_export(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_parameters_for_export(Client, Input, []).
get_parameters_for_export(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetParametersForExport">>, Input, Options).

%% @doc Gets the import token and the wrapping key certificate to initiate a
%% TR-34 key import into Amazon Web Services Payment Cryptography.
%%
%% The wrapping key certificate wraps the key under import within the TR-34
%% key payload. The import token and wrapping key certificate must be in
%% place and operational before calling `ImportKey'. The import token
%% expires in 7 days. The same import token can be used to import multiple
%% keys into your service account.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% <ul> <li> `GetParametersForExport'
%%
%% </li> <li> `ImportKey'
%%
%% </li> </ul>
get_parameters_for_import(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_parameters_for_import(Client, Input, []).
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
get_public_key_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_public_key_certificate(Client, Input, []).
get_public_key_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPublicKeyCertificate">>, Input, Options).

%% @doc Imports keys and public key certificates into Amazon Web Services
%% Payment Cryptography.
%%
%% Amazon Web Services Payment Cryptography simplifies main or root key
%% exchange process by eliminating the need of a paper-based key exchange
%% process. It takes a modern and secure approach based of the ANSI X9 TR-34
%% key exchange standard.
%%
%% You can use `ImportKey' to import main or root keys such as KEK (Key
%% Encryption Key) using asymmetric key exchange technique following the ANSI
%% X9 TR-34 standard. The ANSI X9 TR-34 standard uses asymmetric keys to
%% establishes bi-directional trust between the two parties exchanging keys.
%%
%% After you have imported a main or root key, you can import working keys to
%% perform various cryptographic operations within Amazon Web Services
%% Payment Cryptography using the ANSI X9 TR-31 symmetric key exchange
%% standard as mandated by PCI PIN.
%%
%% You can also import a root public key certificate, a self-signed
%% certificate used to sign other public key certificates, or a trusted
%% public key certificate under an already established root public key
%% certificate.
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
%% <ul> <li> `KeyMaterial': `RootCertificatePublicKey'
%%
%% </li> <li> `KeyClass': `PUBLIC_KEY'
%%
%% </li> <li> `KeyModesOfUse': `Verify'
%%
%% </li> <li> `KeyUsage':
%% `TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE'
%%
%% </li> <li> `PublicKeyCertificate': The certificate authority used to
%% sign the root public key certificate.
%%
%% </li> </ul> To import a trusted public key certificate
%%
%% The root public key certificate must be in place and operational before
%% you import a trusted public key certificate. Set the following parameters:
%%
%% <ul> <li> `KeyMaterial': `TrustedCertificatePublicKey'
%%
%% </li> <li> `CertificateAuthorityPublicKeyIdentifier': `KeyArn' of
%% the `RootCertificatePublicKey'.
%%
%% </li> <li> `KeyModesOfUse' and `KeyUsage': Corresponding to the
%% cryptographic operations such as wrap, sign, or encrypt that you will
%% allow the trusted public key certificate to perform.
%%
%% </li> <li> `PublicKeyCertificate': The certificate authority used to
%% sign the trusted public key certificate.
%%
%% </li> </ul> Import main keys
%%
%% Amazon Web Services Payment Cryptography uses TR-34 asymmetric key
%% exchange standard to import main keys such as KEK. In TR-34 terminology,
%% the sending party of the key is called Key Distribution Host (KDH) and the
%% receiving party of the key is called Key Receiving Host (KRH). During the
%% key import process, KDH is the user who initiates the key import and KRH
%% is Amazon Web Services Payment Cryptography who receives the key. Before
%% initiating TR-34 key import, you must obtain an import token by calling
%% `GetParametersForImport'. This operation also returns the wrapping key
%% certificate that KDH uses wrap key under import to generate a TR-34
%% wrapped key block. The import token expires after 7 days.
%%
%% Set the following parameters:
%%
%% <ul> <li> `CertificateAuthorityPublicKeyIdentifier': The `KeyArn'
%% of the certificate chain that will sign the signing key certificate and
%% should exist within Amazon Web Services Payment Cryptography before
%% initiating TR-34 key import. If it does not exist, you can import it by
%% calling by calling `ImportKey' for `RootCertificatePublicKey'.
%%
%% </li> <li> `ImportToken': Obtained from KRH by calling
%% `GetParametersForImport'.
%%
%% </li> <li> `WrappedKeyBlock': The TR-34 wrapped key block from KDH. It
%% contains the KDH key under import, wrapped with KRH provided wrapping key
%% certificate and signed by the KDH private signing key. This TR-34 key
%% block is generated by the KDH Hardware Security Module (HSM) outside of
%% Amazon Web Services Payment Cryptography.
%%
%% </li> <li> `SigningKeyCertificate': The public component of the
%% private key that signed the KDH TR-34 wrapped key block. In PEM
%% certificate format.
%%
%% </li> </ul> TR-34 is intended primarily to exchange 3DES keys. Your
%% ability to export AES-128 and larger AES keys may be dependent on your
%% source system.
%%
%% Import working keys
%%
%% Amazon Web Services Payment Cryptography uses TR-31 symmetric key exchange
%% standard to import working keys. A KEK must be established within Amazon
%% Web Services Payment Cryptography by using TR-34 key import. To initiate a
%% TR-31 key import, set the following parameters:
%%
%% <ul> <li> `WrappedKeyBlock': The key under import and encrypted using
%% KEK. The TR-31 key block generated by your HSM outside of Amazon Web
%% Services Payment Cryptography.
%%
%% </li> <li> `WrappingKeyIdentifier': The `KeyArn' of the KEK that
%% Amazon Web Services Payment Cryptography uses to decrypt or unwrap the key
%% under import.
%%
%% </li> </ul> Cross-account use: This operation can't be used across
%% different Amazon Web Services accounts.
%%
%% Related operations:
%%
%% <ul> <li> `ExportKey'
%%
%% </li> <li> `GetParametersForImport'
%%
%% </li> </ul>
import_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_key(Client, Input, []).
import_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportKey">>, Input, Options).

%% @doc Lists the aliases for all keys in the caller's Amazon Web
%% Services account and Amazon Web Services Region.
%%
%% You can filter the list of aliases. For more information, see Using
%% aliases in the Amazon Web Services Payment Cryptography User Guide.
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
%% <ul> <li> `CreateAlias'
%%
%% </li> <li> `DeleteAlias'
%%
%% </li> <li> `GetAlias'
%%
%% </li> <li> `UpdateAlias'
%%
%% </li> </ul>
list_aliases(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_aliases(Client, Input, []).
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
%% <ul> <li> `CreateKey'
%%
%% </li> <li> `DeleteKey'
%%
%% </li> <li> `GetKey'
%%
%% </li> </ul>
list_keys(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_keys(Client, Input, []).
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
%% <ul> <li> `TagResource'
%%
%% </li> <li> `UntagResource'
%%
%% </li> </ul>
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
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
%% <ul> <li> `DeleteKey'
%%
%% </li> <li> `StartKeyUsage'
%%
%% </li> <li> `StopKeyUsage'
%%
%% </li> </ul>
restore_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_key(Client, Input, []).
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
%% <ul> <li> `StopKeyUsage'
%%
%% </li> </ul>
start_key_usage(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_key_usage(Client, Input, []).
start_key_usage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartKeyUsage">>, Input, Options).

%% @doc Disables an Amazon Web Services Payment Cryptography key, which makes
%% it inactive within Amazon Web Services Payment Cryptography.
%%
%% You can use this operation instead of `DeleteKey' to deactivate a key.
%% You can enable the key in the future by calling `StartKeyUsage'.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% <ul> <li> `DeleteKey'
%%
%% </li> <li> `StartKeyUsage'
%%
%% </li> </ul>
stop_key_usage(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_key_usage(Client, Input, []).
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
%% `CreateKey'.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% <ul> <li> `ListTagsForResource'
%%
%% </li> <li> `UntagResource'
%%
%% </li> </ul>
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
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
%% <ul> <li> `ListTagsForResource'
%%
%% </li> <li> `TagResource'
%%
%% </li> </ul>
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
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
%% <ul> <li> `CreateAlias'
%%
%% </li> <li> `DeleteAlias'
%%
%% </li> <li> `GetAlias'
%%
%% </li> <li> `ListAliases'
%%
%% </li> </ul>
update_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_alias(Client, Input, []).
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
