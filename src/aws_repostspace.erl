%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS re:Post Private is a private version of AWS re:Post for
%% enterprises with Enterprise Support or Enterprise On-Ramp Support plans.
%%
%% It provides access to knowledge and experts to accelerate cloud adoption
%% and increase developer productivity. With your organization-specific
%% private re:Post, you can build an organization-specific developer
%% community that drives efficiencies at scale and provides access to
%% valuable knowledge resources. Additionally, re:Post Private centralizes
%% trusted AWS technical content and offers private discussion forums to
%% improve how your teams collaborate internally and with AWS to remove
%% technical obstacles, accelerate innovation, and scale more efficiently in
%% the cloud.
-module(aws_repostspace).

-export([batch_add_channel_role_to_accessors/4,
         batch_add_channel_role_to_accessors/5,
         batch_add_role/3,
         batch_add_role/4,
         batch_remove_channel_role_from_accessors/4,
         batch_remove_channel_role_from_accessors/5,
         batch_remove_role/3,
         batch_remove_role/4,
         create_channel/3,
         create_channel/4,
         create_space/2,
         create_space/3,
         delete_space/3,
         delete_space/4,
         deregister_admin/4,
         deregister_admin/5,
         get_channel/3,
         get_channel/5,
         get_channel/6,
         get_space/2,
         get_space/4,
         get_space/5,
         list_channels/2,
         list_channels/4,
         list_channels/5,
         list_spaces/1,
         list_spaces/3,
         list_spaces/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         register_admin/4,
         register_admin/5,
         send_invites/3,
         send_invites/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_channel/4,
         update_channel/5,
         update_space/3,
         update_space/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% batch_remove_role_output() :: #{
%%   <<"errors">> => list(batch_error()),
%%   <<"removedAccessorIds">> => list(string())
%% }
-type batch_remove_role_output() :: #{binary() => any()}.


%% Example:
%% batch_remove_channel_role_from_accessors_input() :: #{
%%   <<"accessorIds">> := list(string()),
%%   <<"channelRole">> := list(any())
%% }
-type batch_remove_channel_role_from_accessors_input() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% register_admin_input() :: #{}
-type register_admin_input() :: #{}.


%% Example:
%% list_spaces_output() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"spaces">> => list(space_data())
%% }
-type list_spaces_output() :: #{binary() => any()}.


%% Example:
%% batch_remove_role_input() :: #{
%%   <<"accessorIds">> := list(string()),
%%   <<"role">> := list(any())
%% }
-type batch_remove_role_input() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% batch_add_channel_role_to_accessors_output() :: #{
%%   <<"addedAccessorIds">> => list(string()),
%%   <<"errors">> => list(batch_error())
%% }
-type batch_add_channel_role_to_accessors_output() :: #{binary() => any()}.


%% Example:
%% batch_add_channel_role_to_accessors_input() :: #{
%%   <<"accessorIds">> := list(string()),
%%   <<"channelRole">> := list(any())
%% }
-type batch_add_channel_role_to_accessors_input() :: #{binary() => any()}.


%% Example:
%% supported_email_domains_status() :: #{
%%   <<"allowedDomains">> => list(string()),
%%   <<"enabled">> => list(any())
%% }
-type supported_email_domains_status() :: #{binary() => any()}.


%% Example:
%% channel_data() :: #{
%%   <<"channelDescription">> => string(),
%%   <<"channelId">> => string(),
%%   <<"channelName">> => string(),
%%   <<"channelStatus">> => list(any()),
%%   <<"createDateTime">> => [non_neg_integer()],
%%   <<"deleteDateTime">> => [non_neg_integer()],
%%   <<"groupCount">> => integer(),
%%   <<"spaceId">> => string(),
%%   <<"userCount">> => integer()
%% }
-type channel_data() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% get_space_input() :: #{}
-type get_space_input() :: #{}.


%% Example:
%% list_channels_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => [string()]
%% }
-type list_channels_input() :: #{binary() => any()}.


