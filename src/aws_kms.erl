%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <fullname>AWS Key Management Service</fullname>
%%
%% AWS Key Management Service (AWS KMS) is an encryption and key management
%% web service. This guide describes the AWS KMS operations that you can call
%% programmatically. For general information about AWS KMS, see the <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/"> <i>AWS Key
%% Management Service Developer Guide</i> </a>.
%%
%% <note> AWS provides SDKs that consist of libraries and sample code for
%% various programming languages and platforms (Java, Ruby, .Net, macOS,
%% Android, etc.). The SDKs provide a convenient way to create programmatic
%% access to AWS KMS and other AWS services. For example, the SDKs take care
%% of tasks such as signing requests (see below), managing errors, and
%% retrying requests automatically. For more information about the AWS SDKs,
%% including how to download and install them, see <a
%% href="http://aws.amazon.com/tools/">Tools for Amazon Web Services</a>.
%%
%% </note> We recommend that you use the AWS SDKs to make programmatic API
%% calls to AWS KMS.
%%
%% Clients must support TLS (Transport Layer Security) 1.0. We recommend TLS
%% 1.2. Clients must also support cipher suites with Perfect Forward Secrecy
%% (PFS) such as Ephemeral Diffie-Hellman (DHE) or Elliptic Curve Ephemeral
%% Diffie-Hellman (ECDHE). Most modern systems such as Java 7 and later
%% support these modes.
%%
%% <b>Signing Requests</b>
%%
%% Requests must be signed by using an access key ID and a secret access key.
%% We strongly recommend that you <i>do not</i> use your AWS account (root)
%% access key ID and secret key for everyday work with AWS KMS. Instead, use
%% the access key ID and secret access key for an IAM user. You can also use
%% the AWS Security Token Service to generate temporary security credentials
%% that you can use to sign requests.
%%
%% All AWS KMS operations require <a
%% href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature
%% Version 4</a>.
%%
%% <b>Logging API Requests</b>
%%
%% AWS KMS supports AWS CloudTrail, a service that logs AWS API calls and
%% related events for your AWS account and delivers them to an Amazon S3
%% bucket that you specify. By using the information collected by CloudTrail,
%% you can determine what requests were made to AWS KMS, who made the
%% request, when it was made, and so on. To learn more about CloudTrail,
%% including how to turn it on and find your log files, see the <a
%% href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/">AWS
%% CloudTrail User Guide</a>.
%%
%% <b>Additional Resources</b>
%%
%% For more information about credentials and request signing, see the
%% following:
%%
%% <ul> <li> <a
%% href="https://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html">AWS
%% Security Credentials</a> - This topic provides general information about
%% the types of credentials used for accessing AWS.
%%
%% </li> <li> <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html">Temporary
%% Security Credentials</a> - This section of the <i>IAM User Guide</i>
%% describes how to create and use temporary security credentials.
%%
%% </li> <li> <a
%% href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature
%% Version 4 Signing Process</a> - This set of topics walks you through the
%% process of signing a request using an access key ID and a secret access
%% key.
%%
%% </li> </ul> <b>Commonly Used API Operations</b>
%%
%% Of the API operations discussed in this guide, the following will prove
%% the most useful for most applications. You will likely perform operations
%% other than these, such as creating keys and assigning policies, by using
%% the console.
%%
%% <ul> <li> <a>Encrypt</a>
%%
%% </li> <li> <a>Decrypt</a>
%%
%% </li> <li> <a>GenerateDataKey</a>
%%
%% </li> <li> <a>GenerateDataKeyWithoutPlaintext</a>
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

