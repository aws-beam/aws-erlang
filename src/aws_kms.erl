%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Key Management Service
%%
%% AWS Key Management Service (AWS KMS) is an encryption and key management
%% web service.
%%
%% This guide describes the AWS KMS operations that you can call
%% programmatically. For general information about AWS KMS, see the AWS Key
%% Management Service Developer Guide .
%%
%% AWS provides SDKs that consist of libraries and sample code for various
%% programming languages and platforms (Java, Ruby, .Net, macOS, Android,
%% etc.). The SDKs provide a convenient way to create programmatic access to
%% AWS KMS and other AWS services. For example, the SDKs take care of tasks
%% such as signing requests (see below), managing errors, and retrying
%% requests automatically. For more information about the AWS SDKs, including
%% how to download and install them, see Tools for Amazon Web Services.
%%
%% We recommend that you use the AWS SDKs to make programmatic API calls to
%% AWS KMS.
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
%% We strongly recommend that you do not use your AWS account (root) access
%% key ID and secret key for everyday work with AWS KMS. Instead, use the
%% access key ID and secret access key for an IAM user. You can also use the
%% AWS Security Token Service to generate temporary security credentials that
%% you can use to sign requests.
%%
%% All AWS KMS operations require Signature Version 4.
%%
%% Logging API Requests
%%
%% AWS KMS supports AWS CloudTrail, a service that logs AWS API calls and
%% related events for your AWS account and delivers them to an Amazon S3
%% bucket that you specify. By using the information collected by CloudTrail,
%% you can determine what requests were made to AWS KMS, who made the
%% request, when it was made, and so on. To learn more about CloudTrail,
%% including how to turn it on and find your log files, see the AWS
%% CloudTrail User Guide.
%%
%% Additional Resources
%%
%% For more information about credentials and request signing, see the
%% following:
%%
%% <ul> <li> AWS Security Credentials - This topic provides general
%% information about the types of credentials used for accessing AWS.
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
         verify/2,
         verify/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels the deletion of a customer master key (CMK).
%%
%% When this operation succeeds, the key state of the CMK is `Disabled'. To
%% enable the CMK, use `EnableKey'.
%%
%% For more information about scheduling and canceling deletion of a CMK, see
%% Deleting Customer Master Keys in the AWS Key Management Service Developer
%% Guide.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see How Key State Affects Use of a Customer Master Key in the
%% AWS Key Management Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a CMK in a
%% different AWS account.
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

%% @doc Connects or reconnects a custom key store to its associated AWS
%% CloudHSM cluster.
%%
%% The custom key store must be connected before you can create customer
%% master keys (CMKs) in the key store or use the CMKs it contains. You can
%% disconnect and reconnect a custom key store at any time.
%%
%% To connect a custom key store, its associated AWS CloudHSM cluster must
%% have at least one active HSM. To get the number of active HSMs in a
%% cluster, use the DescribeClusters operation. To add HSMs to the cluster,
%% use the CreateHsm operation. Also, the `kmsuser' crypto user (CU) must not
%% be logged into the cluster. This prevents AWS KMS from using this account
%% to log in.
%%
%% The connection process can take an extended amount of time to complete; up
%% to 20 minutes. This operation starts the connection process, but it does
%% not wait for it to complete. When it succeeds, this operation quickly
%% returns an HTTP 200 response and a JSON object with no properties.
%% However, this response does not indicate that the custom key store is
%% connected. To get the connection state of the custom key store, use the
%% `DescribeCustomKeyStores' operation.
%%
%% During the connection process, AWS KMS finds the AWS CloudHSM cluster that
%% is associated with the custom key store, creates the connection
%% infrastructure, connects to the cluster, logs into the AWS CloudHSM client
%% as the `kmsuser' CU, and rotates its password.
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
%% see Troubleshooting a Custom Key Store in the AWS Key Management Service
%% Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a custom key
%% store in a different AWS account.
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

%% @doc Creates a friendly name for a customer master key (CMK).
%%
%% You can use an alias to identify a CMK in the AWS KMS console, in the
%% `DescribeKey' operation and in cryptographic operations, such as `Encrypt'
%% and `GenerateDataKey'.
%%
%% You can also change the CMK that's associated with the alias
%% (`UpdateAlias') or delete the alias (`DeleteAlias') at any time. These
%% operations don't affect the underlying CMK.
%%
%% You can associate the alias with any customer managed CMK in the same AWS
%% Region. Each alias is associated with only on CMK at a time, but a CMK can
%% have multiple aliases. A valid CMK is required. You can't create an alias
%% without a CMK.
%%
%% The alias must be unique in the account and Region, but you can have
%% aliases with the same name in different Regions. For detailed information
%% about aliases, see Using aliases in the AWS Key Management Service
%% Developer Guide.
%%
%% This operation does not return a response. To get the alias that you
%% created, use the `ListAliases' operation.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see How Key State Affects Use of a Customer Master Key in the
%% AWS Key Management Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on an alias in a
%% different AWS account.
%%
%% Required permissions
%%
%% <ul> <li> kms:CreateAlias on the alias (IAM policy).
%%
%% </li> <li> kms:CreateAlias on the CMK (key policy).
%%
%% </li> </ul> For details, see Controlling access to aliases in the AWS Key
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

%% @doc Creates a custom key store that is associated with an AWS CloudHSM
%% cluster that you own and manage.
%%
%% This operation is part of the Custom Key Store feature feature in AWS KMS,
%% which combines the convenience and extensive integration of AWS KMS with
%% the isolation and control of a single-tenant key store.
%%
%% Before you create the custom key store, you must assemble the required
%% elements, including an AWS CloudHSM cluster that fulfills the requirements
%% for a custom key store. For details about the required elements, see
%% Assemble the Prerequisites in the AWS Key Management Service Developer
%% Guide.
%%
%% When the operation completes successfully, it returns the ID of the new
%% custom key store. Before you can use your new custom key store, you need
%% to use the `ConnectCustomKeyStore' operation to connect the new key store
%% to its AWS CloudHSM cluster. Even if you are not going to use your custom
%% key store immediately, you might want to connect it to verify that all
%% settings are correct and then disconnect it until you are ready to use it.
%%
%% For help with failures, see Troubleshooting a Custom Key Store in the AWS
%% Key Management Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a custom key
%% store in a different AWS account.
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

