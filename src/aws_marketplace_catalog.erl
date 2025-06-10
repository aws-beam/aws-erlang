%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Catalog API actions allow you to manage your entities through list,
%% describe, and
%% update capabilities.
%%
%% An entity can be a product or an offer on AWS Marketplace.
%%
%% You can automate your entity update process by integrating the AWS
%% Marketplace Catalog
%% API with your AWS Marketplace product build or deployment pipelines. You
%% can also create
%% your own applications on top of the Catalog API to manage your products on
%% AWS
%% Marketplace.
-module(aws_marketplace_catalog).

-export([batch_describe_entities/2,
         batch_describe_entities/3,
         cancel_change_set/2,
         cancel_change_set/3,
         delete_resource_policy/2,
         delete_resource_policy/3,
         describe_change_set/3,
         describe_change_set/5,
         describe_change_set/6,
         describe_entity/3,
         describe_entity/5,
         describe_entity/6,
         get_resource_policy/2,
         get_resource_policy/4,
         get_resource_policy/5,
         list_change_sets/2,
         list_change_sets/3,
         list_entities/2,
         list_entities/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_resource_policy/2,
         put_resource_policy/3,
         start_change_set/2,
         start_change_set/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% resale_authorization_product_name_filter() :: #{
%%   <<"ValueList">> => list(string()()),
%%   <<"WildCardValue">> => string()
%% }
-type resale_authorization_product_name_filter() :: #{binary() => any()}.


%% Example:
%% list_entities_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"EntityType">> := string(),
%%   <<"EntityTypeFilters">> => list(),
%%   <<"EntityTypeSort">> => list(),
%%   <<"FilterList">> => list(filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OwnershipType">> => list(any()),
%%   <<"Sort">> => sort()
%% }
-type list_entities_request() :: #{binary() => any()}.


%% Example:
%% describe_change_set_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ChangeSetId">> := string()
%% }
-type describe_change_set_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag()())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_response() :: #{}
-type delete_resource_policy_response() :: #{}.


%% Example:
%% cancel_change_set_response() :: #{
%%   <<"ChangeSetArn">> => string(),
%%   <<"ChangeSetId">> => string()
%% }
-type cancel_change_set_response() :: #{binary() => any()}.


%% Example:
%% change() :: #{
%%   <<"ChangeName">> => string(),
%%   <<"ChangeType">> => string(),
%%   <<"Details">> => string(),
%%   <<"DetailsDocument">> => any(),
%%   <<"Entity">> => entity(),
%%   <<"EntityTags">> => list(tag()())
%% }
-type change() :: #{binary() => any()}.


%% Example:
%% resale_authorization_created_date_filter_date_range() :: #{
%%   <<"AfterValue">> => string(),
%%   <<"BeforeValue">> => string()
%% }
-type resale_authorization_created_date_filter_date_range() :: #{binary() => any()}.


%% Example:
%% list_change_sets_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"FilterList">> => list(filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Sort">> => sort()
%% }
-type list_change_sets_request() :: #{binary() => any()}.


%% Example:
%% data_product_filters() :: #{
%%   <<"EntityId">> => data_product_entity_id_filter(),
%%   <<"LastModifiedDate">> => data_product_last_modified_date_filter(),
%%   <<"ProductTitle">> => data_product_title_filter(),
%%   <<"Visibility">> => data_product_visibility_filter()
%% }
-type data_product_filters() :: #{binary() => any()}.


%% Example:
%% entity_detail() :: #{
%%   <<"DetailsDocument">> => any(),
%%   <<"EntityArn">> => string(),
%%   <<"EntityIdentifier">> => string(),
%%   <<"EntityType">> => string(),
%%   <<"LastModifiedDate">> => string()
%% }
-type entity_detail() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% entity() :: #{
%%   <<"Identifier">> => string(),
%%   <<"Type">> => string()
%% }
-type entity() :: #{binary() => any()}.


%% Example:
%% ami_product_sort() :: #{
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type ami_product_sort() :: #{binary() => any()}.


%% Example:
%% machine_learning_product_entity_id_filter() :: #{
%%   <<"ValueList">> => list(string()())
%% }
-type machine_learning_product_entity_id_filter() :: #{binary() => any()}.


%% Example:
%% resource_in_use_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.


%% Example:
%% resale_authorization_manufacturer_account_id_filter() :: #{
%%   <<"ValueList">> => list(string()()),
%%   <<"WildCardValue">> => string()
%% }
-type resale_authorization_manufacturer_account_id_filter() :: #{binary() => any()}.


%% Example:
%% ami_product_title_filter() :: #{
%%   <<"ValueList">> => list(string()()),
%%   <<"WildCardValue">> => string()
%% }
-type ami_product_title_filter() :: #{binary() => any()}.


