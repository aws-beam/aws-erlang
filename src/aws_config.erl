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

%% make_config/0 returns a configuration map with default values.
make_config_test() ->
    ?assertEqual(#{endpoint => undefined,
                   region => undefined,
                   access_key_id => undefined,
                   secret_access_key => undefined,
                   session_token => undefined},
                 make_config()).

%% make_config/0 initializes the region from the AWS_REGION environment
%% variables when it's set.
make_config_with_region_environment_variable_test_() ->
    AWSRegion = os:getenv("AWS_REGION"),
    {setup,
     fun () -> os:putenv("AWS_REGION", "us-east-1") end,
     fun (_) -> case AWSRegion of
                    false -> os:unsetenv("AWS_REGION");
                    _ -> os:putenv("AWS_REGION", AWSRegion)
                end
     end,
     fun () -> ?assertEqual(#{endpoint => undefined,
                              region => "us-east-1",
                              access_key_id => undefined,
                              secret_access_key => undefined,
                              session_token => undefined},
                            make_config())
     end
    }.

%% make_config/1 prefers the user provided region value when the AWS_REGION
%% environment variable is defined.
make_config_with_region_environment_variable_prefers_user_defined_value_test_() ->
    AWSRegion = os:getenv("AWS_REGION"),
    {setup,
     fun () -> os:putenv("AWS_REGION", "us-east-1-a") end,
     fun (_) -> case AWSRegion of
                    false -> os:unsetenv("AWS_REGION");
                    _ -> os:putenv("AWS_REGION", AWSRegion)
                end
     end,
     fun () -> ?assertEqual(#{endpoint => undefined,
                              region => "eu-west-1",
                              access_key_id => undefined,
                              secret_access_key => undefined,
                              session_token => undefined},
                            make_config(#{region => "eu-west-1"}))
     end
    }.

-endif.
