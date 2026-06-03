%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc With the Routes API you can calculate routes and estimate travel time
%% based on up-to-date road network and live traffic information.
%%
%% Key features include:
%%
%% Point-to-point routing with estimated travel time, distance, and
%% turn-by-turn directions. See CalculateRoutes:
%% https://docs.aws.amazon.com/location/latest/APIReference/API_CalculateRoutes.html.
%%
%% Multi-point route optimization to minimize travel time or distance. See
%% OptimizeWaypoints:
%% https://docs.aws.amazon.com/location/latest/APIReference/API_OptimizeWaypoints.html.
%%
%% Route matrices for efficient multi-destination planning. See
%% CalculateRouteMatrix:
%% https://docs.aws.amazon.com/location/latest/APIReference/API_CalculateRouteMatrix.html.
%%
%% Isoline calculations to determine reachable areas within specified time or
%% distance thresholds. See CalculateIsolines:
%% https://docs.aws.amazon.com/location/latest/APIReference/API_CalculateIsolines.html.
%%
%% Map-matching to align GPS traces with the road network. See SnapToRoads:
%% https://docs.aws.amazon.com/location/latest/APIReference/API_SnapToRoads.html.
-module(aws_geo_routes).

-export([calculate_isolines/2,
         calculate_isolines/3,
         calculate_route_matrix/2,
         calculate_route_matrix/3,
         calculate_routes/2,
         calculate_routes/3,
         optimize_waypoints/2,
         optimize_waypoints/3,
         snap_to_roads/2,
         snap_to_roads/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% route_toll_pass() :: #{
%%   <<"IncludesReturnTrip">> => boolean(),
%%   <<"SeniorPass">> => boolean(),
%%   <<"TransferCount">> => integer(),
%%   <<"TripCount">> => integer(),
%%   <<"ValidityPeriod">> => route_toll_pass_validity_period()
%% }
-type route_toll_pass() :: #{binary() => any()}.


%% Example:
%% waypoint_optimization_trailer_options() :: #{
%%   <<"TrailerCount">> => integer()
%% }
-type waypoint_optimization_trailer_options() :: #{binary() => any()}.


%% Example:
%% route_avoidance_options() :: #{
%%   <<"Areas">> => list(route_avoidance_area()),
%%   <<"CarShuttleTrains">> => boolean(),
%%   <<"ControlledAccessHighways">> => boolean(),
%%   <<"DirtRoads">> => boolean(),
%%   <<"Ferries">> => boolean(),
%%   <<"SeasonalClosure">> => boolean(),
%%   <<"TollRoads">> => boolean(),
%%   <<"TollTransponders">> => boolean(),
%%   <<"TruckRoadTypes">> => list(string()),
%%   <<"Tunnels">> => boolean(),
%%   <<"UTurns">> => boolean(),
%%   <<"ZoneCategories">> => list(route_avoidance_zone_category())
%% }
-type route_avoidance_options() :: #{binary() => any()}.


%% Example:
%% waypoint_optimization_impeding_waypoint() :: #{
%%   <<"FailedConstraints">> => list(waypoint_optimization_failed_constraint()),
%%   <<"Id">> => string(),
%%   <<"Position">> => list([float()]())
%% }
-type waypoint_optimization_impeding_waypoint() :: #{binary() => any()}.


%% Example:
%% route_ferry_notice() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Impact">> => list(any())
%% }
-type route_ferry_notice() :: #{binary() => any()}.


%% Example:
%% route_u_turn_step_details() :: #{
%%   <<"Intersection">> => list(localized_string()),
%%   <<"SteeringDirection">> => list(any()),
%%   <<"TurnAngle">> => float(),
%%   <<"TurnIntensity">> => list(any())
%% }
-type route_u_turn_step_details() :: #{binary() => any()}.


%% Example:
%% waypoint_optimization_truck_options() :: #{
%%   <<"GrossWeight">> => float(),
%%   <<"HazardousCargos">> => list(list(any())()),
%%   <<"Height">> => float(),
%%   <<"Length">> => float(),
%%   <<"Trailer">> => waypoint_optimization_trailer_options(),
%%   <<"TruckType">> => list(any()),
%%   <<"TunnelRestrictionCode">> => string(),
%%   <<"WeightPerAxle">> => float(),
%%   <<"Width">> => float()
%% }
-type waypoint_optimization_truck_options() :: #{binary() => any()}.


%% Example:
%% route_taxi_travel_step() :: #{
%%   <<"ContinueStepDetails">> => route_continue_step_details(),
%%   <<"Distance">> => float(),
%%   <<"Duration">> => float(),
%%   <<"ExitStepDetails">> => route_exit_step_details(),
%%   <<"GeometryOffset">> => [integer()],
%%   <<"Instruction">> => string(),
%%   <<"KeepStepDetails">> => route_keep_step_details(),
%%   <<"RampStepDetails">> => route_ramp_step_details(),
%%   <<"RoundaboutEnterStepDetails">> => route_roundabout_enter_step_details(),
%%   <<"RoundaboutExitStepDetails">> => route_roundabout_exit_step_details(),
%%   <<"RoundaboutPassStepDetails">> => route_roundabout_pass_step_details(),
%%   <<"TurnStepDetails">> => route_turn_step_details(),
%%   <<"Type">> => list(any()),
%%   <<"UTurnStepDetails">> => route_u_turn_step_details()
%% }
-type route_taxi_travel_step() :: #{binary() => any()}.


%% Example:
%% snap_to_roads_request() :: #{
%%   <<"Key">> => string(),
%%   <<"SnapRadius">> => float(),
%%   <<"SnappedGeometryFormat">> => list(any()),
%%   <<"TracePoints">> := list(road_snap_trace_point()),
%%   <<"TravelMode">> => list(any()),
%%   <<"TravelModeOptions">> => road_snap_travel_mode_options()
%% }
-type snap_to_roads_request() :: #{binary() => any()}.


%% Example:
%% route_destination_options() :: #{
%%   <<"AvoidActionsForDistance">> => float(),
%%   <<"AvoidUTurns">> => boolean(),
%%   <<"Heading">> => float(),
%%   <<"Matching">> => route_matching_options(),
%%   <<"SideOfStreet">> => route_side_of_street_options(),
%%   <<"StopDuration">> => float()
%% }
-type route_destination_options() :: #{binary() => any()}.


%% Example:
%% route_toll_payment_site() :: #{
%%   <<"Name">> => [string()],
%%   <<"Position">> => list([float()]())
%% }
-type route_toll_payment_site() :: #{binary() => any()}.


%% Example:
%% isoline_allow_options() :: #{
%%   <<"Hot">> => boolean(),
%%   <<"Hov">> => boolean()
%% }
-type isoline_allow_options() :: #{binary() => any()}.


%% Example:
%% route_toll_rate() :: #{
%%   <<"ApplicableTimes">> => string(),
%%   <<"ConvertedPrice">> => route_toll_price(),
%%   <<"Id">> => string(),
%%   <<"LocalPrice">> => route_toll_price(),
%%   <<"Name">> => string(),
%%   <<"Pass">> => route_toll_pass(),
%%   <<"PaymentMethods">> => list(list(any())()),
%%   <<"Transponders">> => list(route_transponder())
%% }
-type route_toll_rate() :: #{binary() => any()}.


%% Example:
%% route_matrix_avoidance_area() :: #{
%%   <<"Geometry">> => route_matrix_avoidance_area_geometry()
%% }
-type route_matrix_avoidance_area() :: #{binary() => any()}.


%% Example:
%% route_exit_step_details() :: #{
%%   <<"Intersection">> => list(localized_string()),
%%   <<"RelativeExit">> => integer(),
%%   <<"SteeringDirection">> => list(any()),
%%   <<"TurnAngle">> => float(),
%%   <<"TurnIntensity">> => list(any())
%% }
-type route_exit_step_details() :: #{binary() => any()}.


%% Example:
%% route_ferry_arrival() :: #{
%%   <<"Place">> => route_ferry_place(),
%%   <<"Time">> => string()
%% }
-type route_ferry_arrival() :: #{binary() => any()}.


%% Example:
%% route_rental_overview_summary() :: #{
%%   <<"Distance">> => float(),
%%   <<"Duration">> => float()
%% }
-type route_rental_overview_summary() :: #{binary() => any()}.


%% Example:
%% route_access_point_details() :: #{
%%   <<"Accessibility">> => route_accessibility_availability_details()
%% }
-type route_access_point_details() :: #{binary() => any()}.


%% Example:
%% route_vehicle_place() :: #{
%%   <<"AccessPointDetails">> => route_access_point_details(),
%%   <<"Name">> => string(),
%%   <<"OriginalPosition">> => list([float()]()),
%%   <<"Position">> => list([float()]()),
%%   <<"SideOfStreet">> => list(any()),
%%   <<"StationDetails">> => route_station_details(),
%%   <<"Type">> => list(any()),
%%   <<"WaypointIndex">> => integer()
%% }
-type route_vehicle_place() :: #{binary() => any()}.


%% Example:
%% route_driver_schedule_interval() :: #{
%%   <<"DriveDuration">> => float(),
%%   <<"RestDuration">> => float()
%% }
-type route_driver_schedule_interval() :: #{binary() => any()}.


%% Example:
%% route_matrix_avoidance_zone_category() :: #{
%%   <<"Category">> => list(any())
%% }
-type route_matrix_avoidance_zone_category() :: #{binary() => any()}.


%% Example:
%% route_signpost() :: #{
%%   <<"Labels">> => list(route_signpost_label())
%% }
-type route_signpost() :: #{binary() => any()}.


%% Example:
%% route_vehicle_license_plate() :: #{
%%   <<"LastCharacter">> => string()
%% }
-type route_vehicle_license_plate() :: #{binary() => any()}.


%% Example:
%% waypoint_optimization_driver_options() :: #{
%%   <<"RestCycles">> => waypoint_optimization_rest_cycles(),
%%   <<"RestProfile">> => waypoint_optimization_rest_profile(),
%%   <<"TreatServiceTimeAs">> => list(any())
%% }
-type waypoint_optimization_driver_options() :: #{binary() => any()}.


%% Example:
%% route_matrix_car_options() :: #{
%%   <<"LicensePlate">> => route_matrix_vehicle_license_plate(),
%%   <<"MaxSpeed">> => float(),
%%   <<"Occupancy">> => integer()
%% }
-type route_matrix_car_options() :: #{binary() => any()}.


%% Example:
%% route_avoidance_area_geometry() :: #{
%%   <<"BoundingBox">> => list([float()]()),
%%   <<"Corridor">> => corridor(),
%%   <<"Polygon">> => list(list(list([float()]())())()),
%%   <<"PolylineCorridor">> => polyline_corridor(),
%%   <<"PolylinePolygon">> => list(string())
%% }
-type route_avoidance_area_geometry() :: #{binary() => any()}.


%% Example:
%% isoline_travel_mode_options() :: #{
%%   <<"Car">> => isoline_car_options(),
%%   <<"Scooter">> => isoline_scooter_options(),
%%   <<"Truck">> => isoline_truck_options()
%% }
-type isoline_travel_mode_options() :: #{binary() => any()}.


%% Example:
%% route_summary() :: #{
%%   <<"Distance">> => float(),
%%   <<"Duration">> => float(),
%%   <<"Tolls">> => route_toll_summary()
%% }
-type route_summary() :: #{binary() => any()}.


%% Example:
%% route_rental_summary() :: #{
%%   <<"Overview">> => route_rental_overview_summary(),
%%   <<"TravelOnly">> => route_rental_travel_only_summary()
%% }
-type route_rental_summary() :: #{binary() => any()}.


%% Example:
%% route_pass_through_waypoint() :: #{
%%   <<"GeometryOffset">> => [integer()],
%%   <<"Place">> => route_pass_through_place()
%% }
-type route_pass_through_waypoint() :: #{binary() => any()}.


