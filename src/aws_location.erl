%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc &quot;Suite of geospatial services including Maps, Places, Routes,
%% Tracking, and Geofencing&quot;
-module(aws_location).

-export([associate_tracker_consumer/3,
         associate_tracker_consumer/4,
         batch_delete_device_position_history/3,
         batch_delete_device_position_history/4,
         batch_delete_geofence/3,
         batch_delete_geofence/4,
         batch_evaluate_geofences/3,
         batch_evaluate_geofences/4,
         batch_get_device_position/3,
         batch_get_device_position/4,
         batch_put_geofence/3,
         batch_put_geofence/4,
         batch_update_device_position/3,
         batch_update_device_position/4,
         calculate_route/3,
         calculate_route/4,
         calculate_route_matrix/3,
         calculate_route_matrix/4,
         create_geofence_collection/2,
         create_geofence_collection/3,
         create_key/2,
         create_key/3,
         create_map/2,
         create_map/3,
         create_place_index/2,
         create_place_index/3,
         create_route_calculator/2,
         create_route_calculator/3,
         create_tracker/2,
         create_tracker/3,
         delete_geofence_collection/3,
         delete_geofence_collection/4,
         delete_key/3,
         delete_key/4,
         delete_map/3,
         delete_map/4,
         delete_place_index/3,
         delete_place_index/4,
         delete_route_calculator/3,
         delete_route_calculator/4,
         delete_tracker/3,
         delete_tracker/4,
         describe_geofence_collection/2,
         describe_geofence_collection/4,
         describe_geofence_collection/5,
         describe_key/2,
         describe_key/4,
         describe_key/5,
         describe_map/2,
         describe_map/4,
         describe_map/5,
         describe_place_index/2,
         describe_place_index/4,
         describe_place_index/5,
         describe_route_calculator/2,
         describe_route_calculator/4,
         describe_route_calculator/5,
         describe_tracker/2,
         describe_tracker/4,
         describe_tracker/5,
         disassociate_tracker_consumer/4,
         disassociate_tracker_consumer/5,
         forecast_geofence_events/3,
         forecast_geofence_events/4,
         get_device_position/3,
         get_device_position/5,
         get_device_position/6,
         get_device_position_history/4,
         get_device_position_history/5,
         get_geofence/3,
         get_geofence/5,
         get_geofence/6,
         get_map_glyphs/4,
         get_map_glyphs/6,
         get_map_glyphs/7,
         get_map_sprites/3,
         get_map_sprites/5,
         get_map_sprites/6,
         get_map_style_descriptor/2,
         get_map_style_descriptor/4,
         get_map_style_descriptor/5,
         get_map_tile/5,
         get_map_tile/7,
         get_map_tile/8,
         get_place/3,
         get_place/5,
         get_place/6,
         list_device_positions/3,
         list_device_positions/4,
         list_geofence_collections/2,
         list_geofence_collections/3,
         list_geofences/3,
         list_geofences/4,
         list_keys/2,
         list_keys/3,
         list_maps/2,
         list_maps/3,
         list_place_indexes/2,
         list_place_indexes/3,
         list_route_calculators/2,
         list_route_calculators/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_tracker_consumers/3,
         list_tracker_consumers/4,
         list_trackers/2,
         list_trackers/3,
         put_geofence/4,
         put_geofence/5,
         search_place_index_for_position/3,
         search_place_index_for_position/4,
         search_place_index_for_suggestions/3,
         search_place_index_for_suggestions/4,
         search_place_index_for_text/3,
         search_place_index_for_text/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_geofence_collection/3,
         update_geofence_collection/4,
         update_key/3,
         update_key/4,
         update_map/3,
         update_map/4,
         update_place_index/3,
         update_place_index/4,
         update_route_calculator/3,
         update_route_calculator/4,
         update_tracker/3,
         update_tracker/4,
         verify_device_position/3,
         verify_device_position/4]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% get_device_position_request() :: #{}
-type get_device_position_request() :: #{}.


%% Example:
%% list_geofence_collections_response() :: #{
%%   <<"Entries">> := list(list_geofence_collections_response_entry()),
%%   <<"NextToken">> => string()
%% }
-type list_geofence_collections_response() :: #{binary() => any()}.


%% Example:
%% truck_dimensions() :: #{
%%   <<"Height">> => [float()],
%%   <<"Length">> => [float()],
%%   <<"Unit">> => string(),
%%   <<"Width">> => [float()]
%% }
-type truck_dimensions() :: #{binary() => any()}.


%% Example:
%% get_geofence_response() :: #{
%%   <<"CreateTime">> := non_neg_integer(),
%%   <<"GeofenceId">> := string(),
%%   <<"GeofenceProperties">> => map(),
%%   <<"Geometry">> := geofence_geometry(),
%%   <<"Status">> := [string()],
%%   <<"UpdateTime">> := non_neg_integer()
%% }
-type get_geofence_response() :: #{binary() => any()}.

%% Example:
%% describe_geofence_collection_request() :: #{}
-type describe_geofence_collection_request() :: #{}.


%% Example:
%% batch_update_device_position_response() :: #{
%%   <<"Errors">> := list(batch_update_device_position_error())
%% }
-type batch_update_device_position_response() :: #{binary() => any()}.


%% Example:
%% list_device_positions_response() :: #{
%%   <<"Entries">> := list(list_device_positions_response_entry()),
%%   <<"NextToken">> => string()
%% }
-type list_device_positions_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% associate_tracker_consumer_request() :: #{
%%   <<"ConsumerArn">> := string()
%% }
-type associate_tracker_consumer_request() :: #{binary() => any()}.


%% Example:
%% batch_put_geofence_request() :: #{
%%   <<"Entries">> := list(batch_put_geofence_request_entry())
%% }
-type batch_put_geofence_request() :: #{binary() => any()}.


%% Example:
%% calculate_route_car_mode_options() :: #{
%%   <<"AvoidFerries">> => [boolean()],
%%   <<"AvoidTolls">> => [boolean()]
%% }
-type calculate_route_car_mode_options() :: #{binary() => any()}.


%% Example:
%% batch_put_geofence_error() :: #{
%%   <<"Error">> => batch_item_error(),
%%   <<"GeofenceId">> => string()
%% }
-type batch_put_geofence_error() :: #{binary() => any()}.


%% Example:
%% forecasted_event() :: #{
%%   <<"EventId">> => string(),
%%   <<"EventType">> => string(),
%%   <<"ForecastedBreachTime">> => non_neg_integer(),
%%   <<"GeofenceId">> => string(),
%%   <<"GeofenceProperties">> => map(),
%%   <<"IsDeviceInGeofence">> => [boolean()],
%%   <<"NearestDistance">> => float()
%% }
-type forecasted_event() :: #{binary() => any()}.


%% Example:
%% batch_update_device_position_error() :: #{
%%   <<"DeviceId">> => string(),
%%   <<"Error">> => batch_item_error(),
%%   <<"SampleTime">> => non_neg_integer()
%% }
-type batch_update_device_position_error() :: #{binary() => any()}.


%% Example:
%% batch_delete_geofence_response() :: #{
%%   <<"Errors">> := list(batch_delete_geofence_error())
%% }
-type batch_delete_geofence_response() :: #{binary() => any()}.


%% Example:
%% create_key_request() :: #{
%%   <<"Description">> => string(),
%%   <<"ExpireTime">> => non_neg_integer(),
%%   <<"KeyName">> := string(),
%%   <<"NoExpiry">> => [boolean()],
%%   <<"Restrictions">> := api_key_restrictions(),
%%   <<"Tags">> => map()
%% }
-type create_key_request() :: #{binary() => any()}.


%% Example:
%% create_place_index_request() :: #{
%%   <<"DataSource">> := [string()],
%%   <<"DataSourceConfiguration">> => data_source_configuration(),
%%   <<"Description">> => string(),
%%   <<"IndexName">> := string(),
%%   <<"PricingPlan">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_place_index_request() :: #{binary() => any()}.


%% Example:
%% data_source_configuration() :: #{
%%   <<"IntendedUse">> => string()
%% }
-type data_source_configuration() :: #{binary() => any()}.


%% Example:
%% create_route_calculator_response() :: #{
%%   <<"CalculatorArn">> := string(),
%%   <<"CalculatorName">> := string(),
%%   <<"CreateTime">> := non_neg_integer()
%% }
-type create_route_calculator_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% create_tracker_response() :: #{
%%   <<"CreateTime">> := non_neg_integer(),
%%   <<"TrackerArn">> := string(),
%%   <<"TrackerName">> := string()
%% }
-type create_tracker_response() :: #{binary() => any()}.


%% Example:
%% get_map_tile_response() :: #{
%%   <<"Blob">> => [binary()],
%%   <<"CacheControl">> => [string()],
%%   <<"ContentType">> => [string()]
%% }
-type get_map_tile_response() :: #{binary() => any()}.


%% Example:
%% update_map_response() :: #{
%%   <<"MapArn">> := string(),
%%   <<"MapName">> := string(),
%%   <<"UpdateTime">> := non_neg_integer()
%% }
-type update_map_response() :: #{binary() => any()}.


%% Example:
%% list_maps_request() :: #{
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => string()
%% }
-type list_maps_request() :: #{binary() => any()}.

%% Example:
%% delete_route_calculator_response() :: #{}
-type delete_route_calculator_response() :: #{}.


%% Example:
%% get_map_glyphs_response() :: #{
%%   <<"Blob">> => [binary()],
%%   <<"CacheControl">> => [string()],
%%   <<"ContentType">> => [string()]
%% }
-type get_map_glyphs_response() :: #{binary() => any()}.

%% Example:
%% describe_place_index_request() :: #{}
-type describe_place_index_request() :: #{}.


%% Example:
%% list_keys_response() :: #{
%%   <<"Entries">> := list(list_keys_response_entry()),
%%   <<"NextToken">> => string()
%% }
-type list_keys_response() :: #{binary() => any()}.


%% Example:
%% calculate_route_response() :: #{
%%   <<"Legs">> => list(leg()),
%%   <<"Summary">> => calculate_route_summary()
%% }
-type calculate_route_response() :: #{binary() => any()}.


%% Example:
%% list_route_calculators_response_entry() :: #{
%%   <<"CalculatorName">> => string(),
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"DataSource">> => [string()],
%%   <<"Description">> => string(),
%%   <<"PricingPlan">> => string(),
%%   <<"UpdateTime">> => non_neg_integer()
%% }
-type list_route_calculators_response_entry() :: #{binary() => any()}.


%% Example:
%% update_key_response() :: #{
%%   <<"KeyArn">> := string(),
%%   <<"KeyName">> := string(),
%%   <<"UpdateTime">> := non_neg_integer()
%% }
-type update_key_response() :: #{binary() => any()}.


%% Example:
%% search_place_index_for_position_response() :: #{
%%   <<"Results">> := list(search_for_position_result()),
%%   <<"Summary">> := search_place_index_for_position_summary()
%% }
-type search_place_index_for_position_response() :: #{binary() => any()}.


%% Example:
%% list_maps_response_entry() :: #{
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"DataSource">> => [string()],
%%   <<"Description">> => string(),
%%   <<"MapName">> => string(),
%%   <<"PricingPlan">> => string(),
%%   <<"UpdateTime">> => non_neg_integer()
%% }
-type list_maps_response_entry() :: #{binary() => any()}.


%% Example:
%% list_trackers_response() :: #{
%%   <<"Entries">> := list(list_trackers_response_entry()),
%%   <<"NextToken">> => string()
%% }
-type list_trackers_response() :: #{binary() => any()}.

%% Example:
%% describe_route_calculator_request() :: #{}
-type describe_route_calculator_request() :: #{}.


%% Example:
%% delete_key_request() :: #{
%%   <<"ForceDelete">> => [boolean()]
%% }
-type delete_key_request() :: #{binary() => any()}.


%% Example:
%% update_route_calculator_request() :: #{
%%   <<"Description">> => string(),
%%   <<"PricingPlan">> => string()
%% }
-type update_route_calculator_request() :: #{binary() => any()}.


%% Example:
%% search_for_position_result() :: #{
%%   <<"Distance">> => [float()],
%%   <<"Place">> => place(),
%%   <<"PlaceId">> => string()
%% }
-type search_for_position_result() :: #{binary() => any()}.


%% Example:
%% put_geofence_request() :: #{
%%   <<"GeofenceProperties">> => map(),
%%   <<"Geometry">> := geofence_geometry()
%% }
-type put_geofence_request() :: #{binary() => any()}.


%% Example:
%% batch_put_geofence_success() :: #{
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"GeofenceId">> => string(),
%%   <<"UpdateTime">> => non_neg_integer()
%% }
-type batch_put_geofence_success() :: #{binary() => any()}.


%% Example:
%% api_key_filter() :: #{
%%   <<"KeyStatus">> => string()
%% }
-type api_key_filter() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list([string()]())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% search_for_suggestions_result() :: #{
%%   <<"Categories">> => list(string()),
%%   <<"PlaceId">> => string(),
%%   <<"SupplementalCategories">> => list(string()),
%%   <<"Text">> => [string()]
%% }
-type search_for_suggestions_result() :: #{binary() => any()}.

%% Example:
%% associate_tracker_consumer_response() :: #{}
-type associate_tracker_consumer_response() :: #{}.


%% Example:
%% search_place_index_for_text_summary() :: #{
%%   <<"BiasPosition">> => list([float()]()),
%%   <<"DataSource">> => [string()],
%%   <<"FilterBBox">> => list([float()]()),
%%   <<"FilterCategories">> => list(string()),
%%   <<"FilterCountries">> => list(string()),
%%   <<"Language">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"ResultBBox">> => list([float()]()),
%%   <<"Text">> => string()
%% }
-type search_place_index_for_text_summary() :: #{binary() => any()}.