%% Example:
%% list_channels_output() :: #{
%%   <<"channels">> => list(channel_data()),
%%   <<"nextToken">> => [string()]
%% }
-type list_channels_output() :: #{binary() => any()}.


%% Example:
%% create_space_input() :: #{
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"roleArn">> => string(),
%%   <<"subdomain">> := string(),
%%   <<"supportedEmailDomains">> => supported_email_domains_parameters(),
%%   <<"tags">> => map(),
%%   <<"tier">> := list(any()),
%%   <<"userKMSKey">> => string()
%% }
-type create_space_input() :: #{binary() => any()}.


%% Example:
%% update_channel_input() :: #{
%%   <<"channelDescription">> => string(),
%%   <<"channelName">> := string()
%% }
-type update_channel_input() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% update_space_input() :: #{
%%   <<"description">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"supportedEmailDomains">> => supported_email_domains_parameters(),
%%   <<"tier">> => list(any())
%% }
-type update_space_input() :: #{binary() => any()}.


%% Example:
%% create_channel_output() :: #{
%%   <<"channelId">> => string()
%% }
-type create_channel_output() :: #{binary() => any()}.


%% Example:
%% batch_remove_channel_role_from_accessors_output() :: #{
%%   <<"errors">> => list(batch_error()),
%%   <<"removedAccessorIds">> => list(string())
%% }
-type batch_remove_channel_role_from_accessors_output() :: #{binary() => any()}.


%% Example:
%% space_data() :: #{
%%   <<"arn">> => string(),
%%   <<"configurationStatus">> => list(any()),
%%   <<"contentSize">> => float(),
%%   <<"createDateTime">> => [non_neg_integer()],
%%   <<"deleteDateTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"randomDomain">> => string(),
%%   <<"spaceId">> => string(),
%%   <<"status">> => string(),
%%   <<"storageLimit">> => float(),
%%   <<"supportedEmailDomains">> => supported_email_domains_status(),
%%   <<"tier">> => list(any()),
%%   <<"userCount">> => integer(),
%%   <<"userKMSKey">> => string(),
%%   <<"vanityDomain">> => string(),
%%   <<"vanityDomainStatus">> => list(any())
%% }
-type space_data() :: #{binary() => any()}.


%% Example:
%% get_channel_output() :: #{
%%   <<"channelDescription">> => string(),
%%   <<"channelId">> => string(),
%%   <<"channelName">> => string(),
%%   <<"channelRoles">> => map(),
%%   <<"channelStatus">> => list(any()),
%%   <<"createDateTime">> => [non_neg_integer()],
%%   <<"deleteDateTime">> => [non_neg_integer()],
%%   <<"spaceId">> => string()
%% }
-type get_channel_output() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()],
%%   <<"serviceCode">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% delete_space_input() :: #{}
-type delete_space_input() :: #{}.


%% Example:
%% send_invites_input() :: #{
%%   <<"accessorIds">> := list(string()),
%%   <<"body">> := string(),
%%   <<"title">> := string()
%% }
-type send_invites_input() :: #{binary() => any()}.


%% Example:
%% get_space_output() :: #{
%%   <<"applicationArn">> => string(),
%%   <<"arn">> => string(),
%%   <<"clientId">> => string(),
%%   <<"configurationStatus">> => list(any()),
%%   <<"contentSize">> => float(),
%%   <<"createDateTime">> => [non_neg_integer()],
%%   <<"customerRoleArn">> => string(),
%%   <<"deleteDateTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"groupAdmins">> => list(string()),
%%   <<"identityStoreId">> => string(),
%%   <<"name">> => string(),
%%   <<"randomDomain">> => string(),
%%   <<"roles">> => map(),
%%   <<"spaceId">> => string(),
%%   <<"status">> => string(),
%%   <<"storageLimit">> => float(),
%%   <<"supportedEmailDomains">> => supported_email_domains_status(),
%%   <<"tier">> => list(any()),
%%   <<"userAdmins">> => list(string()),
%%   <<"userCount">> => integer(),
%%   <<"userKMSKey">> => string(),
%%   <<"vanityDomain">> => string(),
%%   <<"vanityDomainStatus">> => list(any())
%% }
-type get_space_output() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% batch_add_role_output() :: #{
%%   <<"addedAccessorIds">> => list(string()),
%%   <<"errors">> => list(batch_error())
%% }
-type batch_add_role_output() :: #{binary() => any()}.


