%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Integrate high-quality base map data into your applications using
%% MapLibre: https://maplibre.org.
%%
%% Capabilities include:
%%
%% Access to comprehensive base map data, allowing you to tailor the map
%% display to
%% your specific needs.
%%
%% Multiple pre-designed map styles suited for various application types,
%% such as
%% navigation, logistics, or data visualization.
%%
%% Generation of static map images for scenarios where interactive maps
%% aren't
%% suitable, such as:
%%
%% Embedding in emails or documents
%%
%% Displaying in low-bandwidth environments
%%
%% Creating printable maps
%%
%% Enhancing application performance by reducing client-side rendering
-module(aws_geo_maps).

-export([get_glyphs/3,
         get_glyphs/5,
         get_glyphs/6,
         get_sprites/5,
         get_sprites/7,
         get_sprites/8,
         get_static_map/4,
         get_static_map/6,
         get_static_map/7,
         get_style_descriptor/2,
         get_style_descriptor/4,
         get_style_descriptor/5,
         get_tile/5,
         get_tile/7,
         get_tile/8]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% get_glyphs_request() :: #{}
-type get_glyphs_request() :: #{}.


%% Example:
%% get_glyphs_response() :: #{
%%   <<"Blob">> => [binary()],
%%   <<"CacheControl">> => [string()],
%%   <<"ContentType">> => [string()],
%%   <<"ETag">> => [string()]
%% }
-type get_glyphs_response() :: #{binary() => any()}.

%% Example:
%% get_sprites_request() :: #{}
-type get_sprites_request() :: #{}.


%% Example:
%% get_sprites_response() :: #{
%%   <<"Blob">> => [binary()],
%%   <<"CacheControl">> => [string()],
%%   <<"ContentType">> => [string()],
%%   <<"ETag">> => [string()]
%% }
-type get_sprites_response() :: #{binary() => any()}.


%% Example:
%% get_static_map_request() :: #{
%%   <<"BoundedPositions">> => string(),
%%   <<"BoundingBox">> => string(),
%%   <<"Center">> => string(),
%%   <<"ColorScheme">> => string(),
%%   <<"CompactOverlay">> => string(),
%%   <<"CropLabels">> => [boolean()],
%%   <<"GeoJsonOverlay">> => string(),
%%   <<"Height">> := [integer()],
%%   <<"Key">> => string(),
%%   <<"LabelSize">> => string(),
%%   <<"Language">> => string(),
%%   <<"Padding">> => [integer()],
%%   <<"PointsOfInterests">> => string(),
%%   <<"PoliticalView">> => string(),
%%   <<"Radius">> => float(),
%%   <<"ScaleBarUnit">> => string(),
%%   <<"Style">> => string(),
%%   <<"Width">> := [integer()],
%%   <<"Zoom">> => [float()]
%% }
-type get_static_map_request() :: #{binary() => any()}.


%% Example:
%% get_static_map_response() :: #{
%%   <<"Blob">> => [binary()],
%%   <<"CacheControl">> => [string()],
%%   <<"ContentType">> => [string()],
%%   <<"ETag">> => [string()],
%%   <<"PricingBucket">> => [string()]
%% }
-type get_static_map_response() :: #{binary() => any()}.


%% Example:
%% get_style_descriptor_request() :: #{
%%   <<"ColorScheme">> => string(),
%%   <<"Key">> => string(),
%%   <<"PoliticalView">> => string()
%% }
-type get_style_descriptor_request() :: #{binary() => any()}.


%% Example:
%% get_style_descriptor_response() :: #{
%%   <<"Blob">> => [binary()],
%%   <<"CacheControl">> => [string()],
%%   <<"ContentType">> => [string()],
%%   <<"ETag">> => [string()]
%% }
-type get_style_descriptor_response() :: #{binary() => any()}.


%% Example:
%% get_tile_request() :: #{
%%   <<"Key">> => string()
%% }
-type get_tile_request() :: #{binary() => any()}.