%% Example:
%% offer_targeting_filter() :: #{
%%   <<"ValueList">> => list(list(any())())
%% }
-type offer_targeting_filter() :: #{binary() => any()}.


%% Example:
%% resale_authorization_summary() :: #{
%%   <<"AvailabilityEndDate">> => string(),
%%   <<"CreatedDate">> => string(),
%%   <<"ManufacturerAccountId">> => string(),
%%   <<"ManufacturerLegalName">> => string(),
%%   <<"Name">> => string(),
%%   <<"OfferExtendedStatus">> => string(),
%%   <<"ProductId">> => string(),
%%   <<"ProductName">> => string(),
%%   <<"ResellerAccountID">> => string(),
%%   <<"ResellerLegalName">> => string(),
%%   <<"Status">> => list(any())
%% }
-type resale_authorization_summary() :: #{binary() => any()}.


%% Example:
%% saa_s_product_entity_id_filter() :: #{
%%   <<"ValueList">> => list(string()())
%% }
-type saa_s_product_entity_id_filter() :: #{binary() => any()}.


%% Example:
%% data_product_summary() :: #{
%%   <<"ProductTitle">> => string(),
%%   <<"Visibility">> => list(any())
%% }
-type data_product_summary() :: #{binary() => any()}.


%% Example:
%% resale_authorization_manufacturer_legal_name_filter() :: #{
%%   <<"ValueList">> => list(string()()),
%%   <<"WildCardValue">> => string()
%% }
-type resale_authorization_manufacturer_legal_name_filter() :: #{binary() => any()}.


%% Example:
%% saa_s_product_title_filter() :: #{
%%   <<"ValueList">> => list(string()()),
%%   <<"WildCardValue">> => string()
%% }
-type saa_s_product_title_filter() :: #{binary() => any()}.


%% Example:
%% resale_authorization_created_date_filter() :: #{
%%   <<"DateRange">> => resale_authorization_created_date_filter_date_range(),
%%   <<"ValueList">> => list(string()())
%% }
-type resale_authorization_created_date_filter() :: #{binary() => any()}.


%% Example:
%% entity_summary() :: #{
%%   <<"AmiProductSummary">> => ami_product_summary(),
%%   <<"ContainerProductSummary">> => container_product_summary(),
%%   <<"DataProductSummary">> => data_product_summary(),
%%   <<"EntityArn">> => string(),
%%   <<"EntityId">> => string(),
%%   <<"EntityType">> => string(),
%%   <<"LastModifiedDate">> => string(),
%%   <<"MachineLearningProductSummary">> => machine_learning_product_summary(),
%%   <<"Name">> => string(),
%%   <<"OfferSummary">> => offer_summary(),
%%   <<"ResaleAuthorizationSummary">> => resale_authorization_summary(),
%%   <<"SaaSProductSummary">> => saa_s_product_summary(),
%%   <<"Visibility">> => string()
%% }
-type entity_summary() :: #{binary() => any()}.


%% Example:
%% resale_authorization_availability_end_date_filter() :: #{
%%   <<"DateRange">> => resale_authorization_availability_end_date_filter_date_range(),
%%   <<"ValueList">> => list(string()())
%% }
-type resale_authorization_availability_end_date_filter() :: #{binary() => any()}.


%% Example:
%% describe_change_set_response() :: #{
%%   <<"ChangeSet">> => list(change_summary()()),
%%   <<"ChangeSetArn">> => string(),
%%   <<"ChangeSetId">> => string(),
%%   <<"ChangeSetName">> => string(),
%%   <<"EndTime">> => string(),
%%   <<"FailureCode">> => list(any()),
%%   <<"FailureDescription">> => string(),
%%   <<"Intent">> => list(any()),
%%   <<"StartTime">> => string(),
%%   <<"Status">> => list(any())
%% }
-type describe_change_set_response() :: #{binary() => any()}.


%% Example:
%% offer_availability_end_date_filter_date_range() :: #{
%%   <<"AfterValue">> => string(),
%%   <<"BeforeValue">> => string()
%% }
-type offer_availability_end_date_filter_date_range() :: #{binary() => any()}.


%% Example:
%% ami_product_summary() :: #{
%%   <<"ProductTitle">> => string(),
%%   <<"Visibility">> => list(any())
%% }
-type ami_product_summary() :: #{binary() => any()}.


%% Example:
%% get_resource_policy_response() :: #{
%%   <<"Policy">> => string()
%% }
-type get_resource_policy_response() :: #{binary() => any()}.