%% Example:
%% create_channel_input() :: #{
%%   <<"channelDescription">> => string(),
%%   <<"channelName">> := string()
%% }
-type create_channel_input() :: #{binary() => any()}.


%% Example:
%% list_spaces_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => [string()]
%% }
-type list_spaces_input() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% update_channel_output() :: #{}
-type update_channel_output() :: #{}.


%% Example:
%% create_space_output() :: #{
%%   <<"spaceId">> => string()
%% }
-type create_space_output() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% deregister_admin_input() :: #{}
-type deregister_admin_input() :: #{}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% batch_add_role_input() :: #{
%%   <<"accessorIds">> := list(string()),
%%   <<"role">> := list(any())
%% }
-type batch_add_role_input() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => [string()],
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.

%% Example:
%% get_channel_input() :: #{}
-type get_channel_input() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()],
%%   <<"serviceCode">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% supported_email_domains_parameters() :: #{
%%   <<"allowedDomains">> => list(string()),
%%   <<"enabled">> => list(any())
%% }
-type supported_email_domains_parameters() :: #{binary() => any()}.


%% Example:
%% batch_error() :: #{
%%   <<"accessorId">> => string(),
%%   <<"error">> => integer(),
%%   <<"message">> => string()
%% }
-type batch_error() :: #{binary() => any()}.

-type batch_add_channel_role_to_accessors_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type batch_add_role_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type batch_remove_channel_role_from_accessors_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type batch_remove_role_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_channel_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_space_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_space_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type deregister_admin_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_channel_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_space_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_channels_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_spaces_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type register_admin_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type send_invites_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_channel_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_space_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Add role to multiple users or groups in a private re:Post channel.
-spec batch_add_channel_role_to_accessors(aws_client:aws_client(), binary() | list(), binary() | list(), batch_add_channel_role_to_accessors_input()) ->
    {ok, batch_add_channel_role_to_accessors_output(), tuple()} |
    {error, any()} |
    {error, batch_add_channel_role_to_accessors_errors(), tuple()}.
batch_add_channel_role_to_accessors(Client, ChannelId, SpaceId, Input) ->
    batch_add_channel_role_to_accessors(Client, ChannelId, SpaceId, Input, []).

-spec batch_add_channel_role_to_accessors(aws_client:aws_client(), binary() | list(), binary() | list(), batch_add_channel_role_to_accessors_input(), proplists:proplist()) ->
    {ok, batch_add_channel_role_to_accessors_output(), tuple()} |
    {error, any()} |
    {error, batch_add_channel_role_to_accessors_errors(), tuple()}.
batch_add_channel_role_to_accessors(Client, ChannelId, SpaceId, Input0, Options0) ->
    Method = post,
    Path = ["/spaces/", aws_util:encode_uri(SpaceId), "/channels/", aws_util:encode_uri(ChannelId), "/roles"],
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

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Add a role to multiple users or groups in a private re:Post.
-spec batch_add_role(aws_client:aws_client(), binary() | list(), batch_add_role_input()) ->
    {ok, batch_add_role_output(), tuple()} |
    {error, any()} |
    {error, batch_add_role_errors(), tuple()}.
batch_add_role(Client, SpaceId, Input) ->
    batch_add_role(Client, SpaceId, Input, []).

-spec batch_add_role(aws_client:aws_client(), binary() | list(), batch_add_role_input(), proplists:proplist()) ->
    {ok, batch_add_role_output(), tuple()} |
    {error, any()} |
    {error, batch_add_role_errors(), tuple()}.
