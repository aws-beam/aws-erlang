%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Data Lifecycle Manager
%%
%% With Amazon Data Lifecycle Manager, you can manage the lifecycle of your
%% AWS resources.
%%
%% You create lifecycle policies, which are used to automate operations on
%% the specified resources.
%%
%% Amazon DLM supports Amazon EBS volumes and snapshots. For information
%% about using Amazon DLM with Amazon EBS, see Automating the Amazon EBS
%% Snapshot Lifecycle in the Amazon EC2 User Guide.
-module(aws_dlm).

-export([create_lifecycle_policy/2,
         create_lifecycle_policy/3,
         delete_lifecycle_policy/3,
         delete_lifecycle_policy/4,
         get_lifecycle_policies/6,
         get_lifecycle_policies/7,
         get_lifecycle_policy/2,
         get_lifecycle_policy/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_lifecycle_policy/3,
         update_lifecycle_policy/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a policy to manage the lifecycle of the specified AWS
%% resources.
%%
%% You can create up to 100 lifecycle policies.
create_lifecycle_policy(Client, Input) ->
    create_lifecycle_policy(Client, Input, []).
create_lifecycle_policy(Client, Input0, Options) ->
    Method = post,
    Path = ["/policies"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified lifecycle policy and halts the automated
%% operations that the policy specified.
delete_lifecycle_policy(Client, PolicyId, Input) ->
    delete_lifecycle_policy(Client, PolicyId, Input, []).
delete_lifecycle_policy(Client, PolicyId, Input0, Options) ->
    Method = delete,
    Path = ["/policies/", http_uri:encode(PolicyId), "/"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets summary information about all or the specified data lifecycle
%% policies.
%%
%% To get complete information about a policy, use `GetLifecyclePolicy`.
get_lifecycle_policies(Client, PolicyIds, ResourceTypes, State, TagsToAdd, TargetTags)
  when is_map(Client) ->
    get_lifecycle_policies(Client, PolicyIds, ResourceTypes, State, TagsToAdd, TargetTags, []).
get_lifecycle_policies(Client, PolicyIds, ResourceTypes, State, TagsToAdd, TargetTags, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/policies"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"policyIds">>, PolicyIds},
        {<<"resourceTypes">>, ResourceTypes},
        {<<"state">>, State},
        {<<"tagsToAdd">>, TagsToAdd},
        {<<"targetTags">>, TargetTags}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets detailed information about the specified lifecycle policy.
get_lifecycle_policy(Client, PolicyId)
  when is_map(Client) ->
    get_lifecycle_policy(Client, PolicyId, []).
get_lifecycle_policy(Client, PolicyId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/policies/", http_uri:encode(PolicyId), "/"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags for the specified resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, []).
list_tags_for_resource(Client, ResourceArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/tags/", http_uri:encode(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Adds the specified tags to the specified resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/tags/", http_uri:encode(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the specified tags from the specified resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/tags/", http_uri:encode(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the specified lifecycle policy.
update_lifecycle_policy(Client, PolicyId, Input) ->
    update_lifecycle_policy(Client, PolicyId, Input, []).
update_lifecycle_policy(Client, PolicyId, Input0, Options) ->
    Method = patch,
    Path = ["/policies/", http_uri:encode(PolicyId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"dlm">>},
    Host = build_host(<<"dlm">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),
    Payload = encode_payload(Input),
    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    handle_response(Response, SuccessStatusCode).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