%% @doc Cancels the deletion of a customer master key (CMK). When this
%% operation succeeds, the key state of the CMK is <code>Disabled</code>. To
%% enable the CMK, use <a>EnableKey</a>. You cannot perform this operation on
%% a CMK in a different AWS account.
%%
%% For more information about scheduling and canceling deletion of a CMK, see
%% <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html">Deleting
%% Customer Master Keys</a> in the <i>AWS Key Management Service Developer
%% Guide</i>.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How
%% Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key
%% Management Service Developer Guide</i>.
cancel_key_deletion(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_key_deletion(Client, Input, []).
cancel_key_deletion(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelKeyDeletion">>, Input, Options).

%% @doc Connects or reconnects a <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom
%% key store</a> to its associated AWS CloudHSM cluster.
%%
%% The custom key store must be connected before you can create customer
%% master keys (CMKs) in the key store or use the CMKs it contains. You can
%% disconnect and reconnect a custom key store at any time.
%%
%% To connect a custom key store, its associated AWS CloudHSM cluster must
%% have at least one active HSM. To get the number of active HSMs in a
%% cluster, use the <a
%% href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html">DescribeClusters</a>
%% operation. To add HSMs to the cluster, use the <a
%% href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_CreateHsm.html">CreateHsm</a>
%% operation. Also, the <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/key-store-concepts.html#concept-kmsuser">
%% <code>kmsuser</code> crypto user</a> (CU) must not be logged into the
%% cluster. This prevents AWS KMS from using this account to log in.
%%
%% The connection process can take an extended amount of time to complete; up
%% to 20 minutes. This operation starts the connection process, but it does
%% not wait for it to complete. When it succeeds, this operation quickly
%% returns an HTTP 200 response and a JSON object with no properties.
%% However, this response does not indicate that the custom key store is
%% connected. To get the connection state of the custom key store, use the
%% <a>DescribeCustomKeyStores</a> operation.
%%
%% During the connection process, AWS KMS finds the AWS CloudHSM cluster that
%% is associated with the custom key store, creates the connection
%% infrastructure, connects to the cluster, logs into the AWS CloudHSM client
%% as the <code>kmsuser</code> CU, and rotates its password.
%%
%% The <code>ConnectCustomKeyStore</code> operation might fail for various
%% reasons. To find the reason, use the <a>DescribeCustomKeyStores</a>
%% operation and see the <code>ConnectionErrorCode</code> in the response.
%% For help interpreting the <code>ConnectionErrorCode</code>, see
%% <a>CustomKeyStoresListEntry</a>.
%%
%% To fix the failure, use the <a>DisconnectCustomKeyStore</a> operation to
%% disconnect the custom key store, correct the error, use the
%% <a>UpdateCustomKeyStore</a> operation if necessary, and then use
%% <code>ConnectCustomKeyStore</code> again.
%%
%% If you are having trouble connecting or disconnecting a custom key store,
%% see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html">Troubleshooting
%% a Custom Key Store</a> in the <i>AWS Key Management Service Developer
%% Guide</i>.
connect_custom_key_store(Client, Input)
  when is_map(Client), is_map(Input) ->
    connect_custom_key_store(Client, Input, []).
connect_custom_key_store(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConnectCustomKeyStore">>, Input, Options).

%% @doc Creates a display name for a customer managed customer master key
%% (CMK). You can use an alias to identify a CMK in <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations">cryptographic
%% operations</a>, such as <a>Encrypt</a> and <a>GenerateDataKey</a>. You can
%% change the CMK associated with the alias at any time.
%%
%% Aliases are easier to remember than key IDs. They can also help to
%% simplify your applications. For example, if you use an alias in your code,
%% you can change the CMK your code uses by associating a given alias with a
%% different CMK.
%%
%% To run the same code in multiple AWS regions, use an alias in your code,
%% such as <code>alias/ApplicationKey</code>. Then, in each AWS Region,
%% create an <code>alias/ApplicationKey</code> alias that is associated with
%% a CMK in that Region. When you run your code, it uses the
%% <code>alias/ApplicationKey</code> CMK for that AWS Region without any
%% Region-specific code.
%%
%% This operation does not return a response. To get the alias that you
%% created, use the <a>ListAliases</a> operation.
%%
%% To use aliases successfully, be aware of the following information.
%%
%% <ul> <li> Each alias points to only one CMK at a time, although a single
%% CMK can have multiple aliases. The alias and its associated CMK must be in
%% the same AWS account and Region.
%%
%% </li> <li> You can associate an alias with any customer managed CMK in the
%% same AWS account and Region. However, you do not have permission to
%% associate an alias with an <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">AWS
%% managed CMK</a> or an <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk">AWS
%% owned CMK</a>.
%%
%% </li> <li> To change the CMK associated with an alias, use the
%% <a>UpdateAlias</a> operation. The current CMK and the new CMK must be the
%% same type (both symmetric or both asymmetric) and they must have the same
%% key usage (<code>ENCRYPT_DECRYPT</code> or <code>SIGN_VERIFY</code>). This
%% restriction prevents cryptographic errors in code that uses aliases.
%%
%% </li> <li> The alias name must begin with <code>alias/</code> followed by
%% a name, such as <code>alias/ExampleAlias</code>. It can contain only
%% alphanumeric characters, forward slashes (/), underscores (_), and dashes
%% (-). The alias name cannot begin with <code>alias/aws/</code>. The
%% <code>alias/aws/</code> prefix is reserved for <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">AWS
%% managed CMKs</a>.
%%
%% </li> <li> The alias name must be unique within an AWS Region. However,
%% you can use the same alias name in multiple Regions of the same AWS
%% account. Each instance of the alias is associated with a CMK in its
%% Region.
%%
%% </li> <li> After you create an alias, you cannot change its alias name.
%% However, you can use the <a>DeleteAlias</a> operation to delete the alias
%% and then create a new alias with the desired name.
%%
%% </li> <li> You can use an alias name or alias ARN to identify a CMK in AWS
%% KMS <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations">cryptographic
%% operations</a> and in the <a>DescribeKey</a> operation. However, you
%% cannot use alias names or alias ARNs in API operations that manage CMKs,
%% such as <a>DisableKey</a> or <a>GetKeyPolicy</a>. For information about
%% the valid CMK identifiers for each AWS KMS API operation, see the
%% descriptions of the <code>KeyId</code> parameter in the API operation
%% documentation.
%%
%% </li> </ul> Because an alias is not a property of a CMK, you can delete
%% and change the aliases of a CMK without affecting the CMK. Also, aliases
%% do not appear in the response from the <a>DescribeKey</a> operation. To
%% get the aliases and alias ARNs of CMKs in each AWS account and Region, use
%% the <a>ListAliases</a> operation.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How
%% Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key
%% Management Service Developer Guide</i>.
create_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_alias(Client, Input, []).
create_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAlias">>, Input, Options).

%% @doc Creates a <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom
%% key store</a> that is associated with an <a
%% href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/clusters.html">AWS
%% CloudHSM cluster</a> that you own and manage.
%%
%% This operation is part of the <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">Custom
%% Key Store feature</a> feature in AWS KMS, which combines the convenience
%% and extensive integration of AWS KMS with the isolation and control of a
%% single-tenant key store.
%%
%% Before you create the custom key store, you must assemble the required
%% elements, including an AWS CloudHSM cluster that fulfills the requirements
%% for a custom key store. For details about the required elements, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/create-keystore.html#before-keystore">Assemble
%% the Prerequisites</a> in the <i>AWS Key Management Service Developer
%% Guide</i>.
%%
%% When the operation completes successfully, it returns the ID of the new
%% custom key store. Before you can use your new custom key store, you need
%% to use the <a>ConnectCustomKeyStore</a> operation to connect the new key
%% store to its AWS CloudHSM cluster. Even if you are not going to use your
%% custom key store immediately, you might want to connect it to verify that
%% all settings are correct and then disconnect it until you are ready to use
%% it.
%%
%% For help with failures, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html">Troubleshooting
%% a Custom Key Store</a> in the <i>AWS Key Management Service Developer
%% Guide</i>.
create_custom_key_store(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_custom_key_store(Client, Input, []).
create_custom_key_store(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCustomKeyStore">>, Input, Options).

%% @doc Adds a grant to a customer master key (CMK). The grant allows the
%% grantee principal to use the CMK when the conditions specified in the
%% grant are met. When setting permissions, grants are an alternative to key
%% policies.
%%
%% To create a grant that allows a <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations">cryptographic
%% operation</a> only when the request includes a particular <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context">encryption
%% context</a>, use the <code>Constraints</code> parameter. For details, see
%% <a>GrantConstraints</a>.
%%
%% You can create grants on symmetric and asymmetric CMKs. However, if the
%% grant allows an operation that the CMK does not support,
%% <code>CreateGrant</code> fails with a <code>ValidationException</code>.
%%
%% <ul> <li> Grants for symmetric CMKs cannot allow operations that are not
%% supported for symmetric CMKs, including <a>Sign</a>, <a>Verify</a>, and
%% <a>GetPublicKey</a>. (There are limited exceptions to this rule for legacy
%% operations, but you should not create a grant for an operation that AWS
%% KMS does not support.)
%%
%% </li> <li> Grants for asymmetric CMKs cannot allow operations that are not
%% supported for asymmetric CMKs, including operations that <a
%% href="https://docs.aws.amazon.com/kms/latest/APIReference/API_GenerateDataKey">generate
%% data keys</a> or <a
%% href="https://docs.aws.amazon.com/kms/latest/APIReference/API_GenerateDataKeyPair">data
%% key pairs</a>, or operations related to <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html">automatic
%% key rotation</a>, <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">imported
%% key material</a>, or CMKs in <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom
%% key stores</a>.
%%
%% </li> <li> Grants for asymmetric CMKs with a <code>KeyUsage</code> of
%% <code>ENCRYPT_DECRYPT</code> cannot allow the <a>Sign</a> or <a>Verify</a>
%% operations. Grants for asymmetric CMKs with a <code>KeyUsage</code> of
%% <code>SIGN_VERIFY</code> cannot allow the <a>Encrypt</a> or <a>Decrypt</a>
%% operations.
%%
%% </li> <li> Grants for asymmetric CMKs cannot include an encryption context
%% grant constraint. An encryption context is not supported on asymmetric
%% CMKs.
%%
%% </li> </ul> For information about symmetric and asymmetric CMKs, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Using
%% Symmetric and Asymmetric CMKs</a> in the <i>AWS Key Management Service
%% Developer Guide</i>.
%%
%% To perform this operation on a CMK in a different AWS account, specify the
%% key ARN in the value of the <code>KeyId</code> parameter. For more
%% information about grants, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html">Grants</a>
%% in the <i> <i>AWS Key Management Service Developer Guide</i> </i>.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How
%% Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key
%% Management Service Developer Guide</i>.
create_grant(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_grant(Client, Input, []).
create_grant(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGrant">>, Input, Options).

%% @doc Creates a unique customer managed <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master-keys">customer
%% master key</a> (CMK) in your AWS account and Region. You cannot use this
%% operation to create a CMK in a different AWS account.
%%
%% You can use the <code>CreateKey</code> operation to create symmetric or
%% asymmetric CMKs.
%%
%% <ul> <li> <b>Symmetric CMKs</b> contain a 256-bit symmetric key that never
%% leaves AWS KMS unencrypted. To use the CMK, you must call AWS KMS. You can
%% use a symmetric CMK to encrypt and decrypt small amounts of data, but they
%% are typically used to generate <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#data-keys">data
%% keys</a> and <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#data-key-pairs">data
%% keys pairs</a>. For details, see <a>GenerateDataKey</a> and
%% <a>GenerateDataKeyPair</a>.
%%
%% </li> <li> <b>Asymmetric CMKs</b> can contain an RSA key pair or an
%% Elliptic Curve (ECC) key pair. The private key in an asymmetric CMK never
%% leaves AWS KMS unencrypted. However, you can use the <a>GetPublicKey</a>
%% operation to download the public key so it can be used outside of AWS KMS.
%% CMKs with RSA key pairs can be used to encrypt or decrypt data or sign and
%% verify messages (but not both). CMKs with ECC key pairs can be used only
%% to sign and verify messages.
%%
%% </li> </ul> For information about symmetric and asymmetric CMKs, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Using
%% Symmetric and Asymmetric CMKs</a> in the <i>AWS Key Management Service
%% Developer Guide</i>.
%%
%% To create different types of CMKs, use the following guidance:
%%
%% <dl> <dt>Asymmetric CMKs</dt> <dd> To create an asymmetric CMK, use the
%% <code>CustomerMasterKeySpec</code> parameter to specify the type of key
%% material in the CMK. Then, use the <code>KeyUsage</code> parameter to
%% determine whether the CMK will be used to encrypt and decrypt or sign and
%% verify. You can't change these properties after the CMK is created.
%%
%% </dd> <dt>Symmetric CMKs</dt> <dd> When creating a symmetric CMK, you
%% don't need to specify the <code>CustomerMasterKeySpec</code> or
%% <code>KeyUsage</code> parameters. The default value for
%% <code>CustomerMasterKeySpec</code>, <code>SYMMETRIC_DEFAULT</code>, and
%% the default value for <code>KeyUsage</code>, <code>ENCRYPT_DECRYPT</code>,
%% are the only valid values for symmetric CMKs.
%%
%% </dd> <dt>Imported Key Material</dt> <dd> To import your own key material,
%% begin by creating a symmetric CMK with no key material. To do this, use
%% the <code>Origin</code> parameter of <code>CreateKey</code> with a value
%% of <code>EXTERNAL</code>. Next, use <a>GetParametersForImport</a>
%% operation to get a public key and import token, and use the public key to
%% encrypt your key material. Then, use <a>ImportKeyMaterial</a> with your
%% import token to import the key material. For step-by-step instructions,
%% see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">Importing
%% Key Material</a> in the <i> <i>AWS Key Management Service Developer
%% Guide</i> </i>. You cannot import the key material into an asymmetric CMK.
%%
%% </dd> <dt>Custom Key Stores</dt> <dd> To create a symmetric CMK in a <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom
%% key store</a>, use the <code>CustomKeyStoreId</code> parameter to specify
%% the custom key store. You must also use the <code>Origin</code> parameter
%% with a value of <code>AWS_CLOUDHSM</code>. The AWS CloudHSM cluster that
%% is associated with the custom key store must have at least two active HSMs
%% in different Availability Zones in the AWS Region.
%%
%% You cannot create an asymmetric CMK in a custom key store. For information
%% about custom key stores in AWS KMS see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">Using
%% Custom Key Stores</a> in the <i> <i>AWS Key Management Service Developer
%% Guide</i> </i>.
%%
%% </dd> </dl>
create_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_key(Client, Input, []).
create_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateKey">>, Input, Options).

%% @doc Decrypts ciphertext that was encrypted by a AWS KMS customer master
%% key (CMK) using any of the following operations:
%%
%% <ul> <li> <a>Encrypt</a>
%%
%% </li> <li> <a>GenerateDataKey</a>
%%
%% </li> <li> <a>GenerateDataKeyPair</a>
%%
%% </li> <li> <a>GenerateDataKeyWithoutPlaintext</a>
%%
%% </li> <li> <a>GenerateDataKeyPairWithoutPlaintext</a>
%%
%% </li> </ul> You can use this operation to decrypt ciphertext that was
%% encrypted under a symmetric or asymmetric CMK. When the CMK is asymmetric,
%% you must specify the CMK and the encryption algorithm that was used to
%% encrypt the ciphertext. For information about symmetric and asymmetric
%% CMKs, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Using
%% Symmetric and Asymmetric CMKs</a> in the <i>AWS Key Management Service
%% Developer Guide</i>.
%%
%% The Decrypt operation also decrypts ciphertext that was encrypted outside
%% of AWS KMS by the public key in an AWS KMS asymmetric CMK. However, it
%% cannot decrypt ciphertext produced by other libraries, such as the <a
%% href="https://docs.aws.amazon.com/encryption-sdk/latest/developer-guide/">AWS
%% Encryption SDK</a> or <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html">Amazon
%% S3 client-side encryption</a>. These libraries return a ciphertext format
%% that is incompatible with AWS KMS.
%%
%% If the ciphertext was encrypted under a symmetric CMK, you do not need to
%% specify the CMK or the encryption algorithm. AWS KMS can get this
%% information from metadata that it adds to the symmetric ciphertext blob.
%% However, if you prefer, you can specify the <code>KeyId</code> to ensure
%% that a particular CMK is used to decrypt the ciphertext. If you specify a
%% different CMK than the one used to encrypt the ciphertext, the
%% <code>Decrypt</code> operation fails.
%%
%% Whenever possible, use key policies to give users permission to call the
%% Decrypt operation on a particular CMK, instead of using IAM policies.
%% Otherwise, you might create an IAM user policy that gives the user Decrypt
%% permission on all CMKs. This user could decrypt ciphertext that was
%% encrypted by CMKs in other accounts if the key policy for the
%% cross-account CMK permits it. If you must use an IAM policy for
%% <code>Decrypt</code> permissions, limit the user to particular CMKs or
%% particular trusted accounts.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How
%% Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key
%% Management Service Developer Guide</i>.
decrypt(Client, Input)
  when is_map(Client), is_map(Input) ->
    decrypt(Client, Input, []).
decrypt(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Decrypt">>, Input, Options).

%% @doc Deletes the specified alias. You cannot perform this operation on an
%% alias in a different AWS account.
%%
%% Because an alias is not a property of a CMK, you can delete and change the
%% aliases of a CMK without affecting the CMK. Also, aliases do not appear in
%% the response from the <a>DescribeKey</a> operation. To get the aliases of
%% all CMKs, use the <a>ListAliases</a> operation.
%%
%% Each CMK can have multiple aliases. To change the alias of a CMK, use
%% <a>DeleteAlias</a> to delete the current alias and <a>CreateAlias</a> to
%% create a new alias. To associate an existing alias with a different
%% customer master key (CMK), call <a>UpdateAlias</a>.
delete_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_alias(Client, Input, []).
delete_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAlias">>, Input, Options).

%% @doc Deletes a <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom
%% key store</a>. This operation does not delete the AWS CloudHSM cluster
%% that is associated with the custom key store, or affect any users or keys
%% in the cluster.
%%
%% The custom key store that you delete cannot contain any AWS KMS <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys">customer
%% master keys (CMKs)</a>. Before deleting the key store, verify that you
%% will never need to use any of the CMKs in the key store for any <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations">cryptographic
%% operations</a>. Then, use <a>ScheduleKeyDeletion</a> to delete the AWS KMS
%% customer master keys (CMKs) from the key store. When the scheduled waiting
%% period expires, the <code>ScheduleKeyDeletion</code> operation deletes the
%% CMKs. Then it makes a best effort to delete the key material from the
%% associated cluster. However, you might need to manually <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-orphaned-key">delete
%% the orphaned key material</a> from the cluster and its backups.
%%
%% After all CMKs are deleted from AWS KMS, use
%% <a>DisconnectCustomKeyStore</a> to disconnect the key store from AWS KMS.
%% Then, you can delete the custom key store.
%%
%% Instead of deleting the custom key store, consider using
%% <a>DisconnectCustomKeyStore</a> to disconnect it from AWS KMS. While the
%% key store is disconnected, you cannot create or use the CMKs in the key
%% store. But, you do not need to delete CMKs and you can reconnect a
%% disconnected custom key store at any time.
%%
%% If the operation succeeds, it returns a JSON object with no properties.
%%
%% This operation is part of the <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">Custom
%% Key Store feature</a> feature in AWS KMS, which combines the convenience
%% and extensive integration of AWS KMS with the isolation and control of a
%% single-tenant key store.
delete_custom_key_store(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_custom_key_store(Client, Input, []).
delete_custom_key_store(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCustomKeyStore">>, Input, Options).

%% @doc Deletes key material that you previously imported. This operation
%% makes the specified customer master key (CMK) unusable. For more
%% information about importing key material into AWS KMS, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">Importing
%% Key Material</a> in the <i>AWS Key Management Service Developer Guide</i>.
%% You cannot perform this operation on a CMK in a different AWS account.
%%
%% When the specified CMK is in the <code>PendingDeletion</code> state, this
%% operation does not change the CMK's state. Otherwise, it changes the CMK's
%% state to <code>PendingImport</code>.
%%
%% After you delete key material, you can use <a>ImportKeyMaterial</a> to
%% reimport the same key material into the CMK.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How
%% Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key
%% Management Service Developer Guide</i>.
delete_imported_key_material(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_imported_key_material(Client, Input, []).
delete_imported_key_material(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteImportedKeyMaterial">>, Input, Options).

%% @doc Gets information about <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom
%% key stores</a> in the account and region.
%%
%% This operation is part of the <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">Custom
%% Key Store feature</a> feature in AWS KMS, which combines the convenience
%% and extensive integration of AWS KMS with the isolation and control of a
%% single-tenant key store.
%%
%% By default, this operation returns information about all custom key stores
%% in the account and region. To get only information about a particular
%% custom key store, use either the <code>CustomKeyStoreName</code> or
%% <code>CustomKeyStoreId</code> parameter (but not both).
%%
%% To determine whether the custom key store is connected to its AWS CloudHSM
%% cluster, use the <code>ConnectionState</code> element in the response. If
%% an attempt to connect the custom key store failed, the
%% <code>ConnectionState</code> value is <code>FAILED</code> and the
%% <code>ConnectionErrorCode</code> element in the response indicates the
%% cause of the failure. For help interpreting the
%% <code>ConnectionErrorCode</code>, see <a>CustomKeyStoresListEntry</a>.
%%
%% Custom key stores have a <code>DISCONNECTED</code> connection state if the
%% key store has never been connected or you use the
%% <a>DisconnectCustomKeyStore</a> operation to disconnect it. If your custom
%% key store state is <code>CONNECTED</code> but you are having trouble using
%% it, make sure that its associated AWS CloudHSM cluster is active and
%% contains the minimum number of HSMs required for the operation, if any.
%%
%% For help repairing your custom key store, see the <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html">Troubleshooting
%% Custom Key Stores</a> topic in the <i>AWS Key Management Service Developer
%% Guide</i>.
describe_custom_key_stores(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_custom_key_stores(Client, Input, []).
describe_custom_key_stores(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCustomKeyStores">>, Input, Options).

%% @doc Provides detailed information about a customer master key (CMK). You
%% can run <code>DescribeKey</code> on a <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk">customer
%% managed CMK</a> or an <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">AWS
%% managed CMK</a>.
%%
%% This detailed information includes the key ARN, creation date (and
%% deletion date, if applicable), the key state, and the origin and
%% expiration date (if any) of the key material. For CMKs in custom key
%% stores, it includes information about the custom key store, such as the
%% key store ID and the AWS CloudHSM cluster ID. It includes fields, like
%% <code>KeySpec</code>, that help you distinguish symmetric from asymmetric
%% CMKs. It also provides information that is particularly important to
%% asymmetric CMKs, such as the key usage (encryption or signing) and the
%% encryption algorithms or signing algorithms that the CMK supports.
%%
%% <code>DescribeKey</code> does not return the following information:
%%
%% <ul> <li> Aliases associated with the CMK. To get this information, use
%% <a>ListAliases</a>.
%%
%% </li> <li> Whether automatic key rotation is enabled on the CMK. To get
%% this information, use <a>GetKeyRotationStatus</a>. Also, some key states
%% prevent a CMK from being automatically rotated. For details, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#rotate-keys-how-it-works">How
%% Automatic Key Rotation Works</a> in <i>AWS Key Management Service
%% Developer Guide</i>.
%%
%% </li> <li> Tags on the CMK. To get this information, use
%% <a>ListResourceTags</a>.
%%
%% </li> <li> Key policies and grants on the CMK. To get this information,
%% use <a>GetKeyPolicy</a> and <a>ListGrants</a>.
%%
%% </li> </ul> If you call the <code>DescribeKey</code> operation on a
%% <i>predefined AWS alias</i>, that is, an AWS alias with no key ID, AWS KMS
%% creates an <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys">AWS
%% managed CMK</a>. Then, it associates the alias with the new CMK, and
%% returns the <code>KeyId</code> and <code>Arn</code> of the new CMK in the
%% response.
%%
%% To perform this operation on a CMK in a different AWS account, specify the
%% key ARN or alias ARN in the value of the KeyId parameter.
describe_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_key(Client, Input, []).
describe_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeKey">>, Input, Options).

%% @doc Sets the state of a customer master key (CMK) to disabled, thereby
%% preventing its use for <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations">cryptographic
%% operations</a>. You cannot perform this operation on a CMK in a different
%% AWS account.
%%
%% For more information about how key state affects the use of a CMK, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How
%% Key State Affects the Use of a Customer Master Key</a> in the <i> <i>AWS
%% Key Management Service Developer Guide</i> </i>.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How
%% Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key
%% Management Service Developer Guide</i>.
disable_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_key(Client, Input, []).
disable_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableKey">>, Input, Options).

%% @doc Disables <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html">automatic
%% rotation of the key material</a> for the specified symmetric customer
%% master key (CMK).
%%
%% You cannot enable automatic rotation of asymmetric CMKs, CMKs with
%% imported key material, or CMKs in a <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom
%% key store</a>. You cannot perform this operation on a CMK in a different
%% AWS account.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How
%% Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key
%% Management Service Developer Guide</i>.
disable_key_rotation(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_key_rotation(Client, Input, []).
disable_key_rotation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableKeyRotation">>, Input, Options).

%% @doc Disconnects the <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom
%% key store</a> from its associated AWS CloudHSM cluster. While a custom key
%% store is disconnected, you can manage the custom key store and its
%% customer master keys (CMKs), but you cannot create or use CMKs in the
%% custom key store. You can reconnect the custom key store at any time.
%%
%% <note> While a custom key store is disconnected, all attempts to create
%% customer master keys (CMKs) in the custom key store or to use existing
%% CMKs in <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations">cryptographic
%% operations</a> will fail. This action can prevent users from storing and
%% accessing sensitive data.
%%
%% </note> <p/> To find the connection state of a custom key store, use the
%% <a>DescribeCustomKeyStores</a> operation. To reconnect a custom key store,
%% use the <a>ConnectCustomKeyStore</a> operation.
%%
%% If the operation succeeds, it returns a JSON object with no properties.
%%
%% This operation is part of the <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">Custom
%% Key Store feature</a> feature in AWS KMS, which combines the convenience
%% and extensive integration of AWS KMS with the isolation and control of a
%% single-tenant key store.
disconnect_custom_key_store(Client, Input)
  when is_map(Client), is_map(Input) ->
    disconnect_custom_key_store(Client, Input, []).
disconnect_custom_key_store(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisconnectCustomKeyStore">>, Input, Options).

%% @doc Sets the key state of a customer master key (CMK) to enabled. This
%% allows you to use the CMK for <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations">cryptographic
%% operations</a>. You cannot perform this operation on a CMK in a different
%% AWS account.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How
%% Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key
%% Management Service Developer Guide</i>.
enable_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_key(Client, Input, []).
enable_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableKey">>, Input, Options).

%% @doc Enables <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html">automatic
%% rotation of the key material</a> for the specified symmetric customer
%% master key (CMK). You cannot perform this operation on a CMK in a
%% different AWS account.
%%
%% You cannot enable automatic rotation of asymmetric CMKs, CMKs with
%% imported key material, or CMKs in a <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom
%% key store</a>.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How
%% Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key
%% Management Service Developer Guide</i>.
enable_key_rotation(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_key_rotation(Client, Input, []).
enable_key_rotation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableKeyRotation">>, Input, Options).

%% @doc Encrypts plaintext into ciphertext by using a customer master key
%% (CMK). The <code>Encrypt</code> operation has two primary use cases:
%%
%% <ul> <li> You can encrypt small amounts of arbitrary data, such as a
%% personal identifier or database password, or other sensitive information.
%%
%% </li> <li> You can use the <code>Encrypt</code> operation to move
%% encrypted data from one AWS Region to another. For example, in Region A,
%% generate a data key and use the plaintext key to encrypt your data. Then,
%% in Region A, use the <code>Encrypt</code> operation to encrypt the
%% plaintext data key under a CMK in Region B. Now, you can move the
%% encrypted data and the encrypted data key to Region B. When necessary, you
%% can decrypt the encrypted data key and the encrypted data entirely within
%% in Region B.
%%
%% </li> </ul> You don't need to use the <code>Encrypt</code> operation to
%% encrypt a data key. The <a>GenerateDataKey</a> and
%% <a>GenerateDataKeyPair</a> operations return a plaintext data key and an
%% encrypted copy of that data key.
%%
%% When you encrypt data, you must specify a symmetric or asymmetric CMK to
%% use in the encryption operation. The CMK must have a <code>KeyUsage</code>
%% value of <code>ENCRYPT_DECRYPT.</code> To find the <code>KeyUsage</code>
%% of a CMK, use the <a>DescribeKey</a> operation.
%%
%% If you use a symmetric CMK, you can use an encryption context to add
%% additional security to your encryption operation. If you specify an
%% <code>EncryptionContext</code> when encrypting data, you must specify the
%% same encryption context (a case-sensitive exact match) when decrypting the
%% data. Otherwise, the request to decrypt fails with an
%% <code>InvalidCiphertextException</code>. For more information, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context">Encryption
%% Context</a> in the <i>AWS Key Management Service Developer Guide</i>.
%%
%% If you specify an asymmetric CMK, you must also specify the encryption
%% algorithm. The algorithm must be compatible with the CMK type.
%%
%% <important> When you use an asymmetric CMK to encrypt or reencrypt data,
%% be sure to record the CMK and encryption algorithm that you choose. You
%% will be required to provide the same CMK and encryption algorithm when you
%% decrypt the data. If the CMK and algorithm do not match the values used to
%% encrypt the data, the decrypt operation fails.
%%
%% You are not required to supply the CMK ID and encryption algorithm when
%% you decrypt with symmetric CMKs because AWS KMS stores this information in
%% the ciphertext blob. AWS KMS cannot store metadata in ciphertext generated
%% with asymmetric keys. The standard format for asymmetric key ciphertext
%% does not include configurable fields.
%%
%% </important> The maximum size of the data that you can encrypt varies with
%% the type of CMK and the encryption algorithm that you choose.
%%
%% <ul> <li> Symmetric CMKs
%%
%% <ul> <li> <code>SYMMETRIC_DEFAULT</code>: 4096 bytes
%%
%% </li> </ul> </li> <li> <code>RSA_2048</code>
%%
%% <ul> <li> <code>RSAES_OAEP_SHA_1</code>: 214 bytes
%%
%% </li> <li> <code>RSAES_OAEP_SHA_256</code>: 190 bytes
%%
%% </li> </ul> </li> <li> <code>RSA_3072</code>
%%
%% <ul> <li> <code>RSAES_OAEP_SHA_1</code>: 342 bytes
%%
%% </li> <li> <code>RSAES_OAEP_SHA_256</code>: 318 bytes
%%
%% </li> </ul> </li> <li> <code>RSA_4096</code>
%%
%% <ul> <li> <code>RSAES_OAEP_SHA_1</code>: 470 bytes
%%
%% </li> <li> <code>RSAES_OAEP_SHA_256</code>: 446 bytes
%%
%% </li> </ul> </li> </ul> The CMK that you use for this operation must be in
%% a compatible key state. For details, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How
%% Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key
%% Management Service Developer Guide</i>.
%%
%% To perform this operation on a CMK in a different AWS account, specify the
%% key ARN or alias ARN in the value of the KeyId parameter.
encrypt(Client, Input)
  when is_map(Client), is_map(Input) ->
    encrypt(Client, Input, []).
encrypt(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Encrypt">>, Input, Options).

%% @doc Generates a unique symmetric data key for client-side encryption.
%% This operation returns a plaintext copy of the data key and a copy that is
%% encrypted under a customer master key (CMK) that you specify. You can use
%% the plaintext key to encrypt your data outside of AWS KMS and store the
%% encrypted data key with the encrypted data.
%%
%% <code>GenerateDataKey</code> returns a unique data key for each request.
%% The bytes in the plaintext key are not related to the caller or the CMK.
%%
%% To generate a data key, specify the symmetric CMK that will be used to
%% encrypt the data key. You cannot use an asymmetric CMK to generate data
%% keys. To get the type of your CMK, use the <a>DescribeKey</a> operation.
%% You must also specify the length of the data key. Use either the
%% <code>KeySpec</code> or <code>NumberOfBytes</code> parameters (but not
%% both). For 128-bit and 256-bit data keys, use the <code>KeySpec</code>
%% parameter.
%%
%% To get only an encrypted copy of the data key, use
%% <a>GenerateDataKeyWithoutPlaintext</a>. To generate an asymmetric data key
%% pair, use the <a>GenerateDataKeyPair</a> or
%% <a>GenerateDataKeyPairWithoutPlaintext</a> operation. To get a
%% cryptographically secure random byte string, use <a>GenerateRandom</a>.
%%
%% You can use the optional encryption context to add additional security to
%% the encryption operation. If you specify an
%% <code>EncryptionContext</code>, you must specify the same encryption
%% context (a case-sensitive exact match) when decrypting the encrypted data
%% key. Otherwise, the request to decrypt fails with an
%% <code>InvalidCiphertextException</code>. For more information, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context">Encryption
%% Context</a> in the <i>AWS Key Management Service Developer Guide</i>.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How
%% Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key
%% Management Service Developer Guide</i>.
%%
%% <b>How to use your data key</b>
%%
%% We recommend that you use the following pattern to encrypt data locally in
%% your application. You can write your own code or use a client-side
%% encryption library, such as the <a
%% href="https://docs.aws.amazon.com/encryption-sdk/latest/developer-guide/">AWS
%% Encryption SDK</a>, the <a
%% href="https://docs.aws.amazon.com/dynamodb-encryption-client/latest/devguide/">Amazon
%% DynamoDB Encryption Client</a>, or <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html">Amazon
%% S3 client-side encryption</a> to do these tasks for you.
%%
%% To encrypt data outside of AWS KMS:
%%
%% <ol> <li> Use the <code>GenerateDataKey</code> operation to get a data
%% key.
%%
%% </li> <li> Use the plaintext data key (in the <code>Plaintext</code> field
%% of the response) to encrypt your data outside of AWS KMS. Then erase the
%% plaintext data key from memory.
%%
%% </li> <li> Store the encrypted data key (in the
%% <code>CiphertextBlob</code> field of the response) with the encrypted
%% data.
%%
%% </li> </ol> To decrypt data outside of AWS KMS:
%%
%% <ol> <li> Use the <a>Decrypt</a> operation to decrypt the encrypted data
%% key. The operation returns a plaintext copy of the data key.
%%
%% </li> <li> Use the plaintext data key to decrypt data outside of AWS KMS,
%% then erase the plaintext data key from memory.
%%
%% </li> </ol>
generate_data_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    generate_data_key(Client, Input, []).
generate_data_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GenerateDataKey">>, Input, Options).

%% @doc Generates a unique asymmetric data key pair. The
%% <code>GenerateDataKeyPair</code> operation returns a plaintext public key,
%% a plaintext private key, and a copy of the private key that is encrypted
%% under the symmetric CMK you specify. You can use the data key pair to
%% perform asymmetric cryptography outside of AWS KMS.
%%
%% <code>GenerateDataKeyPair</code> returns a unique data key pair for each
%% request. The bytes in the keys are not related to the caller or the CMK
%% that is used to encrypt the private key.
%%
%% You can use the public key that <code>GenerateDataKeyPair</code> returns
%% to encrypt data or verify a signature outside of AWS KMS. Then, store the
%% encrypted private key with the data. When you are ready to decrypt data or
%% sign a message, you can use the <a>Decrypt</a> operation to decrypt the
%% encrypted private key.
%%
%% To generate a data key pair, you must specify a symmetric customer master
%% key (CMK) to encrypt the private key in a data key pair. You cannot use an
%% asymmetric CMK or a CMK in a custom key store. To get the type and origin
%% of your CMK, use the <a>DescribeKey</a> operation.
%%
%% If you are using the data key pair to encrypt data, or for any operation
%% where you don't immediately need a private key, consider using the
%% <a>GenerateDataKeyPairWithoutPlaintext</a> operation.
%% <code>GenerateDataKeyPairWithoutPlaintext</code> returns a plaintext
%% public key and an encrypted private key, but omits the plaintext private
%% key that you need only to decrypt ciphertext or sign a message. Later,
%% when you need to decrypt the data or sign a message, use the
%% <a>Decrypt</a> operation to decrypt the encrypted private key in the data
%% key pair.
%%
%% You can use the optional encryption context to add additional security to
%% the encryption operation. If you specify an
%% <code>EncryptionContext</code>, you must specify the same encryption
%% context (a case-sensitive exact match) when decrypting the encrypted data
%% key. Otherwise, the request to decrypt fails with an
%% <code>InvalidCiphertextException</code>. For more information, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context">Encryption
%% Context</a> in the <i>AWS Key Management Service Developer Guide</i>.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How
%% Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key
%% Management Service Developer Guide</i>.
generate_data_key_pair(Client, Input)
  when is_map(Client), is_map(Input) ->
    generate_data_key_pair(Client, Input, []).
generate_data_key_pair(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GenerateDataKeyPair">>, Input, Options).

%% @doc Generates a unique asymmetric data key pair. The
%% <code>GenerateDataKeyPairWithoutPlaintext</code> operation returns a
%% plaintext public key and a copy of the private key that is encrypted under
%% the symmetric CMK you specify. Unlike <a>GenerateDataKeyPair</a>, this
%% operation does not return a plaintext private key.
%%
%% To generate a data key pair, you must specify a symmetric customer master
%% key (CMK) to encrypt the private key in the data key pair. You cannot use
%% an asymmetric CMK or a CMK in a custom key store. To get the type and
%% origin of your CMK, use the <code>KeySpec</code> field in the
%% <a>DescribeKey</a> response.
%%
%% You can use the public key that
%% <code>GenerateDataKeyPairWithoutPlaintext</code> returns to encrypt data
%% or verify a signature outside of AWS KMS. Then, store the encrypted
%% private key with the data. When you are ready to decrypt data or sign a
%% message, you can use the <a>Decrypt</a> operation to decrypt the encrypted
%% private key.
%%
%% <code>GenerateDataKeyPairWithoutPlaintext</code> returns a unique data key
%% pair for each request. The bytes in the key are not related to the caller
%% or CMK that is used to encrypt the private key.
%%
%% You can use the optional encryption context to add additional security to
%% the encryption operation. If you specify an
%% <code>EncryptionContext</code>, you must specify the same encryption
%% context (a case-sensitive exact match) when decrypting the encrypted data
%% key. Otherwise, the request to decrypt fails with an
%% <code>InvalidCiphertextException</code>. For more information, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context">Encryption
%% Context</a> in the <i>AWS Key Management Service Developer Guide</i>.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How
%% Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key
%% Management Service Developer Guide</i>.
generate_data_key_pair_without_plaintext(Client, Input)
  when is_map(Client), is_map(Input) ->
    generate_data_key_pair_without_plaintext(Client, Input, []).
generate_data_key_pair_without_plaintext(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GenerateDataKeyPairWithoutPlaintext">>, Input, Options).

%% @doc Generates a unique symmetric data key. This operation returns a data
%% key that is encrypted under a customer master key (CMK) that you specify.
%% To request an asymmetric data key pair, use the <a>GenerateDataKeyPair</a>
%% or <a>GenerateDataKeyPairWithoutPlaintext</a> operations.
%%
%% <code>GenerateDataKeyWithoutPlaintext</code> is identical to the
%% <a>GenerateDataKey</a> operation except that returns only the encrypted
%% copy of the data key. This operation is useful for systems that need to
%% encrypt data at some point, but not immediately. When you need to encrypt
%% the data, you call the <a>Decrypt</a> operation on the encrypted copy of
%% the key.
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
%% <code>GenerateDataKeyWithoutPlaintext</code> returns a unique data key for
%% each request. The bytes in the keys are not related to the caller or CMK
%% that is used to encrypt the private key.
%%
%% To generate a data key, you must specify the symmetric customer master key
%% (CMK) that is used to encrypt the data key. You cannot use an asymmetric
%% CMK to generate a data key. To get the type of your CMK, use the
%% <a>DescribeKey</a> operation.
%%
%% If the operation succeeds, you will find the encrypted copy of the data
%% key in the <code>CiphertextBlob</code> field.
%%
%% You can use the optional encryption context to add additional security to
%% the encryption operation. If you specify an
%% <code>EncryptionContext</code>, you must specify the same encryption
%% context (a case-sensitive exact match) when decrypting the encrypted data
%% key. Otherwise, the request to decrypt fails with an
%% <code>InvalidCiphertextException</code>. For more information, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context">Encryption
%% Context</a> in the <i>AWS Key Management Service Developer Guide</i>.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How
%% Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key
%% Management Service Developer Guide</i>.
generate_data_key_without_plaintext(Client, Input)
  when is_map(Client), is_map(Input) ->
    generate_data_key_without_plaintext(Client, Input, []).
generate_data_key_without_plaintext(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GenerateDataKeyWithoutPlaintext">>, Input, Options).

%% @doc Returns a random byte string that is cryptographically secure.
%%
%% By default, the random byte string is generated in AWS KMS. To generate
%% the byte string in the AWS CloudHSM cluster that is associated with a <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom
%% key store</a>, specify the custom key store ID.
%%
%% For more information about entropy and random number generation, see the
%% <a
%% href="https://d0.awsstatic.com/whitepapers/KMS-Cryptographic-Details.pdf">AWS
%% Key Management Service Cryptographic Details</a> whitepaper.
generate_random(Client, Input)
  when is_map(Client), is_map(Input) ->
    generate_random(Client, Input, []).
generate_random(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GenerateRandom">>, Input, Options).

%% @doc Gets a key policy attached to the specified customer master key
%% (CMK). You cannot perform this operation on a CMK in a different AWS
%% account.
get_key_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_key_policy(Client, Input, []).
get_key_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetKeyPolicy">>, Input, Options).

%% @doc Gets a Boolean value that indicates whether <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html">automatic
%% rotation of the key material</a> is enabled for the specified customer
%% master key (CMK).
%%
%% You cannot enable automatic rotation of asymmetric CMKs, CMKs with
%% imported key material, or CMKs in a <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom
%% key store</a>. The key rotation status for these CMKs is always
%% <code>false</code>.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How
%% Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key
%% Management Service Developer Guide</i>.
%%
%% <ul> <li> Disabled: The key rotation status does not change when you
%% disable a CMK. However, while the CMK is disabled, AWS KMS does not rotate
%% the backing key.
%%
%% </li> <li> Pending deletion: While a CMK is pending deletion, its key
%% rotation status is <code>false</code> and AWS KMS does not rotate the
%% backing key. If you cancel the deletion, the original key rotation status
%% is restored.
%%
%% </li> </ul> To perform this operation on a CMK in a different AWS account,
%% specify the key ARN in the value of the <code>KeyId</code> parameter.
get_key_rotation_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_key_rotation_status(Client, Input, []).
get_key_rotation_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetKeyRotationStatus">>, Input, Options).

%% @doc Returns the items you need to import key material into a symmetric,
%% customer managed customer master key (CMK). For more information about
%% importing key material into AWS KMS, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">Importing
%% Key Material</a> in the <i>AWS Key Management Service Developer Guide</i>.
%%
%% This operation returns a public key and an import token. Use the public
%% key to encrypt the symmetric key material. Store the import token to send
%% with a subsequent <a>ImportKeyMaterial</a> request.
%%
%% You must specify the key ID of the symmetric CMK into which you will
%% import key material. This CMK's <code>Origin</code> must be
%% <code>EXTERNAL</code>. You must also specify the wrapping algorithm and
%% type of wrapping key (public key) that you will use to encrypt the key
%% material. You cannot perform this operation on an asymmetric CMK or on any
%% CMK in a different AWS account.
%%
%% To import key material, you must use the public key and import token from
%% the same response. These items are valid for 24 hours. The expiration date
%% and time appear in the <code>GetParametersForImport</code> response. You
%% cannot use an expired token in an <a>ImportKeyMaterial</a> request. If
%% your key and token expire, send another
%% <code>GetParametersForImport</code> request.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How
%% Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key
%% Management Service Developer Guide</i>.
get_parameters_for_import(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_parameters_for_import(Client, Input, []).
get_parameters_for_import(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetParametersForImport">>, Input, Options).

%% @doc Returns the public key of an asymmetric CMK. Unlike the private key
%% of a asymmetric CMK, which never leaves AWS KMS unencrypted, callers with
%% <code>kms:GetPublicKey</code> permission can download the public key of an
%% asymmetric CMK. You can share the public key to allow others to encrypt
%% messages and verify signatures outside of AWS KMS. For information about
%% symmetric and asymmetric CMKs, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Using
%% Symmetric and Asymmetric CMKs</a> in the <i>AWS Key Management Service
%% Developer Guide</i>.
%%
%% You do not need to download the public key. Instead, you can use the
%% public key within AWS KMS by calling the <a>Encrypt</a>, <a>ReEncrypt</a>,
%% or <a>Verify</a> operations with the identifier of an asymmetric CMK. When
%% you use the public key within AWS KMS, you benefit from the
%% authentication, authorization, and logging that are part of every AWS KMS
%% operation. You also reduce of risk of encrypting data that cannot be
%% decrypted. These features are not effective outside of AWS KMS. For
%% details, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/download-public-key.html#download-public-key-considerations">Special
%% Considerations for Downloading Public Keys</a>.
%%
%% To help you use the public key safely outside of AWS KMS,
%% <code>GetPublicKey</code> returns important information about the public
%% key in the response, including:
%%
%% <ul> <li> <a
%% href="https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-CustomerMasterKeySpec">CustomerMasterKeySpec</a>:
%% The type of key material in the public key, such as <code>RSA_4096</code>
%% or <code>ECC_NIST_P521</code>.
%%
%% </li> <li> <a
%% href="https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-KeyUsage">KeyUsage</a>:
%% Whether the key is used for encryption or signing.
%%
%% </li> <li> <a
%% href="https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-EncryptionAlgorithms">EncryptionAlgorithms</a>
%% or <a
%% href="https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-SigningAlgorithms">SigningAlgorithms</a>:
%% A list of the encryption algorithms or the signing algorithms for the key.
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
%% For details, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How
%% Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key
%% Management Service Developer Guide</i>.
get_public_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_public_key(Client, Input, []).
get_public_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPublicKey">>, Input, Options).

%% @doc Imports key material into an existing symmetric AWS KMS customer
%% master key (CMK) that was created without key material. After you
%% successfully import key material into a CMK, you can <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html#reimport-key-material">reimport
%% the same key material</a> into that CMK, but you cannot import different
%% key material.
%%
%% You cannot perform this operation on an asymmetric CMK or on any CMK in a
%% different AWS account. For more information about creating CMKs with no
%% key material and then importing key material, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">Importing
%% Key Material</a> in the <i>AWS Key Management Service Developer Guide</i>.
%%
%% Before using this operation, call <a>GetParametersForImport</a>. Its
%% response includes a public key and an import token. Use the public key to
%% encrypt the key material. Then, submit the import token from the same
%% <code>GetParametersForImport</code> response.
%%
%% When calling this operation, you must specify the following values:
%%
%% <ul> <li> The key ID or key ARN of a CMK with no key material. Its
%% <code>Origin</code> must be <code>EXTERNAL</code>.
%%
%% To create a CMK with no key material, call <a>CreateKey</a> and set the
%% value of its <code>Origin</code> parameter to <code>EXTERNAL</code>. To
%% get the <code>Origin</code> of a CMK, call <a>DescribeKey</a>.)
%%
%% </li> <li> The encrypted key material. To get the public key to encrypt
%% the key material, call <a>GetParametersForImport</a>.
%%
%% </li> <li> The import token that <a>GetParametersForImport</a> returned.
%% You must use a public key and token from the same
%% <code>GetParametersForImport</code> response.
%%
%% </li> <li> Whether the key material expires and if so, when. If you set an
%% expiration date, AWS KMS deletes the key material from the CMK on the
%% specified date, and the CMK becomes unusable. To use the CMK again, you
%% must reimport the same key material. The only way to change an expiration
%% date is by reimporting the same key material and specifying a new
%% expiration date.
%%
%% </li> </ul> When this operation is successful, the key state of the CMK
%% changes from <code>PendingImport</code> to <code>Enabled</code>, and you
%% can use the CMK.
%%
%% If this operation fails, use the exception to help determine the problem.
%% If the error is related to the key material, the import token, or wrapping
%% key, use <a>GetParametersForImport</a> to get a new public key and import
%% token for the CMK and repeat the import procedure. For help, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html#importing-keys-overview">How
%% To Import Key Material</a> in the <i>AWS Key Management Service Developer
%% Guide</i>.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How
%% Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key
%% Management Service Developer Guide</i>.
import_key_material(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_key_material(Client, Input, []).
import_key_material(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportKeyMaterial">>, Input, Options).

%% @doc Gets a list of aliases in the caller's AWS account and region. You
%% cannot list aliases in other accounts. For more information about aliases,
%% see <a>CreateAlias</a>.
%%
%% By default, the ListAliases command returns all aliases in the account and
%% region. To get only the aliases that point to a particular customer master
%% key (CMK), use the <code>KeyId</code> parameter.
%%
%% The <code>ListAliases</code> response can include aliases that you created
%% and associated with your customer managed CMKs, and aliases that AWS
%% created and associated with AWS managed CMKs in your account. You can
%% recognize AWS aliases because their names have the format
%% <code>aws/&lt;service-name&gt;</code>, such as <code>aws/dynamodb</code>.
%%
%% The response might also include aliases that have no
%% <code>TargetKeyId</code> field. These are predefined aliases that AWS has
%% created but has not yet associated with a CMK. Aliases that AWS creates in
%% your account, including predefined aliases, do not count against your <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/limits.html#aliases-limit">AWS
%% KMS aliases quota</a>.
list_aliases(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_aliases(Client, Input, []).
list_aliases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAliases">>, Input, Options).

%% @doc Gets a list of all grants for the specified customer master key
%% (CMK).
%%
%% To perform this operation on a CMK in a different AWS account, specify the
%% key ARN in the value of the <code>KeyId</code> parameter.
%%
%% <note> The <code>GranteePrincipal</code> field in the
%% <code>ListGrants</code> response usually contains the user or role
%% designated as the grantee principal in the grant. However, when the
%% grantee principal in the grant is an AWS service, the
%% <code>GranteePrincipal</code> field contains the <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#principal-services">service
%% principal</a>, which might represent several different grantee principals.
%%
%% </note>
list_grants(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_grants(Client, Input, []).
list_grants(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGrants">>, Input, Options).

%% @doc Gets the names of the key policies that are attached to a customer
%% master key (CMK). This operation is designed to get policy names that you
%% can use in a <a>GetKeyPolicy</a> operation. However, the only valid policy
%% name is <code>default</code>. You cannot perform this operation on a CMK
%% in a different AWS account.
list_key_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_key_policies(Client, Input, []).
list_key_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListKeyPolicies">>, Input, Options).

%% @doc Gets a list of all customer master keys (CMKs) in the caller's AWS
%% account and Region.
list_keys(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_keys(Client, Input, []).
list_keys(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListKeys">>, Input, Options).

%% @doc Returns a list of all tags for the specified customer master key
%% (CMK).
%%
%% You cannot perform this operation on a CMK in a different AWS account.
list_resource_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resource_tags(Client, Input, []).
list_resource_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourceTags">>, Input, Options).

%% @doc Returns a list of all grants for which the grant's
%% <code>RetiringPrincipal</code> matches the one specified.
%%
%% A typical use is to list all grants that you are able to retire. To retire
%% a grant, use <a>RetireGrant</a>.
list_retirable_grants(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_retirable_grants(Client, Input, []).
list_retirable_grants(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRetirableGrants">>, Input, Options).

%% @doc Attaches a key policy to the specified customer master key (CMK). You
%% cannot perform this operation on a CMK in a different AWS account.
%%
%% For more information about key policies, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html">Key
%% Policies</a> in the <i>AWS Key Management Service Developer Guide</i>.
put_key_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_key_policy(Client, Input, []).
put_key_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutKeyPolicy">>, Input, Options).

%% @doc Decrypts ciphertext and then reencrypts it entirely within AWS KMS.
%% You can use this operation to change the customer master key (CMK) under
%% which data is encrypted, such as when you <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#rotate-keys-manually">manually
%% rotate</a> a CMK or change the CMK that protects a ciphertext. You can
%% also use it to reencrypt ciphertext under the same CMK, such as to change
%% the <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context">encryption
%% context</a> of a ciphertext.
%%
%% The <code>ReEncrypt</code> operation can decrypt ciphertext that was
%% encrypted by using an AWS KMS CMK in an AWS KMS operation, such as
%% <a>Encrypt</a> or <a>GenerateDataKey</a>. It can also decrypt ciphertext
%% that was encrypted by using the public key of an <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-concepts.html#asymmetric-cmks">asymmetric
%% CMK</a> outside of AWS KMS. However, it cannot decrypt ciphertext produced
%% by other libraries, such as the <a
%% href="https://docs.aws.amazon.com/encryption-sdk/latest/developer-guide/">AWS
%% Encryption SDK</a> or <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html">Amazon
%% S3 client-side encryption</a>. These libraries return a ciphertext format
%% that is incompatible with AWS KMS.
%%
%% When you use the <code>ReEncrypt</code> operation, you need to provide
%% information for the decrypt operation and the subsequent encrypt
%% operation.
%%
%% <ul> <li> If your ciphertext was encrypted under an asymmetric CMK, you
%% must identify the <i>source CMK</i>, that is, the CMK that encrypted the
%% ciphertext. You must also supply the encryption algorithm that was used.
%% This information is required to decrypt the data.
%%
%% </li> <li> It is optional, but you can specify a source CMK even when the
%% ciphertext was encrypted under a symmetric CMK. This ensures that the
%% ciphertext is decrypted only by using a particular CMK. If the CMK that
%% you specify cannot decrypt the ciphertext, the <code>ReEncrypt</code>
%% operation fails.
%%
%% </li> <li> To reencrypt the data, you must specify the <i>destination
%% CMK</i>, that is, the CMK that re-encrypts the data after it is decrypted.
%% You can select a symmetric or asymmetric CMK. If the destination CMK is an
%% asymmetric CMK, you must also provide the encryption algorithm. The
%% algorithm that you choose must be compatible with the CMK.
%%
%% <important> When you use an asymmetric CMK to encrypt or reencrypt data,
%% be sure to record the CMK and encryption algorithm that you choose. You
%% will be required to provide the same CMK and encryption algorithm when you
%% decrypt the data. If the CMK and algorithm do not match the values used to
%% encrypt the data, the decrypt operation fails.
%%
%% You are not required to supply the CMK ID and encryption algorithm when
%% you decrypt with symmetric CMKs because AWS KMS stores this information in
%% the ciphertext blob. AWS KMS cannot store metadata in ciphertext generated
%% with asymmetric keys. The standard format for asymmetric key ciphertext
%% does not include configurable fields.
%%
%% </important> </li> </ul> Unlike other AWS KMS API operations,
%% <code>ReEncrypt</code> callers must have two permissions:
%%
%% <ul> <li> <code>kms:ReEncryptFrom</code> permission on the source CMK
%%
%% </li> <li> <code>kms:ReEncryptTo</code> permission on the destination CMK
%%
%% </li> </ul> To permit reencryption from or to a CMK, include the
%% <code>"kms:ReEncrypt*"</code> permission in your <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html">key
%% policy</a>. This permission is automatically included in the key policy
%% when you use the console to create a CMK. But you must include it manually
%% when you create a CMK programmatically or when you use the
%% <a>PutKeyPolicy</a> operation to set a key policy.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How
%% Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key
%% Management Service Developer Guide</i>.
re_encrypt(Client, Input)
  when is_map(Client), is_map(Input) ->
    re_encrypt(Client, Input, []).
re_encrypt(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReEncrypt">>, Input, Options).

%% @doc Retires a grant. To clean up, you can retire a grant when you're done
%% using it. You should revoke a grant when you intend to actively deny
%% operations that depend on it. The following are permitted to call this
%% API:
%%
%% <ul> <li> The AWS account (root user) under which the grant was created
%%
%% </li> <li> The <code>RetiringPrincipal</code>, if present in the grant
%%
%% </li> <li> The <code>GranteePrincipal</code>, if <code>RetireGrant</code>
%% is an operation specified in the grant
%%
%% </li> </ul> You must identify the grant to retire by its grant token or by
%% a combination of the grant ID and the Amazon Resource Name (ARN) of the
%% customer master key (CMK). A grant token is a unique variable-length
%% base64-encoded string. A grant ID is a 64 character unique identifier of a
%% grant. The <a>CreateGrant</a> operation returns both.
retire_grant(Client, Input)
  when is_map(Client), is_map(Input) ->
    retire_grant(Client, Input, []).
retire_grant(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RetireGrant">>, Input, Options).

%% @doc Revokes the specified grant for the specified customer master key
%% (CMK). You can revoke a grant to actively deny operations that depend on
%% it.
%%
%% To perform this operation on a CMK in a different AWS account, specify the
%% key ARN in the value of the <code>KeyId</code> parameter.
revoke_grant(Client, Input)
  when is_map(Client), is_map(Input) ->
    revoke_grant(Client, Input, []).
revoke_grant(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RevokeGrant">>, Input, Options).

%% @doc Schedules the deletion of a customer master key (CMK). You may
%% provide a waiting period, specified in days, before deletion occurs. If
%% you do not provide a waiting period, the default period of 30 days is
%% used. When this operation is successful, the key state of the CMK changes
%% to <code>PendingDeletion</code>. Before the waiting period ends, you can
%% use <a>CancelKeyDeletion</a> to cancel the deletion of the CMK. After the
%% waiting period ends, AWS KMS deletes the CMK and all AWS KMS data
%% associated with it, including all aliases that refer to it.
%%
%% <important> Deleting a CMK is a destructive and potentially dangerous
%% operation. When a CMK is deleted, all data that was encrypted under the
%% CMK is unrecoverable. To prevent the use of a CMK without deleting it, use
%% <a>DisableKey</a>.
%%
%% </important> If you schedule deletion of a CMK from a <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom
%% key store</a>, when the waiting period expires,
%% <code>ScheduleKeyDeletion</code> deletes the CMK from AWS KMS. Then AWS
%% KMS makes a best effort to delete the key material from the associated AWS
%% CloudHSM cluster. However, you might need to manually <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-orphaned-key">delete
%% the orphaned key material</a> from the cluster and its backups.
%%
%% You cannot perform this operation on a CMK in a different AWS account.
%%
%% For more information about scheduling a CMK for deletion, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html">Deleting
%% Customer Master Keys</a> in the <i>AWS Key Management Service Developer
%% Guide</i>.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How
%% Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key
%% Management Service Developer Guide</i>.
schedule_key_deletion(Client, Input)
  when is_map(Client), is_map(Input) ->
    schedule_key_deletion(Client, Input, []).
schedule_key_deletion(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ScheduleKeyDeletion">>, Input, Options).

%% @doc Creates a <a
%% href="https://en.wikipedia.org/wiki/Digital_signature">digital
%% signature</a> for a message or message digest by using the private key in
%% an asymmetric CMK. To verify the signature, use the <a>Verify</a>
%% operation, or use the public key in the same asymmetric CMK outside of AWS
%% KMS. For information about symmetric and asymmetric CMKs, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Using
%% Symmetric and Asymmetric CMKs</a> in the <i>AWS Key Management Service
%% Developer Guide</i>.
%%
%% Digital signatures are generated and verified by using asymmetric key
%% pair, such as an RSA or ECC pair that is represented by an asymmetric
%% customer master key (CMK). The key owner (or an authorized user) uses
%% their private key to sign a message. Anyone with the public key can verify
%% that the message was signed with that particular private key and that the
%% message hasn't changed since it was signed.
%%
%% To use the <code>Sign</code> operation, provide the following information:
%%
%% <ul> <li> Use the <code>KeyId</code> parameter to identify an asymmetric
%% CMK with a <code>KeyUsage</code> value of <code>SIGN_VERIFY</code>. To get
%% the <code>KeyUsage</code> value of a CMK, use the <a>DescribeKey</a>
%% operation. The caller must have <code>kms:Sign</code> permission on the
%% CMK.
%%
%% </li> <li> Use the <code>Message</code> parameter to specify the message
%% or message digest to sign. You can submit messages of up to 4096 bytes. To
%% sign a larger message, generate a hash digest of the message, and then
%% provide the hash digest in the <code>Message</code> parameter. To indicate
%% whether the message is a full message or a digest, use the
%% <code>MessageType</code> parameter.
%%
%% </li> <li> Choose a signing algorithm that is compatible with the CMK.
%%
%% </li> </ul> <important> When signing a message, be sure to record the CMK
%% and the signing algorithm. This information is required to verify the
%% signature.
%%
%% </important> To verify the signature that this operation generates, use
%% the <a>Verify</a> operation. Or use the <a>GetPublicKey</a> operation to
%% download the public key and then use the public key to verify the
%% signature outside of AWS KMS.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How
%% Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key
%% Management Service Developer Guide</i>.
sign(Client, Input)
  when is_map(Client), is_map(Input) ->
    sign(Client, Input, []).
sign(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Sign">>, Input, Options).

%% @doc Adds or edits tags for a customer master key (CMK). You cannot
%% perform this operation on a CMK in a different AWS account.
%%
%% Each tag consists of a tag key and a tag value. Tag keys and tag values
%% are both required, but tag values can be empty (null) strings.
%%
%% You can only use a tag key once for each CMK. If you use the tag key
%% again, AWS KMS replaces the current tag value with the specified value.
%%
%% For information about the rules that apply to tag keys and tag values, see
%% <a
%% href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html">User-Defined
%% Tag Restrictions</a> in the <i>AWS Billing and Cost Management User
%% Guide</i>.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How
%% Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key
%% Management Service Developer Guide</i>.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes the specified tags from the specified customer master key
%% (CMK). You cannot perform this operation on a CMK in a different AWS
%% account.
%%
%% To remove a tag, specify the tag key. To change the tag value of an
%% existing tag key, use <a>TagResource</a>.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How
%% Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key
%% Management Service Developer Guide</i>.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Associates an existing AWS KMS alias with a different customer master
%% key (CMK). Each alias is associated with only one CMK at a time, although
%% a CMK can have multiple aliases. The alias and the CMK must be in the same
%% AWS account and region. You cannot perform this operation on an alias in a
%% different AWS account.
%%
%% The current and new CMK must be the same type (both symmetric or both
%% asymmetric), and they must have the same key usage
%% (<code>ENCRYPT_DECRYPT</code> or <code>SIGN_VERIFY</code>). This
%% restriction prevents errors in code that uses aliases. If you must assign
%% an alias to a different type of CMK, use <a>DeleteAlias</a> to delete the
%% old alias and <a>CreateAlias</a> to create a new alias.
%%
%% You cannot use <code>UpdateAlias</code> to change an alias name. To change
%% an alias name, use <a>DeleteAlias</a> to delete the old alias and
%% <a>CreateAlias</a> to create a new alias.
%%
%% Because an alias is not a property of a CMK, you can create, update, and
%% delete the aliases of a CMK without affecting the CMK. Also, aliases do
%% not appear in the response from the <a>DescribeKey</a> operation. To get
%% the aliases of all CMKs in the account, use the <a>ListAliases</a>
%% operation.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How
%% Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key
%% Management Service Developer Guide</i>.
update_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_alias(Client, Input, []).
update_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAlias">>, Input, Options).

%% @doc Changes the properties of a custom key store. Use the
%% <code>CustomKeyStoreId</code> parameter to identify the custom key store
%% you want to edit. Use the remaining parameters to change the properties of
%% the custom key store.
%%
%% You can only update a custom key store that is disconnected. To disconnect
%% the custom key store, use <a>DisconnectCustomKeyStore</a>. To reconnect
%% the custom key store after the update completes, use
%% <a>ConnectCustomKeyStore</a>. To find the connection state of a custom key
%% store, use the <a>DescribeCustomKeyStores</a> operation.
%%
%% Use the parameters of <code>UpdateCustomKeyStore</code> to edit your
%% keystore settings.
%%
%% <ul> <li> Use the <b>NewCustomKeyStoreName</b> parameter to change the
%% friendly name of the custom key store to the value that you specify.
%%
%% </li> <li> Use the <b>KeyStorePassword</b> parameter tell AWS KMS the
%% current password of the <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/key-store-concepts.html#concept-kmsuser">
%% <code>kmsuser</code> crypto user (CU)</a> in the associated AWS CloudHSM
%% cluster. You can use this parameter to <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-password">fix
%% connection failures</a> that occur when AWS KMS cannot log into the
%% associated cluster because the <code>kmsuser</code> password has changed.
%% This value does not change the password in the AWS CloudHSM cluster.
%%
%% </li> <li> Use the <b>CloudHsmClusterId</b> parameter to associate the
%% custom key store with a different, but related, AWS CloudHSM cluster. You
%% can use this parameter to repair a custom key store if its AWS CloudHSM
%% cluster becomes corrupted or is deleted, or when you need to create or
%% restore a cluster from a backup.
%%
%% </li> </ul> If the operation succeeds, it returns a JSON object with no
%% properties.
%%
%% This operation is part of the <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">Custom
%% Key Store feature</a> feature in AWS KMS, which combines the convenience
%% and extensive integration of AWS KMS with the isolation and control of a
%% single-tenant key store.
update_custom_key_store(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_custom_key_store(Client, Input, []).
update_custom_key_store(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCustomKeyStore">>, Input, Options).

%% @doc Updates the description of a customer master key (CMK). To see the
%% description of a CMK, use <a>DescribeKey</a>.
%%
%% You cannot perform this operation on a CMK in a different AWS account.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How
%% Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key
%% Management Service Developer Guide</i>.
update_key_description(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_key_description(Client, Input, []).
update_key_description(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateKeyDescription">>, Input, Options).

%% @doc Verifies a digital signature that was generated by the <a>Sign</a>
%% operation.
%%
%% <p/> Verification confirms that an authorized user signed the message with
%% the specified CMK and signing algorithm, and the message hasn't changed
%% since it was signed. If the signature is verified, the value of the
%% <code>SignatureValid</code> field in the response is <code>True</code>. If
%% the signature verification fails, the <code>Verify</code> operation fails
%% with an <code>KMSInvalidSignatureException</code> exception.
%%
%% A digital signature is generated by using the private key in an asymmetric
%% CMK. The signature is verified by using the public key in the same
%% asymmetric CMK. For information about symmetric and asymmetric CMKs, see
%% <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Using
%% Symmetric and Asymmetric CMKs</a> in the <i>AWS Key Management Service
%% Developer Guide</i>.
%%
%% To verify a digital signature, you can use the <code>Verify</code>
%% operation. Specify the same asymmetric CMK, message, and signing algorithm
%% that were used to produce the signature.
%%
%% You can also verify the digital signature by using the public key of the
%% CMK outside of AWS KMS. Use the <a>GetPublicKey</a> operation to download
%% the public key in the asymmetric CMK and then use the public key to verify
%% the signature outside of AWS KMS. The advantage of using the
%% <code>Verify</code> operation is that it is performed within AWS KMS. As a
%% result, it's easy to call, the operation is performed within the FIPS
%% boundary, it is logged in AWS CloudTrail, and you can use key policy and
%% IAM policy to determine who is authorized to use the CMK to verify
%% signatures.
%%
%% The CMK that you use for this operation must be in a compatible key state.
%% For details, see <a
%% href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How
%% Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key
%% Management Service Developer Guide</i>.
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
    Error :: {binary(), binary()}.
request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"kms">>},
    Host = get_host(<<"kms">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, << <<"TrentService.">>/binary, Action/binary>>}
    ],
    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body, [return_maps]),
    Exception = maps:get(<<"__type">>, Error, undefined),
    Reason = maps:get(<<"message">>, Error, undefined),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
