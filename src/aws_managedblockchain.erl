%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc
%%
%% Amazon Managed Blockchain is a fully managed service for creating and
%% managing blockchain networks using open-source frameworks.
%%
%% Blockchain allows you to build applications where multiple parties can
%% securely and transparently run transactions and share data without the
%% need for a trusted, central authority.
%%
%% Managed Blockchain supports the Hyperledger Fabric and Ethereum
%% open-source frameworks. Because of fundamental differences between the
%% frameworks, some API actions or data types may only apply in the context
%% of one framework and not the other. For example, actions related to
%% Hyperledger Fabric network members such as `CreateMember' and
%% `DeleteMember' don't apply to Ethereum.
%%
%% The description for each action indicates the framework or frameworks to
%% which it applies. Data types and properties that apply only in the context
%% of a particular framework are similarly indicated.
-module(aws_managedblockchain).

-export([create_accessor/2,
         create_accessor/3,
         create_member/3,
         create_member/4,
         create_network/2,
         create_network/3,
         create_node/3,
         create_node/4,
         create_proposal/3,
         create_proposal/4,
         delete_accessor/3,
         delete_accessor/4,
         delete_member/4,
         delete_member/5,
         delete_node/4,
         delete_node/5,
         get_accessor/2,
         get_accessor/4,
         get_accessor/5,
         get_member/3,
         get_member/5,
         get_member/6,
         get_network/2,
         get_network/4,
         get_network/5,
         get_node/3,
         get_node/5,
         get_node/6,
         get_proposal/3,
         get_proposal/5,
         get_proposal/6,
         list_accessors/1,
         list_accessors/3,
         list_accessors/4,
         list_invitations/1,
         list_invitations/3,
         list_invitations/4,
         list_members/2,
         list_members/4,
         list_members/5,
         list_networks/1,
         list_networks/3,
         list_networks/4,
         list_nodes/2,
         list_nodes/4,
         list_nodes/5,
         list_proposal_votes/3,
         list_proposal_votes/5,
         list_proposal_votes/6,
         list_proposals/2,
         list_proposals/4,
         list_proposals/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         reject_invitation/3,
         reject_invitation/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_member/4,
         update_member/5,
         update_node/4,
         update_node/5,
         vote_on_proposal/4,
         vote_on_proposal/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc The token based access feature is in preview release for Ethereum on
%% Amazon Managed Blockchain and is subject to change.
%%
%% We recommend that you use this feature only with test scenarios, and not
%% in production environments.
%%
%% Creates a new accessor for use with Managed Blockchain Ethereum nodes. An
%% accessor object is a container that has the information required for token
%% based access to your Ethereum nodes.
create_accessor(Client, Input) ->
    create_accessor(Client, Input, []).
create_accessor(Client, Input0, Options0) ->
    Method = post,
    Path = ["/accessors"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a member within a Managed Blockchain network.
%%
%% Applies only to Hyperledger Fabric.
create_member(Client, NetworkId, Input) ->
    create_member(Client, NetworkId, Input, []).
create_member(Client, NetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/members"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new blockchain network using Amazon Managed Blockchain.
%%
%% Applies only to Hyperledger Fabric.
create_network(Client, Input) ->
    create_network(Client, Input, []).
create_network(Client, Input0, Options0) ->
    Method = post,
    Path = ["/networks"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a node on the specified blockchain network.
%%
%% Applies to Hyperledger Fabric and Ethereum.
create_node(Client, NetworkId, Input) ->
    create_node(Client, NetworkId, Input, []).
create_node(Client, NetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/nodes"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a proposal for a change to the network that other members of
%% the network can vote on, for example, a proposal to add a new member to
%% the network.
%%
%% Any member can create a proposal.
%%
%% Applies only to Hyperledger Fabric.
create_proposal(Client, NetworkId, Input) ->
    create_proposal(Client, NetworkId, Input, []).
create_proposal(Client, NetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/proposals"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The token based access feature is in preview release for Ethereum on
%% Amazon Managed Blockchain and is subject to change.
%%
%% We recommend that you use this feature only with test scenarios, and not
%% in production environments.
%%
%% Deletes an accessor that your Amazon Web Services account owns. An
%% accessor object is a container that has the information required for token
%% based access to your Ethereum nodes including, the `BILLING_TOKEN'. After
%% an accessor is deleted, the status of the accessor changes from
%% `AVAILABLE' to `PENDING_DELETION'. An accessor in the `PENDING_DELETION'
%% state can’t be used for new WebSocket requests or HTTP requests. However,
%% WebSocket connections that were initiated while the accessor was in the
%% `AVAILABLE' state remain open until they expire (up to 2 hours).
delete_accessor(Client, AccessorId, Input) ->
    delete_accessor(Client, AccessorId, Input, []).
delete_accessor(Client, AccessorId, Input0, Options0) ->
    Method = delete,
    Path = ["/accessors/", aws_util:encode_uri(AccessorId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a member.
%%
%% Deleting a member removes the member and all associated resources from the
%% network. `DeleteMember' can only be called for a specified `MemberId' if
%% the principal performing the action is associated with the Amazon Web
%% Services account that owns the member. In all other cases, the
%% `DeleteMember' action is carried out as the result of an approved proposal
%% to remove a member. If `MemberId' is the last member in a network
%% specified by the last Amazon Web Services account, the network is deleted
%% also.
%%
%% Applies only to Hyperledger Fabric.
delete_member(Client, MemberId, NetworkId, Input) ->
    delete_member(Client, MemberId, NetworkId, Input, []).
delete_member(Client, MemberId, NetworkId, Input0, Options0) ->
    Method = delete,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/members/", aws_util:encode_uri(MemberId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a node that your Amazon Web Services account owns.
%%
%% All data on the node is lost and cannot be recovered.
%%
%% Applies to Hyperledger Fabric and Ethereum.
delete_node(Client, NetworkId, NodeId, Input) ->
    delete_node(Client, NetworkId, NodeId, Input, []).
delete_node(Client, NetworkId, NodeId, Input0, Options0) ->
    Method = delete,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/nodes/", aws_util:encode_uri(NodeId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"memberId">>, <<"MemberId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The token based access feature is in preview release for Ethereum on
%% Amazon Managed Blockchain and is subject to change.
%%
%% We recommend that you use this feature only with test scenarios, and not
%% in production environments.
%%
%% Returns detailed information about an accessor. An accessor object is a
%% container that has the information required for token based access to your
%% Ethereum nodes.
get_accessor(Client, AccessorId)
  when is_map(Client) ->
    get_accessor(Client, AccessorId, #{}, #{}).

get_accessor(Client, AccessorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_accessor(Client, AccessorId, QueryMap, HeadersMap, []).

get_accessor(Client, AccessorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accessors/", aws_util:encode_uri(AccessorId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns detailed information about a member.
%%
%% Applies only to Hyperledger Fabric.
get_member(Client, MemberId, NetworkId)
  when is_map(Client) ->
    get_member(Client, MemberId, NetworkId, #{}, #{}).

get_member(Client, MemberId, NetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_member(Client, MemberId, NetworkId, QueryMap, HeadersMap, []).

get_member(Client, MemberId, NetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/members/", aws_util:encode_uri(MemberId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns detailed information about a network.
%%
%% Applies to Hyperledger Fabric and Ethereum.
get_network(Client, NetworkId)
  when is_map(Client) ->
    get_network(Client, NetworkId, #{}, #{}).

get_network(Client, NetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_network(Client, NetworkId, QueryMap, HeadersMap, []).

get_network(Client, NetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns detailed information about a node.
%%
%% Applies to Hyperledger Fabric and Ethereum.
get_node(Client, NetworkId, NodeId)
  when is_map(Client) ->
    get_node(Client, NetworkId, NodeId, #{}, #{}).

get_node(Client, NetworkId, NodeId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_node(Client, NetworkId, NodeId, QueryMap, HeadersMap, []).

get_node(Client, NetworkId, NodeId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/nodes/", aws_util:encode_uri(NodeId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"memberId">>, maps:get(<<"memberId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns detailed information about a proposal.
%%
%% Applies only to Hyperledger Fabric.
get_proposal(Client, NetworkId, ProposalId)
  when is_map(Client) ->
    get_proposal(Client, NetworkId, ProposalId, #{}, #{}).

get_proposal(Client, NetworkId, ProposalId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_proposal(Client, NetworkId, ProposalId, QueryMap, HeadersMap, []).

get_proposal(Client, NetworkId, ProposalId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/proposals/", aws_util:encode_uri(ProposalId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The token based access feature is in preview release for Ethereum on
%% Amazon Managed Blockchain and is subject to change.
%%
%% We recommend that you use this feature only with test scenarios, and not
%% in production environments.
%%
%% Returns a list of the accessors and their properties. Accessor objects are
%% containers that have the information required for token based access to
%% your Ethereum nodes.
list_accessors(Client)
  when is_map(Client) ->
    list_accessors(Client, #{}, #{}).

list_accessors(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_accessors(Client, QueryMap, HeadersMap, []).

list_accessors(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accessors"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all invitations for the current Amazon Web Services
%% account.
%%
%% Applies only to Hyperledger Fabric.
list_invitations(Client)
  when is_map(Client) ->
    list_invitations(Client, #{}, #{}).

list_invitations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_invitations(Client, QueryMap, HeadersMap, []).

list_invitations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/invitations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the members in a network and properties of their
%% configurations.
%%
%% Applies only to Hyperledger Fabric.
list_members(Client, NetworkId)
  when is_map(Client) ->
    list_members(Client, NetworkId, #{}, #{}).

list_members(Client, NetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_members(Client, NetworkId, QueryMap, HeadersMap, []).

list_members(Client, NetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/members"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"isOwned">>, maps:get(<<"isOwned">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the networks in which the current Amazon
%% Web Services account participates.
%%
%% Applies to Hyperledger Fabric and Ethereum.
list_networks(Client)
  when is_map(Client) ->
    list_networks(Client, #{}, #{}).

list_networks(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_networks(Client, QueryMap, HeadersMap, []).

list_networks(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"framework">>, maps:get(<<"framework">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the nodes within a network.
%%
%% Applies to Hyperledger Fabric and Ethereum.
list_nodes(Client, NetworkId)
  when is_map(Client) ->
    list_nodes(Client, NetworkId, #{}, #{}).

list_nodes(Client, NetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_nodes(Client, NetworkId, QueryMap, HeadersMap, []).

list_nodes(Client, NetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/nodes"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"memberId">>, maps:get(<<"memberId">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the list of votes for a specified proposal, including the
%% value of each vote and the unique identifier of the member that cast the
%% vote.
%%
%% Applies only to Hyperledger Fabric.
list_proposal_votes(Client, NetworkId, ProposalId)
  when is_map(Client) ->
    list_proposal_votes(Client, NetworkId, ProposalId, #{}, #{}).

list_proposal_votes(Client, NetworkId, ProposalId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_proposal_votes(Client, NetworkId, ProposalId, QueryMap, HeadersMap, []).

list_proposal_votes(Client, NetworkId, ProposalId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/proposals/", aws_util:encode_uri(ProposalId), "/votes"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of proposals for the network.
%%
%% Applies only to Hyperledger Fabric.
list_proposals(Client, NetworkId)
  when is_map(Client) ->
    list_proposals(Client, NetworkId, #{}, #{}).

list_proposals(Client, NetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_proposals(Client, NetworkId, QueryMap, HeadersMap, []).

list_proposals(Client, NetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/proposals"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of tags for the specified resource.
%%
%% Each tag consists of a key and optional value.
%%
%% For more information about tags, see Tagging Resources in the Amazon
%% Managed Blockchain Ethereum Developer Guide, or Tagging Resources in the
%% Amazon Managed Blockchain Hyperledger Fabric Developer Guide.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Rejects an invitation to join a network.
%%
%% This action can be called by a principal in an Amazon Web Services account
%% that has received an invitation to create a member and join a network.
%%
%% Applies only to Hyperledger Fabric.
reject_invitation(Client, InvitationId, Input) ->
    reject_invitation(Client, InvitationId, Input, []).
reject_invitation(Client, InvitationId, Input0, Options0) ->
    Method = delete,
    Path = ["/invitations/", aws_util:encode_uri(InvitationId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds or overwrites the specified tags for the specified Amazon
%% Managed Blockchain resource.
%%
%% Each tag consists of a key and optional value.
%%
%% When you specify a tag key that already exists, the tag value is
%% overwritten with the new value. Use `UntagResource' to remove tag keys.
%%
%% A resource can have up to 50 tags. If you try to create more than 50 tags
%% for a resource, your request fails and returns an error.
%%
%% For more information about tags, see Tagging Resources in the Amazon
%% Managed Blockchain Ethereum Developer Guide, or Tagging Resources in the
%% Amazon Managed Blockchain Hyperledger Fabric Developer Guide.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the specified tags from the Amazon Managed Blockchain
%% resource.
%%
%% For more information about tags, see Tagging Resources in the Amazon
%% Managed Blockchain Ethereum Developer Guide, or Tagging Resources in the
%% Amazon Managed Blockchain Hyperledger Fabric Developer Guide.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a member configuration with new parameters.
%%
%% Applies only to Hyperledger Fabric.
update_member(Client, MemberId, NetworkId, Input) ->
    update_member(Client, MemberId, NetworkId, Input, []).
update_member(Client, MemberId, NetworkId, Input0, Options0) ->
    Method = patch,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/members/", aws_util:encode_uri(MemberId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a node configuration with new parameters.
%%
%% Applies only to Hyperledger Fabric.
update_node(Client, NetworkId, NodeId, Input) ->
    update_node(Client, NetworkId, NodeId, Input, []).
update_node(Client, NetworkId, NodeId, Input0, Options0) ->
    Method = patch,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/nodes/", aws_util:encode_uri(NodeId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Casts a vote for a specified `ProposalId' on behalf of a member.
%%
%% The member to vote as, specified by `VoterMemberId', must be in the same
%% Amazon Web Services account as the principal that calls the action.
%%
%% Applies only to Hyperledger Fabric.
vote_on_proposal(Client, NetworkId, ProposalId, Input) ->
    vote_on_proposal(Client, NetworkId, ProposalId, Input, []).
vote_on_proposal(Client, NetworkId, ProposalId, Input0, Options0) ->
    Method = post,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/proposals/", aws_util:encode_uri(ProposalId), "/votes"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, {integer(), list()}} |
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
  RequestFun = fun() -> do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) end,
  aws_request:request(RequestFun, Options).

do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"managedblockchain">>},
    Host = build_host(<<"managedblockchain">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,
    AdditionalHeaders = case proplists:get_value(append_sha256_content_hash, Options, false) of
                          true ->
                            add_checksum_hash_header(AdditionalHeaders1, Payload);
                          false ->
                            AdditionalHeaders1
                        end,
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

add_checksum_hash_header(Headers, Body) ->
  [ {<<"X-Amz-CheckSum-SHA256">>, base64:encode(crypto:hash(sha256, Body))}
  | Headers
  ].

handle_response({ok, StatusCode, ResponseHeaders}, SuccessStatusCode, _DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    {ok, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders}, _, _DecodeBody) ->
    {error, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = case DecodeBody of
                       true ->
                         try
                           jsx:decode(Body)
                         catch
                           Error:Reason:Stack ->
                             erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
                         end;
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _, _DecodeBody) ->
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