%% Example:
%% data_product_last_modified_date_filter_date_range() :: #{
%%   <<"AfterValue">> => string(),
%%   <<"BeforeValue">> => string()
%% }
-type data_product_last_modified_date_filter_date_range() :: #{binary() => any()}.


%% Example:
%% container_product_entity_id_filter() :: #{
%%   <<"ValueList">> => list(string()())
%% }
-type container_product_entity_id_filter() :: #{binary() => any()}.


%% Example:
%% container_product_sort() :: #{
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type container_product_sort() :: #{binary() => any()}.


%% Example:
%% internal_service_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_service_exception() :: #{binary() => any()}.


%% Example:
%% describe_entity_response() :: #{
%%   <<"Details">> => string(),
%%   <<"DetailsDocument">> => any(),
%%   <<"EntityArn">> => string(),
%%   <<"EntityIdentifier">> => string(),
%%   <<"EntityType">> => string(),
%%   <<"LastModifiedDate">> => string()
%% }
-type describe_entity_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% resale_authorization_product_id_filter() :: #{
%%   <<"ValueList">> => list(string()()),
%%   <<"WildCardValue">> => string()
%% }
-type resale_authorization_product_id_filter() :: #{binary() => any()}.


%% Example:
%% resale_authorization_filters() :: #{
%%   <<"AvailabilityEndDate">> => resale_authorization_availability_end_date_filter(),
%%   <<"CreatedDate">> => resale_authorization_created_date_filter(),
%%   <<"EntityId">> => resale_authorization_entity_id_filter(),
%%   <<"LastModifiedDate">> => resale_authorization_last_modified_date_filter(),
%%   <<"ManufacturerAccountId">> => resale_authorization_manufacturer_account_id_filter(),
%%   <<"ManufacturerLegalName">> => resale_authorization_manufacturer_legal_name_filter(),
%%   <<"Name">> => resale_authorization_name_filter(),
%%   <<"OfferExtendedStatus">> => resale_authorization_offer_extended_status_filter(),
%%   <<"ProductId">> => resale_authorization_product_id_filter(),
%%   <<"ProductName">> => resale_authorization_product_name_filter(),
%%   <<"ResellerAccountID">> => resale_authorization_reseller_account_id_filter(),
%%   <<"ResellerLegalName">> => resale_authorization_reseller_legal_name_filter(),
%%   <<"Status">> => resale_authorization_status_filter()
%% }
-type resale_authorization_filters() :: #{binary() => any()}.


%% Example:
%% machine_learning_product_sort() :: #{
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type machine_learning_product_sort() :: #{binary() => any()}.


%% Example:
%% data_product_visibility_filter() :: #{
%%   <<"ValueList">> => list(list(any())())
%% }
-type data_product_visibility_filter() :: #{binary() => any()}.


%% Example:
%% resale_authorization_offer_extended_status_filter() :: #{
%%   <<"ValueList">> => list(string()())
%% }
-type resale_authorization_offer_extended_status_filter() :: #{binary() => any()}.


%% Example:
%% container_product_visibility_filter() :: #{
%%   <<"ValueList">> => list(list(any())())
%% }
-type container_product_visibility_filter() :: #{binary() => any()}.


%% Example:
%% resale_authorization_last_modified_date_filter_date_range() :: #{
%%   <<"AfterValue">> => string(),
%%   <<"BeforeValue">> => string()
%% }
-type resale_authorization_last_modified_date_filter_date_range() :: #{binary() => any()}.


%% Example:
%% resale_authorization_reseller_legal_name_filter() :: #{
%%   <<"ValueList">> => list(string()()),
%%   <<"WildCardValue">> => string()
%% }
-type resale_authorization_reseller_legal_name_filter() :: #{binary() => any()}.


%% Example:
%% container_product_filters() :: #{
%%   <<"EntityId">> => container_product_entity_id_filter(),
%%   <<"LastModifiedDate">> => container_product_last_modified_date_filter(),
%%   <<"ProductTitle">> => container_product_title_filter(),
%%   <<"Visibility">> => container_product_visibility_filter()
%% }
-type container_product_filters() :: #{binary() => any()}.


%% Example:
%% batch_describe_entities_request() :: #{
%%   <<"EntityRequestList">> := list(entity_request()())
%% }
-type batch_describe_entities_request() :: #{binary() => any()}.


%% Example:
%% saa_s_product_last_modified_date_filter_date_range() :: #{
%%   <<"AfterValue">> => string(),
%%   <<"BeforeValue">> => string()
%% }
-type saa_s_product_last_modified_date_filter_date_range() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% saa_s_product_visibility_filter() :: #{
%%   <<"ValueList">> => list(list(any())())
%% }
-type saa_s_product_visibility_filter() :: #{binary() => any()}.


