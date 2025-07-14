%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc You can use the tax setting API to programmatically set, modify, and
%% delete the tax
%% registration number (TRN), associated business legal name, and address
%% (Collectively referred
%% to as &quot;TRN information&quot;).
%%
%% You can also programmatically view TRN information and tax addresses
%% (&quot;Tax profiles&quot;).
%%
%% You can use this API to automate your TRN information settings instead of
%% manually using
%% the console.
%%
%% Service Endpoint
%%
%% https://tax.us-east-1.amazonaws.com
-module(aws_taxsettings).

-export([batch_delete_tax_registration/2,
         batch_delete_tax_registration/3,
         batch_get_tax_exemptions/2,
         batch_get_tax_exemptions/3,
         batch_put_tax_registration/2,
         batch_put_tax_registration/3,
         delete_supplemental_tax_registration/2,
         delete_supplemental_tax_registration/3,
         delete_tax_registration/2,
         delete_tax_registration/3,
         get_tax_exemption_types/2,
         get_tax_exemption_types/3,
         get_tax_inheritance/2,
         get_tax_inheritance/3,
         get_tax_registration/2,
         get_tax_registration/3,
         get_tax_registration_document/2,
         get_tax_registration_document/3,
         list_supplemental_tax_registrations/2,
         list_supplemental_tax_registrations/3,
         list_tax_exemptions/2,
         list_tax_exemptions/3,
         list_tax_registrations/2,
         list_tax_registrations/3,
         put_supplemental_tax_registration/2,
         put_supplemental_tax_registration/3,
         put_tax_exemption/2,
         put_tax_exemption/3,
         put_tax_inheritance/2,
         put_tax_inheritance/3,
         put_tax_registration/2,
         put_tax_registration/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% get_tax_registration_document_request() :: #{
%%   <<"destinationS3Location">> => destination_s3_location(),
%%   <<"taxDocumentMetadata">> := tax_document_metadata()
%% }
-type get_tax_registration_document_request() :: #{binary() => any()}.


%% Example:
%% south_korea_additional_info() :: #{
%%   <<"businessRepresentativeName">> => string(),
%%   <<"itemOfBusiness">> => string(),
%%   <<"lineOfBusiness">> => string()
%% }
-type south_korea_additional_info() :: #{binary() => any()}.


%% Example:
%% source_s3_location() :: #{
%%   <<"bucket">> => string(),
%%   <<"key">> => string()
%% }
-type source_s3_location() :: #{binary() => any()}.


%% Example:
%% batch_delete_tax_registration_response() :: #{
%%   <<"errors">> => list(batch_delete_tax_registration_error())
%% }
-type batch_delete_tax_registration_response() :: #{binary() => any()}.


%% Example:
%% list_tax_exemptions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_tax_exemptions_request() :: #{binary() => any()}.


%% Example:
%% additional_info_response() :: #{
%%   <<"brazilAdditionalInfo">> => brazil_additional_info(),
%%   <<"canadaAdditionalInfo">> => canada_additional_info(),
%%   <<"egyptAdditionalInfo">> => egypt_additional_info(),
%%   <<"estoniaAdditionalInfo">> => estonia_additional_info(),
%%   <<"georgiaAdditionalInfo">> => georgia_additional_info(),
%%   <<"greeceAdditionalInfo">> => greece_additional_info(),
%%   <<"indiaAdditionalInfo">> => india_additional_info(),
%%   <<"indonesiaAdditionalInfo">> => indonesia_additional_info(),
%%   <<"israelAdditionalInfo">> => israel_additional_info(),
%%   <<"italyAdditionalInfo">> => italy_additional_info(),
%%   <<"kenyaAdditionalInfo">> => kenya_additional_info(),
%%   <<"malaysiaAdditionalInfo">> => malaysia_additional_info(),
%%   <<"polandAdditionalInfo">> => poland_additional_info(),
%%   <<"romaniaAdditionalInfo">> => romania_additional_info(),
%%   <<"saudiArabiaAdditionalInfo">> => saudi_arabia_additional_info(),
%%   <<"southKoreaAdditionalInfo">> => south_korea_additional_info(),
%%   <<"spainAdditionalInfo">> => spain_additional_info(),
%%   <<"turkeyAdditionalInfo">> => turkey_additional_info(),
%%   <<"ukraineAdditionalInfo">> => ukraine_additional_info(),
%%   <<"uzbekistanAdditionalInfo">> => uzbekistan_additional_info(),
%%   <<"vietnamAdditionalInfo">> => vietnam_additional_info()
%% }
-type additional_info_response() :: #{binary() => any()}.


%% Example:
%% ukraine_additional_info() :: #{
%%   <<"ukraineTrnType">> => list(any())
%% }
-type ukraine_additional_info() :: #{binary() => any()}.


%% Example:
%% italy_additional_info() :: #{
%%   <<"cigNumber">> => string(),
%%   <<"cupNumber">> => string(),
%%   <<"sdiAccountId">> => string(),
%%   <<"taxCode">> => string()
%% }
-type italy_additional_info() :: #{binary() => any()}.


%% Example:
%% attachment_upload_exception() :: #{
%%   <<"message">> => string()
%% }
-type attachment_upload_exception() :: #{binary() => any()}.


%% Example:
%% tax_inheritance_details() :: #{
%%   <<"inheritanceObtainedReason">> => string(),
%%   <<"parentEntityId">> => string()
%% }
-type tax_inheritance_details() :: #{binary() => any()}.


%% Example:
%% tax_exemption() :: #{
%%   <<"authority">> => authority(),
%%   <<"effectiveDate">> => [non_neg_integer()],
%%   <<"expirationDate">> => [non_neg_integer()],
%%   <<"status">> => list(any()),
%%   <<"systemEffectiveDate">> => [non_neg_integer()],
%%   <<"taxExemptionType">> => tax_exemption_type()
%% }
-type tax_exemption() :: #{binary() => any()}.


%% Example:
%% malaysia_additional_info() :: #{
%%   <<"businessRegistrationNumber">> => string(),
%%   <<"serviceTaxCodes">> => list(list(any())()),
%%   <<"taxInformationNumber">> => string()
%% }
-type malaysia_additional_info() :: #{binary() => any()}.


%% Example:
%% kenya_additional_info() :: #{
%%   <<"personType">> => list(any())
%% }
-type kenya_additional_info() :: #{binary() => any()}.


