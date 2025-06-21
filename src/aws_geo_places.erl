%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Places API enables powerful location search and geocoding
%% capabilities for your applications, offering global coverage with rich,
%% detailed information.
%%
%% Key features include:
%%
%% Forward and reverse geocoding for addresses and coordinates
%%
%% Comprehensive place searches with detailed information, including:
%%
%% Business names and addresses
%%
%% Contact information
%%
%% Hours of operation
%%
%% POI (Points of Interest) categories
%%
%% Food types for restaurants
%%
%% Chain affiliation for relevant businesses
%%
%% Global data coverage with a wide range of POI categories
%%
%% Regular data updates to ensure accuracy and relevance
-module(aws_geo_places).

-export([autocomplete/2,
         autocomplete/3,
         geocode/2,
         geocode/3,
         get_place/2,
         get_place/4,
         get_place/5,
         reverse_geocode/2,
         reverse_geocode/3,
         search_nearby/2,
         search_nearby/3,
         search_text/2,
         search_text/3,
         suggest/2,
         suggest/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% reverse_geocode_result_item() :: #{
%%   <<"AccessPoints">> => list(access_point()()),
%%   <<"Address">> => address(),
%%   <<"AddressNumberCorrected">> => boolean(),
%%   <<"Categories">> => list(category()()),
%%   <<"Distance">> => float(),
%%   <<"FoodTypes">> => list(food_type()()),
%%   <<"Intersections">> => list(intersection()()),
%%   <<"MapView">> => list([float()]()),
%%   <<"PlaceId">> => string(),
%%   <<"PlaceType">> => string(),
%%   <<"PoliticalView">> => string(),
%%   <<"Position">> => list([float()]()),
%%   <<"PostalCodeDetails">> => list(postal_code_details()()),
%%   <<"TimeZone">> => time_zone(),
%%   <<"Title">> => string()
%% }
-type reverse_geocode_result_item() :: #{binary() => any()}.


%% Example:
%% geocode_parsed_query_address_components() :: #{
%%   <<"AddressNumber">> => list(parsed_query_component()()),
%%   <<"Block">> => list(parsed_query_component()()),
%%   <<"Building">> => list(parsed_query_component()()),
%%   <<"Country">> => list(parsed_query_component()()),
%%   <<"District">> => list(parsed_query_component()()),
%%   <<"Locality">> => list(parsed_query_component()()),
%%   <<"PostalCode">> => list(parsed_query_component()()),
%%   <<"Region">> => list(parsed_query_component()()),
%%   <<"SecondaryAddressComponents">> => list(parsed_query_secondary_address_component()()),
%%   <<"Street">> => list(parsed_query_component()()),
%%   <<"SubBlock">> => list(parsed_query_component()()),
%%   <<"SubDistrict">> => list(parsed_query_component()()),
%%   <<"SubRegion">> => list(parsed_query_component()())
%% }
-type geocode_parsed_query_address_components() :: #{binary() => any()}.


%% Example:
%% sub_region() :: #{
%%   <<"Code">> => string(),
%%   <<"Name">> => string()
%% }
-type sub_region() :: #{binary() => any()}.


%% Example:
%% phoneme_details() :: #{
%%   <<"Address">> => address_component_phonemes(),
%%   <<"Title">> => list(phoneme_transcription()())
%% }
-type phoneme_details() :: #{binary() => any()}.


%% Example:
%% autocomplete_response() :: #{
%%   <<"PricingBucket">> => [string()],
%%   <<"ResultItems">> => list(autocomplete_result_item()())
%% }
-type autocomplete_response() :: #{binary() => any()}.


%% Example:
%% reverse_geocode_request() :: #{
%%   <<"AdditionalFeatures">> => list(string()()),
%%   <<"Filter">> => reverse_geocode_filter(),
%%   <<"IntendedUse">> => string(),
%%   <<"Key">> => string(),
%%   <<"Language">> => string(),
%%   <<"MaxResults">> => [integer()],
%%   <<"PoliticalView">> => string(),
%%   <<"QueryPosition">> := list([float()]()),
%%   <<"QueryRadius">> => float()
%% }
-type reverse_geocode_request() :: #{binary() => any()}.