%% Example:
%% offer_last_modified_date_filter() :: #{
%%   <<"DateRange">> => offer_last_modified_date_filter_date_range()
%% }
-type offer_last_modified_date_filter() :: #{binary() => any()}.


%% Example:
%% machine_learning_product_title_filter() :: #{
%%   <<"ValueList">> => list(string()()),
%%   <<"WildCardValue">> => string()
%% }
-type machine_learning_product_title_filter() :: #{binary() => any()}.


%% Example:
%% container_product_last_modified_date_filter() :: #{
%%   <<"DateRange">> => container_product_last_modified_date_filter_date_range()
%% }
-type container_product_last_modified_date_filter() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% ami_product_visibility_filter() :: #{
%%   <<"ValueList">> => list(list(any())())
%% }
-type ami_product_visibility_filter() :: #{binary() => any()}.


%% Example:
%% machine_learning_product_last_modified_date_filter_date_range() :: #{
%%   <<"AfterValue">> => string(),
%%   <<"BeforeValue">> => string()
%% }
-type machine_learning_product_last_modified_date_filter_date_range() :: #{binary() => any()}.


%% Example:
%% offer_release_date_filter() :: #{
%%   <<"DateRange">> => offer_release_date_filter_date_range()
%% }
-type offer_release_date_filter() :: #{binary() => any()}.


%% Example:
%% start_change_set_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ChangeSet">> := list(change()()),
%%   <<"ChangeSetName">> => string(),
%%   <<"ChangeSetTags">> => list(tag()()),
%%   <<"ClientRequestToken">> => string(),
%%   <<"Intent">> => list(any())
%% }
-type start_change_set_request() :: #{binary() => any()}.


%% Example:
%% ami_product_entity_id_filter() :: #{
%%   <<"ValueList">> => list(string()())
%% }
-type ami_product_entity_id_filter() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% container_product_summary() :: #{
%%   <<"ProductTitle">> => string(),
%%   <<"Visibility">> => list(any())
%% }
-type container_product_summary() :: #{binary() => any()}.


%% Example:
%% offer_resale_authorization_id_filter() :: #{
%%   <<"ValueList">> => list(string()())
%% }
-type offer_resale_authorization_id_filter() :: #{binary() => any()}.


%% Example:
%% resale_authorization_entity_id_filter() :: #{
%%   <<"ValueList">> => list(string()())
%% }
-type resale_authorization_entity_id_filter() :: #{binary() => any()}.


%% Example:
%% offer_product_id_filter() :: #{
%%   <<"ValueList">> => list(string()())
%% }
-type offer_product_id_filter() :: #{binary() => any()}.


%% Example:
%% change_set_summary_list_item() :: #{
%%   <<"ChangeSetArn">> => string(),
%%   <<"ChangeSetId">> => string(),
%%   <<"ChangeSetName">> => string(),
%%   <<"EndTime">> => string(),
%%   <<"EntityIdList">> => list(string()()),
%%   <<"FailureCode">> => list(any()),
%%   <<"StartTime">> => string(),
%%   <<"Status">> => list(any())
%% }
-type change_set_summary_list_item() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"ResourceArn">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% resource_not_supported_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_supported_exception() :: #{binary() => any()}.


%% Example:
%% resale_authorization_name_filter() :: #{
%%   <<"ValueList">> => list(string()()),
%%   <<"WildCardValue">> => string()
%% }
-type resale_authorization_name_filter() :: #{binary() => any()}.


%% Example:
%% data_product_sort() :: #{
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type data_product_sort() :: #{binary() => any()}.


%% Example:
%% saa_s_product_filters() :: #{
%%   <<"EntityId">> => saa_s_product_entity_id_filter(),
%%   <<"LastModifiedDate">> => saa_s_product_last_modified_date_filter(),
%%   <<"ProductTitle">> => saa_s_product_title_filter(),
%%   <<"Visibility">> => saa_s_product_visibility_filter()
%% }
-type saa_s_product_filters() :: #{binary() => any()}.


%% Example:
%% get_resource_policy_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type get_resource_policy_request() :: #{binary() => any()}.


%% Example:
%% offer_summary() :: #{
%%   <<"AvailabilityEndDate">> => string(),
%%   <<"BuyerAccounts">> => list(string()()),
%%   <<"Name">> => string(),
%%   <<"ProductId">> => string(),
%%   <<"ReleaseDate">> => string(),
%%   <<"ResaleAuthorizationId">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Targeting">> => list(list(any())())
%% }
-type offer_summary() :: #{binary() => any()}.


%% Example:
%% filter() :: #{
%%   <<"Name">> => string(),
%%   <<"ValueList">> => list(string()())
%% }
-type filter() :: #{binary() => any()}.


