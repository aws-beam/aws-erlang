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
%% COMMON TEST CALLBACK FUNCTIONS
%%--------------------------------------------------------------------

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
%% TEST CASES

put_get(Config) ->
    TableConf = ?config(table_conf, Config),
    put_item(TableConf, {1, 2}),
    ?assertMatch(
        {ok,
            #{
                <<"Item">> :=
                    #{
                        <<"TestHash">> := #{<<"S">> := <<"1">>},
                        <<"TestRange">> := #{<<"S">> := <<"2">>}
                    }
            },
            {200, _RespHeaders, _}},
        get_item(TableConf, {1, 2})
    ),
    ok.

%%--------------------------------------------------------------------
%% HELPERS

client() ->
    aws_client:make_local_client(
        <<"AccessKeyID">>, <<"SecretAccessKey">>, <<"8001">>, <<"ddb">>
    ).

create_table(TableConf) ->
    Client = client(),
    Body = create_table_body(TableConf),
    aws_dynamodb:create_table(Client, Body).

put_item({TableName, _HashConf, _RangeConf} = TableConf, Item) ->
    Client = client(),
    Input = #{<<"TableName">> => TableName, <<"Item">> => mk_item(TableConf, Item)},
    aws_dynamodb:put_item(Client, Input).

get_item({TableName, {HashName, HashType}, {RangeName, RangeType}}, {HashKey, RangeKey}) ->
    Client = client(),
    Input = #{
        <<"Key">> => #{
            HashName => #{
                HashType => HashKey
            },
            RangeName => #{
                RangeType => RangeKey
            }
        },
        <<"TableName">> => TableName
    },
    aws_dynamodb:get_item(Client, Input).

create_table_body({TableName, {HashName, HashType}, {RangeName, RangeType}}) ->
    #{
        <<"AttributeDefinitions">> =>
            [
                #{
                    <<"AttributeName">> => HashName,
                    <<"AttributeType">> => HashType
                },
                #{
                    <<"AttributeName">> => RangeName,
                    <<"AttributeType">> => RangeType
                }
            ],
        <<"KeySchema">> =>
            [
                #{
                    <<"AttributeName">> => HashName,
                    <<"KeyType">> => <<"HASH">>
                },
                #{
                    <<"AttributeName">> => RangeName,
                    <<"KeyType">> => <<"RANGE">>
                }
            ],
        <<"ProvisionedThroughput">> =>
            #{<<"ReadCapacityUnits">> => 5, <<"WriteCapacityUnits">> => 5},
        <<"TableName">> => TableName
    }.

mk_item({_TableName, {HashName, HashType}, {RangeName, RangeType}}, {HashKey, RangeKey}) ->
    #{
        HashName => #{HashType => int_to_type(HashType, HashKey)},
        RangeName => #{RangeType => int_to_type(RangeType, RangeKey)}
    }.

int_to_type(<<"S">>, I) -> integer_to_binary(I).

delete_table(_) ->
    %% fixme,
    ok.
