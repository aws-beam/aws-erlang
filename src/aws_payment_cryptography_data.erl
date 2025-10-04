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
         generate_mac_emv_pin_change/2,
         generate_mac_emv_pin_change/3,
         generate_pin_data/2,
         generate_pin_data/3,
         re_encrypt_data/3,
         re_encrypt_data/4,
         translate_key_material/2,
         translate_key_material/3,
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



%% Example:
%% session_key_amex() :: #{
%%   <<"PanSequenceNumber">> => string(),
%%   <<"PrimaryAccountNumber">> => string()
%% }
-type session_key_amex() :: #{binary() => any()}.


%% Example:
%% amex_card_security_code_version1() :: #{
%%   <<"CardExpiryDate">> => string()
%% }
-type amex_card_security_code_version1() :: #{binary() => any()}.


%% Example:
%% asymmetric_encryption_attributes() :: #{
%%   <<"PaddingType">> => list(any())
%% }
-type asymmetric_encryption_attributes() :: #{binary() => any()}.


%% Example:
%% discover_dynamic_card_verification_code() :: #{
%%   <<"ApplicationTransactionCounter">> => string(),
%%   <<"CardExpiryDate">> => string(),
%%   <<"UnpredictableNumber">> => string()
%% }
-type discover_dynamic_card_verification_code() :: #{binary() => any()}.


%% Example:
%% current_pin_attributes() :: #{
%%   <<"CurrentEncryptedPinBlock">> => string(),
%%   <<"CurrentPinPekIdentifier">> => string()
%% }
-type current_pin_attributes() :: #{binary() => any()}.


%% Example:
%% visa_pin_verification_value() :: #{
%%   <<"EncryptedPinBlock">> => string(),
%%   <<"PinVerificationKeyIndex">> => integer()
%% }
-type visa_pin_verification_value() :: #{binary() => any()}.


%% Example:
%% ibm3624_pin_offset() :: #{
%%   <<"DecimalizationTable">> => string(),
%%   <<"EncryptedPinBlock">> => string(),
%%   <<"PinValidationData">> => string(),
%%   <<"PinValidationDataPadCharacter">> => string()
%% }
-type ibm3624_pin_offset() :: #{binary() => any()}.


%% Example:
%% translation_pin_data_iso_format034() :: #{
%%   <<"PrimaryAccountNumber">> => string()
%% }
-type translation_pin_data_iso_format034() :: #{binary() => any()}.


%% Example:
%% translate_pin_data_input() :: #{
%%   <<"EncryptedPinBlock">> := string(),
%%   <<"IncomingDukptAttributes">> => dukpt_derivation_attributes(),
%%   <<"IncomingKeyIdentifier">> := string(),
%%   <<"IncomingTranslationAttributes">> := list(),
%%   <<"IncomingWrappedKey">> => wrapped_key(),
%%   <<"OutgoingDukptAttributes">> => dukpt_derivation_attributes(),
%%   <<"OutgoingKeyIdentifier">> := string(),
%%   <<"OutgoingTranslationAttributes">> := list(),
%%   <<"OutgoingWrappedKey">> => wrapped_key()
%% }
-type translate_pin_data_input() :: #{binary() => any()}.


%% Example:
%% encrypt_data_output() :: #{
%%   <<"CipherText">> => string(),
%%   <<"KeyArn">> => string(),
%%   <<"KeyCheckValue">> => string()
%% }
-type encrypt_data_output() :: #{binary() => any()}.


%% Example:
%% verify_mac_output() :: #{
%%   <<"KeyArn">> => string(),
%%   <<"KeyCheckValue">> => string()
%% }
-type verify_mac_output() :: #{binary() => any()}.


%% Example:
%% visa_attributes() :: #{
%%   <<"ApplicationTransactionCounter">> => string(),
%%   <<"AuthorizationRequestKeyIdentifier">> => string(),
%%   <<"CurrentPinAttributes">> => current_pin_attributes(),
%%   <<"MajorKeyDerivationMode">> => list(any()),
%%   <<"PanSequenceNumber">> => string(),
%%   <<"PrimaryAccountNumber">> => string()
%% }
-type visa_attributes() :: #{binary() => any()}.


%% Example:
%% cryptogram_verification_arpc_method1() :: #{
%%   <<"AuthResponseCode">> => string()
%% }
-type cryptogram_verification_arpc_method1() :: #{binary() => any()}.


%% Example:
%% dynamic_card_verification_value() :: #{
%%   <<"ApplicationTransactionCounter">> => string(),
%%   <<"CardExpiryDate">> => string(),
%%   <<"PanSequenceNumber">> => string(),
%%   <<"ServiceCode">> => string()
%% }
-type dynamic_card_verification_value() :: #{binary() => any()}.


%% Example:
%% wrapped_key() :: #{
%%   <<"KeyCheckValueAlgorithm">> => string(),
%%   <<"WrappedKeyMaterial">> => list()
%% }
-type wrapped_key() :: #{binary() => any()}.


%% Example:
%% card_holder_verification_value() :: #{
%%   <<"ApplicationTransactionCounter">> => string(),
%%   <<"PanSequenceNumber">> => string(),
%%   <<"UnpredictableNumber">> => string()
%% }
-type card_holder_verification_value() :: #{binary() => any()}.


%% Example:
%% mac_algorithm_dukpt() :: #{
%%   <<"DukptDerivationType">> => list(any()),
%%   <<"DukptKeyVariant">> => list(any()),
%%   <<"KeySerialNumber">> => string()
%% }
-type mac_algorithm_dukpt() :: #{binary() => any()}.


