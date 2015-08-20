-module(aws_client).

-export([make_client/3]).

%%====================================================================
%% API
%%====================================================================

make_client(AccessKeyID, SecretAccessKey, Region)
  when is_binary(AccessKeyID), is_binary(SecretAccessKey), is_binary(Region) ->
    #{access_key_id => AccessKeyID,
      secret_access_key => SecretAccessKey,
      region => Region,
      endpoint => <<"amazonaws.com">>,
      service => undefined}.

%%====================================================================
%% Unit tests
%%====================================================================

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

%% make_client/0 returns a clienturation map with default values.
make_client_test() ->
    ?assertEqual(#{access_key_id => <<"access-key-id">>,
                   secret_access_key => <<"secret-access-key">>,
                   region => <<"region">>,
                   endpoint => <<"amazonaws.com">>,
                   service => undefined},
                 make_client(<<"access-key-id">>, <<"secret-access-key">>,
                             <<"region">>)).

-endif.