%% Example:
%% greece_additional_info() :: #{
%%   <<"contractingAuthorityCode">> => string()
%% }
-type greece_additional_info() :: #{binary() => any()}.


%% Example:
%% get_tax_registration_response() :: #{
%%   <<"taxRegistration">> => tax_registration()
%% }
-type get_tax_registration_response() :: #{binary() => any()}.


%% Example:
%% tax_registration_doc_file() :: #{
%%   <<"fileContent">> => binary(),
%%   <<"fileName">> => string()
%% }
-type tax_registration_doc_file() :: #{binary() => any()}.


%% Example:
%% india_additional_info() :: #{
%%   <<"pan">> => string()
%% }
-type india_additional_info() :: #{binary() => any()}.


%% Example:
%% poland_additional_info() :: #{
%%   <<"individualRegistrationNumber">> => string(),
%%   <<"isGroupVatEnabled">> => boolean()
%% }
-type poland_additional_info() :: #{binary() => any()}.


%% Example:
%% batch_get_tax_exemptions_response() :: #{
%%   <<"failedAccounts">> => list(string()),
%%   <<"taxExemptionDetailsMap">> => map()
%% }
-type batch_get_tax_exemptions_response() :: #{binary() => any()}.


%% Example:
%% put_supplemental_tax_registration_request() :: #{
%%   <<"taxRegistrationEntry">> := supplemental_tax_registration_entry()
%% }
-type put_supplemental_tax_registration_request() :: #{binary() => any()}.


%% Example:
%% batch_put_tax_registration_request() :: #{
%%   <<"accountIds">> := list(string()),
%%   <<"taxRegistrationEntry">> := tax_registration_entry()
%% }
-type batch_put_tax_registration_request() :: #{binary() => any()}.


%% Example:
%% egypt_additional_info() :: #{
%%   <<"uniqueIdentificationNumber">> => string(),
%%   <<"uniqueIdentificationNumberExpirationDate">> => string()
%% }
-type egypt_additional_info() :: #{binary() => any()}.


%% Example:
%% case_creation_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type case_creation_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% delete_supplemental_tax_registration_request() :: #{
%%   <<"authorityId">> := string()
%% }
-type delete_supplemental_tax_registration_request() :: #{binary() => any()}.

%% Example:
%% get_tax_exemption_types_request() :: #{}
-type get_tax_exemption_types_request() :: #{}.


%% Example:
%% get_tax_registration_request() :: #{
%%   <<"accountId">> => string()
%% }
-type get_tax_registration_request() :: #{binary() => any()}.


%% Example:
%% get_tax_inheritance_response() :: #{
%%   <<"heritageStatus">> => list(any())
%% }
-type get_tax_inheritance_response() :: #{binary() => any()}.


%% Example:
%% romania_additional_info() :: #{
%%   <<"taxRegistrationNumberType">> => list(any())
%% }
-type romania_additional_info() :: #{binary() => any()}.


%% Example:
%% brazil_additional_info() :: #{
%%   <<"ccmCode">> => string(),
%%   <<"legalNatureCode">> => string()
%% }
-type brazil_additional_info() :: #{binary() => any()}.


%% Example:
%% additional_info_request() :: #{
%%   <<"canadaAdditionalInfo">> => canada_additional_info(),
%%   <<"egyptAdditionalInfo">> => egypt_additional_info(),
%%   <<"estoniaAdditionalInfo">> => estonia_additional_info(),
%%   <<"georgiaAdditionalInfo">> => georgia_additional_info(),
%%   <<"greeceAdditionalInfo">> => greece_additional_info(),
%%   <<"indonesiaAdditionalInfo">> => indonesia_additional_info(),
%%   <<"israelAdditionalInfo">> => israel_additional_info(),
%%   <<"italyAdditionalInfo">> => italy_additional_info(),
%%   <<"kenyaAdditionalInfo">> => kenya_additional_info(),
%%   <<"malaysiaAdditionalInfo">> => malaysia_additional_info(),
%%   <<"polandAdditionalInfo">> => poland_additional_info(),
%%   <<"romaniaAdditionalInfo">> => romania_additional_info(),
%%   <<"saudiArabiaAdditionalInfo">> => saudi_arabia_additional_info(),
%%   <<"southKoreaAdditionalInfo">> => south_korea_additional_info(),
%%   <<"spainAdditionalInfo">> => spain_additional_info(),
%%   <<"turkeyAdditionalInfo">> => turkey_additional_info(),
%%   <<"ukraineAdditionalInfo">> => ukraine_additional_info(),
%%   <<"uzbekistanAdditionalInfo">> => uzbekistan_additional_info(),
%%   <<"vietnamAdditionalInfo">> => vietnam_additional_info()
%% }
-type additional_info_request() :: #{binary() => any()}.


%% Example:
%% supplemental_tax_registration_entry() :: #{
%%   <<"address">> => address(),
%%   <<"legalName">> => string(),
%%   <<"registrationId">> => string(),
%%   <<"registrationType">> => list(any())
%% }
-type supplemental_tax_registration_entry() :: #{binary() => any()}.

%% Example:
%% delete_tax_registration_response() :: #{}
-type delete_tax_registration_response() :: #{}.


%% Example:
%% tax_exemption_type() :: #{
%%   <<"applicableJurisdictions">> => list(authority()),
%%   <<"description">> => string(),
%%   <<"displayName">> => string()
%% }
-type tax_exemption_type() :: #{binary() => any()}.


%% Example:
%% indonesia_additional_info() :: #{
%%   <<"decisionNumber">> => string(),
%%   <<"ppnExceptionDesignationCode">> => string(),
%%   <<"taxRegistrationNumberType">> => list(any())
%% }
-type indonesia_additional_info() :: #{binary() => any()}.


%% Example:
%% authority() :: #{
%%   <<"country">> => string(),
%%   <<"state">> => string()
%% }
-type authority() :: #{binary() => any()}.


%% Example:
%% get_tax_exemption_types_response() :: #{
%%   <<"taxExemptionTypes">> => list(tax_exemption_type())
%% }
-type get_tax_exemption_types_response() :: #{binary() => any()}.


%% Example:
%% batch_put_tax_registration_response() :: #{
%%   <<"errors">> => list(batch_put_tax_registration_error()),
%%   <<"status">> => list(any())
%% }
-type batch_put_tax_registration_response() :: #{binary() => any()}.