%% Example:
%% search_text_result_item() :: #{
%%   <<"AccessPoints">> => list(access_point()()),
%%   <<"AccessRestrictions">> => list(access_restriction()()),
%%   <<"Address">> => address(),
%%   <<"AddressNumberCorrected">> => boolean(),
%%   <<"BusinessChains">> => list(business_chain()()),
%%   <<"Categories">> => list(category()()),
%%   <<"Contacts">> => contacts(),
%%   <<"Distance">> => float(),
%%   <<"FoodTypes">> => list(food_type()()),
%%   <<"MapView">> => list([float()]()),
%%   <<"OpeningHours">> => list(opening_hours()()),
%%   <<"Phonemes">> => phoneme_details(),
%%   <<"PlaceId">> => string(),
%%   <<"PlaceType">> => string(),
%%   <<"PoliticalView">> => string(),
%%   <<"Position">> => list([float()]()),
%%   <<"TimeZone">> => time_zone(),
%%   <<"Title">> => string()
%% }
-type search_text_result_item() :: #{binary() => any()}.


%% Example:
%% country_highlights() :: #{
%%   <<"Code">> => list(highlight()()),
%%   <<"Name">> => list(highlight()())
%% }
-type country_highlights() :: #{binary() => any()}.


%% Example:
%% suggest_address_highlights() :: #{
%%   <<"Label">> => list(highlight()())
%% }
-type suggest_address_highlights() :: #{binary() => any()}.


%% Example:
%% highlight() :: #{
%%   <<"EndIndex">> => [integer()],
%%   <<"StartIndex">> => [integer()],
%%   <<"Value">> => string()
%% }
-type highlight() :: #{binary() => any()}.


%% Example:
%% suggest_response() :: #{
%%   <<"PricingBucket">> => [string()],
%%   <<"QueryRefinements">> => list(query_refinement()()),
%%   <<"ResultItems">> => list(suggest_result_item()())
%% }
-type suggest_response() :: #{binary() => any()}.


%% Example:
%% search_nearby_filter() :: #{
%%   <<"BoundingBox">> => list([float()]()),
%%   <<"ExcludeBusinessChains">> => list(string()()),
%%   <<"ExcludeCategories">> => list(string()()),
%%   <<"ExcludeFoodTypes">> => list(string()()),
%%   <<"IncludeBusinessChains">> => list(string()()),
%%   <<"IncludeCategories">> => list(string()()),
%%   <<"IncludeCountries">> => list(string()()),
%%   <<"IncludeFoodTypes">> => list(string()())
%% }
-type search_nearby_filter() :: #{binary() => any()}.


%% Example:
%% filter_circle() :: #{
%%   <<"Center">> => list([float()]()),
%%   <<"Radius">> => float()
%% }
-type filter_circle() :: #{binary() => any()}.


%% Example:
%% autocomplete_address_highlights() :: #{
%%   <<"AddressNumber">> => list(highlight()()),
%%   <<"Block">> => list(highlight()()),
%%   <<"Building">> => list(highlight()()),
%%   <<"Country">> => country_highlights(),
%%   <<"District">> => list(highlight()()),
%%   <<"Intersection">> => list(list(highlight()())()),
%%   <<"Label">> => list(highlight()()),
%%   <<"Locality">> => list(highlight()()),
%%   <<"PostalCode">> => list(highlight()()),
%%   <<"Region">> => region_highlights(),
%%   <<"Street">> => list(highlight()()),
%%   <<"SubBlock">> => list(highlight()()),
%%   <<"SubDistrict">> => list(highlight()()),
%%   <<"SubRegion">> => sub_region_highlights()
%% }
-type autocomplete_address_highlights() :: #{binary() => any()}.


%% Example:
%% usps_zip() :: #{
%%   <<"ZipClassificationCode">> => string()
%% }
-type usps_zip() :: #{binary() => any()}.


%% Example:
%% search_text_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PricingBucket">> => [string()],
%%   <<"ResultItems">> => list(search_text_result_item()())
%% }
-type search_text_response() :: #{binary() => any()}.


%% Example:
%% suggest_place_result() :: #{
%%   <<"AccessPoints">> => list(access_point()()),
%%   <<"AccessRestrictions">> => list(access_restriction()()),
%%   <<"Address">> => address(),
%%   <<"BusinessChains">> => list(business_chain()()),
%%   <<"Categories">> => list(category()()),
%%   <<"Distance">> => float(),
%%   <<"FoodTypes">> => list(food_type()()),
%%   <<"MapView">> => list([float()]()),
%%   <<"Phonemes">> => phoneme_details(),
%%   <<"PlaceId">> => string(),
%%   <<"PlaceType">> => string(),
%%   <<"PoliticalView">> => string(),
%%   <<"Position">> => list([float()]()),
%%   <<"TimeZone">> => time_zone()
%% }
-type suggest_place_result() :: #{binary() => any()}.


%% Example:
%% food_type() :: #{
%%   <<"Id">> => string(),
%%   <<"LocalizedName">> => string(),
%%   <<"Primary">> => boolean()
%% }
-type food_type() :: #{binary() => any()}.