%% @doc Adds a grant to a customer master key (CMK).
%%
%% The grant allows the grantee principal to use the CMK when the conditions
%% specified in the grant are met. When setting permissions, grants are an
%% alternative to key policies.
%%
%% To create a grant that allows a cryptographic operation only when the
%% request includes a particular encryption context, use the `Constraints'
%% parameter. For details, see `GrantConstraints'.
%%
%% You can create grants on symmetric and asymmetric CMKs. However, if the
%% grant allows an operation that the CMK does not support, `CreateGrant'
%% fails with a `ValidationException'.
%%
%% <ul> <li> Grants for symmetric CMKs cannot allow operations that are not
%% supported for symmetric CMKs, including `Sign', `Verify', and
%% `GetPublicKey'. (There are limited exceptions to this rule for legacy
%% operations, but you should not create a grant for an operation that AWS
%% KMS does not support.)
%%
%% </li> <li> Grants for asymmetric CMKs cannot allow operations that are not
%% supported for asymmetric CMKs, including operations that generate data
%% keys or data key pairs, or operations related to automatic key rotation,
%% imported key material, or CMKs in custom key stores.
%%
%% </li> <li> Grants for asymmetric CMKs with a `KeyUsage' of
%% `ENCRYPT_DECRYPT' cannot allow the `Sign' or `Verify' operations. Grants
%% for asymmetric CMKs with a `KeyUsage' of `SIGN_VERIFY' cannot allow the
%% `Encrypt' or `Decrypt' operations.
%%
%% </li> <li> Grants for asymmetric CMKs cannot include an encryption context
%% grant constraint. An encryption context is not supported on asymmetric
%% CMKs.
%%
%% </li> </ul> For information about symmetric and asymmetric CMKs, see Using
%% Symmetric and Asymmetric CMKs in the AWS Key Management Service Developer
%% Guide. For more information about grants, see Grants in the AWS Key
%% Management Service Developer Guide .
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see How Key State Affects Use of a Customer Master Key in the
%% AWS Key Management Service Developer Guide.
%%
%% Cross-account use: Yes. To perform this operation on a CMK in a different
%% AWS account, specify the key ARN in the value of the `KeyId' parameter.
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

%% @doc Creates a unique customer managed customer master key (CMK) in your
%% AWS account and Region.
%%
%% You can use the `CreateKey' operation to create symmetric or asymmetric
%% CMKs.
%%
%% <ul> <li> Symmetric CMKs contain a 256-bit symmetric key that never leaves
%% AWS KMS unencrypted. To use the CMK, you must call AWS KMS. You can use a
%% symmetric CMK to encrypt and decrypt small amounts of data, but they are
%% typically used to generate data keys and data keys pairs. For details, see
%% `GenerateDataKey' and `GenerateDataKeyPair'.
%%
%% </li> <li> Asymmetric CMKs can contain an RSA key pair or an Elliptic
%% Curve (ECC) key pair. The private key in an asymmetric CMK never leaves
%% AWS KMS unencrypted. However, you can use the `GetPublicKey' operation to
%% download the public key so it can be used outside of AWS KMS. CMKs with
%% RSA key pairs can be used to encrypt or decrypt data or sign and verify
%% messages (but not both). CMKs with ECC key pairs can be used only to sign
%% and verify messages.
%%
%% </li> </ul> For information about symmetric and asymmetric CMKs, see Using
%% Symmetric and Asymmetric CMKs in the AWS Key Management Service Developer
%% Guide.
%%
%% To create different types of CMKs, use the following guidance:
%%
%% <dl> <dt>Asymmetric CMKs</dt> <dd> To create an asymmetric CMK, use the
%% `CustomerMasterKeySpec' parameter to specify the type of key material in
%% the CMK. Then, use the `KeyUsage' parameter to determine whether the CMK
%% will be used to encrypt and decrypt or sign and verify. You can't change
%% these properties after the CMK is created.
%%
%% </dd> <dt>Symmetric CMKs</dt> <dd> When creating a symmetric CMK, you
%% don't need to specify the `CustomerMasterKeySpec' or `KeyUsage'
%% parameters. The default value for `CustomerMasterKeySpec',
%% `SYMMETRIC_DEFAULT', and the default value for `KeyUsage',
%% `ENCRYPT_DECRYPT', are the only valid values for symmetric CMKs.
%%
%% </dd> <dt>Imported Key Material</dt> <dd> To import your own key material,
%% begin by creating a symmetric CMK with no key material. To do this, use
%% the `Origin' parameter of `CreateKey' with a value of `EXTERNAL'. Next,
%% use `GetParametersForImport' operation to get a public key and import
%% token, and use the public key to encrypt your key material. Then, use
%% `ImportKeyMaterial' with your import token to import the key material. For
%% step-by-step instructions, see Importing Key Material in the AWS Key
%% Management Service Developer Guide . You cannot import the key material
%% into an asymmetric CMK.
%%
%% </dd> <dt>Custom Key Stores</dt> <dd> To create a symmetric CMK in a
%% custom key store, use the `CustomKeyStoreId' parameter to specify the
%% custom key store. You must also use the `Origin' parameter with a value of
%% `AWS_CLOUDHSM'. The AWS CloudHSM cluster that is associated with the
%% custom key store must have at least two active HSMs in different
%% Availability Zones in the AWS Region.
%%
%% You cannot create an asymmetric CMK in a custom key store. For information
%% about custom key stores in AWS KMS see Using Custom Key Stores in the AWS
%% Key Management Service Developer Guide .
%%
%% </dd> </dl> Cross-account use: No. You cannot use this operation to create
%% a CMK in a different AWS account.
%%
%% Required permissions: kms:CreateKey (IAM policy). To use the `Tags'
%% parameter, kms:TagResource (IAM policy). For examples and information
%% about related permissions, see Allow a user to create CMKs in the AWS Key
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

%% @doc Decrypts ciphertext that was encrypted by a AWS KMS customer master
%% key (CMK) using any of the following operations:
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
%% encrypted under a symmetric or asymmetric CMK.
%%
%% When the CMK is asymmetric, you must specify the CMK and the encryption
%% algorithm that was used to encrypt the ciphertext. For information about
%% symmetric and asymmetric CMKs, see Using Symmetric and Asymmetric CMKs in
%% the AWS Key Management Service Developer Guide.
%%
%% The Decrypt operation also decrypts ciphertext that was encrypted outside
%% of AWS KMS by the public key in an AWS KMS asymmetric CMK. However, it
%% cannot decrypt ciphertext produced by other libraries, such as the AWS
%% Encryption SDK or Amazon S3 client-side encryption. These libraries return
%% a ciphertext format that is incompatible with AWS KMS.
%%
%% If the ciphertext was encrypted under a symmetric CMK, the `KeyId'
%% parameter is optional. AWS KMS can get this information from metadata that
%% it adds to the symmetric ciphertext blob. This feature adds durability to
%% your implementation by ensuring that authorized users can decrypt
%% ciphertext decades after it was encrypted, even if they've lost track of
%% the CMK ID. However, specifying the CMK is always recommended as a best
%% practice. When you use the `KeyId' parameter to specify a CMK, AWS KMS
%% only uses the CMK you specify. If the ciphertext was encrypted under a
%% different CMK, the `Decrypt' operation fails. This practice ensures that
%% you use the CMK that you intend.
%%
%% Whenever possible, use key policies to give users permission to call the
%% `Decrypt' operation on a particular CMK, instead of using IAM policies.
%% Otherwise, you might create an IAM user policy that gives the user
%% `Decrypt' permission on all CMKs. This user could decrypt ciphertext that
%% was encrypted by CMKs in other accounts if the key policy for the
%% cross-account CMK permits it. If you must use an IAM policy for `Decrypt'
%% permissions, limit the user to particular CMKs or particular trusted
%% accounts. For details, see Best practices for IAM policies in the AWS Key
%% Management Service Developer Guide.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see How Key State Affects Use of a Customer Master Key in the
%% AWS Key Management Service Developer Guide.
%%
%% Cross-account use: Yes. You can decrypt a ciphertext using a CMK in a
%% different AWS account.
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
%% Because an alias is not a property of a CMK, you can delete and change the
%% aliases of a CMK without affecting the CMK. Also, aliases do not appear in
%% the response from the `DescribeKey' operation. To get the aliases of all
%% CMKs, use the `ListAliases' operation.
%%
%% Each CMK can have multiple aliases. To change the alias of a CMK, use
%% `DeleteAlias' to delete the current alias and `CreateAlias' to create a
%% new alias. To associate an existing alias with a different customer master
%% key (CMK), call `UpdateAlias'.
%%
%% Cross-account use: No. You cannot perform this operation on an alias in a
%% different AWS account.
%%
%% Required permissions
%%
%% <ul> <li> kms:DeleteAlias on the alias (IAM policy).
%%
%% </li> <li> kms:DeleteAlias on the CMK (key policy).
%%
%% </li> </ul> For details, see Controlling access to aliases in the AWS Key
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
%% This operation does not delete the AWS CloudHSM cluster that is associated
%% with the custom key store, or affect any users or keys in the cluster.
%%
%% The custom key store that you delete cannot contain any AWS KMS customer
%% master keys (CMKs). Before deleting the key store, verify that you will
%% never need to use any of the CMKs in the key store for any cryptographic
%% operations. Then, use `ScheduleKeyDeletion' to delete the AWS KMS customer
%% master keys (CMKs) from the key store. When the scheduled waiting period
%% expires, the `ScheduleKeyDeletion' operation deletes the CMKs. Then it
%% makes a best effort to delete the key material from the associated
%% cluster. However, you might need to manually delete the orphaned key
%% material from the cluster and its backups.
%%
%% After all CMKs are deleted from AWS KMS, use `DisconnectCustomKeyStore' to
%% disconnect the key store from AWS KMS. Then, you can delete the custom key
%% store.
%%
%% Instead of deleting the custom key store, consider using
%% `DisconnectCustomKeyStore' to disconnect it from AWS KMS. While the key
%% store is disconnected, you cannot create or use the CMKs in the key store.
%% But, you do not need to delete CMKs and you can reconnect a disconnected
%% custom key store at any time.
%%
%% If the operation succeeds, it returns a JSON object with no properties.
%%
%% This operation is part of the Custom Key Store feature feature in AWS KMS,
%% which combines the convenience and extensive integration of AWS KMS with
%% the isolation and control of a single-tenant key store.
%%
%% Cross-account use: No. You cannot perform this operation on a custom key
%% store in a different AWS account.
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
%% This operation makes the specified customer master key (CMK) unusable. For
%% more information about importing key material into AWS KMS, see Importing
%% Key Material in the AWS Key Management Service Developer Guide.
%%
%% When the specified CMK is in the `PendingDeletion' state, this operation
%% does not change the CMK's state. Otherwise, it changes the CMK's state to
%% `PendingImport'.
%%
%% After you delete key material, you can use `ImportKeyMaterial' to reimport
%% the same key material into the CMK.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see How Key State Affects Use of a Customer Master Key in the
%% AWS Key Management Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a CMK in a
%% different AWS account.
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