%% Example:
%% waypoint_optimization_access_hours_entry() :: #{
%%   <<"DayOfWeek">> => list(any()),
%%   <<"TimeOfDay">> => string()
%% }
-type waypoint_optimization_access_hours_entry() :: #{binary() => any()}.


%% Example:
%% route_rental_leg_details() :: #{
%%   <<"AfterTravelSteps">> => list(route_rental_after_travel_step()),
%%   <<"Agency">> => route_rental_agency(),
%%   <<"Arrival">> => route_rental_arrival(),
%%   <<"Attributions">> => list(route_attribution()),
%%   <<"BeforeTravelSteps">> => list(route_rental_before_travel_step()),
%%   <<"BookingWebLinks">> => list(route_web_link()),
%%   <<"Departure">> => route_rental_departure(),
%%   <<"Summary">> => route_rental_summary(),
%%   <<"Transport">> => route_rental_transport_mode_details(),
%%   <<"TravelSteps">> => list(route_rental_travel_step())
%% }
-type route_rental_leg_details() :: #{binary() => any()}.


%% Example:
%% isoline_car_options() :: #{
%%   <<"EngineType">> => list(any()),
%%   <<"LicensePlate">> => isoline_vehicle_license_plate(),
%%   <<"MaxSpeed">> => float(),
%%   <<"Occupancy">> => integer()
%% }
-type isoline_car_options() :: #{binary() => any()}.


%% Example:
%% waypoint_optimization_connection() :: #{
%%   <<"Distance">> => float(),
%%   <<"From">> => string(),
%%   <<"RestDuration">> => float(),
%%   <<"To">> => string(),
%%   <<"TravelDuration">> => float(),
%%   <<"WaitDuration">> => float()
%% }
-type waypoint_optimization_connection() :: #{binary() => any()}.


%% Example:
%% route_toll_summary() :: #{
%%   <<"Total">> => route_toll_price_summary()
%% }
-type route_toll_summary() :: #{binary() => any()}.


%% Example:
%% waypoint_optimization_clustering_options() :: #{
%%   <<"Algorithm">> => list(any()),
%%   <<"DrivingDistanceOptions">> => waypoint_optimization_driving_distance_options()
%% }
-type waypoint_optimization_clustering_options() :: #{binary() => any()}.


%% Example:
%% route_roundabout_exit_step_details() :: #{
%%   <<"Intersection">> => list(localized_string()),
%%   <<"RelativeExit">> => integer(),
%%   <<"RoundaboutAngle">> => float(),
%%   <<"SteeringDirection">> => list(any())
%% }
-type route_roundabout_exit_step_details() :: #{binary() => any()}.


%% Example:
%% route_enter_highway_step_details() :: #{
%%   <<"Intersection">> => list(localized_string()),
%%   <<"SteeringDirection">> => list(any()),
%%   <<"TurnAngle">> => float(),
%%   <<"TurnIntensity">> => list(any())
%% }
-type route_enter_highway_step_details() :: #{binary() => any()}.


%% Example:
%% route_toll_system() :: #{
%%   <<"Name">> => string()
%% }
-type route_toll_system() :: #{binary() => any()}.


%% Example:
%% waypoint_optimization_access_hours() :: #{
%%   <<"From">> => waypoint_optimization_access_hours_entry(),
%%   <<"To">> => waypoint_optimization_access_hours_entry()
%% }
-type waypoint_optimization_access_hours() :: #{binary() => any()}.


%% Example:
%% route_web_link() :: #{
%%   <<"AnchorText">> => string(),
%%   <<"Description">> => string(),
%%   <<"DeviceType">> => list(any()),
%%   <<"Url">> => string()
%% }
-type route_web_link() :: #{binary() => any()}.


%% Example:
%% route_station_details() :: #{
%%   <<"Accessibility">> => route_accessibility_availability_details(),
%%   <<"PlatformName">> => string(),
%%   <<"ShortName">> => string()
%% }
-type route_station_details() :: #{binary() => any()}.


%% Example:
%% waypoint_optimization_origin_options() :: #{
%%   <<"Id">> => string()
%% }
-type waypoint_optimization_origin_options() :: #{binary() => any()}.


%% Example:
%% road_snap_notice() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Title">> => string(),
%%   <<"TracePointIndexes">> => list([integer()]())
%% }
-type road_snap_notice() :: #{binary() => any()}.


%% Example:
%% route_toll_price_value_range() :: #{
%%   <<"Max">> => float(),
%%   <<"Min">> => float()
%% }
-type route_toll_price_value_range() :: #{binary() => any()}.


%% Example:
%% snap_to_roads_response() :: #{
%%   <<"Notices">> => list(road_snap_notice()),
%%   <<"PricingBucket">> => [string()],
%%   <<"SnappedGeometry">> => road_snap_snapped_geometry(),
%%   <<"SnappedGeometryFormat">> => list(any()),
%%   <<"SnappedTracePoints">> => list(road_snap_snapped_trace_point())
%% }
-type snap_to_roads_response() :: #{binary() => any()}.


%% Example:
%% route_pedestrian_overview_summary() :: #{
%%   <<"Distance">> => float(),
%%   <<"Duration">> => float()
%% }
-type route_pedestrian_overview_summary() :: #{binary() => any()}.


%% Example:
%% waypoint_optimization_avoidance_area() :: #{
%%   <<"Geometry">> => waypoint_optimization_avoidance_area_geometry()
%% }
-type waypoint_optimization_avoidance_area() :: #{binary() => any()}.


%% Example:
%% route_taxi_after_travel_step() :: #{
%%   <<"Duration">> => float(),
%%   <<"Instruction">> => string(),
%%   <<"Type">> => list(any())
%% }
-type route_taxi_after_travel_step() :: #{binary() => any()}.


%% Example:
%% route_transit_travel_only_summary() :: #{
%%   <<"Duration">> => float()
%% }
-type route_transit_travel_only_summary() :: #{binary() => any()}.


%% Example:
%% route_keep_step_details() :: #{
%%   <<"Intersection">> => list(localized_string()),
%%   <<"SteeringDirection">> => list(any()),
%%   <<"TurnAngle">> => float(),
%%   <<"TurnIntensity">> => list(any())
%% }
-type route_keep_step_details() :: #{binary() => any()}.


%% Example:
%% route_traffic_options() :: #{
%%   <<"FlowEventThresholdOverride">> => float(),
%%   <<"Usage">> => list(any())
%% }
-type route_traffic_options() :: #{binary() => any()}.


%% Example:
%% waypoint_optimization_rest_cycles() :: #{
%%   <<"LongCycle">> => waypoint_optimization_rest_cycle_durations(),
%%   <<"ShortCycle">> => waypoint_optimization_rest_cycle_durations()
%% }
-type waypoint_optimization_rest_cycles() :: #{binary() => any()}.


%% Example:
%% waypoint_optimization_waypoint() :: #{
%%   <<"AccessHours">> => waypoint_optimization_access_hours(),
%%   <<"AppointmentTime">> => string(),
%%   <<"Before">> => list(integer()),
%%   <<"Heading">> => float(),
%%   <<"Id">> => string(),
%%   <<"Position">> => list([float()]()),
%%   <<"ServiceDuration">> => float(),
%%   <<"SideOfStreet">> => waypoint_optimization_side_of_street_options()
%% }
-type waypoint_optimization_waypoint() :: #{binary() => any()}.


%% Example:
%% route_attribution() :: #{
%%   <<"AttributionType">> => list(any()),
%%   <<"WebLink">> => route_web_link()
%% }
-type route_attribution() :: #{binary() => any()}.


%% Example:
%% optimize_waypoints_response() :: #{
%%   <<"Connections">> => list(waypoint_optimization_connection()),
%%   <<"Distance">> => float(),
%%   <<"Duration">> => float(),
%%   <<"ImpedingWaypoints">> => list(waypoint_optimization_impeding_waypoint()),
%%   <<"OptimizedWaypoints">> => list(waypoint_optimization_optimized_waypoint()),
%%   <<"PricingBucket">> => [string()],
%%   <<"TimeBreakdown">> => waypoint_optimization_time_breakdown()
%% }
-type optimize_waypoints_response() :: #{binary() => any()}.


%% Example:
%% route_pedestrian_place() :: #{
%%   <<"AccessPointDetails">> => route_access_point_details(),
%%   <<"Name">> => string(),
%%   <<"OriginalPosition">> => list([float()]()),
%%   <<"Position">> => list([float()]()),
%%   <<"SideOfStreet">> => list(any()),
%%   <<"StationDetails">> => route_station_details(),
%%   <<"Type">> => list(any()),
%%   <<"WaypointIndex">> => integer()
%% }
-type route_pedestrian_place() :: #{binary() => any()}.


%% Example:
%% route_pedestrian_summary() :: #{
%%   <<"Overview">> => route_pedestrian_overview_summary(),
%%   <<"TravelOnly">> => route_pedestrian_travel_only_summary()
%% }
-type route_pedestrian_summary() :: #{binary() => any()}.


%% Example:
%% route_toll_options() :: #{
%%   <<"AllTransponders">> => boolean(),
%%   <<"AllVignettes">> => boolean(),
%%   <<"Currency">> => string(),
%%   <<"EmissionType">> => route_emission_type(),
%%   <<"VehicleCategory">> => list(any())
%% }
-type route_toll_options() :: #{binary() => any()}.


%% Example:
%% route_vehicle_after_travel_step() :: #{
%%   <<"ChargeStepDetails">> => route_charge_step_details(),
%%   <<"Duration">> => float(),
%%   <<"Instruction">> => string(),
%%   <<"Type">> => list(any())
%% }
-type route_vehicle_after_travel_step() :: #{binary() => any()}.


%% Example:
%% route_transit_travel_step() :: #{
%%   <<"Distance">> => float(),
%%   <<"Duration">> => float(),
%%   <<"GeometryOffset">> => [integer()],
%%   <<"Instruction">> => string(),
%%   <<"Type">> => list(any())
%% }
-type route_transit_travel_step() :: #{binary() => any()}.


%% Example:
%% optimize_waypoints_request() :: #{
%%   <<"Avoid">> => waypoint_optimization_avoidance_options(),
%%   <<"Clustering">> => waypoint_optimization_clustering_options(),
%%   <<"DepartureTime">> => string(),
%%   <<"Destination">> => list([float()]()),
%%   <<"DestinationOptions">> => waypoint_optimization_destination_options(),
%%   <<"Driver">> => waypoint_optimization_driver_options(),
%%   <<"Exclude">> => waypoint_optimization_exclusion_options(),
%%   <<"Key">> => string(),
%%   <<"OptimizeSequencingFor">> => list(any()),
%%   <<"Origin">> := list([float()]()),
%%   <<"OriginOptions">> => waypoint_optimization_origin_options(),
%%   <<"Traffic">> => waypoint_optimization_traffic_options(),
%%   <<"TravelMode">> => list(any()),
%%   <<"TravelModeOptions">> => waypoint_optimization_travel_mode_options(),
%%   <<"Waypoints">> => list(waypoint_optimization_waypoint())
%% }
-type optimize_waypoints_request() :: #{binary() => any()}.


%% Example:
%% route_taxi_arrival() :: #{
%%   <<"Place">> => route_taxi_place(),
%%   <<"Time">> => string()
%% }
-type route_taxi_arrival() :: #{binary() => any()}.


%% Example:
%% route_rental_after_travel_step() :: #{
%%   <<"Duration">> => float(),
%%   <<"Instruction">> => string(),
%%   <<"Type">> => list(any())
%% }
-type route_rental_after_travel_step() :: #{binary() => any()}.


%% Example:
%% waypoint_optimization_rest_profile() :: #{
%%   <<"Profile">> => string()
%% }
-type waypoint_optimization_rest_profile() :: #{binary() => any()}.


%% Example:
%% route_major_road_label() :: #{
%%   <<"RoadName">> => localized_string(),
%%   <<"RouteNumber">> => route_number()
%% }
-type route_major_road_label() :: #{binary() => any()}.


