%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Detective uses machine learning and purpose-built visualizations to
%% help you analyze and investigate security issues across your Amazon Web
%% Services (AWS) workloads.
%%
%% Detective automatically extracts time-based events such as login attempts,
%% API calls, and network traffic from AWS CloudTrail and Amazon Virtual
%% Private Cloud (Amazon VPC) flow logs. It also extracts findings detected
%% by Amazon GuardDuty.
%%
%% The Detective API primarily supports the creation and management of
%% behavior graphs. A behavior graph contains the extracted data from a set
%% of member accounts, and is created and managed by a master account.
%%
%% Every behavior graph is specific to a Region. You can only use the API to
%% manage graphs that belong to the Region that is associated with the
%% currently selected endpoint.
%%
%% A Detective master account can use the Detective API to do the following:
%%
%% <ul> <li> Enable and disable Detective. Enabling Detective creates a new
%% behavior graph.
%%
%% </li> <li> View the list of member accounts in a behavior graph.
%%
%% </li> <li> Add member accounts to a behavior graph.
%%
%% </li> <li> Remove member accounts from a behavior graph.
%%
%% </li> </ul> A member account can use the Detective API to do the
%% following:
%%
%% <ul> <li> View the list of behavior graphs that they are invited to.
%%
%% </li> <li> Accept an invitation to contribute to a behavior graph.
%%
%% </li> <li> Decline an invitation to contribute to a behavior graph.
%%
%% </li> <li> Remove their account from a behavior graph.
%%
%% </li> </ul> All API actions are logged as CloudTrail events. See Logging
%% Detective API Calls with CloudTrail.
-module(aws_detective).