%% Example:
%% match_score_details() :: #{
%%   <<"Components">> => component_match_scores(),
%%   <<"Overall">> => float()
%% }
-type match_score_details() :: #{binary() => any()}.


%% Example:
%% country() :: #{
%%   <<"Code2">> => string(),
%%   <<"Code3">> => string(),
%%   <<"Name">> => string()
%% }
-type country() :: #{binary() => any()}.


%% Example:
%% suggest_query_result() :: #{
%%   <<"QueryId">> => string(),
%%   <<"QueryType">> => string()
%% }
-type suggest_query_result() :: #{binary() => any()}.


%% Example:
%% geocode_filter() :: #{
%%   <<"IncludeCountries">> => list(string()()),
%%   <<"IncludePlaceTypes">> => list(string()())
%% }
-type geocode_filter() :: #{binary() => any()}.


%% Example:
%% autocomplete_highlights() :: #{
%%   <<"Address">> => autocomplete_address_highlights(),
%%   <<"Title">> => list(highlight()())
%% }
-type autocomplete_highlights() :: #{binary() => any()}.


%% Example:
%% autocomplete_result_item() :: #{
%%   <<"Address">> => address(),
%%   <<"Distance">> => float(),
%%   <<"Highlights">> => autocomplete_highlights(),
%%   <<"Language">> => string(),
%%   <<"PlaceId">> => string(),
%%   <<"PlaceType">> => string(),
%%   <<"PoliticalView">> => string(),
%%   <<"Title">> => string()
%% }
-type autocomplete_result_item() :: #{binary() => any()}.


%% Example:
%% region_highlights() :: #{
%%   <<"Code">> => list(highlight()()),
%%   <<"Name">> => list(highlight()())
%% }
-type region_highlights() :: #{binary() => any()}.


%% Example:
%% usps_zip_plus4() :: #{
%%   <<"RecordTypeCode">> => string()
%% }
-type usps_zip_plus4() :: #{binary() => any()}.


%% Example:
%% reverse_geocode_response() :: #{
%%   <<"PricingBucket">> => [string()],
%%   <<"ResultItems">> => list(reverse_geocode_result_item()())
%% }
-type reverse_geocode_response() :: #{binary() => any()}.


%% Example:
%% geocode_parsed_query() :: #{
%%   <<"Address">> => geocode_parsed_query_address_components(),
%%   <<"Title">> => list(parsed_query_component()())
%% }
-type geocode_parsed_query() :: #{binary() => any()}.


%% Example:
%% region() :: #{
%%   <<"Code">> => string(),
%%   <<"Name">> => string()
%% }
-type region() :: #{binary() => any()}.


%% Example:
%% street_components() :: #{
%%   <<"BaseName">> => string(),
%%   <<"Direction">> => string(),
%%   <<"Language">> => string(),
%%   <<"Prefix">> => string(),
%%   <<"Suffix">> => string(),
%%   <<"Type">> => string(),
%%   <<"TypePlacement">> => string(),
%%   <<"TypeSeparator">> => string()
%% }
-type street_components() :: #{binary() => any()}.


%% Example:
%% suggest_request() :: #{
%%   <<"AdditionalFeatures">> => list(string()()),
%%   <<"BiasPosition">> => list([float()]()),
%%   <<"Filter">> => suggest_filter(),
%%   <<"IntendedUse">> => string(),
%%   <<"Key">> => string(),
%%   <<"Language">> => string(),
%%   <<"MaxQueryRefinements">> => [integer()],
%%   <<"MaxResults">> => [integer()],
%%   <<"PoliticalView">> => string(),
%%   <<"QueryText">> := string()
%% }
-type suggest_request() :: #{binary() => any()}.


%% Example:
%% business_chain() :: #{
%%   <<"Id">> => string(),
%%   <<"Name">> => string()
%% }
-type business_chain() :: #{binary() => any()}.


%% Example:
%% search_text_request() :: #{
%%   <<"AdditionalFeatures">> => list(string()()),
%%   <<"BiasPosition">> => list([float()]()),
%%   <<"Filter">> => search_text_filter(),
%%   <<"IntendedUse">> => string(),
%%   <<"Key">> => string(),
%%   <<"Language">> => string(),
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => string(),
%%   <<"PoliticalView">> => string(),
%%   <<"QueryId">> => string(),
%%   <<"QueryText">> => string()
%% }
-type search_text_request() :: #{binary() => any()}.


%% Example:
%% access_restriction() :: #{
%%   <<"Categories">> => list(category()()),
%%   <<"Restricted">> => boolean()
%% }
-type access_restriction() :: #{binary() => any()}.