%% Example:
%% polyline_corridor() :: #{
%%   <<"Polyline">> => string(),
%%   <<"Radius">> => [integer()]
%% }
-type polyline_corridor() :: #{binary() => any()}.


%% Example:
%% route_pedestrian_arrival() :: #{
%%   <<"Place">> => route_pedestrian_place(),
%%   <<"Time">> => string()
%% }
-type route_pedestrian_arrival() :: #{binary() => any()}.


%% Example:
%% calculate_isolines_request() :: #{
%%   <<"Allow">> => isoline_allow_options(),
%%   <<"ArrivalTime">> => string(),
%%   <<"Avoid">> => isoline_avoidance_options(),
%%   <<"DepartNow">> => boolean(),
%%   <<"DepartureTime">> => string(),
%%   <<"Destination">> => list([float()]()),
%%   <<"DestinationOptions">> => isoline_destination_options(),
%%   <<"IsolineGeometryFormat">> => list(any()),
%%   <<"IsolineGranularity">> => isoline_granularity_options(),
%%   <<"Key">> => string(),
%%   <<"OptimizeIsolineFor">> => list(any()),
%%   <<"OptimizeRoutingFor">> => list(any()),
%%   <<"Origin">> => list([float()]()),
%%   <<"OriginOptions">> => isoline_origin_options(),
%%   <<"Thresholds">> := isoline_thresholds(),
%%   <<"Traffic">> => isoline_traffic_options(),
%%   <<"TravelMode">> => list(any()),
%%   <<"TravelModeOptions">> => isoline_travel_mode_options()
%% }
-type calculate_isolines_request() :: #{binary() => any()}.


%% Example:
%% route_avoidance_zone_category() :: #{
%%   <<"Category">> => list(any())
%% }
-type route_avoidance_zone_category() :: #{binary() => any()}.


%% Example:
%% route_roundabout_pass_step_details() :: #{
%%   <<"Intersection">> => list(localized_string()),
%%   <<"SteeringDirection">> => list(any()),
%%   <<"TurnAngle">> => float(),
%%   <<"TurnIntensity">> => list(any())
%% }
-type route_roundabout_pass_step_details() :: #{binary() => any()}.


%% Example:
%% route_ferry_summary() :: #{
%%   <<"Overview">> => route_ferry_overview_summary(),
%%   <<"TravelOnly">> => route_ferry_travel_only_summary()
%% }
-type route_ferry_summary() :: #{binary() => any()}.


%% Example:
%% route_matrix_origin() :: #{
%%   <<"Options">> => route_matrix_origin_options(),
%%   <<"Position">> => list([float()]())
%% }
-type route_matrix_origin() :: #{binary() => any()}.


%% Example:
%% route_taxi_leg_details() :: #{
%%   <<"AfterTravelSteps">> => list(route_taxi_after_travel_step()),
%%   <<"Agency">> => route_taxi_agency(),
%%   <<"Arrival">> => route_taxi_arrival(),
%%   <<"Attributions">> => list(route_attribution()),
%%   <<"BeforeTravelSteps">> => list(route_taxi_before_travel_step()),
%%   <<"BookingWebLinks">> => list(route_web_link()),
%%   <<"Departure">> => route_taxi_departure(),
%%   <<"Notices">> => list(route_taxi_notice()),
%%   <<"Summary">> => route_taxi_summary(),
%%   <<"Transport">> => route_taxi_transport_mode_details(),
%%   <<"TravelSteps">> => list(route_taxi_travel_step())
%% }
-type route_taxi_leg_details() :: #{binary() => any()}.


%% Example:
%% isoline() :: #{
%%   <<"Connections">> => list(isoline_connection()),
%%   <<"DistanceThreshold">> => float(),
%%   <<"Geometries">> => list(isoline_shape_geometry()),
%%   <<"TimeThreshold">> => float()
%% }
-type isoline() :: #{binary() => any()}.


%% Example:
%% route_pedestrian_notice() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Impact">> => list(any())
%% }
-type route_pedestrian_notice() :: #{binary() => any()}.


%% Example:
%% isoline_connection_geometry() :: #{
%%   <<"LineString">> => list(list([float()]())()),
%%   <<"Polyline">> => string()
%% }
-type isoline_connection_geometry() :: #{binary() => any()}.


%% Example:
%% route_vehicle_span() :: #{
%%   <<"BestCaseDuration">> => float(),
%%   <<"CarAccess">> => list(list(any())()),
%%   <<"Country">> => string(),
%%   <<"Distance">> => float(),
%%   <<"Duration">> => float(),
%%   <<"DynamicSpeed">> => route_span_dynamic_speed_details(),
%%   <<"FunctionalClassification">> => integer(),
%%   <<"Gate">> => list(any()),
%%   <<"GeometryOffset">> => [integer()],
%%   <<"Incidents">> => list([integer()]()),
%%   <<"Names">> => list(localized_string()),
%%   <<"Notices">> => list([integer()]()),
%%   <<"RailwayCrossing">> => list(any()),
%%   <<"Region">> => string(),
%%   <<"RoadAttributes">> => list(list(any())()),
%%   <<"RouteNumbers">> => list(route_number()),
%%   <<"ScooterAccess">> => list(list(any())()),
%%   <<"SpeedLimit">> => route_span_speed_limit_details(),
%%   <<"TollSystems">> => list([integer()]()),
%%   <<"TruckAccess">> => list(list(any())()),
%%   <<"TruckRoadTypes">> => list([integer()]()),
%%   <<"TypicalDuration">> => float(),
%%   <<"Zones">> => list([integer()]())
%% }
-type route_vehicle_span() :: #{binary() => any()}.


%% Example:
%% isoline_destination_options() :: #{
%%   <<"AvoidActionsForDistance">> => float(),
%%   <<"Heading">> => float(),
%%   <<"Matching">> => isoline_matching_options(),
%%   <<"SideOfStreet">> => isoline_side_of_street_options()
%% }
-type isoline_destination_options() :: #{binary() => any()}.


%% Example:
%% route_transponder() :: #{
%%   <<"SystemName">> => string()
%% }
-type route_transponder() :: #{binary() => any()}.


%% Example:
%% route_rental_place() :: #{
%%   <<"AccessPointDetails">> => route_access_point_details(),
%%   <<"Name">> => string(),
%%   <<"OriginalPosition">> => list([float()]()),
%%   <<"Position">> => list([float()]()),
%%   <<"StationDetails">> => route_station_details(),
%%   <<"Type">> => list(any()),
%%   <<"WaypointIndex">> => integer()
%% }
-type route_rental_place() :: #{binary() => any()}.


%% Example:
%% route_ferry_leg_details() :: #{
%%   <<"AfterTravelSteps">> => list(route_ferry_after_travel_step()),
%%   <<"Arrival">> => route_ferry_arrival(),
%%   <<"BeforeTravelSteps">> => list(route_ferry_before_travel_step()),
%%   <<"Departure">> => route_ferry_departure(),
%%   <<"Notices">> => list(route_ferry_notice()),
%%   <<"PassThroughWaypoints">> => list(route_pass_through_waypoint()),
%%   <<"RouteName">> => string(),
%%   <<"Spans">> => list(route_ferry_span()),
%%   <<"Summary">> => route_ferry_summary(),
%%   <<"TravelSteps">> => list(route_ferry_travel_step())
%% }
-type route_ferry_leg_details() :: #{binary() => any()}.


%% Example:
%% route_transit_notice() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Impact">> => list(any())
%% }
-type route_transit_notice() :: #{binary() => any()}.


%% Example:
%% route_matching_options() :: #{
%%   <<"NameHint">> => string(),
%%   <<"OnRoadThreshold">> => float(),
%%   <<"Radius">> => float(),
%%   <<"Strategy">> => list(any())
%% }
-type route_matching_options() :: #{binary() => any()}.


%% Example:
%% route_matrix_exclusion_options() :: #{
%%   <<"Countries">> => list(string())
%% }
-type route_matrix_exclusion_options() :: #{binary() => any()}.


%% Example:
%% waypoint_optimization_exclusion_options() :: #{
%%   <<"Countries">> => list(string())
%% }
-type waypoint_optimization_exclusion_options() :: #{binary() => any()}.


%% Example:
%% route_travel_mode_options() :: #{
%%   <<"Car">> => route_car_options(),
%%   <<"Intermodal">> => route_intermodal_options(),
%%   <<"Pedestrian">> => route_pedestrian_options(),
%%   <<"Scooter">> => route_scooter_options(),
%%   <<"Transit">> => route_transit_options(),
%%   <<"Truck">> => route_truck_options()
%% }
-type route_travel_mode_options() :: #{binary() => any()}.


%% Example:
%% isoline_scooter_options() :: #{
%%   <<"EngineType">> => list(any()),
%%   <<"LicensePlate">> => isoline_vehicle_license_plate(),
%%   <<"MaxSpeed">> => float(),
%%   <<"Occupancy">> => integer()
%% }
-type isoline_scooter_options() :: #{binary() => any()}.


%% Example:
%% route_toll_price_summary() :: #{
%%   <<"Currency">> => string(),
%%   <<"Estimate">> => boolean(),
%%   <<"Range">> => boolean(),
%%   <<"RangeValue">> => route_toll_price_value_range(),
%%   <<"Value">> => float()
%% }
-type route_toll_price_summary() :: #{binary() => any()}.


%% Example:
%% route_taxi_agency() :: #{
%%   <<"Name">> => string(),
%%   <<"Url">> => string()
%% }
-type route_taxi_agency() :: #{binary() => any()}.


%% Example:
%% route_rental_before_travel_step() :: #{
%%   <<"Duration">> => float(),
%%   <<"Instruction">> => string(),
%%   <<"Type">> => list(any())
%% }
-type route_rental_before_travel_step() :: #{binary() => any()}.


%% Example:
%% isoline_connection() :: #{
%%   <<"FromPolygonIndex">> => [integer()],
%%   <<"Geometry">> => isoline_connection_geometry(),
%%   <<"ToPolygonIndex">> => [integer()]
%% }
-type isoline_connection() :: #{binary() => any()}.


%% Example:
%% waypoint_optimization_travel_mode_options() :: #{
%%   <<"Pedestrian">> => waypoint_optimization_pedestrian_options(),
%%   <<"Truck">> => waypoint_optimization_truck_options()
%% }
-type waypoint_optimization_travel_mode_options() :: #{binary() => any()}.


%% Example:
%% isoline_avoidance_area() :: #{
%%   <<"Except">> => list(isoline_avoidance_area_geometry()),
%%   <<"Geometry">> => isoline_avoidance_area_geometry()
%% }
-type isoline_avoidance_area() :: #{binary() => any()}.


%% Example:
%% route_transit_agency() :: #{
%%   <<"Name">> => string(),
%%   <<"Url">> => string()
%% }
-type route_transit_agency() :: #{binary() => any()}.


%% Example:
%% route_origin_options() :: #{
%%   <<"AvoidActionsForDistance">> => float(),
%%   <<"AvoidUTurns">> => boolean(),
%%   <<"Heading">> => float(),
%%   <<"Matching">> => route_matching_options(),
%%   <<"SideOfStreet">> => route_side_of_street_options()
%% }
-type route_origin_options() :: #{binary() => any()}.


%% Example:
%% route_ferry_after_travel_step() :: #{
%%   <<"Duration">> => float(),
%%   <<"Instruction">> => string(),
%%   <<"Type">> => list(any())
%% }
-type route_ferry_after_travel_step() :: #{binary() => any()}.


%% Example:
%% corridor() :: #{
%%   <<"LineString">> => list(list([float()]())()),
%%   <<"Radius">> => [integer()]
%% }
-type corridor() :: #{binary() => any()}.


%% Example:
%% route_matrix_traffic_options() :: #{
%%   <<"FlowEventThresholdOverride">> => float(),
%%   <<"Usage">> => list(any())
%% }
-type route_matrix_traffic_options() :: #{binary() => any()}.


