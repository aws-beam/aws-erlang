%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Suite of geospatial services including Maps, Places, Tracking, and
%% Geofencing
-module(aws_location).

-export([associate_tracker_consumer/3,
         associate_tracker_consumer/4,
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
         create_geofence_collection/2,
         create_geofence_collection/3,
         create_map/2,
         create_map/3,
         create_place_index/2,
         create_place_index/3,
         create_tracker/2,
         create_tracker/3,
         delete_geofence_collection/3,
         delete_geofence_collection/4,
         delete_map/3,
         delete_map/4,
         delete_place_index/3,
         delete_place_index/4,
         delete_tracker/3,
         delete_tracker/4,
         describe_geofence_collection/2,
         describe_geofence_collection/4,
         describe_geofence_collection/5,
         describe_map/2,
         describe_map/4,
         describe_map/5,
         describe_place_index/2,
         describe_place_index/4,
         describe_place_index/5,
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
         list_geofence_collections/2,
         list_geofence_collections/3,
         list_geofences/3,
         list_geofences/4,
         list_maps/2,
         list_maps/3,
         list_place_indexes/2,
         list_place_indexes/3,
         list_tracker_consumers/3,
         list_tracker_consumers/4,
         list_trackers/2,
         list_trackers/3,
         put_geofence/4,
         put_geofence/5,
         search_place_index_for_position/3,
         search_place_index_for_position/4,
         search_place_index_for_text/3,
         search_place_index_for_text/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an association between a geofence collection and a tracker
%% resource.
%%
%% This allows the tracker resource to communicate location data to the
%% linked geofence collection.
associate_tracker_consumer(Client, TrackerName, Input) ->
    associate_tracker_consumer(Client, TrackerName, Input, []).
associate_tracker_consumer(Client, TrackerName, Input0, Options) ->
    Method = post,
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), "/consumers"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a batch of geofences from a geofence collection.
%%
%% This action deletes the resource permanently. You can't undo this action.
batch_delete_geofence(Client, CollectionName, Input) ->
    batch_delete_geofence(Client, CollectionName, Input, []).
batch_delete_geofence(Client, CollectionName, Input0, Options) ->
    Method = post,
    Path = ["/geofencing/v0/collections/", aws_util:encode_uri(CollectionName), "/delete-geofences"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Used in geofence monitoring.
%%
%% Evaluates device positions against the position of geofences in a given
%% geofence collection.
batch_evaluate_geofences(Client, CollectionName, Input) ->
    batch_evaluate_geofences(Client, CollectionName, Input, []).
batch_evaluate_geofences(Client, CollectionName, Input0, Options) ->
    Method = post,
    Path = ["/geofencing/v0/collections/", aws_util:encode_uri(CollectionName), "/positions"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc A batch request to retrieve device positions.
%%
%% The response will return the device positions from the last 24 hours.
batch_get_device_position(Client, TrackerName, Input) ->
    batch_get_device_position(Client, TrackerName, Input, []).
batch_get_device_position(Client, TrackerName, Input0, Options) ->
    Method = post,
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), "/get-positions"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc A batch request for storing geofences into a given geofence
%% collection.
batch_put_geofence(Client, CollectionName, Input) ->
    batch_put_geofence(Client, CollectionName, Input, []).
batch_put_geofence(Client, CollectionName, Input0, Options) ->
    Method = post,
    Path = ["/geofencing/v0/collections/", aws_util:encode_uri(CollectionName), "/put-geofences"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Uploads a position update for one or more devices to a tracker
%% resource.
%%
%% The data is used for API queries requesting the device position and
%% position history.
%%
%% Limitation — Location data is sampled at a fixed rate of 1 position per 30
%% second interval, and retained for 1 year before it is deleted.
batch_update_device_position(Client, TrackerName, Input) ->
    batch_update_device_position(Client, TrackerName, Input, []).
batch_update_device_position(Client, TrackerName, Input0, Options) ->
    Method = post,
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), "/positions"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a geofence collection, which manages and stores geofences.
create_geofence_collection(Client, Input) ->
    create_geofence_collection(Client, Input, []).
create_geofence_collection(Client, Input0, Options) ->
    Method = post,
    Path = ["/geofencing/v0/collections"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a map resource in your AWS account, which provides map tiles
%% of different styles sourced from global location data providers.
%%
%% By using Maps, you agree that AWS may transmit your API queries to your
%% selected third party provider for processing, which may be outside the AWS
%% region you are currently using. For more information, see the AWS Service
%% Terms for Amazon Location Service.
create_map(Client, Input) ->
    create_map(Client, Input, []).
create_map(Client, Input0, Options) ->
    Method = post,
    Path = ["/maps/v0/maps"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a Place index resource in your AWS account, which supports
%% Places functions with geospatial data sourced from your chosen data
%% provider.
%%
%% By using Places, you agree that AWS may transmit your API queries to your
%% selected third party provider for processing, which may be outside the AWS
%% region you are currently using.
%%
%% Because of licensing limitations, you may not use HERE to store results
%% for locations in Japan. For more information, see the AWS Service Terms
%% for Amazon Location Service.
create_place_index(Client, Input) ->
    create_place_index(Client, Input, []).
create_place_index(Client, Input0, Options) ->
    Method = post,
    Path = ["/places/v0/indexes"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a tracker resource in your AWS account, which lets you
%% retrieve current and historical location of devices.
create_tracker(Client, Input) ->
    create_tracker(Client, Input, []).
create_tracker(Client, Input0, Options) ->
    Method = post,
    Path = ["/tracking/v0/trackers"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a geofence collection from your AWS account.
%%
%% This action deletes the resource permanently. You can't undo this action.
%% If the geofence collection is the target of a tracker resource, the
%% devices will no longer be monitored.
delete_geofence_collection(Client, CollectionName, Input) ->
    delete_geofence_collection(Client, CollectionName, Input, []).
delete_geofence_collection(Client, CollectionName, Input0, Options) ->
    Method = delete,
    Path = ["/geofencing/v0/collections/", aws_util:encode_uri(CollectionName), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a map resource from your AWS account.
%%
%% This action deletes the resource permanently. You cannot undo this action.
%% If the map is being used in an application, the map may not render.
delete_map(Client, MapName, Input) ->
    delete_map(Client, MapName, Input, []).
delete_map(Client, MapName, Input0, Options) ->
    Method = delete,
    Path = ["/maps/v0/maps/", aws_util:encode_uri(MapName), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a Place index resource from your AWS account.
%%
%% This action deletes the resource permanently. You cannot undo this action.
delete_place_index(Client, IndexName, Input) ->
    delete_place_index(Client, IndexName, Input, []).
delete_place_index(Client, IndexName, Input0, Options) ->
    Method = delete,
    Path = ["/places/v0/indexes/", aws_util:encode_uri(IndexName), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a tracker resource from your AWS account.
%%
%% This action deletes the resource permanently. You can't undo this action.
%% If the tracker resource is in use, you may encounter an error. Make sure
%% that the target resource is not a dependency for your applications.
delete_tracker(Client, TrackerName, Input) ->
    delete_tracker(Client, TrackerName, Input, []).
delete_tracker(Client, TrackerName, Input0, Options) ->
    Method = delete,
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the geofence collection details.
describe_geofence_collection(Client, CollectionName)
  when is_map(Client) ->
    describe_geofence_collection(Client, CollectionName, #{}, #{}).

describe_geofence_collection(Client, CollectionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_geofence_collection(Client, CollectionName, QueryMap, HeadersMap, []).

describe_geofence_collection(Client, CollectionName, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/geofencing/v0/collections/", aws_util:encode_uri(CollectionName), ""],
    SuccessStatusCode = 200,

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

describe_map(Client, MapName, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/maps/v0/maps/", aws_util:encode_uri(MapName), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the Place index resource details.
describe_place_index(Client, IndexName)
  when is_map(Client) ->
    describe_place_index(Client, IndexName, #{}, #{}).

describe_place_index(Client, IndexName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_place_index(Client, IndexName, QueryMap, HeadersMap, []).

describe_place_index(Client, IndexName, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/places/v0/indexes/", aws_util:encode_uri(IndexName), ""],
    SuccessStatusCode = 200,

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

describe_tracker(Client, TrackerName, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Removes the association bewteen a tracker resource and a geofence
%% collection.
%%
%% Once you unlink a tracker resource from a geofence collection, the tracker
%% positions will no longer be automatically evaluated against geofences.
disassociate_tracker_consumer(Client, ConsumerArn, TrackerName, Input) ->
    disassociate_tracker_consumer(Client, ConsumerArn, TrackerName, Input, []).
disassociate_tracker_consumer(Client, ConsumerArn, TrackerName, Input0, Options) ->
    Method = delete,
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), "/consumers/", aws_util:encode_uri(ConsumerArn), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the latest device position.
%%
%% Limitation — Device positions are deleted after one year.
get_device_position(Client, DeviceId, TrackerName)
  when is_map(Client) ->
    get_device_position(Client, DeviceId, TrackerName, #{}, #{}).

get_device_position(Client, DeviceId, TrackerName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_device_position(Client, DeviceId, TrackerName, QueryMap, HeadersMap, []).

get_device_position(Client, DeviceId, TrackerName, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), "/devices/", aws_util:encode_uri(DeviceId), "/positions/latest"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the device position history from a tracker resource within
%% a specified range of time.
%%
%% Limitation — Device positions are deleted after one year.
get_device_position_history(Client, DeviceId, TrackerName, Input) ->
    get_device_position_history(Client, DeviceId, TrackerName, Input, []).
get_device_position_history(Client, DeviceId, TrackerName, Input0, Options) ->
    Method = post,
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), "/devices/", aws_util:encode_uri(DeviceId), "/list-positions"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the geofence details from a geofence collection.
get_geofence(Client, CollectionName, GeofenceId)
  when is_map(Client) ->
    get_geofence(Client, CollectionName, GeofenceId, #{}, #{}).

get_geofence(Client, CollectionName, GeofenceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_geofence(Client, CollectionName, GeofenceId, QueryMap, HeadersMap, []).

get_geofence(Client, CollectionName, GeofenceId, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/geofencing/v0/collections/", aws_util:encode_uri(CollectionName), "/geofences/", aws_util:encode_uri(GeofenceId), ""],
    SuccessStatusCode = 200,

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

get_map_glyphs(Client, FontStack, FontUnicodeRange, MapName, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/maps/v0/maps/", aws_util:encode_uri(MapName), "/glyphs/", aws_util:encode_uri(FontStack), "/", aws_util:encode_uri(FontUnicodeRange), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
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

get_map_sprites(Client, FileName, MapName, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/maps/v0/maps/", aws_util:encode_uri(MapName), "/sprites/", aws_util:encode_uri(FileName), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
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

get_map_style_descriptor(Client, MapName, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/maps/v0/maps/", aws_util:encode_uri(MapName), "/style-descriptor"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
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
%% Map tiles are used by clients to render a map. They are addressed using a
%% grid arrangement with an X coordinate, Y coordinate, and Z (zoom) level.
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

get_map_tile(Client, MapName, X, Y, Z, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/maps/v0/maps/", aws_util:encode_uri(MapName), "/tiles/", aws_util:encode_uri(Z), "/", aws_util:encode_uri(X), "/", aws_util:encode_uri(Y), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
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

%% @doc Lists geofence collections in your AWS account.
list_geofence_collections(Client, Input) ->
    list_geofence_collections(Client, Input, []).
list_geofence_collections(Client, Input0, Options) ->
    Method = post,
    Path = ["/geofencing/v0/list-collections"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Lists geofences stored in a given geofence collection.
list_geofences(Client, CollectionName, Input) ->
    list_geofences(Client, CollectionName, Input, []).
list_geofences(Client, CollectionName, Input0, Options) ->
    Method = post,
    Path = ["/geofencing/v0/collections/", aws_util:encode_uri(CollectionName), "/list-geofences"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Lists map resources in your AWS account.
list_maps(Client, Input) ->
    list_maps(Client, Input, []).
list_maps(Client, Input0, Options) ->
    Method = post,
    Path = ["/maps/v0/list-maps"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Lists Place index resources in your AWS account.
list_place_indexes(Client, Input) ->
    list_place_indexes(Client, Input, []).
list_place_indexes(Client, Input0, Options) ->
    Method = post,
    Path = ["/places/v0/list-indexes"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Lists geofence collections currently associated to the given tracker
%% resource.
list_tracker_consumers(Client, TrackerName, Input) ->
    list_tracker_consumers(Client, TrackerName, Input, []).
list_tracker_consumers(Client, TrackerName, Input0, Options) ->
    Method = post,
    Path = ["/tracking/v0/trackers/", aws_util:encode_uri(TrackerName), "/list-consumers"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Lists tracker resources in your AWS account.
list_trackers(Client, Input) ->
    list_trackers(Client, Input, []).
list_trackers(Client, Input0, Options) ->
    Method = post,
    Path = ["/tracking/v0/list-trackers"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Stores a geofence to a given geofence collection, or updates the
%% geometry of an existing geofence if a geofence ID is included in the
%% request.
put_geofence(Client, CollectionName, GeofenceId, Input) ->
    put_geofence(Client, CollectionName, GeofenceId, Input, []).
put_geofence(Client, CollectionName, GeofenceId, Input0, Options) ->
    Method = put,
    Path = ["/geofencing/v0/collections/", aws_util:encode_uri(CollectionName), "/geofences/", aws_util:encode_uri(GeofenceId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Reverse geocodes a given coordinate and returns a legible address.
%%
%% Allows you to search for Places or points of interest near a given
%% position.
%%
%% By using Places, you agree that AWS may transmit your API queries to your
%% selected third party provider for processing, which may be outside the AWS
%% region you are currently using.
%%
%% Because of licensing limitations, you may not use HERE to store results
%% for locations in Japan. For more information, see the AWS Service Terms
%% for Amazon Location Service.
search_place_index_for_position(Client, IndexName, Input) ->
    search_place_index_for_position(Client, IndexName, Input, []).
search_place_index_for_position(Client, IndexName, Input0, Options) ->
    Method = post,
    Path = ["/places/v0/indexes/", aws_util:encode_uri(IndexName), "/search/position"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Geocodes free-form text, such as an address, name, city, or region to
%% allow you to search for Places or points of interest.
%%
%% Includes the option to apply additional parameters to narrow your list of
%% results.
%%
%% You can search for places near a given position using `BiasPosition', or
%% filter results within a bounding box using `FilterBBox'. Providing both
%% parameters simultaneously returns an error.
%%
%% By using Places, you agree that AWS may transmit your API queries to your
%% selected third party provider for processing, which may be outside the AWS
%% region you are currently using.
%%
%% Also, when using HERE as your data provider, you may not (a) use HERE
%% Places for Asset Management, or (b) select the `Storage' option for the
%% `IntendedUse' parameter when requesting Places in Japan. For more
%% information, see the AWS Service Terms for Amazon Location Service.
search_place_index_for_text(Client, IndexName, Input) ->
    search_place_index_for_text(Client, IndexName, Input, []).
search_place_index_for_text(Client, IndexName, Input0, Options) ->
    Method = post,
    Path = ["/places/v0/indexes/", aws_util:encode_uri(IndexName), "/search/text"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"geo">>},
    Host = build_host(<<"geo">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(should_send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        undefined ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    handle_response(Response, SuccessStatusCode).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