%% Example:
%% get_tile_response() :: #{
%%   <<"Blob">> => [binary()],
%%   <<"CacheControl">> => [string()],
%%   <<"ContentType">> => [string()],
%%   <<"ETag">> => [string()],
%%   <<"PricingBucket">> => [string()]
%% }
-type get_tile_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"FieldList">> => list(validation_exception_field()()),
%%   <<"Message">> => [string()],
%%   <<"Reason">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"Message">> => [string()],
%%   <<"Name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.

-type get_static_map_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_tile_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc
%% `GetGlyphs' returns the map's glyphs.
-spec get_glyphs(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_glyphs_response(), tuple()} |
    {error, any()}.
get_glyphs(Client, FontStack, FontUnicodeRange)
  when is_map(Client) ->
    get_glyphs(Client, FontStack, FontUnicodeRange, #{}, #{}).

-spec get_glyphs(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_glyphs_response(), tuple()} |
    {error, any()}.
get_glyphs(Client, FontStack, FontUnicodeRange, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_glyphs(Client, FontStack, FontUnicodeRange, QueryMap, HeadersMap, []).

-spec get_glyphs(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_glyphs_response(), tuple()} |
    {error, any()}.
get_glyphs(Client, FontStack, FontUnicodeRange, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/glyphs/", aws_util:encode_uri(FontStack), "/", aws_util:encode_uri(FontUnicodeRange), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Cache-Control">>, <<"CacheControl">>},
            {<<"Content-Type">>, <<"ContentType">>},
            {<<"ETag">>, <<"ETag">>}
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

%% @doc
%% `GetSprites' returns the map's sprites.
-spec get_sprites(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_sprites_response(), tuple()} |
    {error, any()}.