%% Example:
%% outgoing_tr31_key_block() :: #{
%%   <<"WrappingKeyIdentifier">> => string()
%% }
-type outgoing_tr31_key_block() :: #{binary() => any()}.


%% Example:
%% ecdh_derivation_attributes() :: #{
%%   <<"CertificateAuthorityPublicKeyIdentifier">> => string(),
%%   <<"KeyAlgorithm">> => list(any()),
%%   <<"KeyDerivationFunction">> => list(any()),
%%   <<"KeyDerivationHashAlgorithm">> => list(any()),
%%   <<"PublicKeyCertificate">> => string(),
%%   <<"SharedInformation">> => string()
%% }
-type ecdh_derivation_attributes() :: #{binary() => any()}.


%% Example:
%% amex_attributes() :: #{
%%   <<"ApplicationTransactionCounter">> => string(),
%%   <<"AuthorizationRequestKeyIdentifier">> => string(),
%%   <<"CurrentPinAttributes">> => current_pin_attributes(),
%%   <<"MajorKeyDerivationMode">> => list(any()),
%%   <<"PanSequenceNumber">> => string(),
%%   <<"PrimaryAccountNumber">> => string()
%% }
-type amex_attributes() :: #{binary() => any()}.


%% Example:
%% cryptogram_verification_arpc_method2() :: #{
%%   <<"CardStatusUpdate">> => string(),
%%   <<"ProprietaryAuthenticationData">> => string()
%% }
-type cryptogram_verification_arpc_method2() :: #{binary() => any()}.


%% Example:
%% verify_card_validation_data_input() :: #{
%%   <<"KeyIdentifier">> := string(),
%%   <<"PrimaryAccountNumber">> := string(),
%%   <<"ValidationData">> := string(),
%%   <<"VerificationAttributes">> := list()
%% }
-type verify_card_validation_data_input() :: #{binary() => any()}.


%% Example:
%% amex_card_security_code_version2() :: #{
%%   <<"CardExpiryDate">> => string(),
%%   <<"ServiceCode">> => string()
%% }
-type amex_card_security_code_version2() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"ResourceId">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% encrypt_data_input() :: #{
%%   <<"EncryptionAttributes">> := list(),
%%   <<"PlainText">> := string(),
%%   <<"WrappedKey">> => wrapped_key()
%% }
-type encrypt_data_input() :: #{binary() => any()}.


%% Example:
%% dynamic_card_verification_code() :: #{
%%   <<"ApplicationTransactionCounter">> => string(),
%%   <<"PanSequenceNumber">> => string(),
%%   <<"TrackData">> => string(),
%%   <<"UnpredictableNumber">> => string()
%% }
-type dynamic_card_verification_code() :: #{binary() => any()}.


%% Example:
%% dukpt_attributes() :: #{
%%   <<"DukptDerivationType">> => list(any()),
%%   <<"KeySerialNumber">> => string()
%% }
-type dukpt_attributes() :: #{binary() => any()}.


%% Example:
%% emv_encryption_attributes() :: #{
%%   <<"InitializationVector">> => string(),
%%   <<"MajorKeyDerivationMode">> => list(any()),
%%   <<"Mode">> => list(any()),
%%   <<"PanSequenceNumber">> => string(),
%%   <<"PrimaryAccountNumber">> => string(),
%%   <<"SessionDerivationData">> => string()
%% }
-type emv_encryption_attributes() :: #{binary() => any()}.


%% Example:
%% verify_mac_input() :: #{
%%   <<"KeyIdentifier">> := string(),
%%   <<"Mac">> := string(),
%%   <<"MacLength">> => integer(),
%%   <<"MessageData">> := string(),
%%   <<"VerificationAttributes">> := list()
%% }
-type verify_mac_input() :: #{binary() => any()}.


%% Example:
%% generate_pin_data_input() :: #{
%%   <<"EncryptionKeyIdentifier">> := string(),
%%   <<"EncryptionWrappedKey">> => wrapped_key(),
%%   <<"GenerationAttributes">> := list(),
%%   <<"GenerationKeyIdentifier">> := string(),
%%   <<"PinBlockFormat">> := list(any()),
%%   <<"PinDataLength">> => integer(),
%%   <<"PrimaryAccountNumber">> => string()
%% }
-type generate_pin_data_input() :: #{binary() => any()}.


%% Example:
%% generate_mac_input() :: #{
%%   <<"GenerationAttributes">> := list(),
%%   <<"KeyIdentifier">> := string(),
%%   <<"MacLength">> => integer(),
%%   <<"MessageData">> := string()
%% }
-type generate_mac_input() :: #{binary() => any()}.


%% Example:
%% card_verification_value2() :: #{
%%   <<"CardExpiryDate">> => string()
%% }
-type card_verification_value2() :: #{binary() => any()}.


%% Example:
%% verify_auth_request_cryptogram_output() :: #{
%%   <<"AuthResponseValue">> => string(),
%%   <<"KeyArn">> => string(),
%%   <<"KeyCheckValue">> => string()
%% }
-type verify_auth_request_cryptogram_output() :: #{binary() => any()}.


%% Example:
%% visa_pin() :: #{
%%   <<"PinVerificationKeyIndex">> => integer()
%% }
-type visa_pin() :: #{binary() => any()}.