-export([accept_invitation/2,
         accept_invitation/3,
         create_graph/2,
         create_graph/3,
         create_members/2,
         create_members/3,
         delete_graph/2,
         delete_graph/3,
         delete_members/2,
         delete_members/3,
         disassociate_membership/2,
         disassociate_membership/3,
         get_members/2,
         get_members/3,
         list_graphs/2,
         list_graphs/3,
         list_invitations/2,
         list_invitations/3,
         list_members/2,
         list_members/3,
         reject_invitation/2,
         reject_invitation/3,
         start_monitoring_member/2,
         start_monitoring_member/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Accepts an invitation for the member account to contribute data to a
%% behavior graph.
%%
%% This operation can only be called by an invited member account.
%%
%% The request provides the ARN of behavior graph.
%%
%% The member account status in the graph must be `INVITED'.
accept_invitation(Client, Input) ->
    accept_invitation(Client, Input, []).
accept_invitation(Client, Input0, Options) ->
    Method = put,
    Path = ["/invitation"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new behavior graph for the calling account, and sets that
%% account as the master account.
%%
%% This operation is called by the account that is enabling Detective.
%%
%% Before you try to enable Detective, make sure that your account has been
%% enrolled in Amazon GuardDuty for at least 48 hours. If you do not meet
%% this requirement, you cannot enable Detective. If you do meet the
%% GuardDuty prerequisite, then when you make the request to enable
%% Detective, it checks whether your data volume is within the Detective
%% quota. If it exceeds the quota, then you cannot enable Detective.
%%
%% The operation also enables Detective for the calling account in the
%% currently selected Region. It returns the ARN of the new behavior graph.
%%
%% `CreateGraph' triggers a process to create the corresponding data tables
%% for the new behavior graph.
%%
%% An account can only be the master account for one behavior graph within a
%% Region. If the same account calls `CreateGraph' with the same master
%% account, it always returns the same behavior graph ARN. It does not create
%% a new behavior graph.
create_graph(Client, Input) ->
    create_graph(Client, Input, []).
create_graph(Client, Input0, Options) ->
    Method = post,
    Path = ["/graph"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Sends a request to invite the specified AWS accounts to be member
%% accounts in the behavior graph.
%%
%% This operation can only be called by the master account for a behavior
%% graph.
%%
%% `CreateMembers' verifies the accounts and then sends invitations to the
%% verified accounts.
%%
%% The request provides the behavior graph ARN and the list of accounts to
%% invite.
%%
%% The response separates the requested accounts into two lists:
%%
%% <ul> <li> The accounts that `CreateMembers' was able to start the
%% verification for. This list includes member accounts that are being
%% verified, that have passed verification and are being sent an invitation,
%% and that have failed verification.
%%
%% </li> <li> The accounts that `CreateMembers' was unable to process. This
%% list includes accounts that were already invited to be member accounts in
%% the behavior graph.
%%
%% </li> </ul>
create_members(Client, Input) ->
    create_members(Client, Input, []).
create_members(Client, Input0, Options) ->
    Method = post,
    Path = ["/graph/members"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disables the specified behavior graph and queues it to be deleted.
%%
%% This operation removes the graph from each member account's list of
%% behavior graphs.
%%
%% `DeleteGraph' can only be called by the master account for a behavior
%% graph.
delete_graph(Client, Input) ->
    delete_graph(Client, Input, []).
delete_graph(Client, Input0, Options) ->
    Method = post,
    Path = ["/graph/removal"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes one or more member accounts from the master account behavior
%% graph.
%%
%% This operation can only be called by a Detective master account. That
%% account cannot use `DeleteMembers' to delete their own account from the
%% behavior graph. To disable a behavior graph, the master account uses the
%% `DeleteGraph' API method.
delete_members(Client, Input) ->
    delete_members(Client, Input, []).
delete_members(Client, Input0, Options) ->
    Method = post,
    Path = ["/graph/members/removal"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the member account from the specified behavior graph.
%%
%% This operation can only be called by a member account that has the
%% `ENABLED' status.
disassociate_membership(Client, Input) ->
    disassociate_membership(Client, Input, []).
disassociate_membership(Client, Input0, Options) ->
    Method = post,
    Path = ["/membership/removal"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the membership details for specified member accounts for a
%% behavior graph.
get_members(Client, Input) ->
    get_members(Client, Input, []).
get_members(Client, Input0, Options) ->
    Method = post,
    Path = ["/graph/members/get"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the list of behavior graphs that the calling account is a
%% master of.
%%
%% This operation can only be called by a master account.
%%
%% Because an account can currently only be the master of one behavior graph
%% within a Region, the results always contain a single graph.
list_graphs(Client, Input) ->
    list_graphs(Client, Input, []).
list_graphs(Client, Input0, Options) ->
    Method = post,
    Path = ["/graphs/list"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the list of open and accepted behavior graph invitations
%% for the member account.
%%
%% This operation can only be called by a member account.
%%
%% Open invitations are invitations that the member account has not responded
%% to.
%%
%% The results do not include behavior graphs for which the member account
%% declined the invitation. The results also do not include behavior graphs
%% that the member account resigned from or was removed from.
list_invitations(Client, Input) ->
    list_invitations(Client, Input, []).
list_invitations(Client, Input0, Options) ->
    Method = post,
    Path = ["/invitations/list"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the list of member accounts for a behavior graph.
%%
%% Does not return member accounts that were removed from the behavior graph.
list_members(Client, Input) ->
    list_members(Client, Input, []).
list_members(Client, Input0, Options) ->
    Method = post,
    Path = ["/graph/members/list"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Rejects an invitation to contribute the account data to a behavior
%% graph.
%%
%% This operation must be called by a member account that has the `INVITED'
%% status.
reject_invitation(Client, Input) ->
    reject_invitation(Client, Input, []).
reject_invitation(Client, Input0, Options) ->
    Method = post,
    Path = ["/invitation/removal"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Sends a request to enable data ingest for a member account that has a
%% status of `ACCEPTED_BUT_DISABLED'.
%%
%% For valid member accounts, the status is updated as follows.
%%
%% <ul> <li> If Detective enabled the member account, then the new status is
%% `ENABLED'.
%%
%% </li> <li> If Detective cannot enable the member account, the status
%% remains `ACCEPTED_BUT_DISABLED'.
%%
%% </li> </ul>
start_monitoring_member(Client, Input) ->
    start_monitoring_member(Client, Input, []).
start_monitoring_member(Client, Input0, Options) ->
    Method = post,
    Path = ["/graph/member/monitoringstate"],
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
    Client1 = Client#{service => <<"detective">>},
    Host = build_host(<<"api.detective">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(should_send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        undefined ->
          encode_payload(Input)
      end,

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
