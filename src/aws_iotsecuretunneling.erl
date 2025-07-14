%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc IoT Secure Tunneling
%%
%% IoT Secure Tunneling creates remote connections to devices deployed in the
%% field.
%%
%% For more information about how IoT Secure Tunneling works, see IoT
%% Secure Tunneling:
%% https://docs.aws.amazon.com/iot/latest/developerguide/secure-tunneling.html.
-module(aws_iotsecuretunneling).

-export([close_tunnel/2,
         close_tunnel/3,
         describe_tunnel/2,
         describe_tunnel/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_tunnels/2,
         list_tunnels/3,
         open_tunnel/2,
         open_tunnel/3,
         rotate_tunnel_access_token/2,
         rotate_tunnel_access_token/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% close_tunnel_request() :: #{
%%   <<"delete">> => boolean()
%% }
-type close_tunnel_request() :: #{binary() => any()}.

%% Example:
%% close_tunnel_response() :: #{

%% }
-type close_tunnel_response() :: #{binary() => any()}.

%% Example:
%% connection_state() :: #{
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type connection_state() :: #{binary() => any()}.

%% Example:
%% describe_tunnel_request() :: #{

%% }
-type describe_tunnel_request() :: #{binary() => any()}.

%% Example:
%% describe_tunnel_response() :: #{
%%   <<"tunnel">> => tunnel()
%% }
-type describe_tunnel_response() :: #{binary() => any()}.

%% Example:
%% destination_config() :: #{
%%   <<"services">> => list(string()),
%%   <<"thingName">> => string()
%% }
-type destination_config() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% list_tunnels_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"thingName">> => string()
%% }
-type list_tunnels_request() :: #{binary() => any()}.

%% Example:
%% list_tunnels_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"tunnelSummaries">> => list(tunnel_summary())
%% }
-type list_tunnels_response() :: #{binary() => any()}.

%% Example:
%% open_tunnel_request() :: #{
%%   <<"description">> => string(),
%%   <<"destinationConfig">> => destination_config(),
%%   <<"tags">> => list(tag()),
%%   <<"timeoutConfig">> => timeout_config()
%% }
-type open_tunnel_request() :: #{binary() => any()}.

%% Example:
%% open_tunnel_response() :: #{
%%   <<"destinationAccessToken">> => string(),
%%   <<"sourceAccessToken">> => string(),
%%   <<"tunnelArn">> => string(),
%%   <<"tunnelId">> => string()
%% }
-type open_tunnel_response() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% rotate_tunnel_access_token_request() :: #{
%%   <<"clientMode">> := list(any()),
%%   <<"destinationConfig">> => destination_config()
%% }
-type rotate_tunnel_access_token_request() :: #{binary() => any()}.

%% Example:
%% rotate_tunnel_access_token_response() :: #{
%%   <<"destinationAccessToken">> => string(),
%%   <<"sourceAccessToken">> => string(),
%%   <<"tunnelArn">> => string()
%% }
-type rotate_tunnel_access_token_response() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% timeout_config() :: #{
%%   <<"maxLifetimeTimeoutMinutes">> => integer()
%% }
-type timeout_config() :: #{binary() => any()}.

%% Example:
%% tunnel() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"destinationConfig">> => destination_config(),
%%   <<"destinationConnectionState">> => connection_state(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"sourceConnectionState">> => connection_state(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => list(tag()),
%%   <<"timeoutConfig">> => timeout_config(),
%%   <<"tunnelArn">> => string(),
%%   <<"tunnelId">> => string()
%% }
-type tunnel() :: #{binary() => any()}.

%% Example:
%% tunnel_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"tunnelArn">> => string(),
%%   <<"tunnelId">> => string()
%% }
-type tunnel_summary() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

-type close_tunnel_errors() ::
    resource_not_found_exception().

-type describe_tunnel_errors() ::
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    resource_not_found_exception().

-type open_tunnel_errors() ::
    limit_exceeded_exception().

-type rotate_tunnel_access_token_errors() ::
    resource_not_found_exception().

-type tag_resource_errors() ::
    resource_not_found_exception().