%% Example:
%% mac_algorithm_emv() :: #{
%%   <<"MajorKeyDerivationMode">> => list(any()),
%%   <<"PanSequenceNumber">> => string(),
%%   <<"PrimaryAccountNumber">> => string(),
%%   <<"SessionKeyDerivationMode">> => list(any()),
%%   <<"SessionKeyDerivationValue">> => list()
%% }
-type mac_algorithm_emv() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"path">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% generate_mac_emv_pin_change_input() :: #{
%%   <<"DerivationMethodAttributes">> := list(),
%%   <<"MessageData">> := string(),
%%   <<"NewEncryptedPinBlock">> := string(),
%%   <<"NewPinPekIdentifier">> := string(),
%%   <<"PinBlockFormat">> := list(any()),
%%   <<"SecureMessagingConfidentialityKeyIdentifier">> := string(),
%%   <<"SecureMessagingIntegrityKeyIdentifier">> := string()
%% }
-type generate_mac_emv_pin_change_input() :: #{binary() => any()}.


%% Example:
%% ibm3624_pin_verification() :: #{
%%   <<"DecimalizationTable">> => string(),
%%   <<"PinOffset">> => string(),
%%   <<"PinValidationData">> => string(),
%%   <<"PinValidationDataPadCharacter">> => string()
%% }
-type ibm3624_pin_verification() :: #{binary() => any()}.


%% Example:
%% visa_pin_verification() :: #{
%%   <<"PinVerificationKeyIndex">> => integer(),
%%   <<"VerificationValue">> => string()
%% }
-type visa_pin_verification() :: #{binary() => any()}.


%% Example:
%% session_key_emv_common() :: #{
%%   <<"ApplicationTransactionCounter">> => string(),
%%   <<"PanSequenceNumber">> => string(),
%%   <<"PrimaryAccountNumber">> => string()
%% }
-type session_key_emv_common() :: #{binary() => any()}.


%% Example:
%% generate_mac_emv_pin_change_output() :: #{
%%   <<"EncryptedPinBlock">> => string(),
%%   <<"Mac">> => string(),
%%   <<"NewPinPekArn">> => string(),
%%   <<"NewPinPekKeyCheckValue">> => string(),
%%   <<"SecureMessagingConfidentialityKeyArn">> => string(),
%%   <<"SecureMessagingConfidentialityKeyCheckValue">> => string(),
%%   <<"SecureMessagingIntegrityKeyArn">> => string(),
%%   <<"SecureMessagingIntegrityKeyCheckValue">> => string(),
%%   <<"VisaAmexDerivationOutputs">> => visa_amex_derivation_outputs()
%% }
-type generate_mac_emv_pin_change_output() :: #{binary() => any()}.


%% Example:
%% master_card_attributes() :: #{
%%   <<"ApplicationCryptogram">> => string(),
%%   <<"MajorKeyDerivationMode">> => list(any()),
%%   <<"PanSequenceNumber">> => string(),
%%   <<"PrimaryAccountNumber">> => string()
%% }
-type master_card_attributes() :: #{binary() => any()}.


%% Example:
%% emv2000_attributes() :: #{
%%   <<"ApplicationTransactionCounter">> => string(),
%%   <<"MajorKeyDerivationMode">> => list(any()),
%%   <<"PanSequenceNumber">> => string(),
%%   <<"PrimaryAccountNumber">> => string()
%% }
-type emv2000_attributes() :: #{binary() => any()}.


%% Example:
%% ibm3624_natural_pin() :: #{
%%   <<"DecimalizationTable">> => string(),
%%   <<"PinValidationData">> => string(),
%%   <<"PinValidationDataPadCharacter">> => string()
%% }
-type ibm3624_natural_pin() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% session_key_emv2000() :: #{
%%   <<"ApplicationTransactionCounter">> => string(),
%%   <<"PanSequenceNumber">> => string(),
%%   <<"PrimaryAccountNumber">> => string()
%% }
-type session_key_emv2000() :: #{binary() => any()}.


%% Example:
%% symmetric_encryption_attributes() :: #{
%%   <<"InitializationVector">> => string(),
%%   <<"Mode">> => list(any()),
%%   <<"PaddingType">> => list(any())
%% }
-type symmetric_encryption_attributes() :: #{binary() => any()}.


%% Example:
%% verify_card_validation_data_output() :: #{
%%   <<"KeyArn">> => string(),
%%   <<"KeyCheckValue">> => string()
%% }
-type verify_card_validation_data_output() :: #{binary() => any()}.


%% Example:
%% wrapped_working_key() :: #{
%%   <<"KeyCheckValue">> => string(),
%%   <<"WrappedKeyMaterial">> => string(),
%%   <<"WrappedKeyMaterialFormat">> => string()
%% }
-type wrapped_working_key() :: #{binary() => any()}.


%% Example:
%% translate_key_material_input() :: #{
%%   <<"IncomingKeyMaterial">> := list(),
%%   <<"KeyCheckValueAlgorithm">> => string(),
%%   <<"OutgoingKeyMaterial">> := list()
%% }
-type translate_key_material_input() :: #{binary() => any()}.


%% Example:
%% emv_common_attributes() :: #{
%%   <<"ApplicationCryptogram">> => string(),
%%   <<"MajorKeyDerivationMode">> => list(any()),
%%   <<"Mode">> => list(any()),
%%   <<"PanSequenceNumber">> => string(),
%%   <<"PinBlockLengthPosition">> => list(any()),
%%   <<"PinBlockPaddingType">> => list(any()),
%%   <<"PrimaryAccountNumber">> => string()
%% }
-type emv_common_attributes() :: #{binary() => any()}.


