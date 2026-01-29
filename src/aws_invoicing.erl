%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Invoice Configuration
%%
%% You can use Amazon Web Services Invoice Configuration APIs to
%% programmatically create, update, delete, get, and list invoice units.
%%
%% You can also programmatically fetch the information of the invoice
%% receiver. For example, business legal name, address, and invoicing
%% contacts.
%%
%% You can use Amazon Web Services Invoice Configuration to receive separate
%% Amazon Web Services invoices based your organizational needs. By using
%% Amazon Web Services Invoice Configuration, you can configure invoice units
%% that are groups of Amazon Web Services accounts that represent your
%% business entities, and receive separate invoices for each business entity.
%% You can also assign a unique member or payer account as the invoice
%% receiver for each invoice unit. As you create new accounts within your
%% Organizations using Amazon Web Services Invoice Configuration APIs, you
%% can automate the creation of new invoice units and subsequently automate
%% the addition of new accounts to your invoice units.
%%
%% Amazon Web Services Procurement Portal Preferences
%%
%% You can use Amazon Web Services Procurement Portal Preferences APIs to
%% programmatically create, update, delete, get, and list procurement portal
%% connections and e-invoice delivery settings. You can also programmatically
%% fetch and modify the status of procurement portal configurations. For
%% example, SAP Business Network or Coupa connections, configure e-invoice
%% delivery and purchase order retrieval features.
%%
%% You can use Amazon Web Services Procurement Portal Preferences to connect
%% e-invoice delivery to your procurement portals based on your
%% organizational needs. By using Amazon Web Services Procurement Portal
%% Preferences, you can configure connections to SAP Business Network and
%% Coupa procurement portals that retrieve purchase orders and deliver Amazon
%% Web Services invoices on the same day they are generated. You can also set
%% up testing environments to validate invoice delivery without affecting
%% live transactions, and manage contact information for portal setup and
%% support.
%%
%% Administrative users should understand that billing read-only policies
%% will show all procurement portal connection details. Review your IAM
%% policies to ensure appropriate access controls are in place for
%% procurement portal preferences.
%%
%% Amazon Web Services Invoice Management
%%
%% You can use Amazon Web Services Invoice Management APIs to
%% programmatically list invoice summaries and get invoice documents. You can
%% also programmatically fetch invoice documents with S3 pre-signed URLs.
%%
%% You can use Amazon Web Services Invoice Management to access invoice
%% information based on your organizational needs. By using Amazon Web
%% Services Invoice Management, you can retrieve paginated lists of invoice
%% summaries that include invoice metadata such as invoice IDs, amounts, and
%% currencies without downloading documents. You can also download invoice
%% documents in PDF format using S3 pre-signed URLs with built-in expiration.
%% As you manage invoices across your organization using Amazon Web Services
%% Invoice Management APIs, you can create invoice retrieval processes and
%% integrate invoice data into your financial systems.
%%
%% Service endpoint
%%
%% You can use the following endpoints for Amazon Web Services Invoice
%% Configuration, Amazon Web Services Procurement Portal Preferences, and
%% Amazon Web Services Invoice Management:
%%
%% `https://invoicing.us-east-1.api.aws'
-module(aws_invoicing).

-export([batch_get_invoice_profile/2,
         batch_get_invoice_profile/3,
         create_invoice_unit/2,
         create_invoice_unit/3,
         create_procurement_portal_preference/2,
         create_procurement_portal_preference/3,
         delete_invoice_unit/2,
         delete_invoice_unit/3,
         delete_procurement_portal_preference/2,
         delete_procurement_portal_preference/3,
         get_invoice_p_d_f/2,
         get_invoice_p_d_f/3,
         get_invoice_unit/2,
         get_invoice_unit/3,
         get_procurement_portal_preference/2,
         get_procurement_portal_preference/3,
         list_invoice_summaries/2,
         list_invoice_summaries/3,
         list_invoice_units/2,
         list_invoice_units/3,
         list_procurement_portal_preferences/2,
         list_procurement_portal_preferences/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_procurement_portal_preference/2,
         put_procurement_portal_preference/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_invoice_unit/2,
         update_invoice_unit/3,
         update_procurement_portal_preference_status/2,
         update_procurement_portal_preference_status/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% purchase_order_data_source() :: #{
%%   <<"EinvoiceDeliveryDocumentType">> => list(any()),
%%   <<"PurchaseOrderDataSourceType">> => list(any())
%% }
-type purchase_order_data_source() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"ResourceTags">> := list(resource_tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% create_procurement_portal_preference_request() :: #{
%%   <<"BuyerDomain">> := list(any()),
%%   <<"BuyerIdentifier">> := string(),
%%   <<"ClientToken">> => string(),
%%   <<"Contacts">> := list(contact()),
%%   <<"EinvoiceDeliveryEnabled">> := [boolean()],
%%   <<"EinvoiceDeliveryPreference">> => einvoice_delivery_preference(),
%%   <<"ProcurementPortalInstanceEndpoint">> => string(),
%%   <<"ProcurementPortalName">> := list(any()),
%%   <<"ProcurementPortalSharedSecret">> => string(),
%%   <<"PurchaseOrderRetrievalEnabled">> := [boolean()],
%%   <<"ResourceTags">> => list(resource_tag()),
%%   <<"Selector">> => procurement_portal_preference_selector(),
%%   <<"SupplierDomain">> := list(any()),
%%   <<"SupplierIdentifier">> := string(),
%%   <<"TestEnvPreference">> => test_env_preference_input()
%% }
-type create_procurement_portal_preference_request() :: #{binary() => any()}.

%% Example:
%% delete_invoice_unit_response() :: #{
%%   <<"InvoiceUnitArn">> => string()
%% }
-type delete_invoice_unit_response() :: #{binary() => any()}.

%% Example:
%% get_invoice_unit_response() :: #{
%%   <<"Description">> => string(),
%%   <<"InvoiceReceiver">> => string(),
%%   <<"InvoiceUnitArn">> => string(),
%%   <<"LastModified">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Rule">> => invoice_unit_rule(),
%%   <<"TaxInheritanceDisabled">> => boolean()
%% }
-type get_invoice_unit_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% entity() :: #{
%%   <<"InvoicingEntity">> => string()
%% }
-type entity() :: #{binary() => any()}.

%% Example:
%% put_procurement_portal_preference_request() :: #{
%%   <<"Contacts">> := list(contact()),
%%   <<"EinvoiceDeliveryEnabled">> := [boolean()],
%%   <<"EinvoiceDeliveryPreference">> => einvoice_delivery_preference(),
%%   <<"ProcurementPortalInstanceEndpoint">> => string(),
%%   <<"ProcurementPortalPreferenceArn">> := string(),
%%   <<"ProcurementPortalSharedSecret">> => string(),
%%   <<"PurchaseOrderRetrievalEnabled">> := [boolean()],
%%   <<"Selector">> => procurement_portal_preference_selector(),
%%   <<"TestEnvPreference">> => test_env_preference_input()
%% }
-type put_procurement_portal_preference_request() :: #{binary() => any()}.

%% Example:
%% procurement_portal_preference() :: #{
%%   <<"AwsAccountId">> => string(),
%%   <<"BuyerDomain">> => list(any()),
%%   <<"BuyerIdentifier">> => string(),
%%   <<"Contacts">> => list(contact()),
%%   <<"CreateDate">> => [non_neg_integer()],
%%   <<"EinvoiceDeliveryEnabled">> => [boolean()],
%%   <<"EinvoiceDeliveryPreference">> => einvoice_delivery_preference(),
%%   <<"EinvoiceDeliveryPreferenceStatus">> => list(any()),
%%   <<"EinvoiceDeliveryPreferenceStatusReason">> => string(),
%%   <<"LastUpdateDate">> => [non_neg_integer()],
%%   <<"ProcurementPortalInstanceEndpoint">> => string(),
%%   <<"ProcurementPortalName">> => list(any()),
%%   <<"ProcurementPortalPreferenceArn">> => string(),
%%   <<"ProcurementPortalSharedSecret">> => string(),
%%   <<"PurchaseOrderRetrievalEnabled">> => [boolean()],
%%   <<"PurchaseOrderRetrievalEndpoint">> => string(),
%%   <<"PurchaseOrderRetrievalPreferenceStatus">> => list(any()),
%%   <<"PurchaseOrderRetrievalPreferenceStatusReason">> => string(),
%%   <<"Selector">> => procurement_portal_preference_selector(),
%%   <<"SupplierDomain">> => list(any()),
%%   <<"SupplierIdentifier">> => string(),
%%   <<"TestEnvPreference">> => test_env_preference(),
%%   <<"Version">> => [float()]
%% }
-type procurement_portal_preference() :: #{binary() => any()}.

%% Example:
%% discounts_breakdown_amount() :: #{
%%   <<"Amount">> => string(),
%%   <<"Description">> => string(),
%%   <<"Rate">> => string()
%% }
-type discounts_breakdown_amount() :: #{binary() => any()}.

%% Example:
%% date_interval() :: #{
%%   <<"EndDate">> => [non_neg_integer()],
%%   <<"StartDate">> => [non_neg_integer()]
%% }
-type date_interval() :: #{binary() => any()}.

%% Example:
%% update_procurement_portal_preference_status_response() :: #{
%%   <<"ProcurementPortalPreferenceArn">> => string()
%% }
-type update_procurement_portal_preference_status_response() :: #{binary() => any()}.

%% Example:
%% invoice_summaries_filter() :: #{
%%   <<"BillingPeriod">> => billing_period(),
%%   <<"InvoicingEntity">> => string(),
%%   <<"TimeInterval">> => date_interval()
%% }
-type invoice_summaries_filter() :: #{binary() => any()}.

%% Example:
%% invoice_p_d_f() :: #{
%%   <<"DocumentUrl">> => string(),
%%   <<"DocumentUrlExpirationDate">> => [non_neg_integer()],
%%   <<"InvoiceId">> => string(),
%%   <<"SupplementalDocuments">> => list(supplemental_document())
%% }
-type invoice_p_d_f() :: #{binary() => any()}.

%% Example:
%% invoice_profile() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Issuer">> => string(),
%%   <<"ReceiverAddress">> => receiver_address(),
%%   <<"ReceiverEmail">> => string(),
%%   <<"ReceiverName">> => string(),
%%   <<"TaxRegistrationNumber">> => string()
%% }
-type invoice_profile() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"ResourceTagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% update_invoice_unit_response() :: #{
%%   <<"InvoiceUnitArn">> => string()
%% }
-type update_invoice_unit_response() :: #{binary() => any()}.

%% Example:
%% receiver_address() :: #{
%%   <<"AddressLine1">> => string(),
%%   <<"AddressLine2">> => string(),
%%   <<"AddressLine3">> => string(),
%%   <<"City">> => string(),
%%   <<"CompanyName">> => string(),
%%   <<"CountryCode">> => string(),
%%   <<"DistrictOrCounty">> => string(),
%%   <<"PostalCode">> => string(),
%%   <<"StateOrRegion">> => string()
%% }
-type receiver_address() :: #{binary() => any()}.

%% Example:
%% list_invoice_units_response() :: #{
%%   <<"InvoiceUnits">> => list(invoice_unit()),
%%   <<"NextToken">> => string()
%% }
-type list_invoice_units_response() :: #{binary() => any()}.

%% Example:
%% delete_procurement_portal_preference_response() :: #{
%%   <<"ProcurementPortalPreferenceArn">> => string()
%% }
-type delete_procurement_portal_preference_response() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceName">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% delete_invoice_unit_request() :: #{
%%   <<"InvoiceUnitArn">> := string()
%% }
-type delete_invoice_unit_request() :: #{binary() => any()}.

%% Example:
%% get_invoice_p_d_f_request() :: #{
%%   <<"InvoiceId">> := string()
%% }
-type get_invoice_p_d_f_request() :: #{binary() => any()}.

%% Example:
%% taxes_breakdown_amount() :: #{
%%   <<"Amount">> => string(),
%%   <<"Description">> => string(),
%%   <<"Rate">> => string()
%% }
-type taxes_breakdown_amount() :: #{binary() => any()}.

%% Example:
%% invoice_summary() :: #{
%%   <<"AccountId">> => string(),
%%   <<"BaseCurrencyAmount">> => invoice_currency_amount(),
%%   <<"BillingPeriod">> => billing_period(),
%%   <<"DueDate">> => [non_neg_integer()],
%%   <<"Entity">> => entity(),
%%   <<"InvoiceId">> => string(),
%%   <<"InvoiceType">> => list(any()),
%%   <<"IssuedDate">> => [non_neg_integer()],
%%   <<"OriginalInvoiceId">> => string(),
%%   <<"PaymentCurrencyAmount">> => invoice_currency_amount(),
%%   <<"PurchaseOrderNumber">> => string(),
%%   <<"TaxCurrencyAmount">> => invoice_currency_amount()
%% }
-type invoice_summary() :: #{binary() => any()}.

%% Example:
%% list_procurement_portal_preferences_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_procurement_portal_preferences_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"ResourceTags">> => list(resource_tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% currency_exchange_details() :: #{
%%   <<"Rate">> => string(),
%%   <<"SourceCurrencyCode">> => string(),
%%   <<"TargetCurrencyCode">> => string()
%% }
-type currency_exchange_details() :: #{binary() => any()}.

%% Example:
%% batch_get_invoice_profile_request() :: #{
%%   <<"AccountIds">> := list(string())
%% }
-type batch_get_invoice_profile_request() :: #{binary() => any()}.

%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => string(),
%%   <<"name">> => string()
%% }
-type validation_exception_field() :: #{binary() => any()}.

%% Example:
%% einvoice_delivery_preference() :: #{
%%   <<"ConnectionTestingMethod">> => list(any()),
%%   <<"EinvoiceDeliveryActivationDate">> => [non_neg_integer()],
%%   <<"EinvoiceDeliveryAttachmentTypes">> => list(list(any())()),
%%   <<"EinvoiceDeliveryDocumentTypes">> => list(list(any())()),
%%   <<"Protocol">> => list(any()),
%%   <<"PurchaseOrderDataSources">> => list(purchase_order_data_source())
%% }
-type einvoice_delivery_preference() :: #{binary() => any()}.

%% Example:
%% update_procurement_portal_preference_status_request() :: #{
%%   <<"EinvoiceDeliveryPreferenceStatus">> => list(any()),
%%   <<"EinvoiceDeliveryPreferenceStatusReason">> => string(),
%%   <<"ProcurementPortalPreferenceArn">> := string(),
%%   <<"PurchaseOrderRetrievalPreferenceStatus">> => list(any()),
%%   <<"PurchaseOrderRetrievalPreferenceStatusReason">> => string()
%% }
-type update_procurement_portal_preference_status_request() :: #{binary() => any()}.

%% Example:
%% invoice_currency_amount() :: #{
%%   <<"AmountBreakdown">> => amount_breakdown(),
%%   <<"CurrencyCode">> => string(),
%%   <<"CurrencyExchangeDetails">> => currency_exchange_details(),
%%   <<"TotalAmount">> => string(),
%%   <<"TotalAmountBeforeTax">> => string()
%% }
-type invoice_currency_amount() :: #{binary() => any()}.

%% Example:
%% discounts_breakdown() :: #{
%%   <<"Breakdown">> => list(discounts_breakdown_amount()),
%%   <<"TotalAmount">> => string()
%% }
-type discounts_breakdown() :: #{binary() => any()}.

%% Example:
%% contact() :: #{
%%   <<"Email">> => string(),
%%   <<"Name">> => string()
%% }
-type contact() :: #{binary() => any()}.

%% Example:
%% billing_period() :: #{
%%   <<"Month">> => integer(),
%%   <<"Year">> => integer()
%% }
-type billing_period() :: #{binary() => any()}.

%% Example:
%% fees_breakdown_amount() :: #{
%%   <<"Amount">> => string(),
%%   <<"Description">> => string(),
%%   <<"Rate">> => string()
%% }
-type fees_breakdown_amount() :: #{binary() => any()}.

%% Example:
%% test_env_preference_input() :: #{
%%   <<"BuyerDomain">> => list(any()),
%%   <<"BuyerIdentifier">> => string(),
%%   <<"ProcurementPortalInstanceEndpoint">> => string(),
%%   <<"ProcurementPortalSharedSecret">> => string(),
%%   <<"SupplierDomain">> => list(any()),
%%   <<"SupplierIdentifier">> => string()
%% }
-type test_env_preference_input() :: #{binary() => any()}.

%% Example:
%% delete_procurement_portal_preference_request() :: #{
%%   <<"ProcurementPortalPreferenceArn">> := string()
%% }
-type delete_procurement_portal_preference_request() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string(),
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% list_invoice_units_request() :: #{
%%   <<"AsOf">> => non_neg_integer(),
%%   <<"Filters">> => filters(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_invoice_units_request() :: #{binary() => any()}.

%% Example:
%% resource_tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type resource_tag() :: #{binary() => any()}.

%% Example:
%% put_procurement_portal_preference_response() :: #{
%%   <<"ProcurementPortalPreferenceArn">> => string()
%% }
-type put_procurement_portal_preference_response() :: #{binary() => any()}.

%% Example:
%% get_invoice_p_d_f_response() :: #{
%%   <<"InvoicePDF">> => invoice_p_d_f()
%% }
-type get_invoice_p_d_f_response() :: #{binary() => any()}.

%% Example:
%% create_procurement_portal_preference_response() :: #{
%%   <<"ProcurementPortalPreferenceArn">> => string()
%% }
-type create_procurement_portal_preference_response() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceName">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% get_procurement_portal_preference_response() :: #{
%%   <<"ProcurementPortalPreference">> => procurement_portal_preference()
%% }
-type get_procurement_portal_preference_response() :: #{binary() => any()}.

%% Example:
%% test_env_preference() :: #{
%%   <<"BuyerDomain">> => list(any()),
%%   <<"BuyerIdentifier">> => string(),
%%   <<"ProcurementPortalInstanceEndpoint">> => string(),
%%   <<"ProcurementPortalSharedSecret">> => string(),
%%   <<"PurchaseOrderRetrievalEndpoint">> => string(),
%%   <<"SupplierDomain">> => list(any()),
%%   <<"SupplierIdentifier">> => string()
%% }
-type test_env_preference() :: #{binary() => any()}.

%% Example:
%% invoice_unit_rule() :: #{
%%   <<"BillSourceAccounts">> => list(string()),
%%   <<"LinkedAccounts">> => list(string())
%% }
-type invoice_unit_rule() :: #{binary() => any()}.

%% Example:
%% batch_get_invoice_profile_response() :: #{
%%   <<"Profiles">> => list(invoice_profile())
%% }
-type batch_get_invoice_profile_response() :: #{binary() => any()}.

%% Example:
%% invoice_summaries_selector() :: #{
%%   <<"ResourceType">> => list(any()),
%%   <<"Value">> => string()
%% }
-type invoice_summaries_selector() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => string(),
%%   <<"reason">> => list(any()),
%%   <<"resourceName">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% supplemental_document() :: #{
%%   <<"DocumentUrl">> => string(),
%%   <<"DocumentUrlExpirationDate">> => [non_neg_integer()]
%% }
-type supplemental_document() :: #{binary() => any()}.

%% Example:
%% create_invoice_unit_request() :: #{
%%   <<"Description">> => string(),
%%   <<"InvoiceReceiver">> := string(),
%%   <<"Name">> := string(),
%%   <<"ResourceTags">> => list(resource_tag()),
%%   <<"Rule">> := invoice_unit_rule(),
%%   <<"TaxInheritanceDisabled">> => boolean()
%% }
-type create_invoice_unit_request() :: #{binary() => any()}.

%% Example:
%% update_invoice_unit_request() :: #{
%%   <<"Description">> => string(),
%%   <<"InvoiceUnitArn">> := string(),
%%   <<"Rule">> => invoice_unit_rule(),
%%   <<"TaxInheritanceDisabled">> => boolean()
%% }
-type update_invoice_unit_request() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% amount_breakdown() :: #{
%%   <<"Discounts">> => discounts_breakdown(),
%%   <<"Fees">> => fees_breakdown(),
%%   <<"SubTotalAmount">> => string(),
%%   <<"Taxes">> => taxes_breakdown()
%% }
-type amount_breakdown() :: #{binary() => any()}.

%% Example:
%% list_procurement_portal_preferences_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ProcurementPortalPreferences">> => list(procurement_portal_preference_summary())
%% }
-type list_procurement_portal_preferences_response() :: #{binary() => any()}.

%% Example:
%% filters() :: #{
%%   <<"Accounts">> => list(string()),
%%   <<"BillSourceAccounts">> => list(string()),
%%   <<"InvoiceReceivers">> => list(string()),
%%   <<"Names">> => list(string())
%% }
-type filters() :: #{binary() => any()}.

%% Example:
%% list_invoice_summaries_response() :: #{
%%   <<"InvoiceSummaries">> => list(invoice_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_invoice_summaries_response() :: #{binary() => any()}.

%% Example:
%% create_invoice_unit_response() :: #{
%%   <<"InvoiceUnitArn">> => string()
%% }
-type create_invoice_unit_response() :: #{binary() => any()}.

%% Example:
%% get_procurement_portal_preference_request() :: #{
%%   <<"ProcurementPortalPreferenceArn">> := string()
%% }
-type get_procurement_portal_preference_request() :: #{binary() => any()}.

%% Example:
%% fees_breakdown() :: #{
%%   <<"Breakdown">> => list(fees_breakdown_amount()),
%%   <<"TotalAmount">> => string()
%% }
-type fees_breakdown() :: #{binary() => any()}.

%% Example:
%% get_invoice_unit_request() :: #{
%%   <<"AsOf">> => non_neg_integer(),
%%   <<"InvoiceUnitArn">> := string()
%% }
-type get_invoice_unit_request() :: #{binary() => any()}.

%% Example:
%% invoice_unit() :: #{
%%   <<"Description">> => string(),
%%   <<"InvoiceReceiver">> => string(),
%%   <<"InvoiceUnitArn">> => string(),
%%   <<"LastModified">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Rule">> => invoice_unit_rule(),
%%   <<"TaxInheritanceDisabled">> => boolean()
%% }
-type invoice_unit() :: #{binary() => any()}.

%% Example:
%% procurement_portal_preference_summary() :: #{
%%   <<"AwsAccountId">> => string(),
%%   <<"BuyerDomain">> => list(any()),
%%   <<"BuyerIdentifier">> => string(),
%%   <<"CreateDate">> => [non_neg_integer()],
%%   <<"EinvoiceDeliveryEnabled">> => [boolean()],
%%   <<"EinvoiceDeliveryPreferenceStatus">> => list(any()),
%%   <<"EinvoiceDeliveryPreferenceStatusReason">> => string(),
%%   <<"LastUpdateDate">> => [non_neg_integer()],
%%   <<"ProcurementPortalName">> => list(any()),
%%   <<"ProcurementPortalPreferenceArn">> => string(),
%%   <<"PurchaseOrderRetrievalEnabled">> => [boolean()],
%%   <<"PurchaseOrderRetrievalPreferenceStatus">> => list(any()),
%%   <<"PurchaseOrderRetrievalPreferenceStatusReason">> => string(),
%%   <<"Selector">> => procurement_portal_preference_selector(),
%%   <<"SupplierDomain">> => list(any()),
%%   <<"SupplierIdentifier">> => string(),
%%   <<"Version">> => [float()]
%% }
-type procurement_portal_preference_summary() :: #{binary() => any()}.

%% Example:
%% list_invoice_summaries_request() :: #{
%%   <<"Filter">> => invoice_summaries_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Selector">> := invoice_summaries_selector()
%% }
-type list_invoice_summaries_request() :: #{binary() => any()}.

%% Example:
%% procurement_portal_preference_selector() :: #{
%%   <<"InvoiceUnitArns">> => list(string()),
%%   <<"SellerOfRecords">> => list(string())
%% }
-type procurement_portal_preference_selector() :: #{binary() => any()}.

%% Example:
%% taxes_breakdown() :: #{
%%   <<"Breakdown">> => list(taxes_breakdown_amount()),
%%   <<"TotalAmount">> => string()
%% }
-type taxes_breakdown() :: #{binary() => any()}.

-type batch_get_invoice_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_invoice_unit_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type create_procurement_portal_preference_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_invoice_unit_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_procurement_portal_preference_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type get_invoice_p_d_f_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_invoice_unit_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_procurement_portal_preference_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_invoice_summaries_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_invoice_units_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_procurement_portal_preferences_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_procurement_portal_preference_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_invoice_unit_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_procurement_portal_preference_status_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc This gets the invoice profile associated with a set of accounts.
%%
%% The accounts must be linked accounts under the requester management
%% account organization.
-spec batch_get_invoice_profile(aws_client:aws_client(), batch_get_invoice_profile_request()) ->
    {ok, batch_get_invoice_profile_response(), tuple()} |
    {error, any()} |
    {error, batch_get_invoice_profile_errors(), tuple()}.
batch_get_invoice_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_invoice_profile(Client, Input, []).

-spec batch_get_invoice_profile(aws_client:aws_client(), batch_get_invoice_profile_request(), proplists:proplist()) ->
    {ok, batch_get_invoice_profile_response(), tuple()} |
    {error, any()} |
    {error, batch_get_invoice_profile_errors(), tuple()}.
batch_get_invoice_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetInvoiceProfile">>, Input, Options).

%% @doc This creates a new invoice unit with the provided definition.
-spec create_invoice_unit(aws_client:aws_client(), create_invoice_unit_request()) ->
    {ok, create_invoice_unit_response(), tuple()} |
    {error, any()} |
    {error, create_invoice_unit_errors(), tuple()}.
create_invoice_unit(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_invoice_unit(Client, Input, []).

-spec create_invoice_unit(aws_client:aws_client(), create_invoice_unit_request(), proplists:proplist()) ->
    {ok, create_invoice_unit_response(), tuple()} |
    {error, any()} |
    {error, create_invoice_unit_errors(), tuple()}.
create_invoice_unit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInvoiceUnit">>, Input, Options).

%% @doc Creates a procurement portal preference configuration for e-invoice
%% delivery and purchase order retrieval.
%%
%% This preference defines how invoices are delivered to a procurement portal
%% and how purchase orders are retrieved.
-spec create_procurement_portal_preference(aws_client:aws_client(), create_procurement_portal_preference_request()) ->
    {ok, create_procurement_portal_preference_response(), tuple()} |
    {error, any()} |
    {error, create_procurement_portal_preference_errors(), tuple()}.
create_procurement_portal_preference(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_procurement_portal_preference(Client, Input, []).

-spec create_procurement_portal_preference(aws_client:aws_client(), create_procurement_portal_preference_request(), proplists:proplist()) ->
    {ok, create_procurement_portal_preference_response(), tuple()} |
    {error, any()} |
    {error, create_procurement_portal_preference_errors(), tuple()}.
create_procurement_portal_preference(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProcurementPortalPreference">>, Input, Options).

%% @doc This deletes an invoice unit with the provided invoice unit ARN.
-spec delete_invoice_unit(aws_client:aws_client(), delete_invoice_unit_request()) ->
    {ok, delete_invoice_unit_response(), tuple()} |
    {error, any()} |
    {error, delete_invoice_unit_errors(), tuple()}.
delete_invoice_unit(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_invoice_unit(Client, Input, []).

-spec delete_invoice_unit(aws_client:aws_client(), delete_invoice_unit_request(), proplists:proplist()) ->
    {ok, delete_invoice_unit_response(), tuple()} |
    {error, any()} |
    {error, delete_invoice_unit_errors(), tuple()}.
delete_invoice_unit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInvoiceUnit">>, Input, Options).

%% @doc Deletes an existing procurement portal preference.
%%
%% This action cannot be undone. Active e-invoice delivery and PO retrieval
%% configurations will be terminated.
-spec delete_procurement_portal_preference(aws_client:aws_client(), delete_procurement_portal_preference_request()) ->
    {ok, delete_procurement_portal_preference_response(), tuple()} |
    {error, any()} |
    {error, delete_procurement_portal_preference_errors(), tuple()}.
delete_procurement_portal_preference(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_procurement_portal_preference(Client, Input, []).

-spec delete_procurement_portal_preference(aws_client:aws_client(), delete_procurement_portal_preference_request(), proplists:proplist()) ->
    {ok, delete_procurement_portal_preference_response(), tuple()} |
    {error, any()} |
    {error, delete_procurement_portal_preference_errors(), tuple()}.
delete_procurement_portal_preference(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProcurementPortalPreference">>, Input, Options).

%% @doc Returns a URL to download the invoice document and supplemental
%% documents associated with an invoice.
%%
%% The URLs are pre-signed and have expiration time. For special cases like
%% Brazil, where Amazon Web Services generated invoice identifiers and
%% government provided identifiers do not match, use the Amazon Web Services
%% generated invoice identifier when making API requests. To grant IAM
%% permission to use this operation, the caller needs the
%% `invoicing:GetInvoicePDF' policy action.
-spec get_invoice_p_d_f(aws_client:aws_client(), get_invoice_p_d_f_request()) ->
    {ok, get_invoice_p_d_f_response(), tuple()} |
    {error, any()} |
    {error, get_invoice_p_d_f_errors(), tuple()}.