%% @doc Gets information about custom key stores in the account and region.
%%
%% This operation is part of the Custom Key Store feature feature in AWS KMS,
%% which combines the convenience and extensive integration of AWS KMS with
%% the isolation and control of a single-tenant key store.
%%
%% By default, this operation returns information about all custom key stores
%% in the account and region. To get only information about a particular
%% custom key store, use either the `CustomKeyStoreName' or
%% `CustomKeyStoreId' parameter (but not both).
%%
%% To determine whether the custom key store is connected to its AWS CloudHSM
%% cluster, use the `ConnectionState' element in the response. If an attempt
%% to connect the custom key store failed, the `ConnectionState' value is
%% `FAILED' and the `ConnectionErrorCode' element in the response indicates
%% the cause of the failure. For help interpreting the `ConnectionErrorCode',
%% see `CustomKeyStoresListEntry'.
%%
%% Custom key stores have a `DISCONNECTED' connection state if the key store
%% has never been connected or you use the `DisconnectCustomKeyStore'
%% operation to disconnect it. If your custom key store state is `CONNECTED'
%% but you are having trouble using it, make sure that its associated AWS
%% CloudHSM cluster is active and contains the minimum number of HSMs
%% required for the operation, if any.
%%
%% For help repairing your custom key store, see the Troubleshooting Custom
%% Key Stores topic in the AWS Key Management Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a custom key
%% store in a different AWS account.
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

%% @doc Provides detailed information about a customer master key (CMK).
%%
%% You can run `DescribeKey' on a customer managed CMK or an AWS managed CMK.
%%
%% This detailed information includes the key ARN, creation date (and
%% deletion date, if applicable), the key state, and the origin and
%% expiration date (if any) of the key material. For CMKs in custom key
%% stores, it includes information about the custom key store, such as the
%% key store ID and the AWS CloudHSM cluster ID. It includes fields, like
%% `KeySpec', that help you distinguish symmetric from asymmetric CMKs. It
%% also provides information that is particularly important to asymmetric
%% CMKs, such as the key usage (encryption or signing) and the encryption
%% algorithms or signing algorithms that the CMK supports.
%%
%% `DescribeKey' does not return the following information:
%%
%% <ul> <li> Aliases associated with the CMK. To get this information, use
%% `ListAliases'.
%%
%% </li> <li> Whether automatic key rotation is enabled on the CMK. To get
%% this information, use `GetKeyRotationStatus'. Also, some key states
%% prevent a CMK from being automatically rotated. For details, see How
%% Automatic Key Rotation Works in AWS Key Management Service Developer
%% Guide.
%%
%% </li> <li> Tags on the CMK. To get this information, use
%% `ListResourceTags'.
%%
%% </li> <li> Key policies and grants on the CMK. To get this information,
%% use `GetKeyPolicy' and `ListGrants'.
%%
%% </li> </ul> If you call the `DescribeKey' operation on a predefined AWS
%% alias, that is, an AWS alias with no key ID, AWS KMS creates an AWS
%% managed CMK. Then, it associates the alias with the new CMK, and returns
%% the `KeyId' and `Arn' of the new CMK in the response.
%%
%% Cross-account use: Yes. To perform this operation with a CMK in a
%% different AWS account, specify the key ARN or alias ARN in the value of
%% the `KeyId' parameter.
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

%% @doc Sets the state of a customer master key (CMK) to disabled.
%%
%% This change temporarily prevents use of the CMK for cryptographic
%% operations.
%%
%% For more information about how key state affects the use of a CMK, see How
%% Key State Affects the Use of a Customer Master Key in the AWS Key
%% Management Service Developer Guide .
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see How Key State Affects Use of a Customer Master Key in the
%% AWS Key Management Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a CMK in a
%% different AWS account.
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
%% symmetric customer master key (CMK).
%%
%% You cannot enable automatic rotation of asymmetric CMKs, CMKs with
%% imported key material, or CMKs in a custom key store.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see How Key State Affects Use of a Customer Master Key in the
%% AWS Key Management Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a CMK in a
%% different AWS account.
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

%% @doc Disconnects the custom key store from its associated AWS CloudHSM
%% cluster.
%%
%% While a custom key store is disconnected, you can manage the custom key
%% store and its customer master keys (CMKs), but you cannot create or use
%% CMKs in the custom key store. You can reconnect the custom key store at
%% any time.
%%
%% While a custom key store is disconnected, all attempts to create customer
%% master keys (CMKs) in the custom key store or to use existing CMKs in
%% cryptographic operations will fail. This action can prevent users from
%% storing and accessing sensitive data.
%%
%% To find the connection state of a custom key store, use the
%% `DescribeCustomKeyStores' operation. To reconnect a custom key store, use
%% the `ConnectCustomKeyStore' operation.
%%
%% If the operation succeeds, it returns a JSON object with no properties.
%%
%% This operation is part of the Custom Key Store feature feature in AWS KMS,
%% which combines the convenience and extensive integration of AWS KMS with
%% the isolation and control of a single-tenant key store.
%%
%% Cross-account use: No. You cannot perform this operation on a custom key
%% store in a different AWS account.
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

%% @doc Sets the key state of a customer master key (CMK) to enabled.
%%
%% This allows you to use the CMK for cryptographic operations.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see How Key State Affects Use of a Customer Master Key in the
%% AWS Key Management Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a CMK in a
%% different AWS account.
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
%% symmetric customer master key (CMK).
%%
%% You cannot enable automatic rotation of asymmetric CMKs, CMKs with
%% imported key material, or CMKs in a custom key store.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see How Key State Affects Use of a Customer Master Key in the
%% AWS Key Management Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a CMK in a
%% different AWS account.
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

%% @doc Encrypts plaintext into ciphertext by using a customer master key
%% (CMK).
%%
%% The `Encrypt' operation has two primary use cases:
%%
%% <ul> <li> You can encrypt small amounts of arbitrary data, such as a
%% personal identifier or database password, or other sensitive information.
%%
%% </li> <li> You can use the `Encrypt' operation to move encrypted data from
%% one AWS Region to another. For example, in Region A, generate a data key
%% and use the plaintext key to encrypt your data. Then, in Region A, use the
%% `Encrypt' operation to encrypt the plaintext data key under a CMK in
%% Region B. Now, you can move the encrypted data and the encrypted data key
%% to Region B. When necessary, you can decrypt the encrypted data key and
%% the encrypted data entirely within in Region B.
%%
%% </li> </ul> You don't need to use the `Encrypt' operation to encrypt a
%% data key. The `GenerateDataKey' and `GenerateDataKeyPair' operations
%% return a plaintext data key and an encrypted copy of that data key.
%%
%% When you encrypt data, you must specify a symmetric or asymmetric CMK to
%% use in the encryption operation. The CMK must have a `KeyUsage' value of
%% `ENCRYPT_DECRYPT.' To find the `KeyUsage' of a CMK, use the `DescribeKey'
%% operation.
%%
%% If you use a symmetric CMK, you can use an encryption context to add
%% additional security to your encryption operation. If you specify an
%% `EncryptionContext' when encrypting data, you must specify the same
%% encryption context (a case-sensitive exact match) when decrypting the
%% data. Otherwise, the request to decrypt fails with an
%% `InvalidCiphertextException'. For more information, see Encryption Context
%% in the AWS Key Management Service Developer Guide.
%%
%% If you specify an asymmetric CMK, you must also specify the encryption
%% algorithm. The algorithm must be compatible with the CMK type.
%%
%% When you use an asymmetric CMK to encrypt or reencrypt data, be sure to
%% record the CMK and encryption algorithm that you choose. You will be
%% required to provide the same CMK and encryption algorithm when you decrypt
%% the data. If the CMK and algorithm do not match the values used to encrypt
%% the data, the decrypt operation fails.
%%
%% You are not required to supply the CMK ID and encryption algorithm when
%% you decrypt with symmetric CMKs because AWS KMS stores this information in
%% the ciphertext blob. AWS KMS cannot store metadata in ciphertext generated
%% with asymmetric keys. The standard format for asymmetric key ciphertext
%% does not include configurable fields.
%%
%% The maximum size of the data that you can encrypt varies with the type of
%% CMK and the encryption algorithm that you choose.
%%
%% <ul> <li> Symmetric CMKs
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
%% </li> </ul> </li> </ul> The CMK that you use for this operation must be in
%% a compatible key state. For details, see How Key State Affects Use of a
%% Customer Master Key in the AWS Key Management Service Developer Guide.
%%
%% Cross-account use: Yes. To perform this operation with a CMK in a
%% different AWS account, specify the key ARN or alias ARN in the value of
%% the `KeyId' parameter.
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