%% Example:
%% batch_delete_geofence_error() :: #{
%%   <<"Error">> => batch_item_error(),
%%   <<"GeofenceId">> => string()
%% }
-type batch_delete_geofence_error() :: #{binary() => any()}.


%% Example:
%% batch_evaluate_geofences_request() :: #{
%%   <<"DevicePositionUpdates">> := list(device_position_update())
%% }
-type batch_evaluate_geofences_request() :: #{binary() => any()}.


%% Example:
%% list_geofences_response() :: #{
%%   <<"Entries">> := list(list_geofence_response_entry()),
%%   <<"NextToken">> => string()
%% }
-type list_geofences_response() :: #{binary() => any()}.


%% Example:
%% route_matrix_entry_error() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => [string()]
%% }
-type route_matrix_entry_error() :: #{binary() => any()}.

%% Example:
%% delete_place_index_response() :: #{}
-type delete_place_index_response() :: #{}.


%% Example:
%% get_map_sprites_request() :: #{
%%   <<"Key">> => string()
%% }
-type get_map_sprites_request() :: #{binary() => any()}.

%% Example:
%% delete_map_request() :: #{}
-type delete_map_request() :: #{}.


%% Example:
%% list_geofence_collections_request() :: #{
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => string()
%% }
-type list_geofence_collections_request() :: #{binary() => any()}.


%% Example:
%% get_map_style_descriptor_response() :: #{
%%   <<"Blob">> => [binary()],
%%   <<"CacheControl">> => [string()],
%%   <<"ContentType">> => [string()]
%% }
-type get_map_style_descriptor_response() :: #{binary() => any()}.

%% Example:
%% delete_key_response() :: #{}
-type delete_key_response() :: #{}.


%% Example:
%% list_tracker_consumers_request() :: #{
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => string()
%% }
-type list_tracker_consumers_request() :: #{binary() => any()}.


%% Example:
%% list_device_positions_response_entry() :: #{
%%   <<"Accuracy">> => positional_accuracy(),
%%   <<"DeviceId">> => string(),
%%   <<"Position">> => list([float()]()),
%%   <<"PositionProperties">> => map(),
%%   <<"SampleTime">> => non_neg_integer()
%% }
-type list_device_positions_response_entry() :: #{binary() => any()}.


%% Example:
%% list_keys_request() :: #{
%%   <<"Filter">> => api_key_filter(),
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => string()
%% }
-type list_keys_request() :: #{binary() => any()}.


%% Example:
%% search_place_index_for_position_summary() :: #{
%%   <<"DataSource">> => [string()],
%%   <<"Language">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"Position">> => list([float()]())
%% }
-type search_place_index_for_position_summary() :: #{binary() => any()}.


%% Example:
%% create_place_index_response() :: #{
%%   <<"CreateTime">> := non_neg_integer(),
%%   <<"IndexArn">> := string(),
%%   <<"IndexName">> := string()
%% }
-type create_place_index_response() :: #{binary() => any()}.

%% Example:
%% delete_route_calculator_request() :: #{}
-type delete_route_calculator_request() :: #{}.


%% Example:
%% update_geofence_collection_response() :: #{
%%   <<"CollectionArn">> := string(),
%%   <<"CollectionName">> := string(),
%%   <<"UpdateTime">> := non_neg_integer()
%% }
-type update_geofence_collection_response() :: #{binary() => any()}.

%% Example:
%% describe_key_request() :: #{}
-type describe_key_request() :: #{}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% put_geofence_response() :: #{
%%   <<"CreateTime">> := non_neg_integer(),
%%   <<"GeofenceId">> := string(),
%%   <<"UpdateTime">> := non_neg_integer()
%% }
-type put_geofence_response() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% lte_local_id() :: #{
%%   <<"Earfcn">> => integer(),
%%   <<"Pci">> => integer()
%% }
-type lte_local_id() :: #{binary() => any()}.


%% Example:
%% list_geofence_response_entry() :: #{
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"GeofenceId">> => string(),
%%   <<"GeofenceProperties">> => map(),
%%   <<"Geometry">> => geofence_geometry(),
%%   <<"Status">> => [string()],
%%   <<"UpdateTime">> => non_neg_integer()
%% }
-type list_geofence_response_entry() :: #{binary() => any()}.

%% Example:
%% delete_map_response() :: #{}
-type delete_map_response() :: #{}.


%% Example:
%% search_place_index_for_text_response() :: #{
%%   <<"Results">> := list(search_for_text_result()),
%%   <<"Summary">> := search_place_index_for_text_summary()
%% }
-type search_place_index_for_text_response() :: #{binary() => any()}.


%% Example:
%% get_map_tile_request() :: #{
%%   <<"Key">> => string()
%% }
-type get_map_tile_request() :: #{binary() => any()}.


%% Example:
%% update_key_request() :: #{
%%   <<"Description">> => string(),
%%   <<"ExpireTime">> => non_neg_integer(),
%%   <<"ForceUpdate">> => [boolean()],
%%   <<"NoExpiry">> => [boolean()],
%%   <<"Restrictions">> => api_key_restrictions()
%% }
-type update_key_request() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% create_geofence_collection_response() :: #{
%%   <<"CollectionArn">> := string(),
%%   <<"CollectionName">> := string(),
%%   <<"CreateTime">> := non_neg_integer()
%% }
-type create_geofence_collection_response() :: #{binary() => any()}.


%% Example:
%% wi_fi_access_point() :: #{
%%   <<"MacAddress">> => [string()],
%%   <<"Rss">> => [integer()]
%% }
-type wi_fi_access_point() :: #{binary() => any()}.


%% Example:
%% device_state() :: #{
%%   <<"Accuracy">> => positional_accuracy(),
%%   <<"CellSignals">> => cell_signals(),
%%   <<"DeviceId">> => string(),
%%   <<"Ipv4Address">> => [string()],
%%   <<"Position">> => list([float()]()),
%%   <<"SampleTime">> => non_neg_integer(),
%%   <<"WiFiAccessPoints">> => list(wi_fi_access_point())
%% }
-type device_state() :: #{binary() => any()}.

%% Example:
%% describe_tracker_request() :: #{}
-type describe_tracker_request() :: #{}.


%% Example:
%% describe_route_calculator_response() :: #{
%%   <<"CalculatorArn">> := string(),
%%   <<"CalculatorName">> := string(),
%%   <<"CreateTime">> := non_neg_integer(),
%%   <<"DataSource">> := [string()],
%%   <<"Description">> := string(),
%%   <<"PricingPlan">> => string(),
%%   <<"Tags">> => map(),
%%   <<"UpdateTime">> := non_neg_integer()
%% }
-type describe_route_calculator_response() :: #{binary() => any()}.

%% Example:
%% describe_map_request() :: #{}
-type describe_map_request() :: #{}.


%% Example:
%% map_configuration_update() :: #{
%%   <<"CustomLayers">> => list(string()),
%%   <<"PoliticalView">> => string()
%% }
-type map_configuration_update() :: #{binary() => any()}.


%% Example:
%% update_map_request() :: #{
%%   <<"ConfigurationUpdate">> => map_configuration_update(),
%%   <<"Description">> => string(),
%%   <<"PricingPlan">> => string()
%% }
-type update_map_request() :: #{binary() => any()}.


%% Example:
%% update_route_calculator_response() :: #{
%%   <<"CalculatorArn">> := string(),
%%   <<"CalculatorName">> := string(),
%%   <<"UpdateTime">> := non_neg_integer()
%% }
-type update_route_calculator_response() :: #{binary() => any()}.


%% Example:
%% place_geometry() :: #{
%%   <<"Point">> => list([float()]())
%% }
-type place_geometry() :: #{binary() => any()}.


%% Example:
%% batch_get_device_position_request() :: #{
%%   <<"DeviceIds">> := list(string())
%% }
-type batch_get_device_position_request() :: #{binary() => any()}.


%% Example:
%% list_place_indexes_request() :: #{
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => string()
%% }
-type list_place_indexes_request() :: #{binary() => any()}.


%% Example:
%% circle() :: #{
%%   <<"Center">> => list([float()]()),
%%   <<"Radius">> => [float()]
%% }
-type circle() :: #{binary() => any()}.


%% Example:
%% create_map_request() :: #{
%%   <<"Configuration">> := map_configuration(),
%%   <<"Description">> => string(),
%%   <<"MapName">> := string(),
%%   <<"PricingPlan">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_map_request() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% forecast_geofence_events_device_state() :: #{
%%   <<"Position">> => list([float()]()),
%%   <<"Speed">> => [float()]
%% }
-type forecast_geofence_events_device_state() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"Message">> => [string()],
%%   <<"Name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% verify_device_position_request() :: #{
%%   <<"DeviceState">> := device_state(),
%%   <<"DistanceUnit">> => string()
%% }
-type verify_device_position_request() :: #{binary() => any()}.

%% Example:
%% disassociate_tracker_consumer_request() :: #{}
-type disassociate_tracker_consumer_request() :: #{}.


%% Example:
%% search_place_index_for_text_request() :: #{
%%   <<"BiasPosition">> => list([float()]()),
%%   <<"FilterBBox">> => list([float()]()),
%%   <<"FilterCategories">> => list(string()),
%%   <<"FilterCountries">> => list(string()),
%%   <<"Key">> => string(),
%%   <<"Language">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"Text">> := string()
%% }
-type search_place_index_for_text_request() :: #{binary() => any()}.


%% Example:
%% get_place_request() :: #{
%%   <<"Key">> => string(),
%%   <<"Language">> => string()
%% }
-type get_place_request() :: #{binary() => any()}.


%% Example:
%% time_zone() :: #{
%%   <<"Name">> => [string()],
%%   <<"Offset">> => [integer()]
%% }
-type time_zone() :: #{binary() => any()}.


%% Example:
%% update_geofence_collection_request() :: #{
%%   <<"Description">> => string(),
%%   <<"PricingPlan">> => string(),
%%   <<"PricingPlanDataSource">> => [string()]
%% }
-type update_geofence_collection_request() :: #{binary() => any()}.

%% Example:
%% delete_geofence_collection_request() :: #{}
-type delete_geofence_collection_request() :: #{}.


%% Example:
%% batch_item_error() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => [string()]
%% }
-type batch_item_error() :: #{binary() => any()}.


%% Example:
%% describe_map_response() :: #{
%%   <<"Configuration">> := map_configuration(),
%%   <<"CreateTime">> := non_neg_integer(),
%%   <<"DataSource">> := [string()],
%%   <<"Description">> := string(),
%%   <<"MapArn">> := string(),
%%   <<"MapName">> := string(),
%%   <<"PricingPlan">> => string(),
%%   <<"Tags">> => map(),
%%   <<"UpdateTime">> := non_neg_integer()
%% }
-type describe_map_response() :: #{binary() => any()}.


%% Example:
%% search_place_index_for_suggestions_summary() :: #{
%%   <<"BiasPosition">> => list([float()]()),
%%   <<"DataSource">> => [string()],
%%   <<"FilterBBox">> => list([float()]()),
%%   <<"FilterCategories">> => list(string()),
%%   <<"FilterCountries">> => list(string()),
%%   <<"Language">> => string(),
%%   <<"MaxResults">> => [integer()],
%%   <<"Text">> => string()
%% }
-type search_place_index_for_suggestions_summary() :: #{binary() => any()}.


%% Example:
%% update_place_index_response() :: #{
%%   <<"IndexArn">> := string(),
%%   <<"IndexName">> := string(),
%%   <<"UpdateTime">> := non_neg_integer()
%% }
-type update_place_index_response() :: #{binary() => any()}.


%% Example:
%% create_route_calculator_request() :: #{
%%   <<"CalculatorName">> := string(),
%%   <<"DataSource">> := [string()],
%%   <<"Description">> => string(),
%%   <<"PricingPlan">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_route_calculator_request() :: #{binary() => any()}.


%% Example:
%% list_place_indexes_response_entry() :: #{
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"DataSource">> => [string()],
%%   <<"Description">> => string(),
%%   <<"IndexName">> => string(),
%%   <<"PricingPlan">> => string(),
%%   <<"UpdateTime">> => non_neg_integer()
%% }
-type list_place_indexes_response_entry() :: #{binary() => any()}.


%% Example:
%% get_device_position_history_response() :: #{
%%   <<"DevicePositions">> := list(device_position()),
%%   <<"NextToken">> => string()
%% }
-type get_device_position_history_response() :: #{binary() => any()}.


%% Example:
%% batch_evaluate_geofences_response() :: #{
%%   <<"Errors">> := list(batch_evaluate_geofences_error())
%% }
-type batch_evaluate_geofences_response() :: #{binary() => any()}.


%% Example:
%% create_map_response() :: #{
%%   <<"CreateTime">> := non_neg_integer(),
%%   <<"MapArn">> := string(),
%%   <<"MapName">> := string()
%% }
-type create_map_response() :: #{binary() => any()}.


%% Example:
%% forecast_geofence_events_request() :: #{
%%   <<"DeviceState">> := forecast_geofence_events_device_state(),
%%   <<"DistanceUnit">> => string(),
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => string(),
%%   <<"SpeedUnit">> => string(),
%%   <<"TimeHorizonMinutes">> => [float()]
%% }
-type forecast_geofence_events_request() :: #{binary() => any()}.


%% Example:
%% api_key_restrictions() :: #{
%%   <<"AllowActions">> => list(string()),
%%   <<"AllowReferers">> => list(string()),
%%   <<"AllowResources">> => list(string())
%% }
-type api_key_restrictions() :: #{binary() => any()}.


%% Example:
%% update_tracker_response() :: #{
%%   <<"TrackerArn">> := string(),
%%   <<"TrackerName">> := string(),
%%   <<"UpdateTime">> := non_neg_integer()
%% }
-type update_tracker_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_place_indexes_response() :: #{
%%   <<"Entries">> := list(list_place_indexes_response_entry()),
%%   <<"NextToken">> => string()
%% }
-type list_place_indexes_response() :: #{binary() => any()}.