%% Example:
%% tax_document_metadata() :: #{
%%   <<"taxDocumentAccessToken">> => string(),
%%   <<"taxDocumentName">> => string()
%% }
-type tax_document_metadata() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"errorCode">> => string(),
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"errorCode">> => string(),
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% estonia_additional_info() :: #{
%%   <<"registryCommercialCode">> => string()
%% }
-type estonia_additional_info() :: #{binary() => any()}.


%% Example:
%% list_tax_registrations_response() :: #{
%%   <<"accountDetails">> => list(account_details()),
%%   <<"nextToken">> => string()
%% }
-type list_tax_registrations_response() :: #{binary() => any()}.


%% Example:
%% list_tax_registrations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_tax_registrations_request() :: #{binary() => any()}.


%% Example:
%% spain_additional_info() :: #{
%%   <<"registrationType">> => list(any())
%% }
-type spain_additional_info() :: #{binary() => any()}.


%% Example:
%% put_supplemental_tax_registration_response() :: #{
%%   <<"authorityId">> => string(),
%%   <<"status">> => list(any())
%% }
-type put_supplemental_tax_registration_response() :: #{binary() => any()}.


%% Example:
%% georgia_additional_info() :: #{
%%   <<"personType">> => list(any())
%% }
-type georgia_additional_info() :: #{binary() => any()}.

%% Example:
%% put_tax_inheritance_response() :: #{}
-type put_tax_inheritance_response() :: #{}.


%% Example:
%% list_tax_exemptions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"taxExemptionDetailsMap">> => map()
%% }
-type list_tax_exemptions_response() :: #{binary() => any()}.


%% Example:
%% account_details() :: #{
%%   <<"accountId">> => string(),
%%   <<"accountMetaData">> => account_meta_data(),
%%   <<"taxInheritanceDetails">> => tax_inheritance_details(),
%%   <<"taxRegistration">> => tax_registration_with_jurisdiction()
%% }
-type account_details() :: #{binary() => any()}.


%% Example:
%% put_tax_exemption_response() :: #{
%%   <<"caseId">> => string()
%% }
-type put_tax_exemption_response() :: #{binary() => any()}.


%% Example:
%% tax_registration_document() :: #{
%%   <<"file">> => tax_registration_doc_file(),
%%   <<"s3Location">> => source_s3_location()
%% }
-type tax_registration_document() :: #{binary() => any()}.


%% Example:
%% destination_s3_location() :: #{
%%   <<"bucket">> => string(),
%%   <<"prefix">> => string()
%% }
-type destination_s3_location() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"name">> => string()
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% batch_delete_tax_registration_error() :: #{
%%   <<"accountId">> => string(),
%%   <<"code">> => string(),
%%   <<"message">> => string()
%% }
-type batch_delete_tax_registration_error() :: #{binary() => any()}.


%% Example:
%% saudi_arabia_additional_info() :: #{
%%   <<"taxRegistrationNumberType">> => list(any())
%% }
-type saudi_arabia_additional_info() :: #{binary() => any()}.


%% Example:
%% canada_additional_info() :: #{
%%   <<"canadaQuebecSalesTaxNumber">> => string(),
%%   <<"canadaRetailSalesTaxNumber">> => string(),
%%   <<"isResellerAccount">> => boolean(),
%%   <<"provincialSalesTaxId">> => string()
%% }
-type canada_additional_info() :: #{binary() => any()}.


%% Example:
%% uzbekistan_additional_info() :: #{
%%   <<"taxRegistrationNumberType">> => list(any()),
%%   <<"vatRegistrationNumber">> => string()
%% }
-type uzbekistan_additional_info() :: #{binary() => any()}.


%% Example:
%% put_tax_registration_request() :: #{
%%   <<"accountId">> => string(),
%%   <<"taxRegistrationEntry">> := tax_registration_entry()
%% }
-type put_tax_registration_request() :: #{binary() => any()}.


%% Example:
%% verification_details() :: #{
%%   <<"dateOfBirth">> => string(),
%%   <<"taxRegistrationDocuments">> => list(tax_registration_document())
%% }
-type verification_details() :: #{binary() => any()}.


%% Example:
%% delete_tax_registration_request() :: #{
%%   <<"accountId">> => string()
%% }
-type delete_tax_registration_request() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"errorCode">> => string(),
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% tax_registration() :: #{
%%   <<"additionalTaxInformation">> => additional_info_response(),
%%   <<"certifiedEmailId">> => string(),
%%   <<"legalAddress">> => address(),
%%   <<"legalName">> => string(),
%%   <<"registrationId">> => string(),
%%   <<"registrationType">> => list(any()),
%%   <<"sector">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"taxDocumentMetadatas">> => list(tax_document_metadata())
%% }
-type tax_registration() :: #{binary() => any()}.


%% Example:
%% turkey_additional_info() :: #{
%%   <<"industries">> => list(any()),
%%   <<"kepEmailId">> => string(),
%%   <<"secondaryTaxId">> => string(),
%%   <<"taxOffice">> => string()
%% }
-type turkey_additional_info() :: #{binary() => any()}.


%% Example:
%% vietnam_additional_info() :: #{
%%   <<"electronicTransactionCodeNumber">> => string(),
%%   <<"enterpriseIdentificationNumber">> => string(),
%%   <<"paymentVoucherNumber">> => string(),
%%   <<"paymentVoucherNumberDate">> => string()
%% }
-type vietnam_additional_info() :: #{binary() => any()}.


%% Example:
%% tax_registration_entry() :: #{
%%   <<"additionalTaxInformation">> => additional_info_request(),
%%   <<"certifiedEmailId">> => string(),
%%   <<"legalAddress">> => address(),
%%   <<"legalName">> => string(),
%%   <<"registrationId">> => string(),
%%   <<"registrationType">> => list(any()),
%%   <<"sector">> => list(any()),
%%   <<"verificationDetails">> => verification_details()
%% }
-type tax_registration_entry() :: #{binary() => any()}.


%% Example:
%% put_tax_exemption_request() :: #{
%%   <<"accountIds">> := list(string()),
%%   <<"authority">> := authority(),
%%   <<"exemptionCertificate">> := exemption_certificate(),
%%   <<"exemptionType">> := string()
%% }
-type put_tax_exemption_request() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% list_supplemental_tax_registrations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_supplemental_tax_registrations_request() :: #{binary() => any()}.


