%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Route 53 API actions let you register domain names and perform
%% related
%% operations.
-module(aws_route53_domains).

-export([accept_domain_transfer_from_another_aws_account/2,
         accept_domain_transfer_from_another_aws_account/3,
         associate_delegation_signer_to_domain/2,
         associate_delegation_signer_to_domain/3,
         cancel_domain_transfer_to_another_aws_account/2,
         cancel_domain_transfer_to_another_aws_account/3,
         check_domain_availability/2,
         check_domain_availability/3,
         check_domain_transferability/2,
         check_domain_transferability/3,
         delete_domain/2,
         delete_domain/3,
         delete_tags_for_domain/2,
         delete_tags_for_domain/3,
         disable_domain_auto_renew/2,
         disable_domain_auto_renew/3,
         disable_domain_transfer_lock/2,
         disable_domain_transfer_lock/3,
         disassociate_delegation_signer_from_domain/2,
         disassociate_delegation_signer_from_domain/3,
         enable_domain_auto_renew/2,
         enable_domain_auto_renew/3,
         enable_domain_transfer_lock/2,
         enable_domain_transfer_lock/3,
         get_contact_reachability_status/2,
         get_contact_reachability_status/3,
         get_domain_detail/2,
         get_domain_detail/3,
         get_domain_suggestions/2,
         get_domain_suggestions/3,
         get_operation_detail/2,
         get_operation_detail/3,
         list_domains/2,
         list_domains/3,
         list_operations/2,
         list_operations/3,
         list_prices/2,
         list_prices/3,
         list_tags_for_domain/2,
         list_tags_for_domain/3,
         push_domain/2,
         push_domain/3,
         register_domain/2,
         register_domain/3,
         reject_domain_transfer_from_another_aws_account/2,
         reject_domain_transfer_from_another_aws_account/3,
         renew_domain/2,
         renew_domain/3,
         resend_contact_reachability_email/2,
         resend_contact_reachability_email/3,
         resend_operation_authorization/2,
         resend_operation_authorization/3,
         retrieve_domain_auth_code/2,
         retrieve_domain_auth_code/3,
         transfer_domain/2,
         transfer_domain/3,
         transfer_domain_to_another_aws_account/2,
         transfer_domain_to_another_aws_account/3,
         update_domain_contact/2,
         update_domain_contact/3,
         update_domain_contact_privacy/2,
         update_domain_contact_privacy/3,
         update_domain_nameservers/2,
         update_domain_nameservers/3,
         update_tags_for_domain/2,
         update_tags_for_domain/3,
         view_billing/2,
         view_billing/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% check_domain_transferability_request() :: #{
%%   <<"AuthCode">> => string(),
%%   <<"DomainName">> := string()
%% }
-type check_domain_transferability_request() :: #{binary() => any()}.

%% Example:
%% get_domain_detail_response() :: #{
%%   <<"AbuseContactEmail">> => string(),
%%   <<"AbuseContactPhone">> => string(),
%%   <<"AdminContact">> => contact_detail(),
%%   <<"AdminPrivacy">> => boolean(),
%%   <<"AutoRenew">> => boolean(),
%%   <<"BillingContact">> => contact_detail(),
%%   <<"BillingPrivacy">> => boolean(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"DnsSec">> => string(),
%%   <<"DnssecKeys">> => list(dnssec_key()),
%%   <<"DomainName">> => string(),
%%   <<"ExpirationDate">> => non_neg_integer(),
%%   <<"Nameservers">> => list(nameserver()),
%%   <<"RegistrantContact">> => contact_detail(),
%%   <<"RegistrantPrivacy">> => boolean(),
%%   <<"RegistrarName">> => string(),
%%   <<"RegistrarUrl">> => string(),
%%   <<"RegistryDomainId">> => string(),
%%   <<"Reseller">> => string(),
%%   <<"StatusList">> => list(string()),
%%   <<"TechContact">> => contact_detail(),
%%   <<"TechPrivacy">> => boolean(),
%%   <<"UpdatedDate">> => non_neg_integer(),
%%   <<"WhoIsServer">> => string()
%% }
-type get_domain_detail_response() :: #{binary() => any()}.

%% Example:
%% disable_domain_auto_renew_request() :: #{
%%   <<"DomainName">> := string()
%% }
-type disable_domain_auto_renew_request() :: #{binary() => any()}.

%% Example:
%% delete_domain_response() :: #{
%%   <<"OperationId">> => string()
%% }
-type delete_domain_response() :: #{binary() => any()}.

%% Example:
%% get_operation_detail_request() :: #{
%%   <<"OperationId">> := string()
%% }
-type get_operation_detail_request() :: #{binary() => any()}.

%% Example:
%% check_domain_transferability_response() :: #{
%%   <<"Message">> => string(),
%%   <<"Transferability">> => domain_transferability()
%% }
-type check_domain_transferability_response() :: #{binary() => any()}.

%% Example:
%% reject_domain_transfer_from_another_aws_account_response() :: #{
%%   <<"OperationId">> => string()
%% }
-type reject_domain_transfer_from_another_aws_account_response() :: #{binary() => any()}.

%% Example:
%% check_domain_availability_response() :: #{
%%   <<"Availability">> => list(any())
%% }
-type check_domain_availability_response() :: #{binary() => any()}.

%% Example:
%% update_domain_nameservers_response() :: #{
%%   <<"OperationId">> => string()
%% }
-type update_domain_nameservers_response() :: #{binary() => any()}.

%% Example:
%% update_domain_contact_response() :: #{
%%   <<"OperationId">> => string()
%% }
-type update_domain_contact_response() :: #{binary() => any()}.

%% Example:
%% filter_condition() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Operator">> => list(any()),
%%   <<"Values">> => list(string())
%% }
-type filter_condition() :: #{binary() => any()}.

%% Example:
%% invalid_input() :: #{
%%   <<"message">> => string()
%% }
-type invalid_input() :: #{binary() => any()}.

%% Example:
%% domain_transferability() :: #{
%%   <<"Transferable">> => list(any())
%% }
-type domain_transferability() :: #{binary() => any()}.

%% Example:
%% nameserver() :: #{
%%   <<"GlueIps">> => list(string()),
%%   <<"Name">> => string()
%% }
-type nameserver() :: #{binary() => any()}.

%% Example:
%% list_prices_response() :: #{
%%   <<"NextPageMarker">> => string(),
%%   <<"Prices">> => list(domain_price())
%% }
-type list_prices_response() :: #{binary() => any()}.

%% Example:
%% billing_record() :: #{
%%   <<"BillDate">> => non_neg_integer(),
%%   <<"DomainName">> => string(),
%%   <<"InvoiceId">> => string(),
%%   <<"Operation">> => list(any()),
%%   <<"Price">> => float()
%% }
-type billing_record() :: #{binary() => any()}.

%% Example:
%% dnssec_key() :: #{
%%   <<"Algorithm">> => integer(),
%%   <<"Digest">> => string(),
%%   <<"DigestType">> => integer(),
%%   <<"Flags">> => integer(),
%%   <<"Id">> => string(),
%%   <<"KeyTag">> => integer(),
%%   <<"PublicKey">> => string()
%% }
-type dnssec_key() :: #{binary() => any()}.

%% Example:
%% get_contact_reachability_status_response() :: #{
%%   <<"domainName">> => string(),
%%   <<"status">> => list(any())
%% }
-type get_contact_reachability_status_response() :: #{binary() => any()}.

%% Example:
%% domain_summary() :: #{
%%   <<"AutoRenew">> => boolean(),
%%   <<"DomainName">> => string(),
%%   <<"Expiry">> => non_neg_integer(),
%%   <<"TransferLock">> => boolean()
%% }
-type domain_summary() :: #{binary() => any()}.

%% Example:
%% get_domain_detail_request() :: #{
%%   <<"DomainName">> := string()
%% }
-type get_domain_detail_request() :: #{binary() => any()}.

%% Example:
%% contact_detail() :: #{
%%   <<"AddressLine1">> => string(),
%%   <<"AddressLine2">> => string(),
%%   <<"City">> => string(),
%%   <<"ContactType">> => list(any()),
%%   <<"CountryCode">> => list(any()),
%%   <<"Email">> => string(),
%%   <<"ExtraParams">> => list(extra_param()),
%%   <<"Fax">> => string(),
%%   <<"FirstName">> => string(),
%%   <<"LastName">> => string(),
%%   <<"OrganizationName">> => string(),
%%   <<"PhoneNumber">> => string(),
%%   <<"State">> => string(),
%%   <<"ZipCode">> => string()
%% }
-type contact_detail() :: #{binary() => any()}.

