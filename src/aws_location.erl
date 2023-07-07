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
         update_tracker/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an association between a geofence collection and a tracker
%% resource.
%%
%% This allows the tracker resource to communicate location data to the
%% linked geofence collection.
%%
%% You can associate up to five geofence collections to each tracker
%% resource.
%%
%% Currently not supported — Cross-account configurations, such as creating
%% associations between a tracker resource in one account and a geofence
%% collection in another account.
associate_tracker_consumer(Client, TrackerName, Input) ->
    associate_tracker_consumer(Client, TrackerName, Input, []).
associate_tracker_consumer(Client, TrackerName, Input0, Options0) ->
    Method = post,
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), "/consumers"],
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

%% @doc Deletes the position history of one or more devices from a tracker
%% resource.
batch_delete_device_position_history(Client, TrackerName, Input) ->
    batch_delete_device_position_history(Client, TrackerName, Input, []).
batch_delete_device_position_history(Client, TrackerName, Input0, Options0) ->
    Method = post,
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), "/delete-positions"],
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

%% @doc Deletes a batch of geofences from a geofence collection.
%%
%% This operation deletes the resource permanently.
batch_delete_geofence(Client, CollectionName, Input) ->
    batch_delete_geofence(Client, CollectionName, Input, []).
batch_delete_geofence(Client, CollectionName, Input0, Options0) ->
    Method = post,
    Path = ["/geofencing/v0/collections/", aws_util:encode_uri(CollectionName), "/delete-geofences"],
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

%% @doc Evaluates device positions against the geofence geometries from a
%% given geofence collection.
%%
%% This operation always returns an empty response because geofences are
%% asynchronously evaluated. The evaluation determines if the device has
%% entered or exited a geofenced area, and then publishes one of the
%% following events to Amazon EventBridge:
%%
%% <ul> <li> `ENTER' if Amazon Location determines that the tracked
%% device has entered a geofenced area.
%%
%% </li> <li> `EXIT' if Amazon Location determines that the tracked
%% device has exited a geofenced area.
%%
%% </li> </ul> The last geofence that a device was observed within is tracked
%% for 30 days after the most recent device position update.
%%
%% Geofence evaluation uses the given device position. It does not account
%% for the optional `Accuracy' of a `DevicePositionUpdate'.
%%
%% The `DeviceID' is used as a string to represent the device. You do not
%% need to have a `Tracker' associated with the `DeviceID'.
batch_evaluate_geofences(Client, CollectionName, Input) ->
    batch_evaluate_geofences(Client, CollectionName, Input, []).
batch_evaluate_geofences(Client, CollectionName, Input0, Options0) ->
    Method = post,
    Path = ["/geofencing/v0/collections/", aws_util:encode_uri(CollectionName), "/positions"],
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

%% @doc Lists the latest device positions for requested devices.
batch_get_device_position(Client, TrackerName, Input) ->
    batch_get_device_position(Client, TrackerName, Input, []).
batch_get_device_position(Client, TrackerName, Input0, Options0) ->
    Method = post,
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), "/get-positions"],
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

%% @doc A batch request for storing geofence geometries into a given geofence
%% collection, or updates the geometry of an existing geofence if a geofence
%% ID is included in the request.
batch_put_geofence(Client, CollectionName, Input) ->
    batch_put_geofence(Client, CollectionName, Input, []).
batch_put_geofence(Client, CollectionName, Input0, Options0) ->
    Method = post,
    Path = ["/geofencing/v0/collections/", aws_util:encode_uri(CollectionName), "/put-geofences"],
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

