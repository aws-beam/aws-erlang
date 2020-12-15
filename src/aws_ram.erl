%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Use AWS Resource Access Manager to share AWS resources between AWS
%% accounts.
%%
%% To share a resource, you create a resource share, associate the resource
%% with the resource share, and specify the principals that can access the
%% resources associated with the resource share. The following principals are
%% supported: AWS accounts, organizational units (OU) from AWS Organizations,
%% and organizations from AWS Organizations.
%%
%% For more information, see the AWS Resource Access Manager User Guide.
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

%% @doc Accepts an invitation to a resource share from another AWS account.
accept_resource_share_invitation(Client, Input) ->
    accept_resource_share_invitation(Client, Input, []).
accept_resource_share_invitation(Client, Input0, Options) ->
    Method = post,
    Path = ["/acceptresourceshareinvitation"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Associates the specified resource share with the specified principals
%% and resources.
associate_resource_share(Client, Input) ->
    associate_resource_share(Client, Input, []).
associate_resource_share(Client, Input0, Options) ->
    Method = post,
    Path = ["/associateresourceshare"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Associates a permission with a resource share.
associate_resource_share_permission(Client, Input) ->
    associate_resource_share_permission(Client, Input, []).
associate_resource_share_permission(Client, Input0, Options) ->
    Method = post,
    Path = ["/associateresourcesharepermission"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a resource share.
create_resource_share(Client, Input) ->
    create_resource_share(Client, Input, []).
create_resource_share(Client, Input0, Options) ->
    Method = post,
    Path = ["/createresourceshare"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified resource share.
delete_resource_share(Client, Input) ->
    delete_resource_share(Client, Input, []).
delete_resource_share(Client, Input0, Options) ->
    Method = delete,
    Path = ["/deleteresourceshare"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>},
                     {<<"resourceShareArn">>, <<"resourceShareArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates the specified principals or resources from the
%% specified resource share.
disassociate_resource_share(Client, Input) ->
    disassociate_resource_share(Client, Input, []).
disassociate_resource_share(Client, Input0, Options) ->
    Method = post,
    Path = ["/disassociateresourceshare"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates an AWS RAM permission from a resource share.
disassociate_resource_share_permission(Client, Input) ->
    disassociate_resource_share_permission(Client, Input, []).
disassociate_resource_share_permission(Client, Input0, Options) ->
    Method = post,
    Path = ["/disassociateresourcesharepermission"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Enables resource sharing within your AWS Organization.
%%
%% The caller must be the master account for the AWS Organization.
enable_sharing_with_aws_organization(Client, Input) ->
    enable_sharing_with_aws_organization(Client, Input, []).
enable_sharing_with_aws_organization(Client, Input0, Options) ->
    Method = post,
    Path = ["/enablesharingwithawsorganization"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the contents of an AWS RAM permission in JSON format.
get_permission(Client, Input) ->
    get_permission(Client, Input, []).
get_permission(Client, Input0, Options) ->
    Method = post,
    Path = ["/getpermission"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the policies for the specified resources that you own and have
%% shared.
get_resource_policies(Client, Input) ->
    get_resource_policies(Client, Input, []).
get_resource_policies(Client, Input0, Options) ->
    Method = post,
    Path = ["/getresourcepolicies"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the resources or principals for the resource shares that you
%% own.
get_resource_share_associations(Client, Input) ->
    get_resource_share_associations(Client, Input, []).
get_resource_share_associations(Client, Input0, Options) ->
    Method = post,
    Path = ["/getresourceshareassociations"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the invitations for resource sharing that you've received.
get_resource_share_invitations(Client, Input) ->
    get_resource_share_invitations(Client, Input, []).
get_resource_share_invitations(Client, Input0, Options) ->
    Method = post,
    Path = ["/getresourceshareinvitations"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the resource shares that you own or the resource shares that are
%% shared with you.
get_resource_shares(Client, Input) ->
    get_resource_shares(Client, Input, []).
get_resource_shares(Client, Input0, Options) ->
    Method = post,
    Path = ["/getresourceshares"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the resources in a resource share that is shared with you but
%% that the invitation is still pending for.
list_pending_invitation_resources(Client, Input) ->
    list_pending_invitation_resources(Client, Input, []).
list_pending_invitation_resources(Client, Input0, Options) ->
    Method = post,
    Path = ["/listpendinginvitationresources"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the AWS RAM permissions.
list_permissions(Client, Input) ->
    list_permissions(Client, Input, []).
list_permissions(Client, Input0, Options) ->
    Method = post,
    Path = ["/listpermissions"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the principals that you have shared resources with or that have
%% shared resources with you.
list_principals(Client, Input) ->
    list_principals(Client, Input, []).
list_principals(Client, Input0, Options) ->
    Method = post,
    Path = ["/listprincipals"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the AWS RAM permissions that are associated with a resource
%% share.
list_resource_share_permissions(Client, Input) ->
    list_resource_share_permissions(Client, Input, []).
list_resource_share_permissions(Client, Input0, Options) ->
    Method = post,
    Path = ["/listresourcesharepermissions"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the shareable resource types supported by AWS RAM.
list_resource_types(Client, Input) ->
    list_resource_types(Client, Input, []).
list_resource_types(Client, Input0, Options) ->
    Method = post,
    Path = ["/listresourcetypes"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the resources that you added to a resource shares or the
%% resources that are shared with you.
list_resources(Client, Input) ->
    list_resources(Client, Input, []).
list_resources(Client, Input0, Options) ->
    Method = post,
    Path = ["/listresources"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Resource shares that were created by attaching a policy to a resource
%% are visible only to the resource share owner, and the resource share
%% cannot be modified in AWS RAM.
%%
%% Use this API action to promote the resource share. When you promote the
%% resource share, it becomes:
%%
%% <ul> <li> Visible to all principals that it is shared with.
%%
%% </li> <li> Modifiable in AWS RAM.
%%
%% </li> </ul>
promote_resource_share_created_from_policy(Client, Input) ->
    promote_resource_share_created_from_policy(Client, Input, []).
promote_resource_share_created_from_policy(Client, Input0, Options) ->
    Method = post,
    Path = ["/promoteresourcesharecreatedfrompolicy"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"resourceShareArn">>, <<"resourceShareArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Rejects an invitation to a resource share from another AWS account.
reject_resource_share_invitation(Client, Input) ->
    reject_resource_share_invitation(Client, Input, []).
reject_resource_share_invitation(Client, Input0, Options) ->
    Method = post,
    Path = ["/rejectresourceshareinvitation"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds the specified tags to the specified resource share that you own.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options) ->
    Method = post,
    Path = ["/tagresource"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the specified tags from the specified resource share that you
%% own.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input0, Options) ->
    Method = post,
    Path = ["/untagresource"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the specified resource share that you own.
update_resource_share(Client, Input) ->
    update_resource_share(Client, Input, []).
update_resource_share(Client, Input0, Options) ->
    Method = post,
    Path = ["/updateresourceshare"],
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
    Client1 = Client#{service => <<"ram">>},
    Host = build_host(<<"ram">>, Client1),
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