%% Example:
%% tax_registration_with_jurisdiction() :: #{
%%   <<"additionalTaxInformation">> => additional_info_response(),
%%   <<"certifiedEmailId">> => string(),
%%   <<"jurisdiction">> => jurisdiction(),
%%   <<"legalName">> => string(),
%%   <<"registrationId">> => string(),
%%   <<"registrationType">> => list(any()),
%%   <<"sector">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"taxDocumentMetadatas">> => list(tax_document_metadata())
%% }
-type tax_registration_with_jurisdiction() :: #{binary() => any()}.

%% Example:
%% delete_supplemental_tax_registration_response() :: #{}
-type delete_supplemental_tax_registration_response() :: #{}.


%% Example:
%% tax_exemption_details() :: #{
%%   <<"heritageObtainedDetails">> => boolean(),
%%   <<"heritageObtainedParentEntity">> => string(),
%%   <<"heritageObtainedReason">> => string(),
%%   <<"taxExemptions">> => list(tax_exemption())
%% }
-type tax_exemption_details() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% list_supplemental_tax_registrations_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"taxRegistrations">> => list(supplemental_tax_registration())
%% }
-type list_supplemental_tax_registrations_response() :: #{binary() => any()}.

%% Example:
%% get_tax_inheritance_request() :: #{}
-type get_tax_inheritance_request() :: #{}.


%% Example:
%% batch_put_tax_registration_error() :: #{
%%   <<"accountId">> => string(),
%%   <<"code">> => string(),
%%   <<"message">> => string()
%% }
-type batch_put_tax_registration_error() :: #{binary() => any()}.


%% Example:
%% put_tax_inheritance_request() :: #{
%%   <<"heritageStatus">> => list(any())
%% }
-type put_tax_inheritance_request() :: #{binary() => any()}.


%% Example:
%% exemption_certificate() :: #{
%%   <<"documentFile">> => binary(),
%%   <<"documentName">> => string()
%% }
-type exemption_certificate() :: #{binary() => any()}.


%% Example:
%% address() :: #{
%%   <<"addressLine1">> => string(),
%%   <<"addressLine2">> => string(),
%%   <<"addressLine3">> => string(),
%%   <<"city">> => string(),
%%   <<"countryCode">> => string(),
%%   <<"districtOrCounty">> => string(),
%%   <<"postalCode">> => string(),
%%   <<"stateOrRegion">> => string()
%% }
-type address() :: #{binary() => any()}.


%% Example:
%% israel_additional_info() :: #{
%%   <<"customerType">> => list(any()),
%%   <<"dealerType">> => list(any())
%% }
-type israel_additional_info() :: #{binary() => any()}.


%% Example:
%% supplemental_tax_registration() :: #{
%%   <<"address">> => address(),
%%   <<"authorityId">> => string(),
%%   <<"legalName">> => string(),
%%   <<"registrationId">> => string(),
%%   <<"registrationType">> => list(any()),
%%   <<"status">> => list(any())
%% }
-type supplemental_tax_registration() :: #{binary() => any()}.


%% Example:
%% jurisdiction() :: #{
%%   <<"countryCode">> => string(),
%%   <<"stateOrRegion">> => string()
%% }
-type jurisdiction() :: #{binary() => any()}.


%% Example:
%% batch_get_tax_exemptions_request() :: #{
%%   <<"accountIds">> := list(string())
%% }
-type batch_get_tax_exemptions_request() :: #{binary() => any()}.


%% Example:
%% account_meta_data() :: #{
%%   <<"accountName">> => string(),
%%   <<"address">> => address(),
%%   <<"addressRoleMap">> => map(),
%%   <<"addressType">> => list(any()),
%%   <<"seller">> => string()
%% }
-type account_meta_data() :: #{binary() => any()}.


%% Example:
%% batch_delete_tax_registration_request() :: #{
%%   <<"accountIds">> := list(string())
%% }
-type batch_delete_tax_registration_request() :: #{binary() => any()}.


%% Example:
%% put_tax_registration_response() :: #{
%%   <<"status">> => list(any())
%% }
-type put_tax_registration_response() :: #{binary() => any()}.


%% Example:
%% get_tax_registration_document_response() :: #{
%%   <<"destinationFilePath">> => string(),
%%   <<"presignedS3Url">> => string()
%% }
-type get_tax_registration_document_response() :: #{binary() => any()}.

-type batch_delete_tax_registration_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type batch_get_tax_exemptions_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type batch_put_tax_registration_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_supplemental_tax_registration_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_tax_registration_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_tax_exemption_types_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_tax_inheritance_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_tax_registration_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_tax_registration_document_errors() ::
    validation_exception() | 
    internal_server_exception().

-type list_supplemental_tax_registrations_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tax_exemptions_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tax_registrations_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_supplemental_tax_registration_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type put_tax_exemption_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    case_creation_limit_exceeded_exception() | 
    attachment_upload_exception().

-type put_tax_inheritance_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type put_tax_registration_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes tax registration for multiple accounts in batch.
%%
%% This can be used to delete tax
%% registrations for up to five accounts in one batch.
%%
%% This API operation can't be used to delete your tax registration in
%% Brazil. Use the Payment preferences:
%% https://console.aws.amazon.com/billing/home#/paymentpreferences/paymentmethods
%% page in the Billing and Cost Management console instead.
-spec batch_delete_tax_registration(aws_client:aws_client(), batch_delete_tax_registration_request()) ->
    {ok, batch_delete_tax_registration_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_tax_registration_errors(), tuple()}.
batch_delete_tax_registration(Client, Input) ->
    batch_delete_tax_registration(Client, Input, []).

-spec batch_delete_tax_registration(aws_client:aws_client(), batch_delete_tax_registration_request(), proplists:proplist()) ->
    {ok, batch_delete_tax_registration_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_tax_registration_errors(), tuple()}.
batch_delete_tax_registration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/BatchDeleteTaxRegistration"],
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

