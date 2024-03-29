-module(aws_dynamodb_SUITE).

-include_lib("common_test/include/ct.hrl").
-include_lib("stdlib/include/assert.hrl").

%% Test server callbacks
-export([
    suite/0,
    all/0,
    init_per_suite/1,
    end_per_suite/1,
    init_per_testcase/2,
    end_per_testcase/2
]).

%% Test cases
-export([put_get/1]).

%%--------------------------------------------------------------------
%% Common test callback functions

suite() ->
  [{timetrap, {minutes, 1}}].

init_per_suite(Config) ->
  application:ensure_all_started(aws),
  Config.

end_per_suite(_Config) ->
    ok.

init_per_testcase(_Case, Config) ->
  TableConf = {<<"TestTable">>, {<<"TestHash">>, <<"S">>}, {<<"TestRange">>, <<"S">>}},
  create_table(TableConf),
  [{table_conf, TableConf} | Config].

end_per_testcase(_Case, Config) ->
  TableConf = ?config(table_conf, Config),
  ok = delete_table(TableConf),
  ok.

all() ->
  [put_get].

%%--------------------------------------------------------------------
%% Test cases

put_get(Config) ->
  TableConf = ?config(table_conf, Config),
  HashValue = <<"Hvalue 1">>,
  RangeValue = <<"Rvalue 1">>,
  put_item(TableConf, {HashValue, RangeValue}),
  ?assertMatch({ok,
                #{<<"Item">> :=
                    #{<<"TestHash">> := #{<<"S">> := HashValue},
                      <<"TestRange">> := #{<<"S">> := RangeValue}}},
                {200, _RespHeaders, _}},
               get_item(TableConf, {HashValue, RangeValue})),
  ok.

%%--------------------------------------------------------------------
%% Helpers

client() ->
  aws_client:make_local_client(<<"AccessKeyID">>,
                               <<"SecretAccessKey">>,
                               <<"8000">>,
                               list_to_binary(os:getenv("DYNAMODB_HOST", "localhost"))).

create_table(TableConf) ->
  Client = client(),
  Body = create_table_body(TableConf),
  {ok, _Response, {200, _Headers, _Ref}} = aws_dynamodb:create_table(Client, Body),
  ok.

put_item({TableName, _HashConf, _RangeConf} = TableConf, Item) ->
  Client = client(),
  Input = #{<<"TableName">> => TableName, <<"Item">> => mk_item(TableConf, Item)},
  aws_dynamodb:put_item(Client, Input).

get_item({TableName, {HashName, HashType}, {RangeName, RangeType}},
         {HashKey, RangeKey}) ->
  Client = client(),
  Input =
    #{<<"Key">> =>
        #{HashName => #{HashType => HashKey}, RangeName => #{RangeType => RangeKey}},
      <<"TableName">> => TableName},
  aws_dynamodb:get_item(Client, Input).

create_table_body({TableName, {HashName, HashType}, {RangeName, RangeType}}) ->
  #{<<"AttributeDefinitions">> =>
      [#{<<"AttributeName">> => HashName, <<"AttributeType">> => HashType},
       #{<<"AttributeName">> => RangeName, <<"AttributeType">> => RangeType}],
    <<"KeySchema">> =>
      [#{<<"AttributeName">> => HashName, <<"KeyType">> => <<"HASH">>},
       #{<<"AttributeName">> => RangeName, <<"KeyType">> => <<"RANGE">>}],
    <<"ProvisionedThroughput">> =>
      #{<<"ReadCapacityUnits">> => 5, <<"WriteCapacityUnits">> => 5},
    <<"TableName">> => TableName}.

mk_item({_TableName, {HashName, HashType}, {RangeName, RangeType}},
        {HashKey, RangeKey}) ->
  #{HashName => #{HashType => HashKey},
    RangeName => #{RangeType => RangeKey}}.

delete_table(TableConf) ->
  {TableName, _HashConf, _RangeConf} = TableConf,
  {ok, _Response, {200, _Headers, _Ref}} =
    aws_dynamodb:delete_table(client(), #{<<"TableName">> => TableName}),
  ok.
