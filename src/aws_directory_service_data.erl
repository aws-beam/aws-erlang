%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Directory Service Data is an extension of
%% Directory Service.
%%
%% This API reference provides detailed information
%% about Directory Service Data operations and object types.
%%
%% With Directory Service Data, you can create, read, update, and delete
%% users, groups, and memberships from
%% your Managed Microsoft AD without additional costs and without deploying
%% dedicated management
%% instances. You can also perform built-in object management tasks across
%% directories without
%% direct network connectivity, which simplifies provisioning and access
%% management to achieve
%% fully automated deployments. Directory Service Data supports user and
%% group write operations, such as
%% `CreateUser' and `CreateGroup', within the organizational unit
%% (OU) of
%% your Managed Microsoft AD. Directory Service Data supports read
%% operations, such as `ListUsers' and
%% `ListGroups', on all users, groups, and group memberships within your
%% Managed Microsoft AD and across trusted realms. Directory Service Data
%% supports adding and removing group members in
%% your OU and the Amazon Web Services Delegated Groups OU, so you can grant
%% and deny access to specific roles
%% and permissions. For more information, see Manage users and
%% groups:
%% https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ms_ad_manage_users_groups.html
%% in the Directory Service Administration Guide.
%%
%% Directory management operations and configuration changes made against the
%% Directory Service
%% API will also reflect in Directory Service Data API with eventual
%% consistency. You can expect a short delay
%% between management changes, such as adding a new directory trust and
%% calling the Directory Service Data API
%% for the newly created trusted realm.
%%
%% Directory Service Data connects to your Managed Microsoft AD domain
%% controllers and performs operations on
%% underlying directory objects. When you create your Managed Microsoft AD,
%% you choose subnets for domain
%% controllers that Directory Service creates on your behalf. If a domain
%% controller is unavailable, Directory Service Data
%% uses an available domain controller. As a result, you might notice
%% eventual consistency while
%% objects replicate from one domain controller to another domain controller.
%% For more
%% information, see What
%% gets created:
%% https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ms_ad_getting_started_what_gets_created.html
%% in the Directory Service Administration Guide.
%% Directory limits vary by Managed Microsoft AD edition:
%%
%% Standard edition – Supports 8 transactions per
%% second (TPS) for read operations and 4 TPS for write operations per
%% directory. There's a
%% concurrency limit of 10 concurrent requests.
%%
%% Enterprise edition – Supports 16 transactions per
%% second (TPS) for read operations and 8 TPS for write operations per
%% directory. There's a
%% concurrency limit of 10 concurrent requests.
%%
%% Amazon Web Services Account - Supports a total of 100 TPS for
%% Directory Service Data operations across all directories.
%%
%% Directory Service Data only supports the Managed Microsoft AD directory
%% type and is only available in the primary
%% Amazon Web Services Region. For more information, see Managed Microsoft
%% AD:
%% https://docs.aws.amazon.com/directoryservice/latest/admin-guide/directory_microsoft_ad.html
%% and Primary vs additional Regions:
%% https://docs.aws.amazon.com/directoryservice/latest/admin-guide/multi-region-global-primary-additional.html
%% in the Directory Service Administration
%% Guide.
-module(aws_directory_service_data).

-export([add_group_member/2,
         add_group_member/3,
         create_group/2,
         create_group/3,
         create_user/2,
         create_user/3,
         delete_group/2,
         delete_group/3,
         delete_user/2,
         delete_user/3,
         describe_group/2,
         describe_group/3,
         describe_user/2,
         describe_user/3,
         disable_user/2,
         disable_user/3,
         list_group_members/2,
         list_group_members/3,
         list_groups/2,
         list_groups/3,
         list_groups_for_member/2,
         list_groups_for_member/3,
         list_users/2,
         list_users/3,
         remove_group_member/2,
         remove_group_member/3,
         search_groups/2,
         search_groups/3,
         search_users/2,
         search_users/3,
         update_group/2,
         update_group/3,
         update_user/2,
         update_user/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% list_groups_result() :: #{
%%   <<"DirectoryId">> => string(),
%%   <<"Groups">> => list(group_summary()),
%%   <<"NextToken">> => string(),
%%   <<"Realm">> => string()
%% }
-type list_groups_result() :: #{binary() => any()}.


%% Example:
%% user_summary() :: #{
%%   <<"Enabled">> => [boolean()],
%%   <<"GivenName">> => string(),
%%   <<"SAMAccountName">> => string(),
%%   <<"SID">> => string(),
%%   <<"Surname">> => string()
%% }
-type user_summary() :: #{binary() => any()}.


