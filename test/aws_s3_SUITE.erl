-module(aws_s3_SUITE).

-include_lib("common_test/include/ct.hrl").
-include_lib("stdlib/include/assert.hrl").

%% Test server callbacks
-export([suite/0, all/0, init_per_suite/1, end_per_suite/1, init_per_testcase/2,
         end_per_testcase/2]).
%% Test cases
-export([bucket_exists/1, create_delete_bucket/1, delete/1, exists/1, list_objects/1,
         delete_objects/1, read/1, write/1]).

%%--------------------------------------------------------------------
%% Common test callback functions
suite() ->
  [{timetrap, {minutes, 1}}].

init_per_suite(Config) ->
  application:ensure_all_started(aws),
  Bucket = <<"test-bucket">>,
  ok = aws_s3_util:create_bucket(client(), Bucket, []),
  [{bucket, Bucket} | Config].

end_per_suite(Config) ->
  Bucket = ?config(bucket, Config),
  ok = aws_s3_util:delete_bucket(client(), Bucket, []),
  ok.

init_per_testcase(_Case, Config) ->
  Config.

end_per_testcase(_Case, Config) ->
  Bucket = ?config(bucket, Config),
  cleanup_keys(Bucket),
  ok.

all() ->
  [write, read, exists, delete, delete_objects, list_objects, create_delete_bucket].

%%--------------------------------------------------------------------
%% Test cases
write(Config) ->
  Bucket = ?config(bucket, Config),
  Key = unique_key(),
  ?assertEqual(ok, aws_s3_util:write(client(), Bucket, Key, <<"data">>, [])),
  ok.

read(Config) ->
  Bucket = ?config(bucket, Config),
  Key = unique_key(),
  ok = aws_s3_util:write(client(), Bucket, Key, <<"data">>, []),
  ?assertEqual({ok, <<"data">>}, aws_s3_util:read(client(), Bucket, Key, [])),
  ok.

exists(Config) ->
  Bucket = ?config(bucket, Config),
  Key = unique_key(),
  ?assertNot(aws_s3_util:exists(client(), Bucket, Key, [])),
  ok = aws_s3_util:write(client(), Bucket, Key, <<"data">>, []),
  ?assert(aws_s3_util:exists(client(), Bucket, Key, [])),
  ?assert(aws_s3_util:exists_min_size(client(), Bucket, Key, 1, [])),
  ok.

delete(Config) ->
  Bucket = ?config(bucket, Config),
  Key = unique_key(),
  ok = aws_s3_util:write(client(), Bucket, Key, <<"data">>, []),
  ?assertEqual(ok, aws_s3_util:delete(client(), Bucket, Key, [])),
  ok.

delete_objects(Config) ->
  Bucket = ?config(bucket, Config),
  Key1 = unique_key(),
  Key2 = unique_key(),
  ok = aws_s3_util:write(client(), Bucket, Key1, <<"data">>, []),
  ok = aws_s3_util:write(client(), Bucket, Key2, <<"data">>, []),
  ?assertEqual({ok, []}, aws_s3_util:delete_objects(client(), Bucket, [Key1, Key2], [])),
  ok.

list_objects(Config) ->
  Bucket = ?config(bucket, Config),
  Key1 = <<"test-key-1">>,
  Key2 = <<"test-key-2">>,
  ok = aws_s3_util:write(client(), Bucket, Key1, <<"data">>, []),
  ok = aws_s3_util:write(client(), Bucket, Key2, <<"data">>, []),
  ?assertEqual([Key1, Key2],
               lists:sort(aws_s3_util:list_objects(client(), Bucket, <<"test-key">>, []))),
  ok.

create_delete_bucket(_Config) ->
  Bucket = unique_key(),
  ?assertEqual(ok, aws_s3_util:create_bucket(client(), Bucket, [])),
  ?assertEqual(ok, aws_s3_util:delete_bucket(client(), Bucket, [])),
  ok.

bucket_exists(Config) ->
  Bucket = ?config(bucket, Config),
  ?assert(aws_s3_util:bucket_exists(client(), Bucket, [])),
  ?assertNot(aws_s3_util:bucket_exists(client(), unique_key(), [])),
  ok.

%%--------------------------------------------------------------------
%% Helpers
client() ->
  aws_client:make_local_client(<<"AccessKeyID">>,
                               <<"SecretAccessKey">>,
                               <<"9090">>,
                               list_to_binary(os:getenv("S3MOCK_HOST", "localhost"))).

cleanup_keys(Bucket) ->
  Keys = aws_s3_util:list_objects(client(), Bucket, <<"">>, []),
  {ok, []} = aws_s3_util:delete_objects(client(), Bucket, Keys, []).

unique_key() ->
  <<"test-key-", (integer_to_binary(erlang:unique_integer([positive])))/binary>>.
