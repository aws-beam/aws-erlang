%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The AWS Migration Hub home region APIs are available specifically for
%% working with your
%% Migration Hub home region.
%%
%% You can use these APIs to determine a home region, as well as to
%% create and work with controls that describe the home region.
%%
%% You must make API calls for write actions (create, notify, associate,
%% disassociate,
%% import, or put) while in your home region, or a
%% `HomeRegionNotSetException'
%% error is returned.
%%
%% API calls for read actions (list, describe, stop, and delete) are
%% permitted outside of
%% your home region.
%%
%% If you call a write API outside the home region, an
%% `InvalidInputException'
%% is returned.
%%
%% You can call `GetHomeRegion' action to obtain the account's
%% Migration Hub
%% home region.
%%
%% For specific API usage, see the sections that follow in this AWS Migration
%% Hub Home Region
%% API reference.
-module(aws_migrationhub_config).

-export([create_home_region_control/2,
         create_home_region_control/3,
         delete_home_region_control/2,
         delete_home_region_control/3,
         describe_home_region_controls/2,
         describe_home_region_controls/3,
         get_home_region/2,
         get_home_region/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% create_home_region_control_request() :: #{
%%   <<"DryRun">> => boolean(),
%%   <<"HomeRegion">> := string(),
%%   <<"Target">> := target()
%% }
-type create_home_region_control_request() :: #{binary() => any()}.

%% Example:
%% create_home_region_control_result() :: #{
%%   <<"HomeRegionControl">> => home_region_control()
%% }
-type create_home_region_control_result() :: #{binary() => any()}.

%% Example:
%% delete_home_region_control_request() :: #{
%%   <<"ControlId">> := string()
%% }
-type delete_home_region_control_request() :: #{binary() => any()}.

%% Example:
%% delete_home_region_control_result() :: #{

%% }
-type delete_home_region_control_result() :: #{binary() => any()}.

%% Example:
%% describe_home_region_controls_request() :: #{
%%   <<"ControlId">> => string(),
%%   <<"HomeRegion">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Target">> => target()
%% }
-type describe_home_region_controls_request() :: #{binary() => any()}.

%% Example:
%% describe_home_region_controls_result() :: #{
%%   <<"HomeRegionControls">> => list(home_region_control()),
%%   <<"NextToken">> => string()
%% }
-type describe_home_region_controls_result() :: #{binary() => any()}.

%% Example:
%% dry_run_operation() :: #{
%%   <<"Message">> => string()
%% }
-type dry_run_operation() :: #{binary() => any()}.

%% Example:
%% get_home_region_request() :: #{

%% }
-type get_home_region_request() :: #{binary() => any()}.

%% Example:
%% get_home_region_result() :: #{
%%   <<"HomeRegion">> => string()
%% }
-type get_home_region_result() :: #{binary() => any()}.

%% Example:
%% home_region_control() :: #{
%%   <<"ControlId">> => string(),
%%   <<"HomeRegion">> => string(),
%%   <<"RequestedTime">> => non_neg_integer(),
%%   <<"Target">> => target()
%% }
-type home_region_control() :: #{binary() => any()}.

%% Example:
%% internal_server_error() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_error() :: #{binary() => any()}.

%% Example:
%% invalid_input_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_input_exception() :: #{binary() => any()}.

%% Example:
%% service_unavailable_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% target() :: #{
%%   <<"Id">> => string(),
%%   <<"Type">> => list(any())
%% }
-type target() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RetryAfterSeconds">> => integer()
%% }
-type throttling_exception() :: #{binary() => any()}.

-type create_home_region_control_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_input_exception() | 
    internal_server_error() | 
    dry_run_operation() | 
    access_denied_exception().

-type delete_home_region_control_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_input_exception() | 
    internal_server_error() | 
    access_denied_exception().

-type describe_home_region_controls_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_input_exception() | 
    internal_server_error() | 
    access_denied_exception().

-type get_home_region_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_input_exception() | 
    internal_server_error() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc This API sets up the home region for the calling account only.
-spec create_home_region_control(aws_client:aws_client(), create_home_region_control_request()) ->
    {ok, create_home_region_control_result(), tuple()} |
    {error, any()} |
    {error, create_home_region_control_errors(), tuple()}.
create_home_region_control(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_home_region_control(Client, Input, []).

-spec create_home_region_control(aws_client:aws_client(), create_home_region_control_request(), proplists:proplist()) ->
    {ok, create_home_region_control_result(), tuple()} |
    {error, any()} |
    {error, create_home_region_control_errors(), tuple()}.
create_home_region_control(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateHomeRegionControl">>, Input, Options).

%% @doc This operation deletes the home region configuration for the calling
%% account.
%%
%% The operation does not delete discovery or migration tracking data in the
%% home region.
-spec delete_home_region_control(aws_client:aws_client(), delete_home_region_control_request()) ->
    {ok, delete_home_region_control_result(), tuple()} |
    {error, any()} |
    {error, delete_home_region_control_errors(), tuple()}.
delete_home_region_control(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_home_region_control(Client, Input, []).

-spec delete_home_region_control(aws_client:aws_client(), delete_home_region_control_request(), proplists:proplist()) ->
    {ok, delete_home_region_control_result(), tuple()} |
    {error, any()} |
    {error, delete_home_region_control_errors(), tuple()}.
delete_home_region_control(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteHomeRegionControl">>, Input, Options).

%% @doc This API permits filtering on the `ControlId' and
%% `HomeRegion'
%% fields.
-spec describe_home_region_controls(aws_client:aws_client(), describe_home_region_controls_request()) ->
    {ok, describe_home_region_controls_result(), tuple()} |
    {error, any()} |
    {error, describe_home_region_controls_errors(), tuple()}.
describe_home_region_controls(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_home_region_controls(Client, Input, []).

-spec describe_home_region_controls(aws_client:aws_client(), describe_home_region_controls_request(), proplists:proplist()) ->
    {ok, describe_home_region_controls_result(), tuple()} |
    {error, any()} |
    {error, describe_home_region_controls_errors(), tuple()}.
describe_home_region_controls(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHomeRegionControls">>, Input, Options).

%% @doc Returns the calling account’s home region, if configured.
%%
%% This API is used by other AWS
%% services to determine the regional endpoint for calling AWS Application
%% Discovery Service and
%% Migration Hub. You must call `GetHomeRegion' at least once before you
%% call any
%% other AWS Application Discovery Service and AWS Migration Hub APIs, to
%% obtain the account's
%% Migration Hub home region.
-spec get_home_region(aws_client:aws_client(), get_home_region_request()) ->
    {ok, get_home_region_result(), tuple()} |
    {error, any()} |
    {error, get_home_region_errors(), tuple()}.
get_home_region(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_home_region(Client, Input, []).

-spec get_home_region(aws_client:aws_client(), get_home_region_request(), proplists:proplist()) ->
    {ok, get_home_region_result(), tuple()} |
    {error, any()} |
    {error, get_home_region_errors(), tuple()}.
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
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
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

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