%% Example:
%% search_users_result() :: #{
%%   <<"DirectoryId">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Realm">> => string(),
%%   <<"Users">> => list(user())
%% }
-type search_users_result() :: #{binary() => any()}.

%% Example:
%% disable_user_result() :: #{}
-type disable_user_result() :: #{}.


%% Example:
%% create_group_result() :: #{
%%   <<"DirectoryId">> => string(),
%%   <<"SAMAccountName">> => string(),
%%   <<"SID">> => string()
%% }
-type create_group_result() :: #{binary() => any()}.


%% Example:
%% list_group_members_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"MemberRealm">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Realm">> => string(),
%%   <<"SAMAccountName">> := string()
%% }
-type list_group_members_request() :: #{binary() => any()}.

%% Example:
%% add_group_member_result() :: #{}
-type add_group_member_result() :: #{}.


%% Example:
%% create_user_result() :: #{
%%   <<"DirectoryId">> => string(),
%%   <<"SAMAccountName">> => string(),
%%   <<"SID">> => string()
%% }
-type create_user_result() :: #{binary() => any()}.


%% Example:
%% update_group_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DirectoryId">> := string(),
%%   <<"GroupScope">> => list(any()),
%%   <<"GroupType">> => list(any()),
%%   <<"OtherAttributes">> => map(),
%%   <<"SAMAccountName">> := string(),
%%   <<"UpdateType">> => list(any())
%% }
-type update_group_request() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% describe_user_result() :: #{
%%   <<"DirectoryId">> => string(),
%%   <<"DistinguishedName">> => string(),
%%   <<"EmailAddress">> => string(),
%%   <<"Enabled">> => [boolean()],
%%   <<"GivenName">> => string(),
%%   <<"OtherAttributes">> => map(),
%%   <<"Realm">> => string(),
%%   <<"SAMAccountName">> => string(),
%%   <<"SID">> => string(),
%%   <<"Surname">> => string(),
%%   <<"UserPrincipalName">> => string()
%% }
-type describe_user_result() :: #{binary() => any()}.


%% Example:
%% search_groups_result() :: #{
%%   <<"DirectoryId">> => string(),
%%   <<"Groups">> => list(group()),
%%   <<"NextToken">> => string(),
%%   <<"Realm">> => string()
%% }
-type search_groups_result() :: #{binary() => any()}.

%% Example:
%% delete_group_result() :: #{}
-type delete_group_result() :: #{}.


%% Example:
%% search_groups_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Realm">> => string(),
%%   <<"SearchAttributes">> := list(string()),
%%   <<"SearchString">> := string()
%% }
-type search_groups_request() :: #{binary() => any()}.


%% Example:
%% remove_group_member_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DirectoryId">> := string(),
%%   <<"GroupName">> := string(),
%%   <<"MemberName">> := string(),
%%   <<"MemberRealm">> => string()
%% }
-type remove_group_member_request() :: #{binary() => any()}.


%% Example:
%% list_group_members_result() :: #{
%%   <<"DirectoryId">> => string(),
%%   <<"MemberRealm">> => string(),
%%   <<"Members">> => list(member()),
%%   <<"NextToken">> => string(),
%%   <<"Realm">> => string()
%% }
-type list_group_members_result() :: #{binary() => any()}.


%% Example:
%% search_users_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Realm">> => string(),
%%   <<"SearchAttributes">> := list(string()),
%%   <<"SearchString">> := string()
%% }
-type search_users_request() :: #{binary() => any()}.


%% Example:
%% create_group_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DirectoryId">> := string(),
%%   <<"GroupScope">> => list(any()),
%%   <<"GroupType">> => list(any()),
%%   <<"OtherAttributes">> => map(),
%%   <<"SAMAccountName">> := string()
%% }
-type create_group_request() :: #{binary() => any()}.


