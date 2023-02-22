-module(aws_s3_util).

-export([bucket_exists/3, create_bucket/3, delete_bucket/3, list_objects/4, delete/4,
         delete_objects/4, exists/4, exists_min_size/5, read/4, write/5]).

-type client() :: map().
-type bucket() :: binary().
-type key() :: binary().
-type prefix() :: binary().
-type options() :: proplists:proplist().

%%--------------------------------------------------------------------
%% API
-spec bucket_exists(client(), bucket(), options()) -> boolean() | {error, term()}.
bucket_exists(Client, Bucket, Options) ->
  case aws_s3:head_bucket(Client, Bucket, #{}, Options) of
    {ok, {200, _Headers}} ->
      true;
    {error, {404, _Headers}} ->
      false;
    {error, Error} ->
      {error, Error}
  end.

-spec create_bucket(client(), bucket(), options()) -> ok | {error, term()}.
create_bucket(Client, Bucket, Options) ->
  case aws_s3:create_bucket(Client, Bucket, #{}, Options) of
    {ok, _, {200, _Headers, _}} ->
      ok;
    {error, Error} ->
      {error, Error}
  end.

-spec delete_bucket(client(), bucket(), options()) -> ok | {error, not_found | term()}.
delete_bucket(Client, Bucket, Options) ->
  case aws_s3:delete_bucket(Client, Bucket, #{}, Options) of
    {ok, _Body, {204, _Headers, _Ref}} ->
      ok;
    {error, _Body, {404, _Headers, _Ref}} ->
      {error, not_found};
    {error, Error} ->
      {error, Error}
  end.

-spec list_objects(client(), bucket(), prefix(), options()) -> [key()].
list_objects(Client, Bucket, Prefix, Options) ->
  list_objects(Client, Bucket, Prefix, Options, undefined, []).

-spec delete(client(), bucket(), key(), options()) -> ok | {error, term()}.
delete(Client, Bucket, Key, Options) ->
  case aws_s3:delete_object(Client, Bucket, Key, #{}, Options) of
    {ok, _Body, {204, _Header, _Ref}} ->
      ok;
    {error, Error} ->
      {error, Error}
  end.

-spec delete_objects(client(), bucket(), [key()], options()) ->
                    {ok, [] | [term()]} | {error, term()}.
delete_objects(_Client, _Bucket, [] = _Keys, _Options) ->
  {ok, []};
delete_objects(Client, Bucket, Keys, Options) ->
  Input = #{<<"Delete">> => #{<<"Object">> => [#{<<"Key">> => Key} || Key <- Keys]}},
  case aws_s3:delete_objects(Client, Bucket, Input, Options) of
    {ok, #{<<"DeleteResult">> := none}, {200, _Headers, _Ref}} ->
      %% Everything went well
      {ok, []};
    {ok, #{<<"DeleteResult">> := Result}, {200, _Headers, _Ref}} ->
      %% Result may contain a single error-map or multiple.
      Failed =
        lists:map(fun(#{<<"Key">> := Key, <<"Code">> := Code}) -> {Key, Code} end,
                  force_list(maps:get(<<"Error">>, Result, []))),
      {ok, Failed};
    {error, Error} ->
      {error, Error}
  end.

-spec exists(client(), bucket(), key(), options()) -> boolean() | {error, term()}.
exists(Client, Bucket, Key, Options) ->
  case aws_s3:head_object(Client, Bucket, Key, #{}, Options) of
    {ok, _, {200, _Headers}} ->
      true;
    {error, {404, _Header}} ->
      false;
    {error, Error} ->
      {error, Error}
  end.

-spec exists_min_size(client(), bucket(), key(), non_neg_integer(), options()) ->
                       boolean() | {error, term()}.
exists_min_size(Client, Bucket, Key, Size, Options) ->
  case aws_s3:head_object(Client, Bucket, Key, #{}, Options) of
    {ok, _, {200, Headers}} ->
      Length = binary_to_integer(proplists:get_value(<<"Content-Length">>, Headers)),
      Length >= Size;
    {error, {404, _Header}} ->
      false;
    {error, Error} ->
      {error, Error}
  end.

-spec read(client(), bucket(), key(), options()) ->
            {ok, binary()} | {error, not_found | term()}.
read(Client, Bucket, Key, Options) ->
  case aws_s3:get_object(Client, Bucket, Key, #{}, #{}, Options) of
    {error, _Desc, {404, _Headers, _Ref}} ->
      {error, not_found};
    {ok, #{<<"Body">> := Data}, {200, _Headers, _Ref}} ->
      {ok, Data};
    {ok, #{<<"ContentLength">> := <<"0">>}, {200, _Headers, _Ref}} ->
      {ok, <<>>};
    {error, Error} ->
      {error, Error}
  end.

-spec write(client(), bucket(), key(), binary(), options()) ->
             ok | {error, no_such_bucket | term()}.
write(Client, Bucket, Key, Data, Options) ->
  DateTime =
    calendar:now_to_datetime(
      erlang:timestamp()),
  GTime = calendar:datetime_to_gregorian_seconds(DateTime),
  Input =
    #{<<"Body">> => Data,
      <<"Metadata">> => #{<<"modified-gtime">> => integer_to_binary(GTime)}},
  case aws_s3:put_object(Client, Bucket, Key, Input, Options) of
    {ok, _RespBody, {200, _Headers, _Ref}} ->
      ok;
    {ok, {_, 404, _Headers}, _Ref} ->
      {error, no_such_bucket};
    {error, Error} ->
      {error, Error}
  end.

%%--------------------------------------------------------------------
%% Internal
list_objects(Client, Bucket, Prefix, Options, Marker, Acc) ->
  Query0 = #{<<"prefix">> => Prefix},
  Query =
    case Marker of
      undefined ->
        Query0;
      _ ->
        Query0#{<<"marker">> => Marker}
    end,
  case aws_s3:list_objects(Client, Bucket, Query, #{}, Options) of
    {ok,
     #{<<"ListBucketResult">> := #{<<"IsTruncated">> := IsTruncated} = Res},
     {200, _Headers, _Ref}} ->
      case maps:get(<<"Contents">>, Res, []) of
        Contents when is_list(Contents) ->
          Keys = lists:map(fun(#{<<"Key">> := Path}) -> Path end, Contents),
          NewAcc = Acc ++ Keys,
          case to_boolean(IsTruncated) of
            true ->
              NewMarker = lists:last(Keys),
              list_objects(Client, Bucket, Prefix, Options, NewMarker, NewAcc);
            false ->
              NewAcc
          end;
        Content ->
          Path = maps:get(<<"Key">>, Content),
          [Path | Acc]
      end;
    {error, Error} ->
      {error, Error}
  end.

force_list(Maps) when is_list(Maps) ->
  Maps;
force_list(Map) when is_map(Map) ->
  [Map].

to_boolean(<<"true">>) ->
  true;
to_boolean(<<"false">>) ->
  false.