%% Example:
%% isoline_granularity_options() :: #{
%%   <<"MaxPoints">> => [integer()],
%%   <<"MaxResolution">> => float()
%% }
-type isoline_granularity_options() :: #{binary() => any()}.


%% Example:
%% route_matrix_trailer_options() :: #{
%%   <<"TrailerCount">> => integer()
%% }
-type route_matrix_trailer_options() :: #{binary() => any()}.


%% Example:
%% route_pedestrian_travel_only_summary() :: #{
%%   <<"Duration">> => float()
%% }
-type route_pedestrian_travel_only_summary() :: #{binary() => any()}.


%% Example:
%% route_ferry_travel_only_summary() :: #{
%%   <<"Duration">> => float()
%% }
-type route_ferry_travel_only_summary() :: #{binary() => any()}.


%% Example:
%% route_pedestrian_departure() :: #{
%%   <<"Place">> => route_pedestrian_place(),
%%   <<"Time">> => string()
%% }
-type route_pedestrian_departure() :: #{binary() => any()}.


%% Example:
%% route_rental_travel_step() :: #{
%%   <<"ContinueStepDetails">> => route_continue_step_details(),
%%   <<"Distance">> => float(),
%%   <<"Duration">> => float(),
%%   <<"ExitStepDetails">> => route_exit_step_details(),
%%   <<"GeometryOffset">> => [integer()],
%%   <<"Instruction">> => string(),
%%   <<"KeepStepDetails">> => route_keep_step_details(),
%%   <<"RampStepDetails">> => route_ramp_step_details(),
%%   <<"RoundaboutEnterStepDetails">> => route_roundabout_enter_step_details(),
%%   <<"RoundaboutExitStepDetails">> => route_roundabout_exit_step_details(),
%%   <<"RoundaboutPassStepDetails">> => route_roundabout_pass_step_details(),
%%   <<"TurnStepDetails">> => route_turn_step_details(),
%%   <<"Type">> => list(any()),
%%   <<"UTurnStepDetails">> => route_u_turn_step_details()
%% }
-type route_rental_travel_step() :: #{binary() => any()}.


%% Example:
%% route_vehicle_notice_detail() :: #{
%%   <<"Title">> => string(),
%%   <<"ViolatedConstraints">> => route_violated_constraints()
%% }
-type route_vehicle_notice_detail() :: #{binary() => any()}.


%% Example:
%% route_transit_overview_summary() :: #{
%%   <<"Distance">> => float(),
%%   <<"Duration">> => float()
%% }
-type route_transit_overview_summary() :: #{binary() => any()}.


%% Example:
%% route_truck_options() :: #{
%%   <<"AxleCount">> => integer(),
%%   <<"EngineType">> => list(any()),
%%   <<"GrossWeight">> => float(),
%%   <<"HazardousCargos">> => list(list(any())()),
%%   <<"Height">> => float(),
%%   <<"HeightAboveFirstAxle">> => float(),
%%   <<"KpraLength">> => float(),
%%   <<"Length">> => float(),
%%   <<"LicensePlate">> => route_vehicle_license_plate(),
%%   <<"MaxSpeed">> => float(),
%%   <<"Occupancy">> => integer(),
%%   <<"PayloadCapacity">> => float(),
%%   <<"TireCount">> => integer(),
%%   <<"Trailer">> => route_trailer_options(),
%%   <<"TruckType">> => list(any()),
%%   <<"TunnelRestrictionCode">> => string(),
%%   <<"WeightPerAxle">> => float(),
%%   <<"WeightPerAxleGroup">> => weight_per_axle_group(),
%%   <<"Width">> => float()
%% }
-type route_truck_options() :: #{binary() => any()}.


%% Example:
%% route_transit_intermediate_stop() :: #{
%%   <<"Attributes">> => list(list(any())()),
%%   <<"Departure">> => route_transit_departure(),
%%   <<"Duration">> => float(),
%%   <<"GeometryOffset">> => [integer()],
%%   <<"Transport">> => route_transit_transport_mode_details()
%% }
-type route_transit_intermediate_stop() :: #{binary() => any()}.


%% Example:
%% route_vehicle_incident() :: #{
%%   <<"Description">> => string(),
%%   <<"EndTime">> => string(),
%%   <<"Severity">> => list(any()),
%%   <<"StartTime">> => string(),
%%   <<"Type">> => list(any())
%% }
-type route_vehicle_incident() :: #{binary() => any()}.


%% Example:
%% route_taxi_summary() :: #{
%%   <<"Overview">> => route_taxi_overview_summary(),
%%   <<"TravelOnly">> => route_taxi_travel_only_summary()
%% }
-type route_taxi_summary() :: #{binary() => any()}.


%% Example:
%% route_vehicle_leg_details() :: #{
%%   <<"AfterTravelSteps">> => list(route_vehicle_after_travel_step()),
%%   <<"Arrival">> => route_vehicle_arrival(),
%%   <<"Departure">> => route_vehicle_departure(),
%%   <<"Incidents">> => list(route_vehicle_incident()),
%%   <<"Notices">> => list(route_vehicle_notice()),
%%   <<"PassThroughWaypoints">> => list(route_pass_through_waypoint()),
%%   <<"Spans">> => list(route_vehicle_span()),
%%   <<"Summary">> => route_vehicle_summary(),
%%   <<"TollSystems">> => list(route_toll_system()),
%%   <<"Tolls">> => list(route_toll()),
%%   <<"TravelSteps">> => list(route_vehicle_travel_step()),
%%   <<"TruckRoadTypes">> => list(string()),
%%   <<"Zones">> => list(route_zone())
%% }
-type route_vehicle_leg_details() :: #{binary() => any()}.


%% Example:
%% route_car_options() :: #{
%%   <<"EngineType">> => list(any()),
%%   <<"LicensePlate">> => route_vehicle_license_plate(),
%%   <<"MaxSpeed">> => float(),
%%   <<"Occupancy">> => integer()
%% }
-type route_car_options() :: #{binary() => any()}.


%% Example:
%% localized_string() :: #{
%%   <<"Language">> => string(),
%%   <<"Value">> => string()
%% }
-type localized_string() :: #{binary() => any()}.


%% Example:
%% route_transit_after_travel_step() :: #{
%%   <<"Duration">> => float(),
%%   <<"Instruction">> => string(),
%%   <<"Type">> => list(any())
%% }
-type route_transit_after_travel_step() :: #{binary() => any()}.


%% Example:
%% route_pedestrian_travel_step() :: #{
%%   <<"ContinueStepDetails">> => route_continue_step_details(),
%%   <<"CurrentRoad">> => route_road(),
%%   <<"Distance">> => float(),
%%   <<"Duration">> => float(),
%%   <<"ExitNumber">> => list(localized_string()),
%%   <<"GeometryOffset">> => [integer()],
%%   <<"Instruction">> => string(),
%%   <<"KeepStepDetails">> => route_keep_step_details(),
%%   <<"NextRoad">> => route_road(),
%%   <<"RoundaboutEnterStepDetails">> => route_roundabout_enter_step_details(),
%%   <<"RoundaboutExitStepDetails">> => route_roundabout_exit_step_details(),
%%   <<"RoundaboutPassStepDetails">> => route_roundabout_pass_step_details(),
%%   <<"Signpost">> => route_signpost(),
%%   <<"TurnStepDetails">> => route_turn_step_details(),
%%   <<"Type">> => list(any())
%% }
-type route_pedestrian_travel_step() :: #{binary() => any()}.


%% Example:
%% isoline_traffic_options() :: #{
%%   <<"FlowEventThresholdOverride">> => float(),
%%   <<"Usage">> => list(any())
%% }
-type isoline_traffic_options() :: #{binary() => any()}.


%% Example:
%% route_span_speed_limit_details() :: #{
%%   <<"MaxSpeed">> => float(),
%%   <<"Unlimited">> => boolean()
%% }
-type route_span_speed_limit_details() :: #{binary() => any()}.


%% Example:
%% route_rental_travel_only_summary() :: #{
%%   <<"Duration">> => float()
%% }
-type route_rental_travel_only_summary() :: #{binary() => any()}.


%% Example:
%% route_matrix_destination_options() :: #{
%%   <<"AvoidActionsForDistance">> => float(),
%%   <<"Heading">> => float(),
%%   <<"Matching">> => route_matrix_matching_options(),
%%   <<"SideOfStreet">> => route_matrix_side_of_street_options()
%% }
-type route_matrix_destination_options() :: #{binary() => any()}.


%% Example:
%% route() :: #{
%%   <<"Legs">> => list(route_leg()),
%%   <<"MajorRoadLabels">> => list(route_major_road_label()),
%%   <<"Summary">> => route_summary()
%% }
-type route() :: #{binary() => any()}.


%% Example:
%% route_ramp_step_details() :: #{
%%   <<"Intersection">> => list(localized_string()),
%%   <<"SteeringDirection">> => list(any()),
%%   <<"TurnAngle">> => float(),
%%   <<"TurnIntensity">> => list(any())
%% }
-type route_ramp_step_details() :: #{binary() => any()}.


%% Example:
%% route_trailer_options() :: #{
%%   <<"AxleCount">> => integer(),
%%   <<"TrailerCount">> => integer()
%% }
-type route_trailer_options() :: #{binary() => any()}.


%% Example:
%% isoline_avoidance_area_geometry() :: #{
%%   <<"BoundingBox">> => list([float()]()),
%%   <<"Corridor">> => corridor(),
%%   <<"Polygon">> => list(list(list([float()]())())()),
%%   <<"PolylineCorridor">> => polyline_corridor(),
%%   <<"PolylinePolygon">> => list(string())
%% }
-type isoline_avoidance_area_geometry() :: #{binary() => any()}.


%% Example:
%% circle() :: #{
%%   <<"Center">> => list([float()]()),
%%   <<"Radius">> => float()
%% }
-type circle() :: #{binary() => any()}.


%% Example:
%% route_matrix_avoidance_area_geometry() :: #{
%%   <<"BoundingBox">> => list([float()]()),
%%   <<"Polygon">> => list(list(list([float()]())())()),
%%   <<"PolylinePolygon">> => list(string())
%% }
-type route_matrix_avoidance_area_geometry() :: #{binary() => any()}.


%% Example:
%% route_signpost_label() :: #{
%%   <<"RouteNumber">> => route_number(),
%%   <<"Text">> => localized_string()
%% }
-type route_signpost_label() :: #{binary() => any()}.


%% Example:
%% isoline_matching_options() :: #{
%%   <<"NameHint">> => string(),
%%   <<"OnRoadThreshold">> => float(),
%%   <<"Radius">> => float(),
%%   <<"Strategy">> => list(any())
%% }
-type isoline_matching_options() :: #{binary() => any()}.


%% Example:
%% route_toll() :: #{
%%   <<"Country">> => string(),
%%   <<"PaymentSites">> => list(route_toll_payment_site()),
%%   <<"Rates">> => list(route_toll_rate()),
%%   <<"Systems">> => list([integer()]())
%% }
-type route_toll() :: #{binary() => any()}.


%% Example:
%% route_rental_departure() :: #{
%%   <<"Place">> => route_rental_place(),
%%   <<"Time">> => string()
%% }
-type route_rental_departure() :: #{binary() => any()}.


%% Example:
%% isoline_trailer_options() :: #{
%%   <<"AxleCount">> => integer(),
%%   <<"TrailerCount">> => integer()
%% }
-type isoline_trailer_options() :: #{binary() => any()}.


%% Example:
%% waypoint_optimization_avoidance_area_geometry() :: #{
%%   <<"BoundingBox">> => list([float()]())
%% }
-type waypoint_optimization_avoidance_area_geometry() :: #{binary() => any()}.


%% Example:
%% route_pedestrian_after_travel_step() :: #{
%%   <<"Duration">> => float(),
%%   <<"Instruction">> => string(),
%%   <<"Type">> => list(any())
%% }
-type route_pedestrian_after_travel_step() :: #{binary() => any()}.