%% @doc Uploads position update data for one or more devices to a tracker
%% resource (up to 10 devices per batch).
%%
%% Amazon Location uses the data when it reports the last known device
%% position and position history. Amazon Location retains location data for
%% 30 days.
%%
%% Position updates are handled based on the `PositionFiltering' property
%% of the tracker. When `PositionFiltering' is set to `TimeBased',
%% updates are evaluated against linked geofence collections, and location
%% data is stored at a maximum of one position per 30 second interval. If
%% your update frequency is more often than every 30 seconds, only one update
%% per 30 seconds is stored for each unique device ID.
%%
%% When `PositionFiltering' is set to `DistanceBased' filtering,
%% location data is stored and evaluated against linked geofence collections
%% only if the device has moved more than 30 m (98.4 ft).
%%
%% When `PositionFiltering' is set to `AccuracyBased' filtering,
%% location data is stored and evaluated against linked geofence collections
%% only if the device has moved more than the measured accuracy. For example,
%% if two consecutive updates from a device have a horizontal accuracy of 5 m
%% and 10 m, the second update is neither stored or evaluated if the device
%% has moved less than 15 m. If `PositionFiltering' is set to
%% `AccuracyBased' filtering, Amazon Location uses the default value `{
%% &quot;Horizontal&quot;: 0}' when accuracy is not provided on a
%% `DevicePositionUpdate'.
batch_update_device_position(Client, TrackerName, Input) ->
    batch_update_device_position(Client, TrackerName, Input, []).
batch_update_device_position(Client, TrackerName, Input0, Options0) ->
    Method = post,
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), "/positions"],
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

%% @doc Calculates a route given the following required parameters:
%% `DeparturePosition' and `DestinationPosition'.
%%
%% Requires that you first create a route calculator resource.
%%
%% By default, a request that doesn't specify a departure time uses the
%% best time of day to travel with the best traffic conditions when
%% calculating the route.
%%
%% Additional options include:
%%
%% <ul> <li> Specifying a departure time using either `DepartureTime' or
%% `DepartNow'. This calculates a route based on predictive traffic data
%% at the given time.
%%
%% You can't specify both `DepartureTime' and `DepartNow' in a
%% single request. Specifying both parameters returns a validation error.
%%
%% </li> <li> Specifying a travel mode using TravelMode sets the
%% transportation mode used to calculate the routes. This also lets you
%% specify additional route preferences in `CarModeOptions' if traveling
%% by `Car', or `TruckModeOptions' if traveling by `Truck'.
%%
%% If you specify `walking' for the travel mode and your data provider is
%% Esri, the start and destination must be within 40km.
%%
%% </li> </ul>
calculate_route(Client, CalculatorName, Input) ->
    calculate_route(Client, CalculatorName, Input, []).
calculate_route(Client, CalculatorName, Input0, Options0) ->
    Method = post,
    Path = ["/routes/v0/calculators/", aws_util:encode_uri(CalculatorName), "/calculate/route"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"key">>, <<"Key">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Calculates a route matrix given the following required parameters:
%% `DeparturePositions' and `DestinationPositions'.
%%
%% `CalculateRouteMatrix' calculates routes and returns the travel time
%% and travel distance from each departure position to each destination
%% position in the request. For example, given departure positions A and B,
%% and destination positions X and Y, `CalculateRouteMatrix' will return
%% time and distance for routes from A to X, A to Y, B to X, and B to Y (in
%% that order). The number of results returned (and routes calculated) will
%% be the number of `DeparturePositions' times the number of
%% `DestinationPositions'.
%%
%% Your account is charged for each route calculated, not the number of
%% requests.
%%
%% Requires that you first create a route calculator resource.
%%
%% By default, a request that doesn't specify a departure time uses the
%% best time of day to travel with the best traffic conditions when
%% calculating routes.
%%
%% Additional options include:
%%
%% <ul> <li> Specifying a departure time using either `DepartureTime' or
%% `DepartNow'. This calculates routes based on predictive traffic data
%% at the given time.
%%
%% You can't specify both `DepartureTime' and `DepartNow' in a
%% single request. Specifying both parameters returns a validation error.
%%
%% </li> <li> Specifying a travel mode using TravelMode sets the
%% transportation mode used to calculate the routes. This also lets you
%% specify additional route preferences in `CarModeOptions' if traveling
%% by `Car', or `TruckModeOptions' if traveling by `Truck'.
%%
%% </li> </ul>
calculate_route_matrix(Client, CalculatorName, Input) ->
    calculate_route_matrix(Client, CalculatorName, Input, []).