%% @doc Generates a unique symmetric data key for client-side encryption.
%%
%% This operation returns a plaintext copy of the data key and a copy that is
%% encrypted under a customer master key (CMK) that you specify. You can use
%% the plaintext key to encrypt your data outside of AWS KMS and store the
%% encrypted data key with the encrypted data.
%%
%% `GenerateDataKey' returns a unique data key for each request. The bytes in
%% the plaintext key are not related to the caller or the CMK.
%%
%% To generate a data key, specify the symmetric CMK that will be used to
%% encrypt the data key. You cannot use an asymmetric CMK to generate data
%% keys. To get the type of your CMK, use the `DescribeKey' operation. You
%% must also specify the length of the data key. Use either the `KeySpec' or
%% `NumberOfBytes' parameters (but not both). For 128-bit and 256-bit data
%% keys, use the `KeySpec' parameter.
%%
%% To get only an encrypted copy of the data key, use
%% `GenerateDataKeyWithoutPlaintext'. To generate an asymmetric data key
%% pair, use the `GenerateDataKeyPair' or
%% `GenerateDataKeyPairWithoutPlaintext' operation. To get a
%% cryptographically secure random byte string, use `GenerateRandom'.
%%
%% You can use the optional encryption context to add additional security to
%% the encryption operation. If you specify an `EncryptionContext', you must
%% specify the same encryption context (a case-sensitive exact match) when
%% decrypting the encrypted data key. Otherwise, the request to decrypt fails
%% with an `InvalidCiphertextException'. For more information, see Encryption
%% Context in the AWS Key Management Service Developer Guide.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see How Key State Affects Use of a Customer Master Key in the
%% AWS Key Management Service Developer Guide.
%%
%% How to use your data key
%%
%% We recommend that you use the following pattern to encrypt data locally in
%% your application. You can write your own code or use a client-side
%% encryption library, such as the AWS Encryption SDK, the Amazon DynamoDB
%% Encryption Client, or Amazon S3 client-side encryption to do these tasks
%% for you.
%%
%% To encrypt data outside of AWS KMS:
%%
%% <ol> <li> Use the `GenerateDataKey' operation to get a data key.
%%
%% </li> <li> Use the plaintext data key (in the `Plaintext' field of the
%% response) to encrypt your data outside of AWS KMS. Then erase the
%% plaintext data key from memory.
%%
%% </li> <li> Store the encrypted data key (in the `CiphertextBlob' field of
%% the response) with the encrypted data.
%%
%% </li> </ol> To decrypt data outside of AWS KMS:
%%
%% <ol> <li> Use the `Decrypt' operation to decrypt the encrypted data key.
%% The operation returns a plaintext copy of the data key.
%%
%% </li> <li> Use the plaintext data key to decrypt data outside of AWS KMS,
%% then erase the plaintext data key from memory.
%%
%% </li> </ol> Cross-account use: Yes. To perform this operation with a CMK
%% in a different AWS account, specify the key ARN or alias ARN in the value
%% of the `KeyId' parameter.
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

%% @doc Generates a unique asymmetric data key pair.
%%
%% The `GenerateDataKeyPair' operation returns a plaintext public key, a
%% plaintext private key, and a copy of the private key that is encrypted
%% under the symmetric CMK you specify. You can use the data key pair to
%% perform asymmetric cryptography outside of AWS KMS.
%%
%% `GenerateDataKeyPair' returns a unique data key pair for each request. The
%% bytes in the keys are not related to the caller or the CMK that is used to
%% encrypt the private key.
%%
%% You can use the public key that `GenerateDataKeyPair' returns to encrypt
%% data or verify a signature outside of AWS KMS. Then, store the encrypted
%% private key with the data. When you are ready to decrypt data or sign a
%% message, you can use the `Decrypt' operation to decrypt the encrypted
%% private key.
%%
%% To generate a data key pair, you must specify a symmetric customer master
%% key (CMK) to encrypt the private key in a data key pair. You cannot use an
%% asymmetric CMK or a CMK in a custom key store. To get the type and origin
%% of your CMK, use the `DescribeKey' operation.
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
%% You can use the optional encryption context to add additional security to
%% the encryption operation. If you specify an `EncryptionContext', you must
%% specify the same encryption context (a case-sensitive exact match) when
%% decrypting the encrypted data key. Otherwise, the request to decrypt fails
%% with an `InvalidCiphertextException'. For more information, see Encryption
%% Context in the AWS Key Management Service Developer Guide.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see How Key State Affects Use of a Customer Master Key in the
%% AWS Key Management Service Developer Guide.
%%
%% Cross-account use: Yes. To perform this operation with a CMK in a
%% different AWS account, specify the key ARN or alias ARN in the value of
%% the `KeyId' parameter.
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

