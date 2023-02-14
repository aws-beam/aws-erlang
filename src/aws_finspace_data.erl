%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The FinSpace APIs let you take actions inside the FinSpace.
-module(aws_finspace_data).

-export([associate_user_to_permission_group/4,
         associate_user_to_permission_group/5,
         create_changeset/3,
         create_changeset/4,
         create_data_view/3,
         create_data_view/4,
         create_dataset/2,
         create_dataset/3,
         create_permission_group/2,
         create_permission_group/3,
         create_user/2,
         create_user/3,
         delete_dataset/3,
         delete_dataset/4,
         delete_permission_group/3,
         delete_permission_group/4,
         disable_user/3,
         disable_user/4,
         disassociate_user_from_permission_group/4,
         disassociate_user_from_permission_group/5,
         enable_user/3,
         enable_user/4,
         get_changeset/3,
         get_changeset/5,
         get_changeset/6,
         get_data_view/3,
         get_data_view/5,
         get_data_view/6,
         get_dataset/2,
         get_dataset/4,
         get_dataset/5,
         get_external_data_view_access_details/4,
         get_external_data_view_access_details/5,
         get_permission_group/2,
         get_permission_group/4,
         get_permission_group/5,
         get_programmatic_access_credentials/2,
         get_programmatic_access_credentials/4,
         get_programmatic_access_credentials/5,
         get_user/2,
         get_user/4,
         get_user/5,
         get_working_location/2,
         get_working_location/3,
         list_changesets/2,
         list_changesets/4,
         list_changesets/5,
         list_data_views/2,
         list_data_views/4,
         list_data_views/5,
         list_datasets/1,
         list_datasets/3,
         list_datasets/4,
         list_permission_groups/2,
         list_permission_groups/4,
         list_permission_groups/5,
         list_permission_groups_by_user/3,
         list_permission_groups_by_user/5,
         list_permission_groups_by_user/6,
         list_users/2,
         list_users/4,
         list_users/5,
         list_users_by_permission_group/3,
         list_users_by_permission_group/5,
         list_users_by_permission_group/6,
         reset_user_password/3,
         reset_user_password/4,
         update_changeset/4,
         update_changeset/5,
         update_dataset/3,
         update_dataset/4,
         update_permission_group/3,
         update_permission_group/4,
         update_user/3,
         update_user/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds a user account to a permission group to grant permissions for
%% actions a user can perform in FinSpace.
associate_user_to_permission_group(Client, PermissionGroupId, UserId, Input) ->
    associate_user_to_permission_group(Client, PermissionGroupId, UserId, Input, []).
associate_user_to_permission_group(Client, PermissionGroupId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/permission-group/", aws_util:encode_uri(PermissionGroupId), "/users/", aws_util:encode_uri(UserId), ""],
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

%% @doc Creates a new Changeset in a FinSpace Dataset.
create_changeset(Client, DatasetId, Input) ->
    create_changeset(Client, DatasetId, Input, []).
create_changeset(Client, DatasetId, Input0, Options0) ->
    Method = post,
    Path = ["/datasets/", aws_util:encode_uri(DatasetId), "/changesetsv2"],
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

%% @doc Creates a Dataview for a Dataset.
create_data_view(Client, DatasetId, Input) ->
    create_data_view(Client, DatasetId, Input, []).
create_data_view(Client, DatasetId, Input0, Options0) ->
    Method = post,
    Path = ["/datasets/", aws_util:encode_uri(DatasetId), "/dataviewsv2"],
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

%% @doc Creates a new FinSpace Dataset.
create_dataset(Client, Input) ->
    create_dataset(Client, Input, []).
create_dataset(Client, Input0, Options0) ->
    Method = post,
    Path = ["/datasetsv2"],
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

%% @doc Creates a group of permissions for various actions that a user can
%% perform in FinSpace.
create_permission_group(Client, Input) ->
    create_permission_group(Client, Input, []).
create_permission_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/permission-group"],
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

%% @doc Creates a new user in FinSpace.
create_user(Client, Input) ->
    create_user(Client, Input, []).
create_user(Client, Input0, Options0) ->
    Method = post,
    Path = ["/user"],
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

%% @doc Deletes a FinSpace Dataset.
delete_dataset(Client, DatasetId, Input) ->
    delete_dataset(Client, DatasetId, Input, []).
delete_dataset(Client, DatasetId, Input0, Options0) ->
    Method = delete,
    Path = ["/datasetsv2/", aws_util:encode_uri(DatasetId), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a permission group.
%%
%% This action is irreversible.
delete_permission_group(Client, PermissionGroupId, Input) ->
    delete_permission_group(Client, PermissionGroupId, Input, []).
delete_permission_group(Client, PermissionGroupId, Input0, Options0) ->
    Method = delete,
    Path = ["/permission-group/", aws_util:encode_uri(PermissionGroupId), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Denies access to the FinSpace web application and API for the
%% specified user.
disable_user(Client, UserId, Input) ->
    disable_user(Client, UserId, Input, []).
disable_user(Client, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/user/", aws_util:encode_uri(UserId), "/disable"],
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

%% @doc Removes a user account from a permission group.
disassociate_user_from_permission_group(Client, PermissionGroupId, UserId, Input) ->
    disassociate_user_from_permission_group(Client, PermissionGroupId, UserId, Input, []).
disassociate_user_from_permission_group(Client, PermissionGroupId, UserId, Input0, Options0) ->
    Method = delete,
    Path = ["/permission-group/", aws_util:encode_uri(PermissionGroupId), "/users/", aws_util:encode_uri(UserId), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Allows the specified user to access the FinSpace web application and
%% API.
enable_user(Client, UserId, Input) ->
    enable_user(Client, UserId, Input, []).
enable_user(Client, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/user/", aws_util:encode_uri(UserId), "/enable"],
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

%% @doc Get information about a Changeset.
get_changeset(Client, ChangesetId, DatasetId)
  when is_map(Client) ->
    get_changeset(Client, ChangesetId, DatasetId, #{}, #{}).

get_changeset(Client, ChangesetId, DatasetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_changeset(Client, ChangesetId, DatasetId, QueryMap, HeadersMap, []).

get_changeset(Client, ChangesetId, DatasetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datasets/", aws_util:encode_uri(DatasetId), "/changesetsv2/", aws_util:encode_uri(ChangesetId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a Dataview.
get_data_view(Client, DataViewId, DatasetId)
  when is_map(Client) ->
    get_data_view(Client, DataViewId, DatasetId, #{}, #{}).

get_data_view(Client, DataViewId, DatasetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_view(Client, DataViewId, DatasetId, QueryMap, HeadersMap, []).

get_data_view(Client, DataViewId, DatasetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datasets/", aws_util:encode_uri(DatasetId), "/dataviewsv2/", aws_util:encode_uri(DataViewId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a Dataset.
get_dataset(Client, DatasetId)
  when is_map(Client) ->
    get_dataset(Client, DatasetId, #{}, #{}).

get_dataset(Client, DatasetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_dataset(Client, DatasetId, QueryMap, HeadersMap, []).

get_dataset(Client, DatasetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datasetsv2/", aws_util:encode_uri(DatasetId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the credentials to access the external Dataview from an S3
%% location.
%%
%% To call this API:
%%
%% <ul> <li> You must retrieve the programmatic credentials.
%%
%% </li> <li> You must be a member of a FinSpace user group, where the
%% dataset that you want to access has `Read Dataset Data' permissions.
%%
%% </li> </ul>
get_external_data_view_access_details(Client, DataViewId, DatasetId, Input) ->
    get_external_data_view_access_details(Client, DataViewId, DatasetId, Input, []).
get_external_data_view_access_details(Client, DataViewId, DatasetId, Input0, Options0) ->
    Method = post,
    Path = ["/datasets/", aws_util:encode_uri(DatasetId), "/dataviewsv2/", aws_util:encode_uri(DataViewId), "/external-access-details"],
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

%% @doc Retrieves the details of a specific permission group.
get_permission_group(Client, PermissionGroupId)
  when is_map(Client) ->
    get_permission_group(Client, PermissionGroupId, #{}, #{}).

get_permission_group(Client, PermissionGroupId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_permission_group(Client, PermissionGroupId, QueryMap, HeadersMap, []).

get_permission_group(Client, PermissionGroupId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/permission-group/", aws_util:encode_uri(PermissionGroupId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Request programmatic credentials to use with FinSpace SDK.
get_programmatic_access_credentials(Client, EnvironmentId)
  when is_map(Client) ->
    get_programmatic_access_credentials(Client, EnvironmentId, #{}, #{}).

get_programmatic_access_credentials(Client, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_programmatic_access_credentials(Client, EnvironmentId, QueryMap, HeadersMap, []).

get_programmatic_access_credentials(Client, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/credentials/programmatic"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"durationInMinutes">>, maps:get(<<"durationInMinutes">>, QueryMap, undefined)},
        {<<"environmentId">>, EnvironmentId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details for a specific user.
get_user(Client, UserId)
  when is_map(Client) ->
    get_user(Client, UserId, #{}, #{}).

get_user(Client, UserId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_user(Client, UserId, QueryMap, HeadersMap, []).

get_user(Client, UserId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/user/", aws_util:encode_uri(UserId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc A temporary Amazon S3 location, where you can copy your files from a
%% source location to stage or use as a scratch space in FinSpace notebook.
get_working_location(Client, Input) ->
    get_working_location(Client, Input, []).
get_working_location(Client, Input0, Options0) ->
    Method = post,
    Path = ["/workingLocationV1"],
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

%% @doc Lists the FinSpace Changesets for a Dataset.
list_changesets(Client, DatasetId)
  when is_map(Client) ->
    list_changesets(Client, DatasetId, #{}, #{}).

list_changesets(Client, DatasetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_changesets(Client, DatasetId, QueryMap, HeadersMap, []).

list_changesets(Client, DatasetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datasets/", aws_util:encode_uri(DatasetId), "/changesetsv2"],
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

%% @doc Lists all available Dataviews for a Dataset.
list_data_views(Client, DatasetId)
  when is_map(Client) ->
    list_data_views(Client, DatasetId, #{}, #{}).

list_data_views(Client, DatasetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_views(Client, DatasetId, QueryMap, HeadersMap, []).

list_data_views(Client, DatasetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datasets/", aws_util:encode_uri(DatasetId), "/dataviewsv2"],
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

%% @doc Lists all of the active Datasets that a user has access to.
list_datasets(Client)
  when is_map(Client) ->
    list_datasets(Client, #{}, #{}).

list_datasets(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_datasets(Client, QueryMap, HeadersMap, []).

list_datasets(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datasetsv2"],
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

%% @doc Lists all available permission groups in FinSpace.
list_permission_groups(Client, MaxResults)
  when is_map(Client) ->
    list_permission_groups(Client, MaxResults, #{}, #{}).

list_permission_groups(Client, MaxResults, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_permission_groups(Client, MaxResults, QueryMap, HeadersMap, []).

list_permission_groups(Client, MaxResults, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/permission-group"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the permission groups that are associated with a specific
%% user account.
list_permission_groups_by_user(Client, UserId, MaxResults)
  when is_map(Client) ->
    list_permission_groups_by_user(Client, UserId, MaxResults, #{}, #{}).

list_permission_groups_by_user(Client, UserId, MaxResults, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_permission_groups_by_user(Client, UserId, MaxResults, QueryMap, HeadersMap, []).

list_permission_groups_by_user(Client, UserId, MaxResults, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/user/", aws_util:encode_uri(UserId), "/permission-groups"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all available user accounts in FinSpace.
list_users(Client, MaxResults)
  when is_map(Client) ->
    list_users(Client, MaxResults, #{}, #{}).

list_users(Client, MaxResults, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_users(Client, MaxResults, QueryMap, HeadersMap, []).

list_users(Client, MaxResults, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/user"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists details of all the users in a specific permission group.
list_users_by_permission_group(Client, PermissionGroupId, MaxResults)
  when is_map(Client) ->
    list_users_by_permission_group(Client, PermissionGroupId, MaxResults, #{}, #{}).

list_users_by_permission_group(Client, PermissionGroupId, MaxResults, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_users_by_permission_group(Client, PermissionGroupId, MaxResults, QueryMap, HeadersMap, []).

list_users_by_permission_group(Client, PermissionGroupId, MaxResults, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/permission-group/", aws_util:encode_uri(PermissionGroupId), "/users"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Resets the password for a specified user ID and generates a temporary
%% one.
%%
%% Only a superuser can reset password for other users. Resetting the
%% password immediately invalidates the previous password associated with the
%% user.
reset_user_password(Client, UserId, Input) ->
    reset_user_password(Client, UserId, Input, []).
reset_user_password(Client, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/user/", aws_util:encode_uri(UserId), "/password"],
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

%% @doc Updates a FinSpace Changeset.
update_changeset(Client, ChangesetId, DatasetId, Input) ->
    update_changeset(Client, ChangesetId, DatasetId, Input, []).
update_changeset(Client, ChangesetId, DatasetId, Input0, Options0) ->
    Method = put,
    Path = ["/datasets/", aws_util:encode_uri(DatasetId), "/changesetsv2/", aws_util:encode_uri(ChangesetId), ""],
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

%% @doc Updates a FinSpace Dataset.
update_dataset(Client, DatasetId, Input) ->
    update_dataset(Client, DatasetId, Input, []).
update_dataset(Client, DatasetId, Input0, Options0) ->
    Method = put,
    Path = ["/datasetsv2/", aws_util:encode_uri(DatasetId), ""],
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

%% @doc Modifies the details of a permission group.
%%
%% You cannot modify a `permissionGroupID'.
update_permission_group(Client, PermissionGroupId, Input) ->
    update_permission_group(Client, PermissionGroupId, Input, []).
update_permission_group(Client, PermissionGroupId, Input0, Options0) ->
    Method = put,
    Path = ["/permission-group/", aws_util:encode_uri(PermissionGroupId), ""],
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

%% @doc Modifies the details of the specified user account.
%%
%% You cannot update the `userId' for a user.
update_user(Client, UserId, Input) ->
    update_user(Client, UserId, Input, []).
update_user(Client, UserId, Input0, Options0) ->
    Method = put,
    Path = ["/user/", aws_util:encode_uri(UserId), ""],
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
    Client1 = Client#{service => <<"finspace-api">>},
    Host = build_host(<<"finspace-api">>, Client1),
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
handle_response({ok, StatusCode, _ResponseHeaders, _Client}, _, _DecodeBody)
  when StatusCode =:= 503 ->
  %% Retriable error if retries are enabled
  {error, service_unavailable};
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    try
      DecodedError = jsx:decode(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
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