%% Example:
%% list_tags_for_domain_response() :: #{
%%   <<"TagList">> => list(tag())
%% }
-type list_tags_for_domain_response() :: #{binary() => any()}.

%% Example:
%% register_domain_request() :: #{
%%   <<"AdminContact">> := contact_detail(),
%%   <<"AutoRenew">> => boolean(),
%%   <<"BillingContact">> => contact_detail(),
%%   <<"DomainName">> := string(),
%%   <<"DurationInYears">> := integer(),
%%   <<"IdnLangCode">> => string(),
%%   <<"PrivacyProtectAdminContact">> => boolean(),
%%   <<"PrivacyProtectBillingContact">> => boolean(),
%%   <<"PrivacyProtectRegistrantContact">> => boolean(),
%%   <<"PrivacyProtectTechContact">> => boolean(),
%%   <<"RegistrantContact">> := contact_detail(),
%%   <<"TechContact">> := contact_detail()
%% }
-type register_domain_request() :: #{binary() => any()}.

%% Example:
%% extra_param() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Value">> => string()
%% }
-type extra_param() :: #{binary() => any()}.

%% Example:
%% delete_tags_for_domain_response() :: #{

%% }
-type delete_tags_for_domain_response() :: #{binary() => any()}.

%% Example:
%% update_domain_nameservers_request() :: #{
%%   <<"DomainName">> := string(),
%%   <<"FIAuthKey">> => string(),
%%   <<"Nameservers">> := list(nameserver())
%% }
-type update_domain_nameservers_request() :: #{binary() => any()}.

%% Example:
%% accept_domain_transfer_from_another_aws_account_request() :: #{
%%   <<"DomainName">> := string(),
%%   <<"Password">> := string()
%% }
-type accept_domain_transfer_from_another_aws_account_request() :: #{binary() => any()}.

%% Example:
%% register_domain_response() :: #{
%%   <<"OperationId">> => string()
%% }
-type register_domain_response() :: #{binary() => any()}.

%% Example:
%% operation_summary() :: #{
%%   <<"DomainName">> => string(),
%%   <<"LastUpdatedDate">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"OperationId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusFlag">> => list(any()),
%%   <<"SubmittedDate">> => non_neg_integer(),
%%   <<"Type">> => list(any())
%% }
-type operation_summary() :: #{binary() => any()}.

%% Example:
%% transfer_domain_to_another_aws_account_response() :: #{
%%   <<"OperationId">> => string(),
%%   <<"Password">> => string()
%% }
-type transfer_domain_to_another_aws_account_response() :: #{binary() => any()}.

%% Example:
%% operation_limit_exceeded() :: #{
%%   <<"message">> => string()
%% }
-type operation_limit_exceeded() :: #{binary() => any()}.

%% Example:
%% enable_domain_auto_renew_request() :: #{
%%   <<"DomainName">> := string()
%% }
-type enable_domain_auto_renew_request() :: #{binary() => any()}.

%% Example:
%% disable_domain_transfer_lock_response() :: #{
%%   <<"OperationId">> => string()
%% }
-type disable_domain_transfer_lock_response() :: #{binary() => any()}.

%% Example:
%% get_domain_suggestions_response() :: #{
%%   <<"SuggestionsList">> => list(domain_suggestion())
%% }
-type get_domain_suggestions_response() :: #{binary() => any()}.

%% Example:
%% update_tags_for_domain_response() :: #{

%% }
-type update_tags_for_domain_response() :: #{binary() => any()}.

%% Example:
%% transfer_domain_request() :: #{
%%   <<"AdminContact">> := contact_detail(),
%%   <<"AuthCode">> => string(),
%%   <<"AutoRenew">> => boolean(),
%%   <<"BillingContact">> => contact_detail(),
%%   <<"DomainName">> := string(),
%%   <<"DurationInYears">> := integer(),
%%   <<"IdnLangCode">> => string(),
%%   <<"Nameservers">> => list(nameserver()),
%%   <<"PrivacyProtectAdminContact">> => boolean(),
%%   <<"PrivacyProtectBillingContact">> => boolean(),
%%   <<"PrivacyProtectRegistrantContact">> => boolean(),
%%   <<"PrivacyProtectTechContact">> => boolean(),
%%   <<"RegistrantContact">> := contact_detail(),
%%   <<"TechContact">> := contact_detail()
%% }
-type transfer_domain_request() :: #{binary() => any()}.

%% Example:
%% enable_domain_transfer_lock_request() :: #{
%%   <<"DomainName">> := string()
%% }
-type enable_domain_transfer_lock_request() :: #{binary() => any()}.

%% Example:
%% disable_domain_auto_renew_response() :: #{

%% }
-type disable_domain_auto_renew_response() :: #{binary() => any()}.

%% Example:
%% domain_suggestion() :: #{
%%   <<"Availability">> => string(),
%%   <<"DomainName">> => string()
%% }
-type domain_suggestion() :: #{binary() => any()}.

%% Example:
%% view_billing_response() :: #{
%%   <<"BillingRecords">> => list(billing_record()),
%%   <<"NextPageMarker">> => string()
%% }
-type view_billing_response() :: #{binary() => any()}.

%% Example:
%% update_domain_contact_privacy_request() :: #{
%%   <<"AdminPrivacy">> => boolean(),
%%   <<"BillingPrivacy">> => boolean(),
%%   <<"DomainName">> := string(),
%%   <<"RegistrantPrivacy">> => boolean(),
%%   <<"TechPrivacy">> => boolean()
%% }
-type update_domain_contact_privacy_request() :: #{binary() => any()}.

%% Example:
%% delete_domain_request() :: #{
%%   <<"DomainName">> := string()
%% }
-type delete_domain_request() :: #{binary() => any()}.

%% Example:
%% resend_contact_reachability_email_request() :: #{
%%   <<"domainName">> => string()
%% }
-type resend_contact_reachability_email_request() :: #{binary() => any()}.

%% Example:
%% update_tags_for_domain_request() :: #{
%%   <<"DomainName">> := string(),
%%   <<"TagsToUpdate">> => list(tag())
%% }
-type update_tags_for_domain_request() :: #{binary() => any()}.

%% Example:
%% accept_domain_transfer_from_another_aws_account_response() :: #{
%%   <<"OperationId">> => string()
%% }
-type accept_domain_transfer_from_another_aws_account_response() :: #{binary() => any()}.

%% Example:
%% list_operations_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"Status">> => list(list(any())()),
%%   <<"SubmittedSince">> => non_neg_integer(),
%%   <<"Type">> => list(list(any())())
%% }
-type list_operations_request() :: #{binary() => any()}.

%% Example:
%% dnssec_signing_attributes() :: #{
%%   <<"Algorithm">> => integer(),
%%   <<"Flags">> => integer(),
%%   <<"PublicKey">> => string()
%% }
-type dnssec_signing_attributes() :: #{binary() => any()}.

%% Example:
%% get_operation_detail_response() :: #{
%%   <<"DomainName">> => string(),
%%   <<"LastUpdatedDate">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"OperationId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusFlag">> => list(any()),
%%   <<"SubmittedDate">> => non_neg_integer(),
%%   <<"Type">> => list(any())
%% }
-type get_operation_detail_response() :: #{binary() => any()}.

%% Example:
%% retrieve_domain_auth_code_response() :: #{
%%   <<"AuthCode">> => string()
%% }
-type retrieve_domain_auth_code_response() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% view_billing_request() :: #{
%%   <<"End">> => non_neg_integer(),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"Start">> => non_neg_integer()
%% }
-type view_billing_request() :: #{binary() => any()}.

%% Example:
%% list_domains_response() :: #{
%%   <<"Domains">> => list(domain_summary()),
%%   <<"NextPageMarker">> => string()
%% }
-type list_domains_response() :: #{binary() => any()}.

%% Example:
%% associate_delegation_signer_to_domain_response() :: #{
%%   <<"OperationId">> => string()
%% }
-type associate_delegation_signer_to_domain_response() :: #{binary() => any()}.

%% Example:
%% enable_domain_auto_renew_response() :: #{