batch_add_role(Client, SpaceId, Input0, Options0) ->
    Method = post,
    Path = ["/spaces/", aws_util:encode_uri(SpaceId), "/roles"],
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

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Remove a role from multiple users or groups in a private re:Post
%% channel.
-spec batch_remove_channel_role_from_accessors(aws_client:aws_client(), binary() | list(), binary() | list(), batch_remove_channel_role_from_accessors_input()) ->
    {ok, batch_remove_channel_role_from_accessors_output(), tuple()} |
    {error, any()} |
    {error, batch_remove_channel_role_from_accessors_errors(), tuple()}.
batch_remove_channel_role_from_accessors(Client, ChannelId, SpaceId, Input) ->
    batch_remove_channel_role_from_accessors(Client, ChannelId, SpaceId, Input, []).

-spec batch_remove_channel_role_from_accessors(aws_client:aws_client(), binary() | list(), binary() | list(), batch_remove_channel_role_from_accessors_input(), proplists:proplist()) ->
    {ok, batch_remove_channel_role_from_accessors_output(), tuple()} |
    {error, any()} |
    {error, batch_remove_channel_role_from_accessors_errors(), tuple()}.
batch_remove_channel_role_from_accessors(Client, ChannelId, SpaceId, Input0, Options0) ->
    Method = patch,
    Path = ["/spaces/", aws_util:encode_uri(SpaceId), "/channels/", aws_util:encode_uri(ChannelId), "/roles"],
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

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Remove a role from multiple users or groups in a private re:Post.
-spec batch_remove_role(aws_client:aws_client(), binary() | list(), batch_remove_role_input()) ->
    {ok, batch_remove_role_output(), tuple()} |
    {error, any()} |
    {error, batch_remove_role_errors(), tuple()}.
batch_remove_role(Client, SpaceId, Input) ->
    batch_remove_role(Client, SpaceId, Input, []).

-spec batch_remove_role(aws_client:aws_client(), binary() | list(), batch_remove_role_input(), proplists:proplist()) ->
    {ok, batch_remove_role_output(), tuple()} |
    {error, any()} |
    {error, batch_remove_role_errors(), tuple()}.
batch_remove_role(Client, SpaceId, Input0, Options0) ->
    Method = patch,
    Path = ["/spaces/", aws_util:encode_uri(SpaceId), "/roles"],
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

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a channel in an AWS re:Post Private private re:Post.
-spec create_channel(aws_client:aws_client(), binary() | list(), create_channel_input()) ->
    {ok, create_channel_output(), tuple()} |
    {error, any()} |
    {error, create_channel_errors(), tuple()}.
create_channel(Client, SpaceId, Input) ->
    create_channel(Client, SpaceId, Input, []).

-spec create_channel(aws_client:aws_client(), binary() | list(), create_channel_input(), proplists:proplist()) ->
    {ok, create_channel_output(), tuple()} |
    {error, any()} |
    {error, create_channel_errors(), tuple()}.
create_channel(Client, SpaceId, Input0, Options0) ->
    Method = post,
    Path = ["/spaces/", aws_util:encode_uri(SpaceId), "/channels"],
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

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an AWS re:Post Private private re:Post.
-spec create_space(aws_client:aws_client(), create_space_input()) ->
    {ok, create_space_output(), tuple()} |
    {error, any()} |
    {error, create_space_errors(), tuple()}.
create_space(Client, Input) ->
    create_space(Client, Input, []).

-spec create_space(aws_client:aws_client(), create_space_input(), proplists:proplist()) ->
    {ok, create_space_output(), tuple()} |
    {error, any()} |
    {error, create_space_errors(), tuple()}.
create_space(Client, Input0, Options0) ->
    Method = post,
    Path = ["/spaces"],
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

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an AWS re:Post Private private re:Post.
-spec delete_space(aws_client:aws_client(), binary() | list(), delete_space_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_space_errors(), tuple()}.
delete_space(Client, SpaceId, Input) ->
    delete_space(Client, SpaceId, Input, []).