%% @doc Get the active tax exemptions for a given list of accounts.
%%
%% The IAM action is `tax:GetExemptions'.
-spec batch_get_tax_exemptions(aws_client:aws_client(), batch_get_tax_exemptions_request()) ->
    {ok, batch_get_tax_exemptions_response(), tuple()} |
    {error, any()} |
    {error, batch_get_tax_exemptions_errors(), tuple()}.
batch_get_tax_exemptions(Client, Input) ->
    batch_get_tax_exemptions(Client, Input, []).

-spec batch_get_tax_exemptions(aws_client:aws_client(), batch_get_tax_exemptions_request(), proplists:proplist()) ->
    {ok, batch_get_tax_exemptions_response(), tuple()} |
    {error, any()} |
    {error, batch_get_tax_exemptions_errors(), tuple()}.
batch_get_tax_exemptions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/BatchGetTaxExemptions"],
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

%% @doc Adds or updates tax registration for multiple accounts in batch.
%%
%% This can be used to add
%% or update tax registrations for up to five accounts in one batch. You
%% can't set a TRN if there's a pending TRN. You'll need to
%% delete the pending TRN first.
%%
%% To call this API operation for specific countries, see the following
%% country-specific
%% requirements.
%%
%% Bangladesh
%%
%% You must specify the tax registration certificate document in the
%% `taxRegistrationDocuments' field of the `VerificationDetails'
%% object.
%%
%% Brazil
%%
%% You must complete the tax registration process in the Payment preferences:
%% https://console.aws.amazon.com/billing/home#/paymentpreferences/paymentmethods
%% page in the Billing and Cost Management console. After your TRN and
%% billing address are verified, you can call this API operation.
%%
%% For Amazon Web Services accounts created through Organizations, you can
%% call this API operation when you don't have a billing address.
%%
%% Georgia
%%
%% The valid `personType' values are `Physical Person' and
%% `Business'.
%%
%% Indonesia
%%
%% `PutTaxRegistration': The use of this operation to submit tax
%% information is subject to the Amazon Web Services service terms:
%% http://aws.amazon.com/service-terms/. By submitting, you’re providing
%% consent for Amazon Web Services to validate NIK, NPWP, and NITKU data,
%% provided by you with the Directorate General of Taxes of Indonesia in
%% accordance with the Minister of Finance Regulation (PMK) Number
%% 112/PMK.03/2022.
%%
%% `BatchPutTaxRegistration': The use of this operation to submit tax
%% information is subject to the Amazon Web Services service terms:
%% http://aws.amazon.com/service-terms/. By submitting, you’re providing
%% consent for Amazon Web Services to validate NIK, NPWP, and NITKU data,
%% provided by you with the Directorate General of Taxes of Indonesia in
%% accordance with the Minister of Finance Regulation (PMK) Number
%% 112/PMK.03/2022, through our third-party partner PT Achilles Advanced
%% Management (OnlinePajak).
%%
%% You must specify the `taxRegistrationNumberType' in the
%% `indonesiaAdditionalInfo' field of the `additionalTaxInformation'
%% object.
%%
%% If you specify `decisionNumber', you must specify the
%% `ppnExceptionDesignationCode' in the `indonesiaAdditionalInfo'
%% field of the `additionalTaxInformation' object. If the
%% `taxRegistrationNumberType' is set to NPWP or NITKU, valid values for
%% `ppnExceptionDesignationCode' are either `01', `02', `03',
%% `07', or `08'.
%%
%% For other `taxRegistrationNumberType' values,
%% `ppnExceptionDesignationCode' must be either `01', `07', or
%% `08'.
%%
%% If `ppnExceptionDesignationCode' is `07', you must specify the
%% `decisionNumber' in the `indonesiaAdditionalInfo' field of the
%% `additionalTaxInformation' object.
%%
%% Kenya
%%
%% You must specify the `personType' in the `kenyaAdditionalInfo'
%% field of the `additionalTaxInformation' object.
%%
%% If the `personType' is `Physical Person', you must specify the
%% tax registration certificate document in the
%% `taxRegistrationDocuments' field
%% of the `VerificationDetails' object.
%%
%% Malaysia
%%
%% The sector valid values are `Business' and `Individual'.
%%
%% `RegistrationType' valid values are `NRIC' for individual, and TIN
%% and sales and service tax (SST) for Business.
%%
%% For individual, you can specify the `taxInformationNumber' in
%% `MalaysiaAdditionalInfo' with NRIC type, and a valid `MyKad' or
%% NRIC number.
%%
%% For business, you must specify a `businessRegistrationNumber' in
%% `MalaysiaAdditionalInfo' with a TIN type and tax identification
%% number.
%%
%% For business resellers, you must specify a
%% `businessRegistrationNumber' and `taxInformationNumber' in
%% `MalaysiaAdditionalInfo' with a sales and service tax (SST) type and a
%% valid SST number.
%%
%% For business resellers with service codes, you must specify
%% `businessRegistrationNumber', `taxInformationNumber', and distinct
%% `serviceTaxCodes' in `MalaysiaAdditionalInfo' with a SST type and
%% valid sales and service tax (SST) number. By using this API operation,
%% Amazon Web Services registers your self-declaration that you’re an
%% authorized business reseller registered with the Royal Malaysia Customs
%% Department (RMCD), and have a valid SST number.
%%
%% Amazon Web Services reserves the right to seek additional information
%% and/or take other actions to
%% support your self-declaration as appropriate.
%%
%% Amazon Web Services is currently registered under the following service
%% tax codes. You must include
%% at least one of the service tax codes in the service tax code strings to
%% declare yourself
%% as an authorized registered business reseller.
%%
%% Taxable service and service tax codes:
%%
%% Consultancy - 9907061674
%%
%% Training or coaching service - 9907071685
%%
%% IT service - 9907101676
%%
%% Digital services and electronic medium - 9907121690
%%
%% Nepal
%%
%% The sector valid values are `Business' and `Individual'.
%%
%% Saudi Arabia
%%
%% For `address', you must specify `addressLine3'.
%%
%% South Korea
%%
%% You must specify the `certifiedEmailId' and `legalName' in the
%% `TaxRegistrationEntry' object. Use Korean characters for
%% `legalName'.
%%
%% You must specify the `businessRepresentativeName',
%% `itemOfBusiness', and `lineOfBusiness' in the
%% `southKoreaAdditionalInfo' field of the `additionalTaxInformation'
%% object. Use Korean characters for these fields.
%%
%% You must specify the tax registration certificate document in the
%% `taxRegistrationDocuments' field of the `VerificationDetails'
%% object.
%%
%% For the `address' object, use Korean characters for
%% `addressLine1', `addressLine2'
%% `city', `postalCode', and `stateOrRegion'.
%%
%% Spain
%%
%% You must specify the `registrationType' in the
%% `spainAdditionalInfo' field of the `additionalTaxInformation'
%% object.
%%
%% If the `registrationType' is `Local', you must specify the tax
%% registration certificate document in the `taxRegistrationDocuments'
%% field of
%% the `VerificationDetails' object.
%%
%% Turkey
%%
%% You must specify the `sector' in the `taxRegistrationEntry'
%% object.
%%
%% If your `sector' is `Business', `Individual', or
%% `Government':
%%
%% Specify the `taxOffice'. If your
%% `sector' is `Individual', don't enter this value.
%%
%% (Optional) Specify the `kepEmailId'. If your
%% `sector' is `Individual', don't enter this value.
%%
%% Note: In the Tax Settings page of the Billing console, `Government'
%% appears as Public institutions
%%
%% If your `sector' is `Business' and you're subject to KDV tax,
%% you must specify your industry in the `industries' field.
%%
%% For `address', you must specify `districtOrCounty'.
%%
%% Ukraine
%%
%% The sector valid values are `Business' and `Individual'.
-spec batch_put_tax_registration(aws_client:aws_client(), batch_put_tax_registration_request()) ->
    {ok, batch_put_tax_registration_response(), tuple()} |
    {error, any()} |
    {error, batch_put_tax_registration_errors(), tuple()}.
