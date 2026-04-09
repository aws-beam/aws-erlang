%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The AWS Marketplace Discovery API provides programmatic access to the
%% AWS Marketplace catalog, including searching and browsing listings,
%% retrieving product details and fulfillment options, and accessing public
%% and private offer pricing and terms.
-module(aws_marketplace_discovery).

-export([get_listing/2,
         get_listing/3,
         get_offer/2,
         get_offer/3,
         get_offer_set/2,
         get_offer_set/3,
         get_offer_terms/2,
         get_offer_terms/3,
         get_product/2,
         get_product/3,
         list_fulfillment_options/2,
         list_fulfillment_options/3,
         list_purchase_options/2,
         list_purchase_options/3,
         search_facets/2,
         search_facets/3,
         search_listings/2,
         search_listings/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% eks_add_on_fulfillment_option() :: #{
%%   <<"awsSupportedServices">> => list(aws_supported_service()),
%%   <<"fulfillmentOptionDisplayName">> => [string()],
%%   <<"fulfillmentOptionId">> => [string()],
%%   <<"fulfillmentOptionName">> => [string()],
%%   <<"fulfillmentOptionType">> => list(any()),
%%   <<"fulfillmentOptionVersion">> => [string()],
%%   <<"operatingSystems">> => list(eks_add_on_operating_system()),
%%   <<"releaseNotes">> => [string()],
%%   <<"usageInstructions">> => [string()]
%% }
-type eks_add_on_fulfillment_option() :: #{binary() => any()}.


%% Example:
%% data_artifact() :: #{
%%   <<"dataClassification">> => [string()],
%%   <<"description">> => [string()],
%%   <<"resourceArn">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type data_artifact() :: #{binary() => any()}.


%% Example:
%% search_facets_input() :: #{
%%   <<"facetTypes">> => list(list(any())()),
%%   <<"filters">> => list(search_filter()),
%%   <<"nextToken">> => string(),
%%   <<"searchText">> => string()
%% }
-type search_facets_input() :: #{binary() => any()}.


%% Example:
%% pricing_unit() :: #{
%%   <<"displayName">> => string(),
%%   <<"pricingUnitType">> => list(any())
%% }
-type pricing_unit() :: #{binary() => any()}.


%% Example:
%% list_fulfillment_options_output() :: #{
%%   <<"fulfillmentOptions">> => list(list()),
%%   <<"nextToken">> => string()
%% }
-type list_fulfillment_options_output() :: #{binary() => any()}.


%% Example:
%% container_fulfillment_option() :: #{
%%   <<"awsSupportedServices">> => list(aws_supported_service()),
%%   <<"fulfillmentOptionDisplayName">> => [string()],
%%   <<"fulfillmentOptionId">> => [string()],
%%   <<"fulfillmentOptionName">> => [string()],
%%   <<"fulfillmentOptionType">> => list(any()),
%%   <<"fulfillmentOptionVersion">> => [string()],
%%   <<"operatingSystems">> => list(container_operating_system()),
%%   <<"releaseNotes">> => [string()],
%%   <<"usageInstructions">> => [string()]
%% }
-type container_fulfillment_option() :: #{binary() => any()}.


%% Example:
%% fulfillment_option_summary() :: #{
%%   <<"displayName">> => string(),
%%   <<"fulfillmentOptionType">> => list(any())
%% }
-type fulfillment_option_summary() :: #{binary() => any()}.


%% Example:
%% purchase_option_badge() :: #{
%%   <<"badgeType">> => list(any()),
%%   <<"displayName">> => string()
%% }
-type purchase_option_badge() :: #{binary() => any()}.


%% Example:
%% use_case() :: #{
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"value">> => string()
%% }
-type use_case() :: #{binary() => any()}.


%% Example:
%% cloud_formation_fulfillment_option() :: #{
%%   <<"fulfillmentOptionDisplayName">> => [string()],
%%   <<"fulfillmentOptionId">> => [string()],
%%   <<"fulfillmentOptionName">> => [string()],
%%   <<"fulfillmentOptionType">> => list(any()),
%%   <<"fulfillmentOptionVersion">> => [string()],
%%   <<"releaseNotes">> => [string()],
%%   <<"usageInstructions">> => [string()]
%% }
-type cloud_formation_fulfillment_option() :: #{binary() => any()}.


%% Example:
%% selector() :: #{
%%   <<"type">> => list(any()),
%%   <<"value">> => string()
%% }
-type selector() :: #{binary() => any()}.