%% Example:
%% list_users_result() :: #{
%%   <<"DirectoryId">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Realm">> => string(),
%%   <<"Users">> => list(user_summary())
%% }
-type list_users_result() :: #{binary() => any()}.


%% Example:
%% delete_user_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DirectoryId">> := string(),
%%   <<"SAMAccountName">> := string()
%% }
-type delete_user_request() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Reason">> => list(any())
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% describe_user_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"OtherAttributes">> => list(string()),
%%   <<"Realm">> => string(),
%%   <<"SAMAccountName">> := string()
%% }
-type describe_user_request() :: #{binary() => any()}.

%% Example:
%% update_user_result() :: #{}
-type update_user_result() :: #{}.


%% Example:
%% update_user_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DirectoryId">> := string(),
%%   <<"EmailAddress">> => string(),
%%   <<"GivenName">> => string(),
%%   <<"OtherAttributes">> => map(),
%%   <<"SAMAccountName">> := string(),
%%   <<"Surname">> => string(),
%%   <<"UpdateType">> => list(any())
%% }
-type update_user_request() :: #{binary() => any()}.

%% Example:
%% delete_user_result() :: #{}
-type delete_user_result() :: #{}.


%% Example:
%% directory_unavailable_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Reason">> => list(any())
%% }
-type directory_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% update_group_result() :: #{}
-type update_group_result() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RetryAfterSeconds">> => [integer()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% group() :: #{
%%   <<"DistinguishedName">> => string(),
%%   <<"GroupScope">> => list(any()),
%%   <<"GroupType">> => list(any()),
%%   <<"OtherAttributes">> => map(),
%%   <<"SAMAccountName">> => string(),
%%   <<"SID">> => string()
%% }
-type group() :: #{binary() => any()}.


%% Example:
%% add_group_member_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DirectoryId">> := string(),
%%   <<"GroupName">> := string(),
%%   <<"MemberName">> := string(),
%%   <<"MemberRealm">> => string()
%% }
-type add_group_member_request() :: #{binary() => any()}.


%% Example:
%% user() :: #{
%%   <<"DistinguishedName">> => string(),
%%   <<"EmailAddress">> => string(),
%%   <<"Enabled">> => [boolean()],
%%   <<"GivenName">> => string(),
%%   <<"OtherAttributes">> => map(),
%%   <<"SAMAccountName">> => string(),
%%   <<"SID">> => string(),
%%   <<"Surname">> => string(),
%%   <<"UserPrincipalName">> => string()
%% }
-type user() :: #{binary() => any()}.


%% Example:
%% describe_group_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"OtherAttributes">> => list(string()),
%%   <<"Realm">> => string(),
%%   <<"SAMAccountName">> := string()
%% }
-type describe_group_request() :: #{binary() => any()}.


%% Example:
%% list_groups_for_member_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"MemberRealm">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Realm">> => string(),
%%   <<"SAMAccountName">> := string()
%% }
-type list_groups_for_member_request() :: #{binary() => any()}.


%% Example:
%% delete_group_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DirectoryId">> := string(),
%%   <<"SAMAccountName">> := string()
%% }
-type delete_group_request() :: #{binary() => any()}.


%% Example:
%% member() :: #{
%%   <<"MemberType">> => list(any()),
%%   <<"SAMAccountName">> => string(),
%%   <<"SID">> => string()
%% }
-type member() :: #{binary() => any()}.


%% Example:
%% list_users_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Realm">> => string()
%% }
-type list_users_request() :: #{binary() => any()}.

%% Example:
%% remove_group_member_result() :: #{}
-type remove_group_member_result() :: #{}.


%% Example:
%% list_groups_for_member_result() :: #{
%%   <<"DirectoryId">> => string(),
%%   <<"Groups">> => list(group_summary()),
%%   <<"MemberRealm">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Realm">> => string()
%% }
-type list_groups_for_member_result() :: #{binary() => any()}.


%% Example:
%% describe_group_result() :: #{
%%   <<"DirectoryId">> => string(),
%%   <<"DistinguishedName">> => string(),
%%   <<"GroupScope">> => list(any()),
%%   <<"GroupType">> => list(any()),
%%   <<"OtherAttributes">> => map(),
%%   <<"Realm">> => string(),
%%   <<"SAMAccountName">> => string(),
%%   <<"SID">> => string()
%% }
-type describe_group_result() :: #{binary() => any()}.