-type untag_resource_errors() ::
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Closes a tunnel identified by the unique tunnel id.
%%
%% When a `CloseTunnel'
%% request is received, we close the WebSocket connections between the client
%% and proxy
%% server so no data can be transmitted.
%%
%% Requires permission to access the CloseTunnel:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec close_tunnel(aws_client:aws_client(), close_tunnel_request()) ->
    {ok, close_tunnel_response(), tuple()} |
    {error, any()} |
    {error, close_tunnel_errors(), tuple()}.
close_tunnel(Client, Input)
  when is_map(Client), is_map(Input) ->
    close_tunnel(Client, Input, []).

-spec close_tunnel(aws_client:aws_client(), close_tunnel_request(), proplists:proplist()) ->
    {ok, close_tunnel_response(), tuple()} |
    {error, any()} |
    {error, close_tunnel_errors(), tuple()}.
close_tunnel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CloseTunnel">>, Input, Options).

%% @doc Gets information about a tunnel identified by the unique tunnel id.
%%
%% Requires permission to access the DescribeTunnel:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec describe_tunnel(aws_client:aws_client(), describe_tunnel_request()) ->
    {ok, describe_tunnel_response(), tuple()} |
    {error, any()} |
    {error, describe_tunnel_errors(), tuple()}.
describe_tunnel(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tunnel(Client, Input, []).

-spec describe_tunnel(aws_client:aws_client(), describe_tunnel_request(), proplists:proplist()) ->
    {ok, describe_tunnel_response(), tuple()} |
    {error, any()} |
    {error, describe_tunnel_errors(), tuple()}.
describe_tunnel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTunnel">>, Input, Options).

%% @doc Lists the tags for the specified resource.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc List all tunnels for an Amazon Web Services account.
%%
%% Tunnels are listed by creation time in
%% descending order, newer tunnels will be listed before older tunnels.
%%
%% Requires permission to access the ListTunnels:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_tunnels(aws_client:aws_client(), list_tunnels_request()) ->
    {ok, list_tunnels_response(), tuple()} |
    {error, any()}.
list_tunnels(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tunnels(Client, Input, []).

-spec list_tunnels(aws_client:aws_client(), list_tunnels_request(), proplists:proplist()) ->
    {ok, list_tunnels_response(), tuple()} |
    {error, any()}.
list_tunnels(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTunnels">>, Input, Options).

%% @doc Creates a new tunnel, and returns two client access tokens for
%% clients to use to
%% connect to the IoT Secure Tunneling proxy server.
%%
%% Requires permission to access the OpenTunnel:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec open_tunnel(aws_client:aws_client(), open_tunnel_request()) ->
    {ok, open_tunnel_response(), tuple()} |
    {error, any()} |
    {error, open_tunnel_errors(), tuple()}.
open_tunnel(Client, Input)
  when is_map(Client), is_map(Input) ->
    open_tunnel(Client, Input, []).

-spec open_tunnel(aws_client:aws_client(), open_tunnel_request(), proplists:proplist()) ->
    {ok, open_tunnel_response(), tuple()} |
    {error, any()} |
    {error, open_tunnel_errors(), tuple()}.
open_tunnel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"OpenTunnel">>, Input, Options).

%% @doc Revokes the current client access token (CAT) and returns new CAT for
%% clients to
%% use when reconnecting to secure tunneling to access the same tunnel.
%%
%% Requires permission to access the RotateTunnelAccessToken:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
%%
%% Rotating the CAT doesn't extend the tunnel duration. For example, say
%% the tunnel
%% duration is 12 hours and the tunnel has already been open for 4 hours.
%% When you
%% rotate the access tokens, the new tokens that are generated can only be
%% used for the
%% remaining 8 hours.
-spec rotate_tunnel_access_token(aws_client:aws_client(), rotate_tunnel_access_token_request()) ->
    {ok, rotate_tunnel_access_token_response(), tuple()} |
    {error, any()} |
    {error, rotate_tunnel_access_token_errors(), tuple()}.
rotate_tunnel_access_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    rotate_tunnel_access_token(Client, Input, []).

-spec rotate_tunnel_access_token(aws_client:aws_client(), rotate_tunnel_access_token_request(), proplists:proplist()) ->
    {ok, rotate_tunnel_access_token_response(), tuple()} |
    {error, any()} |
    {error, rotate_tunnel_access_token_errors(), tuple()}.
rotate_tunnel_access_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RotateTunnelAccessToken">>, Input, Options).

%% @doc A resource tag.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes a tag from a resource.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

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
    Client1 = Client#{service => <<"IoTSecuredTunneling">>},
    Host = build_host(<<"api.tunneling.iot">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"IoTSecuredTunneling.", Action/binary>>}
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