%% @doc Generates a unique asymmetric data key pair.
%%
%% The `GenerateDataKeyPairWithoutPlaintext' operation returns a plaintext
%% public key and a copy of the private key that is encrypted under the
%% symmetric CMK you specify. Unlike `GenerateDataKeyPair', this operation
%% does not return a plaintext private key.
%%
%% To generate a data key pair, you must specify a symmetric customer master
%% key (CMK) to encrypt the private key in the data key pair. You cannot use
%% an asymmetric CMK or a CMK in a custom key store. To get the type and
%% origin of your CMK, use the `KeySpec' field in the `DescribeKey' response.
%%
%% You can use the public key that `GenerateDataKeyPairWithoutPlaintext'
%% returns to encrypt data or verify a signature outside of AWS KMS. Then,
%% store the encrypted private key with the data. When you are ready to
%% decrypt data or sign a message, you can use the `Decrypt' operation to
%% decrypt the encrypted private key.
%%
%% `GenerateDataKeyPairWithoutPlaintext' returns a unique data key pair for
%% each request. The bytes in the key are not related to the caller or CMK
%% that is used to encrypt the private key.
%%
%% You can use the optional encryption context to add additional security to
%% the encryption operation. If you specify an `EncryptionContext', you must
%% specify the same encryption context (a case-sensitive exact match) when
%% decrypting the encrypted data key. Otherwise, the request to decrypt fails
%% with an `InvalidCiphertextException'. For more information, see Encryption
%% Context in the AWS Key Management Service Developer Guide.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see How Key State Affects Use of a Customer Master Key in the
%% AWS Key Management Service Developer Guide.
%%
%% Cross-account use: Yes. To perform this operation with a CMK in a
%% different AWS account, specify the key ARN or alias ARN in the value of
%% the `KeyId' parameter.
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

%% @doc Generates a unique symmetric data key.
%%
%% This operation returns a data key that is encrypted under a customer
%% master key (CMK) that you specify. To request an asymmetric data key pair,
%% use the `GenerateDataKeyPair' or `GenerateDataKeyPairWithoutPlaintext'
%% operations.
%%
%% `GenerateDataKeyWithoutPlaintext' is identical to the `GenerateDataKey'
%% operation except that returns only the encrypted copy of the data key.
%% This operation is useful for systems that need to encrypt data at some
%% point, but not immediately. When you need to encrypt the data, you call
%% the `Decrypt' operation on the encrypted copy of the key.
%%
%% It's also useful in distributed systems with different levels of trust.
%% For example, you might store encrypted data in containers. One component
%% of your system creates new containers and stores an encrypted data key
%% with each container. Then, a different component puts the data into the
%% containers. That component first decrypts the data key, uses the plaintext
%% data key to encrypt data, puts the encrypted data into the container, and
%% then destroys the plaintext data key. In this system, the component that
%% creates the containers never sees the plaintext data key.
%%
%% `GenerateDataKeyWithoutPlaintext' returns a unique data key for each
%% request. The bytes in the keys are not related to the caller or CMK that
%% is used to encrypt the private key.
%%
%% To generate a data key, you must specify the symmetric customer master key
%% (CMK) that is used to encrypt the data key. You cannot use an asymmetric
%% CMK to generate a data key. To get the type of your CMK, use the
%% `DescribeKey' operation.
%%
%% If the operation succeeds, you will find the encrypted copy of the data
%% key in the `CiphertextBlob' field.
%%
%% You can use the optional encryption context to add additional security to
%% the encryption operation. If you specify an `EncryptionContext', you must
%% specify the same encryption context (a case-sensitive exact match) when
%% decrypting the encrypted data key. Otherwise, the request to decrypt fails
%% with an `InvalidCiphertextException'. For more information, see Encryption
%% Context in the AWS Key Management Service Developer Guide.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see How Key State Affects Use of a Customer Master Key in the
%% AWS Key Management Service Developer Guide.
%%
%% Cross-account use: Yes. To perform this operation with a CMK in a
%% different AWS account, specify the key ARN or alias ARN in the value of
%% the `KeyId' parameter.
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

%% @doc Returns a random byte string that is cryptographically secure.
%%
%% By default, the random byte string is generated in AWS KMS. To generate
%% the byte string in the AWS CloudHSM cluster that is associated with a
%% custom key store, specify the custom key store ID.
%%
%% For more information about entropy and random number generation, see the
%% AWS Key Management Service Cryptographic Details whitepaper.
%%
%% Required permissions: kms:GenerateRandom (IAM policy)
generate_random(Client, Input)
  when is_map(Client), is_map(Input) ->
    generate_random(Client, Input, []).
generate_random(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GenerateRandom">>, Input, Options).

%% @doc Gets a key policy attached to the specified customer master key
%% (CMK).
%%
%% Cross-account use: No. You cannot perform this operation on a CMK in a
%% different AWS account.
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
%% key material is enabled for the specified customer master key (CMK).
%%
%% You cannot enable automatic rotation of asymmetric CMKs, CMKs with
%% imported key material, or CMKs in a custom key store. The key rotation
%% status for these CMKs is always `false'.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see How Key State Affects Use of a Customer Master Key in the
%% AWS Key Management Service Developer Guide.
%%
%% <ul> <li> Disabled: The key rotation status does not change when you
%% disable a CMK. However, while the CMK is disabled, AWS KMS does not rotate
%% the backing key.
%%
%% </li> <li> Pending deletion: While a CMK is pending deletion, its key
%% rotation status is `false' and AWS KMS does not rotate the backing key. If
%% you cancel the deletion, the original key rotation status is restored.
%%
%% </li> </ul> Cross-account use: Yes. To perform this operation on a CMK in
%% a different AWS account, specify the key ARN in the value of the `KeyId'
%% parameter.
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

