%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Provides managed connections between your AWS network resources and
%% select partner network resources.
-module(aws_interconnect).

-export([accept_connection_proposal/2,
         accept_connection_proposal/3,
         create_connection/2,
         create_connection/3,
         delete_connection/2,
         delete_connection/3,
         describe_connection_proposal/2,
         describe_connection_proposal/3,
         get_connection/2,
         get_connection/3,
         get_environment/2,
         get_environment/3,
         list_attach_points/2,
         list_attach_points/3,
         list_connections/2,
         list_connections/3,
         list_environments/2,
         list_environments/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_connection/2,
         update_connection/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% get_connection_request() :: #{
%%   <<"identifier">> := string()
%% }
-type get_connection_request() :: #{binary() => any()}.

%% Example:
%% update_connection_request() :: #{
%%   <<"bandwidth">> => string(),
%%   <<"clientToken">> => [string()],
%%   <<"description">> => string(),
%%   <<"identifier">> := string()
%% }
-type update_connection_request() :: #{binary() => any()}.

%% Example:
%% interconnect_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type interconnect_server_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"arn">> := string(),
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% describe_connection_proposal_request() :: #{
%%   <<"activationKey">> := string()
%% }
-type describe_connection_proposal_request() :: #{binary() => any()}.

%% Example:
%% list_attach_points_response() :: #{
%%   <<"attachPoints">> => list(attach_point_descriptor()),
%%   <<"nextToken">> => string()
%% }
-type list_attach_points_response() :: #{binary() => any()}.

%% Example:
%% accept_connection_proposal_request() :: #{
%%   <<"activationKey">> := string(),
%%   <<"attachPoint">> := list(),
%%   <<"clientToken">> => [string()],
%%   <<"description">> => string(),
%%   <<"tags">> => map()
%% }
-type accept_connection_proposal_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% list_attach_points_request() :: #{
%%   <<"environmentId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_attach_points_request() :: #{binary() => any()}.

%% Example:
%% get_connection_response() :: #{
%%   <<"connection">> => connection()
%% }
-type get_connection_response() :: #{binary() => any()}.

%% Example:
%% list_connections_response() :: #{
%%   <<"connections">> => list(connection_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_connections_response() :: #{binary() => any()}.

%% Example:
%% get_environment_request() :: #{
%%   <<"id">> := string()
%% }
-type get_environment_request() :: #{binary() => any()}.

%% Example:
%% get_environment_response() :: #{
%%   <<"environment">> => environment()
%% }
-type get_environment_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"arn">> := string(),
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% bandwidths() :: #{
%%   <<"available">> => list(string()),
%%   <<"supported">> => list(string())
%% }
-type bandwidths() :: #{binary() => any()}.

%% Example:
%% list_connections_request() :: #{
%%   <<"attachPoint">> => list(),
%%   <<"environmentId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"provider">> => list(),
%%   <<"state">> => list(any())
%% }
-type list_connections_request() :: #{binary() => any()}.

%% Example:
%% interconnect_validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type interconnect_validation_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% environment() :: #{
%%   <<"activationPageUrl">> => [string()],
%%   <<"bandwidths">> => bandwidths(),
%%   <<"environmentId">> => string(),
%%   <<"location">> => string(),
%%   <<"provider">> => list(),
%%   <<"remoteIdentifierType">> => list(any()),
%%   <<"state">> => list(any()),
%%   <<"type">> => string()
%% }
-type environment() :: #{binary() => any()}.

%% Example:
%% connection() :: #{
%%   <<"activationKey">> => string(),
%%   <<"arn">> => string(),
%%   <<"attachPoint">> => list(),
%%   <<"bandwidth">> => string(),
%%   <<"billingTier">> => integer(),
%%   <<"description">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"id">> => string(),
%%   <<"location">> => string(),
%%   <<"ownerAccount">> => string(),
%%   <<"provider">> => list(),
%%   <<"sharedId">> => string(),
%%   <<"state">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"type">> => string()
%% }
-type connection() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% describe_connection_proposal_response() :: #{
%%   <<"bandwidth">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"location">> => string(),
%%   <<"provider">> => list()
%% }
-type describe_connection_proposal_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% list_environments_request() :: #{
%%   <<"location">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"provider">> => list()
%% }
-type list_environments_request() :: #{binary() => any()}.