%% }
-type enable_domain_auto_renew_response() :: #{binary() => any()}.

%% Example:
%% renew_domain_response() :: #{
%%   <<"OperationId">> => string()
%% }
-type renew_domain_response() :: #{binary() => any()}.

%% Example:
%% unsupported_t_l_d() :: #{
%%   <<"message">> => string()
%% }
-type unsupported_t_l_d() :: #{binary() => any()}.

%% Example:
%% duplicate_request() :: #{
%%   <<"message">> => string(),
%%   <<"requestId">> => string()
%% }
-type duplicate_request() :: #{binary() => any()}.

%% Example:
%% t_l_d_rules_violation() :: #{
%%   <<"message">> => string()
%% }
-type t_l_d_rules_violation() :: #{binary() => any()}.

%% Example:
%% enable_domain_transfer_lock_response() :: #{
%%   <<"OperationId">> => string()
%% }
-type enable_domain_transfer_lock_response() :: #{binary() => any()}.

%% Example:
%% update_domain_contact_privacy_response() :: #{
%%   <<"OperationId">> => string()
%% }
-type update_domain_contact_privacy_response() :: #{binary() => any()}.

%% Example:
%% associate_delegation_signer_to_domain_request() :: #{
%%   <<"DomainName">> := string(),
%%   <<"SigningAttributes">> := dnssec_signing_attributes()
%% }
-type associate_delegation_signer_to_domain_request() :: #{binary() => any()}.

%% Example:
%% retrieve_domain_auth_code_request() :: #{
%%   <<"DomainName">> := string()
%% }
-type retrieve_domain_auth_code_request() :: #{binary() => any()}.

%% Example:
%% resend_contact_reachability_email_response() :: #{
%%   <<"domainName">> => string(),
%%   <<"emailAddress">> => string(),
%%   <<"isAlreadyVerified">> => boolean()
%% }
-type resend_contact_reachability_email_response() :: #{binary() => any()}.

%% Example:
%% list_domains_request() :: #{
%%   <<"FilterConditions">> => list(filter_condition()),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"SortCondition">> => sort_condition()
%% }
-type list_domains_request() :: #{binary() => any()}.

%% Example:
%% dnssec_limit_exceeded() :: #{
%%   <<"message">> => string()
%% }
-type dnssec_limit_exceeded() :: #{binary() => any()}.

%% Example:
%% resend_operation_authorization_request() :: #{
%%   <<"OperationId">> := string()
%% }
-type resend_operation_authorization_request() :: #{binary() => any()}.

%% Example:
%% disassociate_delegation_signer_from_domain_response() :: #{
%%   <<"OperationId">> => string()
%% }
-type disassociate_delegation_signer_from_domain_response() :: #{binary() => any()}.

%% Example:
%% list_operations_response() :: #{
%%   <<"NextPageMarker">> => string(),
%%   <<"Operations">> => list(operation_summary())
%% }
-type list_operations_response() :: #{binary() => any()}.

%% Example:
%% update_domain_contact_request() :: #{
%%   <<"AdminContact">> => contact_detail(),
%%   <<"BillingContact">> => contact_detail(),
%%   <<"Consent">> => consent(),
%%   <<"DomainName">> := string(),
%%   <<"RegistrantContact">> => contact_detail(),
%%   <<"TechContact">> => contact_detail()
%% }
-type update_domain_contact_request() :: #{binary() => any()}.

%% Example:
%% cancel_domain_transfer_to_another_aws_account_request() :: #{
%%   <<"DomainName">> := string()
%% }
-type cancel_domain_transfer_to_another_aws_account_request() :: #{binary() => any()}.

%% Example:
%% domain_price() :: #{
%%   <<"ChangeOwnershipPrice">> => price_with_currency(),
%%   <<"Name">> => string(),
%%   <<"RegistrationPrice">> => price_with_currency(),
%%   <<"RenewalPrice">> => price_with_currency(),
%%   <<"RestorationPrice">> => price_with_currency(),
%%   <<"TransferPrice">> => price_with_currency()
%% }
-type domain_price() :: #{binary() => any()}.

%% Example:
%% renew_domain_request() :: #{
%%   <<"CurrentExpiryYear">> := integer(),
%%   <<"DomainName">> := string(),
%%   <<"DurationInYears">> => integer()
%% }
-type renew_domain_request() :: #{binary() => any()}.

%% Example:
%% check_domain_availability_request() :: #{
%%   <<"DomainName">> := string(),
%%   <<"IdnLangCode">> => string()
%% }
-type check_domain_availability_request() :: #{binary() => any()}.

%% Example:
%% delete_tags_for_domain_request() :: #{
%%   <<"DomainName">> := string(),
%%   <<"TagsToDelete">> := list(string())
%% }
-type delete_tags_for_domain_request() :: #{binary() => any()}.

%% Example:
%% push_domain_request() :: #{
%%   <<"DomainName">> := string(),
%%   <<"Target">> := string()
%% }
-type push_domain_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_domain_request() :: #{
%%   <<"DomainName">> := string()
%% }
-type list_tags_for_domain_request() :: #{binary() => any()}.

%% Example:
%% domain_limit_exceeded() :: #{
%%   <<"message">> => string()
%% }
-type domain_limit_exceeded() :: #{binary() => any()}.

%% Example:
%% disable_domain_transfer_lock_request() :: #{
%%   <<"DomainName">> := string()
%% }
-type disable_domain_transfer_lock_request() :: #{binary() => any()}.

%% Example:
%% transfer_domain_to_another_aws_account_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"DomainName">> := string()
%% }
-type transfer_domain_to_another_aws_account_request() :: #{binary() => any()}.

%% Example:
%% get_contact_reachability_status_request() :: #{
%%   <<"domainName">> => string()
%% }
-type get_contact_reachability_status_request() :: #{binary() => any()}.

%% Example:
%% price_with_currency() :: #{
%%   <<"Currency">> => string(),
%%   <<"Price">> => float()
%% }
-type price_with_currency() :: #{binary() => any()}.

%% Example:
%% disassociate_delegation_signer_from_domain_request() :: #{
%%   <<"DomainName">> := string(),
%%   <<"Id">> := string()
%% }
-type disassociate_delegation_signer_from_domain_request() :: #{binary() => any()}.

%% Example:
%% reject_domain_transfer_from_another_aws_account_request() :: #{
%%   <<"DomainName">> := string()
%% }
-type reject_domain_transfer_from_another_aws_account_request() :: #{binary() => any()}.

%% Example:
%% consent() :: #{
%%   <<"Currency">> => string(),
%%   <<"MaxPrice">> => float()
%% }
-type consent() :: #{binary() => any()}.

%% Example:
%% list_prices_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"Tld">> => string()
%% }
-type list_prices_request() :: #{binary() => any()}.

%% Example:
%% cancel_domain_transfer_to_another_aws_account_response() :: #{
%%   <<"OperationId">> => string()
%% }
-type cancel_domain_transfer_to_another_aws_account_response() :: #{binary() => any()}.

%% Example:
%% transfer_domain_response() :: #{
%%   <<"OperationId">> => string()
%% }
-type transfer_domain_response() :: #{binary() => any()}.

%% Example:
%% get_domain_suggestions_request() :: #{
%%   <<"DomainName">> := string(),
%%   <<"OnlyAvailable">> := boolean(),
%%   <<"SuggestionCount">> := integer()
%% }
-type get_domain_suggestions_request() :: #{binary() => any()}.

%% Example:
%% sort_condition() :: #{
%%   <<"Name">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type sort_condition() :: #{binary() => any()}.

-type accept_domain_transfer_from_another_aws_account_errors() ::
    domain_limit_exceeded() | 
    unsupported_t_l_d() | 
    operation_limit_exceeded() | 
    invalid_input().

-type associate_delegation_signer_to_domain_errors() ::
    dnssec_limit_exceeded() | 
    t_l_d_rules_violation() | 
    duplicate_request() | 
    unsupported_t_l_d() | 
    operation_limit_exceeded() | 
    invalid_input().

-type cancel_domain_transfer_to_another_aws_account_errors() ::
    unsupported_t_l_d() | 
    operation_limit_exceeded() | 
    invalid_input().

-type check_domain_availability_errors() ::
    unsupported_t_l_d() | 
    invalid_input().

-type check_domain_transferability_errors() ::
    unsupported_t_l_d() | 
    invalid_input().

