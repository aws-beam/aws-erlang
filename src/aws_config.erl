-module(aws_config).

-export([make_config/0,
         make_config/1]).

%%====================================================================
%% API
%%====================================================================

make_config() ->
    make_config(#{}).
make_config(Config) ->
    maps:merge(default_config(), Config).

%%====================================================================
%% Internal functions
%%====================================================================

default_config() ->
    Config = #{endpoint => undefined,
               region => default_region()},
    maps:merge(aws_creds:default_creds(), Config).

default_region() ->
    default_region(os:getenv("AWS_REGION")).
default_region(false) -> undefined;
default_region(Region) -> Region.

%%====================================================================
%% Unit tests
%%====================================================================

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

default_config_test() ->
    ?assertEqual(#{endpoint => undefined,
                   region => undefined,
                   access_key_id => undefined,
                   secret_access_key => undefined,
                   session_token => undefined},
                 default_config()).

-endif.