batch_put_tax_registration(Client, Input) ->
    batch_put_tax_registration(Client, Input, []).

-spec batch_put_tax_registration(aws_client:aws_client(), batch_put_tax_registration_request(), proplists:proplist()) ->
    {ok, batch_put_tax_registration_response(), tuple()} |
    {error, any()} |
    {error, batch_put_tax_registration_errors(), tuple()}.
batch_put_tax_registration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/BatchPutTaxRegistration"],
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

%% @doc
%% Deletes a supplemental tax registration for a single account.
-spec delete_supplemental_tax_registration(aws_client:aws_client(), delete_supplemental_tax_registration_request()) ->
    {ok, delete_supplemental_tax_registration_response(), tuple()} |
    {error, any()} |
    {error, delete_supplemental_tax_registration_errors(), tuple()}.
delete_supplemental_tax_registration(Client, Input) ->
    delete_supplemental_tax_registration(Client, Input, []).

-spec delete_supplemental_tax_registration(aws_client:aws_client(), delete_supplemental_tax_registration_request(), proplists:proplist()) ->
    {ok, delete_supplemental_tax_registration_response(), tuple()} |
    {error, any()} |
    {error, delete_supplemental_tax_registration_errors(), tuple()}.
delete_supplemental_tax_registration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteSupplementalTaxRegistration"],
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

%% @doc Deletes tax registration for a single account.
%%
%% This API operation can't be used to delete your tax registration in
%% Brazil. Use the Payment preferences:
%% https://console.aws.amazon.com/billing/home#/paymentpreferences/paymentmethods
%% page in the Billing and Cost Management console instead.
-spec delete_tax_registration(aws_client:aws_client(), delete_tax_registration_request()) ->
    {ok, delete_tax_registration_response(), tuple()} |
    {error, any()} |
    {error, delete_tax_registration_errors(), tuple()}.
delete_tax_registration(Client, Input) ->
    delete_tax_registration(Client, Input, []).

-spec delete_tax_registration(aws_client:aws_client(), delete_tax_registration_request(), proplists:proplist()) ->
    {ok, delete_tax_registration_response(), tuple()} |
    {error, any()} |
    {error, delete_tax_registration_errors(), tuple()}.
delete_tax_registration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteTaxRegistration"],
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

%% @doc Get supported tax exemption types.
%%
%% The IAM action is `tax:GetExemptions'.
-spec get_tax_exemption_types(aws_client:aws_client(), get_tax_exemption_types_request()) ->
    {ok, get_tax_exemption_types_response(), tuple()} |
    {error, any()} |
    {error, get_tax_exemption_types_errors(), tuple()}.
get_tax_exemption_types(Client, Input) ->
    get_tax_exemption_types(Client, Input, []).

-spec get_tax_exemption_types(aws_client:aws_client(), get_tax_exemption_types_request(), proplists:proplist()) ->
    {ok, get_tax_exemption_types_response(), tuple()} |
    {error, any()} |
    {error, get_tax_exemption_types_errors(), tuple()}.
get_tax_exemption_types(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetTaxExemptionTypes"],
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

%% @doc The get account tax inheritance status.
-spec get_tax_inheritance(aws_client:aws_client(), get_tax_inheritance_request()) ->
    {ok, get_tax_inheritance_response(), tuple()} |
    {error, any()} |
    {error, get_tax_inheritance_errors(), tuple()}.
get_tax_inheritance(Client, Input) ->
    get_tax_inheritance(Client, Input, []).

-spec get_tax_inheritance(aws_client:aws_client(), get_tax_inheritance_request(), proplists:proplist()) ->
    {ok, get_tax_inheritance_response(), tuple()} |
    {error, any()} |
    {error, get_tax_inheritance_errors(), tuple()}.
get_tax_inheritance(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetTaxInheritance"],
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

%% @doc Retrieves tax registration for a single account.
-spec get_tax_registration(aws_client:aws_client(), get_tax_registration_request()) ->
    {ok, get_tax_registration_response(), tuple()} |
    {error, any()} |
    {error, get_tax_registration_errors(), tuple()}.
get_tax_registration(Client, Input) ->
    get_tax_registration(Client, Input, []).

-spec get_tax_registration(aws_client:aws_client(), get_tax_registration_request(), proplists:proplist()) ->
    {ok, get_tax_registration_response(), tuple()} |
    {error, any()} |
    {error, get_tax_registration_errors(), tuple()}.
get_tax_registration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetTaxRegistration"],
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

%% @doc Downloads your tax documents to the Amazon S3 bucket that you specify
%% in your
%% request.
-spec get_tax_registration_document(aws_client:aws_client(), get_tax_registration_document_request()) ->
    {ok, get_tax_registration_document_response(), tuple()} |
    {error, any()} |
    {error, get_tax_registration_document_errors(), tuple()}.
get_tax_registration_document(Client, Input) ->
    get_tax_registration_document(Client, Input, []).

-spec get_tax_registration_document(aws_client:aws_client(), get_tax_registration_document_request(), proplists:proplist()) ->
    {ok, get_tax_registration_document_response(), tuple()} |
    {error, any()} |
    {error, get_tax_registration_document_errors(), tuple()}.
get_tax_registration_document(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetTaxRegistrationDocument"],
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

%% @doc
%% Retrieves supplemental tax registrations for a single account.
-spec list_supplemental_tax_registrations(aws_client:aws_client(), list_supplemental_tax_registrations_request()) ->
    {ok, list_supplemental_tax_registrations_response(), tuple()} |
    {error, any()} |
    {error, list_supplemental_tax_registrations_errors(), tuple()}.
list_supplemental_tax_registrations(Client, Input) ->
    list_supplemental_tax_registrations(Client, Input, []).

-spec list_supplemental_tax_registrations(aws_client:aws_client(), list_supplemental_tax_registrations_request(), proplists:proplist()) ->
    {ok, list_supplemental_tax_registrations_response(), tuple()} |
    {error, any()} |
    {error, list_supplemental_tax_registrations_errors(), tuple()}.
list_supplemental_tax_registrations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListSupplementalTaxRegistrations"],
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

%% @doc Retrieves the tax exemption of accounts listed in a consolidated
%% billing family.
%%
%% The IAM action is `tax:GetExemptions'.
-spec list_tax_exemptions(aws_client:aws_client(), list_tax_exemptions_request()) ->
    {ok, list_tax_exemptions_response(), tuple()} |
    {error, any()} |
    {error, list_tax_exemptions_errors(), tuple()}.
