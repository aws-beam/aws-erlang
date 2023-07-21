%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Contains all data plane API operations and data types for the Amazon
%% SageMaker Feature Store.
%%
%% Use this API to put, delete, and retrieve (get) features from a feature
%% store.
%%
%% Use the following operations to configure your `OnlineStore' and
%% `OfflineStore' features, and to create and manage feature groups:
%%
%% <ul> <li> CreateFeatureGroup
%%
%% </li> <li> DeleteFeatureGroup
%%
%% </li> <li> DescribeFeatureGroup
%%
%% </li> <li> ListFeatureGroups
%%
%% </li> </ul>
-module(aws_sagemaker_featurestore_runtime).

-export([batch_get_record/2,
         batch_get_record/3,
         delete_record/3,
         delete_record/4,
         get_record/3,
         get_record/5,
         get_record/6,
         put_record/3,
         put_record/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Retrieves a batch of `Records' from a `FeatureGroup'.
batch_get_record(Client, Input) ->
    batch_get_record(Client, Input, []).
batch_get_record(Client, Input0, Options0) ->
    Method = post,
    Path = ["/BatchGetRecord"],
    SuccessStatusCode = undefined,
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

%% @doc Deletes a `Record' from a `FeatureGroup' in the
%% `OnlineStore'.
%%
%% Feature Store supports both `SoftDelete' and `HardDelete'. For
%% `SoftDelete' (default), feature columns are set to `null' and the
%% record is no longer retrievable by `GetRecord' or
%% `BatchGetRecord'. For `HardDelete', the complete `Record' is
%% removed from the `OnlineStore'. In both cases, Feature Store appends
%% the deleted record marker to the `OfflineStore' with feature values
%% set to `null', `is_deleted' value set to `True', and
%% `EventTime' set to the delete input `EventTime'.
%%
%% Note that the `EventTime' specified in `DeleteRecord' should be
%% set later than the `EventTime' of the existing record in the
%% `OnlineStore' for that `RecordIdentifer'. If it is not, the
%% deletion does not occur:
%%
%% <ul> <li> For `SoftDelete', the existing (undeleted) record remains in
%% the `OnlineStore', though the delete record marker is still written to
%% the `OfflineStore'.
%%
%% </li> <li> `HardDelete' returns `EventTime': `400
%% ValidationException' to indicate that the delete operation failed. No
%% delete record marker is written to the `OfflineStore'.
%%
%% </li> </ul>
delete_record(Client, FeatureGroupName, Input) ->
    delete_record(Client, FeatureGroupName, Input, []).
delete_record(Client, FeatureGroupName, Input0, Options0) ->
    Method = delete,
    Path = ["/FeatureGroup/", aws_util:encode_uri(FeatureGroupName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"DeletionMode">>, <<"DeletionMode">>},
                     {<<"EventTime">>, <<"EventTime">>},
                     {<<"RecordIdentifierValueAsString">>, <<"RecordIdentifierValueAsString">>},
                     {<<"TargetStores">>, <<"TargetStores">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Use for `OnlineStore' serving from a `FeatureStore'.
%%
%% Only the latest records stored in the `OnlineStore' can be retrieved.
%% If no Record with `RecordIdentifierValue' is found, then an empty
%% result is returned.
get_record(Client, FeatureGroupName, RecordIdentifierValueAsString)
  when is_map(Client) ->
    get_record(Client, FeatureGroupName, RecordIdentifierValueAsString, #{}, #{}).

get_record(Client, FeatureGroupName, RecordIdentifierValueAsString, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_record(Client, FeatureGroupName, RecordIdentifierValueAsString, QueryMap, HeadersMap, []).

get_record(Client, FeatureGroupName, RecordIdentifierValueAsString, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/FeatureGroup/", aws_util:encode_uri(FeatureGroupName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"ExpirationTimeResponse">>, maps:get(<<"ExpirationTimeResponse">>, QueryMap, undefined)},
        {<<"FeatureName">>, maps:get(<<"FeatureName">>, QueryMap, undefined)},
        {<<"RecordIdentifierValueAsString">>, RecordIdentifierValueAsString}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The `PutRecord' API is used to ingest a list of `Records'
%% into your feature group.
%%
%% If a new record’s `EventTime' is greater, the new record is written to
%% both the `OnlineStore' and `OfflineStore'. Otherwise, the record
%% is a historic record and it is written only to the `OfflineStore'.
%%
%% You can specify the ingestion to be applied to the `OnlineStore',
%% `OfflineStore', or both by using the `TargetStores' request
%% parameter.
%%
%% You can set the ingested record to expire at a given time to live (TTL)
%% duration after the record’s event time, `ExpiresAt' = `EventTime'
%% + `TtlDuration', by specifying the `TtlDuration' parameter. A
%% record level `TtlDuration' is set when specifying the
%% `TtlDuration' parameter using the `PutRecord' API call. If the
%% input `TtlDuration' is `null' or unspecified, `TtlDuration' is
%% set to the default feature group level `TtlDuration'. A record level
%% `TtlDuration' supersedes the group level `TtlDuration'.
put_record(Client, FeatureGroupName, Input) ->
    put_record(Client, FeatureGroupName, Input, []).
put_record(Client, FeatureGroupName, Input0, Options0) ->
    Method = put,
    Path = ["/FeatureGroup/", aws_util:encode_uri(FeatureGroupName), ""],
    SuccessStatusCode = undefined,
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
    Client1 = Client#{service => <<"sagemaker">>},
    Host = build_host(<<"featurestore-runtime.sagemaker">>, Client1),
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