%% Example:
%% get_listing_input() :: #{
%%   <<"listingId">> := string()
%% }
-type get_listing_input() :: #{binary() => any()}.


%% Example:
%% search_facets_output() :: #{
%%   <<"listingFacets">> => map(),
%%   <<"nextToken">> => string(),
%%   <<"totalResults">> => float()
%% }
-type search_facets_output() :: #{binary() => any()}.


%% Example:
%% pricing_model() :: #{
%%   <<"displayName">> => string(),
%%   <<"pricingModelType">> => list(any())
%% }
-type pricing_model() :: #{binary() => any()}.


%% Example:
%% listing_summary_associated_entity() :: #{
%%   <<"product">> => product_information()
%% }
-type listing_summary_associated_entity() :: #{binary() => any()}.


%% Example:
%% support_term() :: #{
%%   <<"id">> => string(),
%%   <<"refundPolicy">> => string(),
%%   <<"type">> => list(any())
%% }
-type support_term() :: #{binary() => any()}.


%% Example:
%% renewal_term() :: #{
%%   <<"id">> => string(),
%%   <<"type">> => list(any())
%% }
-type renewal_term() :: #{binary() => any()}.


%% Example:
%% list_purchase_options_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"purchaseOptions">> => list(purchase_option_summary())
%% }
-type list_purchase_options_output() :: #{binary() => any()}.


%% Example:
%% saas_fulfillment_option() :: #{
%%   <<"fulfillmentOptionDisplayName">> => [string()],
%%   <<"fulfillmentOptionId">> => [string()],
%%   <<"fulfillmentOptionType">> => list(any()),
%%   <<"fulfillmentUrl">> => [string()],
%%   <<"usageInstructions">> => [string()]
%% }
-type saas_fulfillment_option() :: #{binary() => any()}.


%% Example:
%% api_fulfillment_option() :: #{
%%   <<"awsSupportedServices">> => list(aws_supported_service()),
%%   <<"fulfillmentOptionDisplayName">> => [string()],
%%   <<"fulfillmentOptionId">> => [string()],
%%   <<"fulfillmentOptionType">> => list(any()),
%%   <<"usageInstructions">> => [string()]
%% }
-type api_fulfillment_option() :: #{binary() => any()}.


%% Example:
%% listing_associated_entity() :: #{
%%   <<"offer">> => offer_information(),
%%   <<"product">> => product_information()
%% }
-type listing_associated_entity() :: #{binary() => any()}.


%% Example:
%% document_item() :: #{
%%   <<"type">> => list(any()),
%%   <<"url">> => string(),
%%   <<"version">> => [string()]
%% }
-type document_item() :: #{binary() => any()}.


%% Example:
%% use_case_entry() :: #{
%%   <<"useCase">> => use_case()
%% }
-type use_case_entry() :: #{binary() => any()}.


%% Example:
%% listing_badge() :: #{
%%   <<"badgeType">> => list(any()),
%%   <<"displayName">> => string()
%% }
-type listing_badge() :: #{binary() => any()}.


%% Example:
%% search_filter() :: #{
%%   <<"filterType">> => list(any()),
%%   <<"filterValues">> => list(string())
%% }
-type search_filter() :: #{binary() => any()}.


%% Example:
%% listing_facet() :: #{
%%   <<"count">> => float(),
%%   <<"displayName">> => string(),
%%   <<"parent">> => string(),
%%   <<"value">> => string()
%% }
-type listing_facet() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% container_operating_system() :: #{
%%   <<"operatingSystemFamilyName">> => [string()],
%%   <<"operatingSystemName">> => [string()]
%% }
-type container_operating_system() :: #{binary() => any()}.


%% Example:
%% get_offer_set_input() :: #{
%%   <<"offerSetId">> := string()
%% }
-type get_offer_set_input() :: #{binary() => any()}.


%% Example:
%% aws_supported_service() :: #{
%%   <<"description">> => [string()],
%%   <<"displayName">> => [string()],
%%   <<"supportedServiceType">> => [string()]
%% }
-type aws_supported_service() :: #{binary() => any()}.


%% Example:
%% purchase_option_summary() :: #{
%%   <<"associatedEntities">> => list(purchase_option_associated_entity()),
%%   <<"availableFromTime">> => [non_neg_integer()],
%%   <<"badges">> => list(purchase_option_badge()),
%%   <<"catalog">> => string(),
%%   <<"expirationTime">> => [non_neg_integer()],
%%   <<"purchaseOptionId">> => string(),
%%   <<"purchaseOptionName">> => string(),
%%   <<"purchaseOptionType">> => list(any()),
%%   <<"sellerOfRecord">> => seller_information()
%% }
-type purchase_option_summary() :: #{binary() => any()}.