%% Example:
%% saa_s_product_summary() :: #{
%%   <<"ProductTitle">> => string(),
%%   <<"Visibility">> => list(any())
%% }
-type saa_s_product_summary() :: #{binary() => any()}.


%% Example:
%% sort() :: #{
%%   <<"SortBy">> => string(),
%%   <<"SortOrder">> => list(any())
%% }
-type sort() :: #{binary() => any()}.


%% Example:
%% ami_product_last_modified_date_filter_date_range() :: #{
%%   <<"AfterValue">> => string(),
%%   <<"BeforeValue">> => string()
%% }
-type ami_product_last_modified_date_filter_date_range() :: #{binary() => any()}.


%% Example:
%% data_product_title_filter() :: #{
%%   <<"ValueList">> => list(string()()),
%%   <<"WildCardValue">> => string()
%% }
-type data_product_title_filter() :: #{binary() => any()}.


%% Example:
%% resale_authorization_status_filter() :: #{
%%   <<"ValueList">> => list(list(any())())
%% }
-type resale_authorization_status_filter() :: #{binary() => any()}.


%% Example:
%% describe_entity_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"EntityId">> := string()
%% }
-type describe_entity_request() :: #{binary() => any()}.


%% Example:
%% put_resource_policy_request() :: #{
%%   <<"Policy">> := string(),
%%   <<"ResourceArn">> := string()
%% }
-type put_resource_policy_request() :: #{binary() => any()}.


%% Example:
%% error_detail() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string()
%% }
-type error_detail() :: #{binary() => any()}.


%% Example:
%% change_summary() :: #{
%%   <<"ChangeName">> => string(),
%%   <<"ChangeType">> => string(),
%%   <<"Details">> => string(),
%%   <<"DetailsDocument">> => any(),
%%   <<"Entity">> => entity(),
%%   <<"ErrorDetailList">> => list(error_detail()())
%% }
-type change_summary() :: #{binary() => any()}.


%% Example:
%% start_change_set_response() :: #{
%%   <<"ChangeSetArn">> => string(),
%%   <<"ChangeSetId">> => string()
%% }
-type start_change_set_response() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% saa_s_product_last_modified_date_filter() :: #{
%%   <<"DateRange">> => saa_s_product_last_modified_date_filter_date_range()
%% }
-type saa_s_product_last_modified_date_filter() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% offer_name_filter() :: #{
%%   <<"ValueList">> => list(string()()),
%%   <<"WildCardValue">> => string()
%% }
-type offer_name_filter() :: #{binary() => any()}.


%% Example:
%% machine_learning_product_summary() :: #{
%%   <<"ProductTitle">> => string(),
%%   <<"Visibility">> => list(any())
%% }
-type machine_learning_product_summary() :: #{binary() => any()}.


%% Example:
%% offer_sort() :: #{
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type offer_sort() :: #{binary() => any()}.


%% Example:
%% saa_s_product_sort() :: #{
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type saa_s_product_sort() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.


%% Example:
%% offer_state_filter() :: #{
%%   <<"ValueList">> => list(list(any())())
%% }
-type offer_state_filter() :: #{binary() => any()}.


%% Example:
%% offer_entity_id_filter() :: #{
%%   <<"ValueList">> => list(string()())
%% }
-type offer_entity_id_filter() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% offer_buyer_accounts_filter() :: #{
%%   <<"WildCardValue">> => string()
%% }
-type offer_buyer_accounts_filter() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_response() :: #{}
-type put_resource_policy_response() :: #{}.


%% Example:
%% data_product_entity_id_filter() :: #{
%%   <<"ValueList">> => list(string()())
%% }
-type data_product_entity_id_filter() :: #{binary() => any()}.


%% Example:
%% offer_last_modified_date_filter_date_range() :: #{
%%   <<"AfterValue">> => string(),
%%   <<"BeforeValue">> => string()
%% }
-type offer_last_modified_date_filter_date_range() :: #{binary() => any()}.


%% Example:
%% entity_request() :: #{
%%   <<"Catalog">> => string(),
%%   <<"EntityId">> => string()
%% }
-type entity_request() :: #{binary() => any()}.


%% Example:
%% container_product_title_filter() :: #{
%%   <<"ValueList">> => list(string()()),
%%   <<"WildCardValue">> => string()
%% }
-type container_product_title_filter() :: #{binary() => any()}.


%% Example:
%% delete_resource_policy_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type delete_resource_policy_request() :: #{binary() => any()}.


%% Example:
%% ami_product_filters() :: #{
%%   <<"EntityId">> => ami_product_entity_id_filter(),
%%   <<"LastModifiedDate">> => ami_product_last_modified_date_filter(),
%%   <<"ProductTitle">> => ami_product_title_filter(),
%%   <<"Visibility">> => ami_product_visibility_filter()
%% }
-type ami_product_filters() :: #{binary() => any()}.


