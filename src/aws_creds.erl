-module(aws_creds).

-export([default_creds/0]).

%%====================================================================
%% API
%%====================================================================

default_creds() ->
    #{access_key_id => undefined,
      secret_access_key => undefined,
      session_token => undefined}.

%%====================================================================
%% Internal functions
%%====================================================================

%%====================================================================
%% Unit tests
%%====================================================================

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

default_creds_test() ->
    ?assertEqual(#{access_key_id => undefined,
                   secret_access_key => undefined,
                   session_token => undefined},
                 default_creds()).

-endif.