%% Example:
%% verification_failed_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"Reason">> => string()
%% }
-type verification_failed_exception() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% verify_pin_data_input() :: #{
%%   <<"DukptAttributes">> => dukpt_attributes(),
%%   <<"EncryptedPinBlock">> := string(),
%%   <<"EncryptionKeyIdentifier">> := string(),
%%   <<"EncryptionWrappedKey">> => wrapped_key(),
%%   <<"PinBlockFormat">> := list(any()),
%%   <<"PinDataLength">> => integer(),
%%   <<"PrimaryAccountNumber">> => string(),
%%   <<"VerificationAttributes">> := list(),
%%   <<"VerificationKeyIdentifier">> := string()
%% }
-type verify_pin_data_input() :: #{binary() => any()}.


%% Example:
%% session_key_mastercard() :: #{
%%   <<"ApplicationTransactionCounter">> => string(),
%%   <<"PanSequenceNumber">> => string(),
%%   <<"PrimaryAccountNumber">> => string(),
%%   <<"UnpredictableNumber">> => string()
%% }
-type session_key_mastercard() :: #{binary() => any()}.


%% Example:
%% decrypt_data_output() :: #{
%%   <<"KeyArn">> => string(),
%%   <<"KeyCheckValue">> => string(),
%%   <<"PlainText">> => string()
%% }
-type decrypt_data_output() :: #{binary() => any()}.


%% Example:
%% re_encrypt_data_input() :: #{
%%   <<"CipherText">> := string(),
%%   <<"IncomingEncryptionAttributes">> := list(),
%%   <<"IncomingWrappedKey">> => wrapped_key(),
%%   <<"OutgoingEncryptionAttributes">> := list(),
%%   <<"OutgoingKeyIdentifier">> := string(),
%%   <<"OutgoingWrappedKey">> => wrapped_key()
%% }
-type re_encrypt_data_input() :: #{binary() => any()}.


%% Example:
%% generate_card_validation_data_output() :: #{
%%   <<"KeyArn">> => string(),
%%   <<"KeyCheckValue">> => string(),
%%   <<"ValidationData">> => string()
%% }
-type generate_card_validation_data_output() :: #{binary() => any()}.


%% Example:
%% re_encrypt_data_output() :: #{
%%   <<"CipherText">> => string(),
%%   <<"KeyArn">> => string(),
%%   <<"KeyCheckValue">> => string()
%% }
-type re_encrypt_data_output() :: #{binary() => any()}.


%% Example:
%% generate_pin_data_output() :: #{
%%   <<"EncryptedPinBlock">> => string(),
%%   <<"EncryptionKeyArn">> => string(),
%%   <<"EncryptionKeyCheckValue">> => string(),
%%   <<"GenerationKeyArn">> => string(),
%%   <<"GenerationKeyCheckValue">> => string(),
%%   <<"PinData">> => list()
%% }
-type generate_pin_data_output() :: #{binary() => any()}.


%% Example:
%% card_verification_value1() :: #{
%%   <<"CardExpiryDate">> => string(),
%%   <<"ServiceCode">> => string()
%% }
-type card_verification_value1() :: #{binary() => any()}.


%% Example:
%% decrypt_data_input() :: #{
%%   <<"CipherText">> := string(),
%%   <<"DecryptionAttributes">> := list(),
%%   <<"WrappedKey">> => wrapped_key()
%% }
-type decrypt_data_input() :: #{binary() => any()}.


%% Example:
%% translate_key_material_output() :: #{
%%   <<"WrappedKey">> => wrapped_working_key()
%% }
-type translate_key_material_output() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% verify_auth_request_cryptogram_input() :: #{
%%   <<"AuthRequestCryptogram">> := string(),
%%   <<"AuthResponseAttributes">> => list(),
%%   <<"KeyIdentifier">> := string(),
%%   <<"MajorKeyDerivationMode">> := list(any()),
%%   <<"SessionKeyDerivationAttributes">> := list(),
%%   <<"TransactionData">> := string()
%% }
-type verify_auth_request_cryptogram_input() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% generate_card_validation_data_input() :: #{
%%   <<"GenerationAttributes">> := list(),
%%   <<"KeyIdentifier">> := string(),
%%   <<"PrimaryAccountNumber">> := string(),
%%   <<"ValidationDataLength">> => integer()
%% }
-type generate_card_validation_data_input() :: #{binary() => any()}.


%% Example:
%% visa_amex_derivation_outputs() :: #{
%%   <<"AuthorizationRequestKeyArn">> => string(),
%%   <<"AuthorizationRequestKeyCheckValue">> => string(),
%%   <<"CurrentPinPekArn">> => string(),
%%   <<"CurrentPinPekKeyCheckValue">> => string()
%% }
-type visa_amex_derivation_outputs() :: #{binary() => any()}.


%% Example:
%% ibm3624_random_pin() :: #{
%%   <<"DecimalizationTable">> => string(),
%%   <<"PinValidationData">> => string(),
%%   <<"PinValidationDataPadCharacter">> => string()
%% }
-type ibm3624_random_pin() :: #{binary() => any()}.


%% Example:
%% translate_pin_data_output() :: #{
%%   <<"KeyArn">> => string(),
%%   <<"KeyCheckValue">> => string(),
%%   <<"PinBlock">> => string()
%% }
-type translate_pin_data_output() :: #{binary() => any()}.


%% Example:
%% session_key_visa() :: #{
%%   <<"PanSequenceNumber">> => string(),
%%   <<"PrimaryAccountNumber">> => string()
%% }
-type session_key_visa() :: #{binary() => any()}.


