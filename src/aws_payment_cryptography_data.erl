%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc You use the Amazon Web Services Payment Cryptography Data Plane to
%% manage how encryption keys are used for payment-related transaction
%% processing and associated cryptographic operations.
%%
%% You can encrypt, decrypt, generate, verify, and translate payment-related
%% cryptographic operations in Amazon Web Services Payment Cryptography. For
%% more information, see Data operations:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/data-operations.html
%% in the Amazon Web Services Payment Cryptography User Guide.
%%
%% To manage your encryption keys, you use the Amazon Web Services Payment
%% Cryptography Control Plane:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/Welcome.html.
%% You can create, import, export, share, manage, and delete keys. You can
%% also manage Identity and Access Management (IAM) policies for keys.
-module(aws_payment_cryptography_data).

-export([decrypt_data/3,
         decrypt_data/4,
         encrypt_data/3,
         encrypt_data/4,
         generate_card_validation_data/2,
         generate_card_validation_data/3,
         generate_mac/2,
         generate_mac/3,
         generate_pin_data/2,
         generate_pin_data/3,
         re_encrypt_data/3,
         re_encrypt_data/4,
         translate_pin_data/2,
         translate_pin_data/3,
         verify_auth_request_cryptogram/2,
         verify_auth_request_cryptogram/3,
         verify_card_validation_data/2,
         verify_card_validation_data/3,
         verify_mac/2,
         verify_mac/3,
         verify_pin_data/2,
         verify_pin_data/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Decrypts ciphertext data to plaintext using a symmetric (TDES, AES),
%% asymmetric (RSA), or derived (DUKPT or EMV) encryption key scheme.
%%
%% For more information, see Decrypt data:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/decrypt-data.html
%% in the Amazon Web Services Payment Cryptography User Guide.
%%
%% You can use an encryption key generated within Amazon Web Services Payment
%% Cryptography, or you can import your own encryption key by calling
%% ImportKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html.
%% For this operation, the key must have `KeyModesOfUse' set to
%% `Decrypt'. In asymmetric decryption, Amazon Web Services Payment
%% Cryptography decrypts the ciphertext using the private component of the
%% asymmetric encryption key pair. For data encryption outside of Amazon Web
%% Services Payment Cryptography, you can export the public component of the
%% asymmetric key pair by calling GetPublicCertificate:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetPublicKeyCertificate.html.
%%
%% For symmetric and DUKPT decryption, Amazon Web Services Payment
%% Cryptography supports `TDES' and `AES' algorithms. For EMV
%% decryption, Amazon Web Services Payment Cryptography supports `TDES'
%% algorithms. For asymmetric decryption, Amazon Web Services Payment
%% Cryptography supports `RSA'.
%%
%% When you use TDES or TDES DUKPT, the ciphertext data length must be a
%% multiple of 8 bytes. For AES or AES DUKPT, the ciphertext data length must
%% be a multiple of 16 bytes. For RSA, it sould be equal to the key size
%% unless padding is enabled.
%%
%% For information about valid keys for this operation, see Understanding key
%% attributes:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html
%% and Key types for specific data operations:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html
%% in the Amazon Web Services Payment Cryptography User Guide.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% <ul> <li> `EncryptData'
%%
%% </li> <li> GetPublicCertificate:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetPublicKeyCertificate.html
%%
%% </li> <li> ImportKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html
%%
%% </li> </ul>
decrypt_data(Client, KeyIdentifier, Input) ->
    decrypt_data(Client, KeyIdentifier, Input, []).
decrypt_data(Client, KeyIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/keys/", aws_util:encode_uri(KeyIdentifier), "/decrypt"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Encrypts plaintext data to ciphertext using a symmetric (TDES, AES),
%% asymmetric (RSA), or derived (DUKPT or EMV) encryption key scheme.
%%
%% For more information, see Encrypt data:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/encrypt-data.html
%% in the Amazon Web Services Payment Cryptography User Guide.
%%
%% You can generate an encryption key within Amazon Web Services Payment
%% Cryptography by calling CreateKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html.
%% You can import your own encryption key by calling ImportKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html.
%% For this operation, the key must have `KeyModesOfUse' set to
%% `Encrypt'. In asymmetric encryption, plaintext is encrypted using
%% public component. You can import the public component of an asymmetric key
%% pair created outside Amazon Web Services Payment Cryptography by calling
%% ImportKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html.
%%
%% For symmetric and DUKPT encryption, Amazon Web Services Payment
%% Cryptography supports `TDES' and `AES' algorithms. For EMV
%% encryption, Amazon Web Services Payment Cryptography supports `TDES'
%% algorithms.For asymmetric encryption, Amazon Web Services Payment
%% Cryptography supports `RSA'.
%%
%% When you use TDES or TDES DUKPT, the plaintext data length must be a
%% multiple of 8 bytes. For AES or AES DUKPT, the plaintext data length must
%% be a multiple of 16 bytes. For RSA, it sould be equal to the key size
%% unless padding is enabled.
%%
%% To encrypt using DUKPT, you must already have a BDK (Base Derivation Key)
%% key in your account with `KeyModesOfUse' set to `DeriveKey', or
%% you can generate a new DUKPT key by calling CreateKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html.
%% To encrypt using EMV, you must already have an IMK (Issuer Master Key) key
%% in your account with `KeyModesOfUse' set to `DeriveKey'.
%%
%% For information about valid keys for this operation, see Understanding key
%% attributes:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html
%% and Key types for specific data operations:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html
%% in the Amazon Web Services Payment Cryptography User Guide.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% <ul> <li> `DecryptData'
%%
%% </li> <li> GetPublicCertificate:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetPublicKeyCertificate.html
%%
%% </li> <li> ImportKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html
%%
%% </li> <li> `ReEncryptData'
%%
%% </li> </ul>
encrypt_data(Client, KeyIdentifier, Input) ->
    encrypt_data(Client, KeyIdentifier, Input, []).
encrypt_data(Client, KeyIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/keys/", aws_util:encode_uri(KeyIdentifier), "/encrypt"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Generates card-related validation data using algorithms such as Card
%% Verification Values (CVV/CVV2), Dynamic Card Verification Values
%% (dCVV/dCVV2), or Card Security Codes (CSC).
%%
%% For more information, see Generate card data:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/generate-card-data.html
%% in the Amazon Web Services Payment Cryptography User Guide.
%%
%% This operation generates a CVV or CSC value that is printed on a payment
%% credit or debit card during card production. The CVV or CSC, PAN (Primary
%% Account Number) and expiration date of the card are required to check its
%% validity during transaction processing. To begin this operation, a CVK
%% (Card Verification Key) encryption key is required. You can use CreateKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html
%% or ImportKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html
%% to establish a CVK within Amazon Web Services Payment Cryptography. The
%% `KeyModesOfUse' should be set to `Generate' and `Verify' for a
%% CVK encryption key.
%%
%% For information about valid keys for this operation, see Understanding key
%% attributes:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html
%% and Key types for specific data operations:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html
%% in the Amazon Web Services Payment Cryptography User Guide.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% <ul> <li> ImportKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html
%%
%% </li> <li> `VerifyCardValidationData'
%%
%% </li> </ul>
generate_card_validation_data(Client, Input) ->
    generate_card_validation_data(Client, Input, []).
generate_card_validation_data(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cardvalidationdata/generate"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Generates a Message Authentication Code (MAC) cryptogram within
%% Amazon Web Services Payment Cryptography.
%%
%% You can use this operation to authenticate card-related data by using
%% known data values to generate MAC for data validation between the sending
%% and receiving parties. This operation uses message data, a secret
%% encryption key and MAC algorithm to generate a unique MAC value for
%% transmission. The receiving party of the MAC must use the same message
%% data, secret encryption key and MAC algorithm to reproduce another MAC
%% value for comparision.
%%
%% You can use this operation to generate a DUPKT, CMAC, HMAC or EMV MAC by
%% setting generation attributes and algorithm to the associated values. The
%% MAC generation encryption key must have valid values for `KeyUsage'
%% such as `TR31_M7_HMAC_KEY' for HMAC generation, and they key must have
%% `KeyModesOfUse' set to `Generate' and `Verify'.
%%
%% For information about valid keys for this operation, see Understanding key
%% attributes:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html
%% and Key types for specific data operations:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html
%% in the Amazon Web Services Payment Cryptography User Guide.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% <ul> <li> `VerifyMac'
%%
%% </li> </ul>
generate_mac(Client, Input) ->
    generate_mac(Client, Input, []).
generate_mac(Client, Input0, Options0) ->
    Method = post,
    Path = ["/mac/generate"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Generates pin-related data such as PIN, PIN Verification Value (PVV),
%% PIN Block, and PIN Offset during new card issuance or reissuance.
%%
%% For more information, see Generate PIN data:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/generate-pin-data.html
%% in the Amazon Web Services Payment Cryptography User Guide.
%%
%% PIN data is never transmitted in clear to or from Amazon Web Services
%% Payment Cryptography. This operation generates PIN, PVV, or PIN Offset and
%% then encrypts it using Pin Encryption Key (PEK) to create an
%% `EncryptedPinBlock' for transmission from Amazon Web Services Payment
%% Cryptography. This operation uses a separate Pin Verification Key (PVK)
%% for VISA PVV generation.
%%
%% For information about valid keys for this operation, see Understanding key
%% attributes:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html
%% and Key types for specific data operations:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html
%% in the Amazon Web Services Payment Cryptography User Guide.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% <ul> <li> `GenerateCardValidationData'
%%
%% </li> <li> `TranslatePinData'
%%
%% </li> <li> `VerifyPinData'
%%
%% </li> </ul>
generate_pin_data(Client, Input) ->
    generate_pin_data(Client, Input, []).
generate_pin_data(Client, Input0, Options0) ->
    Method = post,
    Path = ["/pindata/generate"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Re-encrypt ciphertext using DUKPT, Symmetric and Asymmetric Data
%% Encryption Keys.
%%
%% You can either generate an encryption key within Amazon Web Services
%% Payment Cryptography by calling CreateKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html
%% or import your own encryption key by calling ImportKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html.
%% The `KeyArn' for use with this operation must be in a compatible key
%% state with `KeyModesOfUse' set to `Encrypt'. In asymmetric
%% encryption, ciphertext is encrypted using public component (imported by
%% calling ImportKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html)
%% of the asymmetric key pair created outside of Amazon Web Services Payment
%% Cryptography.
%%
%% For symmetric and DUKPT encryption, Amazon Web Services Payment
%% Cryptography supports `TDES' and `AES' algorithms. For asymmetric
%% encryption, Amazon Web Services Payment Cryptography supports `RSA'.
%% To encrypt using DUKPT, a DUKPT key must already exist within your account
%% with `KeyModesOfUse' set to `DeriveKey' or a new DUKPT can be
%% generated by calling CreateKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html.
%%
%% For information about valid keys for this operation, see Understanding key
%% attributes:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html
%% and Key types for specific data operations:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html
%% in the Amazon Web Services Payment Cryptography User Guide.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% <ul> <li> `DecryptData'
%%
%% </li> <li> `EncryptData'
%%
%% </li> <li> GetPublicCertificate:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetPublicKeyCertificate.html
%%
%% </li> <li> ImportKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html
%%
%% </li> </ul>
re_encrypt_data(Client, IncomingKeyIdentifier, Input) ->
    re_encrypt_data(Client, IncomingKeyIdentifier, Input, []).
re_encrypt_data(Client, IncomingKeyIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/keys/", aws_util:encode_uri(IncomingKeyIdentifier), "/reencrypt"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Translates encrypted PIN block from and to ISO 9564 formats 0,1,3,4.
%%
%% For more information, see Translate PIN data:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/translate-pin-data.html
%% in the Amazon Web Services Payment Cryptography User Guide.
%%
%% PIN block translation involves changing the encrytion of PIN block from
%% one encryption key to another encryption key and changing PIN block format
%% from one to another without PIN block data leaving Amazon Web Services
%% Payment Cryptography. The encryption key transformation can be from PEK
%% (Pin Encryption Key) to BDK (Base Derivation Key) for DUKPT or from BDK
%% for DUKPT to PEK. Amazon Web Services Payment Cryptography supports
%% `TDES' and `AES' key derivation type for DUKPT translations.
%%
%% The allowed combinations of PIN block format translations are guided by
%% PCI. It is important to note that not all encrypted PIN block formats
%% (example, format 1) require PAN (Primary Account Number) as input. And as
%% such, PIN block format that requires PAN (example, formats 0,3,4) cannot
%% be translated to a format (format 1) that does not require a PAN for
%% generation.
%%
%% For information about valid keys for this operation, see Understanding key
%% attributes:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html
%% and Key types for specific data operations:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html
%% in the Amazon Web Services Payment Cryptography User Guide.
%%
%% Amazon Web Services Payment Cryptography currently supports ISO PIN block
%% 4 translation for PIN block built using legacy PAN length. That is, PAN is
%% the right most 12 digits excluding the check digits.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% <ul> <li> `GeneratePinData'
%%
%% </li> <li> `VerifyPinData'
%%
%% </li> </ul>
translate_pin_data(Client, Input) ->
    translate_pin_data(Client, Input, []).
translate_pin_data(Client, Input0, Options0) ->
    Method = post,
    Path = ["/pindata/translate"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Verifies Authorization Request Cryptogram (ARQC) for a EMV chip
%% payment card authorization.
%%
%% For more information, see Verify auth request cryptogram:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/data-operations.verifyauthrequestcryptogram.html
%% in the Amazon Web Services Payment Cryptography User Guide.
%%
%% ARQC generation is done outside of Amazon Web Services Payment
%% Cryptography and is typically generated on a point of sale terminal for an
%% EMV chip card to obtain payment authorization during transaction time. For
%% ARQC verification, you must first import the ARQC generated outside of
%% Amazon Web Services Payment Cryptography by calling ImportKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html.
%% This operation uses the imported ARQC and an major encryption key (DUKPT)
%% created by calling CreateKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html
%% to either provide a boolean ARQC verification result or provide an APRC
%% (Authorization Response Cryptogram) response using Method 1 or Method 2.
%% The `ARPC_METHOD_1' uses `AuthResponseCode' to generate ARPC and
%% `ARPC_METHOD_2' uses `CardStatusUpdate' to generate ARPC.
%%
%% For information about valid keys for this operation, see Understanding key
%% attributes:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html
%% and Key types for specific data operations:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html
%% in the Amazon Web Services Payment Cryptography User Guide.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% <ul> <li> `VerifyCardValidationData'
%%
%% </li> <li> `VerifyPinData'
%%
%% </li> </ul>
verify_auth_request_cryptogram(Client, Input) ->
    verify_auth_request_cryptogram(Client, Input, []).
verify_auth_request_cryptogram(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cryptogram/verify"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Verifies card-related validation data using algorithms such as Card
%% Verification Values (CVV/CVV2), Dynamic Card Verification Values
%% (dCVV/dCVV2) and Card Security Codes (CSC).
%%
%% For more information, see Verify card data:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/verify-card-data.html
%% in the Amazon Web Services Payment Cryptography User Guide.
%%
%% This operation validates the CVV or CSC codes that is printed on a payment
%% credit or debit card during card payment transaction. The input values are
%% typically provided as part of an inbound transaction to an issuer or
%% supporting platform partner. Amazon Web Services Payment Cryptography uses
%% CVV or CSC, PAN (Primary Account Number) and expiration date of the card
%% to check its validity during transaction processing. In this operation,
%% the CVK (Card Verification Key) encryption key for use with card data
%% verification is same as the one in used for
%% `GenerateCardValidationData'.
%%
%% For information about valid keys for this operation, see Understanding key
%% attributes:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html
%% and Key types for specific data operations:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html
%% in the Amazon Web Services Payment Cryptography User Guide.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% <ul> <li> `GenerateCardValidationData'
%%
%% </li> <li> `VerifyAuthRequestCryptogram'
%%
%% </li> <li> `VerifyPinData'
%%
%% </li> </ul>
verify_card_validation_data(Client, Input) ->
    verify_card_validation_data(Client, Input, []).
verify_card_validation_data(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cardvalidationdata/verify"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Verifies a Message Authentication Code (MAC).
%%
%% You can use this operation to verify MAC for message data authentication
%% such as . In this operation, you must use the same message data, secret
%% encryption key and MAC algorithm that was used to generate MAC. You can
%% use this operation to verify a DUPKT, CMAC, HMAC or EMV MAC by setting
%% generation attributes and algorithm to the associated values.
%%
%% For information about valid keys for this operation, see Understanding key
%% attributes:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html
%% and Key types for specific data operations:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html
%% in the Amazon Web Services Payment Cryptography User Guide.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% <ul> <li> `GenerateMac'
%%
%% </li> </ul>
verify_mac(Client, Input) ->
    verify_mac(Client, Input, []).
verify_mac(Client, Input0, Options0) ->
    Method = post,
    Path = ["/mac/verify"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Verifies pin-related data such as PIN and PIN Offset using algorithms
%% including VISA PVV and IBM3624.
%%
%% For more information, see Verify PIN data:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/verify-pin-data.html
%% in the Amazon Web Services Payment Cryptography User Guide.
%%
%% This operation verifies PIN data for user payment card. A card holder PIN
%% data is never transmitted in clear to or from Amazon Web Services Payment
%% Cryptography. This operation uses PIN Verification Key (PVK) for PIN or
%% PIN Offset generation and then encrypts it using PIN Encryption Key (PEK)
%% to create an `EncryptedPinBlock' for transmission from Amazon Web
%% Services Payment Cryptography.
%%
%% For information about valid keys for this operation, see Understanding key
%% attributes:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html
%% and Key types for specific data operations:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html
%% in the Amazon Web Services Payment Cryptography User Guide.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% <ul> <li> `GeneratePinData'
%%
%% </li> <li> `TranslatePinData'
%%
%% </li> </ul>
verify_pin_data(Client, Input) ->
    verify_pin_data(Client, Input, []).
verify_pin_data(Client, Input0, Options0) ->
    Method = post,
    Path = ["/pindata/verify"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
    Client1 = Client#{service => <<"payment-cryptography">>},
    Host = build_host(<<"dataplane.payment-cryptography">>, Client1),
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