%% Example:
%% update_connection_response() :: #{
%%   <<"connection">> => connection()
%% }
-type update_connection_response() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% accept_connection_proposal_response() :: #{
%%   <<"connection">> => connection()
%% }
-type accept_connection_proposal_response() :: #{binary() => any()}.

%% Example:
%% attach_point_descriptor() :: #{
%%   <<"identifier">> => [string()],
%%   <<"name">> => [string()],
%%   <<"type">> => list(any())
%% }
-type attach_point_descriptor() :: #{binary() => any()}.

%% Example:
%% connection_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"attachPoint">> => list(),
%%   <<"bandwidth">> => string(),
%%   <<"billingTier">> => integer(),
%%   <<"description">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"id">> => string(),
%%   <<"location">> => string(),
%%   <<"provider">> => list(),
%%   <<"sharedId">> => string(),
%%   <<"state">> => list(any()),
%%   <<"type">> => string()
%% }
-type connection_summary() :: #{binary() => any()}.

%% Example:
%% interconnect_client_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type interconnect_client_exception() :: #{binary() => any()}.

%% Example:
%% delete_connection_response() :: #{
%%   <<"connection">> => connection()
%% }
-type delete_connection_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"arn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% list_environments_response() :: #{
%%   <<"environments">> => list(environment()),
%%   <<"nextToken">> => [string()]
%% }
-type list_environments_response() :: #{binary() => any()}.

%% Example:
%% create_connection_response() :: #{
%%   <<"connection">> => connection()
%% }
-type create_connection_response() :: #{binary() => any()}.

%% Example:
%% delete_connection_request() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"identifier">> := string()
%% }
-type delete_connection_request() :: #{binary() => any()}.

%% Example:
%% create_connection_request() :: #{
%%   <<"attachPoint">> := list(),
%%   <<"bandwidth">> := string(),
%%   <<"clientToken">> => [string()],
%%   <<"description">> => string(),
%%   <<"environmentId">> := string(),
%%   <<"remoteAccount">> => list(),
%%   <<"tags">> => map()
%% }
-type create_connection_request() :: #{binary() => any()}.



%%====================================================================
%% API
%%====================================================================

%% @doc Accepts a connection proposal which was generated at a supported
%% partner's portal.
%%
%% The proposal contains the Environment and bandwidth that were chosen on
%% the partner's portal and cannot be modified.
%%
%% Upon accepting the proposal a connection will be made between the AWS
%% network as accessed via the selected Attach Point and the network
%% previously selected network on the partner's portal.
-spec accept_connection_proposal(aws_client:aws_client(), accept_connection_proposal_request()) ->
    {ok, accept_connection_proposal_response(), tuple()} |
    {error, any()}.
