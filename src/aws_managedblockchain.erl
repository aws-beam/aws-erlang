%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc
%%
%% Amazon Managed Blockchain is a fully managed service for creating and
%% managing blockchain networks using open source frameworks.
%%
%% Blockchain allows you to build applications where multiple parties can
%% securely and transparently run transactions and share data without the
%% need for a trusted, central authority. Currently, Managed Blockchain
%% supports the Hyperledger Fabric open source framework.
-module(aws_managedblockchain).

-export([create_member/3,
         create_member/4,
         create_network/2,
         create_network/3,
         create_node/4,
         create_node/5,
         create_proposal/3,
         create_proposal/4,
         delete_member/4,
         delete_member/5,
         delete_node/5,
         delete_node/6,
         get_member/3,
         get_member/4,
         get_network/2,
         get_network/3,
         get_node/4,
         get_node/5,
         get_proposal/3,
         get_proposal/4,
         list_invitations/3,
         list_invitations/4,
         list_members/7,
         list_members/8,
         list_networks/6,
         list_networks/7,
         list_nodes/6,
         list_nodes/7,
         list_proposal_votes/5,
         list_proposal_votes/6,
         list_proposals/4,
         list_proposals/5,
         reject_invitation/3,
         reject_invitation/4,
         update_member/4,
         update_member/5,
         update_node/5,
         update_node/6,
         vote_on_proposal/4,
         vote_on_proposal/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a member within a Managed Blockchain network.
create_member(Client, NetworkId, Input) ->
    create_member(Client, NetworkId, Input, []).
create_member(Client, NetworkId, Input0, Options) ->
    Method = post,
    Path = ["/networks/", http_uri:encode(NetworkId), "/members"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new blockchain network using Amazon Managed Blockchain.
create_network(Client, Input) ->
    create_network(Client, Input, []).
create_network(Client, Input0, Options) ->
    Method = post,
    Path = ["/networks"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a peer node in a member.
create_node(Client, MemberId, NetworkId, Input) ->
    create_node(Client, MemberId, NetworkId, Input, []).
create_node(Client, MemberId, NetworkId, Input0, Options) ->
    Method = post,
    Path = ["/networks/", http_uri:encode(NetworkId), "/members/", http_uri:encode(MemberId), "/nodes"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a proposal for a change to the network that other members of
%% the network can vote on, for example, a proposal to add a new member to
%% the network.
%%
%% Any member can create a proposal.
create_proposal(Client, NetworkId, Input) ->
    create_proposal(Client, NetworkId, Input, []).
create_proposal(Client, NetworkId, Input0, Options) ->
    Method = post,
    Path = ["/networks/", http_uri:encode(NetworkId), "/proposals"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a member.
%%
%% Deleting a member removes the member and all associated resources from the
%% network. `DeleteMember` can only be called for a specified `MemberId` if
%% the principal performing the action is associated with the AWS account
%% that owns the member. In all other cases, the `DeleteMember` action is
%% carried out as the result of an approved proposal to remove a member. If
%% `MemberId` is the last member in a network specified by the last AWS
%% account, the network is deleted also.
delete_member(Client, MemberId, NetworkId, Input) ->
    delete_member(Client, MemberId, NetworkId, Input, []).
delete_member(Client, MemberId, NetworkId, Input0, Options) ->
    Method = delete,
    Path = ["/networks/", http_uri:encode(NetworkId), "/members/", http_uri:encode(MemberId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a peer node from a member that your AWS account owns.
%%
%% All data on the node is lost and cannot be recovered.
delete_node(Client, MemberId, NetworkId, NodeId, Input) ->
    delete_node(Client, MemberId, NetworkId, NodeId, Input, []).
delete_node(Client, MemberId, NetworkId, NodeId, Input0, Options) ->
    Method = delete,
    Path = ["/networks/", http_uri:encode(NetworkId), "/members/", http_uri:encode(MemberId), "/nodes/", http_uri:encode(NodeId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns detailed information about a member.
get_member(Client, MemberId, NetworkId)
  when is_map(Client) ->
    get_member(Client, MemberId, NetworkId, []).
get_member(Client, MemberId, NetworkId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/networks/", http_uri:encode(NetworkId), "/members/", http_uri:encode(MemberId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns detailed information about a network.
get_network(Client, NetworkId)
  when is_map(Client) ->
    get_network(Client, NetworkId, []).
get_network(Client, NetworkId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/networks/", http_uri:encode(NetworkId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns detailed information about a peer node.
get_node(Client, MemberId, NetworkId, NodeId)
  when is_map(Client) ->
    get_node(Client, MemberId, NetworkId, NodeId, []).
get_node(Client, MemberId, NetworkId, NodeId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/networks/", http_uri:encode(NetworkId), "/members/", http_uri:encode(MemberId), "/nodes/", http_uri:encode(NodeId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns detailed information about a proposal.
get_proposal(Client, NetworkId, ProposalId)
  when is_map(Client) ->
    get_proposal(Client, NetworkId, ProposalId, []).
get_proposal(Client, NetworkId, ProposalId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/networks/", http_uri:encode(NetworkId), "/proposals/", http_uri:encode(ProposalId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a listing of all invitations for the current AWS account.
list_invitations(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_invitations(Client, MaxResults, NextToken, []).
list_invitations(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/invitations"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a listing of the members in a network and properties of their
%% configurations.
list_members(Client, NetworkId, IsOwned, MaxResults, Name, NextToken, Status)
  when is_map(Client) ->
    list_members(Client, NetworkId, IsOwned, MaxResults, Name, NextToken, Status, []).
list_members(Client, NetworkId, IsOwned, MaxResults, Name, NextToken, Status, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/networks/", http_uri:encode(NetworkId), "/members"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"isOwned">>, IsOwned},
        {<<"maxResults">>, MaxResults},
        {<<"name">>, Name},
        {<<"nextToken">>, NextToken},
        {<<"status">>, Status}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the networks in which the current AWS
%% account has members.
list_networks(Client, Framework, MaxResults, Name, NextToken, Status)
  when is_map(Client) ->
    list_networks(Client, Framework, MaxResults, Name, NextToken, Status, []).
list_networks(Client, Framework, MaxResults, Name, NextToken, Status, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/networks"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"framework">>, Framework},
        {<<"maxResults">>, MaxResults},
        {<<"name">>, Name},
        {<<"nextToken">>, NextToken},
        {<<"status">>, Status}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the nodes within a network.
list_nodes(Client, MemberId, NetworkId, MaxResults, NextToken, Status)
  when is_map(Client) ->
    list_nodes(Client, MemberId, NetworkId, MaxResults, NextToken, Status, []).
list_nodes(Client, MemberId, NetworkId, MaxResults, NextToken, Status, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/networks/", http_uri:encode(NetworkId), "/members/", http_uri:encode(MemberId), "/nodes"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"status">>, Status}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the listing of votes for a specified proposal, including the
%% value of each vote and the unique identifier of the member that cast the
%% vote.
list_proposal_votes(Client, NetworkId, ProposalId, MaxResults, NextToken)
  when is_map(Client) ->
    list_proposal_votes(Client, NetworkId, ProposalId, MaxResults, NextToken, []).
list_proposal_votes(Client, NetworkId, ProposalId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/networks/", http_uri:encode(NetworkId), "/proposals/", http_uri:encode(ProposalId), "/votes"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a listing of proposals for the network.
list_proposals(Client, NetworkId, MaxResults, NextToken)
  when is_map(Client) ->
    list_proposals(Client, NetworkId, MaxResults, NextToken, []).
list_proposals(Client, NetworkId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/networks/", http_uri:encode(NetworkId), "/proposals"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Rejects an invitation to join a network.
%%
%% This action can be called by a principal in an AWS account that has
%% received an invitation to create a member and join a network.
reject_invitation(Client, InvitationId, Input) ->
    reject_invitation(Client, InvitationId, Input, []).
reject_invitation(Client, InvitationId, Input0, Options) ->
    Method = delete,
    Path = ["/invitations/", http_uri:encode(InvitationId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a member configuration with new parameters.
update_member(Client, MemberId, NetworkId, Input) ->
    update_member(Client, MemberId, NetworkId, Input, []).
update_member(Client, MemberId, NetworkId, Input0, Options) ->
    Method = patch,
    Path = ["/networks/", http_uri:encode(NetworkId), "/members/", http_uri:encode(MemberId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a node configuration with new parameters.
update_node(Client, MemberId, NetworkId, NodeId, Input) ->
    update_node(Client, MemberId, NetworkId, NodeId, Input, []).
update_node(Client, MemberId, NetworkId, NodeId, Input0, Options) ->
    Method = patch,
    Path = ["/networks/", http_uri:encode(NetworkId), "/members/", http_uri:encode(MemberId), "/nodes/", http_uri:encode(NodeId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Casts a vote for a specified `ProposalId` on behalf of a member.
%%
%% The member to vote as, specified by `VoterMemberId`, must be in the same
%% AWS account as the principal that calls the action.
vote_on_proposal(Client, NetworkId, ProposalId, Input) ->
    vote_on_proposal(Client, NetworkId, ProposalId, Input, []).
vote_on_proposal(Client, NetworkId, ProposalId, Input0, Options) ->
    Method = post,
    Path = ["/networks/", http_uri:encode(NetworkId), "/proposals/", http_uri:encode(ProposalId), "/votes"],
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
    Client1 = Client#{service => <<"managedblockchain">>},
    Host = build_host(<<"managedblockchain">>, Client1),
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
