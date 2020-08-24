%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <fullname>AWS Lake Formation</fullname>
%%
%% Defines the public endpoint for the AWS Lake Formation service.
-module(aws_lakeformation).

-export([batch_grant_permissions/2,
         batch_grant_permissions/3,
         batch_revoke_permissions/2,
         batch_revoke_permissions/3,
         deregister_resource/2,
         deregister_resource/3,
         describe_resource/2,
         describe_resource/3,
         get_data_lake_settings/2,
         get_data_lake_settings/3,
         get_effective_permissions_for_path/2,
         get_effective_permissions_for_path/3,
         grant_permissions/2,
         grant_permissions/3,
         list_permissions/2,
         list_permissions/3,
         list_resources/2,
         list_resources/3,
         put_data_lake_settings/2,
         put_data_lake_settings/3,
         register_resource/2,
         register_resource/3,
         revoke_permissions/2,
         revoke_permissions/3,
         update_resource/2,
         update_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

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
%% <code>GetEffectivePermissionsForPath</code> will not return databases and
%% tables if the catalog is encrypted.
get_effective_permissions_for_path(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_effective_permissions_for_path(Client, Input, []).
get_effective_permissions_for_path(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEffectivePermissionsForPath">>, Input, Options).

%% @doc Grants permissions to the principal to access metadata in the Data
%% Catalog and data organized in underlying data storage such as Amazon S3.
%%
%% For information about permissions, see <a
%% href="https://docs-aws.amazon.com/lake-formation/latest/dg/security-data-access.html">Security
%% and Access Control to Metadata and Data</a>.
grant_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    grant_permissions(Client, Input, []).
grant_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GrantPermissions">>, Input, Options).

%% @doc Returns a list of the principal permissions on the resource, filtered
%% by the permissions of the caller. For example, if you are granted an ALTER
%% permission, you are able to see only the principal permissions for ALTER.
%%
%% This operation returns only those permissions that have been explicitly
%% granted.
%%
%% For information about permissions, see <a
%% href="https://docs-aws.amazon.com/lake-formation/latest/dg/security-data-access.html">Security
%% and Access Control to Metadata and Data</a>.
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
%% on all resources managed by Lake Formation. For more information on admin
%% privileges, see <a
%% href="https://docs.aws.amazon.com/lake-formation/latest/dg/lake-formation-permissions.html">Granting
%% Lake Formation Permissions</a>.
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
%% <code>ResourceArn = arn:aws:s3:::my-bucket UseServiceLinkedRole =
%% true</code>
%%
%% If <code>UseServiceLinkedRole</code> is not set to true, you must provide
%% or set the <code>RoleArn</code>:
%%
%% <code>arn:aws:iam::12345:role/my-data-access-role</code>
register_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_resource(Client, Input, []).
register_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterResource">>, Input, Options).

%% @doc Revokes permissions to the principal to access metadata in the Data
%% Catalog and data organized in underlying data storage such as Amazon S3.
revoke_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    revoke_permissions(Client, Input, []).
revoke_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RevokePermissions">>, Input, Options).

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
request(Client, Action, Input0, Options) ->
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

build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