%% Example:
%% verify_pin_data_output() :: #{
%%   <<"EncryptionKeyArn">> => string(),
%%   <<"EncryptionKeyCheckValue">> => string(),
%%   <<"VerificationKeyArn">> => string(),
%%   <<"VerificationKeyCheckValue">> => string()
%% }
-type verify_pin_data_output() :: #{binary() => any()}.


%% Example:
%% ibm3624_pin_from_offset() :: #{
%%   <<"DecimalizationTable">> => string(),
%%   <<"PinOffset">> => string(),
%%   <<"PinValidationData">> => string(),
%%   <<"PinValidationDataPadCharacter">> => string()
%% }
-type ibm3624_pin_from_offset() :: #{binary() => any()}.

%% Example:
%% translation_pin_data_iso_format1() :: #{}
-type translation_pin_data_iso_format1() :: #{}.


%% Example:
%% incoming_diffie_hellman_tr31_key_block() :: #{
%%   <<"CertificateAuthorityPublicKeyIdentifier">> => string(),
%%   <<"DerivationData">> => list(),
%%   <<"DeriveKeyAlgorithm">> => list(any()),
%%   <<"KeyDerivationFunction">> => list(any()),
%%   <<"KeyDerivationHashAlgorithm">> => list(any()),
%%   <<"PrivateKeyIdentifier">> => string(),
%%   <<"PublicKeyCertificate">> => string(),
%%   <<"WrappedKeyBlock">> => string()
%% }
-type incoming_diffie_hellman_tr31_key_block() :: #{binary() => any()}.


%% Example:
%% generate_mac_output() :: #{
%%   <<"KeyArn">> => string(),
%%   <<"KeyCheckValue">> => string(),
%%   <<"Mac">> => string()
%% }
-type generate_mac_output() :: #{binary() => any()}.


%% Example:
%% dukpt_derivation_attributes() :: #{
%%   <<"DukptKeyDerivationType">> => list(any()),
%%   <<"DukptKeyVariant">> => list(any()),
%%   <<"KeySerialNumber">> => string()
%% }
-type dukpt_derivation_attributes() :: #{binary() => any()}.


%% Example:
%% dukpt_encryption_attributes() :: #{
%%   <<"DukptKeyDerivationType">> => list(any()),
%%   <<"DukptKeyVariant">> => list(any()),
%%   <<"InitializationVector">> => string(),
%%   <<"KeySerialNumber">> => string(),
%%   <<"Mode">> => list(any())
%% }
-type dukpt_encryption_attributes() :: #{binary() => any()}.

-type decrypt_data_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type encrypt_data_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type generate_card_validation_data_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type generate_mac_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type generate_mac_emv_pin_change_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type generate_pin_data_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type re_encrypt_data_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type translate_key_material_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type translate_pin_data_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type verify_auth_request_cryptogram_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    verification_failed_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type verify_card_validation_data_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    verification_failed_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type verify_mac_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    verification_failed_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type verify_pin_data_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    verification_failed_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

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
%% You can use an decryption key generated within Amazon Web Services Payment
%% Cryptography, or you can import your own decryption key by calling
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
%% This operation also supports dynamic keys, allowing you to pass a dynamic
%% decryption key as a TR-31 WrappedKeyBlock. This can be used when key
%% material is frequently rotated, such as during every card transaction, and
%% there is need to avoid importing short-lived keys into Amazon Web Services
%% Payment Cryptography. To decrypt using dynamic keys, the `keyARN' is
%% the Key Encryption Key (KEK) of the TR-31 wrapped decryption key material.
%% The incoming wrapped key shall have a key purpose of D0 with a mode of use
%% of B or D. For more information, see Using Dynamic Keys:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/use-cases-acquirers-dynamickeys.html
%% in the Amazon Web Services Payment Cryptography User Guide.
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
%% `EncryptData'
%%
%% GetPublicCertificate:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetPublicKeyCertificate.html
%%
%% ImportKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html
-spec decrypt_data(aws_client:aws_client(), binary() | list(), decrypt_data_input()) ->
    {ok, decrypt_data_output(), tuple()} |
    {error, any()} |
    {error, decrypt_data_errors(), tuple()}.
decrypt_data(Client, KeyIdentifier, Input) ->
    decrypt_data(Client, KeyIdentifier, Input, []).

-spec decrypt_data(aws_client:aws_client(), binary() | list(), decrypt_data_input(), proplists:proplist()) ->
    {ok, decrypt_data_output(), tuple()} |
    {error, any()} |
    {error, decrypt_data_errors(), tuple()}.
