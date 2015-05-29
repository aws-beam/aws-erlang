-module(aws_client).

-export([make_client/0,
         make_client/1]).

%%====================================================================
%% API
%%====================================================================

make_client() ->
    make_client(#{}).
make_client(Client) ->
    maps:merge(default_client(), Client).

%%====================================================================
%% Internal functions
%%====================================================================

default_client() ->
    #{access_key_id => undefined,
      secret_access_key => undefined,
      endpoint => undefined,
      region => default_region(),
      service => undefined}.

default_region() ->
    default_region(os:getenv("AWS_REGION")).
default_region(false) -> undefined;
default_region(Region) -> Region.

%%====================================================================
%% Unit tests
%%====================================================================

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

%% make_client/0 returns a clienturation map with default values.
make_client_test() ->
    ?assertEqual(#{access_key_id => undefined,
                   secret_access_key => undefined,
                   endpoint => undefined,
                   region => undefined,
                   service => undefined},
                 make_client()).

%% make_client/0 initializes the region from the AWS_REGION environment
%% variables when it's set.
make_client_with_region_environment_variable_test_() ->
    AWSRegion = os:getenv("AWS_REGION"),
    {setup,
     fun () -> os:putenv("AWS_REGION", "us-east-1") end,
     fun (_) -> case AWSRegion of
                    false -> os:unsetenv("AWS_REGION");
                    _ -> os:putenv("AWS_REGION", AWSRegion)
                end
     end,
     fun () -> ?assertEqual(#{access_key_id => undefined,
                              secret_access_key => undefined,
                              endpoint => undefined,
                              region => "us-east-1",
                              service => undefined},
                            make_client())
     end
    }.

%% make_client/1 prefers the user provided region value when the AWS_REGION
%% environment variable is defined.
make_client_with_region_environment_variable_prefers_user_defined_value_test_() ->
    AWSRegion = os:getenv("AWS_REGION"),
    {setup,
     fun () -> os:putenv("AWS_REGION", "us-east-1-a") end,
     fun (_) -> case AWSRegion of
                    false -> os:unsetenv("AWS_REGION");
                    _ -> os:putenv("AWS_REGION", AWSRegion)
                end
     end,
     fun () -> ?assertEqual(#{access_key_id => undefined,
                              secret_access_key => undefined,
                              endpoint => undefined,
                              region => "eu-west-1",
                              service => undefined},
                            make_client(#{region => "eu-west-1"}))
     end
    }.

-endif.