%% Example:
%% search_text_filter() :: #{
%%   <<"BoundingBox">> => list([float()]()),
%%   <<"Circle">> => filter_circle(),
%%   <<"IncludeCountries">> => list(string()())
%% }
-type search_text_filter() :: #{binary() => any()}.


%% Example:
%% opening_hours_components() :: #{
%%   <<"OpenDuration">> => string(),
%%   <<"OpenTime">> => string(),
%%   <<"Recurrence">> => string()
%% }
-type opening_hours_components() :: #{binary() => any()}.


%% Example:
%% postal_code_details() :: #{
%%   <<"PostalAuthority">> => string(),
%%   <<"PostalCode">> => string(),
%%   <<"PostalCodeType">> => string(),
%%   <<"UspsZip">> => usps_zip(),
%%   <<"UspsZipPlus4">> => usps_zip_plus4()
%% }
-type postal_code_details() :: #{binary() => any()}.


%% Example:
%% parsed_query_component() :: #{
%%   <<"EndIndex">> => [integer()],
%%   <<"QueryComponent">> => string(),
%%   <<"StartIndex">> => [integer()],
%%   <<"Value">> => string()
%% }
-type parsed_query_component() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"Message">> => [string()],
%%   <<"Name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% get_place_request() :: #{
%%   <<"AdditionalFeatures">> => list(string()()),
%%   <<"IntendedUse">> => string(),
%%   <<"Key">> => string(),
%%   <<"Language">> => string(),
%%   <<"PoliticalView">> => string()
%% }
-type get_place_request() :: #{binary() => any()}.


%% Example:
%% time_zone() :: #{
%%   <<"Name">> => string(),
%%   <<"Offset">> => string(),
%%   <<"OffsetSeconds">> => float()
%% }
-type time_zone() :: #{binary() => any()}.


%% Example:
%% parsed_query_secondary_address_component() :: #{
%%   <<"Designator">> => string(),
%%   <<"EndIndex">> => [integer()],
%%   <<"Number">> => string(),
%%   <<"StartIndex">> => [integer()],
%%   <<"Value">> => string()
%% }
-type parsed_query_secondary_address_component() :: #{binary() => any()}.


%% Example:
%% query_refinement() :: #{
%%   <<"EndIndex">> => [integer()],
%%   <<"OriginalTerm">> => string(),
%%   <<"RefinedTerm">> => string(),
%%   <<"StartIndex">> => [integer()]
%% }
-type query_refinement() :: #{binary() => any()}.


%% Example:
%% suggest_highlights() :: #{
%%   <<"Address">> => suggest_address_highlights(),
%%   <<"Title">> => list(highlight()())
%% }
-type suggest_highlights() :: #{binary() => any()}.


%% Example:
%% autocomplete_request() :: #{
%%   <<"AdditionalFeatures">> => list(string()()),
%%   <<"BiasPosition">> => list([float()]()),
%%   <<"Filter">> => autocomplete_filter(),
%%   <<"IntendedUse">> => string(),
%%   <<"Key">> => string(),
%%   <<"Language">> => string(),
%%   <<"MaxResults">> => [integer()],
%%   <<"PoliticalView">> => string(),
%%   <<"PostalCodeMode">> => string(),
%%   <<"QueryText">> := string()
%% }
-type autocomplete_request() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% secondary_address_component() :: #{
%%   <<"Number">> => string()
%% }
-type secondary_address_component() :: #{binary() => any()}.


%% Example:
%% geocode_response() :: #{
%%   <<"PricingBucket">> => [string()],
%%   <<"ResultItems">> => list(geocode_result_item()())
%% }
-type geocode_response() :: #{binary() => any()}.


%% Example:
%% secondary_address_component_match_score() :: #{
%%   <<"Number">> => float()
%% }
-type secondary_address_component_match_score() :: #{binary() => any()}.


%% Example:
%% intersection() :: #{
%%   <<"AccessPoints">> => list(access_point()()),
%%   <<"Address">> => address(),
%%   <<"Distance">> => float(),
%%   <<"MapView">> => list([float()]()),
%%   <<"PlaceId">> => string(),
%%   <<"Position">> => list([float()]()),
%%   <<"RouteDistance">> => float(),
%%   <<"Title">> => string()
%% }
-type intersection() :: #{binary() => any()}.