%% Example:
%% isoline_thresholds() :: #{
%%   <<"Distance">> => list(float()),
%%   <<"Time">> => list(float())
%% }
-type isoline_thresholds() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"Message">> => [string()],
%%   <<"Name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% isoline_avoidance_options() :: #{
%%   <<"Areas">> => list(isoline_avoidance_area()),
%%   <<"CarShuttleTrains">> => boolean(),
%%   <<"ControlledAccessHighways">> => boolean(),
%%   <<"DirtRoads">> => boolean(),
%%   <<"Ferries">> => boolean(),
%%   <<"SeasonalClosure">> => boolean(),
%%   <<"TollRoads">> => boolean(),
%%   <<"TollTransponders">> => boolean(),
%%   <<"TruckRoadTypes">> => list(string()),
%%   <<"Tunnels">> => boolean(),
%%   <<"UTurns">> => boolean(),
%%   <<"ZoneCategories">> => list(isoline_avoidance_zone_category())
%% }
-type isoline_avoidance_options() :: #{binary() => any()}.


%% Example:
%% route_vehicle_travel_step() :: #{
%%   <<"ContinueHighwayStepDetails">> => route_continue_highway_step_details(),
%%   <<"ContinueStepDetails">> => route_continue_step_details(),
%%   <<"CurrentRoad">> => route_road(),
%%   <<"Distance">> => float(),
%%   <<"Duration">> => float(),
%%   <<"EnterHighwayStepDetails">> => route_enter_highway_step_details(),
%%   <<"ExitNumber">> => list(localized_string()),
%%   <<"ExitStepDetails">> => route_exit_step_details(),
%%   <<"GeometryOffset">> => [integer()],
%%   <<"Instruction">> => string(),
%%   <<"KeepStepDetails">> => route_keep_step_details(),
%%   <<"NextRoad">> => route_road(),
%%   <<"RampStepDetails">> => route_ramp_step_details(),
%%   <<"RoundaboutEnterStepDetails">> => route_roundabout_enter_step_details(),
%%   <<"RoundaboutExitStepDetails">> => route_roundabout_exit_step_details(),
%%   <<"RoundaboutPassStepDetails">> => route_roundabout_pass_step_details(),
%%   <<"Signpost">> => route_signpost(),
%%   <<"TurnStepDetails">> => route_turn_step_details(),
%%   <<"Type">> => list(any()),
%%   <<"UTurnStepDetails">> => route_u_turn_step_details()
%% }
-type route_vehicle_travel_step() :: #{binary() => any()}.


%% Example:
%% route_toll_pass_validity_period() :: #{
%%   <<"Period">> => list(any()),
%%   <<"PeriodCount">> => integer()
%% }
-type route_toll_pass_validity_period() :: #{binary() => any()}.


%% Example:
%% waypoint_optimization_destination_options() :: #{
%%   <<"AccessHours">> => waypoint_optimization_access_hours(),
%%   <<"AppointmentTime">> => string(),
%%   <<"Heading">> => float(),
%%   <<"Id">> => string(),
%%   <<"ServiceDuration">> => float(),
%%   <<"SideOfStreet">> => waypoint_optimization_side_of_street_options()
%% }
-type waypoint_optimization_destination_options() :: #{binary() => any()}.


%% Example:
%% waypoint_optimization_traffic_options() :: #{
%%   <<"Usage">> => list(any())
%% }
-type waypoint_optimization_traffic_options() :: #{binary() => any()}.


%% Example:
%% route_pedestrian_leg_details() :: #{
%%   <<"AfterTravelSteps">> => list(route_pedestrian_after_travel_step()),
%%   <<"Arrival">> => route_pedestrian_arrival(),
%%   <<"Departure">> => route_pedestrian_departure(),
%%   <<"Notices">> => list(route_pedestrian_notice()),
%%   <<"PassThroughWaypoints">> => list(route_pass_through_waypoint()),
%%   <<"Spans">> => list(route_pedestrian_span()),
%%   <<"Summary">> => route_pedestrian_summary(),
%%   <<"TravelSteps">> => list(route_pedestrian_travel_step())
%% }
-type route_pedestrian_leg_details() :: #{binary() => any()}.


%% Example:
%% route_driver_options() :: #{
%%   <<"Schedule">> => list(route_driver_schedule_interval())
%% }
-type route_driver_options() :: #{binary() => any()}.


%% Example:
%% route_matrix_truck_options() :: #{
%%   <<"AxleCount">> => integer(),
%%   <<"GrossWeight">> => float(),
%%   <<"HazardousCargos">> => list(list(any())()),
%%   <<"Height">> => float(),
%%   <<"KpraLength">> => float(),
%%   <<"Length">> => float(),
%%   <<"LicensePlate">> => route_matrix_vehicle_license_plate(),
%%   <<"MaxSpeed">> => float(),
%%   <<"Occupancy">> => integer(),
%%   <<"PayloadCapacity">> => float(),
%%   <<"Trailer">> => route_matrix_trailer_options(),
%%   <<"TruckType">> => list(any()),
%%   <<"TunnelRestrictionCode">> => string(),
%%   <<"WeightPerAxle">> => float(),
%%   <<"WeightPerAxleGroup">> => weight_per_axle_group(),
%%   <<"Width">> => float()
%% }
-type route_matrix_truck_options() :: #{binary() => any()}.


%% Example:
%% route_taxi_departure() :: #{
%%   <<"Place">> => route_taxi_place(),
%%   <<"Time">> => string()
%% }
-type route_taxi_departure() :: #{binary() => any()}.


%% Example:
%% route_road() :: #{
%%   <<"RoadName">> => list(localized_string()),
%%   <<"RouteNumber">> => list(route_number()),
%%   <<"Towards">> => list(localized_string()),
%%   <<"Type">> => list(any())
%% }
-type route_road() :: #{binary() => any()}.


%% Example:
%% route_charge_step_details() :: #{
%%   <<"ArrivalCharge">> => float(),
%%   <<"ConsumablePower">> => float(),
%%   <<"DesiredCharge">> => float()
%% }
-type route_charge_step_details() :: #{binary() => any()}.


%% Example:
%% isoline_side_of_street_options() :: #{
%%   <<"Position">> => list([float()]()),
%%   <<"UseWith">> => list(any())
%% }
-type isoline_side_of_street_options() :: #{binary() => any()}.


%% Example:
%% route_matrix_destination() :: #{
%%   <<"Options">> => route_matrix_destination_options(),
%%   <<"Position">> => list([float()]())
%% }
-type route_matrix_destination() :: #{binary() => any()}.


%% Example:
%% route_roundabout_enter_step_details() :: #{
%%   <<"Intersection">> => list(localized_string()),
%%   <<"SteeringDirection">> => list(any()),
%%   <<"TurnAngle">> => float(),
%%   <<"TurnIntensity">> => list(any())
%% }
-type route_roundabout_enter_step_details() :: #{binary() => any()}.


%% Example:
%% route_matrix_matching_options() :: #{
%%   <<"NameHint">> => string(),
%%   <<"OnRoadThreshold">> => float(),
%%   <<"Radius">> => float(),
%%   <<"Strategy">> => list(any())
%% }
-type route_matrix_matching_options() :: #{binary() => any()}.


%% Example:
%% route_matrix_boundary() :: #{
%%   <<"Geometry">> => route_matrix_boundary_geometry(),
%%   <<"Unbounded">> => boolean()
%% }
-type route_matrix_boundary() :: #{binary() => any()}.


%% Example:
%% route_matrix_travel_mode_options() :: #{
%%   <<"Car">> => route_matrix_car_options(),
%%   <<"Scooter">> => route_matrix_scooter_options(),
%%   <<"Truck">> => route_matrix_truck_options()
%% }
-type route_matrix_travel_mode_options() :: #{binary() => any()}.


%% Example:
%% route_transit_summary() :: #{
%%   <<"Overview">> => route_transit_overview_summary(),
%%   <<"TravelOnly">> => route_transit_travel_only_summary()
%% }
-type route_transit_summary() :: #{binary() => any()}.


%% Example:
%% route_intermodal_transit_options() :: #{
%%   <<"AllowedModes">> => list(list(any())()),
%%   <<"EnabledFor">> => list(list(any())()),
%%   <<"ExcludedModes">> => list(list(any())())
%% }
-type route_intermodal_transit_options() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% route_intermodal_options() :: #{
%%   <<"AccessibilityAttributes">> => list(list(any())()),
%%   <<"MaxTransfers">> => [integer()],
%%   <<"Pedestrian">> => route_intermodal_pedestrian_options(),
%%   <<"Rental">> => route_intermodal_rental_options(),
%%   <<"Taxi">> => route_intermodal_taxi_options(),
%%   <<"Transit">> => route_intermodal_transit_options(),
%%   <<"Vehicle">> => route_intermodal_vehicle_options()
%% }
-type route_intermodal_options() :: #{binary() => any()}.


%% Example:
%% route_taxi_travel_only_summary() :: #{
%%   <<"Duration">> => float()
%% }
-type route_taxi_travel_only_summary() :: #{binary() => any()}.


%% Example:
%% route_transit_place() :: #{
%%   <<"Name">> => string(),
%%   <<"OriginalPosition">> => list([float()]()),
%%   <<"Position">> => list([float()]()),
%%   <<"StationDetails">> => route_station_details(),
%%   <<"Type">> => list(any()),
%%   <<"WaypointIndex">> => integer()
%% }
-type route_transit_place() :: #{binary() => any()}.


%% Example:
%% route_ferry_before_travel_step() :: #{
%%   <<"Duration">> => float(),
%%   <<"Instruction">> => string(),
%%   <<"Type">> => list(any())
%% }
-type route_ferry_before_travel_step() :: #{binary() => any()}.


%% Example:
%% route_vehicle_travel_only_summary() :: #{
%%   <<"BestCaseDuration">> => float(),
%%   <<"Duration">> => float(),
%%   <<"TypicalDuration">> => float()
%% }
-type route_vehicle_travel_only_summary() :: #{binary() => any()}.


%% Example:
%% route_zone() :: #{
%%   <<"Category">> => list(any()),
%%   <<"Name">> => string()
%% }
-type route_zone() :: #{binary() => any()}.


%% Example:
%% route_transit_span() :: #{
%%   <<"Country">> => string(),
%%   <<"Distance">> => float(),
%%   <<"Duration">> => float(),
%%   <<"GeometryOffset">> => [integer()],
%%   <<"Names">> => list(localized_string()),
%%   <<"Region">> => string()
%% }
-type route_transit_span() :: #{binary() => any()}.


%% Example:
%% route_leg_geometry() :: #{
%%   <<"LineString">> => list(list([float()]())()),
%%   <<"Polyline">> => string()
%% }
-type route_leg_geometry() :: #{binary() => any()}.


%% Example:
%% calculate_routes_request() :: #{
%%   <<"Allow">> => route_allow_options(),
%%   <<"ArrivalTime">> => string(),
%%   <<"Avoid">> => route_avoidance_options(),
%%   <<"DepartNow">> => boolean(),
%%   <<"DepartureTime">> => string(),
%%   <<"Destination">> := list([float()]()),
%%   <<"DestinationOptions">> => route_destination_options(),
%%   <<"Driver">> => route_driver_options(),
%%   <<"Exclude">> => route_exclusion_options(),
%%   <<"InstructionsMeasurementSystem">> => list(any()),
%%   <<"Key">> => string(),
%%   <<"Languages">> => list(string()),
%%   <<"LegAdditionalFeatures">> => list(list(any())()),
%%   <<"LegGeometryFormat">> => list(any()),
%%   <<"MaxAlternatives">> => [integer()],
%%   <<"OptimizeRoutingFor">> => list(any()),
%%   <<"Origin">> := list([float()]()),
%%   <<"OriginOptions">> => route_origin_options(),
%%   <<"SpanAdditionalFeatures">> => list(list(any())()),
%%   <<"Tolls">> => route_toll_options(),
%%   <<"Traffic">> => route_traffic_options(),
%%   <<"TravelMode">> => list(any()),
%%   <<"TravelModeOptions">> => route_travel_mode_options(),
%%   <<"TravelStepType">> => list(any()),
%%   <<"Waypoints">> => list(route_waypoint())
%% }
-type calculate_routes_request() :: #{binary() => any()}.