%% @doc Returns the items you need to import key material into a symmetric,
%% customer managed customer master key (CMK).
%%
%% For more information about importing key material into AWS KMS, see
%% Importing Key Material in the AWS Key Management Service Developer Guide.
%%
%% This operation returns a public key and an import token. Use the public
%% key to encrypt the symmetric key material. Store the import token to send
%% with a subsequent `ImportKeyMaterial' request.
%%
%% You must specify the key ID of the symmetric CMK into which you will
%% import key material. This CMK's `Origin' must be `EXTERNAL'. You must also
%% specify the wrapping algorithm and type of wrapping key (public key) that
%% you will use to encrypt the key material. You cannot perform this
%% operation on an asymmetric CMK or on any CMK in a different AWS account.
%%
%% To import key material, you must use the public key and import token from
%% the same response. These items are valid for 24 hours. The expiration date
%% and time appear in the `GetParametersForImport' response. You cannot use
%% an expired token in an `ImportKeyMaterial' request. If your key and token
%% expire, send another `GetParametersForImport' request.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see How Key State Affects Use of a Customer Master Key in the
%% AWS Key Management Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a CMK in a
%% different AWS account.
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

%% @doc Returns the public key of an asymmetric CMK.
%%
%% Unlike the private key of a asymmetric CMK, which never leaves AWS KMS
%% unencrypted, callers with `kms:GetPublicKey' permission can download the
%% public key of an asymmetric CMK. You can share the public key to allow
%% others to encrypt messages and verify signatures outside of AWS KMS. For
%% information about symmetric and asymmetric CMKs, see Using Symmetric and
%% Asymmetric CMKs in the AWS Key Management Service Developer Guide.
%%
%% You do not need to download the public key. Instead, you can use the
%% public key within AWS KMS by calling the `Encrypt', `ReEncrypt', or
%% `Verify' operations with the identifier of an asymmetric CMK. When you use
%% the public key within AWS KMS, you benefit from the authentication,
%% authorization, and logging that are part of every AWS KMS operation. You
%% also reduce of risk of encrypting data that cannot be decrypted. These
%% features are not effective outside of AWS KMS. For details, see Special
%% Considerations for Downloading Public Keys.
%%
%% To help you use the public key safely outside of AWS KMS, `GetPublicKey'
%% returns important information about the public key in the response,
%% including:
%%
%% <ul> <li> CustomerMasterKeySpec: The type of key material in the public
%% key, such as `RSA_4096' or `ECC_NIST_P521'.
%%
%% </li> <li> KeyUsage: Whether the key is used for encryption or signing.
%%
%% </li> <li> EncryptionAlgorithms or SigningAlgorithms: A list of the
%% encryption algorithms or the signing algorithms for the key.
%%
%% </li> </ul> Although AWS KMS cannot enforce these restrictions on external
%% operations, it is crucial that you use this information to prevent the
%% public key from being used improperly. For example, you can prevent a
%% public signing key from being used encrypt data, or prevent a public key
%% from being used with an encryption algorithm that is not supported by AWS
%% KMS. You can also avoid errors, such as using the wrong signing algorithm
%% in a verification operation.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see How Key State Affects Use of a Customer Master Key in the
%% AWS Key Management Service Developer Guide.
%%
%% Cross-account use: Yes. To perform this operation with a CMK in a
%% different AWS account, specify the key ARN or alias ARN in the value of
%% the `KeyId' parameter.
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

%% @doc Imports key material into an existing symmetric AWS KMS customer
%% master key (CMK) that was created without key material.
%%
%% After you successfully import key material into a CMK, you can reimport
%% the same key material into that CMK, but you cannot import different key
%% material.
%%
%% You cannot perform this operation on an asymmetric CMK or on any CMK in a
%% different AWS account. For more information about creating CMKs with no
%% key material and then importing key material, see Importing Key Material
%% in the AWS Key Management Service Developer Guide.
%%
%% Before using this operation, call `GetParametersForImport'. Its response
%% includes a public key and an import token. Use the public key to encrypt
%% the key material. Then, submit the import token from the same
%% `GetParametersForImport' response.
%%
%% When calling this operation, you must specify the following values:
%%
%% <ul> <li> The key ID or key ARN of a CMK with no key material. Its
%% `Origin' must be `EXTERNAL'.
%%
%% To create a CMK with no key material, call `CreateKey' and set the value
%% of its `Origin' parameter to `EXTERNAL'. To get the `Origin' of a CMK,
%% call `DescribeKey'.)
%%
%% </li> <li> The encrypted key material. To get the public key to encrypt
%% the key material, call `GetParametersForImport'.
%%
%% </li> <li> The import token that `GetParametersForImport' returned. You
%% must use a public key and token from the same `GetParametersForImport'
%% response.
%%
%% </li> <li> Whether the key material expires and if so, when. If you set an
%% expiration date, AWS KMS deletes the key material from the CMK on the
%% specified date, and the CMK becomes unusable. To use the CMK again, you
%% must reimport the same key material. The only way to change an expiration
%% date is by reimporting the same key material and specifying a new
%% expiration date.
%%
%% </li> </ul> When this operation is successful, the key state of the CMK
%% changes from `PendingImport' to `Enabled', and you can use the CMK.
%%
%% If this operation fails, use the exception to help determine the problem.
%% If the error is related to the key material, the import token, or wrapping
%% key, use `GetParametersForImport' to get a new public key and import token
%% for the CMK and repeat the import procedure. For help, see How To Import
%% Key Material in the AWS Key Management Service Developer Guide.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see How Key State Affects Use of a Customer Master Key in the
%% AWS Key Management Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a CMK in a
%% different AWS account.
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

%% @doc Gets a list of aliases in the caller's AWS account and region.
%%
%% For more information about aliases, see `CreateAlias'.
%%
%% By default, the `ListAliases' operation returns all aliases in the account
%% and region. To get only the aliases associated with a particular customer
%% master key (CMK), use the `KeyId' parameter.
%%
%% The `ListAliases' response can include aliases that you created and
%% associated with your customer managed CMKs, and aliases that AWS created
%% and associated with AWS managed CMKs in your account. You can recognize
%% AWS aliases because their names have the format `aws/<service-name>', such
%% as `aws/dynamodb'.
%%
%% The response might also include aliases that have no `TargetKeyId' field.
%% These are predefined aliases that AWS has created but has not yet
%% associated with a CMK. Aliases that AWS creates in your account, including
%% predefined aliases, do not count against your AWS KMS aliases quota.
%%
%% Cross-account use: No. `ListAliases' does not return aliases in other AWS
%% accounts.
%%
%% Required permissions: kms:ListAliases (IAM policy)
%%
%% For details, see Controlling access to aliases in the AWS Key Management
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

%% @doc Gets a list of all grants for the specified customer master key
%% (CMK).
%%
%% You must specify the CMK in all requests. You can filter the grant list by
%% grant ID or grantee principal.
%%
%% The `GranteePrincipal' field in the `ListGrants' response usually contains
%% the user or role designated as the grantee principal in the grant.
%% However, when the grantee principal in the grant is an AWS service, the
%% `GranteePrincipal' field contains the service principal, which might
%% represent several different grantee principals.
%%
%% Cross-account use: Yes. To perform this operation on a CMK in a different
%% AWS account, specify the key ARN in the value of the `KeyId' parameter.
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

%% @doc Gets the names of the key policies that are attached to a customer
%% master key (CMK).
%%
%% This operation is designed to get policy names that you can use in a
%% `GetKeyPolicy' operation. However, the only valid policy name is
%% `default'.
%%
%% Cross-account use: No. You cannot perform this operation on a CMK in a
%% different AWS account.
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

%% @doc Gets a list of all customer master keys (CMKs) in the caller's AWS
%% account and Region.
%%
%% Cross-account use: No. You cannot perform this operation on a CMK in a
%% different AWS account.
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

%% @doc Returns all tags on the specified customer master key (CMK).
%%
%% For general information about tags, including the format and syntax, see
%% Tagging AWS resources in the Amazon Web Services General Reference. For
%% information about using tags in AWS KMS, see Tagging keys.
%%
%% Cross-account use: No. You cannot perform this operation on a CMK in a
%% different AWS account.
%%
%% Required permissions: kms:ListResourceTags (key policy)
%%
%% Related operations:
%%
%% <ul> <li> `TagResource'
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

%% @doc Returns all grants in which the specified principal is the
%% `RetiringPrincipal' in the grant.
%%
%% You can specify any principal in your AWS account. The grants that are
%% returned include grants for CMKs in your AWS account and other AWS
%% accounts.
%%
%% You might use this operation to determine which grants you may retire. To
%% retire a grant, use the `RetireGrant' operation.
%%
%% Cross-account use: You must specify a principal in your AWS account.
%% However, this operation can return grants in any AWS account. You do not
%% need `kms:ListRetirableGrants' permission (or any other additional
%% permission) in any AWS account other than your own.
%%
%% Required permissions: kms:ListRetirableGrants (IAM policy) in your AWS
%% account.
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

%% @doc Attaches a key policy to the specified customer master key (CMK).
%%
%% For more information about key policies, see Key Policies in the AWS Key
%% Management Service Developer Guide. For help writing and formatting a JSON
%% policy document, see the IAM JSON Policy Reference in the IAM User Guide .
%% For examples of adding a key policy in multiple programming languages, see
%% Setting a key policy in the AWS Key Management Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a CMK in a
%% different AWS account.
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