%% Example:
%% search_nearby_result_item() :: #{
%%   <<"AccessPoints">> => list(access_point()()),
%%   <<"AccessRestrictions">> => list(access_restriction()()),
%%   <<"Address">> => address(),
%%   <<"AddressNumberCorrected">> => boolean(),
%%   <<"BusinessChains">> => list(business_chain()()),
%%   <<"Categories">> => list(category()()),
%%   <<"Contacts">> => contacts(),
%%   <<"Distance">> => float(),
%%   <<"FoodTypes">> => list(food_type()()),
%%   <<"MapView">> => list([float()]()),
%%   <<"OpeningHours">> => list(opening_hours()()),
%%   <<"Phonemes">> => phoneme_details(),
%%   <<"PlaceId">> => string(),
%%   <<"PlaceType">> => string(),
%%   <<"PoliticalView">> => string(),
%%   <<"Position">> => list([float()]()),
%%   <<"TimeZone">> => time_zone(),
%%   <<"Title">> => string()
%% }
-type search_nearby_result_item() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"FieldList">> => list(validation_exception_field()()),
%%   <<"Message">> => [string()],
%%   <<"Reason">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% access_point() :: #{
%%   <<"Position">> => list([float()]())
%% }
-type access_point() :: #{binary() => any()}.


%% Example:
%% get_place_response() :: #{
%%   <<"AccessPoints">> => list(access_point()()),
%%   <<"AccessRestrictions">> => list(access_restriction()()),
%%   <<"Address">> => address(),
%%   <<"AddressNumberCorrected">> => boolean(),
%%   <<"BusinessChains">> => list(business_chain()()),
%%   <<"Categories">> => list(category()()),
%%   <<"Contacts">> => contacts(),
%%   <<"FoodTypes">> => list(food_type()()),
%%   <<"MainAddress">> => related_place(),
%%   <<"MapView">> => list([float()]()),
%%   <<"OpeningHours">> => list(opening_hours()()),
%%   <<"Phonemes">> => phoneme_details(),
%%   <<"PlaceId">> => string(),
%%   <<"PlaceType">> => string(),
%%   <<"PoliticalView">> => string(),
%%   <<"Position">> => list([float()]()),
%%   <<"PostalCodeDetails">> => list(postal_code_details()()),
%%   <<"PricingBucket">> => [string()],
%%   <<"SecondaryAddresses">> => list(related_place()()),
%%   <<"TimeZone">> => time_zone(),
%%   <<"Title">> => string()
%% }
-type get_place_response() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% related_place() :: #{
%%   <<"AccessPoints">> => list(access_point()()),
%%   <<"Address">> => address(),
%%   <<"PlaceId">> => string(),
%%   <<"PlaceType">> => string(),
%%   <<"Position">> => list([float()]()),
%%   <<"Title">> => string()
%% }
-type related_place() :: #{binary() => any()}.


%% Example:
%% address_component_phonemes() :: #{
%%   <<"Block">> => list(phoneme_transcription()()),
%%   <<"Country">> => list(phoneme_transcription()()),
%%   <<"District">> => list(phoneme_transcription()()),
%%   <<"Locality">> => list(phoneme_transcription()()),
%%   <<"Region">> => list(phoneme_transcription()()),
%%   <<"Street">> => list(phoneme_transcription()()),
%%   <<"SubBlock">> => list(phoneme_transcription()()),
%%   <<"SubDistrict">> => list(phoneme_transcription()()),
%%   <<"SubRegion">> => list(phoneme_transcription()())
%% }
-type address_component_phonemes() :: #{binary() => any()}.


%% Example:
%% address_component_match_scores() :: #{
%%   <<"AddressNumber">> => float(),
%%   <<"Block">> => float(),
%%   <<"Building">> => float(),
%%   <<"Country">> => float(),
%%   <<"District">> => float(),
%%   <<"Intersection">> => list(float()()),
%%   <<"Locality">> => float(),
%%   <<"PostalCode">> => float(),
%%   <<"Region">> => float(),
%%   <<"SecondaryAddressComponents">> => list(secondary_address_component_match_score()()),
%%   <<"SubBlock">> => float(),
%%   <<"SubDistrict">> => float(),
%%   <<"SubRegion">> => float()
%% }
-type address_component_match_scores() :: #{binary() => any()}.


%% Example:
%% category() :: #{
%%   <<"Id">> => string(),
%%   <<"LocalizedName">> => string(),
%%   <<"Name">> => string(),
%%   <<"Primary">> => boolean()
%% }
-type category() :: #{binary() => any()}.


%% Example:
%% contact_details() :: #{
%%   <<"Categories">> => list(category()()),
%%   <<"Label">> => string(),
%%   <<"Value">> => string()
%% }
-type contact_details() :: #{binary() => any()}.


%% Example:
%% geocode_query_components() :: #{
%%   <<"AddressNumber">> => string(),
%%   <<"Country">> => string(),
%%   <<"District">> => string(),
%%   <<"Locality">> => string(),
%%   <<"PostalCode">> => string(),
%%   <<"Region">> => string(),
%%   <<"Street">> => string(),
%%   <<"SubRegion">> => string()
%% }
-type geocode_query_components() :: #{binary() => any()}.