list_tax_exemptions(Client, Input) ->
    list_tax_exemptions(Client, Input, []).

-spec list_tax_exemptions(aws_client:aws_client(), list_tax_exemptions_request(), proplists:proplist()) ->
    {ok, list_tax_exemptions_response(), tuple()} |
    {error, any()} |
    {error, list_tax_exemptions_errors(), tuple()}.
list_tax_exemptions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListTaxExemptions"],
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

%% @doc Retrieves the tax registration of accounts listed in a consolidated
%% billing family.
%%
%% This
%% can be used to retrieve up to 100 accounts' tax registrations in one
%% call (default 50).
-spec list_tax_registrations(aws_client:aws_client(), list_tax_registrations_request()) ->
    {ok, list_tax_registrations_response(), tuple()} |
    {error, any()} |
    {error, list_tax_registrations_errors(), tuple()}.
list_tax_registrations(Client, Input) ->
    list_tax_registrations(Client, Input, []).

-spec list_tax_registrations(aws_client:aws_client(), list_tax_registrations_request(), proplists:proplist()) ->
    {ok, list_tax_registrations_response(), tuple()} |
    {error, any()} |
    {error, list_tax_registrations_errors(), tuple()}.
list_tax_registrations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListTaxRegistrations"],
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

%% @doc
%% Stores supplemental tax registration for a single account.
-spec put_supplemental_tax_registration(aws_client:aws_client(), put_supplemental_tax_registration_request()) ->
    {ok, put_supplemental_tax_registration_response(), tuple()} |
    {error, any()} |
    {error, put_supplemental_tax_registration_errors(), tuple()}.
put_supplemental_tax_registration(Client, Input) ->
    put_supplemental_tax_registration(Client, Input, []).

-spec put_supplemental_tax_registration(aws_client:aws_client(), put_supplemental_tax_registration_request(), proplists:proplist()) ->
    {ok, put_supplemental_tax_registration_response(), tuple()} |
    {error, any()} |
    {error, put_supplemental_tax_registration_errors(), tuple()}.
put_supplemental_tax_registration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/PutSupplementalTaxRegistration"],
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