%% @doc Decrypts ciphertext and then reencrypts it entirely within AWS KMS.
%%
%% You can use this operation to change the customer master key (CMK) under
%% which data is encrypted, such as when you manually rotate a CMK or change
%% the CMK that protects a ciphertext. You can also use it to reencrypt
%% ciphertext under the same CMK, such as to change the encryption context of
%% a ciphertext.
%%
%% The `ReEncrypt' operation can decrypt ciphertext that was encrypted by
%% using an AWS KMS CMK in an AWS KMS operation, such as `Encrypt' or
%% `GenerateDataKey'. It can also decrypt ciphertext that was encrypted by
%% using the public key of an asymmetric CMK outside of AWS KMS. However, it
%% cannot decrypt ciphertext produced by other libraries, such as the AWS
%% Encryption SDK or Amazon S3 client-side encryption. These libraries return
%% a ciphertext format that is incompatible with AWS KMS.
%%
%% When you use the `ReEncrypt' operation, you need to provide information
%% for the decrypt operation and the subsequent encrypt operation.
%%
%% <ul> <li> If your ciphertext was encrypted under an asymmetric CMK, you
%% must use the `SourceKeyId' parameter to identify the CMK that encrypted
%% the ciphertext. You must also supply the encryption algorithm that was
%% used. This information is required to decrypt the data.
%%
%% </li> <li> If your ciphertext was encrypted under a symmetric CMK, the
%% `SourceKeyId' parameter is optional. AWS KMS can get this information from
%% metadata that it adds to the symmetric ciphertext blob. This feature adds
%% durability to your implementation by ensuring that authorized users can
%% decrypt ciphertext decades after it was encrypted, even if they've lost
%% track of the CMK ID. However, specifying the source CMK is always
%% recommended as a best practice. When you use the `SourceKeyId' parameter
%% to specify a CMK, AWS KMS uses only the CMK you specify. If the ciphertext
%% was encrypted under a different CMK, the `ReEncrypt' operation fails. This
%% practice ensures that you use the CMK that you intend.
%%
%% </li> <li> To reencrypt the data, you must use the `DestinationKeyId'
%% parameter specify the CMK that re-encrypts the data after it is decrypted.
%% You can select a symmetric or asymmetric CMK. If the destination CMK is an
%% asymmetric CMK, you must also provide the encryption algorithm. The
%% algorithm that you choose must be compatible with the CMK.
%%
%% When you use an asymmetric CMK to encrypt or reencrypt data, be sure to
%% record the CMK and encryption algorithm that you choose. You will be
%% required to provide the same CMK and encryption algorithm when you decrypt
%% the data. If the CMK and algorithm do not match the values used to encrypt
%% the data, the decrypt operation fails.
%%
%% You are not required to supply the CMK ID and encryption algorithm when
%% you decrypt with symmetric CMKs because AWS KMS stores this information in
%% the ciphertext blob. AWS KMS cannot store metadata in ciphertext generated
%% with asymmetric keys. The standard format for asymmetric key ciphertext
%% does not include configurable fields.
%%
%% </li> </ul> The CMK that you use for this operation must be in a
%% compatible key state. For details, see How Key State Affects Use of a
%% Customer Master Key in the AWS Key Management Service Developer Guide.
%%
%% Cross-account use: Yes. The source CMK and destination CMK can be in
%% different AWS accounts. Either or both CMKs can be in a different account
%% than the caller.
%%
%% Required permissions:
%%
%% <ul> <li> kms:ReEncryptFrom permission on the source CMK (key policy)
%%
%% </li> <li> kms:ReEncryptTo permission on the destination CMK (key policy)
%%
%% </li> </ul> To permit reencryption from or to a CMK, include the
%% `"kms:ReEncrypt*"' permission in your key policy. This permission is
%% automatically included in the key policy when you use the console to
%% create a CMK. But you must include it manually when you create a CMK
%% programmatically or when you use the `PutKeyPolicy' operation to set a key
%% policy.
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

%% @doc Retires a grant.
%%
%% To clean up, you can retire a grant when you're done using it. You should
%% revoke a grant when you intend to actively deny operations that depend on
%% it. The following are permitted to call this API:
%%
%% <ul> <li> The AWS account (root user) under which the grant was created
%%
%% </li> <li> The `RetiringPrincipal', if present in the grant
%%
%% </li> <li> The `GranteePrincipal', if `RetireGrant' is an operation
%% specified in the grant
%%
%% </li> </ul> You must identify the grant to retire by its grant token or by
%% a combination of the grant ID and the Amazon Resource Name (ARN) of the
%% customer master key (CMK). A grant token is a unique variable-length
%% base64-encoded string. A grant ID is a 64 character unique identifier of a
%% grant. The `CreateGrant' operation returns both.
%%
%% Cross-account use: Yes. You can retire a grant on a CMK in a different AWS
%% account.
%%
%% Required permissions:: Permission to retire a grant is specified in the
%% grant. You cannot control access to this operation in a policy. For more
%% information, see Using grants in the AWS Key Management Service Developer
%% Guide.
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

%% @doc Revokes the specified grant for the specified customer master key
%% (CMK).
%%
%% You can revoke a grant to actively deny operations that depend on it.
%%
%% Cross-account use: Yes. To perform this operation on a CMK in a different
%% AWS account, specify the key ARN in the value of the `KeyId' parameter.
%%
%% Required permissions: kms:RevokeGrant (key policy)
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

%% @doc Schedules the deletion of a customer master key (CMK).
%%
%% You may provide a waiting period, specified in days, before deletion
%% occurs. If you do not provide a waiting period, the default period of 30
%% days is used. When this operation is successful, the key state of the CMK
%% changes to `PendingDeletion'. Before the waiting period ends, you can use
%% `CancelKeyDeletion' to cancel the deletion of the CMK. After the waiting
%% period ends, AWS KMS deletes the CMK and all AWS KMS data associated with
%% it, including all aliases that refer to it.
%%
%% Deleting a CMK is a destructive and potentially dangerous operation. When
%% a CMK is deleted, all data that was encrypted under the CMK is
%% unrecoverable. To prevent the use of a CMK without deleting it, use
%% `DisableKey'.
%%
%% If you schedule deletion of a CMK from a custom key store, when the
%% waiting period expires, `ScheduleKeyDeletion' deletes the CMK from AWS
%% KMS. Then AWS KMS makes a best effort to delete the key material from the
%% associated AWS CloudHSM cluster. However, you might need to manually
%% delete the orphaned key material from the cluster and its backups.
%%
%% For more information about scheduling a CMK for deletion, see Deleting
%% Customer Master Keys in the AWS Key Management Service Developer Guide.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see How Key State Affects Use of a Customer Master Key in the
%% AWS Key Management Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a CMK in a
%% different AWS account.
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
%% the private key in an asymmetric CMK.
%%
%% To verify the signature, use the `Verify' operation, or use the public key
%% in the same asymmetric CMK outside of AWS KMS. For information about
%% symmetric and asymmetric CMKs, see Using Symmetric and Asymmetric CMKs in
%% the AWS Key Management Service Developer Guide.
%%
%% Digital signatures are generated and verified by using asymmetric key
%% pair, such as an RSA or ECC pair that is represented by an asymmetric
%% customer master key (CMK). The key owner (or an authorized user) uses
%% their private key to sign a message. Anyone with the public key can verify
%% that the message was signed with that particular private key and that the
%% message hasn't changed since it was signed.
%%
%% To use the `Sign' operation, provide the following information:
%%
%% <ul> <li> Use the `KeyId' parameter to identify an asymmetric CMK with a
%% `KeyUsage' value of `SIGN_VERIFY'. To get the `KeyUsage' value of a CMK,
%% use the `DescribeKey' operation. The caller must have `kms:Sign'
%% permission on the CMK.
%%
%% </li> <li> Use the `Message' parameter to specify the message or message
%% digest to sign. You can submit messages of up to 4096 bytes. To sign a
%% larger message, generate a hash digest of the message, and then provide
%% the hash digest in the `Message' parameter. To indicate whether the
%% message is a full message or a digest, use the `MessageType' parameter.
%%
%% </li> <li> Choose a signing algorithm that is compatible with the CMK.
%%
%% </li> </ul> When signing a message, be sure to record the CMK and the
%% signing algorithm. This information is required to verify the signature.
%%
%% To verify the signature that this operation generates, use the `Verify'
%% operation. Or use the `GetPublicKey' operation to download the public key
%% and then use the public key to verify the signature outside of AWS KMS.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see How Key State Affects Use of a Customer Master Key in the
%% AWS Key Management Service Developer Guide.
%%
%% Cross-account use: Yes. To perform this operation with a CMK in a
%% different AWS account, specify the key ARN or alias ARN in the value of
%% the `KeyId' parameter.
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