%% Example:
%% usage_based_pricing_term() :: #{
%%   <<"currencyCode">> => string(),
%%   <<"id">> => string(),
%%   <<"rateCards">> => list(usage_based_rate_card_item()),
%%   <<"type">> => list(any())
%% }
-type usage_based_pricing_term() :: #{binary() => any()}.


%% Example:
%% dimension_label() :: #{
%%   <<"displayName">> => string(),
%%   <<"labelType">> => list(any()),
%%   <<"labelValue">> => string()
%% }
-type dimension_label() :: #{binary() => any()}.


%% Example:
%% search_listings_output() :: #{
%%   <<"listingSummaries">> => list(listing_summary()),
%%   <<"nextToken">> => string(),
%%   <<"totalResults">> => float()
%% }
-type search_listings_output() :: #{binary() => any()}.


%% Example:
%% product_information() :: #{
%%   <<"manufacturer">> => seller_information(),
%%   <<"productId">> => string(),
%%   <<"productName">> => string()
%% }
-type product_information() :: #{binary() => any()}.


%% Example:
%% byol_pricing_term() :: #{
%%   <<"id">> => string(),
%%   <<"type">> => list(any())
%% }
-type byol_pricing_term() :: #{binary() => any()}.


%% Example:
%% recurring_payment_term() :: #{
%%   <<"billingPeriod">> => list(any()),
%%   <<"currencyCode">> => string(),
%%   <<"id">> => string(),
%%   <<"price">> => string(),
%%   <<"type">> => list(any())
%% }
-type recurring_payment_term() :: #{binary() => any()}.


%% Example:
%% helm_fulfillment_option() :: #{
%%   <<"awsSupportedServices">> => list(aws_supported_service()),
%%   <<"fulfillmentOptionDisplayName">> => [string()],
%%   <<"fulfillmentOptionId">> => [string()],
%%   <<"fulfillmentOptionName">> => [string()],
%%   <<"fulfillmentOptionType">> => list(any()),
%%   <<"fulfillmentOptionVersion">> => [string()],
%%   <<"operatingSystems">> => list(helm_operating_system()),
%%   <<"releaseNotes">> => [string()],
%%   <<"usageInstructions">> => [string()]
%% }
-type helm_fulfillment_option() :: #{binary() => any()}.


%% Example:
%% grant_item() :: #{
%%   <<"description">> => string(),
%%   <<"dimensionKey">> => string(),
%%   <<"dimensionLabels">> => list(dimension_label()),
%%   <<"displayName">> => string(),
%%   <<"maxQuantity">> => [integer()],
%%   <<"unit">> => string()
%% }
-type grant_item() :: #{binary() => any()}.


%% Example:
%% legal_term() :: #{
%%   <<"documents">> => list(document_item()),
%%   <<"id">> => string(),
%%   <<"type">> => list(any())
%% }
-type legal_term() :: #{binary() => any()}.


%% Example:
%% payment_schedule_term() :: #{
%%   <<"currencyCode">> => string(),
%%   <<"id">> => string(),
%%   <<"schedule">> => list(schedule_item()),
%%   <<"type">> => list(any())
%% }
-type payment_schedule_term() :: #{binary() => any()}.


%% Example:
%% usage_based_rate_card_item() :: #{
%%   <<"rateCard">> => list(rate_card_item())
%% }
-type usage_based_rate_card_item() :: #{binary() => any()}.


%% Example:
%% search_listings_input() :: #{
%%   <<"filters">> => list(search_filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"searchText">> => string(),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any())
%% }
-type search_listings_input() :: #{binary() => any()}.


%% Example:
%% amazon_machine_image_fulfillment_option() :: #{
%%   <<"fulfillmentOptionDisplayName">> => [string()],
%%   <<"fulfillmentOptionId">> => [string()],
%%   <<"fulfillmentOptionName">> => [string()],
%%   <<"fulfillmentOptionType">> => list(any()),
%%   <<"fulfillmentOptionVersion">> => [string()],
%%   <<"operatingSystems">> => list(amazon_machine_image_operating_system()),
%%   <<"recommendation">> => amazon_machine_image_recommendation(),
%%   <<"releaseNotes">> => [string()],
%%   <<"usageInstructions">> => [string()]
%% }
-type amazon_machine_image_fulfillment_option() :: #{binary() => any()}.