%% Example:
%% list_route_calculators_request() :: #{
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => string()
%% }
-type list_route_calculators_request() :: #{binary() => any()}.


%% Example:
%% list_maps_response() :: #{
%%   <<"Entries">> := list(list_maps_response_entry()),
%%   <<"NextToken">> => string()
%% }
-type list_maps_response() :: #{binary() => any()}.


%% Example:
%% batch_put_geofence_request_entry() :: #{
%%   <<"GeofenceId">> => string(),
%%   <<"GeofenceProperties">> => map(),
%%   <<"Geometry">> => geofence_geometry()
%% }
-type batch_put_geofence_request_entry() :: #{binary() => any()}.

%% Example:
%% delete_tracker_request() :: #{}
-type delete_tracker_request() :: #{}.


%% Example:
%% get_map_sprites_response() :: #{
%%   <<"Blob">> => [binary()],
%%   <<"CacheControl">> => [string()],
%%   <<"ContentType">> => [string()]
%% }
-type get_map_sprites_response() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% describe_place_index_response() :: #{
%%   <<"CreateTime">> := non_neg_integer(),
%%   <<"DataSource">> := [string()],
%%   <<"DataSourceConfiguration">> := data_source_configuration(),
%%   <<"Description">> := string(),
%%   <<"IndexArn">> := string(),
%%   <<"IndexName">> := string(),
%%   <<"PricingPlan">> => string(),
%%   <<"Tags">> => map(),
%%   <<"UpdateTime">> := non_neg_integer()
%% }
-type describe_place_index_response() :: #{binary() => any()}.


%% Example:
%% calculate_route_truck_mode_options() :: #{
%%   <<"AvoidFerries">> => [boolean()],
%%   <<"AvoidTolls">> => [boolean()],
%%   <<"Dimensions">> => truck_dimensions(),
%%   <<"Weight">> => truck_weight()
%% }
-type calculate_route_truck_mode_options() :: #{binary() => any()}.


%% Example:
%% describe_tracker_response() :: #{
%%   <<"CreateTime">> := non_neg_integer(),
%%   <<"Description">> := string(),
%%   <<"EventBridgeEnabled">> => [boolean()],
%%   <<"KmsKeyEnableGeospatialQueries">> => [boolean()],
%%   <<"KmsKeyId">> => string(),
%%   <<"PositionFiltering">> => string(),
%%   <<"PricingPlan">> => string(),
%%   <<"PricingPlanDataSource">> => [string()],
%%   <<"Tags">> => map(),
%%   <<"TrackerArn">> := string(),
%%   <<"TrackerName">> := string(),
%%   <<"UpdateTime">> := non_neg_integer()
%% }
-type describe_tracker_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% create_tracker_request() :: #{
%%   <<"Description">> => string(),
%%   <<"EventBridgeEnabled">> => [boolean()],
%%   <<"KmsKeyEnableGeospatialQueries">> => [boolean()],
%%   <<"KmsKeyId">> => string(),
%%   <<"PositionFiltering">> => string(),
%%   <<"PricingPlan">> => string(),
%%   <<"PricingPlanDataSource">> => [string()],
%%   <<"Tags">> => map(),
%%   <<"TrackerName">> := string()
%% }
-type create_tracker_request() :: #{binary() => any()}.


%% Example:
%% describe_geofence_collection_response() :: #{
%%   <<"CollectionArn">> := string(),
%%   <<"CollectionName">> := string(),
%%   <<"CreateTime">> := non_neg_integer(),
%%   <<"Description">> := string(),
%%   <<"GeofenceCount">> => [integer()],
%%   <<"KmsKeyId">> => string(),
%%   <<"PricingPlan">> => string(),
%%   <<"PricingPlanDataSource">> => [string()],
%%   <<"Tags">> => map(),
%%   <<"UpdateTime">> := non_neg_integer()
%% }
-type describe_geofence_collection_response() :: #{binary() => any()}.


%% Example:
%% calculate_route_matrix_response() :: #{
%%   <<"RouteMatrix">> => list(list(route_matrix_entry())()),
%%   <<"SnappedDeparturePositions">> => list(list([float()]())()),
%%   <<"SnappedDestinationPositions">> => list(list([float()]())()),
%%   <<"Summary">> => calculate_route_matrix_summary()
%% }
-type calculate_route_matrix_response() :: #{binary() => any()}.


%% Example:
%% batch_get_device_position_error() :: #{
%%   <<"DeviceId">> => string(),
%%   <<"Error">> => batch_item_error()
%% }
-type batch_get_device_position_error() :: #{binary() => any()}.


%% Example:
%% calculate_route_request() :: #{
%%   <<"ArrivalTime">> => non_neg_integer(),
%%   <<"CarModeOptions">> => calculate_route_car_mode_options(),
%%   <<"DepartNow">> => [boolean()],
%%   <<"DeparturePosition">> := list([float()]()),
%%   <<"DepartureTime">> => non_neg_integer(),
%%   <<"DestinationPosition">> := list([float()]()),
%%   <<"DistanceUnit">> => string(),
%%   <<"IncludeLegGeometry">> => [boolean()],
%%   <<"Key">> => string(),
%%   <<"OptimizeFor">> => string(),
%%   <<"TravelMode">> => string(),
%%   <<"TruckModeOptions">> => calculate_route_truck_mode_options(),
%%   <<"WaypointPositions">> => list(list([float()]())())
%% }
-type calculate_route_request() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"FieldList">> => list(validation_exception_field()),
%%   <<"Message">> => [string()],
%%   <<"Reason">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% batch_put_geofence_response() :: #{
%%   <<"Errors">> := list(batch_put_geofence_error()),
%%   <<"Successes">> := list(batch_put_geofence_success())
%% }
-type batch_put_geofence_response() :: #{binary() => any()}.


%% Example:
%% batch_delete_device_position_history_error() :: #{
%%   <<"DeviceId">> => string(),
%%   <<"Error">> => batch_item_error()
%% }
-type batch_delete_device_position_history_error() :: #{binary() => any()}.


%% Example:
%% get_place_response() :: #{
%%   <<"Place">> := place()
%% }
-type get_place_response() :: #{binary() => any()}.


%% Example:
%% batch_get_device_position_response() :: #{
%%   <<"DevicePositions">> := list(device_position()),
%%   <<"Errors">> := list(batch_get_device_position_error())
%% }
-type batch_get_device_position_response() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% disassociate_tracker_consumer_response() :: #{}
-type disassociate_tracker_consumer_response() :: #{}.


%% Example:
%% truck_weight() :: #{
%%   <<"Total">> => [float()],
%%   <<"Unit">> => string()
%% }
-type truck_weight() :: #{binary() => any()}.


%% Example:
%% describe_key_response() :: #{
%%   <<"CreateTime">> := non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"ExpireTime">> := non_neg_integer(),
%%   <<"Key">> := string(),
%%   <<"KeyArn">> := string(),
%%   <<"KeyName">> := string(),
%%   <<"Restrictions">> := api_key_restrictions(),
%%   <<"Tags">> => map(),
%%   <<"UpdateTime">> := non_neg_integer()
%% }
-type describe_key_response() :: #{binary() => any()}.


%% Example:
%% batch_update_device_position_request() :: #{
%%   <<"Updates">> := list(device_position_update())
%% }
-type batch_update_device_position_request() :: #{binary() => any()}.


%% Example:
%% device_position_update() :: #{
%%   <<"Accuracy">> => positional_accuracy(),
%%   <<"DeviceId">> => string(),
%%   <<"Position">> => list([float()]()),
%%   <<"PositionProperties">> => map(),
%%   <<"SampleTime">> => non_neg_integer()
%% }
-type device_position_update() :: #{binary() => any()}.


%% Example:
%% lte_cell_details() :: #{
%%   <<"CellId">> => integer(),
%%   <<"LocalId">> => lte_local_id(),
%%   <<"Mcc">> => [integer()],
%%   <<"Mnc">> => [integer()],
%%   <<"NetworkMeasurements">> => list(lte_network_measurements()),
%%   <<"NrCapable">> => [boolean()],
%%   <<"Rsrp">> => integer(),
%%   <<"Rsrq">> => float(),
%%   <<"Tac">> => [integer()],
%%   <<"TimingAdvance">> => [integer()]
%% }
-type lte_cell_details() :: #{binary() => any()}.


%% Example:
%% cell_signals() :: #{
%%   <<"LteCellDetails">> => list(lte_cell_details())
%% }
-type cell_signals() :: #{binary() => any()}.


%% Example:
%% calculate_route_matrix_summary() :: #{
%%   <<"DataSource">> => [string()],
%%   <<"DistanceUnit">> => string(),
%%   <<"ErrorCount">> => [integer()],
%%   <<"RouteCount">> => [integer()]
%% }
-type calculate_route_matrix_summary() :: #{binary() => any()}.


%% Example:
%% batch_delete_geofence_request() :: #{
%%   <<"GeofenceIds">> := list(string())
%% }
-type batch_delete_geofence_request() :: #{binary() => any()}.


%% Example:
%% list_keys_response_entry() :: #{
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"ExpireTime">> => non_neg_integer(),
%%   <<"KeyName">> => string(),
%%   <<"Restrictions">> => api_key_restrictions(),
%%   <<"UpdateTime">> => non_neg_integer()
%% }
-type list_keys_response_entry() :: #{binary() => any()}.


%% Example:
%% calculate_route_summary() :: #{
%%   <<"DataSource">> => [string()],
%%   <<"Distance">> => [float()],
%%   <<"DistanceUnit">> => string(),
%%   <<"DurationSeconds">> => [float()],
%%   <<"RouteBBox">> => list([float()]())
%% }
-type calculate_route_summary() :: #{binary() => any()}.


%% Example:
%% lte_network_measurements() :: #{
%%   <<"CellId">> => integer(),
%%   <<"Earfcn">> => integer(),
%%   <<"Pci">> => integer(),
%%   <<"Rsrp">> => integer(),
%%   <<"Rsrq">> => float()
%% }
-type lte_network_measurements() :: #{binary() => any()}.


%% Example:
%% map_configuration() :: #{
%%   <<"CustomLayers">> => list(string()),
%%   <<"PoliticalView">> => string(),
%%   <<"Style">> => string()
%% }
-type map_configuration() :: #{binary() => any()}.


%% Example:
%% positional_accuracy() :: #{
%%   <<"Horizontal">> => [float()]
%% }
-type positional_accuracy() :: #{binary() => any()}.


%% Example:
%% device_position() :: #{
%%   <<"Accuracy">> => positional_accuracy(),
%%   <<"DeviceId">> => string(),
%%   <<"Position">> => list([float()]()),
%%   <<"PositionProperties">> => map(),
%%   <<"ReceivedTime">> => non_neg_integer(),
%%   <<"SampleTime">> => non_neg_integer()
%% }
-type device_position() :: #{binary() => any()}.


%% Example:
%% create_geofence_collection_request() :: #{
%%   <<"CollectionName">> := string(),
%%   <<"Description">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"PricingPlan">> => string(),
%%   <<"PricingPlanDataSource">> => [string()],
%%   <<"Tags">> => map()
%% }
-type create_geofence_collection_request() :: #{binary() => any()}.


%% Example:
%% step() :: #{
%%   <<"Distance">> => [float()],
%%   <<"DurationSeconds">> => [float()],
%%   <<"EndPosition">> => list([float()]()),
%%   <<"GeometryOffset">> => [integer()],
%%   <<"StartPosition">> => list([float()]())
%% }
-type step() :: #{binary() => any()}.


%% Example:
%% list_tracker_consumers_response() :: #{
%%   <<"ConsumerArns">> := list(string()),
%%   <<"NextToken">> => string()
%% }
-type list_tracker_consumers_response() :: #{binary() => any()}.


%% Example:
%% get_map_style_descriptor_request() :: #{
%%   <<"Key">> => string()
%% }
-type get_map_style_descriptor_request() :: #{binary() => any()}.


%% Example:
%% tracking_filter_geometry() :: #{
%%   <<"Polygon">> => list(list(list([float()]())())())
%% }
-type tracking_filter_geometry() :: #{binary() => any()}.


%% Example:
%% search_for_text_result() :: #{
%%   <<"Distance">> => [float()],
%%   <<"Place">> => place(),
%%   <<"PlaceId">> => string(),
%%   <<"Relevance">> => [float()]
%% }
-type search_for_text_result() :: #{binary() => any()}.


%% Example:
%% list_trackers_request() :: #{
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => string()
%% }
-type list_trackers_request() :: #{binary() => any()}.


%% Example:
%% verify_device_position_response() :: #{
%%   <<"DeviceId">> => string(),
%%   <<"DistanceUnit">> => string(),
%%   <<"InferredState">> => inferred_state(),
%%   <<"ReceivedTime">> => non_neg_integer(),
%%   <<"SampleTime">> => non_neg_integer()
%% }
-type verify_device_position_response() :: #{binary() => any()}.

%% Example:
%% delete_place_index_request() :: #{}
-type delete_place_index_request() :: #{}.


%% Example:
%% update_tracker_request() :: #{
%%   <<"Description">> => string(),
%%   <<"EventBridgeEnabled">> => [boolean()],
%%   <<"KmsKeyEnableGeospatialQueries">> => [boolean()],
%%   <<"PositionFiltering">> => string(),
%%   <<"PricingPlan">> => string(),
%%   <<"PricingPlanDataSource">> => [string()]
%% }
-type update_tracker_request() :: #{binary() => any()}.


%% Example:
%% list_device_positions_request() :: #{
%%   <<"FilterGeometry">> => tracking_filter_geometry(),
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => string()
%% }
-type list_device_positions_request() :: #{binary() => any()}.