%% Example:
%% suggest_result_item() :: #{
%%   <<"Highlights">> => suggest_highlights(),
%%   <<"Place">> => suggest_place_result(),
%%   <<"Query">> => suggest_query_result(),
%%   <<"SuggestResultItemType">> => string(),
%%   <<"Title">> => string()
%% }
-type suggest_result_item() :: #{binary() => any()}.


%% Example:
%% geocode_request() :: #{
%%   <<"AdditionalFeatures">> => list(string()()),
%%   <<"BiasPosition">> => list([float()]()),
%%   <<"Filter">> => geocode_filter(),
%%   <<"IntendedUse">> => string(),
%%   <<"Key">> => string(),
%%   <<"Language">> => string(),
%%   <<"MaxResults">> => [integer()],
%%   <<"PoliticalView">> => string(),
%%   <<"QueryComponents">> => geocode_query_components(),
%%   <<"QueryText">> => string()
%% }
-type geocode_request() :: #{binary() => any()}.


%% Example:
%% geocode_result_item() :: #{
%%   <<"AccessPoints">> => list(access_point()()),
%%   <<"Address">> => address(),
%%   <<"AddressNumberCorrected">> => boolean(),
%%   <<"Categories">> => list(category()()),
%%   <<"Distance">> => float(),
%%   <<"FoodTypes">> => list(food_type()()),
%%   <<"Intersections">> => list(intersection()()),
%%   <<"MainAddress">> => related_place(),
%%   <<"MapView">> => list([float()]()),
%%   <<"MatchScores">> => match_score_details(),
%%   <<"ParsedQuery">> => geocode_parsed_query(),
%%   <<"PlaceId">> => string(),
%%   <<"PlaceType">> => string(),
%%   <<"PoliticalView">> => string(),
%%   <<"Position">> => list([float()]()),
%%   <<"PostalCodeDetails">> => list(postal_code_details()()),
%%   <<"SecondaryAddresses">> => list(related_place()()),
%%   <<"TimeZone">> => time_zone(),
%%   <<"Title">> => string()
%% }
-type geocode_result_item() :: #{binary() => any()}.


%% Example:
%% reverse_geocode_filter() :: #{
%%   <<"IncludePlaceTypes">> => list(string()())
%% }
-type reverse_geocode_filter() :: #{binary() => any()}.


%% Example:
%% phoneme_transcription() :: #{
%%   <<"Language">> => string(),
%%   <<"Preferred">> => boolean(),
%%   <<"Value">> => string()
%% }
-type phoneme_transcription() :: #{binary() => any()}.


%% Example:
%% search_nearby_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PricingBucket">> => [string()],
%%   <<"ResultItems">> => list(search_nearby_result_item()())
%% }
-type search_nearby_response() :: #{binary() => any()}.


%% Example:
%% autocomplete_filter() :: #{
%%   <<"BoundingBox">> => list([float()]()),
%%   <<"Circle">> => filter_circle(),
%%   <<"IncludeCountries">> => list(string()()),
%%   <<"IncludePlaceTypes">> => list(string()())
%% }
-type autocomplete_filter() :: #{binary() => any()}.


%% Example:
%% address() :: #{
%%   <<"AddressNumber">> => string(),
%%   <<"Block">> => string(),
%%   <<"Building">> => string(),
%%   <<"Country">> => country(),
%%   <<"District">> => string(),
%%   <<"Intersection">> => list(string()()),
%%   <<"Label">> => string(),
%%   <<"Locality">> => string(),
%%   <<"PostalCode">> => string(),
%%   <<"Region">> => region(),
%%   <<"SecondaryAddressComponents">> => list(secondary_address_component()()),
%%   <<"Street">> => string(),
%%   <<"StreetComponents">> => list(street_components()()),
%%   <<"SubBlock">> => string(),
%%   <<"SubDistrict">> => string(),
%%   <<"SubRegion">> => sub_region()
%% }
-type address() :: #{binary() => any()}.


%% Example:
%% opening_hours() :: #{
%%   <<"Categories">> => list(category()()),
%%   <<"Components">> => list(opening_hours_components()()),
%%   <<"Display">> => list(string()()),
%%   <<"OpenNow">> => boolean()
%% }
-type opening_hours() :: #{binary() => any()}.


%% Example:
%% contacts() :: #{
%%   <<"Emails">> => list(contact_details()()),
%%   <<"Faxes">> => list(contact_details()()),
%%   <<"Phones">> => list(contact_details()()),
%%   <<"Websites">> => list(contact_details()())
%% }
-type contacts() :: #{binary() => any()}.