%% Example:
%% review_summary() :: #{
%%   <<"reviewSourceSummaries">> => list(review_source_summary())
%% }
-type review_summary() :: #{binary() => any()}.


%% Example:
%% get_offer_terms_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"offerTerms">> => list(list())
%% }
-type get_offer_terms_output() :: #{binary() => any()}.


%% Example:
%% listing_summary() :: #{
%%   <<"associatedEntities">> => list(listing_summary_associated_entity()),
%%   <<"badges">> => list(listing_badge()),
%%   <<"catalog">> => string(),
%%   <<"categories">> => list(category()),
%%   <<"fulfillmentOptionSummaries">> => list(fulfillment_option_summary()),
%%   <<"listingId">> => string(),
%%   <<"listingName">> => string(),
%%   <<"logoThumbnailUrl">> => string(),
%%   <<"pricingModels">> => list(pricing_model()),
%%   <<"pricingUnits">> => list(pricing_unit()),
%%   <<"publisher">> => seller_information(),
%%   <<"reviewSummary">> => review_summary(),
%%   <<"shortDescription">> => string()
%% }
-type listing_summary() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% professional_services_fulfillment_option() :: #{
%%   <<"fulfillmentOptionDisplayName">> => [string()],
%%   <<"fulfillmentOptionId">> => [string()],
%%   <<"fulfillmentOptionType">> => list(any())
%% }
-type professional_services_fulfillment_option() :: #{binary() => any()}.


%% Example:
%% helm_operating_system() :: #{
%%   <<"operatingSystemFamilyName">> => [string()],
%%   <<"operatingSystemName">> => [string()]
%% }
-type helm_operating_system() :: #{binary() => any()}.


%% Example:
%% fixed_upfront_pricing_term() :: #{
%%   <<"currencyCode">> => string(),
%%   <<"duration">> => string(),
%%   <<"grants">> => list(grant_item()),
%%   <<"id">> => string(),
%%   <<"price">> => string(),
%%   <<"type">> => list(any())
%% }
-type fixed_upfront_pricing_term() :: #{binary() => any()}.


%% Example:
%% get_offer_set_output() :: #{
%%   <<"associatedEntities">> => list(offer_set_associated_entity()),
%%   <<"availableFromTime">> => [non_neg_integer()],
%%   <<"badges">> => list(purchase_option_badge()),
%%   <<"buyerNotes">> => string(),
%%   <<"catalog">> => string(),
%%   <<"expirationTime">> => [non_neg_integer()],
%%   <<"offerSetId">> => string(),
%%   <<"offerSetName">> => string(),
%%   <<"sellerOfRecord">> => seller_information()
%% }
-type get_offer_set_output() :: #{binary() => any()}.


%% Example:
%% list_fulfillment_options_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"productId">> := string()
%% }
-type list_fulfillment_options_input() :: #{binary() => any()}.


%% Example:
%% constraints() :: #{
%%   <<"multipleDimensionSelection">> => list(any()),
%%   <<"quantityConfiguration">> => list(any())
%% }
-type constraints() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% review_source_summary() :: #{
%%   <<"averageRating">> => string(),
%%   <<"sourceId">> => list(any()),
%%   <<"sourceName">> => string(),
%%   <<"sourceUrl">> => string(),
%%   <<"totalReviews">> => float()
%% }
-type review_source_summary() :: #{binary() => any()}.


%% Example:
%% get_offer_output() :: #{
%%   <<"agreementProposalId">> => string(),
%%   <<"associatedEntities">> => list(offer_associated_entity()),
%%   <<"availableFromTime">> => [non_neg_integer()],
%%   <<"badges">> => list(purchase_option_badge()),
%%   <<"catalog">> => string(),
%%   <<"expirationTime">> => [non_neg_integer()],
%%   <<"offerId">> => string(),
%%   <<"offerName">> => string(),
%%   <<"pricingModel">> => pricing_model(),
%%   <<"replacementAgreementId">> => string(),
%%   <<"sellerOfRecord">> => seller_information()
%% }
-type get_offer_output() :: #{binary() => any()}.


%% Example:
%% get_offer_input() :: #{
%%   <<"offerId">> := string()
%% }
-type get_offer_input() :: #{binary() => any()}.


%% Example:
%% data_exchange_fulfillment_option() :: #{
%%   <<"dataArtifacts">> => list(data_artifact()),
%%   <<"fulfillmentOptionDisplayName">> => [string()],
%%   <<"fulfillmentOptionId">> => [string()],
%%   <<"fulfillmentOptionType">> => list(any())
%% }
-type data_exchange_fulfillment_option() :: #{binary() => any()}.