%% @doc Adds the tax exemption for a single account or all accounts listed in
%% a consolidated billing family.
%%
%% The IAM action is `tax:UpdateExemptions'.
-spec put_tax_exemption(aws_client:aws_client(), put_tax_exemption_request()) ->
    {ok, put_tax_exemption_response(), tuple()} |
    {error, any()} |
    {error, put_tax_exemption_errors(), tuple()}.
put_tax_exemption(Client, Input) ->
    put_tax_exemption(Client, Input, []).

-spec put_tax_exemption(aws_client:aws_client(), put_tax_exemption_request(), proplists:proplist()) ->
    {ok, put_tax_exemption_response(), tuple()} |
    {error, any()} |
    {error, put_tax_exemption_errors(), tuple()}.
put_tax_exemption(Client, Input0, Options0) ->
    Method = post,
    Path = ["/PutTaxExemption"],
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

%% @doc The updated tax inheritance status.
-spec put_tax_inheritance(aws_client:aws_client(), put_tax_inheritance_request()) ->
    {ok, put_tax_inheritance_response(), tuple()} |
    {error, any()} |
    {error, put_tax_inheritance_errors(), tuple()}.
put_tax_inheritance(Client, Input) ->
    put_tax_inheritance(Client, Input, []).

-spec put_tax_inheritance(aws_client:aws_client(), put_tax_inheritance_request(), proplists:proplist()) ->
    {ok, put_tax_inheritance_response(), tuple()} |
    {error, any()} |
    {error, put_tax_inheritance_errors(), tuple()}.
put_tax_inheritance(Client, Input0, Options0) ->
    Method = post,
    Path = ["/PutTaxInheritance"],
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

%% @doc Adds or updates tax registration for a single account.
%%
%% You can't set a TRN if there's a pending TRN. You'll need to
%% delete the pending TRN first.
%%
%% To call this API operation for specific countries, see the following
%% country-specific
%% requirements.
%%
%% Bangladesh
%%
%% You must specify the tax registration certificate document in the
%% `taxRegistrationDocuments' field of the `VerificationDetails'
%% object.
%%
%% Brazil
%%
%% You must complete the tax registration process in the Payment preferences:
%% https://console.aws.amazon.com/billing/home#/paymentpreferences/paymentmethods
%% page in the Billing and Cost Management console. After your TRN and
%% billing address are verified, you can call this API operation.
%%
%% For Amazon Web Services accounts created through Organizations, you can
%% call this API operation when you don't have a billing address.
%%
%% Georgia
%%
%% The valid `personType' values are `Physical Person' and
%% `Business'.
%%
%% Indonesia
%%
%% `PutTaxRegistration': The use of this operation to submit tax
%% information is subject to the Amazon Web Services service terms:
%% http://aws.amazon.com/service-terms/. By submitting, you’re providing
%% consent for Amazon Web Services to validate NIK, NPWP, and NITKU data,
%% provided by you with the Directorate General of Taxes of Indonesia in
%% accordance with the Minister of Finance Regulation (PMK) Number
%% 112/PMK.03/2022.
%%
%% `BatchPutTaxRegistration': The use of this operation to submit tax
%% information is subject to the Amazon Web Services service terms:
%% http://aws.amazon.com/service-terms/. By submitting, you’re providing
%% consent for Amazon Web Services to validate NIK, NPWP, and NITKU data,
%% provided by you with the Directorate General of Taxes of Indonesia in
%% accordance with the Minister of Finance Regulation (PMK) Number
%% 112/PMK.03/2022, through our third-party partner PT Achilles Advanced
%% Management (OnlinePajak).
%%
%% You must specify the `taxRegistrationNumberType' in the
%% `indonesiaAdditionalInfo' field of the `additionalTaxInformation'
%% object.
%%
%% If you specify `decisionNumber', you must specify the
%% `ppnExceptionDesignationCode' in the `indonesiaAdditionalInfo'
%% field of the `additionalTaxInformation' object. If the
%% `taxRegistrationNumberType' is set to NPWP or NITKU, valid values for
%% `ppnExceptionDesignationCode' are either `01', `02', `03',
%% `07', or `08'.
%%
%% For other `taxRegistrationNumberType' values,
%% `ppnExceptionDesignationCode' must be either `01', `07', or
%% `08'.
%%
%% If `ppnExceptionDesignationCode' is `07', you must specify the
%% `decisionNumber' in the `indonesiaAdditionalInfo' field of the
%% `additionalTaxInformation' object.
%%
%% Kenya
%%
%% You must specify the `personType' in the `kenyaAdditionalInfo'
%% field of the `additionalTaxInformation' object.
%%
%% If the `personType' is `Physical Person', you must specify the
%% tax registration certificate document in the
%% `taxRegistrationDocuments' field
%% of the `VerificationDetails' object.
%%
%% Malaysia
%%
%% The sector valid values are `Business' and `Individual'.
%%
%% `RegistrationType' valid values are `NRIC' for individual, and TIN
%% and sales and service tax (SST) for Business.
%%
%% For individual, you can specify the `taxInformationNumber' in
%% `MalaysiaAdditionalInfo' with NRIC type, and a valid `MyKad' or
%% NRIC number.
%%
%% For business, you must specify a `businessRegistrationNumber' in
%% `MalaysiaAdditionalInfo' with a TIN type and tax identification
%% number.
%%
%% For business resellers, you must specify a
%% `businessRegistrationNumber' and `taxInformationNumber' in
%% `MalaysiaAdditionalInfo' with a sales and service tax (SST) type and a
%% valid SST number.
%%
%% For business resellers with service codes, you must specify
%% `businessRegistrationNumber', `taxInformationNumber', and distinct
%% `serviceTaxCodes' in `MalaysiaAdditionalInfo' with a SST type and
%% valid sales and service tax (SST) number. By using this API operation,
%% Amazon Web Services registers your self-declaration that you’re an
%% authorized business reseller registered with the Royal Malaysia Customs
%% Department (RMCD), and have a valid SST number.
%%
%% Amazon Web Services reserves the right to seek additional information
%% and/or take other actions to
%% support your self-declaration as appropriate.
%%
%% Amazon Web Services is currently registered under the following service
%% tax codes. You must include
%% at least one of the service tax codes in the service tax code strings to
%% declare yourself
%% as an authorized registered business reseller.
%%
%% Taxable service and service tax codes:
%%
%% Consultancy - 9907061674
%%
%% Training or coaching service - 9907071685
%%
%% IT service - 9907101676
%%
%% Digital services and electronic medium - 9907121690
%%
%% Nepal
%%
%% The sector valid values are `Business' and `Individual'.
%%
%% Saudi Arabia
%%
%% For `address', you must specify `addressLine3'.
%%
%% South Korea
%%
%% You must specify the `certifiedEmailId' and `legalName' in the
%% `TaxRegistrationEntry' object. Use Korean characters for
%% `legalName'.
%%
%% You must specify the `businessRepresentativeName',
%% `itemOfBusiness', and `lineOfBusiness' in the
%% `southKoreaAdditionalInfo' field of the `additionalTaxInformation'
%% object. Use Korean characters for these fields.
%%
%% You must specify the tax registration certificate document in the
%% `taxRegistrationDocuments' field of the `VerificationDetails'
%% object.
%%
%% For the `address' object, use Korean characters for
%% `addressLine1', `addressLine2'
%% `city', `postalCode', and `stateOrRegion'.
%%
%% Spain
%%
%% You must specify the `registrationType' in the
%% `spainAdditionalInfo' field of the `additionalTaxInformation'
%% object.
%%
%% If the `registrationType' is `Local', you must specify the tax
%% registration certificate document in the `taxRegistrationDocuments'
%% field of
%% the `VerificationDetails' object.
%%
%% Turkey
%%
%% You must specify the `sector' in the `taxRegistrationEntry'
%% object.
%%
%% If your `sector' is `Business', `Individual', or
%% `Government':
%%
%% Specify the `taxOffice'. If your
%% `sector' is `Individual', don't enter this value.
%%
%% (Optional) Specify the `kepEmailId'. If your
%% `sector' is `Individual', don't enter this value.
%%
%% Note: In the Tax Settings page of the Billing console, `Government'
%% appears as Public institutions
%%
%% If your `sector' is `Business' and you're subject to KDV tax,
%% you must specify your industry in the `industries' field.
%%
%% For `address', you must specify `districtOrCounty'.
%%
%% Ukraine
%%
%% The sector valid values are `Business' and `Individual'.
-spec put_tax_registration(aws_client:aws_client(), put_tax_registration_request()) ->
    {ok, put_tax_registration_response(), tuple()} |
    {error, any()} |
    {error, put_tax_registration_errors(), tuple()}.
put_tax_registration(Client, Input) ->
    put_tax_registration(Client, Input, []).

-spec put_tax_registration(aws_client:aws_client(), put_tax_registration_request(), proplists:proplist()) ->
    {ok, put_tax_registration_response(), tuple()} |
    {error, any()} |
    {error, put_tax_registration_errors(), tuple()}.
put_tax_registration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/PutTaxRegistration"],
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
    Client1 = Client#{service => <<"tax">>,
                      region => <<"us-east-1">>},
    Host = build_host(<<"tax">>, Client1),
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
build_host(EndpointPrefix, #{endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Endpoint], <<".">>).

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