get_sprites(Client, ColorScheme, FileName, Style, Variant)
  when is_map(Client) ->
    get_sprites(Client, ColorScheme, FileName, Style, Variant, #{}, #{}).

-spec get_sprites(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_sprites_response(), tuple()} |
    {error, any()}.
get_sprites(Client, ColorScheme, FileName, Style, Variant, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sprites(Client, ColorScheme, FileName, Style, Variant, QueryMap, HeadersMap, []).

-spec get_sprites(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_sprites_response(), tuple()} |
    {error, any()}.
get_sprites(Client, ColorScheme, FileName, Style, Variant, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/styles/", aws_util:encode_uri(Style), "/", aws_util:encode_uri(ColorScheme), "/", aws_util:encode_uri(Variant), "/sprites/", aws_util:encode_uri(FileName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Cache-Control">>, <<"CacheControl">>},
            {<<"Content-Type">>, <<"ContentType">>},
            {<<"ETag">>, <<"ETag">>}
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

%% @doc
%% `GetStaticMap' provides high-quality static map images with
%% customizable
%% options.
%%
%% You can modify the map's appearance and overlay additional
%% information. It's an
%% ideal solution for applications requiring tailored static map snapshots.
-spec get_static_map(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_static_map_response(), tuple()} |
    {error, any()} |
    {error, get_static_map_errors(), tuple()}.
get_static_map(Client, FileName, Height, Width)
  when is_map(Client) ->
    get_static_map(Client, FileName, Height, Width, #{}, #{}).

-spec get_static_map(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_static_map_response(), tuple()} |
    {error, any()} |
    {error, get_static_map_errors(), tuple()}.
get_static_map(Client, FileName, Height, Width, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_static_map(Client, FileName, Height, Width, QueryMap, HeadersMap, []).

-spec get_static_map(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_static_map_response(), tuple()} |
    {error, any()} |
    {error, get_static_map_errors(), tuple()}.
get_static_map(Client, FileName, Height, Width, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/static/", aws_util:encode_uri(FileName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"bounded-positions">>, maps:get(<<"bounded-positions">>, QueryMap, undefined)},
        {<<"bounding-box">>, maps:get(<<"bounding-box">>, QueryMap, undefined)},
        {<<"center">>, maps:get(<<"center">>, QueryMap, undefined)},
        {<<"color-scheme">>, maps:get(<<"color-scheme">>, QueryMap, undefined)},
        {<<"compact-overlay">>, maps:get(<<"compact-overlay">>, QueryMap, undefined)},
        {<<"crop-labels">>, maps:get(<<"crop-labels">>, QueryMap, undefined)},
        {<<"geojson-overlay">>, maps:get(<<"geojson-overlay">>, QueryMap, undefined)},
        {<<"height">>, Height},
        {<<"key">>, maps:get(<<"key">>, QueryMap, undefined)},
        {<<"label-size">>, maps:get(<<"label-size">>, QueryMap, undefined)},
        {<<"lang">>, maps:get(<<"lang">>, QueryMap, undefined)},
        {<<"padding">>, maps:get(<<"padding">>, QueryMap, undefined)},
        {<<"pois">>, maps:get(<<"pois">>, QueryMap, undefined)},
        {<<"political-view">>, maps:get(<<"political-view">>, QueryMap, undefined)},
        {<<"radius">>, maps:get(<<"radius">>, QueryMap, undefined)},
        {<<"scale-unit">>, maps:get(<<"scale-unit">>, QueryMap, undefined)},
        {<<"style">>, maps:get(<<"style">>, QueryMap, undefined)},
        {<<"width">>, Width},
        {<<"zoom">>, maps:get(<<"zoom">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Cache-Control">>, <<"CacheControl">>},
            {<<"Content-Type">>, <<"ContentType">>},
            {<<"ETag">>, <<"ETag">>},
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

%% @doc
%% `GetStyleDescriptor' returns information about the style.
-spec get_style_descriptor(aws_client:aws_client(), binary() | list()) ->
    {ok, get_style_descriptor_response(), tuple()} |
    {error, any()}.
get_style_descriptor(Client, Style)
  when is_map(Client) ->
    get_style_descriptor(Client, Style, #{}, #{}).

-spec get_style_descriptor(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_style_descriptor_response(), tuple()} |
    {error, any()}.
get_style_descriptor(Client, Style, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_style_descriptor(Client, Style, QueryMap, HeadersMap, []).

-spec get_style_descriptor(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_style_descriptor_response(), tuple()} |
    {error, any()}.
get_style_descriptor(Client, Style, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/styles/", aws_util:encode_uri(Style), "/descriptor"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"color-scheme">>, maps:get(<<"color-scheme">>, QueryMap, undefined)},
        {<<"key">>, maps:get(<<"key">>, QueryMap, undefined)},
        {<<"political-view">>, maps:get(<<"political-view">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Cache-Control">>, <<"CacheControl">>},
            {<<"Content-Type">>, <<"ContentType">>},
            {<<"ETag">>, <<"ETag">>}
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

%% @doc
%% `GetTile' returns a tile.
%%
%% Map tiles are used by clients to render a map.
%% they're addressed using a grid arrangement with an X coordinate, Y
%% coordinate, and Z (zoom)
%% level.
-spec get_tile(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_tile_response(), tuple()} |
    {error, any()} |
    {error, get_tile_errors(), tuple()}.
get_tile(Client, Tileset, X, Y, Z)
  when is_map(Client) ->
    get_tile(Client, Tileset, X, Y, Z, #{}, #{}).

-spec get_tile(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_tile_response(), tuple()} |
    {error, any()} |
    {error, get_tile_errors(), tuple()}.
get_tile(Client, Tileset, X, Y, Z, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_tile(Client, Tileset, X, Y, Z, QueryMap, HeadersMap, []).

-spec get_tile(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_tile_response(), tuple()} |
    {error, any()} |
    {error, get_tile_errors(), tuple()}.
get_tile(Client, Tileset, X, Y, Z, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tiles/", aws_util:encode_uri(Tileset), "/", aws_util:encode_uri(Z), "/", aws_util:encode_uri(X), "/", aws_util:encode_uri(Y), ""],
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
            {<<"Content-Type">>, <<"ContentType">>},
            {<<"ETag">>, <<"ETag">>},
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
    Client1 = Client#{service => <<"geo-maps">>},
    Host = build_host(<<"geo-maps">>, Client1),
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