%% Example:
%% component_match_scores() :: #{
%%   <<"Address">> => address_component_match_scores(),
%%   <<"Title">> => float()
%% }
-type component_match_scores() :: #{binary() => any()}.


%% Example:
%% suggest_filter() :: #{
%%   <<"BoundingBox">> => list([float()]()),
%%   <<"Circle">> => filter_circle(),
%%   <<"IncludeCountries">> => list(string()())
%% }
-type suggest_filter() :: #{binary() => any()}.


%% Example:
%% search_nearby_request() :: #{
%%   <<"AdditionalFeatures">> => list(string()()),
%%   <<"Filter">> => search_nearby_filter(),
%%   <<"IntendedUse">> => string(),
%%   <<"Key">> => string(),
%%   <<"Language">> => string(),
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => string(),
%%   <<"PoliticalView">> => string(),
%%   <<"QueryPosition">> := list([float()]()),
%%   <<"QueryRadius">> => float()
%% }
-type search_nearby_request() :: #{binary() => any()}.


%% Example:
%% sub_region_highlights() :: #{
%%   <<"Code">> => list(highlight()()),
%%   <<"Name">> => list(highlight()())
%% }
-type sub_region_highlights() :: #{binary() => any()}.

-type autocomplete_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type geocode_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_place_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type reverse_geocode_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type search_nearby_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type search_text_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type suggest_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc `Autocomplete' completes potential places and addresses as the
%% user types, based on the partial input.
%%
%% The API enhances the efficiency and accuracy of address by completing
%% query based on a few entered keystrokes. It helps you by completing
%% partial queries with valid address completion. Also, the API supports the
%% filtering of results based on geographic location, country, or specific
%% place types, and can be tailored using optional parameters like language
%% and political views.
-spec autocomplete(aws_client:aws_client(), autocomplete_request()) ->
    {ok, autocomplete_response(), tuple()} |
    {error, any()} |
    {error, autocomplete_errors(), tuple()}.
autocomplete(Client, Input) ->
    autocomplete(Client, Input, []).

-spec autocomplete(aws_client:aws_client(), autocomplete_request(), proplists:proplist()) ->
    {ok, autocomplete_response(), tuple()} |
    {error, any()} |
    {error, autocomplete_errors(), tuple()}.
autocomplete(Client, Input0, Options0) ->
    Method = post,
    Path = ["/autocomplete"],
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
                     {<<"key">>, <<"Key">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-geo-pricing-bucket">>, <<"PricingBucket">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc `Geocode' converts a textual address or place into geographic
%% coordinates.
%%
%% You can obtain geographic coordinates, address component, and other
%% related information. It supports flexible queries, including free-form
%% text or structured queries with components like street names, postal
%% codes, and regions. The Geocode API can also provide additional features
%% such as time zone information and the inclusion of political views.
-spec geocode(aws_client:aws_client(), geocode_request()) ->
    {ok, geocode_response(), tuple()} |
    {error, any()} |
    {error, geocode_errors(), tuple()}.
geocode(Client, Input) ->
    geocode(Client, Input, []).

-spec geocode(aws_client:aws_client(), geocode_request(), proplists:proplist()) ->
    {ok, geocode_response(), tuple()} |
    {error, any()} |
    {error, geocode_errors(), tuple()}.