%% Example:
%% configurable_upfront_rate_card_item() :: #{
%%   <<"constraints">> => constraints(),
%%   <<"rateCard">> => list(rate_card_item()),
%%   <<"selector">> => selector()
%% }
-type configurable_upfront_rate_card_item() :: #{binary() => any()}.


%% Example:
%% variable_payment_term() :: #{
%%   <<"currencyCode">> => string(),
%%   <<"id">> => string(),
%%   <<"maxTotalChargeAmount">> => string(),
%%   <<"type">> => list(any())
%% }
-type variable_payment_term() :: #{binary() => any()}.


%% Example:
%% sage_maker_algorithm_recommendation() :: #{
%%   <<"recommendedBatchTransformInstanceType">> => [string()],
%%   <<"recommendedRealtimeInferenceInstanceType">> => [string()],
%%   <<"recommendedTrainingInstanceType">> => [string()]
%% }
-type sage_maker_algorithm_recommendation() :: #{binary() => any()}.


%% Example:
%% schedule_item() :: #{
%%   <<"chargeAmount">> => string(),
%%   <<"chargeDate">> => [non_neg_integer()]
%% }
-type schedule_item() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string(),
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% sage_maker_algorithm_fulfillment_option() :: #{
%%   <<"fulfillmentOptionDisplayName">> => [string()],
%%   <<"fulfillmentOptionId">> => [string()],
%%   <<"fulfillmentOptionType">> => list(any()),
%%   <<"fulfillmentOptionVersion">> => [string()],
%%   <<"recommendation">> => sage_maker_algorithm_recommendation(),
%%   <<"releaseNotes">> => [string()],
%%   <<"usageInstructions">> => [string()]
%% }
-type sage_maker_algorithm_fulfillment_option() :: #{binary() => any()}.


%% Example:
%% purchase_option_associated_entity() :: #{
%%   <<"offer">> => offer_information(),
%%   <<"offerSet">> => offer_set_information(),
%%   <<"product">> => product_information()
%% }
-type purchase_option_associated_entity() :: #{binary() => any()}.


%% Example:
%% get_listing_output() :: #{
%%   <<"associatedEntities">> => list(listing_associated_entity()),
%%   <<"badges">> => list(listing_badge()),
%%   <<"catalog">> => string(),
%%   <<"categories">> => list(category()),
%%   <<"fulfillmentOptionSummaries">> => list(fulfillment_option_summary()),
%%   <<"highlights">> => list(string()),
%%   <<"integrationGuide">> => string(),
%%   <<"listingId">> => string(),
%%   <<"listingName">> => string(),
%%   <<"logoThumbnailUrl">> => string(),
%%   <<"longDescription">> => string(),
%%   <<"pricingModels">> => list(pricing_model()),
%%   <<"pricingUnits">> => list(pricing_unit()),
%%   <<"promotionalMedia">> => list(list()),
%%   <<"publisher">> => seller_information(),
%%   <<"resources">> => list(resource()),
%%   <<"reviewSummary">> => review_summary(),
%%   <<"sellerEngagements">> => list(seller_engagement()),
%%   <<"shortDescription">> => string(),
%%   <<"useCases">> => list(use_case_entry())
%% }
-type get_listing_output() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% seller_information() :: #{
%%   <<"displayName">> => string(),
%%   <<"sellerProfileId">> => string()
%% }
-type seller_information() :: #{binary() => any()}.


%% Example:
%% sage_maker_model_recommendation() :: #{
%%   <<"recommendedBatchTransformInstanceType">> => [string()],
%%   <<"recommendedRealtimeInferenceInstanceType">> => [string()]
%% }
-type sage_maker_model_recommendation() :: #{binary() => any()}.


%% Example:
%% sage_maker_model_fulfillment_option() :: #{
%%   <<"fulfillmentOptionDisplayName">> => [string()],
%%   <<"fulfillmentOptionId">> => [string()],
%%   <<"fulfillmentOptionType">> => list(any()),
%%   <<"fulfillmentOptionVersion">> => [string()],
%%   <<"recommendation">> => sage_maker_model_recommendation(),
%%   <<"releaseNotes">> => [string()],
%%   <<"usageInstructions">> => [string()]
%% }
-type sage_maker_model_fulfillment_option() :: #{binary() => any()}.


%% Example:
%% get_offer_terms_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"offerId">> := string()
%% }
-type get_offer_terms_input() :: #{binary() => any()}.