%% Example:
%% leg_geometry() :: #{
%%   <<"LineString">> => list(list([float()]())())
%% }
-type leg_geometry() :: #{binary() => any()}.


%% Example:
%% geofence_geometry() :: #{
%%   <<"Circle">> => circle(),
%%   <<"Geobuf">> => binary(),
%%   <<"Polygon">> => list(list(list([float()]())())())
%% }
-type geofence_geometry() :: #{binary() => any()}.

%% Example:
%% get_geofence_request() :: #{}
-type get_geofence_request() :: #{}.


%% Example:
%% list_route_calculators_response() :: #{
%%   <<"Entries">> := list(list_route_calculators_response_entry()),
%%   <<"NextToken">> => string()
%% }
-type list_route_calculators_response() :: #{binary() => any()}.


%% Example:
%% get_device_position_history_request() :: #{
%%   <<"EndTimeExclusive">> => non_neg_integer(),
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => string(),
%%   <<"StartTimeInclusive">> => non_neg_integer()
%% }
-type get_device_position_history_request() :: #{binary() => any()}.


%% Example:
%% route_matrix_entry() :: #{
%%   <<"Distance">> => [float()],
%%   <<"DurationSeconds">> => [float()],
%%   <<"Error">> => route_matrix_entry_error()
%% }
-type route_matrix_entry() :: #{binary() => any()}.


%% Example:
%% inferred_state() :: #{
%%   <<"Accuracy">> => positional_accuracy(),
%%   <<"DeviationDistance">> => [float()],
%%   <<"Position">> => list([float()]()),
%%   <<"ProxyDetected">> => [boolean()]
%% }
-type inferred_state() :: #{binary() => any()}.


%% Example:
%% get_device_position_response() :: #{
%%   <<"Accuracy">> => positional_accuracy(),
%%   <<"DeviceId">> => string(),
%%   <<"Position">> := list([float()]()),
%%   <<"PositionProperties">> => map(),
%%   <<"ReceivedTime">> := non_neg_integer(),
%%   <<"SampleTime">> := non_neg_integer()
%% }
-type get_device_position_response() :: #{binary() => any()}.


%% Example:
%% search_place_index_for_suggestions_request() :: #{
%%   <<"BiasPosition">> => list([float()]()),
%%   <<"FilterBBox">> => list([float()]()),
%%   <<"FilterCategories">> => list(string()),
%%   <<"FilterCountries">> => list(string()),
%%   <<"Key">> => string(),
%%   <<"Language">> => string(),
%%   <<"MaxResults">> => [integer()],
%%   <<"Text">> := string()
%% }
-type search_place_index_for_suggestions_request() :: #{binary() => any()}.


%% Example:
%% batch_delete_device_position_history_response() :: #{
%%   <<"Errors">> := list(batch_delete_device_position_history_error())
%% }
-type batch_delete_device_position_history_response() :: #{binary() => any()}.

%% Example:
%% delete_tracker_response() :: #{}
-type delete_tracker_response() :: #{}.


%% Example:
%% search_place_index_for_suggestions_response() :: #{
%%   <<"Results">> := list(search_for_suggestions_result()),
%%   <<"Summary">> := search_place_index_for_suggestions_summary()
%% }
-type search_place_index_for_suggestions_response() :: #{binary() => any()}.


%% Example:
%% get_map_glyphs_request() :: #{
%%   <<"Key">> => string()
%% }
-type get_map_glyphs_request() :: #{binary() => any()}.


%% Example:
%% leg() :: #{
%%   <<"Distance">> => [float()],
%%   <<"DurationSeconds">> => [float()],
%%   <<"EndPosition">> => list([float()]()),
%%   <<"Geometry">> => leg_geometry(),
%%   <<"StartPosition">> => list([float()]()),
%%   <<"Steps">> => list(step())
%% }
-type leg() :: #{binary() => any()}.


%% Example:
%% place() :: #{
%%   <<"AddressNumber">> => [string()],
%%   <<"Categories">> => list(string()),
%%   <<"Country">> => [string()],
%%   <<"Geometry">> => place_geometry(),
%%   <<"Interpolated">> => [boolean()],
%%   <<"Label">> => [string()],
%%   <<"Municipality">> => [string()],
%%   <<"Neighborhood">> => [string()],
%%   <<"PostalCode">> => [string()],
%%   <<"Region">> => [string()],
%%   <<"Street">> => [string()],
%%   <<"SubMunicipality">> => [string()],
%%   <<"SubRegion">> => [string()],
%%   <<"SupplementalCategories">> => list(string()),
%%   <<"TimeZone">> => time_zone(),
%%   <<"UnitNumber">> => [string()],
%%   <<"UnitType">> => [string()]
%% }
-type place() :: #{binary() => any()}.


%% Example:
%% batch_evaluate_geofences_error() :: #{
%%   <<"DeviceId">> => string(),
%%   <<"Error">> => batch_item_error(),
%%   <<"SampleTime">> => non_neg_integer()
%% }
-type batch_evaluate_geofences_error() :: #{binary() => any()}.


%% Example:
%% list_geofence_collections_response_entry() :: #{
%%   <<"CollectionName">> => string(),
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"PricingPlan">> => string(),
%%   <<"PricingPlanDataSource">> => [string()],
%%   <<"UpdateTime">> => non_neg_integer()
%% }
-type list_geofence_collections_response_entry() :: #{binary() => any()}.


%% Example:
%% update_place_index_request() :: #{
%%   <<"DataSourceConfiguration">> => data_source_configuration(),
%%   <<"Description">> => string(),
%%   <<"PricingPlan">> => string()
%% }
-type update_place_index_request() :: #{binary() => any()}.


%% Example:
%% create_key_response() :: #{
%%   <<"CreateTime">> := non_neg_integer(),
%%   <<"Key">> := string(),
%%   <<"KeyArn">> := string(),
%%   <<"KeyName">> := string()
%% }
-type create_key_response() :: #{binary() => any()}.


%% Example:
%% search_place_index_for_position_request() :: #{
%%   <<"Key">> => string(),
%%   <<"Language">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"Position">> := list([float()]())
%% }
-type search_place_index_for_position_request() :: #{binary() => any()}.


%% Example:
%% calculate_route_matrix_request() :: #{
%%   <<"CarModeOptions">> => calculate_route_car_mode_options(),
%%   <<"DepartNow">> => [boolean()],
%%   <<"DeparturePositions">> := list(list([float()]())()),
%%   <<"DepartureTime">> => non_neg_integer(),
%%   <<"DestinationPositions">> := list(list([float()]())()),
%%   <<"DistanceUnit">> => string(),
%%   <<"Key">> => string(),
%%   <<"TravelMode">> => string(),
%%   <<"TruckModeOptions">> => calculate_route_truck_mode_options()
%% }
-type calculate_route_matrix_request() :: #{binary() => any()}.

%% Example:
%% delete_geofence_collection_response() :: #{}
-type delete_geofence_collection_response() :: #{}.


%% Example:
%% list_geofences_request() :: #{
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => string()
%% }
-type list_geofences_request() :: #{binary() => any()}.


%% Example:
%% list_trackers_response_entry() :: #{
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"PricingPlan">> => string(),
%%   <<"PricingPlanDataSource">> => [string()],
%%   <<"TrackerName">> => string(),
%%   <<"UpdateTime">> => non_neg_integer()
%% }
-type list_trackers_response_entry() :: #{binary() => any()}.


%% Example:
%% forecast_geofence_events_response() :: #{
%%   <<"DistanceUnit">> => string(),
%%   <<"ForecastedEvents">> => list(forecasted_event()),
%%   <<"NextToken">> => string(),
%%   <<"SpeedUnit">> => string()
%% }
-type forecast_geofence_events_response() :: #{binary() => any()}.


%% Example:
%% batch_delete_device_position_history_request() :: #{
%%   <<"DeviceIds">> := list(string())
%% }
-type batch_delete_device_position_history_request() :: #{binary() => any()}.

-type associate_tracker_consumer_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type batch_delete_device_position_history_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type batch_delete_geofence_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type batch_evaluate_geofences_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type batch_get_device_position_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type batch_put_geofence_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type batch_update_device_position_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type calculate_route_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type calculate_route_matrix_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_geofence_collection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_key_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_map_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_place_index_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_route_calculator_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_tracker_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_geofence_collection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_key_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_map_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_place_index_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_route_calculator_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_tracker_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_geofence_collection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_key_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_map_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_place_index_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_route_calculator_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_tracker_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type disassociate_tracker_consumer_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type forecast_geofence_events_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_device_position_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_device_position_history_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_geofence_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_map_glyphs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_map_sprites_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_map_style_descriptor_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_map_tile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_place_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_device_positions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_geofence_collections_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_geofences_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_keys_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_maps_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_place_indexes_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_route_calculators_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tracker_consumers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_trackers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type put_geofence_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type search_place_index_for_position_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type search_place_index_for_suggestions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type search_place_index_for_text_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_geofence_collection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_key_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_map_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_place_index_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_route_calculator_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_tracker_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type verify_device_position_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an association between a geofence collection and a tracker
%% resource.
%%
%% This
%% allows the tracker resource to communicate location data to the linked
%% geofence
%% collection.
%%
%% You can associate up to five geofence collections to each tracker
%% resource.
%%
%% Currently not supported — Cross-account configurations, such as creating
%% associations between a tracker resource in one account and a geofence
%% collection in another account.
-spec associate_tracker_consumer(aws_client:aws_client(), binary() | list(), associate_tracker_consumer_request()) ->
    {ok, associate_tracker_consumer_response(), tuple()} |
    {error, any()} |
    {error, associate_tracker_consumer_errors(), tuple()}.
associate_tracker_consumer(Client, TrackerName, Input) ->
    associate_tracker_consumer(Client, TrackerName, Input, []).

-spec associate_tracker_consumer(aws_client:aws_client(), binary() | list(), associate_tracker_consumer_request(), proplists:proplist()) ->
    {ok, associate_tracker_consumer_response(), tuple()} |
    {error, any()} |
    {error, associate_tracker_consumer_errors(), tuple()}.
associate_tracker_consumer(Client, TrackerName, Input0, Options0) ->
    Method = post,
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), "/consumers"],
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

%% @doc Deletes the position history of one or more devices from a tracker
%% resource.
-spec batch_delete_device_position_history(aws_client:aws_client(), binary() | list(), batch_delete_device_position_history_request()) ->
    {ok, batch_delete_device_position_history_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_device_position_history_errors(), tuple()}.
batch_delete_device_position_history(Client, TrackerName, Input) ->
    batch_delete_device_position_history(Client, TrackerName, Input, []).

-spec batch_delete_device_position_history(aws_client:aws_client(), binary() | list(), batch_delete_device_position_history_request(), proplists:proplist()) ->
    {ok, batch_delete_device_position_history_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_device_position_history_errors(), tuple()}.
batch_delete_device_position_history(Client, TrackerName, Input0, Options0) ->
    Method = post,
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), "/delete-positions"],
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

%% @doc Deletes a batch of geofences from a geofence collection.
%%
%% This operation deletes the resource permanently.
-spec batch_delete_geofence(aws_client:aws_client(), binary() | list(), batch_delete_geofence_request()) ->
    {ok, batch_delete_geofence_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_geofence_errors(), tuple()}.
batch_delete_geofence(Client, CollectionName, Input) ->
    batch_delete_geofence(Client, CollectionName, Input, []).

-spec batch_delete_geofence(aws_client:aws_client(), binary() | list(), batch_delete_geofence_request(), proplists:proplist()) ->
    {ok, batch_delete_geofence_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_geofence_errors(), tuple()}.
batch_delete_geofence(Client, CollectionName, Input0, Options0) ->
    Method = post,
    Path = ["/geofencing/v0/collections/", aws_util:encode_uri(CollectionName), "/delete-geofences"],
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

%% @doc Evaluates device positions against the geofence geometries from a
%% given geofence
%% collection.
%%
%% This operation always returns an empty response because geofences are
%% asynchronously
%% evaluated. The evaluation determines if the device has entered or exited a
%% geofenced
%% area, and then publishes one of the following events to Amazon
%% EventBridge:
%%
%% `ENTER' if Amazon Location determines that the tracked device has
%% entered
%% a geofenced area.
%%
%% `EXIT' if Amazon Location determines that the tracked device has
%% exited a
%% geofenced area.
%%
%% The last geofence that a device was observed within is tracked for 30 days
%% after
%% the most recent device position update.
%%
%% Geofence evaluation uses the given device position. It does not account
%% for the
%% optional `Accuracy' of a `DevicePositionUpdate'.
%%
%% The `DeviceID' is used as a string to represent the device. You do not
%% need to have a `Tracker' associated with the `DeviceID'.
-spec batch_evaluate_geofences(aws_client:aws_client(), binary() | list(), batch_evaluate_geofences_request()) ->
    {ok, batch_evaluate_geofences_response(), tuple()} |
    {error, any()} |
    {error, batch_evaluate_geofences_errors(), tuple()}.
batch_evaluate_geofences(Client, CollectionName, Input) ->
    batch_evaluate_geofences(Client, CollectionName, Input, []).

-spec batch_evaluate_geofences(aws_client:aws_client(), binary() | list(), batch_evaluate_geofences_request(), proplists:proplist()) ->
    {ok, batch_evaluate_geofences_response(), tuple()} |
    {error, any()} |
    {error, batch_evaluate_geofences_errors(), tuple()}.
batch_evaluate_geofences(Client, CollectionName, Input0, Options0) ->
    Method = post,
    Path = ["/geofencing/v0/collections/", aws_util:encode_uri(CollectionName), "/positions"],
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

