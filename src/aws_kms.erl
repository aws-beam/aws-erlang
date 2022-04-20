%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Key Management Service
%%
%% Key Management Service (KMS) is an encryption and key management web
%% service.
%%
%% This guide describes the KMS operations that you can call
%% programmatically. For general information about KMS, see the Key
%% Management Service Developer Guide .
%%
%% KMS is replacing the term customer master key (CMK) with KMS key and KMS
%% key. The concept has not changed. To prevent breaking changes, KMS is
%% keeping some variations of this term.
%%
%% Amazon Web Services provides SDKs that consist of libraries and sample
%% code for various programming languages and platforms (Java, Ruby, .Net,
%% macOS, Android, etc.). The SDKs provide a convenient way to create
%% programmatic access to KMS and other Amazon Web Services services. For
%% example, the SDKs take care of tasks such as signing requests (see below),
%% managing errors, and retrying requests automatically. For more information
%% about the Amazon Web Services SDKs, including how to download and install
%% them, see Tools for Amazon Web Services.
%%
%% We recommend that you use the Amazon Web Services SDKs to make
%% programmatic API calls to KMS.
%%
%% If you need to use FIPS 140-2 validated cryptographic modules when
%% communicating with Amazon Web Services, use the FIPS endpoint in your
%% preferred Amazon Web Services Region. For more information about the
%% available FIPS endpoints, see Service endpoints in the Key Management
%% Service topic of the Amazon Web Services General Reference.
%%
%% Clients must support TLS (Transport Layer Security) 1.0. We recommend TLS
%% 1.2. Clients must also support cipher suites with Perfect Forward Secrecy
%% (PFS) such as Ephemeral Diffie-Hellman (DHE) or Elliptic Curve Ephemeral
%% Diffie-Hellman (ECDHE). Most modern systems such as Java 7 and later
%% support these modes.
%%
%% Signing Requests
%%
%% Requests must be signed by using an access key ID and a secret access key.
%% We strongly recommend that you do not use your Amazon Web Services account
%% (root) access key ID and secret key for everyday work with KMS. Instead,
%% use the access key ID and secret access key for an IAM user. You can also
%% use the Amazon Web Services Security Token Service to generate temporary
%% security credentials that you can use to sign requests.
%%
%% All KMS operations require Signature Version 4.
%%
%% Logging API Requests
%%
%% KMS supports CloudTrail, a service that logs Amazon Web Services API calls
%% and related events for your Amazon Web Services account and delivers them
%% to an Amazon S3 bucket that you specify. By using the information
%% collected by CloudTrail, you can determine what requests were made to KMS,
%% who made the request, when it was made, and so on. To learn more about
%% CloudTrail, including how to turn it on and find your log files, see the
%% CloudTrail User Guide.
%%
%% Additional Resources
%%
%% For more information about credentials and request signing, see the
%% following:
%%
%% <ul> <li> Amazon Web Services Security Credentials - This topic provides
%% general information about the types of credentials used to access Amazon
%% Web Services.
%%
%% </li> <li> Temporary Security Credentials - This section of the IAM User
%% Guide describes how to create and use temporary security credentials.
%%
%% </li> <li> Signature Version 4 Signing Process - This set of topics walks
%% you through the process of signing a request using an access key ID and a
%% secret access key.
%%
%% </li> </ul> Commonly Used API Operations
%%
%% Of the API operations discussed in this guide, the following will prove
%% the most useful for most applications. You will likely perform operations
%% other than these, such as creating keys and assigning policies, by using
%% the console.
%%
%% <ul> <li> `Encrypt'
%%
%% </li> <li> `Decrypt'
%%
%% </li> <li> `GenerateDataKey'
%%
%% </li> <li> `GenerateDataKeyWithoutPlaintext'
%%
%% </li> </ul>
-module(aws_kms).

