%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Amazon Chime SDK Identity APIs in this section allow software
%% developers to create and manage unique instances of their messaging
%% applications.
%%
%% These APIs provide the overarching framework for creating and sending
%% messages. For more information about the identity APIs, refer to Amazon
%% Chime SDK identity.
-module(aws_chime_sdk_identity).

-export([create_app_instance/2,
         create_app_instance/3,
         create_app_instance_admin/3,
         create_app_instance_admin/4,
         create_app_instance_user/2,
         create_app_instance_user/3,
         delete_app_instance/3,
         delete_app_instance/4,
         delete_app_instance_admin/4,
         delete_app_instance_admin/5,
         delete_app_instance_user/3,
         delete_app_instance_user/4,
         deregister_app_instance_user_endpoint/4,
         deregister_app_instance_user_endpoint/5,
         describe_app_instance/2,
         describe_app_instance/4,
         describe_app_instance/5,
         describe_app_instance_admin/3,
         describe_app_instance_admin/5,
         describe_app_instance_admin/6,
         describe_app_instance_user/2,
         describe_app_instance_user/4,
         describe_app_instance_user/5,
         describe_app_instance_user_endpoint/3,
         describe_app_instance_user_endpoint/5,
         describe_app_instance_user_endpoint/6,
         get_app_instance_retention_settings/2,
         get_app_instance_retention_settings/4,
         get_app_instance_retention_settings/5,
         list_app_instance_admins/2,
         list_app_instance_admins/4,
         list_app_instance_admins/5,
         list_app_instance_user_endpoints/2,
         list_app_instance_user_endpoints/4,
         list_app_instance_user_endpoints/5,
         list_app_instance_users/2,
         list_app_instance_users/4,
         list_app_instance_users/5,
         list_app_instances/1,
         list_app_instances/3,
         list_app_instances/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_app_instance_retention_settings/3,
         put_app_instance_retention_settings/4,
         register_app_instance_user_endpoint/3,
         register_app_instance_user_endpoint/4,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_app_instance/3,
         update_app_instance/4,
         update_app_instance_user/3,
         update_app_instance_user/4,
         update_app_instance_user_endpoint/4,
         update_app_instance_user_endpoint/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an Amazon Chime SDK messaging `AppInstance' under an AWS
%% account.
%%
%% Only SDK messaging customers use this API. `CreateAppInstance'
%% supports idempotency behavior as described in the AWS API Standard.
%%
%% identity
create_app_instance(Client, Input) ->
    create_app_instance(Client, Input, []).
create_app_instance(Client, Input0, Options0) ->
    Method = post,
    Path = ["/app-instances"],
    SuccessStatusCode = 201,
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

%% @doc Promotes an `AppInstanceUser' to an `AppInstanceAdmin'.
%%
%% The promoted user can perform the following actions.
%%
%% <ul> <li> `ChannelModerator' actions across all channels in the
%% `AppInstance'.
%%
%% </li> <li> `DeleteChannelMessage' actions.
%%
%% </li> </ul> Only an `AppInstanceUser' can be promoted to an
%% `AppInstanceAdmin' role.
create_app_instance_admin(Client, AppInstanceArn, Input) ->
    create_app_instance_admin(Client, AppInstanceArn, Input, []).
create_app_instance_admin(Client, AppInstanceArn, Input0, Options0) ->
    Method = post,
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), "/admins"],
    SuccessStatusCode = 201,
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

%% @doc Creates a user under an Amazon Chime `AppInstance'.
%%
%% The request consists of a unique `appInstanceUserId' and `Name'
%% for that user.
create_app_instance_user(Client, Input) ->
    create_app_instance_user(Client, Input, []).
create_app_instance_user(Client, Input0, Options0) ->
    Method = post,
    Path = ["/app-instance-users"],
    SuccessStatusCode = 201,
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

%% @doc Deletes an `AppInstance' and all associated data asynchronously.
delete_app_instance(Client, AppInstanceArn, Input) ->
    delete_app_instance(Client, AppInstanceArn, Input, []).
delete_app_instance(Client, AppInstanceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), ""],
    SuccessStatusCode = 204,
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

%% @doc Demotes an `AppInstanceAdmin' to an `AppInstanceUser'.
%%
%% This action does not delete the user.
delete_app_instance_admin(Client, AppInstanceAdminArn, AppInstanceArn, Input) ->
    delete_app_instance_admin(Client, AppInstanceAdminArn, AppInstanceArn, Input, []).
delete_app_instance_admin(Client, AppInstanceAdminArn, AppInstanceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), "/admins/", aws_util:encode_uri(AppInstanceAdminArn), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes an `AppInstanceUser'.
delete_app_instance_user(Client, AppInstanceUserArn, Input) ->
    delete_app_instance_user(Client, AppInstanceUserArn, Input, []).
delete_app_instance_user(Client, AppInstanceUserArn, Input0, Options0) ->
    Method = delete,
    Path = ["/app-instance-users/", aws_util:encode_uri(AppInstanceUserArn), ""],
    SuccessStatusCode = 204,
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

%% @doc Deregisters an `AppInstanceUserEndpoint'.
deregister_app_instance_user_endpoint(Client, AppInstanceUserArn, EndpointId, Input) ->
    deregister_app_instance_user_endpoint(Client, AppInstanceUserArn, EndpointId, Input, []).
deregister_app_instance_user_endpoint(Client, AppInstanceUserArn, EndpointId, Input0, Options0) ->
    Method = delete,
    Path = ["/app-instance-users/", aws_util:encode_uri(AppInstanceUserArn), "/endpoints/", aws_util:encode_uri(EndpointId), ""],
    SuccessStatusCode = 204,
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

%% @doc Returns the full details of an `AppInstance'.
describe_app_instance(Client, AppInstanceArn)
  when is_map(Client) ->
    describe_app_instance(Client, AppInstanceArn, #{}, #{}).

describe_app_instance(Client, AppInstanceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_app_instance(Client, AppInstanceArn, QueryMap, HeadersMap, []).

describe_app_instance(Client, AppInstanceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the full details of an `AppInstanceAdmin'.
describe_app_instance_admin(Client, AppInstanceAdminArn, AppInstanceArn)
  when is_map(Client) ->
    describe_app_instance_admin(Client, AppInstanceAdminArn, AppInstanceArn, #{}, #{}).

describe_app_instance_admin(Client, AppInstanceAdminArn, AppInstanceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_app_instance_admin(Client, AppInstanceAdminArn, AppInstanceArn, QueryMap, HeadersMap, []).

describe_app_instance_admin(Client, AppInstanceAdminArn, AppInstanceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), "/admins/", aws_util:encode_uri(AppInstanceAdminArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the full details of an `AppInstanceUser'.
describe_app_instance_user(Client, AppInstanceUserArn)
  when is_map(Client) ->
    describe_app_instance_user(Client, AppInstanceUserArn, #{}, #{}).

describe_app_instance_user(Client, AppInstanceUserArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_app_instance_user(Client, AppInstanceUserArn, QueryMap, HeadersMap, []).

describe_app_instance_user(Client, AppInstanceUserArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instance-users/", aws_util:encode_uri(AppInstanceUserArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the full details of an `AppInstanceUserEndpoint'.
describe_app_instance_user_endpoint(Client, AppInstanceUserArn, EndpointId)
  when is_map(Client) ->
    describe_app_instance_user_endpoint(Client, AppInstanceUserArn, EndpointId, #{}, #{}).

describe_app_instance_user_endpoint(Client, AppInstanceUserArn, EndpointId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_app_instance_user_endpoint(Client, AppInstanceUserArn, EndpointId, QueryMap, HeadersMap, []).

describe_app_instance_user_endpoint(Client, AppInstanceUserArn, EndpointId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instance-users/", aws_util:encode_uri(AppInstanceUserArn), "/endpoints/", aws_util:encode_uri(EndpointId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the retention settings for an `AppInstance'.
get_app_instance_retention_settings(Client, AppInstanceArn)
  when is_map(Client) ->
    get_app_instance_retention_settings(Client, AppInstanceArn, #{}, #{}).

get_app_instance_retention_settings(Client, AppInstanceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_app_instance_retention_settings(Client, AppInstanceArn, QueryMap, HeadersMap, []).

get_app_instance_retention_settings(Client, AppInstanceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), "/retention-settings"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the administrators in the `AppInstance'.
list_app_instance_admins(Client, AppInstanceArn)
  when is_map(Client) ->
    list_app_instance_admins(Client, AppInstanceArn, #{}, #{}).

list_app_instance_admins(Client, AppInstanceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_app_instance_admins(Client, AppInstanceArn, QueryMap, HeadersMap, []).

list_app_instance_admins(Client, AppInstanceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), "/admins"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the `AppInstanceUserEndpoints' created under a single
%% `AppInstanceUser'.
list_app_instance_user_endpoints(Client, AppInstanceUserArn)
  when is_map(Client) ->
    list_app_instance_user_endpoints(Client, AppInstanceUserArn, #{}, #{}).

list_app_instance_user_endpoints(Client, AppInstanceUserArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_app_instance_user_endpoints(Client, AppInstanceUserArn, QueryMap, HeadersMap, []).

list_app_instance_user_endpoints(Client, AppInstanceUserArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instance-users/", aws_util:encode_uri(AppInstanceUserArn), "/endpoints"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all `AppInstanceUsers' created under a single
%% `AppInstance'.
list_app_instance_users(Client, AppInstanceArn)
  when is_map(Client) ->
    list_app_instance_users(Client, AppInstanceArn, #{}, #{}).

list_app_instance_users(Client, AppInstanceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_app_instance_users(Client, AppInstanceArn, QueryMap, HeadersMap, []).

list_app_instance_users(Client, AppInstanceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instance-users"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"app-instance-arn">>, AppInstanceArn},
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all Amazon Chime `AppInstance's created under a single AWS
%% account.
list_app_instances(Client)
  when is_map(Client) ->
    list_app_instances(Client, #{}, #{}).

list_app_instances(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_app_instances(Client, QueryMap, HeadersMap, []).

list_app_instances(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instances"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags applied to an Amazon Chime SDK identity resource.
list_tags_for_resource(Client, ResourceARN)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceARN, #{}, #{}).

list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"arn">>, ResourceARN}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Sets the amount of time in days that a given `AppInstance'
%% retains data.
put_app_instance_retention_settings(Client, AppInstanceArn, Input) ->
    put_app_instance_retention_settings(Client, AppInstanceArn, Input, []).
put_app_instance_retention_settings(Client, AppInstanceArn, Input0, Options0) ->
    Method = put,
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), "/retention-settings"],
    SuccessStatusCode = 200,
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

%% @doc Registers an endpoint under an Amazon Chime `AppInstanceUser'.
%%
%% The endpoint receives messages for a user. For push notifications, the
%% endpoint is a mobile device used to receive mobile push notifications for
%% a user.
register_app_instance_user_endpoint(Client, AppInstanceUserArn, Input) ->
    register_app_instance_user_endpoint(Client, AppInstanceUserArn, Input, []).
register_app_instance_user_endpoint(Client, AppInstanceUserArn, Input0, Options0) ->
    Method = post,
    Path = ["/app-instance-users/", aws_util:encode_uri(AppInstanceUserArn), "/endpoints"],
    SuccessStatusCode = 201,
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

%% @doc Applies the specified tags to the specified Amazon Chime SDK identity
%% resource.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tags?operation=tag-resource"],
    SuccessStatusCode = 204,
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

%% @doc Removes the specified tags from the specified Amazon Chime SDK
%% identity resource.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tags?operation=untag-resource"],
    SuccessStatusCode = 204,
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

%% @doc Updates `AppInstance' metadata.
update_app_instance(Client, AppInstanceArn, Input) ->
    update_app_instance(Client, AppInstanceArn, Input, []).
update_app_instance(Client, AppInstanceArn, Input0, Options0) ->
    Method = put,
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), ""],
    SuccessStatusCode = 200,
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

%% @doc Updates the details of an `AppInstanceUser'.
%%
%% You can update names and metadata.
update_app_instance_user(Client, AppInstanceUserArn, Input) ->
    update_app_instance_user(Client, AppInstanceUserArn, Input, []).
update_app_instance_user(Client, AppInstanceUserArn, Input0, Options0) ->
    Method = put,
    Path = ["/app-instance-users/", aws_util:encode_uri(AppInstanceUserArn), ""],
    SuccessStatusCode = 200,
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

%% @doc Updates the details of an `AppInstanceUserEndpoint'.
%%
%% You can update the name and `AllowMessage' values.
update_app_instance_user_endpoint(Client, AppInstanceUserArn, EndpointId, Input) ->
    update_app_instance_user_endpoint(Client, AppInstanceUserArn, EndpointId, Input, []).
update_app_instance_user_endpoint(Client, AppInstanceUserArn, EndpointId, Input0, Options0) ->
    Method = put,
    Path = ["/app-instance-users/", aws_util:encode_uri(AppInstanceUserArn), "/endpoints/", aws_util:encode_uri(EndpointId), ""],
    SuccessStatusCode = 200,
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
    Client1 = Client#{service => <<"chime">>},
    Host = build_host(<<"identity-chime">>, Client1),
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