%% @doc Lists the latest device positions for requested devices.
-spec batch_get_device_position(aws_client:aws_client(), binary() | list(), batch_get_device_position_request()) ->
    {ok, batch_get_device_position_response(), tuple()} |
    {error, any()} |
    {error, batch_get_device_position_errors(), tuple()}.
batch_get_device_position(Client, TrackerName, Input) ->
    batch_get_device_position(Client, TrackerName, Input, []).

-spec batch_get_device_position(aws_client:aws_client(), binary() | list(), batch_get_device_position_request(), proplists:proplist()) ->
    {ok, batch_get_device_position_response(), tuple()} |
    {error, any()} |
    {error, batch_get_device_position_errors(), tuple()}.
batch_get_device_position(Client, TrackerName, Input0, Options0) ->
    Method = post,
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), "/get-positions"],
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

%% @doc A batch request for storing geofence geometries into a given geofence
%% collection, or
%% updates the geometry of an existing geofence if a geofence ID is included
%% in the request.
-spec batch_put_geofence(aws_client:aws_client(), binary() | list(), batch_put_geofence_request()) ->
    {ok, batch_put_geofence_response(), tuple()} |
    {error, any()} |
    {error, batch_put_geofence_errors(), tuple()}.
batch_put_geofence(Client, CollectionName, Input) ->
    batch_put_geofence(Client, CollectionName, Input, []).

-spec batch_put_geofence(aws_client:aws_client(), binary() | list(), batch_put_geofence_request(), proplists:proplist()) ->
    {ok, batch_put_geofence_response(), tuple()} |
    {error, any()} |
    {error, batch_put_geofence_errors(), tuple()}.
batch_put_geofence(Client, CollectionName, Input0, Options0) ->
    Method = post,
    Path = ["/geofencing/v0/collections/", aws_util:encode_uri(CollectionName), "/put-geofences"],
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

%% @doc Uploads position update data for one or more devices to a tracker
%% resource (up to
%% 10 devices per batch).
%%
%% Amazon Location uses the data when it reports the last known device
%% position and position history. Amazon Location retains location data for
%% 30 days.
%%
%% Position updates are handled based on the `PositionFiltering'
%% property of the tracker. When `PositionFiltering' is set to
%% `TimeBased', updates are evaluated against linked geofence
%% collections,
%% and location data is stored at a maximum of one position per 30 second
%% interval.
%% If your update frequency is more often than every 30 seconds, only one
%% update per
%% 30 seconds is stored for each unique device ID.
%%
%% When `PositionFiltering' is set to `DistanceBased'
%% filtering, location data is stored and evaluated against linked geofence
%% collections only if the device has moved more than 30 m (98.4 ft).
%%
%% When `PositionFiltering' is set to `AccuracyBased'
%% filtering, location data is stored and evaluated against linked geofence
%% collections only if the device has moved more than the measured accuracy.
%% For
%% example, if two consecutive updates from a device have a horizontal
%% accuracy of
%% 5 m and 10 m, the second update is neither stored or evaluated if the
%% device has
%% moved less than 15 m. If `PositionFiltering' is set to
%% `AccuracyBased' filtering, Amazon Location uses the default value
%% `{ &quot;Horizontal&quot;: 0}' when accuracy is not provided on a
%% `DevicePositionUpdate'.
-spec batch_update_device_position(aws_client:aws_client(), binary() | list(), batch_update_device_position_request()) ->
    {ok, batch_update_device_position_response(), tuple()} |
    {error, any()} |
    {error, batch_update_device_position_errors(), tuple()}.
batch_update_device_position(Client, TrackerName, Input) ->
    batch_update_device_position(Client, TrackerName, Input, []).

-spec batch_update_device_position(aws_client:aws_client(), binary() | list(), batch_update_device_position_request(), proplists:proplist()) ->
    {ok, batch_update_device_position_response(), tuple()} |
    {error, any()} |
    {error, batch_update_device_position_errors(), tuple()}.
batch_update_device_position(Client, TrackerName, Input0, Options0) ->
    Method = post,
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), "/positions"],
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
%% Calculates a route:
%% https://docs.aws.amazon.com/location/latest/developerguide/calculate-route.html
%% given the following required parameters:
%% `DeparturePosition' and `DestinationPosition'.
%%
%% Requires that
%% you first create a
%% route calculator resource:
%% https://docs.aws.amazon.com/location-routes/latest/APIReference/API_CreateRouteCalculator.html.
%%
%% By default, a request that doesn't specify a departure time uses the
%% best time of day
%% to travel with the best traffic conditions when calculating the route.
%%
%% Additional options include:
%%
%% Specifying a
%% departure time:
%% https://docs.aws.amazon.com/location/latest/developerguide/departure-time.html
%% using either `DepartureTime' or
%% `DepartNow'. This calculates a route based on predictive traffic
%% data at the given time.
%%
%% You can't specify both `DepartureTime' and
%% `DepartNow' in a single request. Specifying both parameters
%% returns a validation error.
%%
%% Specifying a travel
%% mode:
%% https://docs.aws.amazon.com/location/latest/developerguide/travel-mode.html
%% using TravelMode sets the transportation mode used to calculate
%% the routes. This also lets you specify additional route preferences in
%% `CarModeOptions' if traveling by `Car', or
%% `TruckModeOptions' if traveling by `Truck'.
%%
%% If you specify `walking' for the travel mode and your data
%% provider is Esri, the start and destination must be within 40km.
-spec calculate_route(aws_client:aws_client(), binary() | list(), calculate_route_request()) ->
    {ok, calculate_route_response(), tuple()} |
    {error, any()} |
    {error, calculate_route_errors(), tuple()}.
calculate_route(Client, CalculatorName, Input) ->
    calculate_route(Client, CalculatorName, Input, []).

-spec calculate_route(aws_client:aws_client(), binary() | list(), calculate_route_request(), proplists:proplist()) ->
    {ok, calculate_route_response(), tuple()} |
    {error, any()} |
    {error, calculate_route_errors(), tuple()}.
calculate_route(Client, CalculatorName, Input0, Options0) ->
    Method = post,
    Path = ["/routes/v0/calculators/", aws_util:encode_uri(CalculatorName), "/calculate/route"],
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
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Calculates a route
%% matrix:
%% https://docs.aws.amazon.com/location/latest/developerguide/calculate-route-matrix.html
%% given the following required parameters:
%% `DeparturePositions' and `DestinationPositions'.
%%
%% `CalculateRouteMatrix' calculates routes and returns the travel time
%% and
%% travel distance from each departure position to each destination position
%% in the
%% request. For example, given departure positions A and B, and destination
%% positions X and
%% Y, `CalculateRouteMatrix' will return time and distance for routes
%% from A to
%% X, A to Y, B to X, and B to Y (in that order). The number of results
%% returned (and
%% routes calculated) will be the number of `DeparturePositions' times
%% the
%% number of `DestinationPositions'.
%%
%% Your account is charged for each route calculated, not the number of
%% requests.
%%
%% Requires that you first create a
%% route calculator resource:
%% https://docs.aws.amazon.com/location-routes/latest/APIReference/API_CreateRouteCalculator.html.
%%
%% By default, a request that doesn't specify a departure time uses the
%% best time of day
%% to travel with the best traffic conditions when calculating routes.
%%
%% Additional options include:
%%
%% Specifying a
%% departure time:
%% https://docs.aws.amazon.com/location/latest/developerguide/departure-time.html
%% using either `DepartureTime' or
%% `DepartNow'. This calculates routes based on predictive traffic
%% data at the given time.
%%
%% You can't specify both `DepartureTime' and
%% `DepartNow' in a single request. Specifying both parameters
%% returns a validation error.
%%
%% Specifying a travel
%% mode:
%% https://docs.aws.amazon.com/location/latest/developerguide/travel-mode.html
%% using TravelMode sets the transportation mode used to calculate
%% the routes. This also lets you specify additional route preferences in
%% `CarModeOptions' if traveling by `Car', or
%% `TruckModeOptions' if traveling by `Truck'.
-spec calculate_route_matrix(aws_client:aws_client(), binary() | list(), calculate_route_matrix_request()) ->
    {ok, calculate_route_matrix_response(), tuple()} |
    {error, any()} |
    {error, calculate_route_matrix_errors(), tuple()}.
calculate_route_matrix(Client, CalculatorName, Input) ->
    calculate_route_matrix(Client, CalculatorName, Input, []).

-spec calculate_route_matrix(aws_client:aws_client(), binary() | list(), calculate_route_matrix_request(), proplists:proplist()) ->
    {ok, calculate_route_matrix_response(), tuple()} |
    {error, any()} |
    {error, calculate_route_matrix_errors(), tuple()}.
calculate_route_matrix(Client, CalculatorName, Input0, Options0) ->
    Method = post,
    Path = ["/routes/v0/calculators/", aws_util:encode_uri(CalculatorName), "/calculate/route-matrix"],
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
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a geofence collection, which manages and stores geofences.
-spec create_geofence_collection(aws_client:aws_client(), create_geofence_collection_request()) ->
    {ok, create_geofence_collection_response(), tuple()} |
    {error, any()} |
    {error, create_geofence_collection_errors(), tuple()}.
create_geofence_collection(Client, Input) ->
    create_geofence_collection(Client, Input, []).

-spec create_geofence_collection(aws_client:aws_client(), create_geofence_collection_request(), proplists:proplist()) ->
    {ok, create_geofence_collection_response(), tuple()} |
    {error, any()} |
    {error, create_geofence_collection_errors(), tuple()}.
create_geofence_collection(Client, Input0, Options0) ->
    Method = post,
    Path = ["/geofencing/v0/collections"],
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

%% @doc Creates an API key resource in your Amazon Web Services account,
%% which lets you grant
%% actions for Amazon Location resources to the API key bearer.
%%
%% For more information, see Using API keys:
%% https://docs.aws.amazon.com/location/latest/developerguide/using-apikeys.html.
-spec create_key(aws_client:aws_client(), create_key_request()) ->
    {ok, create_key_response(), tuple()} |
    {error, any()} |
    {error, create_key_errors(), tuple()}.
create_key(Client, Input) ->
    create_key(Client, Input, []).

-spec create_key(aws_client:aws_client(), create_key_request(), proplists:proplist()) ->
    {ok, create_key_response(), tuple()} |
    {error, any()} |
    {error, create_key_errors(), tuple()}.
create_key(Client, Input0, Options0) ->
    Method = post,
    Path = ["/metadata/v0/keys"],
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

%% @doc Creates a map resource in your Amazon Web Services account, which
%% provides map tiles of different
%% styles sourced from global location data providers.
%%
%% If your application is tracking or routing assets you use in your
%% business, such
%% as delivery vehicles or employees, you must not use Esri as your
%% geolocation
%% provider. See section 82 of the Amazon Web Services
%% service terms: http://aws.amazon.com/service-terms for more details.
-spec create_map(aws_client:aws_client(), create_map_request()) ->
    {ok, create_map_response(), tuple()} |
    {error, any()} |
    {error, create_map_errors(), tuple()}.
create_map(Client, Input) ->
    create_map(Client, Input, []).

-spec create_map(aws_client:aws_client(), create_map_request(), proplists:proplist()) ->
    {ok, create_map_response(), tuple()} |
    {error, any()} |
    {error, create_map_errors(), tuple()}.
create_map(Client, Input0, Options0) ->
    Method = post,
    Path = ["/maps/v0/maps"],
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