%% Example:
%% route_number() :: #{
%%   <<"Direction">> => list(any()),
%%   <<"Language">> => string(),
%%   <<"Value">> => string()
%% }
-type route_number() :: #{binary() => any()}.


%% Example:
%% route_transit_pedestrian_options() :: #{
%%   <<"MaxDistance">> => float(),
%%   <<"Speed">> => float()
%% }
-type route_transit_pedestrian_options() :: #{binary() => any()}.


%% Example:
%% route_span_dynamic_speed_details() :: #{
%%   <<"BestCaseSpeed">> => float(),
%%   <<"TurnDuration">> => float(),
%%   <<"TypicalSpeed">> => float()
%% }
-type route_span_dynamic_speed_details() :: #{binary() => any()}.


%% Example:
%% route_ferry_departure() :: #{
%%   <<"Place">> => route_ferry_place(),
%%   <<"Time">> => string()
%% }
-type route_ferry_departure() :: #{binary() => any()}.


%% Example:
%% route_scooter_options() :: #{
%%   <<"EngineType">> => list(any()),
%%   <<"LicensePlate">> => route_vehicle_license_plate(),
%%   <<"MaxSpeed">> => float(),
%%   <<"Occupancy">> => integer()
%% }
-type route_scooter_options() :: #{binary() => any()}.


%% Example:
%% route_continue_highway_step_details() :: #{
%%   <<"Intersection">> => list(localized_string()),
%%   <<"SteeringDirection">> => list(any()),
%%   <<"TurnAngle">> => float(),
%%   <<"TurnIntensity">> => list(any())
%% }
-type route_continue_highway_step_details() :: #{binary() => any()}.


%% Example:
%% route_transit_before_travel_step() :: #{
%%   <<"Duration">> => float(),
%%   <<"Instruction">> => string(),
%%   <<"Type">> => list(any())
%% }
-type route_transit_before_travel_step() :: #{binary() => any()}.


%% Example:
%% route_taxi_place() :: #{
%%   <<"AccessPointDetails">> => route_access_point_details(),
%%   <<"Name">> => string(),
%%   <<"OriginalPosition">> => list([float()]()),
%%   <<"Position">> => list([float()]()),
%%   <<"StationDetails">> => route_station_details(),
%%   <<"Type">> => list(any()),
%%   <<"WaypointIndex">> => integer()
%% }
-type route_taxi_place() :: #{binary() => any()}.


%% Example:
%% route_leg() :: #{
%%   <<"FerryLegDetails">> => route_ferry_leg_details(),
%%   <<"Geometry">> => route_leg_geometry(),
%%   <<"Language">> => string(),
%%   <<"PedestrianLegDetails">> => route_pedestrian_leg_details(),
%%   <<"RentalLegDetails">> => route_rental_leg_details(),
%%   <<"TaxiLegDetails">> => route_taxi_leg_details(),
%%   <<"TransitLegDetails">> => route_transit_leg_details(),
%%   <<"TravelMode">> => list(any()),
%%   <<"Type">> => list(any()),
%%   <<"VehicleLegDetails">> => route_vehicle_leg_details()
%% }
-type route_leg() :: #{binary() => any()}.


%% Example:
%% road_snap_trace_point() :: #{
%%   <<"Heading">> => float(),
%%   <<"Position">> => list([float()]()),
%%   <<"Speed">> => float(),
%%   <<"Timestamp">> => string()
%% }
-type road_snap_trace_point() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% route_ferry_travel_step() :: #{
%%   <<"Distance">> => float(),
%%   <<"Duration">> => float(),
%%   <<"GeometryOffset">> => [integer()],
%%   <<"Instruction">> => string(),
%%   <<"Type">> => list(any())
%% }
-type route_ferry_travel_step() :: #{binary() => any()}.


%% Example:
%% road_snap_travel_mode_options() :: #{
%%   <<"Truck">> => road_snap_truck_options()
%% }
-type road_snap_travel_mode_options() :: #{binary() => any()}.


%% Example:
%% route_taxi_notice() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Impact">> => list(any())
%% }
-type route_taxi_notice() :: #{binary() => any()}.


%% Example:
%% calculate_route_matrix_response() :: #{
%%   <<"ErrorCount">> => [integer()],
%%   <<"PricingBucket">> => [string()],
%%   <<"RouteMatrix">> => list(list(route_matrix_entry())()),
%%   <<"RoutingBoundary">> => route_matrix_boundary()
%% }
-type calculate_route_matrix_response() :: #{binary() => any()}.


%% Example:
%% route_pedestrian_span() :: #{
%%   <<"BestCaseDuration">> => float(),
%%   <<"Country">> => string(),
%%   <<"Distance">> => float(),
%%   <<"Duration">> => float(),
%%   <<"DynamicSpeed">> => route_span_dynamic_speed_details(),
%%   <<"FunctionalClassification">> => integer(),
%%   <<"GeometryOffset">> => [integer()],
%%   <<"Incidents">> => list([integer()]()),
%%   <<"Names">> => list(localized_string()),
%%   <<"PedestrianAccess">> => list(list(any())()),
%%   <<"Region">> => string(),
%%   <<"RoadAttributes">> => list(list(any())()),
%%   <<"RouteNumbers">> => list(route_number()),
%%   <<"SpeedLimit">> => route_span_speed_limit_details(),
%%   <<"TypicalDuration">> => float()
%% }
-type route_pedestrian_span() :: #{binary() => any()}.


%% Example:
%% waypoint_optimization_optimized_waypoint() :: #{
%%   <<"ArrivalTime">> => string(),
%%   <<"ClusterIndex">> => integer(),
%%   <<"DepartureTime">> => string(),
%%   <<"Id">> => string(),
%%   <<"Position">> => list([float()]())
%% }
-type waypoint_optimization_optimized_waypoint() :: #{binary() => any()}.


%% Example:
%% route_transit_leg_details() :: #{
%%   <<"AfterTravelSteps">> => list(route_transit_after_travel_step()),
%%   <<"Agency">> => route_transit_agency(),
%%   <<"Arrival">> => route_transit_arrival(),
%%   <<"Attributions">> => list(route_attribution()),
%%   <<"BeforeTravelSteps">> => list(route_transit_before_travel_step()),
%%   <<"BookingWebLinks">> => list(route_web_link()),
%%   <<"Departure">> => route_transit_departure(),
%%   <<"Incidents">> => list(route_transit_incident()),
%%   <<"IntermediateStops">> => list(route_transit_intermediate_stop()),
%%   <<"NextDepartures">> => list(route_transit_next_departure()),
%%   <<"Notices">> => list(route_transit_notice()),
%%   <<"PassThroughWaypoints">> => list(route_pass_through_waypoint()),
%%   <<"Spans">> => list(route_transit_span()),
%%   <<"Summary">> => route_transit_summary(),
%%   <<"Transport">> => route_transit_transport_mode_details(),
%%   <<"TravelSteps">> => list(route_transit_travel_step())
%% }
-type route_transit_leg_details() :: #{binary() => any()}.


%% Example:
%% route_matrix_avoidance_options() :: #{
%%   <<"Areas">> => list(route_matrix_avoidance_area()),
%%   <<"CarShuttleTrains">> => boolean(),
%%   <<"ControlledAccessHighways">> => boolean(),
%%   <<"DirtRoads">> => boolean(),
%%   <<"Ferries">> => boolean(),
%%   <<"TollRoads">> => boolean(),
%%   <<"TollTransponders">> => boolean(),
%%   <<"TruckRoadTypes">> => list(string()),
%%   <<"Tunnels">> => boolean(),
%%   <<"UTurns">> => boolean(),
%%   <<"ZoneCategories">> => list(route_matrix_avoidance_zone_category())
%% }
-type route_matrix_avoidance_options() :: #{binary() => any()}.


%% Example:
%% weight_per_axle_group() :: #{
%%   <<"Quad">> => float(),
%%   <<"Quint">> => float(),
%%   <<"Single">> => float(),
%%   <<"Tandem">> => float(),
%%   <<"Triple">> => float()
%% }
-type weight_per_axle_group() :: #{binary() => any()}.


%% Example:
%% route_matrix_origin_options() :: #{
%%   <<"AvoidActionsForDistance">> => float(),
%%   <<"Heading">> => float(),
%%   <<"Matching">> => route_matrix_matching_options(),
%%   <<"SideOfStreet">> => route_matrix_side_of_street_options()
%% }
-type route_matrix_origin_options() :: #{binary() => any()}.


%% Example:
%% waypoint_optimization_side_of_street_options() :: #{
%%   <<"Position">> => list([float()]()),
%%   <<"UseWith">> => list(any())
%% }
-type waypoint_optimization_side_of_street_options() :: #{binary() => any()}.


%% Example:
%% route_intermodal_taxi_options() :: #{
%%   <<"AllowedModes">> => list(list(any())()),
%%   <<"EnabledFor">> => list(list(any())()),
%%   <<"ExcludedModes">> => list(list(any())())
%% }
-type route_intermodal_taxi_options() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"FieldList">> => list(validation_exception_field()),
%%   <<"Message">> => [string()],
%%   <<"Reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% isoline_vehicle_license_plate() :: #{
%%   <<"LastCharacter">> => [string()]
%% }
-type isoline_vehicle_license_plate() :: #{binary() => any()}.


%% Example:
%% road_snap_snapped_trace_point() :: #{
%%   <<"Confidence">> => float(),
%%   <<"OriginalPosition">> => list([float()]()),
%%   <<"SnappedPosition">> => list([float()]())
%% }
-type road_snap_snapped_trace_point() :: #{binary() => any()}.


%% Example:
%% route_response_notice() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Impact">> => list(any())
%% }
-type route_response_notice() :: #{binary() => any()}.


%% Example:
%% route_avoidance_area() :: #{
%%   <<"Except">> => list(route_avoidance_area_geometry()),
%%   <<"Geometry">> => route_avoidance_area_geometry()
%% }
-type route_avoidance_area() :: #{binary() => any()}.


%% Example:
%% route_pedestrian_options() :: #{
%%   <<"Speed">> => float()
%% }
-type route_pedestrian_options() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% waypoint_optimization_rest_cycle_durations() :: #{
%%   <<"RestDuration">> => float(),
%%   <<"WorkDuration">> => float()
%% }
-type waypoint_optimization_rest_cycle_durations() :: #{binary() => any()}.


%% Example:
%% route_vehicle_notice() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Details">> => list(route_vehicle_notice_detail()),
%%   <<"Impact">> => list(any())
%% }
-type route_vehicle_notice() :: #{binary() => any()}.


%% Example:
%% route_waypoint() :: #{
%%   <<"AvoidActionsForDistance">> => float(),
%%   <<"AvoidUTurns">> => boolean(),
%%   <<"Heading">> => float(),
%%   <<"Matching">> => route_matching_options(),
%%   <<"PassThrough">> => boolean(),
%%   <<"Position">> => list([float()]()),
%%   <<"SideOfStreet">> => route_side_of_street_options(),
%%   <<"StopDuration">> => float()
%% }
-type route_waypoint() :: #{binary() => any()}.


%% Example:
%% route_vehicle_arrival() :: #{
%%   <<"Place">> => route_vehicle_place(),
%%   <<"Time">> => string()
%% }
-type route_vehicle_arrival() :: #{binary() => any()}.


%% Example:
%% road_snap_truck_options() :: #{
%%   <<"GrossWeight">> => float(),
%%   <<"HazardousCargos">> => list(list(any())()),
%%   <<"Height">> => float(),
%%   <<"Length">> => float(),
%%   <<"Trailer">> => road_snap_trailer_options(),
%%   <<"TunnelRestrictionCode">> => string(),
%%   <<"Width">> => float()
%% }
-type road_snap_truck_options() :: #{binary() => any()}.