decrypt_data(Client, KeyIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/keys/", aws_util:encode_uri(KeyIdentifier), "/decrypt"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%%
%% For this operation, the key must have `KeyModesOfUse' set to
%% `Encrypt'. In asymmetric encryption, plaintext is encrypted using
%% public component. You can import the public component of an asymmetric key
%% pair created outside Amazon Web Services Payment Cryptography by calling
%% ImportKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html.
%%
%% This operation also supports dynamic keys, allowing you to pass a dynamic
%% encryption key as a TR-31 WrappedKeyBlock. This can be used when key
%% material is frequently rotated, such as during every card transaction, and
%% there is need to avoid importing short-lived keys into Amazon Web Services
%% Payment Cryptography. To encrypt using dynamic keys, the `keyARN' is
%% the Key Encryption Key (KEK) of the TR-31 wrapped encryption key material.
%% The incoming wrapped key shall have a key purpose of D0 with a mode of use
%% of B or D. For more information, see Using Dynamic Keys:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/use-cases-acquirers-dynamickeys.html
%% in the Amazon Web Services Payment Cryptography User Guide.
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
%% `DecryptData'
%%
%% GetPublicCertificate:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetPublicKeyCertificate.html
%%
%% ImportKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html
%%
%% `ReEncryptData'
-spec encrypt_data(aws_client:aws_client(), binary() | list(), encrypt_data_input()) ->
    {ok, encrypt_data_output(), tuple()} |
    {error, any()} |
    {error, encrypt_data_errors(), tuple()}.
encrypt_data(Client, KeyIdentifier, Input) ->
    encrypt_data(Client, KeyIdentifier, Input, []).

-spec encrypt_data(aws_client:aws_client(), binary() | list(), encrypt_data_input(), proplists:proplist()) ->
    {ok, encrypt_data_output(), tuple()} |
    {error, any()} |
    {error, encrypt_data_errors(), tuple()}.
encrypt_data(Client, KeyIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/keys/", aws_util:encode_uri(KeyIdentifier), "/encrypt"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%% ImportKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html
%%
%% `VerifyCardValidationData'
-spec generate_card_validation_data(aws_client:aws_client(), generate_card_validation_data_input()) ->
    {ok, generate_card_validation_data_output(), tuple()} |
    {error, any()} |
    {error, generate_card_validation_data_errors(), tuple()}.
generate_card_validation_data(Client, Input) ->
    generate_card_validation_data(Client, Input, []).

-spec generate_card_validation_data(aws_client:aws_client(), generate_card_validation_data_input(), proplists:proplist()) ->
    {ok, generate_card_validation_data_output(), tuple()} |
    {error, any()} |
    {error, generate_card_validation_data_errors(), tuple()}.
generate_card_validation_data(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cardvalidationdata/generate"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%% such as `TR31_M7_HMAC_KEY' for HMAC generation, and the key must have
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
%% `VerifyMac'
-spec generate_mac(aws_client:aws_client(), generate_mac_input()) ->
    {ok, generate_mac_output(), tuple()} |
    {error, any()} |
    {error, generate_mac_errors(), tuple()}.
generate_mac(Client, Input) ->
    generate_mac(Client, Input, []).

-spec generate_mac(aws_client:aws_client(), generate_mac_input(), proplists:proplist()) ->
    {ok, generate_mac_output(), tuple()} |
    {error, any()} |
    {error, generate_mac_errors(), tuple()}.
generate_mac(Client, Input0, Options0) ->
    Method = post,
    Path = ["/mac/generate"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Generates an issuer script mac for EMV payment cards that use offline
%% PINs as the cardholder verification method (CVM).
%%
%% This operation generates an authenticated issuer script response by
%% appending the incoming message data (APDU command) with the target
%% encrypted PIN block in ISO2 format. The command structure and method to
%% send the issuer script update to the card is not defined by this operation
%% and is typically determined by the applicable payment card scheme.
%%
%% The primary inputs to this operation include the incoming new encrypted
%% pinblock, PIN encryption key (PEK), issuer master key (IMK), primary
%% account number (PAN), and the payment card derivation method.
%%
%% The operation uses two issuer master keys - secure messaging for
%% confidentiality (IMK-SMC) and secure messaging for integrity (IMK-SMI).
%% The SMC key is used to internally derive a key to secure the pin, while
%% SMI key is used to internally derive a key to authenticate the script
%% reponse as per the EMV 4.4 - Book 2 - Security and Key Management:
%% https://www.emvco.com/specifications/ specification.
%%
%% This operation supports Amex, EMV2000, EMVCommon, Mastercard and Visa
%% derivation methods, each requiring specific input parameters. Users must
%% follow the specific derivation method and input parameters defined by the
%% respective payment card scheme.
%%
%% Use `GenerateMac' operation when sending a script update to an EMV
%% card that does not involve PIN change. When assigning IAM permissions, it
%% is important to understand that `EncryptData' using EMV keys and
%% `GenerateMac' perform similar functions to this command.
%%
%% Cross-account use: This operation can't be used across different
%% Amazon Web Services accounts.
%%
%% Related operations:
%%
%% `EncryptData'
%%
%% `GenerateMac'
-spec generate_mac_emv_pin_change(aws_client:aws_client(), generate_mac_emv_pin_change_input()) ->
    {ok, generate_mac_emv_pin_change_output(), tuple()} |
    {error, any()} |
    {error, generate_mac_emv_pin_change_errors(), tuple()}.
generate_mac_emv_pin_change(Client, Input) ->
    generate_mac_emv_pin_change(Client, Input, []).

-spec generate_mac_emv_pin_change(aws_client:aws_client(), generate_mac_emv_pin_change_input(), proplists:proplist()) ->
    {ok, generate_mac_emv_pin_change_output(), tuple()} |
    {error, any()} |
    {error, generate_mac_emv_pin_change_errors(), tuple()}.
generate_mac_emv_pin_change(Client, Input0, Options0) ->
    Method = post,
    Path = ["/macemvpinchange/generate"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%% Using ECDH key exchange, you can receive cardholder selectable PINs into
%% Amazon Web Services Payment Cryptography. The ECDH derived key protects
%% the incoming PIN block. You can also use it for reveal PIN, wherein the
%% generated PIN block is protected by the ECDH derived key before
%% transmission from Amazon Web Services Payment Cryptography. For more
%% information on establishing ECDH derived keys, see the Generating keys:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/create-keys.html
%% in the Amazon Web Services Payment Cryptography User Guide.
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
%% `GenerateCardValidationData'
%%
%% `TranslatePinData'
%%
%% `VerifyPinData'
-spec generate_pin_data(aws_client:aws_client(), generate_pin_data_input()) ->
    {ok, generate_pin_data_output(), tuple()} |
    {error, any()} |
    {error, generate_pin_data_errors(), tuple()}.
generate_pin_data(Client, Input) ->
    generate_pin_data(Client, Input, []).

-spec generate_pin_data(aws_client:aws_client(), generate_pin_data_input(), proplists:proplist()) ->
    {ok, generate_pin_data_output(), tuple()} |
    {error, any()} |
    {error, generate_pin_data_errors(), tuple()}.
generate_pin_data(Client, Input0, Options0) ->
    Method = post,
    Path = ["/pindata/generate"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Re-encrypt ciphertext using DUKPT or Symmetric data encryption keys.
%%
%% You can either generate an encryption key within Amazon Web Services
%% Payment Cryptography by calling CreateKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html
%% or import your own encryption key by calling ImportKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html.
%% The `KeyArn' for use with this operation must be in a compatible key
%% state with `KeyModesOfUse' set to `Encrypt'.
%%
%% This operation also supports dynamic keys, allowing you to pass a dynamic
%% encryption key as a TR-31 WrappedKeyBlock. This can be used when key
%% material is frequently rotated, such as during every card transaction, and
%% there is need to avoid importing short-lived keys into Amazon Web Services
%% Payment Cryptography. To re-encrypt using dynamic keys, the `keyARN'
%% is the Key Encryption Key (KEK) of the TR-31 wrapped encryption key
%% material. The incoming wrapped key shall have a key purpose of D0 with a
%% mode of use of B or D. For more information, see Using Dynamic Keys:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/use-cases-acquirers-dynamickeys.html
%% in the Amazon Web Services Payment Cryptography User Guide.
%%
%% For symmetric and DUKPT encryption, Amazon Web Services Payment
%% Cryptography supports `TDES' and `AES' algorithms. To encrypt
%% using DUKPT, a DUKPT key must already exist within your account with
%% `KeyModesOfUse' set to `DeriveKey' or a new DUKPT can be generated
%% by calling CreateKey:
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
%% `DecryptData'
%%
%% `EncryptData'
%%
%% GetPublicCertificate:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetPublicKeyCertificate.html
%%
%% ImportKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html
-spec re_encrypt_data(aws_client:aws_client(), binary() | list(), re_encrypt_data_input()) ->
    {ok, re_encrypt_data_output(), tuple()} |
    {error, any()} |
    {error, re_encrypt_data_errors(), tuple()}.
re_encrypt_data(Client, IncomingKeyIdentifier, Input) ->
    re_encrypt_data(Client, IncomingKeyIdentifier, Input, []).

-spec re_encrypt_data(aws_client:aws_client(), binary() | list(), re_encrypt_data_input(), proplists:proplist()) ->
    {ok, re_encrypt_data_output(), tuple()} |
    {error, any()} |
    {error, re_encrypt_data_errors(), tuple()}.
re_encrypt_data(Client, IncomingKeyIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/keys/", aws_util:encode_uri(IncomingKeyIdentifier), "/reencrypt"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Translates an encryption key between different wrapping keys without
%% importing the key into Amazon Web Services Payment Cryptography.
%%
%% This operation can be used when key material is frequently rotated, such
%% as during every card transaction, and there is a need to avoid importing
%% short-lived keys into Amazon Web Services Payment Cryptography. It
%% translates short-lived transaction keys such as Pin Encryption Key (PEK)
%% generated for each transaction and wrapped with an ECDH (Elliptic Curve
%% Diffie-Hellman) derived wrapping key to another KEK (Key Encryption Key)
%% wrapping key.
%%
%% Before using this operation, you must first request the public key
%% certificate of the ECC key pair generated within Amazon Web Services
%% Payment Cryptography to establish an ECDH key agreement. In
%% `TranslateKeyData', the service uses its own ECC key pair, public
%% certificate of receiving ECC key pair, and the key derivation parameters
%% to generate a derived key. The service uses this derived key to unwrap the
%% incoming transaction key received as a TR31WrappedKeyBlock and re-wrap
%% using a user provided KEK to generate an outgoing Tr31WrappedKeyBlock. For
%% more information on establishing ECDH derived keys, see the Creating keys:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/create-keys.html
%% in the Amazon Web Services Payment Cryptography User Guide.
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
%% CreateKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html
%%
%% GetPublicCertificate:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetPublicKeyCertificate.html
%%
%% ImportKey:
%% https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html
-spec translate_key_material(aws_client:aws_client(), translate_key_material_input()) ->
    {ok, translate_key_material_output(), tuple()} |
    {error, any()} |
    {error, translate_key_material_errors(), tuple()}.
translate_key_material(Client, Input) ->
    translate_key_material(Client, Input, []).

-spec translate_key_material(aws_client:aws_client(), translate_key_material_input(), proplists:proplist()) ->
    {ok, translate_key_material_output(), tuple()} |
    {error, any()} |
    {error, translate_key_material_errors(), tuple()}.
translate_key_material(Client, Input0, Options0) ->
    Method = post,
    Path = ["/keymaterial/translate"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%% PIN block translation involves changing a PIN block from one encryption
%% key to another and optionally change its format. PIN block translation
%% occurs entirely within the HSM boundary and PIN data never enters or
%% leaves Amazon Web Services Payment Cryptography in clear text. The
%% encryption key transformation can be from PEK (Pin Encryption Key) to BDK
%% (Base Derivation Key) for DUKPT or from BDK for DUKPT to PEK.
%%
%% Amazon Web Services Payment Cryptography also supports use of dynamic keys
%% and ECDH (Elliptic Curve Diffie-Hellman) based key exchange for this
%% operation.
%%
%% Dynamic keys allow you to pass a PEK as a TR-31 WrappedKeyBlock. They can
%% be used when key material is frequently rotated, such as during every card
%% transaction, and there is need to avoid importing short-lived keys into
%% Amazon Web Services Payment Cryptography. To translate PIN block using
%% dynamic keys, the `keyARN' is the Key Encryption Key (KEK) of the
%% TR-31 wrapped PEK. The incoming wrapped key shall have a key purpose of P0
%% with a mode of use of B or D. For more information, see Using Dynamic
%% Keys:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/use-cases-acquirers-dynamickeys.html
%% in the Amazon Web Services Payment Cryptography User Guide.
%%
%% Using ECDH key exchange, you can receive cardholder selectable PINs into
%% Amazon Web Services Payment Cryptography. The ECDH derived key protects
%% the incoming PIN block, which is translated to a PEK encrypted PIN block
%% for use within the service. You can also use ECDH for reveal PIN, wherein
%% the service translates the PIN block from PEK to a ECDH derived encryption
%% key. For more information on establishing ECDH derived keys, see the
%% Creating keys:
%% https://docs.aws.amazon.com/payment-cryptography/latest/userguide/create-keys.html
%% in the Amazon Web Services Payment Cryptography User Guide.
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
%% `GeneratePinData'
%%
%% `VerifyPinData'
-spec translate_pin_data(aws_client:aws_client(), translate_pin_data_input()) ->
    {ok, translate_pin_data_output(), tuple()} |
    {error, any()} |
    {error, translate_pin_data_errors(), tuple()}.
translate_pin_data(Client, Input) ->
    translate_pin_data(Client, Input, []).

-spec translate_pin_data(aws_client:aws_client(), translate_pin_data_input(), proplists:proplist()) ->
    {ok, translate_pin_data_output(), tuple()} |
    {error, any()} |
    {error, translate_pin_data_errors(), tuple()}.
translate_pin_data(Client, Input0, Options0) ->
    Method = post,
    Path = ["/pindata/translate"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%% `VerifyCardValidationData'
%%
%% `VerifyPinData'
-spec verify_auth_request_cryptogram(aws_client:aws_client(), verify_auth_request_cryptogram_input()) ->
    {ok, verify_auth_request_cryptogram_output(), tuple()} |
    {error, any()} |
    {error, verify_auth_request_cryptogram_errors(), tuple()}.
verify_auth_request_cryptogram(Client, Input) ->
    verify_auth_request_cryptogram(Client, Input, []).

-spec verify_auth_request_cryptogram(aws_client:aws_client(), verify_auth_request_cryptogram_input(), proplists:proplist()) ->
    {ok, verify_auth_request_cryptogram_output(), tuple()} |
    {error, any()} |
    {error, verify_auth_request_cryptogram_errors(), tuple()}.
verify_auth_request_cryptogram(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cryptogram/verify"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%% `GenerateCardValidationData'
%%
%% `VerifyAuthRequestCryptogram'
%%
%% `VerifyPinData'
-spec verify_card_validation_data(aws_client:aws_client(), verify_card_validation_data_input()) ->
    {ok, verify_card_validation_data_output(), tuple()} |
    {error, any()} |
    {error, verify_card_validation_data_errors(), tuple()}.
verify_card_validation_data(Client, Input) ->
    verify_card_validation_data(Client, Input, []).

-spec verify_card_validation_data(aws_client:aws_client(), verify_card_validation_data_input(), proplists:proplist()) ->
    {ok, verify_card_validation_data_output(), tuple()} |
    {error, any()} |
    {error, verify_card_validation_data_errors(), tuple()}.
verify_card_validation_data(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cardvalidationdata/verify"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%% `GenerateMac'
-spec verify_mac(aws_client:aws_client(), verify_mac_input()) ->
    {ok, verify_mac_output(), tuple()} |
    {error, any()} |
    {error, verify_mac_errors(), tuple()}.
verify_mac(Client, Input) ->
    verify_mac(Client, Input, []).

-spec verify_mac(aws_client:aws_client(), verify_mac_input(), proplists:proplist()) ->
    {ok, verify_mac_output(), tuple()} |
    {error, any()} |
    {error, verify_mac_errors(), tuple()}.
verify_mac(Client, Input0, Options0) ->
    Method = post,
    Path = ["/mac/verify"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%% `GeneratePinData'
%%
%% `TranslatePinData'
-spec verify_pin_data(aws_client:aws_client(), verify_pin_data_input()) ->
    {ok, verify_pin_data_output(), tuple()} |
    {error, any()} |
    {error, verify_pin_data_errors(), tuple()}.
verify_pin_data(Client, Input) ->
    verify_pin_data(Client, Input, []).

-spec verify_pin_data(aws_client:aws_client(), verify_pin_data_input(), proplists:proplist()) ->
    {ok, verify_pin_data_output(), tuple()} |
    {error, any()} |
    {error, verify_pin_data_errors(), tuple()}.
verify_pin_data(Client, Input0, Options0) ->
    Method = post,
    Path = ["/pindata/verify"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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

-spec proplists_take(any(), proplists:proplist(), any()) -> {any(), proplists:proplist()}.
proplists_take(Key, Proplist, Default) ->
  Value = proplists:get_value(Key, Proplist, Default),
  {Value, proplists:delete(Key, Proplist)}.

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