%% @doc Creates a place index resource in your Amazon Web Services account.
%%
%% Use a place index resource to
%% geocode addresses and other text queries by using the
%% `SearchPlaceIndexForText' operation, and reverse geocode coordinates
%% by
%% using the `SearchPlaceIndexForPosition' operation, and enable
%% autosuggestions
%% by using the `SearchPlaceIndexForSuggestions' operation.
%%
%% If your application is tracking or routing assets you use in your
%% business, such
%% as delivery vehicles or employees, you must not use Esri as your
%% geolocation
%% provider. See section 82 of the Amazon Web Services
%% service terms: http://aws.amazon.com/service-terms for more details.
-spec create_place_index(aws_client:aws_client(), create_place_index_request()) ->
    {ok, create_place_index_response(), tuple()} |
    {error, any()} |
    {error, create_place_index_errors(), tuple()}.
create_place_index(Client, Input) ->
    create_place_index(Client, Input, []).

-spec create_place_index(aws_client:aws_client(), create_place_index_request(), proplists:proplist()) ->
    {ok, create_place_index_response(), tuple()} |
    {error, any()} |
    {error, create_place_index_errors(), tuple()}.
create_place_index(Client, Input0, Options0) ->
    Method = post,
    Path = ["/places/v0/indexes"],
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

%% @doc Creates a route calculator resource in your Amazon Web Services
%% account.
%%
%% You can send requests to a route calculator resource to estimate travel
%% time,
%% distance, and get directions. A route calculator sources traffic and road
%% network data
%% from your chosen data provider.
%%
%% If your application is tracking or routing assets you use in your
%% business, such
%% as delivery vehicles or employees, you must not use Esri as your
%% geolocation
%% provider. See section 82 of the Amazon Web Services
%% service terms: http://aws.amazon.com/service-terms for more details.
-spec create_route_calculator(aws_client:aws_client(), create_route_calculator_request()) ->
    {ok, create_route_calculator_response(), tuple()} |
    {error, any()} |
    {error, create_route_calculator_errors(), tuple()}.
create_route_calculator(Client, Input) ->
    create_route_calculator(Client, Input, []).

-spec create_route_calculator(aws_client:aws_client(), create_route_calculator_request(), proplists:proplist()) ->
    {ok, create_route_calculator_response(), tuple()} |
    {error, any()} |
    {error, create_route_calculator_errors(), tuple()}.
create_route_calculator(Client, Input0, Options0) ->
    Method = post,
    Path = ["/routes/v0/calculators"],
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

%% @doc Creates a tracker resource in your Amazon Web Services account, which
%% lets you retrieve current and
%% historical location of devices.
-spec create_tracker(aws_client:aws_client(), create_tracker_request()) ->
    {ok, create_tracker_response(), tuple()} |
    {error, any()} |
    {error, create_tracker_errors(), tuple()}.
create_tracker(Client, Input) ->
    create_tracker(Client, Input, []).

-spec create_tracker(aws_client:aws_client(), create_tracker_request(), proplists:proplist()) ->
    {ok, create_tracker_response(), tuple()} |
    {error, any()} |
    {error, create_tracker_errors(), tuple()}.
create_tracker(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tracking/v0/trackers"],
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

%% @doc Deletes a geofence collection from your Amazon Web Services account.
%%
%% This operation deletes the resource permanently. If the geofence
%% collection is the
%% target of a tracker resource, the devices will no longer be monitored.
-spec delete_geofence_collection(aws_client:aws_client(), binary() | list(), delete_geofence_collection_request()) ->
    {ok, delete_geofence_collection_response(), tuple()} |
    {error, any()} |
    {error, delete_geofence_collection_errors(), tuple()}.
delete_geofence_collection(Client, CollectionName, Input) ->
    delete_geofence_collection(Client, CollectionName, Input, []).

-spec delete_geofence_collection(aws_client:aws_client(), binary() | list(), delete_geofence_collection_request(), proplists:proplist()) ->
    {ok, delete_geofence_collection_response(), tuple()} |
    {error, any()} |
    {error, delete_geofence_collection_errors(), tuple()}.
delete_geofence_collection(Client, CollectionName, Input0, Options0) ->
    Method = delete,
    Path = ["/geofencing/v0/collections/", aws_util:encode_uri(CollectionName), ""],
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

%% @doc Deletes the specified API key.
%%
%% The API key must have been deactivated more than
%% 90 days previously.
-spec delete_key(aws_client:aws_client(), binary() | list(), delete_key_request()) ->
    {ok, delete_key_response(), tuple()} |
    {error, any()} |
    {error, delete_key_errors(), tuple()}.
delete_key(Client, KeyName, Input) ->
    delete_key(Client, KeyName, Input, []).

-spec delete_key(aws_client:aws_client(), binary() | list(), delete_key_request(), proplists:proplist()) ->
    {ok, delete_key_response(), tuple()} |
    {error, any()} |
    {error, delete_key_errors(), tuple()}.
delete_key(Client, KeyName, Input0, Options0) ->
    Method = delete,
    Path = ["/metadata/v0/keys/", aws_util:encode_uri(KeyName), ""],
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
                     {<<"forceDelete">>, <<"ForceDelete">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a map resource from your Amazon Web Services account.
%%
%% This operation deletes the resource permanently. If the map is being used
%% in an application,
%% the map may not render.
-spec delete_map(aws_client:aws_client(), binary() | list(), delete_map_request()) ->
    {ok, delete_map_response(), tuple()} |
    {error, any()} |
    {error, delete_map_errors(), tuple()}.
delete_map(Client, MapName, Input) ->
    delete_map(Client, MapName, Input, []).

-spec delete_map(aws_client:aws_client(), binary() | list(), delete_map_request(), proplists:proplist()) ->
    {ok, delete_map_response(), tuple()} |
    {error, any()} |
    {error, delete_map_errors(), tuple()}.
delete_map(Client, MapName, Input0, Options0) ->
    Method = delete,
    Path = ["/maps/v0/maps/", aws_util:encode_uri(MapName), ""],
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

%% @doc Deletes a place index resource from your Amazon Web Services account.
%%
%% This operation deletes the resource permanently.
-spec delete_place_index(aws_client:aws_client(), binary() | list(), delete_place_index_request()) ->
    {ok, delete_place_index_response(), tuple()} |
    {error, any()} |
    {error, delete_place_index_errors(), tuple()}.
delete_place_index(Client, IndexName, Input) ->
    delete_place_index(Client, IndexName, Input, []).

-spec delete_place_index(aws_client:aws_client(), binary() | list(), delete_place_index_request(), proplists:proplist()) ->
    {ok, delete_place_index_response(), tuple()} |
    {error, any()} |
    {error, delete_place_index_errors(), tuple()}.
delete_place_index(Client, IndexName, Input0, Options0) ->
    Method = delete,
    Path = ["/places/v0/indexes/", aws_util:encode_uri(IndexName), ""],
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

%% @doc Deletes a route calculator resource from your Amazon Web Services
%% account.
%%
%% This operation deletes the resource permanently.
-spec delete_route_calculator(aws_client:aws_client(), binary() | list(), delete_route_calculator_request()) ->
    {ok, delete_route_calculator_response(), tuple()} |
    {error, any()} |
    {error, delete_route_calculator_errors(), tuple()}.
delete_route_calculator(Client, CalculatorName, Input) ->
    delete_route_calculator(Client, CalculatorName, Input, []).

-spec delete_route_calculator(aws_client:aws_client(), binary() | list(), delete_route_calculator_request(), proplists:proplist()) ->
    {ok, delete_route_calculator_response(), tuple()} |
    {error, any()} |
    {error, delete_route_calculator_errors(), tuple()}.
delete_route_calculator(Client, CalculatorName, Input0, Options0) ->
    Method = delete,
    Path = ["/routes/v0/calculators/", aws_util:encode_uri(CalculatorName), ""],
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

%% @doc Deletes a tracker resource from your Amazon Web Services account.
%%
%% This operation deletes the resource permanently. If the tracker resource
%% is in use, you may
%% encounter an error. Make sure that the target resource isn't a
%% dependency for your
%% applications.
-spec delete_tracker(aws_client:aws_client(), binary() | list(), delete_tracker_request()) ->
    {ok, delete_tracker_response(), tuple()} |
    {error, any()} |
    {error, delete_tracker_errors(), tuple()}.
delete_tracker(Client, TrackerName, Input) ->
    delete_tracker(Client, TrackerName, Input, []).

-spec delete_tracker(aws_client:aws_client(), binary() | list(), delete_tracker_request(), proplists:proplist()) ->
    {ok, delete_tracker_response(), tuple()} |
    {error, any()} |
    {error, delete_tracker_errors(), tuple()}.
delete_tracker(Client, TrackerName, Input0, Options0) ->
    Method = delete,
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), ""],
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

%% @doc Retrieves the geofence collection details.
-spec describe_geofence_collection(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_geofence_collection_response(), tuple()} |
    {error, any()} |
    {error, describe_geofence_collection_errors(), tuple()}.
describe_geofence_collection(Client, CollectionName)
  when is_map(Client) ->
    describe_geofence_collection(Client, CollectionName, #{}, #{}).

-spec describe_geofence_collection(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_geofence_collection_response(), tuple()} |
    {error, any()} |
    {error, describe_geofence_collection_errors(), tuple()}.
describe_geofence_collection(Client, CollectionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_geofence_collection(Client, CollectionName, QueryMap, HeadersMap, []).

-spec describe_geofence_collection(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_geofence_collection_response(), tuple()} |
    {error, any()} |
    {error, describe_geofence_collection_errors(), tuple()}.
describe_geofence_collection(Client, CollectionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/geofencing/v0/collections/", aws_util:encode_uri(CollectionName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the API key resource details.
-spec describe_key(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_key_response(), tuple()} |
    {error, any()} |
    {error, describe_key_errors(), tuple()}.
describe_key(Client, KeyName)
  when is_map(Client) ->
    describe_key(Client, KeyName, #{}, #{}).

-spec describe_key(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_key_response(), tuple()} |
    {error, any()} |
    {error, describe_key_errors(), tuple()}.
describe_key(Client, KeyName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_key(Client, KeyName, QueryMap, HeadersMap, []).

-spec describe_key(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_key_response(), tuple()} |
    {error, any()} |
    {error, describe_key_errors(), tuple()}.
describe_key(Client, KeyName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/metadata/v0/keys/", aws_util:encode_uri(KeyName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the map resource details.
-spec describe_map(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_map_response(), tuple()} |
    {error, any()} |
    {error, describe_map_errors(), tuple()}.
describe_map(Client, MapName)
  when is_map(Client) ->
    describe_map(Client, MapName, #{}, #{}).

-spec describe_map(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_map_response(), tuple()} |
    {error, any()} |
    {error, describe_map_errors(), tuple()}.
describe_map(Client, MapName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_map(Client, MapName, QueryMap, HeadersMap, []).

-spec describe_map(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_map_response(), tuple()} |
    {error, any()} |
    {error, describe_map_errors(), tuple()}.
describe_map(Client, MapName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/maps/v0/maps/", aws_util:encode_uri(MapName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the place index resource details.
-spec describe_place_index(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_place_index_response(), tuple()} |
    {error, any()} |
    {error, describe_place_index_errors(), tuple()}.
describe_place_index(Client, IndexName)
  when is_map(Client) ->
    describe_place_index(Client, IndexName, #{}, #{}).

-spec describe_place_index(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_place_index_response(), tuple()} |
    {error, any()} |
    {error, describe_place_index_errors(), tuple()}.
describe_place_index(Client, IndexName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_place_index(Client, IndexName, QueryMap, HeadersMap, []).

-spec describe_place_index(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_place_index_response(), tuple()} |
    {error, any()} |
    {error, describe_place_index_errors(), tuple()}.
describe_place_index(Client, IndexName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/places/v0/indexes/", aws_util:encode_uri(IndexName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the route calculator resource details.
-spec describe_route_calculator(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_route_calculator_response(), tuple()} |
    {error, any()} |
    {error, describe_route_calculator_errors(), tuple()}.
describe_route_calculator(Client, CalculatorName)
  when is_map(Client) ->
    describe_route_calculator(Client, CalculatorName, #{}, #{}).

-spec describe_route_calculator(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_route_calculator_response(), tuple()} |
    {error, any()} |
    {error, describe_route_calculator_errors(), tuple()}.
describe_route_calculator(Client, CalculatorName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_route_calculator(Client, CalculatorName, QueryMap, HeadersMap, []).

-spec describe_route_calculator(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_route_calculator_response(), tuple()} |
    {error, any()} |
    {error, describe_route_calculator_errors(), tuple()}.
describe_route_calculator(Client, CalculatorName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/routes/v0/calculators/", aws_util:encode_uri(CalculatorName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the tracker resource details.
-spec describe_tracker(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_tracker_response(), tuple()} |
    {error, any()} |
    {error, describe_tracker_errors(), tuple()}.
describe_tracker(Client, TrackerName)
  when is_map(Client) ->
    describe_tracker(Client, TrackerName, #{}, #{}).

-spec describe_tracker(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_tracker_response(), tuple()} |
    {error, any()} |
    {error, describe_tracker_errors(), tuple()}.
describe_tracker(Client, TrackerName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_tracker(Client, TrackerName, QueryMap, HeadersMap, []).

-spec describe_tracker(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_tracker_response(), tuple()} |
    {error, any()} |
    {error, describe_tracker_errors(), tuple()}.
describe_tracker(Client, TrackerName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Removes the association between a tracker resource and a geofence
%% collection.
%%
%% Once you unlink a tracker resource from a geofence collection, the tracker
%% positions will no longer be automatically evaluated against geofences.
-spec disassociate_tracker_consumer(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_tracker_consumer_request()) ->
    {ok, disassociate_tracker_consumer_response(), tuple()} |
    {error, any()} |
    {error, disassociate_tracker_consumer_errors(), tuple()}.
disassociate_tracker_consumer(Client, ConsumerArn, TrackerName, Input) ->
    disassociate_tracker_consumer(Client, ConsumerArn, TrackerName, Input, []).

-spec disassociate_tracker_consumer(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_tracker_consumer_request(), proplists:proplist()) ->
    {ok, disassociate_tracker_consumer_response(), tuple()} |
    {error, any()} |
    {error, disassociate_tracker_consumer_errors(), tuple()}.
disassociate_tracker_consumer(Client, ConsumerArn, TrackerName, Input0, Options0) ->
    Method = delete,
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), "/consumers/", aws_util:encode_uri(ConsumerArn), ""],
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

%% @doc Evaluates device positions against
%% geofence geometries from a given geofence collection.
%%
%% The event forecasts three states for which
%% a device can be in relative to a geofence:
%%
%% `ENTER': If a device is outside of a geofence, but would breach the
%% fence if the device is moving at its current speed within time horizon
%% window.
%%
%% `EXIT': If a device is inside of a geofence, but would breach the
%% fence if the device is moving at its current speed within time horizon
%% window.
%%
%% `IDLE': If a device is inside of a geofence, and the device is not
%% moving.
-spec forecast_geofence_events(aws_client:aws_client(), binary() | list(), forecast_geofence_events_request()) ->
    {ok, forecast_geofence_events_response(), tuple()} |
    {error, any()} |
    {error, forecast_geofence_events_errors(), tuple()}.
forecast_geofence_events(Client, CollectionName, Input) ->
    forecast_geofence_events(Client, CollectionName, Input, []).

-spec forecast_geofence_events(aws_client:aws_client(), binary() | list(), forecast_geofence_events_request(), proplists:proplist()) ->
    {ok, forecast_geofence_events_response(), tuple()} |
    {error, any()} |
    {error, forecast_geofence_events_errors(), tuple()}.
forecast_geofence_events(Client, CollectionName, Input0, Options0) ->
    Method = post,
    Path = ["/geofencing/v0/collections/", aws_util:encode_uri(CollectionName), "/forecast-geofence-events"],
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

%% @doc Retrieves a device's most recent position according to its sample
%% time.
%%
%% Device positions are deleted after 30 days.
-spec get_device_position(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_device_position_response(), tuple()} |
    {error, any()} |
    {error, get_device_position_errors(), tuple()}.