-type delete_domain_errors() ::
    t_l_d_rules_violation() | 
    duplicate_request() | 
    unsupported_t_l_d() | 
    invalid_input().

-type delete_tags_for_domain_errors() ::
    unsupported_t_l_d() | 
    operation_limit_exceeded() | 
    invalid_input().

-type disable_domain_auto_renew_errors() ::
    unsupported_t_l_d() | 
    invalid_input().

-type disable_domain_transfer_lock_errors() ::
    t_l_d_rules_violation() | 
    duplicate_request() | 
    unsupported_t_l_d() | 
    operation_limit_exceeded() | 
    invalid_input().

-type disassociate_delegation_signer_from_domain_errors() ::
    t_l_d_rules_violation() | 
    duplicate_request() | 
    unsupported_t_l_d() | 
    operation_limit_exceeded() | 
    invalid_input().

-type enable_domain_auto_renew_errors() ::
    t_l_d_rules_violation() | 
    unsupported_t_l_d() | 
    invalid_input().

-type enable_domain_transfer_lock_errors() ::
    t_l_d_rules_violation() | 
    duplicate_request() | 
    unsupported_t_l_d() | 
    operation_limit_exceeded() | 
    invalid_input().

-type get_contact_reachability_status_errors() ::
    unsupported_t_l_d() | 
    operation_limit_exceeded() | 
    invalid_input().

-type get_domain_detail_errors() ::
    unsupported_t_l_d() | 
    invalid_input().

-type get_domain_suggestions_errors() ::
    unsupported_t_l_d() | 
    invalid_input().

-type get_operation_detail_errors() ::
    invalid_input().

-type list_domains_errors() ::
    invalid_input().

-type list_operations_errors() ::
    invalid_input().

-type list_prices_errors() ::
    unsupported_t_l_d() | 
    invalid_input().

-type list_tags_for_domain_errors() ::
    unsupported_t_l_d() | 
    operation_limit_exceeded() | 
    invalid_input().

-type push_domain_errors() ::
    unsupported_t_l_d() | 
    operation_limit_exceeded() | 
    invalid_input().

-type register_domain_errors() ::
    domain_limit_exceeded() | 
    t_l_d_rules_violation() | 
    duplicate_request() | 
    unsupported_t_l_d() | 
    operation_limit_exceeded() | 
    invalid_input().

-type reject_domain_transfer_from_another_aws_account_errors() ::
    unsupported_t_l_d() | 
    operation_limit_exceeded() | 
    invalid_input().

-type renew_domain_errors() ::
    t_l_d_rules_violation() | 
    duplicate_request() | 
    unsupported_t_l_d() | 
    operation_limit_exceeded() | 
    invalid_input().

-type resend_contact_reachability_email_errors() ::
    unsupported_t_l_d() | 
    operation_limit_exceeded() | 
    invalid_input().

-type resend_operation_authorization_errors() ::
    invalid_input().

-type retrieve_domain_auth_code_errors() ::
    unsupported_t_l_d() | 
    invalid_input().

-type transfer_domain_errors() ::
    domain_limit_exceeded() | 
    t_l_d_rules_violation() | 
    duplicate_request() | 
    unsupported_t_l_d() | 
    operation_limit_exceeded() | 
    invalid_input().

-type transfer_domain_to_another_aws_account_errors() ::
    duplicate_request() | 
    unsupported_t_l_d() | 
    operation_limit_exceeded() | 
    invalid_input().

-type update_domain_contact_errors() ::
    t_l_d_rules_violation() | 
    duplicate_request() | 
    unsupported_t_l_d() | 
    operation_limit_exceeded() | 
    invalid_input().

-type update_domain_contact_privacy_errors() ::
    t_l_d_rules_violation() | 
    duplicate_request() | 
    unsupported_t_l_d() | 
    operation_limit_exceeded() | 
    invalid_input().

-type update_domain_nameservers_errors() ::
    t_l_d_rules_violation() | 
    duplicate_request() | 
    unsupported_t_l_d() | 
    operation_limit_exceeded() | 
    invalid_input().

-type update_tags_for_domain_errors() ::
    unsupported_t_l_d() | 
    operation_limit_exceeded() | 
    invalid_input().

-type view_billing_errors() ::
    invalid_input().

%%====================================================================
%% API
%%====================================================================

%% @doc Accepts the transfer of a domain from another Amazon Web Services
%% account to the
%% currentAmazon Web Services account.
%%
%% You initiate a transfer between Amazon Web Services accounts using
%% TransferDomainToAnotherAwsAccount:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html.
%%
%% If you use the CLI command at
%% accept-domain-transfer-from-another-aws-account:
%% https://docs.aws.amazon.com/cli/latest/reference/route53domains/accept-domain-transfer-from-another-aws-account.html,
%% use JSON format as input
%% instead of text because otherwise CLI will throw an error from domain
%% transfer input that includes single quotes.
%%
%% Use either ListOperations:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ListOperations.html
%% or GetOperationDetail:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html
%% to determine whether the operation succeeded. GetOperationDetail:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html
%% provides additional information, for example,
%% `Domain Transfer from Aws Account 111122223333 has been cancelled'.
-spec accept_domain_transfer_from_another_aws_account(aws_client:aws_client(), accept_domain_transfer_from_another_aws_account_request()) ->
    {ok, accept_domain_transfer_from_another_aws_account_response(), tuple()} |
    {error, any()} |
    {error, accept_domain_transfer_from_another_aws_account_errors(), tuple()}.
accept_domain_transfer_from_another_aws_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_domain_transfer_from_another_aws_account(Client, Input, []).

-spec accept_domain_transfer_from_another_aws_account(aws_client:aws_client(), accept_domain_transfer_from_another_aws_account_request(), proplists:proplist()) ->
    {ok, accept_domain_transfer_from_another_aws_account_response(), tuple()} |
    {error, any()} |
    {error, accept_domain_transfer_from_another_aws_account_errors(), tuple()}.
accept_domain_transfer_from_another_aws_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptDomainTransferFromAnotherAwsAccount">>, Input, Options).

%% @doc Creates a delegation signer (DS) record in the registry zone for this
%% domain
%% name.
%%
%% Note that creating DS record at the registry impacts DNSSEC validation of
%% your DNS
%% records. This action may render your domain name unavailable on the
%% internet if the
%% steps are completed in the wrong order, or with incorrect timing. For more
%% information
%% about DNSSEC signing, see Configuring DNSSEC
%% signing:
%% https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-configuring-dnssec.html
%% in the Route 53 developer
%% guide.
-spec associate_delegation_signer_to_domain(aws_client:aws_client(), associate_delegation_signer_to_domain_request()) ->
    {ok, associate_delegation_signer_to_domain_response(), tuple()} |
    {error, any()} |
    {error, associate_delegation_signer_to_domain_errors(), tuple()}.
associate_delegation_signer_to_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_delegation_signer_to_domain(Client, Input, []).

-spec associate_delegation_signer_to_domain(aws_client:aws_client(), associate_delegation_signer_to_domain_request(), proplists:proplist()) ->
    {ok, associate_delegation_signer_to_domain_response(), tuple()} |
    {error, any()} |
    {error, associate_delegation_signer_to_domain_errors(), tuple()}.
associate_delegation_signer_to_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateDelegationSignerToDomain">>, Input, Options).

%% @doc Cancels the transfer of a domain from the current Amazon Web Services
%% account to
%% another Amazon Web Services account.
%%
%% You initiate a transfer betweenAmazon Web Services accounts using
%% TransferDomainToAnotherAwsAccount:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html.
%%
%% You must cancel the transfer before the other Amazon Web Services account
%% accepts
%% the transfer using AcceptDomainTransferFromAnotherAwsAccount:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_AcceptDomainTransferFromAnotherAwsAccount.html.
%%
%% Use either ListOperations:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ListOperations.html
%% or GetOperationDetail:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html
%% to determine whether the operation succeeded. GetOperationDetail:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html
%% provides additional information, for example,
%% `Domain Transfer from Aws Account 111122223333 has been cancelled'.
-spec cancel_domain_transfer_to_another_aws_account(aws_client:aws_client(), cancel_domain_transfer_to_another_aws_account_request()) ->
    {ok, cancel_domain_transfer_to_another_aws_account_response(), tuple()} |
    {error, any()} |
    {error, cancel_domain_transfer_to_another_aws_account_errors(), tuple()}.