%% @doc Adds or edits tags on a customer managed CMK.
%%
%% Each tag consists of a tag key and a tag value, both of which are
%% case-sensitive strings. The tag value can be an empty (null) string.
%%
%% To add a tag, specify a new tag key and a tag value. To edit a tag,
%% specify an existing tag key and a new tag value.
%%
%% You can use this operation to tag a customer managed CMK, but you cannot
%% tag an AWS managed CMK, an AWS owned CMK, or an alias.
%%
%% For general information about tags, including the format and syntax, see
%% Tagging AWS resources in the Amazon Web Services General Reference. For
%% information about using tags in AWS KMS, see Tagging keys.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see How Key State Affects Use of a Customer Master Key in the
%% AWS Key Management Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a CMK in a
%% different AWS account.
%%
%% Required permissions: kms:TagResource (key policy)
%%
%% Related operations
%%
%% <ul> <li> `UntagResource'
%%
%% </li> <li> `ListResourceTags'
%%
%% </li> </ul>
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Deletes tags from a customer managed CMK.
%%
%% To delete a tag, specify the tag key and the CMK.
%%
%% When it succeeds, the `UntagResource' operation doesn't return any output.
%% Also, if the specified tag key isn't found on the CMK, it doesn't throw an
%% exception or return a response. To confirm that the operation worked, use
%% the `ListResourceTags' operation.
%%
%% For general information about tags, including the format and syntax, see
%% Tagging AWS resources in the Amazon Web Services General Reference. For
%% information about using tags in AWS KMS, see Tagging keys.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see How Key State Affects Use of a Customer Master Key in the
%% AWS Key Management Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a CMK in a
%% different AWS account.
%%
%% Required permissions: kms:UntagResource (key policy)
%%
%% Related operations
%%
%% <ul> <li> `TagResource'
%%
%% </li> <li> `ListResourceTags'
%%
%% </li> </ul>
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Associates an existing AWS KMS alias with a different customer master
%% key (CMK).
%%
%% Each alias is associated with only one CMK at a time, although a CMK can
%% have multiple aliases. The alias and the CMK must be in the same AWS
%% account and region.
%%
%% The current and new CMK must be the same type (both symmetric or both
%% asymmetric), and they must have the same key usage (`ENCRYPT_DECRYPT' or
%% `SIGN_VERIFY'). This restriction prevents errors in code that uses
%% aliases. If you must assign an alias to a different type of CMK, use
%% `DeleteAlias' to delete the old alias and `CreateAlias' to create a new
%% alias.
%%
%% You cannot use `UpdateAlias' to change an alias name. To change an alias
%% name, use `DeleteAlias' to delete the old alias and `CreateAlias' to
%% create a new alias.
%%
%% Because an alias is not a property of a CMK, you can create, update, and
%% delete the aliases of a CMK without affecting the CMK. Also, aliases do
%% not appear in the response from the `DescribeKey' operation. To get the
%% aliases of all CMKs in the account, use the `ListAliases' operation.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see How Key State Affects Use of a Customer Master Key in the
%% AWS Key Management Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a CMK in a
%% different AWS account.
%%
%% Required permissions
%%
%% <ul> <li> kms:UpdateAlias on the alias (IAM policy).
%%
%% </li> <li> kms:UpdateAlias on the current CMK (key policy).
%%
%% </li> <li> kms:UpdateAlias on the new CMK (key policy).
%%
%% </li> </ul> For details, see Controlling access to aliases in the AWS Key
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
%% Use the parameters of `UpdateCustomKeyStore' to edit your keystore
%% settings.
%%
%% <ul> <li> Use the NewCustomKeyStoreName parameter to change the friendly
%% name of the custom key store to the value that you specify.
%%
%% </li> <li> Use the KeyStorePassword parameter tell AWS KMS the current
%% password of the `kmsuser' crypto user (CU) in the associated AWS CloudHSM
%% cluster. You can use this parameter to fix connection failures that occur
%% when AWS KMS cannot log into the associated cluster because the `kmsuser'
%% password has changed. This value does not change the password in the AWS
%% CloudHSM cluster.
%%
%% </li> <li> Use the CloudHsmClusterId parameter to associate the custom key
%% store with a different, but related, AWS CloudHSM cluster. You can use
%% this parameter to repair a custom key store if its AWS CloudHSM cluster
%% becomes corrupted or is deleted, or when you need to create or restore a
%% cluster from a backup.
%%
%% </li> </ul> If the operation succeeds, it returns a JSON object with no
%% properties.
%%
%% This operation is part of the Custom Key Store feature feature in AWS KMS,
%% which combines the convenience and extensive integration of AWS KMS with
%% the isolation and control of a single-tenant key store.
%%
%% Cross-account use: No. You cannot perform this operation on a custom key
%% store in a different AWS account.
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

%% @doc Updates the description of a customer master key (CMK).
%%
%% To see the description of a CMK, use `DescribeKey'.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see How Key State Affects Use of a Customer Master Key in the
%% AWS Key Management Service Developer Guide.
%%
%% Cross-account use: No. You cannot perform this operation on a CMK in a
%% different AWS account.
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

%% @doc Verifies a digital signature that was generated by the `Sign'
%% operation.
%%
%% Verification confirms that an authorized user signed the message with the
%% specified CMK and signing algorithm, and the message hasn't changed since
%% it was signed. If the signature is verified, the value of the
%% `SignatureValid' field in the response is `True'. If the signature
%% verification fails, the `Verify' operation fails with an
%% `KMSInvalidSignatureException' exception.
%%
%% A digital signature is generated by using the private key in an asymmetric
%% CMK. The signature is verified by using the public key in the same
%% asymmetric CMK. For information about symmetric and asymmetric CMKs, see
%% Using Symmetric and Asymmetric CMKs in the AWS Key Management Service
%% Developer Guide.
%%
%% To verify a digital signature, you can use the `Verify' operation. Specify
%% the same asymmetric CMK, message, and signing algorithm that were used to
%% produce the signature.
%%
%% You can also verify the digital signature by using the public key of the
%% CMK outside of AWS KMS. Use the `GetPublicKey' operation to download the
%% public key in the asymmetric CMK and then use the public key to verify the
%% signature outside of AWS KMS. The advantage of using the `Verify'
%% operation is that it is performed within AWS KMS. As a result, it's easy
%% to call, the operation is performed within the FIPS boundary, it is logged
%% in AWS CloudTrail, and you can use key policy and IAM policy to determine
%% who is authorized to use the CMK to verify signatures.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see How Key State Affects Use of a Customer Master Key in the
%% AWS Key Management Service Developer Guide.
%%
%% Cross-account use: Yes. To perform this operation with a CMK in a
%% different AWS account, specify the key ARN or alias ARN in the value of
%% the `KeyId' parameter.
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

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input0, Options) ->
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