get_device_position(Client, DeviceId, TrackerName)
  when is_map(Client) ->
    get_device_position(Client, DeviceId, TrackerName, #{}, #{}).

-spec get_device_position(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_device_position_response(), tuple()} |
    {error, any()} |
    {error, get_device_position_errors(), tuple()}.
get_device_position(Client, DeviceId, TrackerName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_device_position(Client, DeviceId, TrackerName, QueryMap, HeadersMap, []).

-spec get_device_position(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_device_position_response(), tuple()} |
    {error, any()} |
    {error, get_device_position_errors(), tuple()}.
get_device_position(Client, DeviceId, TrackerName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), "/devices/", aws_util:encode_uri(DeviceId), "/positions/latest"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the device position history from a tracker resource within
%% a specified range
%% of time.
%%
%% Device positions are deleted after 30 days.
-spec get_device_position_history(aws_client:aws_client(), binary() | list(), binary() | list(), get_device_position_history_request()) ->
    {ok, get_device_position_history_response(), tuple()} |
    {error, any()} |
    {error, get_device_position_history_errors(), tuple()}.
get_device_position_history(Client, DeviceId, TrackerName, Input) ->
    get_device_position_history(Client, DeviceId, TrackerName, Input, []).

-spec get_device_position_history(aws_client:aws_client(), binary() | list(), binary() | list(), get_device_position_history_request(), proplists:proplist()) ->
    {ok, get_device_position_history_response(), tuple()} |
    {error, any()} |
    {error, get_device_position_history_errors(), tuple()}.
get_device_position_history(Client, DeviceId, TrackerName, Input0, Options0) ->
    Method = post,
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), "/devices/", aws_util:encode_uri(DeviceId), "/list-positions"],
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

%% @doc Retrieves the geofence details from a geofence collection.
%%
%% The returned geometry will always match the geometry format used when the
%% geofence was created.
-spec get_geofence(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_geofence_response(), tuple()} |
    {error, any()} |
    {error, get_geofence_errors(), tuple()}.