cancel_domain_transfer_to_another_aws_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_domain_transfer_to_another_aws_account(Client, Input, []).

-spec cancel_domain_transfer_to_another_aws_account(aws_client:aws_client(), cancel_domain_transfer_to_another_aws_account_request(), proplists:proplist()) ->
    {ok, cancel_domain_transfer_to_another_aws_account_response(), tuple()} |
    {error, any()} |
    {error, cancel_domain_transfer_to_another_aws_account_errors(), tuple()}.
cancel_domain_transfer_to_another_aws_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelDomainTransferToAnotherAwsAccount">>, Input, Options).

%% @doc This operation checks the availability of one domain name.
%%
%% Note that if the
%% availability status of a domain is pending, you must submit another
%% request to determine
%% the availability of the domain name.
-spec check_domain_availability(aws_client:aws_client(), check_domain_availability_request()) ->
    {ok, check_domain_availability_response(), tuple()} |
    {error, any()} |
    {error, check_domain_availability_errors(), tuple()}.
check_domain_availability(Client, Input)
  when is_map(Client), is_map(Input) ->
    check_domain_availability(Client, Input, []).

-spec check_domain_availability(aws_client:aws_client(), check_domain_availability_request(), proplists:proplist()) ->
    {ok, check_domain_availability_response(), tuple()} |
    {error, any()} |
    {error, check_domain_availability_errors(), tuple()}.