get_invoice_p_d_f(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_invoice_p_d_f(Client, Input, []).

-spec get_invoice_p_d_f(aws_client:aws_client(), get_invoice_p_d_f_request(), proplists:proplist()) ->
    {ok, get_invoice_p_d_f_response(), tuple()} |
    {error, any()} |
    {error, get_invoice_p_d_f_errors(), tuple()}.
get_invoice_p_d_f(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInvoicePDF">>, Input, Options).

%% @doc This retrieves the invoice unit definition.
-spec get_invoice_unit(aws_client:aws_client(), get_invoice_unit_request()) ->
    {ok, get_invoice_unit_response(), tuple()} |
    {error, any()} |
    {error, get_invoice_unit_errors(), tuple()}.
get_invoice_unit(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_invoice_unit(Client, Input, []).

-spec get_invoice_unit(aws_client:aws_client(), get_invoice_unit_request(), proplists:proplist()) ->
    {ok, get_invoice_unit_response(), tuple()} |
    {error, any()} |
    {error, get_invoice_unit_errors(), tuple()}.
get_invoice_unit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInvoiceUnit">>, Input, Options).

%% @doc Retrieves the details of a specific procurement portal preference
%% configuration.
-spec get_procurement_portal_preference(aws_client:aws_client(), get_procurement_portal_preference_request()) ->
    {ok, get_procurement_portal_preference_response(), tuple()} |
    {error, any()} |
    {error, get_procurement_portal_preference_errors(), tuple()}.
get_procurement_portal_preference(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_procurement_portal_preference(Client, Input, []).

-spec get_procurement_portal_preference(aws_client:aws_client(), get_procurement_portal_preference_request(), proplists:proplist()) ->
    {ok, get_procurement_portal_preference_response(), tuple()} |
    {error, any()} |
    {error, get_procurement_portal_preference_errors(), tuple()}.
get_procurement_portal_preference(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetProcurementPortalPreference">>, Input, Options).

%% @doc Retrieves your invoice details programmatically, without line item
%% details.
-spec list_invoice_summaries(aws_client:aws_client(), list_invoice_summaries_request()) ->
    {ok, list_invoice_summaries_response(), tuple()} |
    {error, any()} |
    {error, list_invoice_summaries_errors(), tuple()}.
list_invoice_summaries(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_invoice_summaries(Client, Input, []).

-spec list_invoice_summaries(aws_client:aws_client(), list_invoice_summaries_request(), proplists:proplist()) ->
    {ok, list_invoice_summaries_response(), tuple()} |
    {error, any()} |
    {error, list_invoice_summaries_errors(), tuple()}.
list_invoice_summaries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInvoiceSummaries">>, Input, Options).

%% @doc This fetches a list of all invoice unit definitions for a given
%% account, as of the provided `AsOf' date.
-spec list_invoice_units(aws_client:aws_client(), list_invoice_units_request()) ->
    {ok, list_invoice_units_response(), tuple()} |
    {error, any()} |
    {error, list_invoice_units_errors(), tuple()}.
list_invoice_units(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_invoice_units(Client, Input, []).

-spec list_invoice_units(aws_client:aws_client(), list_invoice_units_request(), proplists:proplist()) ->
    {ok, list_invoice_units_response(), tuple()} |
    {error, any()} |
    {error, list_invoice_units_errors(), tuple()}.
list_invoice_units(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInvoiceUnits">>, Input, Options).

%% @doc Retrieves a list of procurement portal preferences associated with
%% the Amazon Web Services account.
-spec list_procurement_portal_preferences(aws_client:aws_client(), list_procurement_portal_preferences_request()) ->
    {ok, list_procurement_portal_preferences_response(), tuple()} |
    {error, any()} |
    {error, list_procurement_portal_preferences_errors(), tuple()}.
list_procurement_portal_preferences(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_procurement_portal_preferences(Client, Input, []).

-spec list_procurement_portal_preferences(aws_client:aws_client(), list_procurement_portal_preferences_request(), proplists:proplist()) ->
    {ok, list_procurement_portal_preferences_response(), tuple()} |
    {error, any()} |
    {error, list_procurement_portal_preferences_errors(), tuple()}.
list_procurement_portal_preferences(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProcurementPortalPreferences">>, Input, Options).

%% @doc Lists the tags for a resource.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Updates an existing procurement portal preference configuration.
%%
%% This operation can modify settings for e-invoice delivery and purchase
%% order retrieval.
-spec put_procurement_portal_preference(aws_client:aws_client(), put_procurement_portal_preference_request()) ->
    {ok, put_procurement_portal_preference_response(), tuple()} |
    {error, any()} |
    {error, put_procurement_portal_preference_errors(), tuple()}.
put_procurement_portal_preference(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_procurement_portal_preference(Client, Input, []).

-spec put_procurement_portal_preference(aws_client:aws_client(), put_procurement_portal_preference_request(), proplists:proplist()) ->
    {ok, put_procurement_portal_preference_response(), tuple()} |
    {error, any()} |
    {error, put_procurement_portal_preference_errors(), tuple()}.
put_procurement_portal_preference(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutProcurementPortalPreference">>, Input, Options).

%% @doc Adds a tag to a resource.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes a tag from a resource.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc You can update the invoice unit configuration at any time, and Amazon
%% Web Services will use the latest configuration at the end of the month.
-spec update_invoice_unit(aws_client:aws_client(), update_invoice_unit_request()) ->
    {ok, update_invoice_unit_response(), tuple()} |
    {error, any()} |
    {error, update_invoice_unit_errors(), tuple()}.
update_invoice_unit(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_invoice_unit(Client, Input, []).

-spec update_invoice_unit(aws_client:aws_client(), update_invoice_unit_request(), proplists:proplist()) ->
    {ok, update_invoice_unit_response(), tuple()} |
    {error, any()} |
    {error, update_invoice_unit_errors(), tuple()}.
update_invoice_unit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateInvoiceUnit">>, Input, Options).

%% @doc Updates the status of a procurement portal preference, including the
%% activation state of e-invoice delivery and purchase order retrieval
%% features.
-spec update_procurement_portal_preference_status(aws_client:aws_client(), update_procurement_portal_preference_status_request()) ->
    {ok, update_procurement_portal_preference_status_response(), tuple()} |
    {error, any()} |
    {error, update_procurement_portal_preference_status_errors(), tuple()}.
update_procurement_portal_preference_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_procurement_portal_preference_status(Client, Input, []).

-spec update_procurement_portal_preference_status(aws_client:aws_client(), update_procurement_portal_preference_status_request(), proplists:proplist()) ->
    {ok, update_procurement_portal_preference_status_response(), tuple()} |
    {error, any()} |
    {error, update_procurement_portal_preference_status_errors(), tuple()}.
update_procurement_portal_preference_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProcurementPortalPreferenceStatus">>, Input, Options).

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
    Client1 = Client#{service => <<"invoicing">>},
    Host = build_host(<<"invoicing">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"Invoicing.", Action/binary>>}
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