%% Example:
%% resale_authorization_availability_end_date_filter_date_range() :: #{
%%   <<"AfterValue">> => string(),
%%   <<"BeforeValue">> => string()
%% }
-type resale_authorization_availability_end_date_filter_date_range() :: #{binary() => any()}.


%% Example:
%% batch_describe_entities_response() :: #{
%%   <<"EntityDetails">> => map(),
%%   <<"Errors">> => map()
%% }
-type batch_describe_entities_response() :: #{binary() => any()}.


%% Example:
%% batch_describe_error_detail() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string()
%% }
-type batch_describe_error_detail() :: #{binary() => any()}.


%% Example:
%% machine_learning_product_visibility_filter() :: #{
%%   <<"ValueList">> => list(list(any())())
%% }
-type machine_learning_product_visibility_filter() :: #{binary() => any()}.


%% Example:
%% list_entities_response() :: #{
%%   <<"EntitySummaryList">> => list(entity_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_entities_response() :: #{binary() => any()}.


%% Example:
%% resale_authorization_last_modified_date_filter() :: #{
%%   <<"DateRange">> => resale_authorization_last_modified_date_filter_date_range()
%% }
-type resale_authorization_last_modified_date_filter() :: #{binary() => any()}.


%% Example:
%% resale_authorization_reseller_account_id_filter() :: #{
%%   <<"ValueList">> => list(string()()),
%%   <<"WildCardValue">> => string()
%% }
-type resale_authorization_reseller_account_id_filter() :: #{binary() => any()}.


%% Example:
%% cancel_change_set_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ChangeSetId">> := string()
%% }
-type cancel_change_set_request() :: #{binary() => any()}.


%% Example:
%% resale_authorization_sort() :: #{
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type resale_authorization_sort() :: #{binary() => any()}.


%% Example:
%% container_product_last_modified_date_filter_date_range() :: #{
%%   <<"AfterValue">> => string(),
%%   <<"BeforeValue">> => string()
%% }
-type container_product_last_modified_date_filter_date_range() :: #{binary() => any()}.


%% Example:
%% offer_filters() :: #{
%%   <<"AvailabilityEndDate">> => offer_availability_end_date_filter(),
%%   <<"BuyerAccounts">> => offer_buyer_accounts_filter(),
%%   <<"EntityId">> => offer_entity_id_filter(),
%%   <<"LastModifiedDate">> => offer_last_modified_date_filter(),
%%   <<"Name">> => offer_name_filter(),
%%   <<"ProductId">> => offer_product_id_filter(),
%%   <<"ReleaseDate">> => offer_release_date_filter(),
%%   <<"ResaleAuthorizationId">> => offer_resale_authorization_id_filter(),
%%   <<"State">> => offer_state_filter(),
%%   <<"Targeting">> => offer_targeting_filter()
%% }
-type offer_filters() :: #{binary() => any()}.


%% Example:
%% ami_product_last_modified_date_filter() :: #{
%%   <<"DateRange">> => ami_product_last_modified_date_filter_date_range()
%% }
-type ami_product_last_modified_date_filter() :: #{binary() => any()}.


%% Example:
%% list_change_sets_response() :: #{
%%   <<"ChangeSetSummaryList">> => list(change_set_summary_list_item()()),
%%   <<"NextToken">> => string()
%% }
-type list_change_sets_response() :: #{binary() => any()}.


%% Example:
%% machine_learning_product_last_modified_date_filter() :: #{
%%   <<"DateRange">> => machine_learning_product_last_modified_date_filter_date_range()
%% }
-type machine_learning_product_last_modified_date_filter() :: #{binary() => any()}.


%% Example:
%% data_product_last_modified_date_filter() :: #{
%%   <<"DateRange">> => data_product_last_modified_date_filter_date_range()
%% }
-type data_product_last_modified_date_filter() :: #{binary() => any()}.


%% Example:
%% offer_release_date_filter_date_range() :: #{
%%   <<"AfterValue">> => string(),
%%   <<"BeforeValue">> => string()
%% }
-type offer_release_date_filter_date_range() :: #{binary() => any()}.


%% Example:
%% offer_availability_end_date_filter() :: #{
%%   <<"DateRange">> => offer_availability_end_date_filter_date_range()
%% }
-type offer_availability_end_date_filter() :: #{binary() => any()}.