-spec delete_space(aws_client:aws_client(), binary() | list(), delete_space_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_space_errors(), tuple()}.
delete_space(Client, SpaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/spaces/", aws_util:encode_uri(SpaceId), ""],
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

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the user or group from the list of administrators of the
%% private re:Post.
-spec deregister_admin(aws_client:aws_client(), binary() | list(), binary() | list(), deregister_admin_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, deregister_admin_errors(), tuple()}.
deregister_admin(Client, AdminId, SpaceId, Input) ->
    deregister_admin(Client, AdminId, SpaceId, Input, []).

-spec deregister_admin(aws_client:aws_client(), binary() | list(), binary() | list(), deregister_admin_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, deregister_admin_errors(), tuple()}.
deregister_admin(Client, AdminId, SpaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/spaces/", aws_util:encode_uri(SpaceId), "/admins/", aws_util:encode_uri(AdminId), ""],
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

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Displays information about a channel in a private re:Post.
-spec get_channel(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_channel_output(), tuple()} |
    {error, any()} |
    {error, get_channel_errors(), tuple()}.
get_channel(Client, ChannelId, SpaceId)
  when is_map(Client) ->
    get_channel(Client, ChannelId, SpaceId, #{}, #{}).

-spec get_channel(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_channel_output(), tuple()} |
    {error, any()} |
    {error, get_channel_errors(), tuple()}.
get_channel(Client, ChannelId, SpaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_channel(Client, ChannelId, SpaceId, QueryMap, HeadersMap, []).

-spec get_channel(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_channel_output(), tuple()} |
    {error, any()} |
    {error, get_channel_errors(), tuple()}.
get_channel(Client, ChannelId, SpaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/spaces/", aws_util:encode_uri(SpaceId), "/channels/", aws_util:encode_uri(ChannelId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays information about the AWS re:Post Private private re:Post.
-spec get_space(aws_client:aws_client(), binary() | list()) ->
    {ok, get_space_output(), tuple()} |
    {error, any()} |
    {error, get_space_errors(), tuple()}.
get_space(Client, SpaceId)
  when is_map(Client) ->
    get_space(Client, SpaceId, #{}, #{}).

-spec get_space(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_space_output(), tuple()} |
    {error, any()} |
    {error, get_space_errors(), tuple()}.
get_space(Client, SpaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_space(Client, SpaceId, QueryMap, HeadersMap, []).

-spec get_space(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_space_output(), tuple()} |
    {error, any()} |
    {error, get_space_errors(), tuple()}.
get_space(Client, SpaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/spaces/", aws_util:encode_uri(SpaceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the list of channel within a private re:Post with some
%% information about each channel.
-spec list_channels(aws_client:aws_client(), binary() | list()) ->
    {ok, list_channels_output(), tuple()} |
    {error, any()} |
    {error, list_channels_errors(), tuple()}.
list_channels(Client, SpaceId)
  when is_map(Client) ->
    list_channels(Client, SpaceId, #{}, #{}).

-spec list_channels(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_channels_output(), tuple()} |
    {error, any()} |
    {error, list_channels_errors(), tuple()}.
list_channels(Client, SpaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channels(Client, SpaceId, QueryMap, HeadersMap, []).

-spec list_channels(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_channels_output(), tuple()} |
    {error, any()} |
    {error, list_channels_errors(), tuple()}.
list_channels(Client, SpaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/spaces/", aws_util:encode_uri(SpaceId), "/channels"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of AWS re:Post Private private re:Posts in the account
%% with some information about each private re:Post.
-spec list_spaces(aws_client:aws_client()) ->
    {ok, list_spaces_output(), tuple()} |
    {error, any()} |
    {error, list_spaces_errors(), tuple()}.
list_spaces(Client)
  when is_map(Client) ->
    list_spaces(Client, #{}, #{}).

-spec list_spaces(aws_client:aws_client(), map(), map()) ->
    {ok, list_spaces_output(), tuple()} |
    {error, any()} |
    {error, list_spaces_errors(), tuple()}.
list_spaces(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_spaces(Client, QueryMap, HeadersMap, []).

-spec list_spaces(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_spaces_output(), tuple()} |
    {error, any()} |
    {error, list_spaces_errors(), tuple()}.
list_spaces(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/spaces"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the tags that are associated with the AWS re:Post Private
%% resource specified by the resourceArn.
%%
%% The only resource that can be tagged is a private re:Post.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Adds a user or group to the list of administrators of the private
%% re:Post.
-spec register_admin(aws_client:aws_client(), binary() | list(), binary() | list(), register_admin_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, register_admin_errors(), tuple()}.
register_admin(Client, AdminId, SpaceId, Input) ->
    register_admin(Client, AdminId, SpaceId, Input, []).

-spec register_admin(aws_client:aws_client(), binary() | list(), binary() | list(), register_admin_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, register_admin_errors(), tuple()}.
register_admin(Client, AdminId, SpaceId, Input0, Options0) ->
    Method = post,
    Path = ["/spaces/", aws_util:encode_uri(SpaceId), "/admins/", aws_util:encode_uri(AdminId), ""],
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

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Sends an invitation email to selected users and groups.
-spec send_invites(aws_client:aws_client(), binary() | list(), send_invites_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, send_invites_errors(), tuple()}.
send_invites(Client, SpaceId, Input) ->
    send_invites(Client, SpaceId, Input, []).

-spec send_invites(aws_client:aws_client(), binary() | list(), send_invites_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, send_invites_errors(), tuple()}.
send_invites(Client, SpaceId, Input0, Options0) ->
    Method = post,
    Path = ["/spaces/", aws_util:encode_uri(SpaceId), "/invite"],
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

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates tags with an AWS re:Post Private resource.
%%
%% Currently, the only resource that can be tagged is the private re:Post. If
%% you specify a new tag key for the resource, the tag is appended to the
%% list of tags that are associated with the resource. If you specify a tag
%% key that’s already associated with the resource, the new tag value that
%% you specify replaces the previous value for that tag.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the association of the tag with the AWS re:Post Private
%% resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Modifies an existing channel.
-spec update_channel(aws_client:aws_client(), binary() | list(), binary() | list(), update_channel_input()) ->
    {ok, update_channel_output(), tuple()} |
    {error, any()} |
    {error, update_channel_errors(), tuple()}.
update_channel(Client, ChannelId, SpaceId, Input) ->
    update_channel(Client, ChannelId, SpaceId, Input, []).

-spec update_channel(aws_client:aws_client(), binary() | list(), binary() | list(), update_channel_input(), proplists:proplist()) ->
    {ok, update_channel_output(), tuple()} |
    {error, any()} |
    {error, update_channel_errors(), tuple()}.
update_channel(Client, ChannelId, SpaceId, Input0, Options0) ->
    Method = put,
    Path = ["/spaces/", aws_util:encode_uri(SpaceId), "/channels/", aws_util:encode_uri(ChannelId), ""],
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

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Modifies an existing AWS re:Post Private private re:Post.
-spec update_space(aws_client:aws_client(), binary() | list(), update_space_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_space_errors(), tuple()}.
update_space(Client, SpaceId, Input) ->
    update_space(Client, SpaceId, Input, []).

-spec update_space(aws_client:aws_client(), binary() | list(), update_space_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_space_errors(), tuple()}.
update_space(Client, SpaceId, Input0, Options0) ->
    Method = put,
    Path = ["/spaces/", aws_util:encode_uri(SpaceId), ""],
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

    Query_ = [],
    Input = Input2,

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
    Client1 = Client#{service => <<"repostspace">>},
    Host = build_host(<<"repostspace">>, Client1),
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
