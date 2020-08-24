%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The AWS Migration Hub home region APIs are available specifically for
%% working with your Migration Hub home region. You can use these APIs to
%% determine a home region, as well as to create and work with controls that
%% describe the home region.
%%
%% <ul> <li> You must make API calls for write actions (create, notify,
%% associate, disassociate, import, or put) while in your home region, or a
%% <code>HomeRegionNotSetException</code> error is returned.
%%
%% </li> <li> API calls for read actions (list, describe, stop, and delete)
%% are permitted outside of your home region.
%%
%% </li> <li> If you call a write API outside the home region, an
%% <code>InvalidInputException</code> is returned.
%%
%% </li> <li> You can call <code>GetHomeRegion</code> action to obtain the
%% account's Migration Hub home region.
%%
%% </li> </ul> For specific API usage, see the sections that follow in this
%% AWS Migration Hub Home Region API reference.
-module(aws_migrationhub_config).

-export([create_home_region_control/2,
         create_home_region_control/3,
         describe_home_region_controls/2,
         describe_home_region_controls/3,
         get_home_region/2,
         get_home_region/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc This API sets up the home region for the calling account only.
create_home_region_control(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_home_region_control(Client, Input, []).
create_home_region_control(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateHomeRegionControl">>, Input, Options).

%% @doc This API permits filtering on the <code>ControlId</code> and
%% <code>HomeRegion</code> fields.
describe_home_region_controls(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_home_region_controls(Client, Input, []).
describe_home_region_controls(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHomeRegionControls">>, Input, Options).

%% @doc Returns the calling account’s home region, if configured. This API is
%% used by other AWS services to determine the regional endpoint for calling
%% AWS Application Discovery Service and Migration Hub. You must call
%% <code>GetHomeRegion</code> at least once before you call any other AWS
%% Application Discovery Service and AWS Migration Hub APIs, to obtain the
%% account's Migration Hub home region.
get_home_region(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_home_region(Client, Input, []).
get_home_region(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetHomeRegion">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"mgh">>},
    Host = build_host(<<"migrationhub-config">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSMigrationHubMultiAccountService.", Action/binary>>}
    ],

    Input = Input0,

    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