-export([cancel_key_deletion/2,
         cancel_key_deletion/3,
         connect_custom_key_store/2,
         connect_custom_key_store/3,
         create_alias/2,
         create_alias/3,
         create_custom_key_store/2,
         create_custom_key_store/3,
         create_grant/2,
         create_grant/3,
         create_key/2,
         create_key/3,
         decrypt/2,
         decrypt/3,
         delete_alias/2,
         delete_alias/3,
         delete_custom_key_store/2,
         delete_custom_key_store/3,
         delete_imported_key_material/2,
         delete_imported_key_material/3,
         describe_custom_key_stores/2,
         describe_custom_key_stores/3,
         describe_key/2,
         describe_key/3,
         disable_key/2,
         disable_key/3,
         disable_key_rotation/2,
         disable_key_rotation/3,
         disconnect_custom_key_store/2,
         disconnect_custom_key_store/3,
         enable_key/2,
         enable_key/3,
         enable_key_rotation/2,
         enable_key_rotation/3,
         encrypt/2,
         encrypt/3,
         generate_data_key/2,
         generate_data_key/3,
         generate_data_key_pair/2,
         generate_data_key_pair/3,
         generate_data_key_pair_without_plaintext/2,
         generate_data_key_pair_without_plaintext/3,
         generate_data_key_without_plaintext/2,
         generate_data_key_without_plaintext/3,
         generate_mac/2,
         generate_mac/3,
         generate_random/2,
         generate_random/3,
         get_key_policy/2,
         get_key_policy/3,
         get_key_rotation_status/2,
         get_key_rotation_status/3,
         get_parameters_for_import/2,
         get_parameters_for_import/3,
         get_public_key/2,
         get_public_key/3,
         import_key_material/2,
         import_key_material/3,
         list_aliases/2,
         list_aliases/3,
         list_grants/2,
         list_grants/3,
         list_key_policies/2,
         list_key_policies/3,
         list_keys/2,
         list_keys/3,
         list_resource_tags/2,
         list_resource_tags/3,
         list_retirable_grants/2,
         list_retirable_grants/3,
         put_key_policy/2,
         put_key_policy/3,
         re_encrypt/2,
         re_encrypt/3,
         replicate_key/2,
         replicate_key/3,
         retire_grant/2,
         retire_grant/3,
         revoke_grant/2,
         revoke_grant/3,
         schedule_key_deletion/2,
         schedule_key_deletion/3,
         sign/2,
         sign/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_alias/2,
         update_alias/3,
         update_custom_key_store/2,
         update_custom_key_store/3,
         update_key_description/2,
         update_key_description/3,
         update_primary_region/2,
         update_primary_region/3,
         verify/2,
         verify/3,
         verify_mac/2,
         verify_mac/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels the deletion of a KMS key.
%%
%% When this operation succeeds, the key state of the KMS key is `Disabled'.
%% To enable the KMS key, use `EnableKey'.
%%
%% For more information about scheduling and canceling deletion of a KMS key,
%% see Deleting KMS keys in the Key Management Service Developer Guide.
%%
%% The KMS key that you use for this operation must be in a compatible key
%% state. For details, see Key states of KMS keys in the Key Management
%% Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a KMS key in a
%% different Amazon Web Services account.
%%
%% Required permissions: kms:CancelKeyDeletion (key policy)
%%
%% Related operations: `ScheduleKeyDeletion'
cancel_key_deletion(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_key_deletion(Client, Input, []).
cancel_key_deletion(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelKeyDeletion">>, Input, Options).

%% @doc Connects or reconnects a custom key store to its associated CloudHSM
%% cluster.
%%
%% The custom key store must be connected before you can create KMS keys in
%% the key store or use the KMS keys it contains. You can disconnect and
%% reconnect a custom key store at any time.
%%
%% To connect a custom key store, its associated CloudHSM cluster must have
%% at least one active HSM. To get the number of active HSMs in a cluster,
%% use the DescribeClusters operation. To add HSMs to the cluster, use the
%% CreateHsm operation. Also, the `kmsuser' crypto user (CU) must not be
%% logged into the cluster. This prevents KMS from using this account to log
%% in.
%%
%% The connection process can take an extended amount of time to complete; up
%% to 20 minutes. This operation starts the connection process, but it does
%% not wait for it to complete. When it succeeds, this operation quickly
%% returns an HTTP 200 response and a JSON object with no properties.
%% However, this response does not indicate that the custom key store is
%% connected. To get the connection state of the custom key store, use the
%% `DescribeCustomKeyStores' operation.
%%
%% During the connection process, KMS finds the CloudHSM cluster that is
%% associated with the custom key store, creates the connection
%% infrastructure, connects to the cluster, logs into the CloudHSM client as
%% the `kmsuser' CU, and rotates its password.
%%
%% The `ConnectCustomKeyStore' operation might fail for various reasons. To
%% find the reason, use the `DescribeCustomKeyStores' operation and see the
%% `ConnectionErrorCode' in the response. For help interpreting the
%% `ConnectionErrorCode', see `CustomKeyStoresListEntry'.
%%
%% To fix the failure, use the `DisconnectCustomKeyStore' operation to
%% disconnect the custom key store, correct the error, use the
%% `UpdateCustomKeyStore' operation if necessary, and then use
%% `ConnectCustomKeyStore' again.
%%
%% If you are having trouble connecting or disconnecting a custom key store,
%% see Troubleshooting a Custom Key Store in the Key Management Service
%% Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a custom key
%% store in a different Amazon Web Services account.
%%
%% Required permissions: kms:ConnectCustomKeyStore (IAM policy)
%%
%% Related operations
%%
%% <ul> <li> `CreateCustomKeyStore'
%%
%% </li> <li> `DeleteCustomKeyStore'
%%
%% </li> <li> `DescribeCustomKeyStores'
%%
%% </li> <li> `DisconnectCustomKeyStore'
%%
%% </li> <li> `UpdateCustomKeyStore'
%%
%% </li> </ul>
connect_custom_key_store(Client, Input)
  when is_map(Client), is_map(Input) ->
    connect_custom_key_store(Client, Input, []).
connect_custom_key_store(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConnectCustomKeyStore">>, Input, Options).

%% @doc Creates a friendly name for a KMS key.
%%
%% Adding, deleting, or updating an alias can allow or deny permission to the
%% KMS key. For details, see ABAC in KMS in the Key Management Service
%% Developer Guide.
%%
%% You can use an alias to identify a KMS key in the KMS console, in the
%% `DescribeKey' operation and in cryptographic operations, such as `Encrypt'
%% and `GenerateDataKey'. You can also change the KMS key that's associated
%% with the alias (`UpdateAlias') or delete the alias (`DeleteAlias') at any
%% time. These operations don't affect the underlying KMS key.
%%
%% You can associate the alias with any customer managed key in the same
%% Amazon Web Services Region. Each alias is associated with only one KMS key
%% at a time, but a KMS key can have multiple aliases. A valid KMS key is
%% required. You can't create an alias without a KMS key.
%%
%% The alias must be unique in the account and Region, but you can have
%% aliases with the same name in different Regions. For detailed information
%% about aliases, see Using aliases in the Key Management Service Developer
%% Guide.
%%
%% This operation does not return a response. To get the alias that you
%% created, use the `ListAliases' operation.
%%
%% The KMS key that you use for this operation must be in a compatible key
%% state. For details, see Key states of KMS keys in the Key Management
%% Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on an alias in a
%% different Amazon Web Services account.
%%
%% Required permissions
%%
%% <ul> <li> kms:CreateAlias on the alias (IAM policy).
%%
%% </li> <li> kms:CreateAlias on the KMS key (key policy).
%%
%% </li> </ul> For details, see Controlling access to aliases in the Key
%% Management Service Developer Guide.
%%
%% Related operations:
%%
%% <ul> <li> `DeleteAlias'
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

%% @doc Creates a custom key store that is associated with an CloudHSM
%% cluster that you own and manage.
%%
%% This operation is part of the Custom Key Store feature feature in KMS,
%% which combines the convenience and extensive integration of KMS with the
%% isolation and control of a single-tenant key store.
%%
%% Before you create the custom key store, you must assemble the required
%% elements, including an CloudHSM cluster that fulfills the requirements for
%% a custom key store. For details about the required elements, see Assemble
%% the Prerequisites in the Key Management Service Developer Guide.
%%
%% When the operation completes successfully, it returns the ID of the new
%% custom key store. Before you can use your new custom key store, you need
%% to use the `ConnectCustomKeyStore' operation to connect the new key store
%% to its CloudHSM cluster. Even if you are not going to use your custom key
%% store immediately, you might want to connect it to verify that all
%% settings are correct and then disconnect it until you are ready to use it.
%%
%% For help with failures, see Troubleshooting a Custom Key Store in the Key
%% Management Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a custom key
%% store in a different Amazon Web Services account.
%%
%% Required permissions: kms:CreateCustomKeyStore (IAM policy).
%%
%% Related operations:
%%
%% <ul> <li> `ConnectCustomKeyStore'
%%
%% </li> <li> `DeleteCustomKeyStore'
%%
%% </li> <li> `DescribeCustomKeyStores'
%%
%% </li> <li> `DisconnectCustomKeyStore'
%%
%% </li> <li> `UpdateCustomKeyStore'
%%
%% </li> </ul>
create_custom_key_store(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_custom_key_store(Client, Input, []).
create_custom_key_store(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCustomKeyStore">>, Input, Options).

%% @doc Adds a grant to a KMS key.
%%
%% A grant is a policy instrument that allows Amazon Web Services principals
%% to use KMS keys in cryptographic operations. It also can allow them to
%% view a KMS key (`DescribeKey') and create and manage grants. When
%% authorizing access to a KMS key, grants are considered along with key
%% policies and IAM policies. Grants are often used for temporary permissions
%% because you can create one, use its permissions, and delete it without
%% changing your key policies or IAM policies.
%%
%% For detailed information about grants, including grant terminology, see
%% Grants in KMS in the Key Management Service Developer Guide . For examples
%% of working with grants in several programming languages, see Programming
%% grants.
%%
%% The `CreateGrant' operation returns a `GrantToken' and a `GrantId'.
%%
%% <ul> <li> When you create, retire, or revoke a grant, there might be a
%% brief delay, usually less than five minutes, until the grant is available
%% throughout KMS. This state is known as eventual consistency. Once the
%% grant has achieved eventual consistency, the grantee principal can use the
%% permissions in the grant without identifying the grant.
%%
%% However, to use the permissions in the grant immediately, use the
%% `GrantToken' that `CreateGrant' returns. For details, see Using a grant
%% token in the Key Management Service Developer Guide .
%%
%% </li> <li> The `CreateGrant' operation also returns a `GrantId'. You can
%% use the `GrantId' and a key identifier to identify the grant in the
%% `RetireGrant' and `RevokeGrant' operations. To find the grant ID, use the
%% `ListGrants' or `ListRetirableGrants' operations.
%%
%% </li> </ul> The KMS key that you use for this operation must be in a
%% compatible key state. For details, see Key states of KMS keys in the Key
%% Management Service Developer Guide.
%%
%% Cross-account use: Yes. To perform this operation on a KMS key in a
%% different Amazon Web Services account, specify the key ARN in the value of
%% the `KeyId' parameter.
%%
%% Required permissions: kms:CreateGrant (key policy)
%%
%% Related operations:
%%
%% <ul> <li> `ListGrants'
%%
%% </li> <li> `ListRetirableGrants'
%%
%% </li> <li> `RetireGrant'
%%
%% </li> <li> `RevokeGrant'
%%
%% </li> </ul>
create_grant(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_grant(Client, Input, []).
create_grant(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGrant">>, Input, Options).

%% @doc Creates a unique customer managed KMS key in your Amazon Web Services
%% account and Region.
%%
%% In addition to the required parameters, you can use the optional
%% parameters to specify a key policy, description, tags, and other useful
%% elements for any key type.
%%
%% KMS is replacing the term customer master key (CMK) with KMS key and KMS
%% key. The concept has not changed. To prevent breaking changes, KMS is
%% keeping some variations of this term.
%%
%% To create different types of KMS keys, use the following guidance:
%%
%% <dl> <dt>Symmetric encryption KMS key</dt> <dd> To create a symmetric
%% encryption KMS key, you aren't required to specify any parameters. The
%% default value for `KeySpec', `SYMMETRIC_DEFAULT', and the default value
%% for `KeyUsage', `ENCRYPT_DECRYPT', create a symmetric encryption KMS key.
%%
%% If you need a key for basic encryption and decryption or you are creating
%% a KMS key to protect your resources in an Amazon Web Services service,
%% create a symmetric encryption KMS key. The key material in a symmetric
%% encryption key never leaves KMS unencrypted. You can use a symmetric
%% encryption KMS key to encrypt and decrypt data up to 4,096 bytes, but they
%% are typically used to generate data keys and data keys pairs. For details,
%% see `GenerateDataKey' and `GenerateDataKeyPair'.
%%
%% </dd> <dt>Asymmetric KMS keys</dt> <dd> To create an asymmetric KMS key,
%% use the `KeySpec' parameter to specify the type of key material in the KMS
%% key. Then, use the `KeyUsage' parameter to determine whether the KMS key
%% will be used to encrypt and decrypt or sign and verify. You can't change
%% these properties after the KMS key is created.
%%
%% Asymmetric KMS keys contain an RSA key pair or an Elliptic Curve (ECC) key
%% pair. The private key in an asymmetric KMS key never leaves AWS KMS
%% unencrypted. However, you can use the `GetPublicKey' operation to download
%% the public key so it can be used outside of AWS KMS. KMS keys with RSA key
%% pairs can be used to encrypt or decrypt data or sign and verify messages
%% (but not both). KMS keys with ECC key pairs can be used only to sign and
%% verify messages. For information about asymmetric KMS keys, see Asymmetric
%% KMS keys in the Key Management Service Developer Guide.
%%
%% </dd> <dt>HMAC KMS key</dt> <dd> To create an HMAC KMS key, set the
%% `KeySpec' parameter to a key spec value for HMAC KMS keys. Then set the
%% `KeyUsage' parameter to `GENERATE_VERIFY_MAC'. You must set the key usage
%% even though `GENERATE_VERIFY_MAC' is the only valid key usage value for
%% HMAC KMS keys. You can't change these properties after the KMS key is
%% created.
%%
%% HMAC KMS keys are symmetric keys that never leave KMS unencrypted. You can
%% use HMAC keys to generate (`GenerateMac') and verify (`VerifyMac') HMAC
%% codes for messages up to 4096 bytes.
%%
%% HMAC KMS keys are not supported in all Amazon Web Services Regions. If you
%% try to create an HMAC KMS key in an Amazon Web Services Region in which
%% HMAC keys are not supported, the `CreateKey' operation returns an
%% `UnsupportedOperationException'. For a list of Regions in which HMAC KMS
%% keys are supported, see HMAC keys in KMS in the Key Management Service
%% Developer Guide.
%%
%% </dd> <dt>Multi-Region primary keys</dt> <dt>Imported key material</dt>
%% <dd> To create a multi-Region primary key in the local Amazon Web Services
%% Region, use the `MultiRegion' parameter with a value of `True'. To create
%% a multi-Region replica key, that is, a KMS key with the same key ID and
%% key material as a primary key, but in a different Amazon Web Services
%% Region, use the `ReplicateKey' operation. To change a replica key to a
%% primary key, and its primary key to a replica key, use the
%% `UpdatePrimaryRegion' operation.
%%
%% You can create multi-Region KMS keys for all supported KMS key types:
%% symmetric encryption KMS keys, HMAC KMS keys, asymmetric encryption KMS
%% keys, and asymmetric signing KMS keys. You can also create multi-Region
%% keys with imported key material. However, you can't create multi-Region
%% keys in a custom key store.
%%
%% This operation supports multi-Region keys, an KMS feature that lets you
%% create multiple interoperable KMS keys in different Amazon Web Services
%% Regions. Because these KMS keys have the same key ID, key material, and
%% other metadata, you can use them interchangeably to encrypt data in one
%% Amazon Web Services Region and decrypt it in a different Amazon Web
%% Services Region without re-encrypting the data or making a cross-Region
%% call. For more information about multi-Region keys, see Multi-Region keys
%% in KMS in the Key Management Service Developer Guide.
%%
%% </dd> <dd> To import your own key material, begin by creating a symmetric
%% encryption KMS key with no key material. To do this, use the `Origin'
%% parameter of `CreateKey' with a value of `EXTERNAL'. Next, use
%% `GetParametersForImport' operation to get a public key and import token,
%% and use the public key to encrypt your key material. Then, use
%% `ImportKeyMaterial' with your import token to import the key material. For
%% step-by-step instructions, see Importing Key Material in the Key
%% Management Service Developer Guide .
%%
%% This feature supports only symmetric encryption KMS keys, including
%% multi-Region symmetric encryption KMS keys. You cannot import key material
%% into any other type of KMS key.
%%
%% To create a multi-Region primary key with imported key material, use the
%% `Origin' parameter of `CreateKey' with a value of `EXTERNAL' and the
%% `MultiRegion' parameter with a value of `True'. To create replicas of the
%% multi-Region primary key, use the `ReplicateKey' operation. For more
%% information about multi-Region keys, see Multi-Region keys in KMS in the
%% Key Management Service Developer Guide.
%%
%% </dd> <dt>Custom key store</dt> <dd> To create a symmetric encryption KMS
%% key in a custom key store, use the `CustomKeyStoreId' parameter to specify
%% the custom key store. You must also use the `Origin' parameter with a
%% value of `AWS_CLOUDHSM'. The CloudHSM cluster that is associated with the
%% custom key store must have at least two active HSMs in different
%% Availability Zones in the Amazon Web Services Region.
%%
%% Custom key stores support only symmetric encryption KMS keys. You cannot
%% create an HMAC KMS key or an asymmetric KMS key in a custom key store. For
%% information about custom key stores in KMS see Custom key stores in KMS in
%% the Key Management Service Developer Guide .
%%
%% </dd> </dl> Cross-account use: No. You cannot use this operation to create
%% a KMS key in a different Amazon Web Services account.
%%
%% Required permissions: kms:CreateKey (IAM policy). To use the `Tags'
%% parameter, kms:TagResource (IAM policy). For examples and information
%% about related permissions, see Allow a user to create KMS keys in the Key
%% Management Service Developer Guide.
%%
%% Related operations:
%%
%% <ul> <li> `DescribeKey'
%%
%% </li> <li> `ListKeys'
%%
%% </li> <li> `ScheduleKeyDeletion'
%%
%% </li> </ul>
create_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_key(Client, Input, []).
create_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateKey">>, Input, Options).

%% @doc Decrypts ciphertext that was encrypted by a KMS key using any of the
%% following operations:
%%
%% <ul> <li> `Encrypt'
%%
%% </li> <li> `GenerateDataKey'
%%
%% </li> <li> `GenerateDataKeyPair'
%%
%% </li> <li> `GenerateDataKeyWithoutPlaintext'
%%
%% </li> <li> `GenerateDataKeyPairWithoutPlaintext'
%%
%% </li> </ul> You can use this operation to decrypt ciphertext that was
%% encrypted under a symmetric encryption KMS key or an asymmetric encryption
%% KMS key.
%%
%% When the KMS key is asymmetric, you must specify the KMS key and the
%% encryption algorithm that was used to encrypt the ciphertext. For
%% information about asymmetric KMS keys, see Asymmetric KMS keys in the Key
%% Management Service Developer Guide.
%%
%% The `Decrypt' operation also decrypts ciphertext that was encrypted
%% outside of KMS by the public key in an KMS asymmetric KMS key. However, it
%% cannot decrypt symmetric ciphertext produced by other libraries, such as
%% the Amazon Web Services Encryption SDK or Amazon S3 client-side
%% encryption. These libraries return a ciphertext format that is
%% incompatible with KMS.
%%
%% If the ciphertext was encrypted under a symmetric encryption KMS key, the
%% `KeyId' parameter is optional. KMS can get this information from metadata
%% that it adds to the symmetric ciphertext blob. This feature adds
%% durability to your implementation by ensuring that authorized users can
%% decrypt ciphertext decades after it was encrypted, even if they've lost
%% track of the key ID. However, specifying the KMS key is always recommended
%% as a best practice. When you use the `KeyId' parameter to specify a KMS
%% key, KMS only uses the KMS key you specify. If the ciphertext was
%% encrypted under a different KMS key, the `Decrypt' operation fails. This
%% practice ensures that you use the KMS key that you intend.
%%
%% Whenever possible, use key policies to give users permission to call the
%% `Decrypt' operation on a particular KMS key, instead of using IAM
%% policies. Otherwise, you might create an IAM user policy that gives the
%% user `Decrypt' permission on all KMS keys. This user could decrypt
%% ciphertext that was encrypted by KMS keys in other accounts if the key
%% policy for the cross-account KMS key permits it. If you must use an IAM
%% policy for `Decrypt' permissions, limit the user to particular KMS keys or
%% particular trusted accounts. For details, see Best practices for IAM
%% policies in the Key Management Service Developer Guide.
%%
%% Applications in Amazon Web Services Nitro Enclaves can call this operation
%% by using the Amazon Web Services Nitro Enclaves Development Kit. For
%% information about the supporting parameters, see How Amazon Web Services
%% Nitro Enclaves use KMS in the Key Management Service Developer Guide.
%%
%% The KMS key that you use for this operation must be in a compatible key
%% state. For details, see Key states of KMS keys in the Key Management
%% Service Developer Guide.
%%
%% Cross-account use: Yes. To perform this operation with a KMS key in a
%% different Amazon Web Services account, specify the key ARN or alias ARN in
%% the value of the `KeyId' parameter.
%%
%% Required permissions: kms:Decrypt (key policy)
%%
%% Related operations:
%%
%% <ul> <li> `Encrypt'
%%
%% </li> <li> `GenerateDataKey'
%%
%% </li> <li> `GenerateDataKeyPair'
%%
%% </li> <li> `ReEncrypt'
%%
%% </li> </ul>
decrypt(Client, Input)
  when is_map(Client), is_map(Input) ->
    decrypt(Client, Input, []).
decrypt(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Decrypt">>, Input, Options).

%% @doc Deletes the specified alias.
%%
%% Adding, deleting, or updating an alias can allow or deny permission to the
%% KMS key. For details, see ABAC in KMS in the Key Management Service
%% Developer Guide.
%%
%% Because an alias is not a property of a KMS key, you can delete and change
%% the aliases of a KMS key without affecting the KMS key. Also, aliases do
%% not appear in the response from the `DescribeKey' operation. To get the
%% aliases of all KMS keys, use the `ListAliases' operation.
%%
%% Each KMS key can have multiple aliases. To change the alias of a KMS key,
%% use `DeleteAlias' to delete the current alias and `CreateAlias' to create
%% a new alias. To associate an existing alias with a different KMS key, call
%% `UpdateAlias'.
%%
%% Cross-account use: No. You cannot perform this operation on an alias in a
%% different Amazon Web Services account.
%%
%% Required permissions
%%
%% <ul> <li> kms:DeleteAlias on the alias (IAM policy).
%%
%% </li> <li> kms:DeleteAlias on the KMS key (key policy).
%%
%% </li> </ul> For details, see Controlling access to aliases in the Key
%% Management Service Developer Guide.
%%
%% Related operations:
%%
%% <ul> <li> `CreateAlias'
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

%% @doc Deletes a custom key store.
%%
%% This operation does not delete the CloudHSM cluster that is associated
%% with the custom key store, or affect any users or keys in the cluster.
%%
%% The custom key store that you delete cannot contain any KMS KMS keys.
%% Before deleting the key store, verify that you will never need to use any
%% of the KMS keys in the key store for any cryptographic operations. Then,
%% use `ScheduleKeyDeletion' to delete the KMS keys from the key store. When
%% the scheduled waiting period expires, the `ScheduleKeyDeletion' operation
%% deletes the KMS keys. Then it makes a best effort to delete the key
%% material from the associated cluster. However, you might need to manually
%% delete the orphaned key material from the cluster and its backups.
%%
%% After all KMS keys are deleted from KMS, use `DisconnectCustomKeyStore' to
%% disconnect the key store from KMS. Then, you can delete the custom key
%% store.
%%
%% Instead of deleting the custom key store, consider using
%% `DisconnectCustomKeyStore' to disconnect it from KMS. While the key store
%% is disconnected, you cannot create or use the KMS keys in the key store.
%% But, you do not need to delete KMS keys and you can reconnect a
%% disconnected custom key store at any time.
%%
%% If the operation succeeds, it returns a JSON object with no properties.
%%
%% This operation is part of the Custom Key Store feature feature in KMS,
%% which combines the convenience and extensive integration of KMS with the
%% isolation and control of a single-tenant key store.
%%
%% Cross-account use: No. You cannot perform this operation on a custom key
%% store in a different Amazon Web Services account.
%%
%% Required permissions: kms:DeleteCustomKeyStore (IAM policy)
%%
%% Related operations:
%%
%% <ul> <li> `ConnectCustomKeyStore'
%%
%% </li> <li> `CreateCustomKeyStore'
%%
%% </li> <li> `DescribeCustomKeyStores'
%%
%% </li> <li> `DisconnectCustomKeyStore'
%%
%% </li> <li> `UpdateCustomKeyStore'
%%
%% </li> </ul>
delete_custom_key_store(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_custom_key_store(Client, Input, []).
delete_custom_key_store(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCustomKeyStore">>, Input, Options).

%% @doc Deletes key material that you previously imported.
%%
%% This operation makes the specified KMS key unusable. For more information
%% about importing key material into KMS, see Importing Key Material in the
%% Key Management Service Developer Guide.
%%
%% When the specified KMS key is in the `PendingDeletion' state, this
%% operation does not change the KMS key's state. Otherwise, it changes the
%% KMS key's state to `PendingImport'.
%%
%% After you delete key material, you can use `ImportKeyMaterial' to reimport
%% the same key material into the KMS key.
%%
%% The KMS key that you use for this operation must be in a compatible key
%% state. For details, see Key states of KMS keys in the Key Management
%% Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a KMS key in a
%% different Amazon Web Services account.
%%
%% Required permissions: kms:DeleteImportedKeyMaterial (key policy)
%%
%% Related operations:
%%
%% <ul> <li> `GetParametersForImport'
%%
%% </li> <li> `ImportKeyMaterial'
%%
%% </li> </ul>
delete_imported_key_material(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_imported_key_material(Client, Input, []).
delete_imported_key_material(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteImportedKeyMaterial">>, Input, Options).

%% @doc Gets information about custom key stores in the account and Region.
%%
%% This operation is part of the Custom Key Store feature feature in KMS,
%% which combines the convenience and extensive integration of KMS with the
%% isolation and control of a single-tenant key store.
%%
%% By default, this operation returns information about all custom key stores
%% in the account and Region. To get only information about a particular
%% custom key store, use either the `CustomKeyStoreName' or
%% `CustomKeyStoreId' parameter (but not both).
%%
%% To determine whether the custom key store is connected to its CloudHSM
%% cluster, use the `ConnectionState' element in the response. If an attempt
%% to connect the custom key store failed, the `ConnectionState' value is
%% `FAILED' and the `ConnectionErrorCode' element in the response indicates
%% the cause of the failure. For help interpreting the `ConnectionErrorCode',
%% see `CustomKeyStoresListEntry'.
%%
%% Custom key stores have a `DISCONNECTED' connection state if the key store
%% has never been connected or you use the `DisconnectCustomKeyStore'
%% operation to disconnect it. If your custom key store state is `CONNECTED'
%% but you are having trouble using it, make sure that its associated
%% CloudHSM cluster is active and contains the minimum number of HSMs
%% required for the operation, if any.
%%
%% For help repairing your custom key store, see the Troubleshooting Custom
%% Key Stores topic in the Key Management Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a custom key
%% store in a different Amazon Web Services account.
%%
%% Required permissions: kms:DescribeCustomKeyStores (IAM policy)
%%
%% Related operations:
%%
%% <ul> <li> `ConnectCustomKeyStore'
%%
%% </li> <li> `CreateCustomKeyStore'
%%
%% </li> <li> `DeleteCustomKeyStore'
%%
%% </li> <li> `DisconnectCustomKeyStore'
%%
%% </li> <li> `UpdateCustomKeyStore'
%%
%% </li> </ul>
describe_custom_key_stores(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_custom_key_stores(Client, Input, []).
describe_custom_key_stores(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCustomKeyStores">>, Input, Options).

%% @doc Provides detailed information about a KMS key.
%%
%% You can run `DescribeKey' on a customer managed key or an Amazon Web
%% Services managed key.
%%
%% This detailed information includes the key ARN, creation date (and
%% deletion date, if applicable), the key state, and the origin and
%% expiration date (if any) of the key material. It includes fields, like
%% `KeySpec', that help you distinguish different types of KMS keys. It also
%% displays the key usage (encryption, signing, or generating and verifying
%% MACs) and the algorithms that the KMS key supports. For KMS keys in custom
%% key stores, it includes information about the custom key store, such as
%% the key store ID and the CloudHSM cluster ID. For multi-Region keys, it
%% displays the primary key and all related replica keys.
%%
%% `DescribeKey' does not return the following information:
%%
%% <ul> <li> Aliases associated with the KMS key. To get this information,
%% use `ListAliases'.
%%
%% </li> <li> Whether automatic key rotation is enabled on the KMS key. To
%% get this information, use `GetKeyRotationStatus'. Also, some key states
%% prevent a KMS key from being automatically rotated. For details, see How
%% Automatic Key Rotation Works in Key Management Service Developer Guide.
%%
%% </li> <li> Tags on the KMS key. To get this information, use
%% `ListResourceTags'.
%%
%% </li> <li> Key policies and grants on the KMS key. To get this
%% information, use `GetKeyPolicy' and `ListGrants'.
%%
%% </li> </ul> In general, `DescribeKey' is a non-mutating operation. It
%% returns data about KMS keys, but doesn't change them. However, Amazon Web
%% Services services use `DescribeKey' to create Amazon Web Services managed
%% keys from a predefined Amazon Web Services alias with no key ID.
%%
%% Cross-account use: Yes. To perform this operation with a KMS key in a
%% different Amazon Web Services account, specify the key ARN or alias ARN in
%% the value of the `KeyId' parameter.
%%
%% Required permissions: kms:DescribeKey (key policy)
%%
%% Related operations:
%%
%% <ul> <li> `GetKeyPolicy'
%%
%% </li> <li> `GetKeyRotationStatus'
%%
%% </li> <li> `ListAliases'
%%
%% </li> <li> `ListGrants'
%%
%% </li> <li> `ListKeys'
%%
%% </li> <li> `ListResourceTags'
%%
%% </li> <li> `ListRetirableGrants'
%%
%% </li> </ul>
describe_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_key(Client, Input, []).
describe_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeKey">>, Input, Options).

%% @doc Sets the state of a KMS key to disabled.
%%
%% This change temporarily prevents use of the KMS key for cryptographic
%% operations.
%%
%% For more information about how key state affects the use of a KMS key, see
%% Key states of KMS keys in the Key Management Service Developer Guide .
%%
%% The KMS key that you use for this operation must be in a compatible key
%% state. For details, see Key states of KMS keys in the Key Management
%% Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a KMS key in a
%% different Amazon Web Services account.
%%
%% Required permissions: kms:DisableKey (key policy)
%%
%% Related operations: `EnableKey'
disable_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_key(Client, Input, []).
disable_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableKey">>, Input, Options).

%% @doc Disables automatic rotation of the key material for the specified
%% symmetric encryption KMS key.
%%
%% You cannot enable automatic rotation of asymmetric KMS keys, HMAC KMS
%% keys, KMS keys with imported key material, or KMS keys in a custom key
%% store. To enable or disable automatic rotation of a set of related
%% multi-Region keys, set the property on the primary key.
%%
%% The KMS key that you use for this operation must be in a compatible key
%% state. For details, see Key states of KMS keys in the Key Management
%% Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a KMS key in a
%% different Amazon Web Services account.
%%
%% Required permissions: kms:DisableKeyRotation (key policy)
%%
%% Related operations:
%%
%% <ul> <li> `EnableKeyRotation'
%%
%% </li> <li> `GetKeyRotationStatus'
%%
%% </li> </ul>
disable_key_rotation(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_key_rotation(Client, Input, []).
disable_key_rotation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableKeyRotation">>, Input, Options).

%% @doc Disconnects the custom key store from its associated CloudHSM
%% cluster.
%%
%% While a custom key store is disconnected, you can manage the custom key
%% store and its KMS keys, but you cannot create or use KMS keys in the
%% custom key store. You can reconnect the custom key store at any time.
%%
%% While a custom key store is disconnected, all attempts to create KMS keys
%% in the custom key store or to use existing KMS keys in cryptographic
%% operations will fail. This action can prevent users from storing and
%% accessing sensitive data.
%%
%% To find the connection state of a custom key store, use the
%% `DescribeCustomKeyStores' operation. To reconnect a custom key store, use
%% the `ConnectCustomKeyStore' operation.
%%
%% If the operation succeeds, it returns a JSON object with no properties.
%%
%% This operation is part of the Custom Key Store feature feature in KMS,
%% which combines the convenience and extensive integration of KMS with the
%% isolation and control of a single-tenant key store.
%%
%% Cross-account use: No. You cannot perform this operation on a custom key
%% store in a different Amazon Web Services account.
%%
%% Required permissions: kms:DisconnectCustomKeyStore (IAM policy)
%%
%% Related operations:
%%
%% <ul> <li> `ConnectCustomKeyStore'
%%
%% </li> <li> `CreateCustomKeyStore'
%%
%% </li> <li> `DeleteCustomKeyStore'
%%
%% </li> <li> `DescribeCustomKeyStores'
%%
%% </li> <li> `UpdateCustomKeyStore'
%%
%% </li> </ul>
disconnect_custom_key_store(Client, Input)
  when is_map(Client), is_map(Input) ->
    disconnect_custom_key_store(Client, Input, []).
disconnect_custom_key_store(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisconnectCustomKeyStore">>, Input, Options).

%% @doc Sets the key state of a KMS key to enabled.
%%
%% This allows you to use the KMS key for cryptographic operations.
%%
%% The KMS key that you use for this operation must be in a compatible key
%% state. For details, see Key states of KMS keys in the Key Management
%% Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a KMS key in a
%% different Amazon Web Services account.
%%
%% Required permissions: kms:EnableKey (key policy)
%%
%% Related operations: `DisableKey'
enable_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_key(Client, Input, []).
enable_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableKey">>, Input, Options).

%% @doc Enables automatic rotation of the key material for the specified
%% symmetric encryption KMS key.
%%
%% You cannot enable automatic rotation of asymmetric KMS keys, HMAC KMS
%% keys, KMS keys with imported key material, or KMS keys in a custom key
%% store. To enable or disable automatic rotation of a set of related
%% multi-Region keys, set the property on the primary key.
%%
%% The KMS key that you use for this operation must be in a compatible key
%% state. For details, see Key states of KMS keys in the Key Management
%% Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a KMS key in a
%% different Amazon Web Services account.
%%
%% Required permissions: kms:EnableKeyRotation (key policy)
%%
%% Related operations:
%%
%% <ul> <li> `DisableKeyRotation'
%%
%% </li> <li> `GetKeyRotationStatus'
%%
%% </li> </ul>
enable_key_rotation(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_key_rotation(Client, Input, []).
enable_key_rotation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableKeyRotation">>, Input, Options).

%% @doc Encrypts plaintext of up to 4,096 bytes using a KMS key.
%%
%% You can use a symmetric or asymmetric KMS key with a `KeyUsage' of
%% `ENCRYPT_DECRYPT'.
%%
%% You can use this operation to encrypt small amounts of arbitrary data,
%% such as a personal identifier or database password, or other sensitive
%% information. You don't need to use the `Encrypt' operation to encrypt a
%% data key. The `GenerateDataKey' and `GenerateDataKeyPair' operations
%% return a plaintext data key and an encrypted copy of that data key.
%%
%% If you use a symmetric encryption KMS key, you can use an encryption
%% context to add additional security to your encryption operation. If you
%% specify an `EncryptionContext' when encrypting data, you must specify the
%% same encryption context (a case-sensitive exact match) when decrypting the
%% data. Otherwise, the request to decrypt fails with an
%% `InvalidCiphertextException'. For more information, see Encryption Context
%% in the Key Management Service Developer Guide.
%%
%% If you specify an asymmetric KMS key, you must also specify the encryption
%% algorithm. The algorithm must be compatible with the KMS key type.
%%
%% When you use an asymmetric KMS key to encrypt or reencrypt data, be sure
%% to record the KMS key and encryption algorithm that you choose. You will
%% be required to provide the same KMS key and encryption algorithm when you
%% decrypt the data. If the KMS key and algorithm do not match the values
%% used to encrypt the data, the decrypt operation fails.
%%
%% You are not required to supply the key ID and encryption algorithm when
%% you decrypt with symmetric encryption KMS keys because KMS stores this
%% information in the ciphertext blob. KMS cannot store metadata in
%% ciphertext generated with asymmetric keys. The standard format for
%% asymmetric key ciphertext does not include configurable fields.
%%
%% The maximum size of the data that you can encrypt varies with the type of
%% KMS key and the encryption algorithm that you choose.
%%
%% <ul> <li> Symmetric encryption KMS keys
%%
%% <ul> <li> `SYMMETRIC_DEFAULT': 4096 bytes
%%
%% </li> </ul> </li> <li> `RSA_2048'
%%
%% <ul> <li> `RSAES_OAEP_SHA_1': 214 bytes
%%
%% </li> <li> `RSAES_OAEP_SHA_256': 190 bytes
%%
%% </li> </ul> </li> <li> `RSA_3072'
%%
%% <ul> <li> `RSAES_OAEP_SHA_1': 342 bytes
%%
%% </li> <li> `RSAES_OAEP_SHA_256': 318 bytes
%%
%% </li> </ul> </li> <li> `RSA_4096'
%%
%% <ul> <li> `RSAES_OAEP_SHA_1': 470 bytes
%%
%% </li> <li> `RSAES_OAEP_SHA_256': 446 bytes
%%
%% </li> </ul> </li> </ul> The KMS key that you use for this operation must
%% be in a compatible key state. For details, see Key states of KMS keys in
%% the Key Management Service Developer Guide.
%%
%% Cross-account use: Yes. To perform this operation with a KMS key in a
%% different Amazon Web Services account, specify the key ARN or alias ARN in
%% the value of the `KeyId' parameter.
%%
%% Required permissions: kms:Encrypt (key policy)
%%
%% Related operations:
%%
%% <ul> <li> `Decrypt'
%%
%% </li> <li> `GenerateDataKey'
%%
%% </li> <li> `GenerateDataKeyPair'
%%
%% </li> </ul>
encrypt(Client, Input)
  when is_map(Client), is_map(Input) ->
    encrypt(Client, Input, []).
encrypt(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Encrypt">>, Input, Options).

%% @doc Returns a unique symmetric data key for use outside of KMS.
%%
%% This operation returns a plaintext copy of the data key and a copy that is
%% encrypted under a symmetric encryption KMS key that you specify. The bytes
%% in the plaintext key are random; they are not related to the caller or the
%% KMS key. You can use the plaintext key to encrypt your data outside of KMS
%% and store the encrypted data key with the encrypted data.
%%
%% To generate a data key, specify the symmetric encryption KMS key that will
%% be used to encrypt the data key. You cannot use an asymmetric KMS key to
%% encrypt data keys. To get the type of your KMS key, use the `DescribeKey'
%% operation. You must also specify the length of the data key. Use either
%% the `KeySpec' or `NumberOfBytes' parameters (but not both). For 128-bit
%% and 256-bit data keys, use the `KeySpec' parameter.
%%
%% To get only an encrypted copy of the data key, use
%% `GenerateDataKeyWithoutPlaintext'. To generate an asymmetric data key
%% pair, use the `GenerateDataKeyPair' or
%% `GenerateDataKeyPairWithoutPlaintext' operation. To get a
%% cryptographically secure random byte string, use `GenerateRandom'.
%%
%% You can use an optional encryption context to add additional security to
%% the encryption operation. If you specify an `EncryptionContext', you must
%% specify the same encryption context (a case-sensitive exact match) when
%% decrypting the encrypted data key. Otherwise, the request to decrypt fails
%% with an `InvalidCiphertextException'. For more information, see Encryption
%% Context in the Key Management Service Developer Guide.
%%
%% Applications in Amazon Web Services Nitro Enclaves can call this operation
%% by using the Amazon Web Services Nitro Enclaves Development Kit. For
%% information about the supporting parameters, see How Amazon Web Services
%% Nitro Enclaves use KMS in the Key Management Service Developer Guide.
%%
%% The KMS key that you use for this operation must be in a compatible key
%% state. For details, see Key states of KMS keys in the Key Management
%% Service Developer Guide.
%%
%% How to use your data key
%%
%% We recommend that you use the following pattern to encrypt data locally in
%% your application. You can write your own code or use a client-side
%% encryption library, such as the Amazon Web Services Encryption SDK, the
%% Amazon DynamoDB Encryption Client, or Amazon S3 client-side encryption to
%% do these tasks for you.
%%
%% To encrypt data outside of KMS:
%%
%% <ol> <li> Use the `GenerateDataKey' operation to get a data key.
%%
%% </li> <li> Use the plaintext data key (in the `Plaintext' field of the
%% response) to encrypt your data outside of KMS. Then erase the plaintext
%% data key from memory.
%%
%% </li> <li> Store the encrypted data key (in the `CiphertextBlob' field of
%% the response) with the encrypted data.
%%
%% </li> </ol> To decrypt data outside of KMS:
%%
%% <ol> <li> Use the `Decrypt' operation to decrypt the encrypted data key.
%% The operation returns a plaintext copy of the data key.
%%
%% </li> <li> Use the plaintext data key to decrypt data outside of KMS, then
%% erase the plaintext data key from memory.
%%
%% </li> </ol> Cross-account use: Yes. To perform this operation with a KMS
%% key in a different Amazon Web Services account, specify the key ARN or
%% alias ARN in the value of the `KeyId' parameter.
%%
%% Required permissions: kms:GenerateDataKey (key policy)
%%
%% Related operations:
%%
%% <ul> <li> `Decrypt'
%%
%% </li> <li> `Encrypt'
%%
%% </li> <li> `GenerateDataKeyPair'
%%
%% </li> <li> `GenerateDataKeyPairWithoutPlaintext'
%%
%% </li> <li> `GenerateDataKeyWithoutPlaintext'
%%
%% </li> </ul>
generate_data_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    generate_data_key(Client, Input, []).
generate_data_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GenerateDataKey">>, Input, Options).

%% @doc Returns a unique asymmetric data key pair for use outside of KMS.
%%
%% This operation returns a plaintext public key, a plaintext private key,
%% and a copy of the private key that is encrypted under the symmetric
%% encryption KMS key you specify. You can use the data key pair to perform
%% asymmetric cryptography and implement digital signatures outside of KMS.
%% The bytes in the keys are random; they not related to the caller or to the
%% KMS key that is used to encrypt the private key.
%%
%% You can use the public key that `GenerateDataKeyPair' returns to encrypt
%% data or verify a signature outside of KMS. Then, store the encrypted
%% private key with the data. When you are ready to decrypt data or sign a
%% message, you can use the `Decrypt' operation to decrypt the encrypted
%% private key.
%%
%% To generate a data key pair, you must specify a symmetric encryption KMS
%% key to encrypt the private key in a data key pair. You cannot use an
%% asymmetric KMS key or a KMS key in a custom key store. To get the type and
%% origin of your KMS key, use the `DescribeKey' operation.
%%
%% Use the `KeyPairSpec' parameter to choose an RSA or Elliptic Curve (ECC)
%% data key pair. KMS recommends that your use ECC key pairs for signing, and
%% use RSA key pairs for either encryption or signing, but not both. However,
%% KMS cannot enforce any restrictions on the use of data key pairs outside
%% of KMS.
%%
%% If you are using the data key pair to encrypt data, or for any operation
%% where you don't immediately need a private key, consider using the
%% `GenerateDataKeyPairWithoutPlaintext' operation.
%% `GenerateDataKeyPairWithoutPlaintext' returns a plaintext public key and
%% an encrypted private key, but omits the plaintext private key that you
%% need only to decrypt ciphertext or sign a message. Later, when you need to
%% decrypt the data or sign a message, use the `Decrypt' operation to decrypt
%% the encrypted private key in the data key pair.
%%
%% `GenerateDataKeyPair' returns a unique data key pair for each request. The
%% bytes in the keys are random; they are not related to the caller or the
%% KMS key that is used to encrypt the private key. The public key is a
%% DER-encoded X.509 SubjectPublicKeyInfo, as specified in RFC 5280. The
%% private key is a DER-encoded PKCS8 PrivateKeyInfo, as specified in RFC
%% 5958.
%%
%% You can use an optional encryption context to add additional security to
%% the encryption operation. If you specify an `EncryptionContext', you must
%% specify the same encryption context (a case-sensitive exact match) when
%% decrypting the encrypted data key. Otherwise, the request to decrypt fails
%% with an `InvalidCiphertextException'. For more information, see Encryption
%% Context in the Key Management Service Developer Guide.
%%
%% The KMS key that you use for this operation must be in a compatible key
%% state. For details, see Key states of KMS keys in the Key Management
%% Service Developer Guide.
%%
%% Cross-account use: Yes. To perform this operation with a KMS key in a
%% different Amazon Web Services account, specify the key ARN or alias ARN in
%% the value of the `KeyId' parameter.
%%
%% Required permissions: kms:GenerateDataKeyPair (key policy)
%%
%% Related operations:
%%
%% <ul> <li> `Decrypt'
%%
%% </li> <li> `Encrypt'
%%
%% </li> <li> `GenerateDataKey'
%%
%% </li> <li> `GenerateDataKeyPairWithoutPlaintext'
%%
%% </li> <li> `GenerateDataKeyWithoutPlaintext'
%%
%% </li> </ul>
generate_data_key_pair(Client, Input)
  when is_map(Client), is_map(Input) ->
    generate_data_key_pair(Client, Input, []).
generate_data_key_pair(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GenerateDataKeyPair">>, Input, Options).

%% @doc Returns a unique asymmetric data key pair for use outside of KMS.
%%
%% This operation returns a plaintext public key and a copy of the private
%% key that is encrypted under the symmetric encryption KMS key you specify.
%% Unlike `GenerateDataKeyPair', this operation does not return a plaintext
%% private key. The bytes in the keys are random; they are not related to the
%% caller or to the KMS key that is used to encrypt the private key.
%%
%% You can use the public key that `GenerateDataKeyPairWithoutPlaintext'
%% returns to encrypt data or verify a signature outside of KMS. Then, store
%% the encrypted private key with the data. When you are ready to decrypt
%% data or sign a message, you can use the `Decrypt' operation to decrypt the
%% encrypted private key.
%%
%% To generate a data key pair, you must specify a symmetric encryption KMS
%% key to encrypt the private key in a data key pair. You cannot use an
%% asymmetric KMS key or a KMS key in a custom key store. To get the type and
%% origin of your KMS key, use the `DescribeKey' operation.
%%
%% Use the `KeyPairSpec' parameter to choose an RSA or Elliptic Curve (ECC)
%% data key pair. KMS recommends that your use ECC key pairs for signing, and
%% use RSA key pairs for either encryption or signing, but not both. However,
%% KMS cannot enforce any restrictions on the use of data key pairs outside
%% of KMS.
%%
%% `GenerateDataKeyPairWithoutPlaintext' returns a unique data key pair for
%% each request. The bytes in the key are not related to the caller or KMS
%% key that is used to encrypt the private key. The public key is a
%% DER-encoded X.509 SubjectPublicKeyInfo, as specified in RFC 5280.
%%
%% You can use an optional encryption context to add additional security to
%% the encryption operation. If you specify an `EncryptionContext', you must
%% specify the same encryption context (a case-sensitive exact match) when
%% decrypting the encrypted data key. Otherwise, the request to decrypt fails
%% with an `InvalidCiphertextException'. For more information, see Encryption
%% Context in the Key Management Service Developer Guide.
%%
%% The KMS key that you use for this operation must be in a compatible key
%% state. For details, see Key states of KMS keys in the Key Management
%% Service Developer Guide.
%%
%% Cross-account use: Yes. To perform this operation with a KMS key in a
%% different Amazon Web Services account, specify the key ARN or alias ARN in
%% the value of the `KeyId' parameter.
%%
%% Required permissions: kms:GenerateDataKeyPairWithoutPlaintext (key policy)
%%
%% Related operations:
%%
%% <ul> <li> `Decrypt'
%%
%% </li> <li> `Encrypt'
%%
%% </li> <li> `GenerateDataKey'
%%
%% </li> <li> `GenerateDataKeyPair'
%%
%% </li> <li> `GenerateDataKeyWithoutPlaintext'
%%
%% </li> </ul>
generate_data_key_pair_without_plaintext(Client, Input)
  when is_map(Client), is_map(Input) ->
    generate_data_key_pair_without_plaintext(Client, Input, []).
generate_data_key_pair_without_plaintext(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GenerateDataKeyPairWithoutPlaintext">>, Input, Options).

%% @doc Returns a unique symmetric data key for use outside of KMS.
%%
%% This operation returns a data key that is encrypted under a symmetric
%% encryption KMS key that you specify. The bytes in the key are random; they
%% are not related to the caller or to the KMS key.
%%
%% `GenerateDataKeyWithoutPlaintext' is identical to the `GenerateDataKey'
%% operation except that it does not return a plaintext copy of the data key.
%%
%% This operation is useful for systems that need to encrypt data at some
%% point, but not immediately. When you need to encrypt the data, you call
%% the `Decrypt' operation on the encrypted copy of the key. It's also useful
%% in distributed systems with different levels of trust. For example, you
%% might store encrypted data in containers. One component of your system
%% creates new containers and stores an encrypted data key with each
%% container. Then, a different component puts the data into the containers.
%% That component first decrypts the data key, uses the plaintext data key to
%% encrypt data, puts the encrypted data into the container, and then
%% destroys the plaintext data key. In this system, the component that
%% creates the containers never sees the plaintext data key.
%%
%% To request an asymmetric data key pair, use the `GenerateDataKeyPair' or
%% `GenerateDataKeyPairWithoutPlaintext' operations.
%%
%% To generate a data key, you must specify the symmetric encryption KMS key
%% that is used to encrypt the data key. You cannot use an asymmetric KMS key
%% or a key in a custom key store to generate a data key. To get the type of
%% your KMS key, use the `DescribeKey' operation.
%%
%% If the operation succeeds, you will find the encrypted copy of the data
%% key in the `CiphertextBlob' field.
%%
%% You can use an optional encryption context to add additional security to
%% the encryption operation. If you specify an `EncryptionContext', you must
%% specify the same encryption context (a case-sensitive exact match) when
%% decrypting the encrypted data key. Otherwise, the request to decrypt fails
%% with an `InvalidCiphertextException'. For more information, see Encryption
%% Context in the Key Management Service Developer Guide.
%%
%% The KMS key that you use for this operation must be in a compatible key
%% state. For details, see Key states of KMS keys in the Key Management
%% Service Developer Guide.
%%
%% Cross-account use: Yes. To perform this operation with a KMS key in a
%% different Amazon Web Services account, specify the key ARN or alias ARN in
%% the value of the `KeyId' parameter.
%%
%% Required permissions: kms:GenerateDataKeyWithoutPlaintext (key policy)
%%
%% Related operations:
%%
%% <ul> <li> `Decrypt'
%%
%% </li> <li> `Encrypt'
%%
%% </li> <li> `GenerateDataKey'
%%
%% </li> <li> `GenerateDataKeyPair'
%%
%% </li> <li> `GenerateDataKeyPairWithoutPlaintext'
%%
%% </li> </ul>
generate_data_key_without_plaintext(Client, Input)
  when is_map(Client), is_map(Input) ->
    generate_data_key_without_plaintext(Client, Input, []).
generate_data_key_without_plaintext(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GenerateDataKeyWithoutPlaintext">>, Input, Options).

%% @doc Generates a hash-based message authentication code (HMAC) for a
%% message using an HMAC KMS key and a MAC algorithm that the key supports.
%%
%% The MAC algorithm computes the HMAC for the message and the key as
%% described in RFC 2104.
%%
%% You can use the HMAC that this operation generates with the `VerifyMac'
%% operation to demonstrate that the original message has not changed. Also,
%% because a secret key is used to create the hash, you can verify that the
%% party that generated the hash has the required secret key. This operation
%% is part of KMS support for HMAC KMS keys. For details, see HMAC keys in
%% KMS in the Key Management Service Developer Guide .
%%
%% The KMS key that you use for this operation must be in a compatible key
%% state. For details, see Key states of KMS keys in the Key Management
%% Service Developer Guide.
%%
%% Cross-account use: Yes. To perform this operation with a KMS key in a
%% different Amazon Web Services account, specify the key ARN or alias ARN in
%% the value of the `KeyId' parameter.
%%
%% Required permissions: kms:GenerateMac (key policy)
%%
%% Related operations: `VerifyMac'
generate_mac(Client, Input)
  when is_map(Client), is_map(Input) ->
    generate_mac(Client, Input, []).
generate_mac(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GenerateMac">>, Input, Options).

%% @doc Returns a random byte string that is cryptographically secure.
%%
%% By default, the random byte string is generated in KMS. To generate the
%% byte string in the CloudHSM cluster that is associated with a custom key
%% store, specify the custom key store ID.
%%
%% Applications in Amazon Web Services Nitro Enclaves can call this operation
%% by using the Amazon Web Services Nitro Enclaves Development Kit. For
%% information about the supporting parameters, see How Amazon Web Services
%% Nitro Enclaves use KMS in the Key Management Service Developer Guide.
%%
%% For more information about entropy and random number generation, see Key
%% Management Service Cryptographic Details.
%%
%% Required permissions: kms:GenerateRandom (IAM policy)
generate_random(Client, Input)
  when is_map(Client), is_map(Input) ->
    generate_random(Client, Input, []).
generate_random(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GenerateRandom">>, Input, Options).

%% @doc Gets a key policy attached to the specified KMS key.
%%
%% Cross-account use: No. You cannot perform this operation on a KMS key in a
%% different Amazon Web Services account.
%%
%% Required permissions: kms:GetKeyPolicy (key policy)
%%
%% Related operations: `PutKeyPolicy'
get_key_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_key_policy(Client, Input, []).
get_key_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetKeyPolicy">>, Input, Options).

%% @doc Gets a Boolean value that indicates whether automatic rotation of the
%% key material is enabled for the specified KMS key.
%%
%% You cannot enable automatic rotation of asymmetric KMS keys, HMAC KMS
%% keys, KMS keys with imported key material, or KMS keys in a custom key
%% store. To enable or disable automatic rotation of a set of related
%% multi-Region keys, set the property on the primary key. The key rotation
%% status for these KMS keys is always `false'.
%%
%% The KMS key that you use for this operation must be in a compatible key
%% state. For details, see Key states of KMS keys in the Key Management
%% Service Developer Guide.
%%
%% <ul> <li> Disabled: The key rotation status does not change when you
%% disable a KMS key. However, while the KMS key is disabled, KMS does not
%% rotate the key material.
%%
%% </li> <li> Pending deletion: While a KMS key is pending deletion, its key
%% rotation status is `false' and KMS does not rotate the key material. If
%% you cancel the deletion, the original key rotation status is restored.
%%
%% </li> </ul> Cross-account use: Yes. To perform this operation on a KMS key
%% in a different Amazon Web Services account, specify the key ARN in the
%% value of the `KeyId' parameter.
%%
%% Required permissions: kms:GetKeyRotationStatus (key policy)
%%
%% Related operations:
%%
%% <ul> <li> `DisableKeyRotation'
%%
%% </li> <li> `EnableKeyRotation'
%%
%% </li> </ul>
get_key_rotation_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_key_rotation_status(Client, Input, []).
get_key_rotation_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetKeyRotationStatus">>, Input, Options).

%% @doc Returns the items you need to import key material into a symmetric
%% encryption KMS key.
%%
%% For more information about importing key material into KMS, see Importing
%% key material in the Key Management Service Developer Guide.
%%
%% This operation returns a public key and an import token. Use the public
%% key to encrypt the symmetric key material. Store the import token to send
%% with a subsequent `ImportKeyMaterial' request.
%%
%% You must specify the key ID of the symmetric encryption KMS key into which
%% you will import key material. This KMS key's `Origin' must be `EXTERNAL'.
%% You must also specify the wrapping algorithm and type of wrapping key
%% (public key) that you will use to encrypt the key material. You cannot
%% perform this operation on an asymmetric KMS key, an HMAC KMS key, or on
%% any KMS key in a different Amazon Web Services account.
%%
%% To import key material, you must use the public key and import token from
%% the same response. These items are valid for 24 hours. The expiration date
%% and time appear in the `GetParametersForImport' response. You cannot use
%% an expired token in an `ImportKeyMaterial' request. If your key and token
%% expire, send another `GetParametersForImport' request.
%%
%% The KMS key that you use for this operation must be in a compatible key
%% state. For details, see Key states of KMS keys in the Key Management
%% Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a KMS key in a
%% different Amazon Web Services account.
%%
%% Required permissions: kms:GetParametersForImport (key policy)
%%
%% Related operations:
%%
%% <ul> <li> `ImportKeyMaterial'
%%
%% </li> <li> `DeleteImportedKeyMaterial'
%%
%% </li> </ul>
get_parameters_for_import(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_parameters_for_import(Client, Input, []).
get_parameters_for_import(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetParametersForImport">>, Input, Options).

%% @doc Returns the public key of an asymmetric KMS key.
%%
%% Unlike the private key of a asymmetric KMS key, which never leaves KMS
%% unencrypted, callers with `kms:GetPublicKey' permission can download the
%% public key of an asymmetric KMS key. You can share the public key to allow
%% others to encrypt messages and verify signatures outside of KMS. For
%% information about asymmetric KMS keys, see Asymmetric KMS keys in the Key
%% Management Service Developer Guide.
%%
%% You do not need to download the public key. Instead, you can use the
%% public key within KMS by calling the `Encrypt', `ReEncrypt', or `Verify'
%% operations with the identifier of an asymmetric KMS key. When you use the
%% public key within KMS, you benefit from the authentication, authorization,
%% and logging that are part of every KMS operation. You also reduce of risk
%% of encrypting data that cannot be decrypted. These features are not
%% effective outside of KMS. For details, see Special Considerations for
%% Downloading Public Keys.
%%
%% To help you use the public key safely outside of KMS, `GetPublicKey'
%% returns important information about the public key in the response,
%% including:
%%
%% <ul> <li> KeySpec: The type of key material in the public key, such as
%% `RSA_4096' or `ECC_NIST_P521'.
%%
%% </li> <li> KeyUsage: Whether the key is used for encryption or signing.
%%
%% </li> <li> EncryptionAlgorithms or SigningAlgorithms: A list of the
%% encryption algorithms or the signing algorithms for the key.
%%
%% </li> </ul> Although KMS cannot enforce these restrictions on external
%% operations, it is crucial that you use this information to prevent the
%% public key from being used improperly. For example, you can prevent a
%% public signing key from being used encrypt data, or prevent a public key
%% from being used with an encryption algorithm that is not supported by KMS.
%% You can also avoid errors, such as using the wrong signing algorithm in a
%% verification operation.
%%
%% The KMS key that you use for this operation must be in a compatible key
%% state. For details, see Key states of KMS keys in the Key Management
%% Service Developer Guide.
%%
%% Cross-account use: Yes. To perform this operation with a KMS key in a
%% different Amazon Web Services account, specify the key ARN or alias ARN in
%% the value of the `KeyId' parameter.
%%
%% Required permissions: kms:GetPublicKey (key policy)
%%
%% Related operations: `CreateKey'
get_public_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_public_key(Client, Input, []).
get_public_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPublicKey">>, Input, Options).

%% @doc Imports key material into an existing symmetric encryption KMS key
%% that was created without key material.
%%
%% After you successfully import key material into a KMS key, you can
%% reimport the same key material into that KMS key, but you cannot import
%% different key material.
%%
%% You cannot perform this operation on an asymmetric KMS key, an HMAC KMS
%% key, or on any KMS key in a different Amazon Web Services account. For
%% more information about creating KMS keys with no key material and then
%% importing key material, see Importing Key Material in the Key Management
%% Service Developer Guide.
%%
%% Before using this operation, call `GetParametersForImport'. Its response
%% includes a public key and an import token. Use the public key to encrypt
%% the key material. Then, submit the import token from the same
%% `GetParametersForImport' response.
%%
%% When calling this operation, you must specify the following values:
%%
%% <ul> <li> The key ID or key ARN of a KMS key with no key material. Its
%% `Origin' must be `EXTERNAL'.
%%
%% To create a KMS key with no key material, call `CreateKey' and set the
%% value of its `Origin' parameter to `EXTERNAL'. To get the `Origin' of a
%% KMS key, call `DescribeKey'.)
%%
%% </li> <li> The encrypted key material. To get the public key to encrypt
%% the key material, call `GetParametersForImport'.
%%
%% </li> <li> The import token that `GetParametersForImport' returned. You
%% must use a public key and token from the same `GetParametersForImport'
%% response.
%%
%% </li> <li> Whether the key material expires and if so, when. If you set an
%% expiration date, KMS deletes the key material from the KMS key on the
%% specified date, and the KMS key becomes unusable. To use the KMS key
%% again, you must reimport the same key material. The only way to change an
%% expiration date is by reimporting the same key material and specifying a
%% new expiration date.
%%
%% </li> </ul> When this operation is successful, the key state of the KMS
%% key changes from `PendingImport' to `Enabled', and you can use the KMS
%% key.
%%
%% If this operation fails, use the exception to help determine the problem.
%% If the error is related to the key material, the import token, or wrapping
%% key, use `GetParametersForImport' to get a new public key and import token
%% for the KMS key and repeat the import procedure. For help, see How To
%% Import Key Material in the Key Management Service Developer Guide.
%%
%% The KMS key that you use for this operation must be in a compatible key
%% state. For details, see Key states of KMS keys in the Key Management
%% Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a KMS key in a
%% different Amazon Web Services account.
%%
%% Required permissions: kms:ImportKeyMaterial (key policy)
%%
%% Related operations:
%%
%% <ul> <li> `DeleteImportedKeyMaterial'
%%
%% </li> <li> `GetParametersForImport'
%%
%% </li> </ul>
import_key_material(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_key_material(Client, Input, []).
import_key_material(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportKeyMaterial">>, Input, Options).

%% @doc Gets a list of aliases in the caller's Amazon Web Services account
%% and region.
%%
%% For more information about aliases, see `CreateAlias'.
%%
%% By default, the `ListAliases' operation returns all aliases in the account
%% and region. To get only the aliases associated with a particular KMS key,
%% use the `KeyId' parameter.
%%
%% The `ListAliases' response can include aliases that you created and
%% associated with your customer managed keys, and aliases that Amazon Web
%% Services created and associated with Amazon Web Services managed keys in
%% your account. You can recognize Amazon Web Services aliases because their
%% names have the format `aws/<service-name>', such as `aws/dynamodb'.
%%
%% The response might also include aliases that have no `TargetKeyId' field.
%% These are predefined aliases that Amazon Web Services has created but has
%% not yet associated with a KMS key. Aliases that Amazon Web Services
%% creates in your account, including predefined aliases, do not count
%% against your KMS aliases quota.
%%
%% Cross-account use: No. `ListAliases' does not return aliases in other
%% Amazon Web Services accounts.
%%
%% Required permissions: kms:ListAliases (IAM policy)
%%
%% For details, see Controlling access to aliases in the Key Management
%% Service Developer Guide.
%%
%% Related operations:
%%
%% <ul> <li> `CreateAlias'
%%
%% </li> <li> `DeleteAlias'
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

%% @doc Gets a list of all grants for the specified KMS key.
%%
%% You must specify the KMS key in all requests. You can filter the grant
%% list by grant ID or grantee principal.
%%
%% For detailed information about grants, including grant terminology, see
%% Grants in KMS in the Key Management Service Developer Guide . For examples
%% of working with grants in several programming languages, see Programming
%% grants.
%%
%% The `GranteePrincipal' field in the `ListGrants' response usually contains
%% the user or role designated as the grantee principal in the grant.
%% However, when the grantee principal in the grant is an Amazon Web Services
%% service, the `GranteePrincipal' field contains the service principal,
%% which might represent several different grantee principals.
%%
%% Cross-account use: Yes. To perform this operation on a KMS key in a
%% different Amazon Web Services account, specify the key ARN in the value of
%% the `KeyId' parameter.
%%
%% Required permissions: kms:ListGrants (key policy)
%%
%% Related operations:
%%
%% <ul> <li> `CreateGrant'
%%
%% </li> <li> `ListRetirableGrants'
%%
%% </li> <li> `RetireGrant'
%%
%% </li> <li> `RevokeGrant'
%%
%% </li> </ul>
list_grants(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_grants(Client, Input, []).
list_grants(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGrants">>, Input, Options).

%% @doc Gets the names of the key policies that are attached to a KMS key.
%%
%% This operation is designed to get policy names that you can use in a
%% `GetKeyPolicy' operation. However, the only valid policy name is
%% `default'.
%%
%% Cross-account use: No. You cannot perform this operation on a KMS key in a
%% different Amazon Web Services account.
%%
%% Required permissions: kms:ListKeyPolicies (key policy)
%%
%% Related operations:
%%
%% <ul> <li> `GetKeyPolicy'
%%
%% </li> <li> `PutKeyPolicy'
%%
%% </li> </ul>
list_key_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_key_policies(Client, Input, []).
list_key_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListKeyPolicies">>, Input, Options).

%% @doc Gets a list of all KMS keys in the caller's Amazon Web Services
%% account and Region.
%%
%% Cross-account use: No. You cannot perform this operation on a KMS key in a
%% different Amazon Web Services account.
%%
%% Required permissions: kms:ListKeys (IAM policy)
%%
%% Related operations:
%%
%% <ul> <li> `CreateKey'
%%
%% </li> <li> `DescribeKey'
%%
%% </li> <li> `ListAliases'
%%
%% </li> <li> `ListResourceTags'
%%
%% </li> </ul>
list_keys(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_keys(Client, Input, []).
list_keys(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListKeys">>, Input, Options).

%% @doc Returns all tags on the specified KMS key.
%%
%% For general information about tags, including the format and syntax, see
%% Tagging Amazon Web Services resources in the Amazon Web Services General
%% Reference. For information about using tags in KMS, see Tagging keys.
%%
%% Cross-account use: No. You cannot perform this operation on a KMS key in a
%% different Amazon Web Services account.
%%
%% Required permissions: kms:ListResourceTags (key policy)
%%
%% Related operations:
%%
%% <ul> <li> `CreateKey'
%%
%% </li> <li> `ReplicateKey'
%%
%% </li> <li> `TagResource'
%%
%% </li> <li> `UntagResource'
%%
%% </li> </ul>
list_resource_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resource_tags(Client, Input, []).
list_resource_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourceTags">>, Input, Options).

%% @doc Returns information about all grants in the Amazon Web Services
%% account and Region that have the specified retiring principal.
%%
%% You can specify any principal in your Amazon Web Services account. The
%% grants that are returned include grants for KMS keys in your Amazon Web
%% Services account and other Amazon Web Services accounts. You might use
%% this operation to determine which grants you may retire. To retire a
%% grant, use the `RetireGrant' operation.
%%
%% For detailed information about grants, including grant terminology, see
%% Grants in KMS in the Key Management Service Developer Guide . For examples
%% of working with grants in several programming languages, see Programming
%% grants.
%%
%% Cross-account use: You must specify a principal in your Amazon Web
%% Services account. However, this operation can return grants in any Amazon
%% Web Services account. You do not need `kms:ListRetirableGrants' permission
%% (or any other additional permission) in any Amazon Web Services account
%% other than your own.
%%
%% Required permissions: kms:ListRetirableGrants (IAM policy) in your Amazon
%% Web Services account.
%%
%% Related operations:
%%
%% <ul> <li> `CreateGrant'
%%
%% </li> <li> `ListGrants'
%%
%% </li> <li> `RetireGrant'
%%
%% </li> <li> `RevokeGrant'
%%
%% </li> </ul>
list_retirable_grants(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_retirable_grants(Client, Input, []).
list_retirable_grants(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRetirableGrants">>, Input, Options).

%% @doc Attaches a key policy to the specified KMS key.
%%
%% For more information about key policies, see Key Policies in the Key
%% Management Service Developer Guide. For help writing and formatting a JSON
%% policy document, see the IAM JSON Policy Reference in the Identity and
%% Access Management User Guide . For examples of adding a key policy in
%% multiple programming languages, see Setting a key policy in the Key
%% Management Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a KMS key in a
%% different Amazon Web Services account.
%%
%% Required permissions: kms:PutKeyPolicy (key policy)
%%
%% Related operations: `GetKeyPolicy'
put_key_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_key_policy(Client, Input, []).
put_key_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutKeyPolicy">>, Input, Options).

%% @doc Decrypts ciphertext and then reencrypts it entirely within KMS.
%%
%% You can use this operation to change the KMS key under which data is
%% encrypted, such as when you manually rotate a KMS key or change the KMS
%% key that protects a ciphertext. You can also use it to reencrypt
%% ciphertext under the same KMS key, such as to change the encryption
%% context of a ciphertext.
%%
%% The `ReEncrypt' operation can decrypt ciphertext that was encrypted by
%% using a KMS key in an KMS operation, such as `Encrypt' or
%% `GenerateDataKey'. It can also decrypt ciphertext that was encrypted by
%% using the public key of an asymmetric KMS key outside of KMS. However, it
%% cannot decrypt ciphertext produced by other libraries, such as the Amazon
%% Web Services Encryption SDK or Amazon S3 client-side encryption. These
%% libraries return a ciphertext format that is incompatible with KMS.
%%
%% When you use the `ReEncrypt' operation, you need to provide information
%% for the decrypt operation and the subsequent encrypt operation.
%%
%% <ul> <li> If your ciphertext was encrypted under an asymmetric KMS key,
%% you must use the `SourceKeyId' parameter to identify the KMS key that
%% encrypted the ciphertext. You must also supply the encryption algorithm
%% that was used. This information is required to decrypt the data.
%%
%% </li> <li> If your ciphertext was encrypted under a symmetric encryption
%% KMS key, the `SourceKeyId' parameter is optional. KMS can get this
%% information from metadata that it adds to the symmetric ciphertext blob.
%% This feature adds durability to your implementation by ensuring that
%% authorized users can decrypt ciphertext decades after it was encrypted,
%% even if they've lost track of the key ID. However, specifying the source
%% KMS key is always recommended as a best practice. When you use the
%% `SourceKeyId' parameter to specify a KMS key, KMS uses only the KMS key
%% you specify. If the ciphertext was encrypted under a different KMS key,
%% the `ReEncrypt' operation fails. This practice ensures that you use the
%% KMS key that you intend.
%%
%% </li> <li> To reencrypt the data, you must use the `DestinationKeyId'
%% parameter specify the KMS key that re-encrypts the data after it is
%% decrypted. If the destination KMS key is an asymmetric KMS key, you must
%% also provide the encryption algorithm. The algorithm that you choose must
%% be compatible with the KMS key.
%%
%% When you use an asymmetric KMS key to encrypt or reencrypt data, be sure
%% to record the KMS key and encryption algorithm that you choose. You will
%% be required to provide the same KMS key and encryption algorithm when you
%% decrypt the data. If the KMS key and algorithm do not match the values
%% used to encrypt the data, the decrypt operation fails.
%%
%% You are not required to supply the key ID and encryption algorithm when
%% you decrypt with symmetric encryption KMS keys because KMS stores this
%% information in the ciphertext blob. KMS cannot store metadata in
%% ciphertext generated with asymmetric keys. The standard format for
%% asymmetric key ciphertext does not include configurable fields.
%%
%% </li> </ul> The KMS key that you use for this operation must be in a
%% compatible key state. For details, see Key states of KMS keys in the Key
%% Management Service Developer Guide.
%%
%% Cross-account use: Yes. The source KMS key and destination KMS key can be
%% in different Amazon Web Services accounts. Either or both KMS keys can be
%% in a different account than the caller. To specify a KMS key in a
%% different account, you must use its key ARN or alias ARN.
%%
%% Required permissions:
%%
%% <ul> <li> kms:ReEncryptFrom permission on the source KMS key (key policy)
%%
%% </li> <li> kms:ReEncryptTo permission on the destination KMS key (key
%% policy)
%%
%% </li> </ul> To permit reencryption from or to a KMS key, include the
%% `"kms:ReEncrypt*"' permission in your key policy. This permission is
%% automatically included in the key policy when you use the console to
%% create a KMS key. But you must include it manually when you create a KMS
%% key programmatically or when you use the `PutKeyPolicy' operation to set a
%% key policy.
%%
%% Related operations:
%%
%% <ul> <li> `Decrypt'
%%
%% </li> <li> `Encrypt'
%%
%% </li> <li> `GenerateDataKey'
%%
%% </li> <li> `GenerateDataKeyPair'
%%
%% </li> </ul>
re_encrypt(Client, Input)
  when is_map(Client), is_map(Input) ->
    re_encrypt(Client, Input, []).
re_encrypt(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReEncrypt">>, Input, Options).

%% @doc Replicates a multi-Region key into the specified Region.
%%
%% This operation creates a multi-Region replica key based on a multi-Region
%% primary key in a different Region of the same Amazon Web Services
%% partition. You can create multiple replicas of a primary key, but each
%% must be in a different Region. To create a multi-Region primary key, use
%% the `CreateKey' operation.
%%
%% This operation supports multi-Region keys, an KMS feature that lets you
%% create multiple interoperable KMS keys in different Amazon Web Services
%% Regions. Because these KMS keys have the same key ID, key material, and
%% other metadata, you can use them interchangeably to encrypt data in one
%% Amazon Web Services Region and decrypt it in a different Amazon Web
%% Services Region without re-encrypting the data or making a cross-Region
%% call. For more information about multi-Region keys, see Multi-Region keys
%% in KMS in the Key Management Service Developer Guide.
%%
%% A replica key is a fully-functional KMS key that can be used independently
%% of its primary and peer replica keys. A primary key and its replica keys
%% share properties that make them interoperable. They have the same key ID
%% and key material. They also have the same key spec, key usage, key
%% material origin, and automatic key rotation status. KMS automatically
%% synchronizes these shared properties among related multi-Region keys. All
%% other properties of a replica key can differ, including its key policy,
%% tags, aliases, and Key states of KMS keys. KMS pricing and quotas for KMS
%% keys apply to each primary key and replica key.
%%
%% When this operation completes, the new replica key has a transient key
%% state of `Creating'. This key state changes to `Enabled' (or
%% `PendingImport') after a few seconds when the process of creating the new
%% replica key is complete. While the key state is `Creating', you can manage
%% key, but you cannot yet use it in cryptographic operations. If you are
%% creating and using the replica key programmatically, retry on
%% `KMSInvalidStateException' or call `DescribeKey' to check its `KeyState'
%% value before using it. For details about the `Creating' key state, see Key
%% states of KMS keys in the Key Management Service Developer Guide.
%%
%% You cannot create more than one replica of a primary key in any Region. If
%% the Region already includes a replica of the key you're trying to
%% replicate, `ReplicateKey' returns an `AlreadyExistsException' error. If
%% the key state of the existing replica is `PendingDeletion', you can cancel
%% the scheduled key deletion (`CancelKeyDeletion') or wait for the key to be
%% deleted. The new replica key you create will have the same shared
%% properties as the original replica key.
%%
%% The CloudTrail log of a `ReplicateKey' operation records a `ReplicateKey'
%% operation in the primary key's Region and a `CreateKey' operation in the
%% replica key's Region.
%%
%% If you replicate a multi-Region primary key with imported key material,
%% the replica key is created with no key material. You must import the same
%% key material that you imported into the primary key. For details, see
%% Importing key material into multi-Region keys in the Key Management
%% Service Developer Guide.
%%
%% To convert a replica key to a primary key, use the `UpdatePrimaryRegion'
%% operation.
%%
%% `ReplicateKey' uses different default values for the `KeyPolicy' and
%% `Tags' parameters than those used in the KMS console. For details, see the
%% parameter descriptions.
%%
%% Cross-account use: No. You cannot use this operation to create a replica
%% key in a different Amazon Web Services account.
%%
%% Required permissions:
%%
%% <ul> <li> `kms:ReplicateKey' on the primary key (in the primary key's
%% Region). Include this permission in the primary key's key policy.
%%
%% </li> <li> `kms:CreateKey' in an IAM policy in the replica Region.
%%
%% </li> <li> To use the `Tags' parameter, `kms:TagResource' in an IAM policy
%% in the replica Region.
%%
%% </li> </ul> Related operations
%%
%% <ul> <li> `CreateKey'
%%
%% </li> <li> `UpdatePrimaryRegion'
%%
%% </li> </ul>
replicate_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    replicate_key(Client, Input, []).
replicate_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReplicateKey">>, Input, Options).

%% @doc Deletes a grant.
%%
%% Typically, you retire a grant when you no longer need its permissions. To
%% identify the grant to retire, use a grant token, or both the grant ID and
%% a key identifier (key ID or key ARN) of the KMS key. The `CreateGrant'
%% operation returns both values.
%%
%% This operation can be called by the retiring principal for a grant, by the
%% grantee principal if the grant allows the `RetireGrant' operation, and by
%% the Amazon Web Services account in which the grant is created. It can also
%% be called by principals to whom permission for retiring a grant is
%% delegated. For details, see Retiring and revoking grants in the Key
%% Management Service Developer Guide.
%%
%% For detailed information about grants, including grant terminology, see
%% Grants in KMS in the Key Management Service Developer Guide . For examples
%% of working with grants in several programming languages, see Programming
%% grants.
%%
%% Cross-account use: Yes. You can retire a grant on a KMS key in a different
%% Amazon Web Services account.
%%
%% Required permissions::Permission to retire a grant is determined primarily
%% by the grant. For details, see Retiring and revoking grants in the Key
%% Management Service Developer Guide.
%%
%% Related operations:
%%
%% <ul> <li> `CreateGrant'
%%
%% </li> <li> `ListGrants'
%%
%% </li> <li> `ListRetirableGrants'
%%
%% </li> <li> `RevokeGrant'
%%
%% </li> </ul>
retire_grant(Client, Input)
  when is_map(Client), is_map(Input) ->
    retire_grant(Client, Input, []).
retire_grant(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RetireGrant">>, Input, Options).

%% @doc Deletes the specified grant.
%%
%% You revoke a grant to terminate the permissions that the grant allows. For
%% more information, see Retiring and revoking grants in the Key Management
%% Service Developer Guide .
%%
%% When you create, retire, or revoke a grant, there might be a brief delay,
%% usually less than five minutes, until the grant is available throughout
%% KMS. This state is known as eventual consistency. For details, see
%% Eventual consistency in the Key Management Service Developer Guide .
%%
%% For detailed information about grants, including grant terminology, see
%% Grants in KMS in the Key Management Service Developer Guide . For examples
%% of working with grants in several programming languages, see Programming
%% grants.
%%
%% Cross-account use: Yes. To perform this operation on a KMS key in a
%% different Amazon Web Services account, specify the key ARN in the value of
%% the `KeyId' parameter.
%%
%% Required permissions: kms:RevokeGrant (key policy).
%%
%% Related operations:
%%
%% <ul> <li> `CreateGrant'
%%
%% </li> <li> `ListGrants'
%%
%% </li> <li> `ListRetirableGrants'
%%
%% </li> <li> `RetireGrant'
%%
%% </li> </ul>
revoke_grant(Client, Input)
  when is_map(Client), is_map(Input) ->
    revoke_grant(Client, Input, []).
revoke_grant(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RevokeGrant">>, Input, Options).

%% @doc Schedules the deletion of a KMS key.
%%
%% By default, KMS applies a waiting period of 30 days, but you can specify a
%% waiting period of 7-30 days. When this operation is successful, the key
%% state of the KMS key changes to `PendingDeletion' and the key can't be
%% used in any cryptographic operations. It remains in this state for the
%% duration of the waiting period. Before the waiting period ends, you can
%% use `CancelKeyDeletion' to cancel the deletion of the KMS key. After the
%% waiting period ends, KMS deletes the KMS key, its key material, and all
%% KMS data associated with it, including all aliases that refer to it.
%%
%% Deleting a KMS key is a destructive and potentially dangerous operation.
%% When a KMS key is deleted, all data that was encrypted under the KMS key
%% is unrecoverable. (The only exception is a multi-Region replica key.) To
%% prevent the use of a KMS key without deleting it, use `DisableKey'.
%%
%% If you schedule deletion of a KMS key from a custom key store, when the
%% waiting period expires, `ScheduleKeyDeletion' deletes the KMS key from
%% KMS. Then KMS makes a best effort to delete the key material from the
%% associated CloudHSM cluster. However, you might need to manually delete
%% the orphaned key material from the cluster and its backups.
%%
%% You can schedule the deletion of a multi-Region primary key and its
%% replica keys at any time. However, KMS will not delete a multi-Region
%% primary key with existing replica keys. If you schedule the deletion of a
%% primary key with replicas, its key state changes to
%% `PendingReplicaDeletion' and it cannot be replicated or used in
%% cryptographic operations. This status can continue indefinitely. When the
%% last of its replicas keys is deleted (not just scheduled), the key state
%% of the primary key changes to `PendingDeletion' and its waiting period
%% (`PendingWindowInDays') begins. For details, see Deleting multi-Region
%% keys in the Key Management Service Developer Guide.
%%
%% For more information about scheduling a KMS key for deletion, see Deleting
%% KMS keys in the Key Management Service Developer Guide.
%%
%% The KMS key that you use for this operation must be in a compatible key
%% state. For details, see Key states of KMS keys in the Key Management
%% Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a KMS key in a
%% different Amazon Web Services account.
%%
%% Required permissions: kms:ScheduleKeyDeletion (key policy)
%%
%% Related operations
%%
%% <ul> <li> `CancelKeyDeletion'
%%
%% </li> <li> `DisableKey'
%%
%% </li> </ul>
schedule_key_deletion(Client, Input)
  when is_map(Client), is_map(Input) ->
    schedule_key_deletion(Client, Input, []).
schedule_key_deletion(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ScheduleKeyDeletion">>, Input, Options).

%% @doc Creates a digital signature for a message or message digest by using
%% the private key in an asymmetric signing KMS key.
%%
%% To verify the signature, use the `Verify' operation, or use the public key
%% in the same asymmetric KMS key outside of KMS. For information about
%% asymmetric KMS keys, see Asymmetric KMS keys in the Key Management Service
%% Developer Guide.
%%
%% Digital signatures are generated and verified by using asymmetric key
%% pair, such as an RSA or ECC pair that is represented by an asymmetric KMS
%% key. The key owner (or an authorized user) uses their private key to sign
%% a message. Anyone with the public key can verify that the message was
%% signed with that particular private key and that the message hasn't
%% changed since it was signed.
%%
%% To use the `Sign' operation, provide the following information:
%%
%% <ul> <li> Use the `KeyId' parameter to identify an asymmetric KMS key with
%% a `KeyUsage' value of `SIGN_VERIFY'. To get the `KeyUsage' value of a KMS
%% key, use the `DescribeKey' operation. The caller must have `kms:Sign'
%% permission on the KMS key.
%%
%% </li> <li> Use the `Message' parameter to specify the message or message
%% digest to sign. You can submit messages of up to 4096 bytes. To sign a
%% larger message, generate a hash digest of the message, and then provide
%% the hash digest in the `Message' parameter. To indicate whether the
%% message is a full message or a digest, use the `MessageType' parameter.
%%
%% </li> <li> Choose a signing algorithm that is compatible with the KMS key.
%%
%% </li> </ul> When signing a message, be sure to record the KMS key and the
%% signing algorithm. This information is required to verify the signature.
%%
%% To verify the signature that this operation generates, use the `Verify'
%% operation. Or use the `GetPublicKey' operation to download the public key
%% and then use the public key to verify the signature outside of KMS.
%%
%% The KMS key that you use for this operation must be in a compatible key
%% state. For details, see Key states of KMS keys in the Key Management
%% Service Developer Guide.
%%
%% Cross-account use: Yes. To perform this operation with a KMS key in a
%% different Amazon Web Services account, specify the key ARN or alias ARN in
%% the value of the `KeyId' parameter.
%%
%% Required permissions: kms:Sign (key policy)
%%
%% Related operations: `Verify'
sign(Client, Input)
  when is_map(Client), is_map(Input) ->
    sign(Client, Input, []).
sign(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Sign">>, Input, Options).

%% @doc Adds or edits tags on a customer managed key.
%%
%% Tagging or untagging a KMS key can allow or deny permission to the KMS
%% key. For details, see ABAC in KMS in the Key Management Service Developer
%% Guide.
%%
%% Each tag consists of a tag key and a tag value, both of which are
%% case-sensitive strings. The tag value can be an empty (null) string. To
%% add a tag, specify a new tag key and a tag value. To edit a tag, specify
%% an existing tag key and a new tag value.
%%
%% You can use this operation to tag a customer managed key, but you cannot
%% tag an Amazon Web Services managed key, an Amazon Web Services owned key,
%% a custom key store, or an alias.
%%
%% You can also add tags to a KMS key while creating it (`CreateKey') or
%% replicating it (`ReplicateKey').
%%
%% For information about using tags in KMS, see Tagging keys. For general
%% information about tags, including the format and syntax, see Tagging
%% Amazon Web Services resources in the Amazon Web Services General
%% Reference.
%%
%% The KMS key that you use for this operation must be in a compatible key
%% state. For details, see Key states of KMS keys in the Key Management
%% Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a KMS key in a
%% different Amazon Web Services account.
%%
%% Required permissions: kms:TagResource (key policy)
%%
%% Related operations
%%
%% <ul> <li> `CreateKey'
%%
%% </li> <li> `ListResourceTags'
%%
%% </li> <li> `ReplicateKey'
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

%% @doc Deletes tags from a customer managed key.
%%
%% To delete a tag, specify the tag key and the KMS key.
%%
%% Tagging or untagging a KMS key can allow or deny permission to the KMS
%% key. For details, see ABAC in KMS in the Key Management Service Developer
%% Guide.
%%
%% When it succeeds, the `UntagResource' operation doesn't return any output.
%% Also, if the specified tag key isn't found on the KMS key, it doesn't
%% throw an exception or return a response. To confirm that the operation
%% worked, use the `ListResourceTags' operation.
%%
%% For information about using tags in KMS, see Tagging keys. For general
%% information about tags, including the format and syntax, see Tagging
%% Amazon Web Services resources in the Amazon Web Services General
%% Reference.
%%
%% The KMS key that you use for this operation must be in a compatible key
%% state. For details, see Key states of KMS keys in the Key Management
%% Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a KMS key in a
%% different Amazon Web Services account.
%%
%% Required permissions: kms:UntagResource (key policy)
%%
%% Related operations
%%
%% <ul> <li> `CreateKey'
%%
%% </li> <li> `ListResourceTags'
%%
%% </li> <li> `ReplicateKey'
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

%% @doc Associates an existing KMS alias with a different KMS key.
%%
%% Each alias is associated with only one KMS key at a time, although a KMS
%% key can have multiple aliases. The alias and the KMS key must be in the
%% same Amazon Web Services account and Region.
%%
%% Adding, deleting, or updating an alias can allow or deny permission to the
%% KMS key. For details, see ABAC in KMS in the Key Management Service
%% Developer Guide.
%%
%% The current and new KMS key must be the same type (both symmetric or both
%% asymmetric), and they must have the same key usage (`ENCRYPT_DECRYPT' or
%% `SIGN_VERIFY'). This restriction prevents errors in code that uses
%% aliases. If you must assign an alias to a different type of KMS key, use
%% `DeleteAlias' to delete the old alias and `CreateAlias' to create a new
%% alias.
%%
%% You cannot use `UpdateAlias' to change an alias name. To change an alias
%% name, use `DeleteAlias' to delete the old alias and `CreateAlias' to
%% create a new alias.
%%
%% Because an alias is not a property of a KMS key, you can create, update,
%% and delete the aliases of a KMS key without affecting the KMS key. Also,
%% aliases do not appear in the response from the `DescribeKey' operation. To
%% get the aliases of all KMS keys in the account, use the `ListAliases'
%% operation.
%%
%% The KMS key that you use for this operation must be in a compatible key
%% state. For details, see Key states of KMS keys in the Key Management
%% Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a KMS key in a
%% different Amazon Web Services account.
%%
%% Required permissions
%%
%% <ul> <li> kms:UpdateAlias on the alias (IAM policy).
%%
%% </li> <li> kms:UpdateAlias on the current KMS key (key policy).
%%
%% </li> <li> kms:UpdateAlias on the new KMS key (key policy).
%%
%% </li> </ul> For details, see Controlling access to aliases in the Key
%% Management Service Developer Guide.
%%
%% Related operations:
%%
%% <ul> <li> `CreateAlias'
%%
%% </li> <li> `DeleteAlias'
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

%% @doc Changes the properties of a custom key store.
%%
%% Use the `CustomKeyStoreId' parameter to identify the custom key store you
%% want to edit. Use the remaining parameters to change the properties of the
%% custom key store.
%%
%% You can only update a custom key store that is disconnected. To disconnect
%% the custom key store, use `DisconnectCustomKeyStore'. To reconnect the
%% custom key store after the update completes, use `ConnectCustomKeyStore'.
%% To find the connection state of a custom key store, use the
%% `DescribeCustomKeyStores' operation.
%%
%% The `CustomKeyStoreId' parameter is required in all commands. Use the
%% other parameters of `UpdateCustomKeyStore' to edit your key store
%% settings.
%%
%% <ul> <li> Use the `NewCustomKeyStoreName' parameter to change the friendly
%% name of the custom key store to the value that you specify.
%%
%% </li> <li> Use the `KeyStorePassword' parameter tell KMS the current
%% password of the `kmsuser' crypto user (CU) in the associated CloudHSM
%% cluster. You can use this parameter to fix connection failures that occur
%% when KMS cannot log into the associated cluster because the `kmsuser'
%% password has changed. This value does not change the password in the
%% CloudHSM cluster.
%%
%% </li> <li> Use the `CloudHsmClusterId' parameter to associate the custom
%% key store with a different, but related, CloudHSM cluster. You can use
%% this parameter to repair a custom key store if its CloudHSM cluster
%% becomes corrupted or is deleted, or when you need to create or restore a
%% cluster from a backup.
%%
%% </li> </ul> If the operation succeeds, it returns a JSON object with no
%% properties.
%%
%% This operation is part of the Custom Key Store feature feature in KMS,
%% which combines the convenience and extensive integration of KMS with the
%% isolation and control of a single-tenant key store.
%%
%% Cross-account use: No. You cannot perform this operation on a custom key
%% store in a different Amazon Web Services account.
%%
%% Required permissions: kms:UpdateCustomKeyStore (IAM policy)
%%
%% Related operations:
%%
%% <ul> <li> `ConnectCustomKeyStore'
%%
%% </li> <li> `CreateCustomKeyStore'
%%
%% </li> <li> `DeleteCustomKeyStore'
%%
%% </li> <li> `DescribeCustomKeyStores'
%%
%% </li> <li> `DisconnectCustomKeyStore'
%%
%% </li> </ul>
update_custom_key_store(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_custom_key_store(Client, Input, []).
update_custom_key_store(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCustomKeyStore">>, Input, Options).

%% @doc Updates the description of a KMS key.
%%
%% To see the description of a KMS key, use `DescribeKey'.
%%
%% The KMS key that you use for this operation must be in a compatible key
%% state. For details, see Key states of KMS keys in the Key Management
%% Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a KMS key in a
%% different Amazon Web Services account.
%%
%% Required permissions: kms:UpdateKeyDescription (key policy)
%%
%% Related operations
%%
%% <ul> <li> `CreateKey'
%%
%% </li> <li> `DescribeKey'
%%
%% </li> </ul>
update_key_description(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_key_description(Client, Input, []).
update_key_description(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateKeyDescription">>, Input, Options).

%% @doc Changes the primary key of a multi-Region key.
%%
%% This operation changes the replica key in the specified Region to a
%% primary key and changes the former primary key to a replica key. For
%% example, suppose you have a primary key in `us-east-1' and a replica key
%% in `eu-west-2'. If you run `UpdatePrimaryRegion' with a `PrimaryRegion'
%% value of `eu-west-2', the primary key is now the key in `eu-west-2', and
%% the key in `us-east-1' becomes a replica key. For details, see Updating
%% the primary Region in the Key Management Service Developer Guide.
%%
%% This operation supports multi-Region keys, an KMS feature that lets you
%% create multiple interoperable KMS keys in different Amazon Web Services
%% Regions. Because these KMS keys have the same key ID, key material, and
%% other metadata, you can use them interchangeably to encrypt data in one
%% Amazon Web Services Region and decrypt it in a different Amazon Web
%% Services Region without re-encrypting the data or making a cross-Region
%% call. For more information about multi-Region keys, see Multi-Region keys
%% in KMS in the Key Management Service Developer Guide.
%%
%% The primary key of a multi-Region key is the source for properties that
%% are always shared by primary and replica keys, including the key material,
%% key ID, key spec, key usage, key material origin, and automatic key
%% rotation. It's the only key that can be replicated. You cannot delete the
%% primary key until all replica keys are deleted.
%%
%% The key ID and primary Region that you specify uniquely identify the
%% replica key that will become the primary key. The primary Region must
%% already have a replica key. This operation does not create a KMS key in
%% the specified Region. To find the replica keys, use the `DescribeKey'
%% operation on the primary key or any replica key. To create a replica key,
%% use the `ReplicateKey' operation.
%%
%% You can run this operation while using the affected multi-Region keys in
%% cryptographic operations. This operation should not delay, interrupt, or
%% cause failures in cryptographic operations.
%%
%% Even after this operation completes, the process of updating the primary
%% Region might still be in progress for a few more seconds. Operations such
%% as `DescribeKey' might display both the old and new primary keys as
%% replicas. The old and new primary keys have a transient key state of
%% `Updating'. The original key state is restored when the update is
%% complete. While the key state is `Updating', you can use the keys in
%% cryptographic operations, but you cannot replicate the new primary key or
%% perform certain management operations, such as enabling or disabling these
%% keys. For details about the `Updating' key state, see Key states of KMS
%% keys in the Key Management Service Developer Guide.
%%
%% This operation does not return any output. To verify that primary key is
%% changed, use the `DescribeKey' operation.
%%
%% Cross-account use: No. You cannot use this operation in a different Amazon
%% Web Services account.
%%
%% Required permissions:
%%
%% <ul> <li> `kms:UpdatePrimaryRegion' on the current primary key (in the
%% primary key's Region). Include this permission primary key's key policy.
%%
%% </li> <li> `kms:UpdatePrimaryRegion' on the current replica key (in the
%% replica key's Region). Include this permission in the replica key's key
%% policy.
%%
%% </li> </ul> Related operations
%%
%% <ul> <li> `CreateKey'
%%
%% </li> <li> `ReplicateKey'
%%
%% </li> </ul>
update_primary_region(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_primary_region(Client, Input, []).
update_primary_region(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePrimaryRegion">>, Input, Options).

%% @doc Verifies a digital signature that was generated by the `Sign'
%% operation.
%%
%% Verification confirms that an authorized user signed the message with the
%% specified KMS key and signing algorithm, and the message hasn't changed
%% since it was signed. If the signature is verified, the value of the
%% `SignatureValid' field in the response is `True'. If the signature
%% verification fails, the `Verify' operation fails with an
%% `KMSInvalidSignatureException' exception.
%%
%% A digital signature is generated by using the private key in an asymmetric
%% KMS key. The signature is verified by using the public key in the same
%% asymmetric KMS key. For information about asymmetric KMS keys, see
%% Asymmetric KMS keys in the Key Management Service Developer Guide.
%%
%% To verify a digital signature, you can use the `Verify' operation. Specify
%% the same asymmetric KMS key, message, and signing algorithm that were used
%% to produce the signature.
%%
%% You can also verify the digital signature by using the public key of the
%% KMS key outside of KMS. Use the `GetPublicKey' operation to download the
%% public key in the asymmetric KMS key and then use the public key to verify
%% the signature outside of KMS. The advantage of using the `Verify'
%% operation is that it is performed within KMS. As a result, it's easy to
%% call, the operation is performed within the FIPS boundary, it is logged in
%% CloudTrail, and you can use key policy and IAM policy to determine who is
%% authorized to use the KMS key to verify signatures.
%%
%% The KMS key that you use for this operation must be in a compatible key
%% state. For details, see Key states of KMS keys in the Key Management
%% Service Developer Guide.
%%
%% Cross-account use: Yes. To perform this operation with a KMS key in a
%% different Amazon Web Services account, specify the key ARN or alias ARN in
%% the value of the `KeyId' parameter.
%%
%% Required permissions: kms:Verify (key policy)
%%
%% Related operations: `Sign'
verify(Client, Input)
  when is_map(Client), is_map(Input) ->
    verify(Client, Input, []).
verify(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Verify">>, Input, Options).

%% @doc Verifies the hash-based message authentication code (HMAC) for a
%% specified message, HMAC KMS key, and MAC algorithm.
%%
%% To verify the HMAC, `VerifyMac' computes an HMAC using the message, HMAC
%% KMS key, and MAC algorithm that you specify, and compares the computed
%% HMAC to the HMAC that you specify. If the HMACs are identical, the
%% verification succeeds; otherwise, it fails.
%%
%% Verification indicates that the message hasn't changed since the HMAC was
%% calculated, and the specified key was used to generate and verify the
%% HMAC.
%%
%% This operation is part of KMS support for HMAC KMS keys. For details, see
%% HMAC keys in KMS in the Key Management Service Developer Guide.
%%
%% The KMS key that you use for this operation must be in a compatible key
%% state. For details, see Key states of KMS keys in the Key Management
%% Service Developer Guide.
%%
%% Cross-account use: Yes. To perform this operation with a KMS key in a
%% different Amazon Web Services account, specify the key ARN or alias ARN in
%% the value of the `KeyId' parameter.
%%
%% Required permissions: kms:VerifyMac (key policy)
%%
%% Related operations: `GenerateMac'
verify_mac(Client, Input)
  when is_map(Client), is_map(Input) ->
    verify_mac(Client, Input, []).
verify_mac(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"VerifyMac">>, Input, Options).

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
    Client1 = Client#{service => <<"kms">>},
    Host = build_host(<<"kms">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"TrentService.", Action/binary>>}
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
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