%% Example:
%% group_summary() :: #{
%%   <<"GroupScope">> => list(any()),
%%   <<"GroupType">> => list(any()),
%%   <<"SAMAccountName">> => string(),
%%   <<"SID">> => string()
%% }
-type group_summary() :: #{binary() => any()}.


%% Example:
%% list_groups_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Realm">> => string()
%% }
-type list_groups_request() :: #{binary() => any()}.


%% Example:
%% disable_user_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DirectoryId">> := string(),
%%   <<"SAMAccountName">> := string()
%% }
-type disable_user_request() :: #{binary() => any()}.


%% Example:
%% create_user_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DirectoryId">> := string(),
%%   <<"EmailAddress">> => string(),
%%   <<"GivenName">> => string(),
%%   <<"OtherAttributes">> => map(),
%%   <<"SAMAccountName">> := string(),
%%   <<"Surname">> => string()
%% }
-type create_user_request() :: #{binary() => any()}.

-type add_group_member_errors() ::
    throttling_exception() | 
    validation_exception() | 
    directory_unavailable_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    directory_unavailable_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type create_user_errors() ::
    throttling_exception() | 
    validation_exception() | 
    directory_unavailable_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    directory_unavailable_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_user_errors() ::
    throttling_exception() | 
    validation_exception() | 
    directory_unavailable_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    directory_unavailable_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_user_errors() ::
    throttling_exception() | 
    validation_exception() | 
    directory_unavailable_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type disable_user_errors() ::
    throttling_exception() | 
    validation_exception() | 
    directory_unavailable_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_group_members_errors() ::
    throttling_exception() | 
    validation_exception() | 
    directory_unavailable_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_groups_errors() ::
    throttling_exception() | 
    validation_exception() | 
    directory_unavailable_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_groups_for_member_errors() ::
    throttling_exception() | 
    validation_exception() | 
    directory_unavailable_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_users_errors() ::
    throttling_exception() | 
    validation_exception() | 
    directory_unavailable_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type remove_group_member_errors() ::
    throttling_exception() | 
    validation_exception() | 
    directory_unavailable_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type search_groups_errors() ::
    throttling_exception() | 
    validation_exception() | 
    directory_unavailable_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type search_users_errors() ::
    throttling_exception() | 
    validation_exception() | 
    directory_unavailable_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type update_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    directory_unavailable_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_user_errors() ::
    throttling_exception() | 
    validation_exception() | 
    directory_unavailable_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds an existing user, group, or computer as a group member.
-spec add_group_member(aws_client:aws_client(), add_group_member_request()) ->
    {ok, add_group_member_result(), tuple()} |
    {error, any()} |
    {error, add_group_member_errors(), tuple()}.
add_group_member(Client, Input) ->
    add_group_member(Client, Input, []).

-spec add_group_member(aws_client:aws_client(), add_group_member_request(), proplists:proplist()) ->
    {ok, add_group_member_result(), tuple()} |
    {error, any()} |
    {error, add_group_member_errors(), tuple()}.