geocode(Client, Input0, Options0) ->
    Method = post,
    Path = ["/geocode"],
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
                     {<<"key">>, <<"Key">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-geo-pricing-bucket">>, <<"PricingBucket">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc `GetPlace' finds a place by its unique ID.
%%
%% A `PlaceId' is returned by other place operations.
-spec get_place(aws_client:aws_client(), binary() | list()) ->
    {ok, get_place_response(), tuple()} |
    {error, any()} |
    {error, get_place_errors(), tuple()}.
get_place(Client, PlaceId)
  when is_map(Client) ->
    get_place(Client, PlaceId, #{}, #{}).

-spec get_place(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_place_response(), tuple()} |
    {error, any()} |
    {error, get_place_errors(), tuple()}.
get_place(Client, PlaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_place(Client, PlaceId, QueryMap, HeadersMap, []).

-spec get_place(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_place_response(), tuple()} |
    {error, any()} |
    {error, get_place_errors(), tuple()}.
get_place(Client, PlaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/place/", aws_util:encode_uri(PlaceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"additional-features">>, maps:get(<<"additional-features">>, QueryMap, undefined)},
        {<<"intended-use">>, maps:get(<<"intended-use">>, QueryMap, undefined)},
        {<<"key">>, maps:get(<<"key">>, QueryMap, undefined)},
        {<<"language">>, maps:get(<<"language">>, QueryMap, undefined)},
        {<<"political-view">>, maps:get(<<"political-view">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-geo-pricing-bucket">>, <<"PricingBucket">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc `ReverseGeocode' converts geographic coordinates into a
%% human-readable address or place.
%%
%% You can obtain address component, and other related information such as
%% place type, category, street information. The Reverse Geocode API supports
%% filtering to on place type so that you can refine result based on your
%% need. Also, The Reverse Geocode API can also provide additional features
%% such as time zone information and the inclusion of political views.
-spec reverse_geocode(aws_client:aws_client(), reverse_geocode_request()) ->
    {ok, reverse_geocode_response(), tuple()} |
    {error, any()} |
    {error, reverse_geocode_errors(), tuple()}.
reverse_geocode(Client, Input) ->
    reverse_geocode(Client, Input, []).

-spec reverse_geocode(aws_client:aws_client(), reverse_geocode_request(), proplists:proplist()) ->
    {ok, reverse_geocode_response(), tuple()} |
    {error, any()} |
    {error, reverse_geocode_errors(), tuple()}.
reverse_geocode(Client, Input0, Options0) ->
    Method = post,
    Path = ["/reverse-geocode"],
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
                     {<<"key">>, <<"Key">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-geo-pricing-bucket">>, <<"PricingBucket">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc `SearchNearby' queries for points of interest within a radius
%% from a central coordinates, returning place results with optional filters
%% such as categories, business chains, food types and more.
%%
%% The API returns details such as a place name, address, phone, category,
%% food type, contact, opening hours. Also, the API can return phonemes, time
%% zones and more based on requested parameters.
-spec search_nearby(aws_client:aws_client(), search_nearby_request()) ->
    {ok, search_nearby_response(), tuple()} |
    {error, any()} |
    {error, search_nearby_errors(), tuple()}.
search_nearby(Client, Input) ->
    search_nearby(Client, Input, []).

-spec search_nearby(aws_client:aws_client(), search_nearby_request(), proplists:proplist()) ->
    {ok, search_nearby_response(), tuple()} |
    {error, any()} |
    {error, search_nearby_errors(), tuple()}.
search_nearby(Client, Input0, Options0) ->
    Method = post,
    Path = ["/search-nearby"],
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
                     {<<"key">>, <<"Key">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-geo-pricing-bucket">>, <<"PricingBucket">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc `SearchText' searches for geocode and place information.
%%
%% You can then complete a follow-up query suggested from the `Suggest'
%% API via a query id.
-spec search_text(aws_client:aws_client(), search_text_request()) ->
    {ok, search_text_response(), tuple()} |
    {error, any()} |
    {error, search_text_errors(), tuple()}.
search_text(Client, Input) ->
    search_text(Client, Input, []).

-spec search_text(aws_client:aws_client(), search_text_request(), proplists:proplist()) ->
    {ok, search_text_response(), tuple()} |
    {error, any()} |
    {error, search_text_errors(), tuple()}.
search_text(Client, Input0, Options0) ->
    Method = post,
    Path = ["/search-text"],
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
                     {<<"key">>, <<"Key">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-geo-pricing-bucket">>, <<"PricingBucket">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc `Suggest' provides intelligent predictions or recommendations
%% based on the user's input or context, such as relevant places, points
%% of interest, query terms or search category.
%%
%% It is designed to help users find places or point of interests candidates
%% or identify a follow on query based on incomplete or misspelled queries.
%% It returns a list of possible matches or refinements that can be used to
%% formulate a more accurate query. Users can select the most appropriate
%% suggestion and use it for further searching. The API provides options for
%% filtering results by location and other attributes, and allows for
%% additional features like phonemes and timezones. The response includes
%% refined query terms and detailed place information.
-spec suggest(aws_client:aws_client(), suggest_request()) ->
    {ok, suggest_response(), tuple()} |
    {error, any()} |
    {error, suggest_errors(), tuple()}.
suggest(Client, Input) ->
    suggest(Client, Input, []).

-spec suggest(aws_client:aws_client(), suggest_request(), proplists:proplist()) ->
    {ok, suggest_response(), tuple()} |
    {error, any()} |
    {error, suggest_errors(), tuple()}.
suggest(Client, Input0, Options0) ->
    Method = post,
    Path = ["/suggest"],
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
                     {<<"key">>, <<"Key">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-geo-pricing-bucket">>, <<"PricingBucket">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

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
    Client1 = Client#{service => <<"geo-places">>},
    Host = build_host(<<"geo-places">>, Client1),
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