%% Example:
%% machine_learning_product_filters() :: #{
%%   <<"EntityId">> => machine_learning_product_entity_id_filter(),
%%   <<"LastModifiedDate">> => machine_learning_product_last_modified_date_filter(),
%%   <<"ProductTitle">> => machine_learning_product_title_filter(),
%%   <<"Visibility">> => machine_learning_product_visibility_filter()
%% }
-type machine_learning_product_filters() :: #{binary() => any()}.

-type batch_describe_entities_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_service_exception().

-type cancel_change_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    resource_in_use_exception().

-type delete_resource_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type describe_change_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type describe_entity_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_supported_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type get_resource_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_change_sets_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_service_exception().

-type list_entities_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type put_resource_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type start_change_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    resource_in_use_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Returns metadata and content for multiple entities.
%%
%% This is the Batch version of the `DescribeEntity' API and uses the
%% same IAM permission action as `DescribeEntity' API.
-spec batch_describe_entities(aws_client:aws_client(), batch_describe_entities_request()) ->
    {ok, batch_describe_entities_response(), tuple()} |
    {error, any()} |
    {error, batch_describe_entities_errors(), tuple()}.
batch_describe_entities(Client, Input) ->
    batch_describe_entities(Client, Input, []).

-spec batch_describe_entities(aws_client:aws_client(), batch_describe_entities_request(), proplists:proplist()) ->
    {ok, batch_describe_entities_response(), tuple()} |
    {error, any()} |
    {error, batch_describe_entities_errors(), tuple()}.
batch_describe_entities(Client, Input0, Options0) ->
    Method = post,
    Path = ["/BatchDescribeEntities"],
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

%% @doc Used to cancel an open change request.
%%
%% Must be sent before the status of the request
%% changes to `APPLYING', the final stage of completing your change
%% request. You
%% can describe a change during the 60-day request history retention period
%% for API
%% calls.
-spec cancel_change_set(aws_client:aws_client(), cancel_change_set_request()) ->
    {ok, cancel_change_set_response(), tuple()} |
    {error, any()} |
    {error, cancel_change_set_errors(), tuple()}.
cancel_change_set(Client, Input) ->
    cancel_change_set(Client, Input, []).

-spec cancel_change_set(aws_client:aws_client(), cancel_change_set_request(), proplists:proplist()) ->
    {ok, cancel_change_set_response(), tuple()} |
    {error, any()} |
    {error, cancel_change_set_errors(), tuple()}.
cancel_change_set(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/CancelChangeSet"],
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

    QueryMapping = [
                     {<<"catalog">>, <<"Catalog">>},
                     {<<"changeSetId">>, <<"ChangeSetId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a resource-based policy on an entity that is identified by
%% its resource
%% ARN.
-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_request()) ->
    {ok, delete_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input) ->
    delete_resource_policy(Client, Input, []).

-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_request(), proplists:proplist()) ->
    {ok, delete_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/DeleteResourcePolicy"],
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

    QueryMapping = [
                     {<<"resourceArn">>, <<"ResourceArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Provides information about a given change set.
-spec describe_change_set(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_change_set_response(), tuple()} |
    {error, any()} |
    {error, describe_change_set_errors(), tuple()}.
describe_change_set(Client, Catalog, ChangeSetId)
  when is_map(Client) ->
    describe_change_set(Client, Catalog, ChangeSetId, #{}, #{}).

-spec describe_change_set(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_change_set_response(), tuple()} |
    {error, any()} |
    {error, describe_change_set_errors(), tuple()}.
describe_change_set(Client, Catalog, ChangeSetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_change_set(Client, Catalog, ChangeSetId, QueryMap, HeadersMap, []).

-spec describe_change_set(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_change_set_response(), tuple()} |
    {error, any()} |
    {error, describe_change_set_errors(), tuple()}.
describe_change_set(Client, Catalog, ChangeSetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/DescribeChangeSet"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"catalog">>, Catalog},
        {<<"changeSetId">>, ChangeSetId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the metadata and content of the entity.
-spec describe_entity(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_entity_response(), tuple()} |
    {error, any()} |
    {error, describe_entity_errors(), tuple()}.
describe_entity(Client, Catalog, EntityId)
  when is_map(Client) ->
    describe_entity(Client, Catalog, EntityId, #{}, #{}).

-spec describe_entity(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_entity_response(), tuple()} |
    {error, any()} |
    {error, describe_entity_errors(), tuple()}.
describe_entity(Client, Catalog, EntityId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_entity(Client, Catalog, EntityId, QueryMap, HeadersMap, []).

-spec describe_entity(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_entity_response(), tuple()} |
    {error, any()} |
    {error, describe_entity_errors(), tuple()}.
describe_entity(Client, Catalog, EntityId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/DescribeEntity"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"catalog">>, Catalog},
        {<<"entityId">>, EntityId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a resource-based policy of an entity that is identified by its
%% resource
%% ARN.
-spec get_resource_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, ResourceArn)
  when is_map(Client) ->
    get_resource_policy(Client, ResourceArn, #{}, #{}).

-spec get_resource_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resource_policy(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec get_resource_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetResourcePolicy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"resourceArn">>, ResourceArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the list of change sets owned by the account being used to
%% make the call.
%%
%% You
%% can filter this list by providing any combination of `entityId',
%% `ChangeSetName', and status. If you provide more than one filter, the
%% API
%% operation applies a logical AND between the filters.
%%
%% You can describe a change during the 60-day request history retention
%% period for API
%% calls.
-spec list_change_sets(aws_client:aws_client(), list_change_sets_request()) ->
    {ok, list_change_sets_response(), tuple()} |
    {error, any()} |
    {error, list_change_sets_errors(), tuple()}.
list_change_sets(Client, Input) ->
    list_change_sets(Client, Input, []).

-spec list_change_sets(aws_client:aws_client(), list_change_sets_request(), proplists:proplist()) ->
    {ok, list_change_sets_response(), tuple()} |
    {error, any()} |
    {error, list_change_sets_errors(), tuple()}.
list_change_sets(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListChangeSets"],
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

%% @doc Provides the list of entities of a given type.
-spec list_entities(aws_client:aws_client(), list_entities_request()) ->
    {ok, list_entities_response(), tuple()} |
    {error, any()} |
    {error, list_entities_errors(), tuple()}.
list_entities(Client, Input) ->
    list_entities(Client, Input, []).

-spec list_entities(aws_client:aws_client(), list_entities_request(), proplists:proplist()) ->
    {ok, list_entities_response(), tuple()} |
    {error, any()} |
    {error, list_entities_errors(), tuple()}.
list_entities(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListEntities"],
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

%% @doc Lists all tags that have been added to a resource (either an entity:
%% https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#catalog-api-entities
%% or change set:
%% https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets).
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListTagsForResource"],
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

%% @doc Attaches a resource-based policy to an entity.
%%
%% Examples of an entity include:
%% `AmiProduct' and `ContainerProduct'.
-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_request()) ->
    {ok, put_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input) ->
    put_resource_policy(Client, Input, []).