get_geofence(Client, CollectionName, GeofenceId)
  when is_map(Client) ->
    get_geofence(Client, CollectionName, GeofenceId, #{}, #{}).

-spec get_geofence(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_geofence_response(), tuple()} |
    {error, any()} |
    {error, get_geofence_errors(), tuple()}.
get_geofence(Client, CollectionName, GeofenceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_geofence(Client, CollectionName, GeofenceId, QueryMap, HeadersMap, []).

-spec get_geofence(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_geofence_response(), tuple()} |
    {error, any()} |
    {error, get_geofence_errors(), tuple()}.
get_geofence(Client, CollectionName, GeofenceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/geofencing/v0/collections/", aws_util:encode_uri(CollectionName), "/geofences/", aws_util:encode_uri(GeofenceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves glyphs used to display labels on a map.
-spec get_map_glyphs(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_map_glyphs_response(), tuple()} |
    {error, any()} |
    {error, get_map_glyphs_errors(), tuple()}.
get_map_glyphs(Client, FontStack, FontUnicodeRange, MapName)
  when is_map(Client) ->
    get_map_glyphs(Client, FontStack, FontUnicodeRange, MapName, #{}, #{}).

-spec get_map_glyphs(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_map_glyphs_response(), tuple()} |
    {error, any()} |
    {error, get_map_glyphs_errors(), tuple()}.
get_map_glyphs(Client, FontStack, FontUnicodeRange, MapName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_map_glyphs(Client, FontStack, FontUnicodeRange, MapName, QueryMap, HeadersMap, []).

-spec get_map_glyphs(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_map_glyphs_response(), tuple()} |
    {error, any()} |
    {error, get_map_glyphs_errors(), tuple()}.
get_map_glyphs(Client, FontStack, FontUnicodeRange, MapName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/maps/v0/maps/", aws_util:encode_uri(MapName), "/glyphs/", aws_util:encode_uri(FontStack), "/", aws_util:encode_uri(FontUnicodeRange), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"key">>, maps:get(<<"key">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Cache-Control">>, <<"CacheControl">>},
            {<<"Content-Type">>, <<"ContentType">>}
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

%% @doc Retrieves the sprite sheet corresponding to a map resource.
%%
%% The sprite sheet is a PNG
%% image paired with a JSON document describing the offsets of individual
%% icons that will
%% be displayed on a rendered map.
-spec get_map_sprites(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_map_sprites_response(), tuple()} |
    {error, any()} |
    {error, get_map_sprites_errors(), tuple()}.
get_map_sprites(Client, FileName, MapName)
  when is_map(Client) ->
    get_map_sprites(Client, FileName, MapName, #{}, #{}).

-spec get_map_sprites(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_map_sprites_response(), tuple()} |
    {error, any()} |
    {error, get_map_sprites_errors(), tuple()}.
get_map_sprites(Client, FileName, MapName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_map_sprites(Client, FileName, MapName, QueryMap, HeadersMap, []).

-spec get_map_sprites(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_map_sprites_response(), tuple()} |
    {error, any()} |
    {error, get_map_sprites_errors(), tuple()}.
get_map_sprites(Client, FileName, MapName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/maps/v0/maps/", aws_util:encode_uri(MapName), "/sprites/", aws_util:encode_uri(FileName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"key">>, maps:get(<<"key">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Cache-Control">>, <<"CacheControl">>},
            {<<"Content-Type">>, <<"ContentType">>}
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

%% @doc Retrieves the map style descriptor from a map resource.
%%
%% The style descriptor contains speciﬁcations on how features render on a
%% map. For
%% example, what data to display, what order to display the data in, and the
%% style for the
%% data. Style descriptors follow the Mapbox Style Specification.
-spec get_map_style_descriptor(aws_client:aws_client(), binary() | list()) ->
    {ok, get_map_style_descriptor_response(), tuple()} |
    {error, any()} |
    {error, get_map_style_descriptor_errors(), tuple()}.
get_map_style_descriptor(Client, MapName)
  when is_map(Client) ->
    get_map_style_descriptor(Client, MapName, #{}, #{}).

-spec get_map_style_descriptor(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_map_style_descriptor_response(), tuple()} |
    {error, any()} |
    {error, get_map_style_descriptor_errors(), tuple()}.
get_map_style_descriptor(Client, MapName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_map_style_descriptor(Client, MapName, QueryMap, HeadersMap, []).

-spec get_map_style_descriptor(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_map_style_descriptor_response(), tuple()} |
    {error, any()} |
    {error, get_map_style_descriptor_errors(), tuple()}.
get_map_style_descriptor(Client, MapName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/maps/v0/maps/", aws_util:encode_uri(MapName), "/style-descriptor"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"key">>, maps:get(<<"key">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Cache-Control">>, <<"CacheControl">>},
            {<<"Content-Type">>, <<"ContentType">>}
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

%% @doc Retrieves a vector data tile from the map resource.
%%
%% Map tiles are used by clients to
%% render a map. they're addressed using a grid arrangement with an X
%% coordinate, Y
%% coordinate, and Z (zoom) level.
%%
%% The origin (0, 0) is the top left of the map. Increasing the zoom level by
%% 1 doubles
%% both the X and Y dimensions, so a tile containing data for the entire
%% world at (0/0/0)
%% will be split into 4 tiles at zoom 1 (1/0/0, 1/0/1, 1/1/0, 1/1/1).
-spec get_map_tile(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_map_tile_response(), tuple()} |
    {error, any()} |
    {error, get_map_tile_errors(), tuple()}.
get_map_tile(Client, MapName, X, Y, Z)
  when is_map(Client) ->
    get_map_tile(Client, MapName, X, Y, Z, #{}, #{}).

-spec get_map_tile(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_map_tile_response(), tuple()} |
    {error, any()} |
    {error, get_map_tile_errors(), tuple()}.
get_map_tile(Client, MapName, X, Y, Z, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_map_tile(Client, MapName, X, Y, Z, QueryMap, HeadersMap, []).

-spec get_map_tile(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_map_tile_response(), tuple()} |
    {error, any()} |
    {error, get_map_tile_errors(), tuple()}.
get_map_tile(Client, MapName, X, Y, Z, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/maps/v0/maps/", aws_util:encode_uri(MapName), "/tiles/", aws_util:encode_uri(Z), "/", aws_util:encode_uri(X), "/", aws_util:encode_uri(Y), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"key">>, maps:get(<<"key">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Cache-Control">>, <<"CacheControl">>},
            {<<"Content-Type">>, <<"ContentType">>}
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

%% @doc Finds a place by its unique ID.
%%
%% A `PlaceId' is returned by other search
%% operations.
%%
%% A PlaceId is valid only if all of the following are the same in the
%% original
%% search request and the call to `GetPlace'.
%%
%% Customer Amazon Web Services account
%%
%% Amazon Web Services Region
%%
%% Data provider specified in the place index resource
-spec get_place(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_place_response(), tuple()} |
    {error, any()} |
    {error, get_place_errors(), tuple()}.
get_place(Client, IndexName, PlaceId)
  when is_map(Client) ->
    get_place(Client, IndexName, PlaceId, #{}, #{}).

-spec get_place(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_place_response(), tuple()} |
    {error, any()} |
    {error, get_place_errors(), tuple()}.
get_place(Client, IndexName, PlaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_place(Client, IndexName, PlaceId, QueryMap, HeadersMap, []).

-spec get_place(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_place_response(), tuple()} |
    {error, any()} |
    {error, get_place_errors(), tuple()}.
get_place(Client, IndexName, PlaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/places/v0/indexes/", aws_util:encode_uri(IndexName), "/places/", aws_util:encode_uri(PlaceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"key">>, maps:get(<<"key">>, QueryMap, undefined)},
        {<<"language">>, maps:get(<<"language">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc A batch request to retrieve all device positions.
-spec list_device_positions(aws_client:aws_client(), binary() | list(), list_device_positions_request()) ->
    {ok, list_device_positions_response(), tuple()} |
    {error, any()} |
    {error, list_device_positions_errors(), tuple()}.
list_device_positions(Client, TrackerName, Input) ->
    list_device_positions(Client, TrackerName, Input, []).

-spec list_device_positions(aws_client:aws_client(), binary() | list(), list_device_positions_request(), proplists:proplist()) ->
    {ok, list_device_positions_response(), tuple()} |
    {error, any()} |
    {error, list_device_positions_errors(), tuple()}.
list_device_positions(Client, TrackerName, Input0, Options0) ->
    Method = post,
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), "/list-positions"],
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

%% @doc Lists geofence collections in your Amazon Web Services account.
-spec list_geofence_collections(aws_client:aws_client(), list_geofence_collections_request()) ->
    {ok, list_geofence_collections_response(), tuple()} |
    {error, any()} |
    {error, list_geofence_collections_errors(), tuple()}.
list_geofence_collections(Client, Input) ->
    list_geofence_collections(Client, Input, []).

-spec list_geofence_collections(aws_client:aws_client(), list_geofence_collections_request(), proplists:proplist()) ->
    {ok, list_geofence_collections_response(), tuple()} |
    {error, any()} |
    {error, list_geofence_collections_errors(), tuple()}.
list_geofence_collections(Client, Input0, Options0) ->
    Method = post,
    Path = ["/geofencing/v0/list-collections"],
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

%% @doc Lists geofences stored in a given geofence collection.
-spec list_geofences(aws_client:aws_client(), binary() | list(), list_geofences_request()) ->
    {ok, list_geofences_response(), tuple()} |
    {error, any()} |
    {error, list_geofences_errors(), tuple()}.
list_geofences(Client, CollectionName, Input) ->
    list_geofences(Client, CollectionName, Input, []).

-spec list_geofences(aws_client:aws_client(), binary() | list(), list_geofences_request(), proplists:proplist()) ->
    {ok, list_geofences_response(), tuple()} |
    {error, any()} |
    {error, list_geofences_errors(), tuple()}.
list_geofences(Client, CollectionName, Input0, Options0) ->
    Method = post,
    Path = ["/geofencing/v0/collections/", aws_util:encode_uri(CollectionName), "/list-geofences"],
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

%% @doc Lists API key resources in your Amazon Web Services account.
-spec list_keys(aws_client:aws_client(), list_keys_request()) ->
    {ok, list_keys_response(), tuple()} |
    {error, any()} |
    {error, list_keys_errors(), tuple()}.
list_keys(Client, Input) ->
    list_keys(Client, Input, []).

-spec list_keys(aws_client:aws_client(), list_keys_request(), proplists:proplist()) ->
    {ok, list_keys_response(), tuple()} |
    {error, any()} |
    {error, list_keys_errors(), tuple()}.
list_keys(Client, Input0, Options0) ->
    Method = post,
    Path = ["/metadata/v0/list-keys"],
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

%% @doc Lists map resources in your Amazon Web Services account.
-spec list_maps(aws_client:aws_client(), list_maps_request()) ->
    {ok, list_maps_response(), tuple()} |
    {error, any()} |
    {error, list_maps_errors(), tuple()}.
list_maps(Client, Input) ->
    list_maps(Client, Input, []).

-spec list_maps(aws_client:aws_client(), list_maps_request(), proplists:proplist()) ->
    {ok, list_maps_response(), tuple()} |
    {error, any()} |
    {error, list_maps_errors(), tuple()}.
list_maps(Client, Input0, Options0) ->
    Method = post,
    Path = ["/maps/v0/list-maps"],
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

%% @doc Lists place index resources in your Amazon Web Services account.
-spec list_place_indexes(aws_client:aws_client(), list_place_indexes_request()) ->
    {ok, list_place_indexes_response(), tuple()} |
    {error, any()} |
    {error, list_place_indexes_errors(), tuple()}.
list_place_indexes(Client, Input) ->
    list_place_indexes(Client, Input, []).

-spec list_place_indexes(aws_client:aws_client(), list_place_indexes_request(), proplists:proplist()) ->
    {ok, list_place_indexes_response(), tuple()} |
    {error, any()} |
    {error, list_place_indexes_errors(), tuple()}.
list_place_indexes(Client, Input0, Options0) ->
    Method = post,
    Path = ["/places/v0/list-indexes"],
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

%% @doc Lists route calculator resources in your Amazon Web Services account.
-spec list_route_calculators(aws_client:aws_client(), list_route_calculators_request()) ->
    {ok, list_route_calculators_response(), tuple()} |
    {error, any()} |
    {error, list_route_calculators_errors(), tuple()}.
list_route_calculators(Client, Input) ->
    list_route_calculators(Client, Input, []).

-spec list_route_calculators(aws_client:aws_client(), list_route_calculators_request(), proplists:proplist()) ->
    {ok, list_route_calculators_response(), tuple()} |
    {error, any()} |
    {error, list_route_calculators_errors(), tuple()}.
list_route_calculators(Client, Input0, Options0) ->
    Method = post,
    Path = ["/routes/v0/list-calculators"],
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

%% @doc Returns a list of tags that are applied to the specified Amazon
%% Location resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists geofence collections currently associated to the given tracker
%% resource.
-spec list_tracker_consumers(aws_client:aws_client(), binary() | list(), list_tracker_consumers_request()) ->
    {ok, list_tracker_consumers_response(), tuple()} |
    {error, any()} |
    {error, list_tracker_consumers_errors(), tuple()}.
list_tracker_consumers(Client, TrackerName, Input) ->
    list_tracker_consumers(Client, TrackerName, Input, []).

-spec list_tracker_consumers(aws_client:aws_client(), binary() | list(), list_tracker_consumers_request(), proplists:proplist()) ->
    {ok, list_tracker_consumers_response(), tuple()} |
    {error, any()} |
    {error, list_tracker_consumers_errors(), tuple()}.
list_tracker_consumers(Client, TrackerName, Input0, Options0) ->
    Method = post,
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), "/list-consumers"],
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

%% @doc Lists tracker resources in your Amazon Web Services account.
-spec list_trackers(aws_client:aws_client(), list_trackers_request()) ->
    {ok, list_trackers_response(), tuple()} |
    {error, any()} |
    {error, list_trackers_errors(), tuple()}.
list_trackers(Client, Input) ->
    list_trackers(Client, Input, []).

-spec list_trackers(aws_client:aws_client(), list_trackers_request(), proplists:proplist()) ->
    {ok, list_trackers_response(), tuple()} |
    {error, any()} |
    {error, list_trackers_errors(), tuple()}.
list_trackers(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tracking/v0/list-trackers"],
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

%% @doc Stores a geofence geometry in a given geofence collection, or updates
%% the geometry of
%% an existing geofence if a geofence ID is included in the request.
-spec put_geofence(aws_client:aws_client(), binary() | list(), binary() | list(), put_geofence_request()) ->
    {ok, put_geofence_response(), tuple()} |
    {error, any()} |
    {error, put_geofence_errors(), tuple()}.
put_geofence(Client, CollectionName, GeofenceId, Input) ->
    put_geofence(Client, CollectionName, GeofenceId, Input, []).

-spec put_geofence(aws_client:aws_client(), binary() | list(), binary() | list(), put_geofence_request(), proplists:proplist()) ->
    {ok, put_geofence_response(), tuple()} |
    {error, any()} |
    {error, put_geofence_errors(), tuple()}.
put_geofence(Client, CollectionName, GeofenceId, Input0, Options0) ->
    Method = put,
    Path = ["/geofencing/v0/collections/", aws_util:encode_uri(CollectionName), "/geofences/", aws_util:encode_uri(GeofenceId), ""],
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

%% @doc Reverse geocodes a given coordinate and returns a legible address.
%%
%% Allows you to
%% search for Places or points of interest near a given position.
-spec search_place_index_for_position(aws_client:aws_client(), binary() | list(), search_place_index_for_position_request()) ->
    {ok, search_place_index_for_position_response(), tuple()} |
    {error, any()} |
    {error, search_place_index_for_position_errors(), tuple()}.
search_place_index_for_position(Client, IndexName, Input) ->
    search_place_index_for_position(Client, IndexName, Input, []).

-spec search_place_index_for_position(aws_client:aws_client(), binary() | list(), search_place_index_for_position_request(), proplists:proplist()) ->
    {ok, search_place_index_for_position_response(), tuple()} |
    {error, any()} |
    {error, search_place_index_for_position_errors(), tuple()}.
search_place_index_for_position(Client, IndexName, Input0, Options0) ->
    Method = post,
    Path = ["/places/v0/indexes/", aws_util:encode_uri(IndexName), "/search/position"],
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
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Generates suggestions for addresses and points of interest based on
%% partial or
%% misspelled free-form text.
%%
%% This operation is also known as autocomplete, autosuggest, or
%% fuzzy matching.
%%
%% Optional parameters let you narrow your search results by bounding box or
%% country, or
%% bias your search toward a specific position on the globe.
%%
%% You can search for suggested place names near a specified position by
%% using
%% `BiasPosition', or filter results within a bounding box by using
%% `FilterBBox'. These parameters are mutually exclusive; using both
%% `BiasPosition' and `FilterBBox' in the same command
%% returns an error.
-spec search_place_index_for_suggestions(aws_client:aws_client(), binary() | list(), search_place_index_for_suggestions_request()) ->
    {ok, search_place_index_for_suggestions_response(), tuple()} |
    {error, any()} |
    {error, search_place_index_for_suggestions_errors(), tuple()}.
search_place_index_for_suggestions(Client, IndexName, Input) ->
    search_place_index_for_suggestions(Client, IndexName, Input, []).

-spec search_place_index_for_suggestions(aws_client:aws_client(), binary() | list(), search_place_index_for_suggestions_request(), proplists:proplist()) ->
    {ok, search_place_index_for_suggestions_response(), tuple()} |
    {error, any()} |
    {error, search_place_index_for_suggestions_errors(), tuple()}.
search_place_index_for_suggestions(Client, IndexName, Input0, Options0) ->
    Method = post,
    Path = ["/places/v0/indexes/", aws_util:encode_uri(IndexName), "/search/suggestions"],
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
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Geocodes free-form text, such as an address, name, city, or region to
%% allow you to
%% search for Places or points of interest.
%%
%% Optional parameters let you narrow your search results by bounding box or
%% country, or
%% bias your search toward a specific position on the globe.
%%
%% You can search for places near a given position using `BiasPosition',
%% or filter results within a bounding box using `FilterBBox'. Providing
%% both parameters simultaneously returns an error.
%%
%% Search results are returned in order of highest to lowest relevance.
-spec search_place_index_for_text(aws_client:aws_client(), binary() | list(), search_place_index_for_text_request()) ->
    {ok, search_place_index_for_text_response(), tuple()} |
    {error, any()} |
    {error, search_place_index_for_text_errors(), tuple()}.
search_place_index_for_text(Client, IndexName, Input) ->
    search_place_index_for_text(Client, IndexName, Input, []).

-spec search_place_index_for_text(aws_client:aws_client(), binary() | list(), search_place_index_for_text_request(), proplists:proplist()) ->
    {ok, search_place_index_for_text_response(), tuple()} |
    {error, any()} |
    {error, search_place_index_for_text_errors(), tuple()}.
search_place_index_for_text(Client, IndexName, Input0, Options0) ->
    Method = post,
    Path = ["/places/v0/indexes/", aws_util:encode_uri(IndexName), "/search/text"],
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
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Assigns one or more tags (key-value pairs) to the specified Amazon
%% Location Service
%% resource.
%%
%% Tags can help you organize and categorize your resources. You can also use
%% them to
%% scope user permissions, by granting a user permission to access or change
%% only resources
%% with certain tag values.
%%
%% You can use the `TagResource' operation with an Amazon Location
%% Service
%% resource that already has tags. If you specify a new tag key for the
%% resource, this tag
%% is appended to the tags already associated with the resource. If you
%% specify a tag key
%% that's already associated with the resource, the new tag value that
%% you specify replaces
%% the previous value for that tag.
%%
%% You can associate up to 50 tags with a resource.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes one or more tags from the specified Amazon Location resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the specified properties of a given geofence collection.
-spec update_geofence_collection(aws_client:aws_client(), binary() | list(), update_geofence_collection_request()) ->
    {ok, update_geofence_collection_response(), tuple()} |
    {error, any()} |
    {error, update_geofence_collection_errors(), tuple()}.
update_geofence_collection(Client, CollectionName, Input) ->
    update_geofence_collection(Client, CollectionName, Input, []).

-spec update_geofence_collection(aws_client:aws_client(), binary() | list(), update_geofence_collection_request(), proplists:proplist()) ->
    {ok, update_geofence_collection_response(), tuple()} |
    {error, any()} |
    {error, update_geofence_collection_errors(), tuple()}.
update_geofence_collection(Client, CollectionName, Input0, Options0) ->
    Method = patch,
    Path = ["/geofencing/v0/collections/", aws_util:encode_uri(CollectionName), ""],
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

%% @doc Updates the specified properties of a given API key resource.
-spec update_key(aws_client:aws_client(), binary() | list(), update_key_request()) ->
    {ok, update_key_response(), tuple()} |
    {error, any()} |
    {error, update_key_errors(), tuple()}.
update_key(Client, KeyName, Input) ->
    update_key(Client, KeyName, Input, []).

-spec update_key(aws_client:aws_client(), binary() | list(), update_key_request(), proplists:proplist()) ->
    {ok, update_key_response(), tuple()} |
    {error, any()} |
    {error, update_key_errors(), tuple()}.
update_key(Client, KeyName, Input0, Options0) ->
    Method = patch,
    Path = ["/metadata/v0/keys/", aws_util:encode_uri(KeyName), ""],
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

%% @doc Updates the specified properties of a given map resource.
-spec update_map(aws_client:aws_client(), binary() | list(), update_map_request()) ->
    {ok, update_map_response(), tuple()} |
    {error, any()} |
    {error, update_map_errors(), tuple()}.
update_map(Client, MapName, Input) ->
    update_map(Client, MapName, Input, []).

-spec update_map(aws_client:aws_client(), binary() | list(), update_map_request(), proplists:proplist()) ->
    {ok, update_map_response(), tuple()} |
    {error, any()} |
    {error, update_map_errors(), tuple()}.
update_map(Client, MapName, Input0, Options0) ->
    Method = patch,
    Path = ["/maps/v0/maps/", aws_util:encode_uri(MapName), ""],
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

%% @doc Updates the specified properties of a given place index resource.
-spec update_place_index(aws_client:aws_client(), binary() | list(), update_place_index_request()) ->
    {ok, update_place_index_response(), tuple()} |
    {error, any()} |
    {error, update_place_index_errors(), tuple()}.
update_place_index(Client, IndexName, Input) ->
    update_place_index(Client, IndexName, Input, []).

-spec update_place_index(aws_client:aws_client(), binary() | list(), update_place_index_request(), proplists:proplist()) ->
    {ok, update_place_index_response(), tuple()} |
    {error, any()} |
    {error, update_place_index_errors(), tuple()}.
update_place_index(Client, IndexName, Input0, Options0) ->
    Method = patch,
    Path = ["/places/v0/indexes/", aws_util:encode_uri(IndexName), ""],
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

%% @doc Updates the specified properties for a given route calculator
%% resource.
-spec update_route_calculator(aws_client:aws_client(), binary() | list(), update_route_calculator_request()) ->
    {ok, update_route_calculator_response(), tuple()} |
    {error, any()} |
    {error, update_route_calculator_errors(), tuple()}.
update_route_calculator(Client, CalculatorName, Input) ->
    update_route_calculator(Client, CalculatorName, Input, []).

-spec update_route_calculator(aws_client:aws_client(), binary() | list(), update_route_calculator_request(), proplists:proplist()) ->
    {ok, update_route_calculator_response(), tuple()} |
    {error, any()} |
    {error, update_route_calculator_errors(), tuple()}.
update_route_calculator(Client, CalculatorName, Input0, Options0) ->
    Method = patch,
    Path = ["/routes/v0/calculators/", aws_util:encode_uri(CalculatorName), ""],
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

%% @doc Updates the specified properties of a given tracker resource.
-spec update_tracker(aws_client:aws_client(), binary() | list(), update_tracker_request()) ->
    {ok, update_tracker_response(), tuple()} |
    {error, any()} |
    {error, update_tracker_errors(), tuple()}.
update_tracker(Client, TrackerName, Input) ->
    update_tracker(Client, TrackerName, Input, []).

-spec update_tracker(aws_client:aws_client(), binary() | list(), update_tracker_request(), proplists:proplist()) ->
    {ok, update_tracker_response(), tuple()} |
    {error, any()} |
    {error, update_tracker_errors(), tuple()}.
update_tracker(Client, TrackerName, Input0, Options0) ->
    Method = patch,
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), ""],
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

%% @doc Verifies the integrity of the device's position by determining if
%% it was reported behind a proxy, and by comparing it to an inferred
%% position estimated based on the device's state.
-spec verify_device_position(aws_client:aws_client(), binary() | list(), verify_device_position_request()) ->
    {ok, verify_device_position_response(), tuple()} |
    {error, any()} |
    {error, verify_device_position_errors(), tuple()}.
verify_device_position(Client, TrackerName, Input) ->
    verify_device_position(Client, TrackerName, Input, []).

-spec verify_device_position(aws_client:aws_client(), binary() | list(), verify_device_position_request(), proplists:proplist()) ->
    {ok, verify_device_position_response(), tuple()} |
    {error, any()} |
    {error, verify_device_position_errors(), tuple()}.
verify_device_position(Client, TrackerName, Input0, Options0) ->
    Method = post,
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), "/positions/verify"],
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
    Client1 = Client#{service => <<"geo">>},
    Host = build_host(<<"geo">>, Client1),
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
