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

-export([delete_record/3,
         delete_record/4,
         get_record/4,
         get_record/5,
         put_record/3,
         put_record/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes a `Record' from a `FeatureGroup'.
%%
%% A new record will show up in the `OfflineStore' when the `DeleteRecord'
%% API is called. This record will have a value of `True' in the `is_deleted'
%% column.
delete_record(Client, FeatureGroupName, Input) ->
    delete_record(Client, FeatureGroupName, Input, []).
delete_record(Client, FeatureGroupName, Input0, Options) ->
    Method = delete,
    Path = ["/FeatureGroup/", aws_util:encode_uri(FeatureGroupName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"EventTime">>, <<"EventTime">>},
                     {<<"RecordIdentifierValueAsString">>, <<"RecordIdentifierValueAsString">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Use for `OnlineStore' serving from a `FeatureStore'.
%%
%% Only the latest records stored in the `OnlineStore' can be retrieved. If
%% no Record with `RecordIdentifierValue' is found, then an empty result is
%% returned.
get_record(Client, FeatureGroupName, FeatureNames, RecordIdentifierValueAsString)
  when is_map(Client) ->
    get_record(Client, FeatureGroupName, FeatureNames, RecordIdentifierValueAsString, []).
get_record(Client, FeatureGroupName, FeatureNames, RecordIdentifierValueAsString, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/FeatureGroup/", aws_util:encode_uri(FeatureGroupName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"FeatureName">>, FeatureNames},
        {<<"RecordIdentifierValueAsString">>, RecordIdentifierValueAsString}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Used for data ingestion into the `FeatureStore'.
%%
%% The `PutRecord' API writes to both the `OnlineStore' and `OfflineStore'.
%% If the record is the latest record for the `recordIdentifier', the record
%% is written to both the `OnlineStore' and `OfflineStore'. If the record is
%% a historic record, it is written only to the `OfflineStore'.
put_record(Client, FeatureGroupName, Input) ->
    put_record(Client, FeatureGroupName, Input, []).
put_record(Client, FeatureGroupName, Input0, Options) ->
    Method = put,
    Path = ["/FeatureGroup/", aws_util:encode_uri(FeatureGroupName), ""],
    SuccessStatusCode = undefined,

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
    Client1 = Client#{service => <<"sagemaker">>},
    Host = build_host(<<"featurestore-runtime.sagemaker">>, Client1),
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