%% Example:
%% category() :: #{
%%   <<"categoryId">> => string(),
%%   <<"displayName">> => string()
%% }
-type category() :: #{binary() => any()}.


%% Example:
%% list_purchase_options_input() :: #{
%%   <<"filters">> => list(purchase_option_filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_purchase_options_input() :: #{binary() => any()}.


%% Example:
%% free_trial_pricing_term() :: #{
%%   <<"duration">> => string(),
%%   <<"grants">> => list(grant_item()),
%%   <<"id">> => string(),
%%   <<"type">> => list(any())
%% }
-type free_trial_pricing_term() :: #{binary() => any()}.


%% Example:
%% validity_term() :: #{
%%   <<"agreementDuration">> => string(),
%%   <<"agreementEndDate">> => [non_neg_integer()],
%%   <<"agreementStartDate">> => [non_neg_integer()],
%%   <<"id">> => string(),
%%   <<"type">> => list(any())
%% }
-type validity_term() :: #{binary() => any()}.


%% Example:
%% promotional_embedded_image() :: #{
%%   <<"description">> => string(),
%%   <<"title">> => string(),
%%   <<"url">> => string()
%% }
-type promotional_embedded_image() :: #{binary() => any()}.


%% Example:
%% ec2_image_builder_component_fulfillment_option() :: #{
%%   <<"awsSupportedServices">> => list(aws_supported_service()),
%%   <<"fulfillmentOptionDisplayName">> => [string()],
%%   <<"fulfillmentOptionId">> => [string()],
%%   <<"fulfillmentOptionName">> => [string()],
%%   <<"fulfillmentOptionType">> => list(any()),
%%   <<"fulfillmentOptionVersion">> => [string()],
%%   <<"operatingSystems">> => list(container_operating_system()),
%%   <<"releaseNotes">> => [string()],
%%   <<"usageInstructions">> => [string()]
%% }
-type ec2_image_builder_component_fulfillment_option() :: #{binary() => any()}.


%% Example:
%% offer_associated_entity() :: #{
%%   <<"offerSet">> => offer_set_information(),
%%   <<"product">> => product_information()
%% }
-type offer_associated_entity() :: #{binary() => any()}.


%% Example:
%% get_product_output() :: #{
%%   <<"catalog">> => string(),
%%   <<"categories">> => list(category()),
%%   <<"deployedOnAws">> => list(any()),
%%   <<"fulfillmentOptionSummaries">> => list(fulfillment_option_summary()),
%%   <<"highlights">> => list(string()),
%%   <<"logoThumbnailUrl">> => string(),
%%   <<"longDescription">> => string(),
%%   <<"manufacturer">> => seller_information(),
%%   <<"productId">> => string(),
%%   <<"productName">> => string(),
%%   <<"promotionalMedia">> => list(list()),
%%   <<"resources">> => list(resource()),
%%   <<"sellerEngagements">> => list(seller_engagement()),
%%   <<"shortDescription">> => string()
%% }
-type get_product_output() :: #{binary() => any()}.


%% Example:
%% rate_card_item() :: #{
%%   <<"description">> => string(),
%%   <<"dimensionKey">> => string(),
%%   <<"dimensionLabels">> => list(dimension_label()),
%%   <<"displayName">> => string(),
%%   <<"price">> => string(),
%%   <<"unit">> => string()
%% }
-type rate_card_item() :: #{binary() => any()}.


%% Example:
%% amazon_machine_image_operating_system() :: #{
%%   <<"operatingSystemFamilyName">> => [string()],
%%   <<"operatingSystemName">> => [string()],
%%   <<"operatingSystemVersion">> => [string()]
%% }
-type amazon_machine_image_operating_system() :: #{binary() => any()}.


%% Example:
%% offer_set_information() :: #{
%%   <<"offerSetId">> => string(),
%%   <<"sellerOfRecord">> => seller_information()
%% }
-type offer_set_information() :: #{binary() => any()}.


%% Example:
%% seller_engagement() :: #{
%%   <<"contentType">> => list(any()),
%%   <<"engagementType">> => list(any()),
%%   <<"value">> => string()
%% }
-type seller_engagement() :: #{binary() => any()}.


%% Example:
%% get_product_input() :: #{
%%   <<"productId">> := string()
%% }
-type get_product_input() :: #{binary() => any()}.


%% Example:
%% promotional_embedded_video() :: #{
%%   <<"description">> => string(),
%%   <<"preview">> => string(),
%%   <<"thumbnail">> => string(),
%%   <<"title">> => string(),
%%   <<"url">> => string()
%% }
-type promotional_embedded_video() :: #{binary() => any()}.