%% Example:
%% route_transit_transport_mode_details() :: #{
%%   <<"Accessibility">> => route_accessibility_availability_details(),
%%   <<"Color">> => string(),
%%   <<"Headsign">> => string(),
%%   <<"LongRouteName">> => string(),
%%   <<"Mode">> => list(any()),
%%   <<"RouteName">> => string(),
%%   <<"ShortRouteName">> => string(),
%%   <<"TextColor">> => string()
%% }
-type route_transit_transport_mode_details() :: #{binary() => any()}.


%% Example:
%% route_ferry_place() :: #{
%%   <<"Name">> => string(),
%%   <<"OriginalPosition">> => list([float()]()),
%%   <<"Position">> => list([float()]()),
%%   <<"WaypointIndex">> => integer()
%% }
-type route_ferry_place() :: #{binary() => any()}.


%% Example:
%% route_ferry_overview_summary() :: #{
%%   <<"Distance">> => float(),
%%   <<"Duration">> => float()
%% }
-type route_ferry_overview_summary() :: #{binary() => any()}.


%% Example:
%% route_vehicle_departure() :: #{
%%   <<"Place">> => route_vehicle_place(),
%%   <<"Time">> => string()
%% }
-type route_vehicle_departure() :: #{binary() => any()}.


%% Example:
%% route_taxi_before_travel_step() :: #{
%%   <<"Duration">> => float(),
%%   <<"Instruction">> => string(),
%%   <<"Type">> => list(any())
%% }
-type route_taxi_before_travel_step() :: #{binary() => any()}.


%% Example:
%% route_pass_through_place() :: #{
%%   <<"OriginalPosition">> => list([float()]()),
%%   <<"Position">> => list([float()]()),
%%   <<"WaypointIndex">> => integer()
%% }
-type route_pass_through_place() :: #{binary() => any()}.


%% Example:
%% isoline_origin_options() :: #{
%%   <<"AvoidActionsForDistance">> => float(),
%%   <<"Heading">> => float(),
%%   <<"Matching">> => isoline_matching_options(),
%%   <<"SideOfStreet">> => isoline_side_of_street_options()
%% }
-type isoline_origin_options() :: #{binary() => any()}.


%% Example:
%% route_transit_departure() :: #{
%%   <<"Delay">> => float(),
%%   <<"Place">> => route_transit_place(),
%%   <<"Status">> => list(any()),
%%   <<"Time">> => string()
%% }
-type route_transit_departure() :: #{binary() => any()}.


%% Example:
%% route_vehicle_overview_summary() :: #{
%%   <<"BestCaseDuration">> => float(),
%%   <<"Distance">> => float(),
%%   <<"Duration">> => float(),
%%   <<"TypicalDuration">> => float()
%% }
-type route_vehicle_overview_summary() :: #{binary() => any()}.


%% Example:
%% road_snap_snapped_geometry() :: #{
%%   <<"LineString">> => list(list([float()]())()),
%%   <<"Polyline">> => string()
%% }
-type road_snap_snapped_geometry() :: #{binary() => any()}.


%% Example:
%% waypoint_optimization_avoidance_options() :: #{
%%   <<"Areas">> => list(waypoint_optimization_avoidance_area()),
%%   <<"CarShuttleTrains">> => boolean(),
%%   <<"ControlledAccessHighways">> => boolean(),
%%   <<"DirtRoads">> => boolean(),
%%   <<"Ferries">> => boolean(),
%%   <<"TollRoads">> => boolean(),
%%   <<"Tunnels">> => boolean(),
%%   <<"UTurns">> => boolean()
%% }
-type waypoint_optimization_avoidance_options() :: #{binary() => any()}.


%% Example:
%% route_matrix_boundary_geometry() :: #{
%%   <<"AutoCircle">> => route_matrix_auto_circle(),
%%   <<"BoundingBox">> => list([float()]()),
%%   <<"Circle">> => circle(),
%%   <<"Polygon">> => list(list(list([float()]())())())
%% }
-type route_matrix_boundary_geometry() :: #{binary() => any()}.


%% Example:
%% route_matrix_vehicle_license_plate() :: #{
%%   <<"LastCharacter">> => [string()]
%% }
-type route_matrix_vehicle_license_plate() :: #{binary() => any()}.


%% Example:
%% route_intermodal_pedestrian_options() :: #{
%%   <<"MaxDistance">> => float(),
%%   <<"Speed">> => float()
%% }
-type route_intermodal_pedestrian_options() :: #{binary() => any()}.


%% Example:
%% route_exclusion_options() :: #{
%%   <<"Countries">> => list(string())
%% }
-type route_exclusion_options() :: #{binary() => any()}.


%% Example:
%% isoline_avoidance_zone_category() :: #{
%%   <<"Category">> => list(any())
%% }
-type isoline_avoidance_zone_category() :: #{binary() => any()}.


%% Example:
%% route_transit_options() :: #{
%%   <<"AccessibilityAttributes">> => list(list(any())()),
%%   <<"AllowedModes">> => list(list(any())()),
%%   <<"ExcludedModes">> => list(list(any())()),
%%   <<"MaxTransfers">> => [integer()],
%%   <<"Pedestrian">> => route_transit_pedestrian_options()
%% }
-type route_transit_options() :: #{binary() => any()}.


%% Example:
%% route_continue_step_details() :: #{
%%   <<"Intersection">> => list(localized_string())
%% }
-type route_continue_step_details() :: #{binary() => any()}.


%% Example:
%% route_taxi_overview_summary() :: #{
%%   <<"Distance">> => float(),
%%   <<"Duration">> => float()
%% }
-type route_taxi_overview_summary() :: #{binary() => any()}.


%% Example:
%% waypoint_optimization_failed_constraint() :: #{
%%   <<"Constraint">> => list(any()),
%%   <<"Reason">> => string()
%% }
-type waypoint_optimization_failed_constraint() :: #{binary() => any()}.


%% Example:
%% route_rental_arrival() :: #{
%%   <<"Place">> => route_rental_place(),
%%   <<"Time">> => string()
%% }
-type route_rental_arrival() :: #{binary() => any()}.


%% Example:
%% route_rental_transport_mode_details() :: #{
%%   <<"AvailableSeats">> => integer(),
%%   <<"Category">> => string(),
%%   <<"Color">> => string(),
%%   <<"Engine">> => list(any()),
%%   <<"LicensePlate">> => string(),
%%   <<"Mode">> => list(any()),
%%   <<"Model">> => string(),
%%   <<"Name">> => string(),
%%   <<"TextColor">> => string()
%% }
-type route_rental_transport_mode_details() :: #{binary() => any()}.


%% Example:
%% route_turn_step_details() :: #{
%%   <<"Intersection">> => list(localized_string()),
%%   <<"SteeringDirection">> => list(any()),
%%   <<"TurnAngle">> => float(),
%%   <<"TurnIntensity">> => list(any())
%% }
-type route_turn_step_details() :: #{binary() => any()}.


%% Example:
%% route_matrix_allow_options() :: #{
%%   <<"Hot">> => boolean(),
%%   <<"Hov">> => boolean()
%% }
-type route_matrix_allow_options() :: #{binary() => any()}.


%% Example:
%% route_transit_arrival() :: #{
%%   <<"Delay">> => float(),
%%   <<"Place">> => route_transit_place(),
%%   <<"Status">> => list(any()),
%%   <<"Time">> => string()
%% }
-type route_transit_arrival() :: #{binary() => any()}.


%% Example:
%% waypoint_optimization_pedestrian_options() :: #{
%%   <<"Speed">> => float()
%% }
-type waypoint_optimization_pedestrian_options() :: #{binary() => any()}.


%% Example:
%% isoline_shape_geometry() :: #{
%%   <<"Polygon">> => list(list(list([float()]())())()),
%%   <<"PolylinePolygon">> => list(string())
%% }
-type isoline_shape_geometry() :: #{binary() => any()}.


%% Example:
%% route_side_of_street_options() :: #{
%%   <<"Position">> => list([float()]()),
%%   <<"UseWith">> => list(any())
%% }
-type route_side_of_street_options() :: #{binary() => any()}.


%% Example:
%% route_matrix_entry() :: #{
%%   <<"Distance">> => float(),
%%   <<"Duration">> => float(),
%%   <<"Error">> => list(any())
%% }
-type route_matrix_entry() :: #{binary() => any()}.


%% Example:
%% route_allow_options() :: #{
%%   <<"Hot">> => boolean(),
%%   <<"Hov">> => boolean()
%% }
-type route_allow_options() :: #{binary() => any()}.


%% Example:
%% waypoint_optimization_time_breakdown() :: #{
%%   <<"RestDuration">> => float(),
%%   <<"ServiceDuration">> => float(),
%%   <<"TravelDuration">> => float(),
%%   <<"WaitDuration">> => float()
%% }
-type waypoint_optimization_time_breakdown() :: #{binary() => any()}.


%% Example:
%% route_transit_next_departure() :: #{
%%   <<"Delay">> => float(),
%%   <<"PlatformName">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Time">> => string(),
%%   <<"Transport">> => route_transit_transport_mode_details()
%% }
-type route_transit_next_departure() :: #{binary() => any()}.


%% Example:
%% route_ferry_span() :: #{
%%   <<"Country">> => string(),
%%   <<"Distance">> => float(),
%%   <<"Duration">> => float(),
%%   <<"GeometryOffset">> => [integer()],
%%   <<"Names">> => list(localized_string()),
%%   <<"Region">> => string()
%% }
-type route_ferry_span() :: #{binary() => any()}.


%% Example:
%% route_transit_incident() :: #{
%%   <<"Description">> => string(),
%%   <<"Effect">> => list(any()),
%%   <<"EndTime">> => string(),
%%   <<"StartTime">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"Url">> => string()
%% }
-type route_transit_incident() :: #{binary() => any()}.


%% Example:
%% route_matrix_auto_circle() :: #{
%%   <<"Margin">> => float(),
%%   <<"MaxRadius">> => float()
%% }
-type route_matrix_auto_circle() :: #{binary() => any()}.


%% Example:
%% route_weight_constraint() :: #{
%%   <<"Type">> => list(any()),
%%   <<"Value">> => float()
%% }
-type route_weight_constraint() :: #{binary() => any()}.


%% Example:
%% calculate_isolines_response() :: #{
%%   <<"ArrivalTime">> => string(),
%%   <<"DepartureTime">> => string(),
%%   <<"IsolineGeometryFormat">> => list(any()),
%%   <<"Isolines">> => list(isoline()),
%%   <<"PricingBucket">> => [string()],
%%   <<"SnappedDestination">> => list([float()]()),
%%   <<"SnappedOrigin">> => list([float()]())
%% }
-type calculate_isolines_response() :: #{binary() => any()}.


%% Example:
%% route_intermodal_rental_options() :: #{
%%   <<"AllowedModes">> => list(list(any())()),
%%   <<"EnabledFor">> => list(list(any())()),
%%   <<"ExcludedModes">> => list(list(any())())
%% }
-type route_intermodal_rental_options() :: #{binary() => any()}.


%% Example:
%% route_violated_constraints() :: #{
%%   <<"AllHazardsRestricted">> => boolean(),
%%   <<"AxleCount">> => route_notice_detail_range(),
%%   <<"HazardousCargos">> => list(list(any())()),
%%   <<"MaxHeight">> => float(),
%%   <<"MaxKpraLength">> => float(),
%%   <<"MaxLength">> => float(),
%%   <<"MaxPayloadCapacity">> => float(),
%%   <<"MaxWeight">> => route_weight_constraint(),
%%   <<"MaxWeightPerAxle">> => float(),
%%   <<"MaxWeightPerAxleGroup">> => weight_per_axle_group(),
%%   <<"MaxWidth">> => float(),
%%   <<"Occupancy">> => route_notice_detail_range(),
%%   <<"RestrictedTimes">> => [string()],
%%   <<"TimeDependent">> => boolean(),
%%   <<"TrailerCount">> => route_notice_detail_range(),
%%   <<"TravelMode">> => boolean(),
%%   <<"TruckRoadType">> => [string()],
%%   <<"TruckType">> => list(any()),
%%   <<"TunnelRestrictionCode">> => string()
%% }
-type route_violated_constraints() :: #{binary() => any()}.


