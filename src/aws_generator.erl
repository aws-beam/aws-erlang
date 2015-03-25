-module(aws_generator).

%% API exports.
-exports([generate/2]).

-type schema() :: [tuple()].

%%====================================================================
%% API functions
%%====================================================================

%% Generate a module called <code>Name</code> based on the API
%% described by <code>Schema</code> and return generated content for
%% <code>{Headers, Source}</code>.
-spec generate(string(), schema()) -> {string(), string()}.
generate(_Name, _Schema) ->
    {"", ""}.

%%====================================================================
%% Internal functions
%%====================================================================

%$ Convert camel case to snake case.
snake_case(Text) ->
    Result = lists:flatten(lists:map(fun char_to_snake_case/1, Text)),
    string:strip(Result, left, $_).

char_to_snake_case(Char) ->
    LowerChar = string:to_lower(Char),
    case LowerChar =:= Char of
        true -> [Char];
        false -> ["_", LowerChar]
    end.

%%====================================================================
%% Unit test functions
%%====================================================================

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

%% snake_case converts camel case text to snake case.
snake_case_with_camel_case_test() ->
    ?assertEqual("camel_case", snake_case("CamelCase")).

%% snake_case converts lower camel case text to snake case.
snake_case_with_lower_camel_case_test() ->
    ?assertEqual("lower_camel_case", snake_case("lowerCamelCase")).

-endif.