%% Example:
%% offer_set_associated_entity() :: #{
%%   <<"offer">> => offer_information(),
%%   <<"product">> => product_information()
%% }
-type offer_set_associated_entity() :: #{binary() => any()}.


%% Example:
%% amazon_machine_image_recommendation() :: #{
%%   <<"instanceType">> => [string()]
%% }
-type amazon_machine_image_recommendation() :: #{binary() => any()}.


%% Example:
%% eks_add_on_operating_system() :: #{
%%   <<"operatingSystemFamilyName">> => [string()],
%%   <<"operatingSystemName">> => [string()]
%% }
-type eks_add_on_operating_system() :: #{binary() => any()}.


%% Example:
%% purchase_option_filter() :: #{
%%   <<"filterType">> => list(any()),
%%   <<"filterValues">> => list(string())
%% }
-type purchase_option_filter() :: #{binary() => any()}.


%% Example:
%% configurable_upfront_pricing_term() :: #{
%%   <<"currencyCode">> => string(),
%%   <<"id">> => string(),
%%   <<"rateCards">> => list(configurable_upfront_rate_card_item()),
%%   <<"type">> => list(any())
%% }
-type configurable_upfront_pricing_term() :: #{binary() => any()}.


%% Example:
%% offer_information() :: #{
%%   <<"offerId">> => string(),
%%   <<"offerName">> => string(),
%%   <<"sellerOfRecord">> => seller_information()
%% }
-type offer_information() :: #{binary() => any()}.


%% Example:
%% resource() :: #{
%%   <<"contentType">> => list(any()),
%%   <<"displayName">> => string(),
%%   <<"resourceType">> => list(any()),
%%   <<"value">> => string()
%% }
-type resource() :: #{binary() => any()}.

-type get_listing_errors() ::
    resource_not_found_exception().

-type get_offer_errors() ::
    resource_not_found_exception().

-type get_offer_set_errors() ::
    resource_not_found_exception().

-type get_offer_terms_errors() ::
    resource_not_found_exception().

-type get_product_errors() ::
    resource_not_found_exception().

-type list_fulfillment_options_errors() ::
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Provides details about a listing, such as descriptions, badges,
%% categories, pricing model summaries, reviews, and associated products and
%% offers.
-spec get_listing(aws_client:aws_client(), get_listing_input()) ->
    {ok, get_listing_output(), tuple()} |
    {error, any()} |
    {error, get_listing_errors(), tuple()}.
get_listing(Client, Input) ->
    get_listing(Client, Input, []).

-spec get_listing(aws_client:aws_client(), get_listing_input(), proplists:proplist()) ->
    {ok, get_listing_output(), tuple()} |
    {error, any()} |
    {error, get_listing_errors(), tuple()}.