%% Example:
%% calculate_routes_response() :: #{
%%   <<"LegGeometryFormat">> => list(any()),
%%   <<"Notices">> => list(route_response_notice()),
%%   <<"PricingBucket">> => [string()],
%%   <<"Routes">> => list(route())
%% }
-type calculate_routes_response() :: #{binary() => any()}.


%% Example:
%% waypoint_optimization_driving_distance_options() :: #{
%%   <<"DrivingDistance">> => float()
%% }
-type waypoint_optimization_driving_distance_options() :: #{binary() => any()}.


%% Example:
%% route_intermodal_vehicle_options() :: #{
%%   <<"AllowedModes">> => list(list(any())()),
%%   <<"EnabledFor">> => list(list(any())()),
%%   <<"ExcludedModes">> => list(list(any())())
%% }
-type route_intermodal_vehicle_options() :: #{binary() => any()}.


%% Example:
%% isoline_truck_options() :: #{
%%   <<"AxleCount">> => integer(),
%%   <<"EngineType">> => list(any()),
%%   <<"GrossWeight">> => float(),
%%   <<"HazardousCargos">> => list(list(any())()),
%%   <<"Height">> => float(),
%%   <<"HeightAboveFirstAxle">> => float(),
%%   <<"KpraLength">> => float(),
%%   <<"Length">> => float(),
%%   <<"LicensePlate">> => isoline_vehicle_license_plate(),
%%   <<"MaxSpeed">> => float(),
%%   <<"Occupancy">> => integer(),
%%   <<"PayloadCapacity">> => float(),
%%   <<"TireCount">> => integer(),
%%   <<"Trailer">> => isoline_trailer_options(),
%%   <<"TruckType">> => list(any()),
%%   <<"TunnelRestrictionCode">> => string(),
%%   <<"WeightPerAxle">> => float(),
%%   <<"WeightPerAxleGroup">> => weight_per_axle_group(),
%%   <<"Width">> => float()
%% }
-type isoline_truck_options() :: #{binary() => any()}.


%% Example:
%% route_matrix_side_of_street_options() :: #{
%%   <<"Position">> => list([float()]()),
%%   <<"UseWith">> => list(any())
%% }
-type route_matrix_side_of_street_options() :: #{binary() => any()}.


%% Example:
%% road_snap_trailer_options() :: #{
%%   <<"TrailerCount">> => integer()
%% }
-type road_snap_trailer_options() :: #{binary() => any()}.


%% Example:
%% route_emission_type() :: #{
%%   <<"Co2EmissionClass">> => string(),
%%   <<"Type">> => string()
%% }
-type route_emission_type() :: #{binary() => any()}.


%% Example:
%% route_vehicle_summary() :: #{
%%   <<"Overview">> => route_vehicle_overview_summary(),
%%   <<"TravelOnly">> => route_vehicle_travel_only_summary()
%% }
-type route_vehicle_summary() :: #{binary() => any()}.


%% Example:
%% calculate_route_matrix_request() :: #{
%%   <<"Allow">> => route_matrix_allow_options(),
%%   <<"Avoid">> => route_matrix_avoidance_options(),
%%   <<"DepartNow">> => boolean(),
%%   <<"DepartureTime">> => string(),
%%   <<"Destinations">> := list(route_matrix_destination()),
%%   <<"Exclude">> => route_matrix_exclusion_options(),
%%   <<"Key">> => string(),
%%   <<"OptimizeRoutingFor">> => list(any()),
%%   <<"Origins">> := list(route_matrix_origin()),
%%   <<"RoutingBoundary">> => route_matrix_boundary(),
%%   <<"Traffic">> => route_matrix_traffic_options(),
%%   <<"TravelMode">> => list(any()),
%%   <<"TravelModeOptions">> => route_matrix_travel_mode_options()
%% }
-type calculate_route_matrix_request() :: #{binary() => any()}.


%% Example:
%% route_matrix_scooter_options() :: #{
%%   <<"LicensePlate">> => route_matrix_vehicle_license_plate(),
%%   <<"MaxSpeed">> => float(),
%%   <<"Occupancy">> => integer()
%% }
-type route_matrix_scooter_options() :: #{binary() => any()}.


%% Example:
%% route_notice_detail_range() :: #{
%%   <<"Max">> => [integer()],
%%   <<"Min">> => [integer()]
%% }
-type route_notice_detail_range() :: #{binary() => any()}.


%% Example:
%% route_taxi_transport_mode_details() :: #{
%%   <<"AvailableSeats">> => integer(),
%%   <<"Category">> => string(),
%%   <<"Color">> => string(),
%%   <<"Engine">> => list(any()),
%%   <<"LicensePlate">> => string(),
%%   <<"Mode">> => list(any()),
%%   <<"Model">> => string(),
%%   <<"Name">> => string(),
%%   <<"TextColor">> => string()
%% }
-type route_taxi_transport_mode_details() :: #{binary() => any()}.


%% Example:
%% route_toll_price() :: #{
%%   <<"Currency">> => string(),
%%   <<"Estimate">> => boolean(),
%%   <<"PerDuration">> => float(),
%%   <<"Range">> => boolean(),
%%   <<"RangeValue">> => route_toll_price_value_range(),
%%   <<"Value">> => float()
%% }
-type route_toll_price() :: #{binary() => any()}.


%% Example:
%% route_rental_agency() :: #{
%%   <<"Name">> => string(),
%%   <<"Url">> => string()
%% }
-type route_rental_agency() :: #{binary() => any()}.


%% Example:
%% route_accessibility_availability_details() :: #{
%%   <<"Wheelchair">> => list(any())
%% }
-type route_accessibility_availability_details() :: #{binary() => any()}.

-type calculate_isolines_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type calculate_route_matrix_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type calculate_routes_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type optimize_waypoints_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type snap_to_roads_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Calculates areas that can be reached within specified time or
%% distance thresholds from a given point.
%%
%% For example, you can use this operation to determine the area within a
%% 30-minute drive of a store location, find neighborhoods within walking
%% distance of a school, or identify delivery zones based on drive time.
%%
%% Isolines (also known as isochrones for time-based calculations) are useful
%% for various applications including:
%%
%% Service area visualization - Show customers the area you can serve within
%% promised delivery times
%%
%% Site selection - Analyze potential business locations based on population
%% within travel distance
%%
%% Site selection - Determine areas that can be reached within specified
%% response times
%%
%% Route preferences such as avoiding toll roads or ferries are treated as
%% preferences rather than absolute restrictions. If a viable route cannot be
%% calculated while honoring all preferences, some may be ignored.
%%
%% For more information, see Calculate isolines:
%% https://docs.aws.amazon.com/location/latest/developerguide/calculate-isolines.html
%% in the Amazon Location Service Developer Guide.
-spec calculate_isolines(aws_client:aws_client(), calculate_isolines_request()) ->
    {ok, calculate_isolines_response(), tuple()} |
    {error, any()} |
    {error, calculate_isolines_errors(), tuple()}.
calculate_isolines(Client, Input) ->
    calculate_isolines(Client, Input, []).

-spec calculate_isolines(aws_client:aws_client(), calculate_isolines_request(), proplists:proplist()) ->
    {ok, calculate_isolines_response(), tuple()} |
    {error, any()} |
    {error, calculate_isolines_errors(), tuple()}.
calculate_isolines(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/isolines"],
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

%% @doc Use `CalculateRouteMatrix' to compute results for all pairs of
%% Origins to Destinations.
%%
%% Each row corresponds to one entry in Origins. Each entry in the row
%% corresponds to the route from that entry in Origins to an entry in
%% Destinations positions.
%%
%% For more information, see Calculate route matrix:
%% https://docs.aws.amazon.com/location/latest/developerguide/calculate-route-matrix.html
%% in the Amazon Location Service Developer Guide.
-spec calculate_route_matrix(aws_client:aws_client(), calculate_route_matrix_request()) ->
    {ok, calculate_route_matrix_response(), tuple()} |
    {error, any()} |
    {error, calculate_route_matrix_errors(), tuple()}.
calculate_route_matrix(Client, Input) ->
    calculate_route_matrix(Client, Input, []).

-spec calculate_route_matrix(aws_client:aws_client(), calculate_route_matrix_request(), proplists:proplist()) ->
    {ok, calculate_route_matrix_response(), tuple()} |
    {error, any()} |
    {error, calculate_route_matrix_errors(), tuple()}.
calculate_route_matrix(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/route-matrix"],
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

%% @doc `CalculateRoutes' computes routes given the following required
%% parameters: `Origin' and `Destination'.
%%
%% For more information, see Calculate routes:
%% https://docs.aws.amazon.com/location/latest/developerguide/calculate-routes.html
%% in the Amazon Location Service Developer Guide.
-spec calculate_routes(aws_client:aws_client(), calculate_routes_request()) ->
    {ok, calculate_routes_response(), tuple()} |
    {error, any()} |
    {error, calculate_routes_errors(), tuple()}.
calculate_routes(Client, Input) ->
    calculate_routes(Client, Input, []).

-spec calculate_routes(aws_client:aws_client(), calculate_routes_request(), proplists:proplist()) ->
    {ok, calculate_routes_response(), tuple()} |
    {error, any()} |
    {error, calculate_routes_errors(), tuple()}.
calculate_routes(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/routes"],
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

%% @doc `OptimizeWaypoints' calculates the optimal order to travel
%% between a set of waypoints to minimize either the travel time or the
%% distance travelled during the journey, based on road network restrictions
%% and the traffic pattern data.
%%
%% For more information, see Optimize waypoints:
%% https://docs.aws.amazon.com/location/latest/developerguide/actions-optimize-waypoints.html
%% in the Amazon Location Service Developer Guide.
-spec optimize_waypoints(aws_client:aws_client(), optimize_waypoints_request()) ->
    {ok, optimize_waypoints_response(), tuple()} |
    {error, any()} |
    {error, optimize_waypoints_errors(), tuple()}.
optimize_waypoints(Client, Input) ->
    optimize_waypoints(Client, Input, []).

-spec optimize_waypoints(aws_client:aws_client(), optimize_waypoints_request(), proplists:proplist()) ->
    {ok, optimize_waypoints_response(), tuple()} |
    {error, any()} |
    {error, optimize_waypoints_errors(), tuple()}.
optimize_waypoints(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/optimize-waypoints"],
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

%% @doc `SnapToRoads' matches GPS trace to roads most likely traveled on.
%%
%% For more information, see Snap to Roads:
%% https://docs.aws.amazon.com/location/latest/developerguide/snap-to-roads.html
%% in the Amazon Location Service Developer Guide.
-spec snap_to_roads(aws_client:aws_client(), snap_to_roads_request()) ->
    {ok, snap_to_roads_response(), tuple()} |
    {error, any()} |
    {error, snap_to_roads_errors(), tuple()}.
snap_to_roads(Client, Input) ->
    snap_to_roads(Client, Input, []).

-spec snap_to_roads(aws_client:aws_client(), snap_to_roads_request(), proplists:proplist()) ->
    {ok, snap_to_roads_response(), tuple()} |
    {error, any()} |
    {error, snap_to_roads_errors(), tuple()}.
snap_to_roads(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/snap-to-roads"],
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
    Client1 = Client#{service => <<"geo-routes">>},
    DefaultHost = build_host(<<"geo-routes">>, Client1),
    URL0 = build_url(DefaultHost, Path, Client1),
    PathBin = erlang:iolist_to_binary(Path),
    {URL1, Host} = aws_util:apply_endpoint_url_override(URL0, DefaultHost, PathBin, <<"AWS_ENDPOINT_URL_GEO_ROUTES">>),
    URL = aws_request:add_query(URL1, Query),
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
