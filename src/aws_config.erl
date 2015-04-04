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

%% default_config/0 returns a configuration map with default values.
default_config_test() ->
    ?assertEqual(#{endpoint => undefined,
                   region => undefined,
                   access_key_id => undefined,
                   secret_access_key => undefined,
                   session_token => undefined},
                 default_config()).

%% default_config/0 initializes the region from the AWS_REGION environment
%% variables when it's set.
default_config_with_region_environment_variable_test_() ->
    AWSRegion = os:getenv("AWS_REGION"),
    {spawn,
     {setup,
      fun () -> os:putenv("AWS_REGION", "us-east-1-a") end,
      fun (_) -> case AWSRegion of
                     false -> os:unsetenv("AWS_REGION");
                     _ -> os:putenv("AWS_REGION", AWSRegion)
                 end
      end,
      [fun () -> ?assertEqual(#{endpoint => undefined,
                                region => "us-east-1-a",
                                access_key_id => undefined,
                                secret_access_key => undefined,
                                session_token => undefined},
                              default_config())
       end]
     }
    }.

-endif.
