%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Lake Formation
%%
%% Defines the public endpoint for the AWS Lake Formation service.
-module(aws_lakeformation).

-export([add_l_f_tags_to_resource/2,
         add_l_f_tags_to_resource/3,
         batch_grant_permissions/2,
         batch_grant_permissions/3,
         batch_revoke_permissions/2,
         batch_revoke_permissions/3,
         create_l_f_tag/2,
         create_l_f_tag/3,
         delete_l_f_tag/2,
         delete_l_f_tag/3,
         deregister_resource/2,
         deregister_resource/3,
         describe_resource/2,
         describe_resource/3,
         get_data_lake_settings/2,
         get_data_lake_settings/3,
         get_effective_permissions_for_path/2,
         get_effective_permissions_for_path/3,
         get_l_f_tag/2,
         get_l_f_tag/3,
         get_resource_l_f_tags/2,
         get_resource_l_f_tags/3,
         grant_permissions/2,
         grant_permissions/3,
         list_l_f_tags/2,
         list_l_f_tags/3,
         list_permissions/2,
         list_permissions/3,
         list_resources/2,
         list_resources/3,
         put_data_lake_settings/2,
         put_data_lake_settings/3,
         register_resource/2,
         register_resource/3,
         remove_l_f_tags_from_resource/2,
         remove_l_f_tags_from_resource/3,
         revoke_permissions/2,
         revoke_permissions/3,
         search_databases_by_l_f_tags/2,
         search_databases_by_l_f_tags/3,
         search_tables_by_l_f_tags/2,
         search_tables_by_l_f_tags/3,
         update_l_f_tag/2,
         update_l_f_tag/3,
         update_resource/2,
         update_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Attaches one or more tags to an existing resource.
add_l_f_tags_to_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_l_f_tags_to_resource(Client, Input, []).
add_l_f_tags_to_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddLFTagsToResource">>, Input, Options).

%% @doc Batch operation to grant permissions to the principal.
batch_grant_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_grant_permissions(Client, Input, []).
batch_grant_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGrantPermissions">>, Input, Options).

%% @doc Batch operation to revoke permissions from the principal.
batch_revoke_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_revoke_permissions(Client, Input, []).
batch_revoke_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchRevokePermissions">>, Input, Options).

%% @doc Creates a tag with the specified name and values.
create_l_f_tag(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_l_f_tag(Client, Input, []).
create_l_f_tag(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLFTag">>, Input, Options).

%% @doc Deletes the specified tag key name.
%%
%% If the attribute key does not exist or the tag does not exist, then the
%% operation will not do anything. If the attribute key exists, then the
%% operation checks if any resources are tagged with this attribute key, if
%% yes, the API throws a 400 Exception with the message "Delete not allowed"
%% as the tag key is still attached with resources. You can consider
%% untagging resources with this tag key.
delete_l_f_tag(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_l_f_tag(Client, Input, []).
delete_l_f_tag(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLFTag">>, Input, Options).

%% @doc Deregisters the resource as managed by the Data Catalog.
%%
%% When you deregister a path, Lake Formation removes the path from the
%% inline policy attached to your service-linked role.
deregister_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_resource(Client, Input, []).
deregister_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterResource">>, Input, Options).

%% @doc Retrieves the current data access role for the given resource
%% registered in AWS Lake Formation.
describe_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_resource(Client, Input, []).
describe_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeResource">>, Input, Options).

%% @doc Retrieves the list of the data lake administrators of a Lake
%% Formation-managed data lake.
get_data_lake_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_data_lake_settings(Client, Input, []).
get_data_lake_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDataLakeSettings">>, Input, Options).

%% @doc Returns the Lake Formation permissions for a specified table or
%% database resource located at a path in Amazon S3.
%%
%% `GetEffectivePermissionsForPath' will not return databases and tables if
%% the catalog is encrypted.
get_effective_permissions_for_path(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_effective_permissions_for_path(Client, Input, []).
get_effective_permissions_for_path(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEffectivePermissionsForPath">>, Input, Options).

%% @doc Returns a tag definition.
get_l_f_tag(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_l_f_tag(Client, Input, []).
get_l_f_tag(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLFTag">>, Input, Options).

%% @doc Returns the tags applied to a resource.
get_resource_l_f_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_l_f_tags(Client, Input, []).
get_resource_l_f_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourceLFTags">>, Input, Options).

%% @doc Grants permissions to the principal to access metadata in the Data
%% Catalog and data organized in underlying data storage such as Amazon S3.
%%
%% For information about permissions, see Security and Access Control to
%% Metadata and Data.
grant_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    grant_permissions(Client, Input, []).
grant_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GrantPermissions">>, Input, Options).

%% @doc Lists tags that the requester has permission to view.
list_l_f_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_l_f_tags(Client, Input, []).
list_l_f_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLFTags">>, Input, Options).

%% @doc Returns a list of the principal permissions on the resource, filtered
%% by the permissions of the caller.
%%
%% For example, if you are granted an ALTER permission, you are able to see
%% only the principal permissions for ALTER.
%%
%% This operation returns only those permissions that have been explicitly
%% granted.
%%
%% For information about permissions, see Security and Access Control to
%% Metadata and Data.
list_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_permissions(Client, Input, []).
list_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPermissions">>, Input, Options).

%% @doc Lists the resources registered to be managed by the Data Catalog.
list_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resources(Client, Input, []).
list_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResources">>, Input, Options).

%% @doc Sets the list of data lake administrators who have admin privileges
%% on all resources managed by Lake Formation.
%%
%% For more information on admin privileges, see Granting Lake Formation
%% Permissions.
%%
%% This API replaces the current list of data lake admins with the new list
%% being passed. To add an admin, fetch the current list and add the new
%% admin to that list and pass that list in this API.
put_data_lake_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_data_lake_settings(Client, Input, []).
put_data_lake_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutDataLakeSettings">>, Input, Options).

%% @doc Registers the resource as managed by the Data Catalog.
%%
%% To add or update data, Lake Formation needs read/write access to the
%% chosen Amazon S3 path. Choose a role that you know has permission to do
%% this, or choose the AWSServiceRoleForLakeFormationDataAccess
%% service-linked role. When you register the first Amazon S3 path, the
%% service-linked role and a new inline policy are created on your behalf.
%% Lake Formation adds the first path to the inline policy and attaches it to
%% the service-linked role. When you register subsequent paths, Lake
%% Formation adds the path to the existing policy.
%%
%% The following request registers a new location and gives AWS Lake
%% Formation permission to use the service-linked role to access that
%% location.
%%
%% `ResourceArn = arn:aws:s3:::my-bucket UseServiceLinkedRole = true'
%%
%% If `UseServiceLinkedRole' is not set to true, you must provide or set the
%% `RoleArn':
%%
%% `arn:aws:iam::12345:role/my-data-access-role'
register_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_resource(Client, Input, []).
register_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterResource">>, Input, Options).

%% @doc Removes a tag from the resource.
%%
%% Only database, table, or tableWithColumns resource are allowed. To tag
%% columns, use the column inclusion list in `tableWithColumns' to specify
%% column input.
remove_l_f_tags_from_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_l_f_tags_from_resource(Client, Input, []).
remove_l_f_tags_from_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveLFTagsFromResource">>, Input, Options).

%% @doc Revokes permissions to the principal to access metadata in the Data
%% Catalog and data organized in underlying data storage such as Amazon S3.
revoke_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    revoke_permissions(Client, Input, []).
revoke_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RevokePermissions">>, Input, Options).

%% @doc This operation allows a search on `DATABASE' resources by
%% `TagCondition'.
%%
%% This operation is used by admins who want to grant user permissions on
%% certain `TagConditions'. Before making a grant, the admin can use
%% `SearchDatabasesByTags' to find all resources where the given
%% `TagConditions' are valid to verify whether the returned resources can be
%% shared.
search_databases_by_l_f_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_databases_by_l_f_tags(Client, Input, []).
search_databases_by_l_f_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchDatabasesByLFTags">>, Input, Options).

%% @doc This operation allows a search on `TABLE' resources by `LFTag's.
%%
%% This will be used by admins who want to grant user permissions on certain
%% LFTags. Before making a grant, the admin can use `SearchTablesByLFTags' to
%% find all resources where the given `LFTag's are valid to verify whether
%% the returned resources can be shared.
search_tables_by_l_f_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_tables_by_l_f_tags(Client, Input, []).
search_tables_by_l_f_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchTablesByLFTags">>, Input, Options).

%% @doc Updates the list of possible values for the specified tag key.
%%
%% If the tag does not exist, the operation throws an
%% EntityNotFoundException. The values in the delete key values will be
%% deleted from list of possible values. If any value in the delete key
%% values is attached to a resource, then API errors out with a 400 Exception
%% - "Update not allowed". Untag the attribute before deleting the tag key's
%% value.
update_l_f_tag(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_l_f_tag(Client, Input, []).
update_l_f_tag(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLFTag">>, Input, Options).

%% @doc Updates the data access role used for vending access to the given
%% (registered) resource in AWS Lake Formation.
update_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_resource(Client, Input, []).
update_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateResource">>, Input, Options).

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
    Client1 = Client#{service => <<"lakeformation">>},
    Host = build_host(<<"lakeformation">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSLakeFormation.", Action/binary>>}
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
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
