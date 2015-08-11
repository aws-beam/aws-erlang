%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>AWS Key Management Service</fullname>
%%
%% AWS Key Management Service (KMS) is an encryption and key management web
%% service. This guide describes the KMS actions that you can call
%% programmatically. For general information about KMS, see the <a
%% href="http://docs.aws.amazon.com/kms/latest/developerguide/overview.html">
%% AWS Key Management Service Developer Guide </a>
%%
%% <note> AWS provides SDKs that consist of libraries and sample code for
%% various programming languages and platforms (Java, Ruby, .Net, iOS,
%% Android, etc.). The SDKs provide a convenient way to create programmatic
%% access to KMS and AWS. For example, the SDKs take care of tasks such as
%% signing requests (see below), managing errors, and retrying requests
%% automatically. For more information about the AWS SDKs, including how to
%% download and install them, see <a
%% href="http://aws.amazon.com/tools/">Tools for Amazon Web Services</a>.
%% </note> We recommend that you use the AWS SDKs to make programmatic API
%% calls to KMS.
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
%% We strongly recommend that you do not use your AWS account access key ID
%% and secret key for everyday work with KMS. Instead, use the access key ID
%% and secret access key for an IAM user, or you can use the AWS Security
%% Token Service to generate temporary security credentials that you can use
%% to sign requests.
%%
%% All KMS operations require <a
%% href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature
%% Version 4</a>.
%%
%% <b>Recording API Requests</b>
%%
%% KMS supports AWS CloudTrail, a service that records AWS API calls and
%% related events for your AWS account and delivers them to an Amazon S3
%% bucket that you specify. By using the information collected by CloudTrail,
%% you can determine what requests were made to KMS, who made the request,
%% when it was made, and so on. To learn more about CloudTrail, including how
%% to turn it on and find your log files, see the <a
%% href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/whatiscloudtrail.html">AWS
%% CloudTrail User Guide</a>
%%
%% <b>Additional Resources</b>
%%
%% For more information about credentials and request signing, see the
%% following:
%%
%% <ul> <li> <a
%% href="http://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html">AWS
%% Security Credentials</a>. This topic provides general information about
%% the types of credentials used for accessing AWS. </li> <li> <a
%% href="http://docs.aws.amazon.com/STS/latest/UsingSTS/">AWS Security Token
%% Service</a>. This guide describes how to create and use temporary security
%% credentials. </li> <li> <a
%% href="http://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html">Signing
%% AWS API Requests</a>. This set of topics walks you through the process of
%% signing a request using an access key ID and a secret access key. </li>
%% </ul> <b>Commonly Used APIs</b>
%%
%% Of the APIs discussed in this guide, the following will prove the most
%% useful for most applications. You will likely perform actions other than
%% these, such as creating keys and assigning policies, by using the console.
%% <ul> <li><a>Encrypt</a></li> <li><a>Decrypt</a></li>
%% <li><a>GenerateDataKey</a></li>
%% <li><a>GenerateDataKeyWithoutPlaintext</a></li> </ul>
-module(aws_kms).