add_group_member(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GroupMemberships/AddGroupMember"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"DirectoryId">>, <<"DirectoryId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new group.
-spec create_group(aws_client:aws_client(), create_group_request()) ->
    {ok, create_group_result(), tuple()} |
    {error, any()} |
    {error, create_group_errors(), tuple()}.
create_group(Client, Input) ->
    create_group(Client, Input, []).

-spec create_group(aws_client:aws_client(), create_group_request(), proplists:proplist()) ->
    {ok, create_group_result(), tuple()} |
    {error, any()} |
    {error, create_group_errors(), tuple()}.
create_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/Groups/CreateGroup"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"DirectoryId">>, <<"DirectoryId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new user.
-spec create_user(aws_client:aws_client(), create_user_request()) ->
    {ok, create_user_result(), tuple()} |
    {error, any()} |
    {error, create_user_errors(), tuple()}.
create_user(Client, Input) ->
    create_user(Client, Input, []).

-spec create_user(aws_client:aws_client(), create_user_request(), proplists:proplist()) ->
    {ok, create_user_result(), tuple()} |
    {error, any()} |
    {error, create_user_errors(), tuple()}.
create_user(Client, Input0, Options0) ->
    Method = post,
    Path = ["/Users/CreateUser"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"DirectoryId">>, <<"DirectoryId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a group.
-spec delete_group(aws_client:aws_client(), delete_group_request()) ->
    {ok, delete_group_result(), tuple()} |
    {error, any()} |
    {error, delete_group_errors(), tuple()}.
delete_group(Client, Input) ->
    delete_group(Client, Input, []).

-spec delete_group(aws_client:aws_client(), delete_group_request(), proplists:proplist()) ->
    {ok, delete_group_result(), tuple()} |
    {error, any()} |
    {error, delete_group_errors(), tuple()}.
delete_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/Groups/DeleteGroup"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"DirectoryId">>, <<"DirectoryId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a user.
-spec delete_user(aws_client:aws_client(), delete_user_request()) ->
    {ok, delete_user_result(), tuple()} |
    {error, any()} |
    {error, delete_user_errors(), tuple()}.
delete_user(Client, Input) ->
    delete_user(Client, Input, []).

-spec delete_user(aws_client:aws_client(), delete_user_request(), proplists:proplist()) ->
    {ok, delete_user_result(), tuple()} |
    {error, any()} |
    {error, delete_user_errors(), tuple()}.
delete_user(Client, Input0, Options0) ->
    Method = post,
    Path = ["/Users/DeleteUser"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"DirectoryId">>, <<"DirectoryId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns information about a specific group.
-spec describe_group(aws_client:aws_client(), describe_group_request()) ->
    {ok, describe_group_result(), tuple()} |
    {error, any()} |
    {error, describe_group_errors(), tuple()}.
describe_group(Client, Input) ->
    describe_group(Client, Input, []).

-spec describe_group(aws_client:aws_client(), describe_group_request(), proplists:proplist()) ->
    {ok, describe_group_result(), tuple()} |
    {error, any()} |
    {error, describe_group_errors(), tuple()}.
describe_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/Groups/DescribeGroup"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"DirectoryId">>, <<"DirectoryId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns information about a specific user.
-spec describe_user(aws_client:aws_client(), describe_user_request()) ->
    {ok, describe_user_result(), tuple()} |
    {error, any()} |
    {error, describe_user_errors(), tuple()}.
describe_user(Client, Input) ->
    describe_user(Client, Input, []).

-spec describe_user(aws_client:aws_client(), describe_user_request(), proplists:proplist()) ->
    {ok, describe_user_result(), tuple()} |
    {error, any()} |
    {error, describe_user_errors(), tuple()}.
describe_user(Client, Input0, Options0) ->
    Method = post,
    Path = ["/Users/DescribeUser"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"DirectoryId">>, <<"DirectoryId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deactivates an active user account.
%%
%% For information about how to enable an inactive user
%% account, see ResetUserPassword:
%% https://docs.aws.amazon.com/directoryservice/latest/devguide/API_ResetUserPassword.html
%% in the Directory Service API Reference.
-spec disable_user(aws_client:aws_client(), disable_user_request()) ->
    {ok, disable_user_result(), tuple()} |
    {error, any()} |
    {error, disable_user_errors(), tuple()}.
disable_user(Client, Input) ->
    disable_user(Client, Input, []).

-spec disable_user(aws_client:aws_client(), disable_user_request(), proplists:proplist()) ->
    {ok, disable_user_result(), tuple()} |
    {error, any()} |
    {error, disable_user_errors(), tuple()}.
disable_user(Client, Input0, Options0) ->
    Method = post,
    Path = ["/Users/DisableUser"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"DirectoryId">>, <<"DirectoryId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns member information for the specified group.
%%
%% This operation supports pagination with the use of the `NextToken'
%% request and
%% response parameters. If more results are available, the
%% `ListGroupMembers.NextToken' member contains a token that you pass in
%% the next
%% call to `ListGroupMembers'. This retrieves the next set of items.
%%
%% You can also specify a maximum number of return results with the
%% `MaxResults'
%% parameter.
-spec list_group_members(aws_client:aws_client(), list_group_members_request()) ->
    {ok, list_group_members_result(), tuple()} |
    {error, any()} |
    {error, list_group_members_errors(), tuple()}.
list_group_members(Client, Input) ->
    list_group_members(Client, Input, []).

-spec list_group_members(aws_client:aws_client(), list_group_members_request(), proplists:proplist()) ->
    {ok, list_group_members_result(), tuple()} |
    {error, any()} |
    {error, list_group_members_errors(), tuple()}.
list_group_members(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GroupMemberships/ListGroupMembers"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"DirectoryId">>, <<"DirectoryId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns group information for the specified directory.
%%
%% This operation supports pagination with the use of the `NextToken'
%% request and
%% response parameters. If more results are available, the
%% `ListGroups.NextToken'
%% member contains a token that you pass in the next call to
%% `ListGroups'. This
%% retrieves the next set of items.
%%
%% You can also specify a maximum number of return results with the
%% `MaxResults'
%% parameter.
-spec list_groups(aws_client:aws_client(), list_groups_request()) ->
    {ok, list_groups_result(), tuple()} |
    {error, any()} |
    {error, list_groups_errors(), tuple()}.
list_groups(Client, Input) ->
    list_groups(Client, Input, []).

-spec list_groups(aws_client:aws_client(), list_groups_request(), proplists:proplist()) ->
    {ok, list_groups_result(), tuple()} |
    {error, any()} |
    {error, list_groups_errors(), tuple()}.
list_groups(Client, Input0, Options0) ->
    Method = post,
    Path = ["/Groups/ListGroups"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"DirectoryId">>, <<"DirectoryId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns group information for the specified member.
%%
%% This operation supports pagination with the use of the `NextToken'
%% request and
%% response parameters. If more results are available, the
%% `ListGroupsForMember.NextToken' member contains a token that you pass
%% in the next
%% call to `ListGroupsForMember'. This retrieves the next set of items.
%%
%% You can also specify a maximum number of return results with the
%% `MaxResults'
%% parameter.
-spec list_groups_for_member(aws_client:aws_client(), list_groups_for_member_request()) ->
    {ok, list_groups_for_member_result(), tuple()} |
    {error, any()} |
    {error, list_groups_for_member_errors(), tuple()}.
list_groups_for_member(Client, Input) ->
    list_groups_for_member(Client, Input, []).

-spec list_groups_for_member(aws_client:aws_client(), list_groups_for_member_request(), proplists:proplist()) ->
    {ok, list_groups_for_member_result(), tuple()} |
    {error, any()} |
    {error, list_groups_for_member_errors(), tuple()}.
list_groups_for_member(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GroupMemberships/ListGroupsForMember"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"DirectoryId">>, <<"DirectoryId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns user information for the specified directory.
%%
%% This operation supports pagination with the use of the `NextToken'
%% request and
%% response parameters. If more results are available, the
%% `ListUsers.NextToken'
%% member contains a token that you pass in the next call to `ListUsers'.
%% This
%% retrieves the next set of items.
%%
%% You can also specify a maximum number of return results with the
%% `MaxResults'
%% parameter.
-spec list_users(aws_client:aws_client(), list_users_request()) ->
    {ok, list_users_result(), tuple()} |
    {error, any()} |
    {error, list_users_errors(), tuple()}.
list_users(Client, Input) ->
    list_users(Client, Input, []).

-spec list_users(aws_client:aws_client(), list_users_request(), proplists:proplist()) ->
    {ok, list_users_result(), tuple()} |
    {error, any()} |
    {error, list_users_errors(), tuple()}.
list_users(Client, Input0, Options0) ->
    Method = post,
    Path = ["/Users/ListUsers"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"DirectoryId">>, <<"DirectoryId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a member from a group.
-spec remove_group_member(aws_client:aws_client(), remove_group_member_request()) ->
    {ok, remove_group_member_result(), tuple()} |
    {error, any()} |
    {error, remove_group_member_errors(), tuple()}.
remove_group_member(Client, Input) ->
    remove_group_member(Client, Input, []).

-spec remove_group_member(aws_client:aws_client(), remove_group_member_request(), proplists:proplist()) ->
    {ok, remove_group_member_result(), tuple()} |
    {error, any()} |
    {error, remove_group_member_errors(), tuple()}.
remove_group_member(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GroupMemberships/RemoveGroupMember"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"DirectoryId">>, <<"DirectoryId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Searches the specified directory for a group.
%%
%% You can find groups that match the
%% `SearchString' parameter with the value of their attributes included
%% in the
%% `SearchString' parameter.
%%
%% This operation supports pagination with the use of the `NextToken'
%% request and
%% response parameters. If more results are available, the
%% `SearchGroups.NextToken'
%% member contains a token that you pass in the next call to
%% `SearchGroups'. This
%% retrieves the next set of items.
%%
%% You can also specify a maximum number of return results with the
%% `MaxResults'
%% parameter.
-spec search_groups(aws_client:aws_client(), search_groups_request()) ->
    {ok, search_groups_result(), tuple()} |
    {error, any()} |
    {error, search_groups_errors(), tuple()}.
search_groups(Client, Input) ->
    search_groups(Client, Input, []).

-spec search_groups(aws_client:aws_client(), search_groups_request(), proplists:proplist()) ->
    {ok, search_groups_result(), tuple()} |
    {error, any()} |
    {error, search_groups_errors(), tuple()}.
search_groups(Client, Input0, Options0) ->
    Method = post,
    Path = ["/Groups/SearchGroups"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"DirectoryId">>, <<"DirectoryId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Searches the specified directory for a user.
%%
%% You can find users that match the
%% `SearchString' parameter with the value of their attributes included
%% in the
%% `SearchString' parameter.
%%
%% This operation supports pagination with the use of the `NextToken'
%% request and
%% response parameters. If more results are available, the
%% `SearchUsers.NextToken'
%% member contains a token that you pass in the next call to
%% `SearchUsers'. This
%% retrieves the next set of items.
%%
%% You can also specify a maximum number of return results with the
%% `MaxResults'
%% parameter.
-spec search_users(aws_client:aws_client(), search_users_request()) ->
    {ok, search_users_result(), tuple()} |
    {error, any()} |
    {error, search_users_errors(), tuple()}.
search_users(Client, Input) ->
    search_users(Client, Input, []).

-spec search_users(aws_client:aws_client(), search_users_request(), proplists:proplist()) ->
    {ok, search_users_result(), tuple()} |
    {error, any()} |
    {error, search_users_errors(), tuple()}.
search_users(Client, Input0, Options0) ->
    Method = post,
    Path = ["/Users/SearchUsers"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"DirectoryId">>, <<"DirectoryId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates group information.
-spec update_group(aws_client:aws_client(), update_group_request()) ->
    {ok, update_group_result(), tuple()} |
    {error, any()} |
    {error, update_group_errors(), tuple()}.
update_group(Client, Input) ->
    update_group(Client, Input, []).

-spec update_group(aws_client:aws_client(), update_group_request(), proplists:proplist()) ->
    {ok, update_group_result(), tuple()} |
    {error, any()} |
    {error, update_group_errors(), tuple()}.
update_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/Groups/UpdateGroup"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"DirectoryId">>, <<"DirectoryId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates user information.
-spec update_user(aws_client:aws_client(), update_user_request()) ->
    {ok, update_user_result(), tuple()} |
    {error, any()} |
    {error, update_user_errors(), tuple()}.
update_user(Client, Input) ->
    update_user(Client, Input, []).

-spec update_user(aws_client:aws_client(), update_user_request(), proplists:proplist()) ->
    {ok, update_user_result(), tuple()} |
    {error, any()} |
    {error, update_user_errors(), tuple()}.
update_user(Client, Input0, Options0) ->
    Method = post,
    Path = ["/Users/UpdateUser"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"DirectoryId">>, <<"DirectoryId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec proplists_take(any(), proplists:proplist(), any()) -> {any(), proplists:proplist()}.
proplists_take(Key, Proplist, Default) ->
  Value = proplists:get_value(Key, Proplist, Default),
  {Value, proplists:delete(Key, Proplist)}.

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
    Client1 = Client#{service => <<"ds-data">>},
    Host = build_host(<<"ds-data">>, Client1),
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
    Proto = aws_client:proto(Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
