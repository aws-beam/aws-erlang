%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Identity Store service used by IAM Identity Center provides a
%% single place to retrieve all of your identities (users and groups).
%%
%% For more information, see the IAM Identity Center User Guide:
%% https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html.
%%
%% This reference guide describes the identity store operations that you can
%% call programmatically and includes detailed information about data types
%% and errors.
%%
%% IAM Identity Center uses the `sso' and `identitystore' API
%% namespaces.
-module(aws_identitystore).

-export([create_group/2,
         create_group/3,
         create_group_membership/2,
         create_group_membership/3,
         create_user/2,
         create_user/3,
         delete_group/2,
         delete_group/3,
         delete_group_membership/2,
         delete_group_membership/3,
         delete_user/2,
         delete_user/3,
         describe_group/2,
         describe_group/3,
         describe_group_membership/2,
         describe_group_membership/3,
         describe_user/2,
         describe_user/3,
         get_group_id/2,
         get_group_id/3,
         get_group_membership_id/2,
         get_group_membership_id/3,
         get_user_id/2,
         get_user_id/3,
         is_member_in_groups/2,
         is_member_in_groups/3,
         list_group_memberships/2,
         list_group_memberships/3,
         list_group_memberships_for_member/2,
         list_group_memberships_for_member/3,
         list_groups/2,
         list_groups/3,
         list_users/2,
         list_users/3,
         update_group/2,
         update_group/3,
         update_user/2,
         update_user/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a group within the specified identity store.
create_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_group(Client, Input, []).
create_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGroup">>, Input, Options).

%% @doc Creates a relationship between a member and a group.
%%
%% The following identifiers must be specified: `GroupId',
%% `IdentityStoreId', and `MemberId'.
create_group_membership(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_group_membership(Client, Input, []).
create_group_membership(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGroupMembership">>, Input, Options).

%% @doc Creates a user within the specified identity store.
create_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user(Client, Input, []).
create_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUser">>, Input, Options).

%% @doc Delete a group within an identity store given `GroupId'.
delete_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_group(Client, Input, []).
delete_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGroup">>, Input, Options).

%% @doc Delete a membership within a group given `MembershipId'.
delete_group_membership(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_group_membership(Client, Input, []).
delete_group_membership(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGroupMembership">>, Input, Options).

%% @doc Deletes a user within an identity store given `UserId'.
delete_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user(Client, Input, []).
delete_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUser">>, Input, Options).

%% @doc Retrieves the group metadata and attributes from `GroupId' in an
%% identity store.
%%
%% If you have administrator access to a member account, you can use this API
%% from the member account. Read about member accounts:
%% https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html
%% in the Organizations User Guide.
describe_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_group(Client, Input, []).
describe_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeGroup">>, Input, Options).

%% @doc Retrieves membership metadata and attributes from `MembershipId'
%% in an identity store.
%%
%% If you have administrator access to a member account, you can use this API
%% from the member account. Read about member accounts:
%% https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html
%% in the Organizations User Guide.
describe_group_membership(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_group_membership(Client, Input, []).
describe_group_membership(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeGroupMembership">>, Input, Options).

%% @doc Retrieves the user metadata and attributes from the `UserId' in
%% an identity store.
%%
%% If you have administrator access to a member account, you can use this API
%% from the member account. Read about member accounts:
%% https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html
%% in the Organizations User Guide.
describe_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_user(Client, Input, []).
describe_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUser">>, Input, Options).

%% @doc Retrieves `GroupId' in an identity store.
%%
%% If you have administrator access to a member account, you can use this API
%% from the member account. Read about member accounts:
%% https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html
%% in the Organizations User Guide.
get_group_id(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_group_id(Client, Input, []).
get_group_id(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetGroupId">>, Input, Options).

%% @doc Retrieves the `MembershipId' in an identity store.
%%
%% If you have administrator access to a member account, you can use this API
%% from the member account. Read about member accounts:
%% https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html
%% in the Organizations User Guide.
get_group_membership_id(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_group_membership_id(Client, Input, []).
get_group_membership_id(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetGroupMembershipId">>, Input, Options).

%% @doc Retrieves the `UserId' in an identity store.
%%
%% If you have administrator access to a member account, you can use this API
%% from the member account. Read about member accounts:
%% https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html
%% in the Organizations User Guide.
get_user_id(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_user_id(Client, Input, []).
get_user_id(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUserId">>, Input, Options).

%% @doc Checks the user's membership in all requested groups and returns
%% if the member exists in all queried groups.
%%
%% If you have administrator access to a member account, you can use this API
%% from the member account. Read about member accounts:
%% https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html
%% in the Organizations User Guide.
is_member_in_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    is_member_in_groups(Client, Input, []).
is_member_in_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"IsMemberInGroups">>, Input, Options).

%% @doc For the specified group in the specified identity store, returns the
%% list of all `GroupMembership' objects and returns results in paginated
%% form.
%%
%% If you have administrator access to a member account, you can use this API
%% from the member account. Read about member accounts:
%% https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html
%% in the Organizations User Guide.
list_group_memberships(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_group_memberships(Client, Input, []).
list_group_memberships(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGroupMemberships">>, Input, Options).

%% @doc For the specified member in the specified identity store, returns the
%% list of all `GroupMembership' objects and returns results in paginated
%% form.
%%
%% If you have administrator access to a member account, you can use this API
%% from the member account. Read about member accounts:
%% https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html
%% in the Organizations User Guide.
list_group_memberships_for_member(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_group_memberships_for_member(Client, Input, []).
list_group_memberships_for_member(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGroupMembershipsForMember">>, Input, Options).

%% @doc Lists all groups in the identity store.
%%
%% Returns a paginated list of complete `Group' objects. Filtering for a
%% `Group' by the `DisplayName' attribute is deprecated. Instead, use
%% the `GetGroupId' API action.
%%
%% If you have administrator access to a member account, you can use this API
%% from the member account. Read about member accounts:
%% https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html
%% in the Organizations User Guide.
list_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_groups(Client, Input, []).
list_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGroups">>, Input, Options).

%% @doc Lists all users in the identity store.
%%
%% Returns a paginated list of complete `User' objects. Filtering for a
%% `User' by the `UserName' attribute is deprecated. Instead, use the
%% `GetUserId' API action.
%%
%% If you have administrator access to a member account, you can use this API
%% from the member account. Read about member accounts:
%% https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html
%% in the Organizations User Guide.
list_users(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_users(Client, Input, []).
list_users(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUsers">>, Input, Options).

%% @doc For the specified group in the specified identity store, updates the
%% group metadata and attributes.
update_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_group(Client, Input, []).
update_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGroup">>, Input, Options).

%% @doc For the specified user in the specified identity store, updates the
%% user metadata and attributes.
update_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_user(Client, Input, []).
update_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateUser">>, Input, Options).

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
    Client1 = Client#{service => <<"identitystore">>},
    Host = build_host(<<"identitystore">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSIdentityStore.", Action/binary>>}
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