get_listing(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2026-02-05/getListing"],
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

%% @doc Provides details about an offer, such as the pricing model, seller of
%% record, availability dates, badges, and associated products.
-spec get_offer(aws_client:aws_client(), get_offer_input()) ->
    {ok, get_offer_output(), tuple()} |
    {error, any()} |
    {error, get_offer_errors(), tuple()}.
get_offer(Client, Input) ->
    get_offer(Client, Input, []).

-spec get_offer(aws_client:aws_client(), get_offer_input(), proplists:proplist()) ->
    {ok, get_offer_output(), tuple()} |
    {error, any()} |
    {error, get_offer_errors(), tuple()}.
get_offer(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2026-02-05/getOffer"],
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

%% @doc Provides details about an offer set, which is a bundle of offers
%% across multiple products.
%%
%% Includes the seller, availability dates, buyer notes, and associated
%% product-offer pairs.
-spec get_offer_set(aws_client:aws_client(), get_offer_set_input()) ->
    {ok, get_offer_set_output(), tuple()} |
    {error, any()} |
    {error, get_offer_set_errors(), tuple()}.
get_offer_set(Client, Input) ->
    get_offer_set(Client, Input, []).

-spec get_offer_set(aws_client:aws_client(), get_offer_set_input(), proplists:proplist()) ->
    {ok, get_offer_set_output(), tuple()} |
    {error, any()} |
    {error, get_offer_set_errors(), tuple()}.
get_offer_set(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2026-02-05/getOfferSet"],
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

%% @doc Returns the terms attached to an offer, such as pricing terms
%% (usage-based, contract, BYOL, free trial), legal terms, payment schedules,
%% validity terms, support terms, and renewal terms.
-spec get_offer_terms(aws_client:aws_client(), get_offer_terms_input()) ->
    {ok, get_offer_terms_output(), tuple()} |
    {error, any()} |
    {error, get_offer_terms_errors(), tuple()}.
get_offer_terms(Client, Input) ->
    get_offer_terms(Client, Input, []).

-spec get_offer_terms(aws_client:aws_client(), get_offer_terms_input(), proplists:proplist()) ->
    {ok, get_offer_terms_output(), tuple()} |
    {error, any()} |
    {error, get_offer_terms_errors(), tuple()}.
get_offer_terms(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2026-02-05/getOfferTerms"],
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

%% @doc Provides details about a product, such as descriptions, highlights,
%% categories, fulfillment option summaries, promotional media, and seller
%% engagement options.
-spec get_product(aws_client:aws_client(), get_product_input()) ->
    {ok, get_product_output(), tuple()} |
    {error, any()} |
    {error, get_product_errors(), tuple()}.
get_product(Client, Input) ->
    get_product(Client, Input, []).

-spec get_product(aws_client:aws_client(), get_product_input(), proplists:proplist()) ->
    {ok, get_product_output(), tuple()} |
    {error, any()} |
    {error, get_product_errors(), tuple()}.
get_product(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2026-02-05/getProduct"],
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

%% @doc Returns the fulfillment options available for a product, including
%% deployment details such as version information, operating systems, usage
%% instructions, and release notes.
-spec list_fulfillment_options(aws_client:aws_client(), list_fulfillment_options_input()) ->
    {ok, list_fulfillment_options_output(), tuple()} |
    {error, any()} |
    {error, list_fulfillment_options_errors(), tuple()}.
list_fulfillment_options(Client, Input) ->
    list_fulfillment_options(Client, Input, []).

-spec list_fulfillment_options(aws_client:aws_client(), list_fulfillment_options_input(), proplists:proplist()) ->
    {ok, list_fulfillment_options_output(), tuple()} |
    {error, any()} |
    {error, list_fulfillment_options_errors(), tuple()}.
list_fulfillment_options(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2026-02-05/listFulfillmentOptions"],
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

%% @doc Returns the purchase options (offers and offer sets) available to the
%% buyer.
%%
%% You can filter results by product, seller, purchase option type,
%% visibility scope, and availability status.
%%
%% You must include at least one of the following filters in the request: a
%% `PRODUCT_ID' filter to specify the product for which to retrieve
%% purchase options, or a `VISIBILITY_SCOPE' filter to retrieve purchase
%% options by visibility.
-spec list_purchase_options(aws_client:aws_client(), list_purchase_options_input()) ->
    {ok, list_purchase_options_output(), tuple()} |
    {error, any()}.
list_purchase_options(Client, Input) ->
    list_purchase_options(Client, Input, []).

-spec list_purchase_options(aws_client:aws_client(), list_purchase_options_input(), proplists:proplist()) ->
    {ok, list_purchase_options_output(), tuple()} |
    {error, any()}.
list_purchase_options(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2026-02-05/listPurchaseOptions"],
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

%% @doc Returns available facet values for filtering listings, such as
%% categories, pricing models, fulfillment option types, publishers, and
%% customer ratings.
%%
%% Each facet value includes a count of matching listings.
-spec search_facets(aws_client:aws_client(), search_facets_input()) ->
    {ok, search_facets_output(), tuple()} |
    {error, any()}.
search_facets(Client, Input) ->
    search_facets(Client, Input, []).

-spec search_facets(aws_client:aws_client(), search_facets_input(), proplists:proplist()) ->
    {ok, search_facets_output(), tuple()} |
    {error, any()}.
search_facets(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2026-02-05/searchFacets"],
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

%% @doc Returns a list of product listings based on search criteria and
%% filters.
%%
%% You can search by keyword, filter by category, pricing model, fulfillment
%% type, and other attributes, and sort results by relevance or customer
%% rating.
-spec search_listings(aws_client:aws_client(), search_listings_input()) ->
    {ok, search_listings_output(), tuple()} |
    {error, any()}.
search_listings(Client, Input) ->
    search_listings(Client, Input, []).

-spec search_listings(aws_client:aws_client(), search_listings_input(), proplists:proplist()) ->
    {ok, search_listings_output(), tuple()} |
    {error, any()}.
search_listings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2026-02-05/searchListings"],
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
    Client1 = Client#{service => <<"aws-marketplace">>},
    Host = build_host(<<"discovery-marketplace">>, Client1),
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