-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_request(), proplists:proplist()) ->
    {ok, put_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/PutResourcePolicy"],
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

%% @doc Allows you to request changes for your entities.
%%
%% Within a single
%% `ChangeSet', you can't start the same change type against the same
%% entity
%% multiple times. Additionally, when a `ChangeSet' is running, all the
%% entities
%% targeted by the different changes are locked until the change set has
%% completed (either
%% succeeded, cancelled, or failed). If you try to start a change set
%% containing a change
%% against an entity that is already locked, you will receive a
%% `ResourceInUseException' error.
%%
%% For example, you can't start the `ChangeSet' described in the
%% example:
%% https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/API_StartChangeSet.html#API_StartChangeSet_Examples
%% later in this topic because it contains two changes to run the same
%% change type (`AddRevisions') against the same entity
%% (`entity-id@1').
%%
%% For more information about working with change sets, see Working with
%% change sets:
%% https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets.
%% For information about change types for
%% single-AMI products, see Working with single-AMI products:
%% https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/ami-products.html#working-with-single-AMI-products.
%% Also, for more information about change
%% types available for container-based products, see Working with container
%% products:
%% https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/container-products.html#working-with-container-products.
%%
%% To download &quot;DetailsDocument&quot; shapes, see Python:
%% https://github.com/awslabs/aws-marketplace-catalog-api-shapes-for-python
%% and Java:
%% https://github.com/awslabs/aws-marketplace-catalog-api-shapes-for-java/tree/main
%% shapes on GitHub.
-spec start_change_set(aws_client:aws_client(), start_change_set_request()) ->
    {ok, start_change_set_response(), tuple()} |
    {error, any()} |
    {error, start_change_set_errors(), tuple()}.
start_change_set(Client, Input) ->
    start_change_set(Client, Input, []).

-spec start_change_set(aws_client:aws_client(), start_change_set_request(), proplists:proplist()) ->
    {ok, start_change_set_response(), tuple()} |
    {error, any()} |
    {error, start_change_set_errors(), tuple()}.
start_change_set(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StartChangeSet"],
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

%% @doc Tags a resource (either an entity:
%% https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#catalog-api-entities
%% or change set:
%% https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets).
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/TagResource"],
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

%% @doc Removes a tag or list of tags from a resource (either an entity:
%% https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#catalog-api-entities
%% or change set:
%% https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets).
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UntagResource"],
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
    Host = build_host(<<"catalog.marketplace">>, Client1),
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