calculate_route_matrix(Client, CalculatorName, Input0, Options0) ->
    Method = post,
    Path = ["/routes/v0/calculators/", aws_util:encode_uri(CalculatorName), "/calculate/route-matrix"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
create_geofence_collection(Client, Input) ->
    create_geofence_collection(Client, Input, []).
create_geofence_collection(Client, Input0, Options0) ->
    Method = post,
    Path = ["/geofencing/v0/collections"],
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

%% @doc Creates an API key resource in your Amazon Web Services account,
%% which lets you grant actions for Amazon Location resources to the API key
%% bearer.
%%
%% For more information, see Using API keys.
create_key(Client, Input) ->
    create_key(Client, Input, []).
create_key(Client, Input0, Options0) ->
    Method = post,
    Path = ["/metadata/v0/keys"],
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

%% @doc Creates a map resource in your Amazon Web Services account, which
%% provides map tiles of different styles sourced from global location data
%% providers.
%%
%% If your application is tracking or routing assets you use in your
%% business, such as delivery vehicles or employees, you must not use Esri as
%% your geolocation provider. See section 82 of the Amazon Web Services
%% service terms for more details.
create_map(Client, Input) ->
    create_map(Client, Input, []).
create_map(Client, Input0, Options0) ->
    Method = post,
    Path = ["/maps/v0/maps"],
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

%% @doc Creates a place index resource in your Amazon Web Services account.
%%
%% Use a place index resource to geocode addresses and other text queries by
%% using the `SearchPlaceIndexForText' operation, and reverse geocode
%% coordinates by using the `SearchPlaceIndexForPosition' operation, and
%% enable autosuggestions by using the `SearchPlaceIndexForSuggestions'
%% operation.
%%
%% If your application is tracking or routing assets you use in your
%% business, such as delivery vehicles or employees, you must not use Esri as
%% your geolocation provider. See section 82 of the Amazon Web Services
%% service terms for more details.
create_place_index(Client, Input) ->
    create_place_index(Client, Input, []).
create_place_index(Client, Input0, Options0) ->
    Method = post,
    Path = ["/places/v0/indexes"],
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

%% @doc Creates a route calculator resource in your Amazon Web Services
%% account.
%%
%% You can send requests to a route calculator resource to estimate travel
%% time, distance, and get directions. A route calculator sources traffic and
%% road network data from your chosen data provider.
%%
%% If your application is tracking or routing assets you use in your
%% business, such as delivery vehicles or employees, you must not use Esri as
%% your geolocation provider. See section 82 of the Amazon Web Services
%% service terms for more details.
create_route_calculator(Client, Input) ->
    create_route_calculator(Client, Input, []).
create_route_calculator(Client, Input0, Options0) ->
    Method = post,
    Path = ["/routes/v0/calculators"],
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

%% @doc Creates a tracker resource in your Amazon Web Services account, which
%% lets you retrieve current and historical location of devices.
create_tracker(Client, Input) ->
    create_tracker(Client, Input, []).
create_tracker(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tracking/v0/trackers"],
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

%% @doc Deletes a geofence collection from your Amazon Web Services account.
%%
%% This operation deletes the resource permanently. If the geofence
%% collection is the target of a tracker resource, the devices will no longer
%% be monitored.
delete_geofence_collection(Client, CollectionName, Input) ->
    delete_geofence_collection(Client, CollectionName, Input, []).
delete_geofence_collection(Client, CollectionName, Input0, Options0) ->
    Method = delete,
    Path = ["/geofencing/v0/collections/", aws_util:encode_uri(CollectionName), ""],
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

%% @doc Deletes the specified API key.
%%
%% The API key must have been deactivated more than 90 days previously.
delete_key(Client, KeyName, Input) ->
    delete_key(Client, KeyName, Input, []).
delete_key(Client, KeyName, Input0, Options0) ->
    Method = delete,
    Path = ["/metadata/v0/keys/", aws_util:encode_uri(KeyName), ""],
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

%% @doc Deletes a map resource from your Amazon Web Services account.
%%
%% This operation deletes the resource permanently. If the map is being used
%% in an application, the map may not render.
delete_map(Client, MapName, Input) ->
    delete_map(Client, MapName, Input, []).
delete_map(Client, MapName, Input0, Options0) ->
    Method = delete,
    Path = ["/maps/v0/maps/", aws_util:encode_uri(MapName), ""],
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

%% @doc Deletes a place index resource from your Amazon Web Services account.
%%
%% This operation deletes the resource permanently.
delete_place_index(Client, IndexName, Input) ->
    delete_place_index(Client, IndexName, Input, []).
delete_place_index(Client, IndexName, Input0, Options0) ->
    Method = delete,
    Path = ["/places/v0/indexes/", aws_util:encode_uri(IndexName), ""],
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

%% @doc Deletes a route calculator resource from your Amazon Web Services
%% account.
%%
%% This operation deletes the resource permanently.
delete_route_calculator(Client, CalculatorName, Input) ->
    delete_route_calculator(Client, CalculatorName, Input, []).
delete_route_calculator(Client, CalculatorName, Input0, Options0) ->
    Method = delete,
    Path = ["/routes/v0/calculators/", aws_util:encode_uri(CalculatorName), ""],
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

%% @doc Deletes a tracker resource from your Amazon Web Services account.
%%
%% This operation deletes the resource permanently. If the tracker resource
%% is in use, you may encounter an error. Make sure that the target resource
%% isn't a dependency for your applications.
delete_tracker(Client, TrackerName, Input) ->
    delete_tracker(Client, TrackerName, Input, []).
delete_tracker(Client, TrackerName, Input0, Options0) ->
    Method = delete,
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), ""],
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

%% @doc Retrieves the geofence collection details.
describe_geofence_collection(Client, CollectionName)
  when is_map(Client) ->
    describe_geofence_collection(Client, CollectionName, #{}, #{}).

describe_geofence_collection(Client, CollectionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_geofence_collection(Client, CollectionName, QueryMap, HeadersMap, []).

describe_geofence_collection(Client, CollectionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/geofencing/v0/collections/", aws_util:encode_uri(CollectionName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the API key resource details.
describe_key(Client, KeyName)
  when is_map(Client) ->
    describe_key(Client, KeyName, #{}, #{}).

describe_key(Client, KeyName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_key(Client, KeyName, QueryMap, HeadersMap, []).

describe_key(Client, KeyName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/metadata/v0/keys/", aws_util:encode_uri(KeyName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the map resource details.
describe_map(Client, MapName)
  when is_map(Client) ->
    describe_map(Client, MapName, #{}, #{}).

describe_map(Client, MapName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_map(Client, MapName, QueryMap, HeadersMap, []).

describe_map(Client, MapName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/maps/v0/maps/", aws_util:encode_uri(MapName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the place index resource details.
describe_place_index(Client, IndexName)
  when is_map(Client) ->
    describe_place_index(Client, IndexName, #{}, #{}).

describe_place_index(Client, IndexName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_place_index(Client, IndexName, QueryMap, HeadersMap, []).

describe_place_index(Client, IndexName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/places/v0/indexes/", aws_util:encode_uri(IndexName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the route calculator resource details.
describe_route_calculator(Client, CalculatorName)
  when is_map(Client) ->
    describe_route_calculator(Client, CalculatorName, #{}, #{}).

describe_route_calculator(Client, CalculatorName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_route_calculator(Client, CalculatorName, QueryMap, HeadersMap, []).

describe_route_calculator(Client, CalculatorName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/routes/v0/calculators/", aws_util:encode_uri(CalculatorName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the tracker resource details.
describe_tracker(Client, TrackerName)
  when is_map(Client) ->
    describe_tracker(Client, TrackerName, #{}, #{}).

describe_tracker(Client, TrackerName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_tracker(Client, TrackerName, QueryMap, HeadersMap, []).

describe_tracker(Client, TrackerName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Removes the association between a tracker resource and a geofence
%% collection.
%%
%% Once you unlink a tracker resource from a geofence collection, the tracker
%% positions will no longer be automatically evaluated against geofences.
disassociate_tracker_consumer(Client, ConsumerArn, TrackerName, Input) ->
    disassociate_tracker_consumer(Client, ConsumerArn, TrackerName, Input, []).
disassociate_tracker_consumer(Client, ConsumerArn, TrackerName, Input0, Options0) ->
    Method = delete,
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), "/consumers/", aws_util:encode_uri(ConsumerArn), ""],
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

%% @doc Retrieves a device's most recent position according to its sample
%% time.
%%
%% Device positions are deleted after 30 days.
get_device_position(Client, DeviceId, TrackerName)
  when is_map(Client) ->
    get_device_position(Client, DeviceId, TrackerName, #{}, #{}).

get_device_position(Client, DeviceId, TrackerName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_device_position(Client, DeviceId, TrackerName, QueryMap, HeadersMap, []).

get_device_position(Client, DeviceId, TrackerName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), "/devices/", aws_util:encode_uri(DeviceId), "/positions/latest"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the device position history from a tracker resource within
%% a specified range of time.
%%
%% Device positions are deleted after 30 days.
get_device_position_history(Client, DeviceId, TrackerName, Input) ->
    get_device_position_history(Client, DeviceId, TrackerName, Input, []).
get_device_position_history(Client, DeviceId, TrackerName, Input0, Options0) ->
    Method = post,
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), "/devices/", aws_util:encode_uri(DeviceId), "/list-positions"],
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

%% @doc Retrieves the geofence details from a geofence collection.
get_geofence(Client, CollectionName, GeofenceId)
  when is_map(Client) ->
    get_geofence(Client, CollectionName, GeofenceId, #{}, #{}).

get_geofence(Client, CollectionName, GeofenceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_geofence(Client, CollectionName, GeofenceId, QueryMap, HeadersMap, []).

get_geofence(Client, CollectionName, GeofenceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/geofencing/v0/collections/", aws_util:encode_uri(CollectionName), "/geofences/", aws_util:encode_uri(GeofenceId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves glyphs used to display labels on a map.
get_map_glyphs(Client, FontStack, FontUnicodeRange, MapName)
  when is_map(Client) ->
    get_map_glyphs(Client, FontStack, FontUnicodeRange, MapName, #{}, #{}).

get_map_glyphs(Client, FontStack, FontUnicodeRange, MapName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_map_glyphs(Client, FontStack, FontUnicodeRange, MapName, QueryMap, HeadersMap, []).

get_map_glyphs(Client, FontStack, FontUnicodeRange, MapName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/maps/v0/maps/", aws_util:encode_uri(MapName), "/glyphs/", aws_util:encode_uri(FontStack), "/", aws_util:encode_uri(FontUnicodeRange), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% The sprite sheet is a PNG image paired with a JSON document describing the
%% offsets of individual icons that will be displayed on a rendered map.
get_map_sprites(Client, FileName, MapName)
  when is_map(Client) ->
    get_map_sprites(Client, FileName, MapName, #{}, #{}).

get_map_sprites(Client, FileName, MapName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_map_sprites(Client, FileName, MapName, QueryMap, HeadersMap, []).

get_map_sprites(Client, FileName, MapName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/maps/v0/maps/", aws_util:encode_uri(MapName), "/sprites/", aws_util:encode_uri(FileName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% map. For example, what data to display, what order to display the data in,
%% and the style for the data. Style descriptors follow the Mapbox Style
%% Specification.
get_map_style_descriptor(Client, MapName)
  when is_map(Client) ->
    get_map_style_descriptor(Client, MapName, #{}, #{}).

get_map_style_descriptor(Client, MapName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_map_style_descriptor(Client, MapName, QueryMap, HeadersMap, []).

get_map_style_descriptor(Client, MapName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/maps/v0/maps/", aws_util:encode_uri(MapName), "/style-descriptor"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Map tiles are used by clients to render a map. they're addressed using
%% a grid arrangement with an X coordinate, Y coordinate, and Z (zoom) level.
%%
%% The origin (0, 0) is the top left of the map. Increasing the zoom level by
%% 1 doubles both the X and Y dimensions, so a tile containing data for the
%% entire world at (0/0/0) will be split into 4 tiles at zoom 1 (1/0/0,
%% 1/0/1, 1/1/0, 1/1/1).
get_map_tile(Client, MapName, X, Y, Z)
  when is_map(Client) ->
    get_map_tile(Client, MapName, X, Y, Z, #{}, #{}).

get_map_tile(Client, MapName, X, Y, Z, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_map_tile(Client, MapName, X, Y, Z, QueryMap, HeadersMap, []).

get_map_tile(Client, MapName, X, Y, Z, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/maps/v0/maps/", aws_util:encode_uri(MapName), "/tiles/", aws_util:encode_uri(Z), "/", aws_util:encode_uri(X), "/", aws_util:encode_uri(Y), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% A `PlaceId' is returned by other search operations.
%%
%% A PlaceId is valid only if all of the following are the same in the
%% original search request and the call to `GetPlace'.
%%
%% Customer Amazon Web Services account
%%
%% Amazon Web Services Region
%%
%% Data provider specified in the place index resource
get_place(Client, IndexName, PlaceId)
  when is_map(Client) ->
    get_place(Client, IndexName, PlaceId, #{}, #{}).

get_place(Client, IndexName, PlaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_place(Client, IndexName, PlaceId, QueryMap, HeadersMap, []).

get_place(Client, IndexName, PlaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/places/v0/indexes/", aws_util:encode_uri(IndexName), "/places/", aws_util:encode_uri(PlaceId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"key">>, maps:get(<<"key">>, QueryMap, undefined)},
        {<<"language">>, maps:get(<<"language">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc A batch request to retrieve all device positions.
list_device_positions(Client, TrackerName, Input) ->
    list_device_positions(Client, TrackerName, Input, []).
list_device_positions(Client, TrackerName, Input0, Options0) ->
    Method = post,
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), "/list-positions"],
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

%% @doc Lists geofence collections in your Amazon Web Services account.
list_geofence_collections(Client, Input) ->
    list_geofence_collections(Client, Input, []).
list_geofence_collections(Client, Input0, Options0) ->
    Method = post,
    Path = ["/geofencing/v0/list-collections"],
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

%% @doc Lists geofences stored in a given geofence collection.
list_geofences(Client, CollectionName, Input) ->
    list_geofences(Client, CollectionName, Input, []).
list_geofences(Client, CollectionName, Input0, Options0) ->
    Method = post,
    Path = ["/geofencing/v0/collections/", aws_util:encode_uri(CollectionName), "/list-geofences"],
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

%% @doc Lists API key resources in your Amazon Web Services account.
list_keys(Client, Input) ->
    list_keys(Client, Input, []).
list_keys(Client, Input0, Options0) ->
    Method = post,
    Path = ["/metadata/v0/list-keys"],
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

%% @doc Lists map resources in your Amazon Web Services account.
list_maps(Client, Input) ->
    list_maps(Client, Input, []).
list_maps(Client, Input0, Options0) ->
    Method = post,
    Path = ["/maps/v0/list-maps"],
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

%% @doc Lists place index resources in your Amazon Web Services account.
list_place_indexes(Client, Input) ->
    list_place_indexes(Client, Input, []).
list_place_indexes(Client, Input0, Options0) ->
    Method = post,
    Path = ["/places/v0/list-indexes"],
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

%% @doc Lists route calculator resources in your Amazon Web Services account.
list_route_calculators(Client, Input) ->
    list_route_calculators(Client, Input, []).
list_route_calculators(Client, Input0, Options0) ->
    Method = post,
    Path = ["/routes/v0/list-calculators"],
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

%% @doc Returns a list of tags that are applied to the specified Amazon
%% Location resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists geofence collections currently associated to the given tracker
%% resource.
list_tracker_consumers(Client, TrackerName, Input) ->
    list_tracker_consumers(Client, TrackerName, Input, []).
list_tracker_consumers(Client, TrackerName, Input0, Options0) ->
    Method = post,
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), "/list-consumers"],
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

%% @doc Lists tracker resources in your Amazon Web Services account.
list_trackers(Client, Input) ->
    list_trackers(Client, Input, []).
list_trackers(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tracking/v0/list-trackers"],
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

%% @doc Stores a geofence geometry in a given geofence collection, or updates
%% the geometry of an existing geofence if a geofence ID is included in the
%% request.
put_geofence(Client, CollectionName, GeofenceId, Input) ->
    put_geofence(Client, CollectionName, GeofenceId, Input, []).
put_geofence(Client, CollectionName, GeofenceId, Input0, Options0) ->
    Method = put,
    Path = ["/geofencing/v0/collections/", aws_util:encode_uri(CollectionName), "/geofences/", aws_util:encode_uri(GeofenceId), ""],
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

%% @doc Reverse geocodes a given coordinate and returns a legible address.
%%
%% Allows you to search for Places or points of interest near a given
%% position.
search_place_index_for_position(Client, IndexName, Input) ->
    search_place_index_for_position(Client, IndexName, Input, []).
search_place_index_for_position(Client, IndexName, Input0, Options0) ->
    Method = post,
    Path = ["/places/v0/indexes/", aws_util:encode_uri(IndexName), "/search/position"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% partial or misspelled free-form text.
%%
%% This operation is also known as autocomplete, autosuggest, or fuzzy
%% matching.
%%
%% Optional parameters let you narrow your search results by bounding box or
%% country, or bias your search toward a specific position on the globe.
%%
%% You can search for suggested place names near a specified position by
%% using `BiasPosition', or filter results within a bounding box by using
%% `FilterBBox'. These parameters are mutually exclusive; using both
%% `BiasPosition' and `FilterBBox' in the same command returns an
%% error.
search_place_index_for_suggestions(Client, IndexName, Input) ->
    search_place_index_for_suggestions(Client, IndexName, Input, []).
search_place_index_for_suggestions(Client, IndexName, Input0, Options0) ->
    Method = post,
    Path = ["/places/v0/indexes/", aws_util:encode_uri(IndexName), "/search/suggestions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% allow you to search for Places or points of interest.
%%
%% Optional parameters let you narrow your search results by bounding box or
%% country, or bias your search toward a specific position on the globe.
%%
%% You can search for places near a given position using `BiasPosition',
%% or filter results within a bounding box using `FilterBBox'. Providing
%% both parameters simultaneously returns an error.
%%
%% Search results are returned in order of highest to lowest relevance.
search_place_index_for_text(Client, IndexName, Input) ->
    search_place_index_for_text(Client, IndexName, Input, []).
search_place_index_for_text(Client, IndexName, Input0, Options0) ->
    Method = post,
    Path = ["/places/v0/indexes/", aws_util:encode_uri(IndexName), "/search/text"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% Location Service resource.
%%
%% Tags can help you organize and categorize your resources. You can also use
%% them to scope user permissions, by granting a user permission to access or
%% change only resources with certain tag values.
%%
%% You can use the `TagResource' operation with an Amazon Location
%% Service resource that already has tags. If you specify a new tag key for
%% the resource, this tag is appended to the tags already associated with the
%% resource. If you specify a tag key that's already associated with the
%% resource, the new tag value that you specify replaces the previous value
%% for that tag.
%%
%% You can associate up to 50 tags with a resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes one or more tags from the specified Amazon Location resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
update_geofence_collection(Client, CollectionName, Input) ->
    update_geofence_collection(Client, CollectionName, Input, []).
update_geofence_collection(Client, CollectionName, Input0, Options0) ->
    Method = patch,
    Path = ["/geofencing/v0/collections/", aws_util:encode_uri(CollectionName), ""],
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

%% @doc Updates the specified properties of a given API key resource.
update_key(Client, KeyName, Input) ->
    update_key(Client, KeyName, Input, []).
update_key(Client, KeyName, Input0, Options0) ->
    Method = patch,
    Path = ["/metadata/v0/keys/", aws_util:encode_uri(KeyName), ""],
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

%% @doc Updates the specified properties of a given map resource.
update_map(Client, MapName, Input) ->
    update_map(Client, MapName, Input, []).
update_map(Client, MapName, Input0, Options0) ->
    Method = patch,
    Path = ["/maps/v0/maps/", aws_util:encode_uri(MapName), ""],
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

%% @doc Updates the specified properties of a given place index resource.
update_place_index(Client, IndexName, Input) ->
    update_place_index(Client, IndexName, Input, []).
update_place_index(Client, IndexName, Input0, Options0) ->
    Method = patch,
    Path = ["/places/v0/indexes/", aws_util:encode_uri(IndexName), ""],
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

%% @doc Updates the specified properties for a given route calculator
%% resource.
update_route_calculator(Client, CalculatorName, Input) ->
    update_route_calculator(Client, CalculatorName, Input, []).
update_route_calculator(Client, CalculatorName, Input0, Options0) ->
    Method = patch,
    Path = ["/routes/v0/calculators/", aws_util:encode_uri(CalculatorName), ""],
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

%% @doc Updates the specified properties of a given tracker resource.
update_tracker(Client, TrackerName, Input) ->
    update_tracker(Client, TrackerName, Input, []).
update_tracker(Client, TrackerName, Input0, Options0) ->
    Method = patch,
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), ""],
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
