-module(aws_client).

-export([make_client/3, make_temporary_client/4]).

-type access_key_id() :: binary().
-type secret_access_key() :: binary().
-type region() :: binary().
-type token() :: binary().
-type aws_client() :: map().
-export_type([access_key_id/0, secret_access_key/0, region/0,
              token/0, aws_client/0]).

%%====================================================================
%% API
%%====================================================================

-spec make_client(access_key_id(), secret_access_key(), region()) ->
    aws_client().
make_client(AccessKeyID, SecretAccessKey, Region)
  when is_binary(AccessKeyID), is_binary(SecretAccessKey), is_binary(Region) ->
    #{access_key_id => AccessKeyID,
      secret_access_key => SecretAccessKey,
      region => Region,
      endpoint => <<"amazonaws.com">>,
      service => undefined}.

-spec make_temporary_client(access_key_id(), secret_access_key(), token(), region()) ->
    aws_client().
make_temporary_client(AccessKeyID, SecretAccessKey, Token, Region)
  when is_binary(AccessKeyID), is_binary(SecretAccessKey), 
       is_binary(Token), is_binary(Region) ->
    #{access_key_id => AccessKeyID,
      secret_access_key => SecretAccessKey,
      token => Token,
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

make_temporary_client_test() ->
    ?assertEqual(#{access_key_id => <<"access-key-id">>,
                   secret_access_key => <<"secret-access-key">>,
                   token => <<"some-token">>,
                   region => <<"region">>,
                   endpoint => <<"amazonaws.com">>,
                   service => undefined},
                 make_temporary_client(<<"access-key-id">>,
                                       <<"secret-access-key">>,
                                       <<"some-token">>,
                                       <<"region">>)).
-endif.