-export([create_alias/3,
         create_grant/3,
         create_key/3,
         decrypt/3,
         delete_alias/3,
         describe_key/3,
         disable_key/3,
         disable_key_rotation/3,
         enable_key/3,
         enable_key_rotation/3,
         encrypt/3,
         generate_data_key/3,
         generate_data_key_without_plaintext/3,
         generate_random/3,
         get_key_policy/3,
         get_key_rotation_status/3,
         list_aliases/3,
         list_grants/3,
         list_key_policies/3,
         list_keys/3,
         put_key_policy/3,
         re_encrypt/3,
         retire_grant/3,
         revoke_grant/3,
         update_alias/3,
         update_key_description/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a display name for a customer master key. An alias can be
%% used to identify a key and should be unique. The console enforces a
%% one-to-one mapping between the alias and a key. An alias name can contain
%% only alphanumeric characters, forward slashes (/), underscores (_), and
%% dashes (-). An alias must start with the word "alias" followed by a
%% forward slash (alias/). An alias that begins with "aws" after the forward
%% slash (alias/aws...) is reserved by Amazon Web Services (AWS).
%%
%% To associate an alias with a different key, call <a>UpdateAlias</a>.
%%
%% Note that you cannot create or update an alias that represents a key in
%% another account.
create_alias(Client, Input, Options) ->
  request(Client, <<"CreateAlias">>, Input, Options).

%% @doc Adds a grant to a key to specify who can access the key and under
%% what conditions. Grants are alternate permission mechanisms to key
%% policies. For more information about grants, see <a
%% href="http://docs.aws.amazon.com/kms/latest/developerguide/grants.html">Grants</a>
%% in the developer guide. If a grant is absent, access to the key is
%% evaluated based on IAM policies attached to the user. <ol>
%% <li><a>ListGrants</a></li> <li><a>RetireGrant</a></li>
%% <li><a>RevokeGrant</a></li> </ol>
create_grant(Client, Input, Options) ->
  request(Client, <<"CreateGrant">>, Input, Options).

%% @doc Creates a customer master key. Customer master keys can be used to
%% encrypt small amounts of data (less than 4K) directly, but they are most
%% commonly used to encrypt or envelope data keys that are then used to
%% encrypt customer data. For more information about data keys, see
%% <a>GenerateDataKey</a> and <a>GenerateDataKeyWithoutPlaintext</a>.
create_key(Client, Input, Options) ->
  request(Client, <<"CreateKey">>, Input, Options).

%% @doc Decrypts ciphertext. Ciphertext is plaintext that has been previously
%% encrypted by using any of the following functions: <ul>
%% <li><a>GenerateDataKey</a></li>
%% <li><a>GenerateDataKeyWithoutPlaintext</a></li> <li><a>Encrypt</a></li>
%% </ul>
%%
%% Note that if a caller has been granted access permissions to all keys
%% (through, for example, IAM user policies that grant <code>Decrypt</code>
%% permission on all resources), then ciphertext encrypted by using keys in
%% other accounts where the key grants access to the caller can be decrypted.
%% To remedy this, we recommend that you do not grant <code>Decrypt</code>
%% access in an IAM user policy. Instead grant <code>Decrypt</code> access
%% only in key policies. If you must grant <code>Decrypt</code> access in an
%% IAM user policy, you should scope the resource to specific keys or to
%% specific trusted accounts.
decrypt(Client, Input, Options) ->
  request(Client, <<"Decrypt">>, Input, Options).

%% @doc Deletes the specified alias. To associate an alias with a different
%% key, call <a>UpdateAlias</a>.
delete_alias(Client, Input, Options) ->
  request(Client, <<"DeleteAlias">>, Input, Options).

%% @doc Provides detailed information about the specified customer master
%% key.
describe_key(Client, Input, Options) ->
  request(Client, <<"DescribeKey">>, Input, Options).

%% @doc Marks a key as disabled, thereby preventing its use.
disable_key(Client, Input, Options) ->
  request(Client, <<"DisableKey">>, Input, Options).

%% @doc Disables rotation of the specified key.
disable_key_rotation(Client, Input, Options) ->
  request(Client, <<"DisableKeyRotation">>, Input, Options).

%% @doc Marks a key as enabled, thereby permitting its use. You can have up
%% to 25 enabled keys at one time.
enable_key(Client, Input, Options) ->
  request(Client, <<"EnableKey">>, Input, Options).

%% @doc Enables rotation of the specified customer master key.
enable_key_rotation(Client, Input, Options) ->
  request(Client, <<"EnableKeyRotation">>, Input, Options).

%% @doc Encrypts plaintext into ciphertext by using a customer master key.
%% The <code>Encrypt</code> function has two primary use cases: <ul> <li>You
%% can encrypt up to 4 KB of arbitrary data such as an RSA key, a database
%% password, or other sensitive customer information.</li> <li>If you are
%% moving encrypted data from one region to another, you can use this API to
%% encrypt in the new region the plaintext data key that was used to encrypt
%% the data in the original region. This provides you with an encrypted copy
%% of the data key that can be decrypted in the new region and used there to
%% decrypt the encrypted data. </li> </ul>
%%
%% Unless you are moving encrypted data from one region to another, you don't
%% use this function to encrypt a generated data key within a region. You
%% retrieve data keys already encrypted by calling the <a>GenerateDataKey</a>
%% or <a>GenerateDataKeyWithoutPlaintext</a> function. Data keys don't need
%% to be encrypted again by calling <code>Encrypt</code>.
%%
%% If you want to encrypt data locally in your application, you can use the
%% <code>GenerateDataKey</code> function to return a plaintext data
%% encryption key and a copy of the key encrypted under the customer master
%% key (CMK) of your choosing.
encrypt(Client, Input, Options) ->
  request(Client, <<"Encrypt">>, Input, Options).

%% @doc Generates a data key that you can use in your application to locally
%% encrypt data. This call returns a plaintext version of the key in the
%% <code>Plaintext</code> field of the response object and an encrypted copy
%% of the key in the <code>CiphertextBlob</code> field. The key is encrypted
%% by using the master key specified by the <code>KeyId</code> field. To
%% decrypt the encrypted key, pass it to the <code>Decrypt</code> API.
%%
%% We recommend that you use the following pattern to locally encrypt data:
%% call the <code>GenerateDataKey</code> API, use the key returned in the
%% <code>Plaintext</code> response field to locally encrypt data, and then
%% erase the plaintext data key from memory. Store the encrypted data key
%% (contained in the <code>CiphertextBlob</code> field) alongside of the
%% locally encrypted data.
%%
%% <note>You should not call the <code>Encrypt</code> function to re-encrypt
%% your data keys within a region. <code>GenerateDataKey</code> always
%% returns the data key encrypted and tied to the customer master key that
%% will be used to decrypt it. There is no need to decrypt it twice. </note>
%% If you decide to use the optional <code>EncryptionContext</code>
%% parameter, you must also store the context in full or at least store
%% enough information along with the encrypted data to be able to reconstruct
%% the context when submitting the ciphertext to the <code>Decrypt</code>
%% API. It is a good practice to choose a context that you can reconstruct on
%% the fly to better secure the ciphertext. For more information about how
%% this parameter is used, see <a
%% href="http://docs.aws.amazon.com/kms/latest/developerguide/encrypt-context.html">Encryption
%% Context</a>.
%%
%% To decrypt data, pass the encrypted data key to the <code>Decrypt</code>
%% API. <code>Decrypt</code> uses the associated master key to decrypt the
%% encrypted data key and returns it as plaintext. Use the plaintext data key
%% to locally decrypt your data and then erase the key from memory. You must
%% specify the encryption context, if any, that you specified when you
%% generated the key. The encryption context is logged by CloudTrail, and you
%% can use this log to help track the use of particular data.
generate_data_key(Client, Input, Options) ->
  request(Client, <<"GenerateDataKey">>, Input, Options).

%% @doc Returns a data key encrypted by a customer master key without the
%% plaintext copy of that key. Otherwise, this API functions exactly like
%% <a>GenerateDataKey</a>. You can use this API to, for example, satisfy an
%% audit requirement that an encrypted key be made available without exposing
%% the plaintext copy of that key.
generate_data_key_without_plaintext(Client, Input, Options) ->
  request(Client, <<"GenerateDataKeyWithoutPlaintext">>, Input, Options).

%% @doc Generates an unpredictable byte string.
generate_random(Client, Input, Options) ->
  request(Client, <<"GenerateRandom">>, Input, Options).

%% @doc Retrieves a policy attached to the specified key.
get_key_policy(Client, Input, Options) ->
  request(Client, <<"GetKeyPolicy">>, Input, Options).

%% @doc Retrieves a Boolean value that indicates whether key rotation is
%% enabled for the specified key.
get_key_rotation_status(Client, Input, Options) ->
  request(Client, <<"GetKeyRotationStatus">>, Input, Options).

%% @doc Lists all of the key aliases in the account.
list_aliases(Client, Input, Options) ->
  request(Client, <<"ListAliases">>, Input, Options).

%% @doc List the grants for a specified key.
list_grants(Client, Input, Options) ->
  request(Client, <<"ListGrants">>, Input, Options).

%% @doc Retrieves a list of policies attached to a key.
list_key_policies(Client, Input, Options) ->
  request(Client, <<"ListKeyPolicies">>, Input, Options).

%% @doc Lists the customer master keys.
list_keys(Client, Input, Options) ->
  request(Client, <<"ListKeys">>, Input, Options).

%% @doc Attaches a policy to the specified key.
put_key_policy(Client, Input, Options) ->
  request(Client, <<"PutKeyPolicy">>, Input, Options).

%% @doc Encrypts data on the server side with a new customer master key
%% without exposing the plaintext of the data on the client side. The data is
%% first decrypted and then encrypted. This operation can also be used to
%% change the encryption context of a ciphertext.
%%
%% Unlike other actions, <code>ReEncrypt</code> is authorized twice - once as
%% <code>ReEncryptFrom</code> on the source key and once as
%% <code>ReEncryptTo</code> on the destination key. We therefore recommend
%% that you include the <code>"action":"kms:ReEncrypt*"</code> statement in
%% your key policies to permit re-encryption from or to the key. The
%% statement is included automatically when you authorize use of the key
%% through the console but must be included manually when you set a policy by
%% using the <a>PutKeyPolicy</a> function.
re_encrypt(Client, Input, Options) ->
  request(Client, <<"ReEncrypt">>, Input, Options).

%% @doc Retires a grant. You can retire a grant when you're done using it to
%% clean up. You should revoke a grant when you intend to actively deny
%% operations that depend on it. The following are permitted to call this
%% API: <ul> <li>The account that created the grant</li> <li>The
%% <code>RetiringPrincipal</code>, if present</li> <li>The
%% <code>GranteePrincipal</code>, if <code>RetireGrant</code> is a grantee
%% operation</li> </ul> The grant to retire must be identified by its grant
%% token or by a combination of the key ARN and the grant ID. A grant token
%% is a unique variable-length base64-encoded string. A grant ID is a 64
%% character unique identifier of a grant. Both are returned by the
%% <code>CreateGrant</code> function.
retire_grant(Client, Input, Options) ->
  request(Client, <<"RetireGrant">>, Input, Options).

%% @doc Revokes a grant. You can revoke a grant to actively deny operations
%% that depend on it.
revoke_grant(Client, Input, Options) ->
  request(Client, <<"RevokeGrant">>, Input, Options).

%% @doc Updates an alias to associate it with a different key.
%%
%% An alias name can contain only alphanumeric characters, forward slashes
%% (/), underscores (_), and dashes (-). An alias must start with the word
%% "alias" followed by a forward slash (alias/). An alias that begins with
%% "aws" after the forward slash (alias/aws...) is reserved by Amazon Web
%% Services (AWS).
%%
%% An alias is not a property of a key. Therefore, an alias can be associated
%% with and disassociated from an existing key without changing the
%% properties of the key.
%%
%% Note that you cannot create or update an alias that represents a key in
%% another account.
update_alias(Client, Input, Options) ->
  request(Client, <<"UpdateAlias">>, Input, Options).

%% @doc Updates the description of a key.
update_key_description(Client, Input, Options) ->
  request(Client, <<"UpdateKeyDescription">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"kms">>},
    Method = post,
    Host = aws_util:binary_join([<<"kms.">>,
                                 maps:get(region, Client1),
                                 <<".">>,
                                 maps:get(endpoint, Client1)],
                                <<"">>),
    URL = aws_util:binary_join([<<"https://">>, Host, <<"/">>], <<"">>),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"TrentService.">>/binary, Action/binary>>}],
    Payload = jsx:encode(Input),
    Headers1 = aws_request:sign_request(Client1, Method, URL, Headers, Payload),
    Response = hackney:request(Method, URL, Headers1, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Result = jsx:decode(Body, [return_maps]),
    {ok, Result, {200, ResponseHeaders, Client}};
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Reason = maps:get(<<"__type">>, jsx:decode(Body, [return_maps])),
    {error, Reason, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.
