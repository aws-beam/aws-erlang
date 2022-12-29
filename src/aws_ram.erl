%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is the Resource Access Manager API Reference.
%%
%% This documentation provides descriptions and syntax for each of the
%% actions and data types in RAM. RAM is a service that helps you securely
%% share your Amazon Web Services resources across Amazon Web Services
%% accounts. If you have multiple Amazon Web Services accounts, you can use
%% RAM to share those resources with other accounts. If you use Organizations
%% to manage your accounts, then you share your resources with your
%% organization or organizational units (OUs). For supported resource types,
%% you can also share resources with individual Identity and Access
%% Management (IAM) roles an users.
%%
%% To learn more about RAM, see the following resources:
%%
%% <ul> <li> Resource Access Manager product page
%%
%% </li> <li> Resource Access Manager User Guide
%%
%% </li> </ul>
-module(aws_ram).

-export([accept_resource_share_invitation/2,
         accept_resource_share_invitation/3,
         associate_resource_share/2,
         associate_resource_share/3,
         associate_resource_share_permission/2,
         associate_resource_share_permission/3,
         create_resource_share/2,
         create_resource_share/3,
         delete_resource_share/2,
         delete_resource_share/3,
         disassociate_resource_share/2,
         disassociate_resource_share/3,
         disassociate_resource_share_permission/2,
         disassociate_resource_share_permission/3,
         enable_sharing_with_aws_organization/2,
         enable_sharing_with_aws_organization/3,
         get_permission/2,
         get_permission/3,
         get_resource_policies/2,
         get_resource_policies/3,
         get_resource_share_associations/2,
         get_resource_share_associations/3,
         get_resource_share_invitations/2,
         get_resource_share_invitations/3,
         get_resource_shares/2,
         get_resource_shares/3,
         list_pending_invitation_resources/2,
         list_pending_invitation_resources/3,
         list_permission_versions/2,
         list_permission_versions/3,
         list_permissions/2,
         list_permissions/3,
         list_principals/2,
         list_principals/3,
         list_resource_share_permissions/2,
         list_resource_share_permissions/3,
         list_resource_types/2,
         list_resource_types/3,
         list_resources/2,
         list_resources/3,
         promote_resource_share_created_from_policy/2,
         promote_resource_share_created_from_policy/3,
         reject_resource_share_invitation/2,
         reject_resource_share_invitation/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_resource_share/2,
         update_resource_share/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Accepts an invitation to a resource share from another Amazon Web
%% Services account.
%%
%% After you accept the invitation, the resources included in the resource
%% share are available to interact with in the relevant Amazon Web Services
%% Management Consoles and tools.
accept_resource_share_invitation(Client, Input) ->
    accept_resource_share_invitation(Client, Input, []).
accept_resource_share_invitation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/acceptresourceshareinvitation"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds the specified list of principals and list of resources to a
%% resource share.
%%
%% Principals that already have access to this resource share immediately
%% receive access to the added resources. Newly added principals immediately
%% receive access to the resources shared in this resource share.
associate_resource_share(Client, Input) ->
    associate_resource_share(Client, Input, []).
associate_resource_share(Client, Input0, Options0) ->
    Method = post,
    Path = ["/associateresourceshare"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds or replaces the RAM permission for a resource type included in a
%% resource share.
%%
%% You can have exactly one permission associated with each resource type in
%% the resource share. You can add a new RAM permission only if there are
%% currently no resources of that resource type currently in the resource
%% share.
associate_resource_share_permission(Client, Input) ->
    associate_resource_share_permission(Client, Input, []).
associate_resource_share_permission(Client, Input0, Options0) ->
    Method = post,
    Path = ["/associateresourcesharepermission"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a resource share.
%%
%% You can provide a list of the Amazon Resource Names (ARNs) for the
%% resources that you want to share, a list of principals you want to share
%% the resources with, and the permissions to grant those principals.
%%
%% Sharing a resource makes it available for use by principals outside of the
%% Amazon Web Services account that created the resource. Sharing doesn't
%% change any permissions or quotas that apply to the resource in the account
%% that created it.
create_resource_share(Client, Input) ->
    create_resource_share(Client, Input, []).
create_resource_share(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createresourceshare"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified resource share.
%%
%% This doesn't delete any of the resources that were associated with the
%% resource share; it only stops the sharing of those resources outside of
%% the Amazon Web Services account that created them.
delete_resource_share(Client, Input) ->
    delete_resource_share(Client, Input, []).
delete_resource_share(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/deleteresourceshare"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>},
                     {<<"resourceShareArn">>, <<"resourceShareArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates the specified principals or resources from the
%% specified resource share.
disassociate_resource_share(Client, Input) ->
    disassociate_resource_share(Client, Input, []).
disassociate_resource_share(Client, Input0, Options0) ->
    Method = post,
    Path = ["/disassociateresourceshare"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates an RAM permission from a resource share.
%%
%% Permission changes take effect immediately. You can remove a RAM
%% permission from a resource share only if there are currently no resources
%% of the relevant resource type currently attached to the resource share.
disassociate_resource_share_permission(Client, Input) ->
    disassociate_resource_share_permission(Client, Input, []).
disassociate_resource_share_permission(Client, Input0, Options0) ->
    Method = post,
    Path = ["/disassociateresourcesharepermission"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Enables resource sharing within your organization in Organizations.
%%
%% Calling this operation enables RAM to retrieve information about the
%% organization and its structure. This lets you share resources with all of
%% the accounts in an organization by specifying the organization's ID, or
%% all of the accounts in an organizational unit (OU) by specifying the OU's
%% ID. Until you enable sharing within the organization, you can specify only
%% individual Amazon Web Services accounts, or for supported resource types,
%% IAM users and roles.
%%
%% You must call this operation from an IAM user or role in the
%% organization's management account.
enable_sharing_with_aws_organization(Client, Input) ->
    enable_sharing_with_aws_organization(Client, Input, []).
enable_sharing_with_aws_organization(Client, Input0, Options0) ->
    Method = post,
    Path = ["/enablesharingwithawsorganization"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the contents of an RAM permission in JSON format.
get_permission(Client, Input) ->
    get_permission(Client, Input, []).
get_permission(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getpermission"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the resource policies for the specified resources that you
%% own and have shared.
get_resource_policies(Client, Input) ->
    get_resource_policies(Client, Input, []).
get_resource_policies(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getresourcepolicies"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the resource and principal associations for resource shares
%% that you own.
get_resource_share_associations(Client, Input) ->
    get_resource_share_associations(Client, Input, []).
get_resource_share_associations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getresourceshareassociations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves details about invitations that you have received for
%% resource shares.
get_resource_share_invitations(Client, Input) ->
    get_resource_share_invitations(Client, Input, []).
get_resource_share_invitations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getresourceshareinvitations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves details about the resource shares that you own or that are
%% shared with you.
get_resource_shares(Client, Input) ->
    get_resource_shares(Client, Input, []).
get_resource_shares(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getresourceshares"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the resources in a resource share that is shared with you but
%% for which the invitation is still `PENDING'.
%%
%% That means that you haven't accepted or rejected the invitation and the
%% invitation hasn't expired.
list_pending_invitation_resources(Client, Input) ->
    list_pending_invitation_resources(Client, Input, []).
list_pending_invitation_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listpendinginvitationresources"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the available versions of the specified RAM permission.
list_permission_versions(Client, Input) ->
    list_permission_versions(Client, Input, []).
list_permission_versions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listpermissionversions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a list of available RAM permissions that you can use for
%% the supported resource types.
list_permissions(Client, Input) ->
    list_permissions(Client, Input, []).
list_permissions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listpermissions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the principals that you are sharing resources with or that are
%% sharing resources with you.
list_principals(Client, Input) ->
    list_principals(Client, Input, []).
list_principals(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listprincipals"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the RAM permissions that are associated with a resource share.
list_resource_share_permissions(Client, Input) ->
    list_resource_share_permissions(Client, Input, []).
list_resource_share_permissions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listresourcesharepermissions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the resource types that can be shared by RAM.
list_resource_types(Client, Input) ->
    list_resource_types(Client, Input, []).
list_resource_types(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listresourcetypes"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the resources that you added to a resource share or the
%% resources that are shared with you.
list_resources(Client, Input) ->
    list_resources(Client, Input, []).
list_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listresources"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc When you attach a resource-based permission policy to a resource, it
%% automatically creates a resource share.
%%
%% However, resource shares created this way are visible only to the resource
%% share owner, and the resource share can't be modified in RAM.
%%
%% You can use this operation to promote the resource share to a full RAM
%% resource share. When you promote a resource share, you can then manage the
%% resource share in RAM and it becomes visible to all of the principals you
%% shared it with.
promote_resource_share_created_from_policy(Client, Input) ->
    promote_resource_share_created_from_policy(Client, Input, []).
promote_resource_share_created_from_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/promoteresourcesharecreatedfrompolicy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"resourceShareArn">>, <<"resourceShareArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Rejects an invitation to a resource share from another Amazon Web
%% Services account.
reject_resource_share_invitation(Client, Input) ->
    reject_resource_share_invitation(Client, Input, []).
reject_resource_share_invitation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/rejectresourceshareinvitation"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds the specified tag keys and values to the specified resource
%% share.
%%
%% The tags are attached only to the resource share, not to the resources
%% that are in the resource share.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tagresource"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the specified tag key and value pairs from the specified
%% resource share.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/untagresource"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Modifies some of the properties of the specified resource share.
update_resource_share(Client, Input) ->
    update_resource_share(Client, Input, []).
update_resource_share(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateresourceshare"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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
    Client1 = Client#{service => <<"ram">>},
    Host = build_host(<<"ram">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

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