check_domain_availability(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CheckDomainAvailability">>, Input, Options).

%% @doc Checks whether a domain name can be transferred to Amazon Route 53.
-spec check_domain_transferability(aws_client:aws_client(), check_domain_transferability_request()) ->
    {ok, check_domain_transferability_response(), tuple()} |
    {error, any()} |
    {error, check_domain_transferability_errors(), tuple()}.
check_domain_transferability(Client, Input)
  when is_map(Client), is_map(Input) ->
    check_domain_transferability(Client, Input, []).

-spec check_domain_transferability(aws_client:aws_client(), check_domain_transferability_request(), proplists:proplist()) ->
    {ok, check_domain_transferability_response(), tuple()} |
    {error, any()} |
    {error, check_domain_transferability_errors(), tuple()}.
check_domain_transferability(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CheckDomainTransferability">>, Input, Options).

%% @doc This operation deletes the specified domain.
%%
%% This action is permanent. For more
%% information, see Deleting a domain name
%% registration:
%% https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-delete.html.
%%
%% To transfer the domain registration to another registrar, use the transfer
%% process
%% that’s provided by the registrar to which you want to transfer the
%% registration.
%% Otherwise, the following apply:
%%
%% You can’t get a refund for the cost of a deleted domain registration.
%%
%% The registry for the top-level domain might hold the domain name for a
%% brief
%% time before releasing it for other users to register (varies by registry).
%%
%% When the registration has been deleted, we'll send you a confirmation
%% to the
%% registrant contact. The email will come from
%% `noreply@domainnameverification.net' or
%% `noreply@registrar.amazon.com'.
-spec delete_domain(aws_client:aws_client(), delete_domain_request()) ->
    {ok, delete_domain_response(), tuple()} |
    {error, any()} |
    {error, delete_domain_errors(), tuple()}.
delete_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_domain(Client, Input, []).

-spec delete_domain(aws_client:aws_client(), delete_domain_request(), proplists:proplist()) ->
    {ok, delete_domain_response(), tuple()} |
    {error, any()} |
    {error, delete_domain_errors(), tuple()}.
delete_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDomain">>, Input, Options).

%% @doc This operation deletes the specified tags for a domain.
%%
%% All tag operations are eventually consistent; subsequent operations might
%% not
%% immediately represent all issued operations.
-spec delete_tags_for_domain(aws_client:aws_client(), delete_tags_for_domain_request()) ->
    {ok, delete_tags_for_domain_response(), tuple()} |
    {error, any()} |
    {error, delete_tags_for_domain_errors(), tuple()}.
delete_tags_for_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_tags_for_domain(Client, Input, []).

-spec delete_tags_for_domain(aws_client:aws_client(), delete_tags_for_domain_request(), proplists:proplist()) ->
    {ok, delete_tags_for_domain_response(), tuple()} |
    {error, any()} |
    {error, delete_tags_for_domain_errors(), tuple()}.
delete_tags_for_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTagsForDomain">>, Input, Options).

%% @doc This operation disables automatic renewal of domain registration for
%% the specified
%% domain.
-spec disable_domain_auto_renew(aws_client:aws_client(), disable_domain_auto_renew_request()) ->
    {ok, disable_domain_auto_renew_response(), tuple()} |
    {error, any()} |
    {error, disable_domain_auto_renew_errors(), tuple()}.
disable_domain_auto_renew(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_domain_auto_renew(Client, Input, []).

-spec disable_domain_auto_renew(aws_client:aws_client(), disable_domain_auto_renew_request(), proplists:proplist()) ->
    {ok, disable_domain_auto_renew_response(), tuple()} |
    {error, any()} |
    {error, disable_domain_auto_renew_errors(), tuple()}.
disable_domain_auto_renew(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableDomainAutoRenew">>, Input, Options).

%% @doc This operation removes the transfer lock on the domain (specifically
%% the
%% `clientTransferProhibited' status) to allow domain transfers.
%%
%% We
%% recommend you refrain from performing this action unless you intend to
%% transfer the
%% domain to a different registrar. Successful submission returns an
%% operation ID that you
%% can use to track the progress and completion of the action. If the request
%% is not
%% completed successfully, the domain registrant will be notified by email.
-spec disable_domain_transfer_lock(aws_client:aws_client(), disable_domain_transfer_lock_request()) ->
    {ok, disable_domain_transfer_lock_response(), tuple()} |
    {error, any()} |
    {error, disable_domain_transfer_lock_errors(), tuple()}.
disable_domain_transfer_lock(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_domain_transfer_lock(Client, Input, []).

-spec disable_domain_transfer_lock(aws_client:aws_client(), disable_domain_transfer_lock_request(), proplists:proplist()) ->
    {ok, disable_domain_transfer_lock_response(), tuple()} |
    {error, any()} |
    {error, disable_domain_transfer_lock_errors(), tuple()}.
disable_domain_transfer_lock(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableDomainTransferLock">>, Input, Options).

%% @doc Deletes a delegation signer (DS) record in the registry zone for this
%% domain
%% name.
-spec disassociate_delegation_signer_from_domain(aws_client:aws_client(), disassociate_delegation_signer_from_domain_request()) ->
    {ok, disassociate_delegation_signer_from_domain_response(), tuple()} |
    {error, any()} |
    {error, disassociate_delegation_signer_from_domain_errors(), tuple()}.
disassociate_delegation_signer_from_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_delegation_signer_from_domain(Client, Input, []).

-spec disassociate_delegation_signer_from_domain(aws_client:aws_client(), disassociate_delegation_signer_from_domain_request(), proplists:proplist()) ->
    {ok, disassociate_delegation_signer_from_domain_response(), tuple()} |
    {error, any()} |
    {error, disassociate_delegation_signer_from_domain_errors(), tuple()}.
disassociate_delegation_signer_from_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateDelegationSignerFromDomain">>, Input, Options).

%% @doc This operation configures Amazon Route 53 to automatically renew the
%% specified domain
%% before the domain registration expires.
%%
%% The cost of renewing your domain registration is
%% billed to your Amazon Web Services account.
%%
%% The period during which you can renew a domain name varies by TLD. For a
%% list of TLDs
%% and their renewal policies, see Domains That You Can
%% Register with Amazon Route 53:
%% https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html
%% in the Amazon Route 53 Developer
%% Guide. Route 53 requires that you renew before the end of the renewal
%% period so we can complete processing before the deadline.
-spec enable_domain_auto_renew(aws_client:aws_client(), enable_domain_auto_renew_request()) ->
    {ok, enable_domain_auto_renew_response(), tuple()} |
    {error, any()} |
    {error, enable_domain_auto_renew_errors(), tuple()}.
enable_domain_auto_renew(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_domain_auto_renew(Client, Input, []).

-spec enable_domain_auto_renew(aws_client:aws_client(), enable_domain_auto_renew_request(), proplists:proplist()) ->
    {ok, enable_domain_auto_renew_response(), tuple()} |
    {error, any()} |
    {error, enable_domain_auto_renew_errors(), tuple()}.
enable_domain_auto_renew(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableDomainAutoRenew">>, Input, Options).

%% @doc This operation sets the transfer lock on the domain (specifically the
%% `clientTransferProhibited' status) to prevent domain transfers.
%%
%% Successful submission returns an operation ID that you can use to track
%% the progress and
%% completion of the action. If the request is not completed successfully,
%% the domain
%% registrant will be notified by email.
-spec enable_domain_transfer_lock(aws_client:aws_client(), enable_domain_transfer_lock_request()) ->
    {ok, enable_domain_transfer_lock_response(), tuple()} |
    {error, any()} |
    {error, enable_domain_transfer_lock_errors(), tuple()}.
enable_domain_transfer_lock(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_domain_transfer_lock(Client, Input, []).

-spec enable_domain_transfer_lock(aws_client:aws_client(), enable_domain_transfer_lock_request(), proplists:proplist()) ->
    {ok, enable_domain_transfer_lock_response(), tuple()} |
    {error, any()} |
    {error, enable_domain_transfer_lock_errors(), tuple()}.
enable_domain_transfer_lock(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableDomainTransferLock">>, Input, Options).

%% @doc For operations that require confirmation that the email address for
%% the registrant
%% contact is valid, such as registering a new domain, this operation returns
%% information
%% about whether the registrant contact has responded.
%%
%% If you want us to resend the email, use the
%% `ResendContactReachabilityEmail' operation.
-spec get_contact_reachability_status(aws_client:aws_client(), get_contact_reachability_status_request()) ->
    {ok, get_contact_reachability_status_response(), tuple()} |
    {error, any()} |
    {error, get_contact_reachability_status_errors(), tuple()}.
get_contact_reachability_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_contact_reachability_status(Client, Input, []).

-spec get_contact_reachability_status(aws_client:aws_client(), get_contact_reachability_status_request(), proplists:proplist()) ->
    {ok, get_contact_reachability_status_response(), tuple()} |
    {error, any()} |
    {error, get_contact_reachability_status_errors(), tuple()}.
get_contact_reachability_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetContactReachabilityStatus">>, Input, Options).

%% @doc This operation returns detailed information about a specified domain
%% that is
%% associated with the current Amazon Web Services account.
%%
%% Contact information for the
%% domain is also returned as part of the output.
-spec get_domain_detail(aws_client:aws_client(), get_domain_detail_request()) ->
    {ok, get_domain_detail_response(), tuple()} |
    {error, any()} |
    {error, get_domain_detail_errors(), tuple()}.
get_domain_detail(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_domain_detail(Client, Input, []).

-spec get_domain_detail(aws_client:aws_client(), get_domain_detail_request(), proplists:proplist()) ->
    {ok, get_domain_detail_response(), tuple()} |
    {error, any()} |
    {error, get_domain_detail_errors(), tuple()}.
get_domain_detail(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDomainDetail">>, Input, Options).

%% @doc The GetDomainSuggestions operation returns a list of suggested domain
%% names.
-spec get_domain_suggestions(aws_client:aws_client(), get_domain_suggestions_request()) ->
    {ok, get_domain_suggestions_response(), tuple()} |
    {error, any()} |
    {error, get_domain_suggestions_errors(), tuple()}.
get_domain_suggestions(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_domain_suggestions(Client, Input, []).

-spec get_domain_suggestions(aws_client:aws_client(), get_domain_suggestions_request(), proplists:proplist()) ->
    {ok, get_domain_suggestions_response(), tuple()} |
    {error, any()} |
    {error, get_domain_suggestions_errors(), tuple()}.
get_domain_suggestions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDomainSuggestions">>, Input, Options).

%% @doc This operation returns the current status of an operation that is not
%% completed.
-spec get_operation_detail(aws_client:aws_client(), get_operation_detail_request()) ->
    {ok, get_operation_detail_response(), tuple()} |
    {error, any()} |
    {error, get_operation_detail_errors(), tuple()}.
get_operation_detail(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_operation_detail(Client, Input, []).

-spec get_operation_detail(aws_client:aws_client(), get_operation_detail_request(), proplists:proplist()) ->
    {ok, get_operation_detail_response(), tuple()} |
    {error, any()} |
    {error, get_operation_detail_errors(), tuple()}.
get_operation_detail(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOperationDetail">>, Input, Options).

%% @doc This operation returns all the domain names registered with Amazon
%% Route 53 for the
%% current Amazon Web Services account if no filtering conditions are used.
-spec list_domains(aws_client:aws_client(), list_domains_request()) ->
    {ok, list_domains_response(), tuple()} |
    {error, any()} |
    {error, list_domains_errors(), tuple()}.
list_domains(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_domains(Client, Input, []).

-spec list_domains(aws_client:aws_client(), list_domains_request(), proplists:proplist()) ->
    {ok, list_domains_response(), tuple()} |
    {error, any()} |
    {error, list_domains_errors(), tuple()}.
list_domains(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDomains">>, Input, Options).

%% @doc Returns information about all of the operations that return an
%% operation ID and that
%% have ever been performed on domains that were registered by the current
%% account.
%%
%% This command runs only in the us-east-1 Region.
-spec list_operations(aws_client:aws_client(), list_operations_request()) ->
    {ok, list_operations_response(), tuple()} |
    {error, any()} |
    {error, list_operations_errors(), tuple()}.
list_operations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_operations(Client, Input, []).

-spec list_operations(aws_client:aws_client(), list_operations_request(), proplists:proplist()) ->
    {ok, list_operations_response(), tuple()} |
    {error, any()} |
    {error, list_operations_errors(), tuple()}.
list_operations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOperations">>, Input, Options).

%% @doc Lists the following prices for either all the TLDs supported by
%% Route 53, or
%% the specified TLD:
%%
%% Registration
%%
%% Transfer
%%
%% Owner change
%%
%% Domain renewal
%%
%% Domain restoration
-spec list_prices(aws_client:aws_client(), list_prices_request()) ->
    {ok, list_prices_response(), tuple()} |
    {error, any()} |
    {error, list_prices_errors(), tuple()}.
list_prices(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_prices(Client, Input, []).

-spec list_prices(aws_client:aws_client(), list_prices_request(), proplists:proplist()) ->
    {ok, list_prices_response(), tuple()} |
    {error, any()} |
    {error, list_prices_errors(), tuple()}.
list_prices(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPrices">>, Input, Options).

%% @doc This operation returns all of the tags that are associated with the
%% specified
%% domain.
%%
%% All tag operations are eventually consistent; subsequent operations might
%% not
%% immediately represent all issued operations.
-spec list_tags_for_domain(aws_client:aws_client(), list_tags_for_domain_request()) ->
    {ok, list_tags_for_domain_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_domain_errors(), tuple()}.
list_tags_for_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_domain(Client, Input, []).

-spec list_tags_for_domain(aws_client:aws_client(), list_tags_for_domain_request(), proplists:proplist()) ->
    {ok, list_tags_for_domain_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_domain_errors(), tuple()}.
list_tags_for_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForDomain">>, Input, Options).

%% @doc Moves a domain from Amazon Web Services to another registrar.
%%
%% Supported actions:
%%
%% Changes the IPS tags of a .uk domain, and pushes it to transit. Transit
%% means
%% that the domain is ready to be transferred to another registrar.
-spec push_domain(aws_client:aws_client(), push_domain_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, push_domain_errors(), tuple()}.
push_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    push_domain(Client, Input, []).

-spec push_domain(aws_client:aws_client(), push_domain_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, push_domain_errors(), tuple()}.
push_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PushDomain">>, Input, Options).

%% @doc This operation registers a domain.
%%
%% For some top-level domains (TLDs), this operation
%% requires extra parameters.
%%
%% When you register a domain, Amazon Route 53 does the following:
%%
%% Creates a Route 53 hosted zone that has the same name as the domain. Route
%% 53
%% assigns four name servers to your hosted zone and automatically updates
%% your
%% domain registration with the names of these name servers.
%%
%% Enables auto renew, so your domain registration will renew automatically
%% each
%% year. We'll notify you in advance of the renewal date so you can
%% choose whether
%% to renew the registration.
%%
%% Optionally enables privacy protection, so WHOIS queries return contact for
%% the registrar
%% or the phrase &quot;REDACTED FOR PRIVACY&quot;, or &quot;On behalf of
%% owner.&quot;
%% If you don't enable privacy protection, WHOIS queries return the
%% information
%% that you entered for the administrative, registrant, and technical
%% contacts.
%%
%% While some domains may allow different privacy settings per contact, we
%% recommend
%% specifying the same privacy setting for all contacts.
%%
%% If registration is successful, returns an operation ID that you can use to
%% track the progress and completion of the action. If the request is not
%% completed
%% successfully, the domain registrant is notified by email.
%%
%% Charges your Amazon Web Services account an amount based on the top-level
%% domain. For more information, see Amazon Route 53 Pricing:
%% http://aws.amazon.com/route53/pricing/.
-spec register_domain(aws_client:aws_client(), register_domain_request()) ->
    {ok, register_domain_response(), tuple()} |
    {error, any()} |
    {error, register_domain_errors(), tuple()}.
register_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_domain(Client, Input, []).

-spec register_domain(aws_client:aws_client(), register_domain_request(), proplists:proplist()) ->
    {ok, register_domain_response(), tuple()} |
    {error, any()} |
    {error, register_domain_errors(), tuple()}.
register_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterDomain">>, Input, Options).

%% @doc Rejects the transfer of a domain from another Amazon Web Services
%% account to the
%% current Amazon Web Services account.
%%
%% You initiate a transfer betweenAmazon Web Services accounts using
%% TransferDomainToAnotherAwsAccount:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html.
%%
%% Use either ListOperations:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ListOperations.html
%% or GetOperationDetail:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html
%% to determine whether the operation succeeded. GetOperationDetail:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html
%% provides additional information, for example,
%% `Domain Transfer from Aws Account 111122223333 has been cancelled'.
-spec reject_domain_transfer_from_another_aws_account(aws_client:aws_client(), reject_domain_transfer_from_another_aws_account_request()) ->
    {ok, reject_domain_transfer_from_another_aws_account_response(), tuple()} |
    {error, any()} |
    {error, reject_domain_transfer_from_another_aws_account_errors(), tuple()}.
reject_domain_transfer_from_another_aws_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    reject_domain_transfer_from_another_aws_account(Client, Input, []).

-spec reject_domain_transfer_from_another_aws_account(aws_client:aws_client(), reject_domain_transfer_from_another_aws_account_request(), proplists:proplist()) ->
    {ok, reject_domain_transfer_from_another_aws_account_response(), tuple()} |
    {error, any()} |
    {error, reject_domain_transfer_from_another_aws_account_errors(), tuple()}.
reject_domain_transfer_from_another_aws_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RejectDomainTransferFromAnotherAwsAccount">>, Input, Options).

%% @doc This operation renews a domain for the specified number of years.
%%
%% The cost of renewing
%% your domain is billed to your Amazon Web Services account.
%%
%% We recommend that you renew your domain several weeks before the
%% expiration date. Some
%% TLD registries delete domains before the expiration date if you
%% haven't renewed far
%% enough in advance. For more information about renewing domain
%% registration, see Renewing
%% Registration for a Domain:
%% https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-renew.html
%% in the Amazon Route 53 Developer
%% Guide.
-spec renew_domain(aws_client:aws_client(), renew_domain_request()) ->
    {ok, renew_domain_response(), tuple()} |
    {error, any()} |
    {error, renew_domain_errors(), tuple()}.
renew_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    renew_domain(Client, Input, []).

-spec renew_domain(aws_client:aws_client(), renew_domain_request(), proplists:proplist()) ->
    {ok, renew_domain_response(), tuple()} |
    {error, any()} |
    {error, renew_domain_errors(), tuple()}.
renew_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RenewDomain">>, Input, Options).

%% @doc For operations that require confirmation that the email address for
%% the registrant
%% contact is valid, such as registering a new domain, this operation resends
%% the
%% confirmation email to the current email address for the registrant
%% contact.
-spec resend_contact_reachability_email(aws_client:aws_client(), resend_contact_reachability_email_request()) ->
    {ok, resend_contact_reachability_email_response(), tuple()} |
    {error, any()} |
    {error, resend_contact_reachability_email_errors(), tuple()}.
resend_contact_reachability_email(Client, Input)
  when is_map(Client), is_map(Input) ->
    resend_contact_reachability_email(Client, Input, []).

-spec resend_contact_reachability_email(aws_client:aws_client(), resend_contact_reachability_email_request(), proplists:proplist()) ->
    {ok, resend_contact_reachability_email_response(), tuple()} |
    {error, any()} |
    {error, resend_contact_reachability_email_errors(), tuple()}.
resend_contact_reachability_email(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResendContactReachabilityEmail">>, Input, Options).

%% @doc Resend the form of authorization email for this operation.
-spec resend_operation_authorization(aws_client:aws_client(), resend_operation_authorization_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, resend_operation_authorization_errors(), tuple()}.
resend_operation_authorization(Client, Input)
  when is_map(Client), is_map(Input) ->
    resend_operation_authorization(Client, Input, []).

-spec resend_operation_authorization(aws_client:aws_client(), resend_operation_authorization_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, resend_operation_authorization_errors(), tuple()}.
resend_operation_authorization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResendOperationAuthorization">>, Input, Options).

%% @doc This operation returns the authorization code for the domain.
%%
%% To transfer a domain to
%% another registrar, you provide this value to the new registrar.
-spec retrieve_domain_auth_code(aws_client:aws_client(), retrieve_domain_auth_code_request()) ->
    {ok, retrieve_domain_auth_code_response(), tuple()} |
    {error, any()} |
    {error, retrieve_domain_auth_code_errors(), tuple()}.
retrieve_domain_auth_code(Client, Input)
  when is_map(Client), is_map(Input) ->
    retrieve_domain_auth_code(Client, Input, []).

-spec retrieve_domain_auth_code(aws_client:aws_client(), retrieve_domain_auth_code_request(), proplists:proplist()) ->
    {ok, retrieve_domain_auth_code_response(), tuple()} |
    {error, any()} |
    {error, retrieve_domain_auth_code_errors(), tuple()}.
retrieve_domain_auth_code(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RetrieveDomainAuthCode">>, Input, Options).

%% @doc Transfers a domain from another registrar to Amazon Route 53.
%%
%% For more information about transferring domains, see the following topics:
%%
%% For transfer requirements, a detailed procedure, and information about
%% viewing
%% the status of a domain that you're transferring to Route 53, see
%% Transferring Registration for a Domain to Amazon Route 53:
%% https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-to-route-53.html
%% in the
%% Amazon Route 53 Developer Guide.
%%
%% For information about how to transfer a domain from one Amazon Web
%% Services account to another, see TransferDomainToAnotherAwsAccount:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html.
%%
%% For information about how to transfer a domain to another domain
%% registrar,
%% see Transferring a Domain from Amazon Route 53 to Another Registrar:
%% https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-from-route-53.html
%% in
%% the Amazon Route 53 Developer Guide.
%%
%% During the transfer of any country code top-level domains (ccTLDs) to
%% Route 53, except for .cc and .tv,
%% updates to the owner contact are ignored and the owner contact data from
%% the registry is used.
%% You can
%% update the owner contact after the transfer is complete. For more
%% information, see
%% UpdateDomainContact:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_UpdateDomainContact.html.
%%
%% If the registrar for your domain is also the DNS service provider for the
%% domain, we
%% highly recommend that you transfer your DNS service to Route 53 or to
%% another DNS
%% service provider before you transfer your registration. Some registrars
%% provide free DNS
%% service when you purchase a domain registration. When you transfer the
%% registration, the
%% previous registrar will not renew your domain registration and could end
%% your DNS
%% service at any time.
%%
%% If the registrar for your domain is also the DNS service provider for the
%% domain
%% and you don't transfer DNS service to another provider, your website,
%% email, and the
%% web applications associated with the domain might become unavailable.
%%
%% If the transfer is successful, this method returns an operation ID that
%% you can use to
%% track the progress and completion of the action. If the transfer
%% doesn't complete
%% successfully, the domain registrant will be notified by email.
-spec transfer_domain(aws_client:aws_client(), transfer_domain_request()) ->
    {ok, transfer_domain_response(), tuple()} |
    {error, any()} |
    {error, transfer_domain_errors(), tuple()}.
transfer_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    transfer_domain(Client, Input, []).

-spec transfer_domain(aws_client:aws_client(), transfer_domain_request(), proplists:proplist()) ->
    {ok, transfer_domain_response(), tuple()} |
    {error, any()} |
    {error, transfer_domain_errors(), tuple()}.
transfer_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TransferDomain">>, Input, Options).

%% @doc Transfers a domain from the current Amazon Web Services account to
%% another Amazon Web Services account.
%%
%% Note the following:
%%
%% The Amazon Web Services account that you're transferring the domain to
%% must
%% accept the transfer. If the other account doesn't accept the transfer
%% within 3
%% days, we cancel the transfer. See
%% AcceptDomainTransferFromAnotherAwsAccount:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_AcceptDomainTransferFromAnotherAwsAccount.html.
%%
%% You can cancel the transfer before the other account accepts it. See
%% CancelDomainTransferToAnotherAwsAccount:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_CancelDomainTransferToAnotherAwsAccount.html.
%%
%% The other account can reject the transfer. See
%% RejectDomainTransferFromAnotherAwsAccount:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_RejectDomainTransferFromAnotherAwsAccount.html.
%%
%% When you transfer a domain from one Amazon Web Services account to
%% another, Route
%% 53 doesn't transfer the hosted zone that is associated with the
%% domain. DNS
%% resolution isn't affected if the domain and the hosted zone are owned
%% by separate
%% accounts, so transferring the hosted zone is optional. For information
%% about
%% transferring the hosted zone to another Amazon Web Services account, see
%% Migrating a
%% Hosted Zone to a Different Amazon Web Services Account:
%% https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/hosted-zones-migrating.html
%% in the
%% Amazon Route 53 Developer Guide.
%%
%% Use either ListOperations:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ListOperations.html
%% or GetOperationDetail:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html
%% to determine whether the operation succeeded. GetOperationDetail:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html
%% provides additional information, for example,
%% `Domain Transfer from Aws Account 111122223333 has been cancelled'.
-spec transfer_domain_to_another_aws_account(aws_client:aws_client(), transfer_domain_to_another_aws_account_request()) ->
    {ok, transfer_domain_to_another_aws_account_response(), tuple()} |
    {error, any()} |
    {error, transfer_domain_to_another_aws_account_errors(), tuple()}.
transfer_domain_to_another_aws_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    transfer_domain_to_another_aws_account(Client, Input, []).

-spec transfer_domain_to_another_aws_account(aws_client:aws_client(), transfer_domain_to_another_aws_account_request(), proplists:proplist()) ->
    {ok, transfer_domain_to_another_aws_account_response(), tuple()} |
    {error, any()} |
    {error, transfer_domain_to_another_aws_account_errors(), tuple()}.
transfer_domain_to_another_aws_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TransferDomainToAnotherAwsAccount">>, Input, Options).

%% @doc This operation updates the contact information for a particular
%% domain.
%%
%% You must
%% specify information for at least one contact: registrant, administrator,
%% or
%% technical.
%%
%% If the update is successful, this method returns an operation ID that you
%% can use to
%% track the progress and completion of the operation. If the request is not
%% completed
%% successfully, the domain registrant will be notified by email.
-spec update_domain_contact(aws_client:aws_client(), update_domain_contact_request()) ->
    {ok, update_domain_contact_response(), tuple()} |
    {error, any()} |
    {error, update_domain_contact_errors(), tuple()}.
update_domain_contact(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_domain_contact(Client, Input, []).

-spec update_domain_contact(aws_client:aws_client(), update_domain_contact_request(), proplists:proplist()) ->
    {ok, update_domain_contact_response(), tuple()} |
    {error, any()} |
    {error, update_domain_contact_errors(), tuple()}.
update_domain_contact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDomainContact">>, Input, Options).

%% @doc This operation updates the specified domain contact's privacy
%% setting.
%%
%% When privacy
%% protection is enabled, your contact information is replaced with contact
%% information for
%% the registrar or with the phrase &quot;REDACTED FOR PRIVACY&quot;, or
%% &quot;On behalf of owner.&quot;
%%
%% While some domains may allow different privacy settings per contact, we
%% recommend
%% specifying the same privacy setting for all contacts.
%%
%% This operation affects only the contact information for the specified
%% contact type
%% (administrative, registrant, or technical). If the request succeeds,
%% Amazon Route 53
%% returns an operation ID that you can use with GetOperationDetail:
%% https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html
%% to track the progress and completion of the action. If
%% the request doesn't complete successfully, the domain registrant will
%% be notified by
%% email.
%%
%% By disabling the privacy service via API, you consent to the publication
%% of the
%% contact information provided for this domain via the public WHOIS
%% database. You
%% certify that you are the registrant of this domain name and have the
%% authority to
%% make this decision. You may withdraw your consent at any time by enabling
%% privacy
%% protection using either `UpdateDomainContactPrivacy' or the Route 53
%% console. Enabling privacy protection removes the contact information
%% provided for
%% this domain from the WHOIS database. For more information on our privacy
%% practices,
%% see [https://aws.amazon.com/privacy/].
-spec update_domain_contact_privacy(aws_client:aws_client(), update_domain_contact_privacy_request()) ->
    {ok, update_domain_contact_privacy_response(), tuple()} |
    {error, any()} |
    {error, update_domain_contact_privacy_errors(), tuple()}.
update_domain_contact_privacy(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_domain_contact_privacy(Client, Input, []).

-spec update_domain_contact_privacy(aws_client:aws_client(), update_domain_contact_privacy_request(), proplists:proplist()) ->
    {ok, update_domain_contact_privacy_response(), tuple()} |
    {error, any()} |
    {error, update_domain_contact_privacy_errors(), tuple()}.
update_domain_contact_privacy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDomainContactPrivacy">>, Input, Options).

%% @doc This operation replaces the current set of name servers for the
%% domain with the
%% specified set of name servers.
%%
%% If you use Amazon Route 53 as your DNS service, specify
%% the four name servers in the delegation set for the hosted zone for the
%% domain.
%%
%% If successful, this operation returns an operation ID that you can use to
%% track the
%% progress and completion of the action. If the request is not completed
%% successfully, the
%% domain registrant will be notified by email.
-spec update_domain_nameservers(aws_client:aws_client(), update_domain_nameservers_request()) ->
    {ok, update_domain_nameservers_response(), tuple()} |
    {error, any()} |
    {error, update_domain_nameservers_errors(), tuple()}.
update_domain_nameservers(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_domain_nameservers(Client, Input, []).

-spec update_domain_nameservers(aws_client:aws_client(), update_domain_nameservers_request(), proplists:proplist()) ->
    {ok, update_domain_nameservers_response(), tuple()} |
    {error, any()} |
    {error, update_domain_nameservers_errors(), tuple()}.
update_domain_nameservers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDomainNameservers">>, Input, Options).

%% @doc This operation adds or updates tags for a specified domain.
%%
%% All tag operations are eventually consistent; subsequent operations might
%% not
%% immediately represent all issued operations.
-spec update_tags_for_domain(aws_client:aws_client(), update_tags_for_domain_request()) ->
    {ok, update_tags_for_domain_response(), tuple()} |
    {error, any()} |
    {error, update_tags_for_domain_errors(), tuple()}.
update_tags_for_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_tags_for_domain(Client, Input, []).

-spec update_tags_for_domain(aws_client:aws_client(), update_tags_for_domain_request(), proplists:proplist()) ->
    {ok, update_tags_for_domain_response(), tuple()} |
    {error, any()} |
    {error, update_tags_for_domain_errors(), tuple()}.
update_tags_for_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTagsForDomain">>, Input, Options).

%% @doc Returns all the domain-related billing records for the current Amazon
%% Web Services account for a specified period
-spec view_billing(aws_client:aws_client(), view_billing_request()) ->
    {ok, view_billing_response(), tuple()} |
    {error, any()} |
    {error, view_billing_errors(), tuple()}.
view_billing(Client, Input)
  when is_map(Client), is_map(Input) ->
    view_billing(Client, Input, []).

-spec view_billing(aws_client:aws_client(), view_billing_request(), proplists:proplist()) ->
    {ok, view_billing_response(), tuple()} |
    {error, any()} |
    {error, view_billing_errors(), tuple()}.
view_billing(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ViewBilling">>, Input, Options).

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
    Client1 = Client#{service => <<"route53domains">>},
    Host = build_host(<<"route53domains">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"Route53Domains_v20140515.", Action/binary>>}
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