accept_connection_proposal(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_connection_proposal(Client, Input, []).

-spec accept_connection_proposal(aws_client:aws_client(), accept_connection_proposal_request(), proplists:proplist()) ->
    {ok, accept_connection_proposal_response(), tuple()} |
    {error, any()}.
accept_connection_proposal(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptConnectionProposal">>, Input, Options).

%% @doc Initiates the process to create a Connection across the specified
%% Environment.
%%
%% The Environment dictates the specified partner and location to which the
%% other end of the connection should attach. You can see a list of the
%% available Environments by calling `ListEnvironments'
%%
%% The Attach Point specifies where within the AWS Network your connection
%% will logically connect.
%%
%% After a successful call to this method, the resulting `Connection'
%% will return an Activation Key which will need to be brought to the
%% specific partner's portal to confirm the `Connection' on both
%% sides. (See `Environment$activationPageUrl' for a direct link to the
%% partner portal).
-spec create_connection(aws_client:aws_client(), create_connection_request()) ->
    {ok, create_connection_response(), tuple()} |
    {error, any()}.
create_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_connection(Client, Input, []).

-spec create_connection(aws_client:aws_client(), create_connection_request(), proplists:proplist()) ->
    {ok, create_connection_response(), tuple()} |
    {error, any()}.
create_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConnection">>, Input, Options).

%% @doc Deletes an existing Connection with the supplied identifier.
%%
%% This operation will also inform the remote partner of your intention to
%% delete your connection. Note, the partner may still require you to delete
%% to fully clean up resources, but the network connectivity provided by the
%% `Connection' will cease to exist.
-spec delete_connection(aws_client:aws_client(), delete_connection_request()) ->
    {ok, delete_connection_response(), tuple()} |
    {error, any()}.
delete_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_connection(Client, Input, []).

-spec delete_connection(aws_client:aws_client(), delete_connection_request(), proplists:proplist()) ->
    {ok, delete_connection_response(), tuple()} |
    {error, any()}.
delete_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConnection">>, Input, Options).

%% @doc Describes the details of a connection proposal generated at a
%% partner's portal.
-spec describe_connection_proposal(aws_client:aws_client(), describe_connection_proposal_request()) ->
    {ok, describe_connection_proposal_response(), tuple()} |
    {error, any()}.
describe_connection_proposal(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_connection_proposal(Client, Input, []).

-spec describe_connection_proposal(aws_client:aws_client(), describe_connection_proposal_request(), proplists:proplist()) ->
    {ok, describe_connection_proposal_response(), tuple()} |
    {error, any()}.
describe_connection_proposal(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConnectionProposal">>, Input, Options).

%% @doc Describes the current state of a Connection resource as specified by
%% the identifier.
-spec get_connection(aws_client:aws_client(), get_connection_request()) ->
    {ok, get_connection_response(), tuple()} |
    {error, any()}.
get_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_connection(Client, Input, []).

-spec get_connection(aws_client:aws_client(), get_connection_request(), proplists:proplist()) ->
    {ok, get_connection_response(), tuple()} |
    {error, any()}.
get_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetConnection">>, Input, Options).

%% @doc Describes a specific `Environment'
-spec get_environment(aws_client:aws_client(), get_environment_request()) ->
    {ok, get_environment_response(), tuple()} |
    {error, any()}.
get_environment(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_environment(Client, Input, []).

-spec get_environment(aws_client:aws_client(), get_environment_request(), proplists:proplist()) ->
    {ok, get_environment_response(), tuple()} |
    {error, any()}.
get_environment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEnvironment">>, Input, Options).

%% @doc Lists all Attach Points the caller has access to that are valid for
%% the specified `Environment'.
-spec list_attach_points(aws_client:aws_client(), list_attach_points_request()) ->
    {ok, list_attach_points_response(), tuple()} |
    {error, any()}.
list_attach_points(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_attach_points(Client, Input, []).

-spec list_attach_points(aws_client:aws_client(), list_attach_points_request(), proplists:proplist()) ->
    {ok, list_attach_points_response(), tuple()} |
    {error, any()}.
list_attach_points(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAttachPoints">>, Input, Options).

%% @doc Lists all connection objects to which the caller has access.
%%
%% Allows for optional filtering by the following properties:
%%
%% `state'
%%
%% `environmentId'
%%
%% `provider'
%%
%% `attach point'
%%
%% Only `Connection' objects matching all filters will be returned.
-spec list_connections(aws_client:aws_client(), list_connections_request()) ->
    {ok, list_connections_response(), tuple()} |
    {error, any()}.
list_connections(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_connections(Client, Input, []).

-spec list_connections(aws_client:aws_client(), list_connections_request(), proplists:proplist()) ->
    {ok, list_connections_response(), tuple()} |
    {error, any()}.
list_connections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListConnections">>, Input, Options).

%% @doc Lists all of the environments that can produce connections that will
%% land in the called AWS region.
-spec list_environments(aws_client:aws_client(), list_environments_request()) ->
    {ok, list_environments_response(), tuple()} |
    {error, any()}.
list_environments(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_environments(Client, Input, []).

-spec list_environments(aws_client:aws_client(), list_environments_request(), proplists:proplist()) ->
    {ok, list_environments_response(), tuple()} |
    {error, any()}.
list_environments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEnvironments">>, Input, Options).

%% @doc List all current tags on the specified resource.
%%
%% Currently this supports `Connection' resources.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Add new tags to the specified resource.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes tags from the specified resource.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Modifies an existing connection.
%%
%% Currently we support modifications to the connection's description
%% and/or bandwidth.
-spec update_connection(aws_client:aws_client(), update_connection_request()) ->
    {ok, update_connection_response(), tuple()} |
    {error, any()}.
update_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_connection(Client, Input, []).

-spec update_connection(aws_client:aws_client(), update_connection_request(), proplists:proplist()) ->
    {ok, update_connection_response(), tuple()} |
    {error, any()}.
update_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateConnection">>, Input, Options).

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
    Client1 = Client#{service => <<"interconnect">>},
    Host = build_host(<<"interconnect">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"Interconnect.", Action/binary>>}
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
