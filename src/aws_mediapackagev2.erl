%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This guide is intended for creating AWS Elemental MediaPackage
%% resources in MediaPackage Version 2 (v2) starting from May 2023.
%%
%% To get started with MediaPackage v2, create your MediaPackage resources.
%% There isn't an automated process to migrate your resources from
%% MediaPackage v1 to MediaPackage v2.
%%
%% The names of the entities that you use to access this API, like URLs and
%% ARNs, all have the versioning information added, like &quot;v2&quot;, to
%% distinguish from the prior version. If you used MediaPackage prior to this
%% release, you can't use the MediaPackage v2 CLI or the MediaPackage v2
%% API to access any MediaPackage v1 resources.
%%
%% If you created resources in MediaPackage v1, use video on demand (VOD)
%% workflows, and aren't looking to migrate to MediaPackage v2 yet, see
%% the MediaPackage v1 Live API Reference.
%%
%% This is the AWS Elemental MediaPackage v2 Live REST API Reference. It
%% describes all the MediaPackage API operations for live content in detail,
%% and provides sample requests, responses, and errors for the supported web
%% services protocols.
%%
%% We assume that you have the IAM permissions that you need to use
%% MediaPackage via the REST API. We also assume that you are familiar with
%% the features and operations of MediaPackage, as described in the AWS
%% Elemental MediaPackage User Guide.
-module(aws_mediapackagev2).

-export([create_channel/3,
         create_channel/4,
         create_channel_group/2,
         create_channel_group/3,
         create_origin_endpoint/4,
         create_origin_endpoint/5,
         delete_channel/4,
         delete_channel/5,
         delete_channel_group/3,
         delete_channel_group/4,
         delete_channel_policy/4,
         delete_channel_policy/5,
         delete_origin_endpoint/5,
         delete_origin_endpoint/6,
         delete_origin_endpoint_policy/5,
         delete_origin_endpoint_policy/6,
         get_channel/3,
         get_channel/5,
         get_channel/6,
         get_channel_group/2,
         get_channel_group/4,
         get_channel_group/5,
         get_channel_policy/3,
         get_channel_policy/5,
         get_channel_policy/6,
         get_origin_endpoint/4,
         get_origin_endpoint/6,
         get_origin_endpoint/7,
         get_origin_endpoint_policy/4,
         get_origin_endpoint_policy/6,
         get_origin_endpoint_policy/7,
         list_channel_groups/1,
         list_channel_groups/3,
         list_channel_groups/4,
         list_channels/2,
         list_channels/4,
         list_channels/5,
         list_origin_endpoints/3,
         list_origin_endpoints/5,
         list_origin_endpoints/6,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_channel_policy/4,
         put_channel_policy/5,
         put_origin_endpoint_policy/5,
         put_origin_endpoint_policy/6,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_channel/4,
         update_channel/5,
         update_channel_group/3,
         update_channel_group/4,
         update_origin_endpoint/5,
         update_origin_endpoint/6]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Create a channel to start receiving content streams.
%%
%% The channel represents the input to MediaPackage for incoming live content
%% from an encoder such as AWS Elemental MediaLive. The channel receives
%% content, and after packaging it, outputs it through an origin endpoint to
%% downstream devices (such as video players or CDNs) that request the
%% content. You can create only one channel with each request. We recommend
%% that you spread out channels between channel groups, such as putting
%% redundant channels in the same AWS Region in different channel groups.
create_channel(Client, ChannelGroupName, Input) ->
    create_channel(Client, ChannelGroupName, Input, []).
create_channel(Client, ChannelGroupName, Input0, Options0) ->
    Method = post,
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amzn-client-token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Create a channel group to group your channels and origin endpoints.
%%
%% A channel group is the top-level resource that consists of channels and
%% origin endpoints that are associated with it and that provides predictable
%% URLs for stream delivery. All channels and origin endpoints within the
%% channel group are guaranteed to share the DNS. You can create only one
%% channel group with each request.
create_channel_group(Client, Input) ->
    create_channel_group(Client, Input, []).
create_channel_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/channelGroup"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amzn-client-token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The endpoint is attached to a channel, and represents the output of
%% the live content.
%%
%% You can associate multiple endpoints to a single channel. Each endpoint
%% gives players and downstream CDNs (such as Amazon CloudFront) access to
%% the content for playback. Content can't be served from a channel until
%% it has an endpoint. You can create only one endpoint with each request.
create_origin_endpoint(Client, ChannelGroupName, ChannelName, Input) ->
    create_origin_endpoint(Client, ChannelGroupName, ChannelName, Input, []).
create_origin_endpoint(Client, ChannelGroupName, ChannelName, Input0, Options0) ->
    Method = post,
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel/", aws_util:encode_uri(ChannelName), "/originEndpoint"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amzn-client-token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a channel to stop AWS Elemental MediaPackage from receiving
%% further content.
%%
%% You must delete the channel's origin endpoints before you can delete
%% the channel.
delete_channel(Client, ChannelGroupName, ChannelName, Input) ->
    delete_channel(Client, ChannelGroupName, ChannelName, Input, []).
delete_channel(Client, ChannelGroupName, ChannelName, Input0, Options0) ->
    Method = delete,
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel/", aws_util:encode_uri(ChannelName), "/"],
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

%% @doc Delete a channel group.
%%
%% You must delete the channel group's channels and origin endpoints
%% before you can delete the channel group. If you delete a channel group,
%% you'll lose access to the egress domain and will have to create a new
%% channel group to replace it.
delete_channel_group(Client, ChannelGroupName, Input) ->
    delete_channel_group(Client, ChannelGroupName, Input, []).
delete_channel_group(Client, ChannelGroupName, Input0, Options0) ->
    Method = delete,
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), ""],
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

%% @doc Delete a channel policy.
delete_channel_policy(Client, ChannelGroupName, ChannelName, Input) ->
    delete_channel_policy(Client, ChannelGroupName, ChannelName, Input, []).
delete_channel_policy(Client, ChannelGroupName, ChannelName, Input0, Options0) ->
    Method = delete,
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel/", aws_util:encode_uri(ChannelName), "/policy"],
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

%% @doc Origin endpoints can serve content until they're deleted.
%%
%% Delete the endpoint if it should no longer respond to playback requests.
%% You must delete all endpoints from a channel before you can delete the
%% channel.
delete_origin_endpoint(Client, ChannelGroupName, ChannelName, OriginEndpointName, Input) ->
    delete_origin_endpoint(Client, ChannelGroupName, ChannelName, OriginEndpointName, Input, []).
delete_origin_endpoint(Client, ChannelGroupName, ChannelName, OriginEndpointName, Input0, Options0) ->
    Method = delete,
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel/", aws_util:encode_uri(ChannelName), "/originEndpoint/", aws_util:encode_uri(OriginEndpointName), ""],
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

%% @doc Delete an origin endpoint policy.
delete_origin_endpoint_policy(Client, ChannelGroupName, ChannelName, OriginEndpointName, Input) ->
    delete_origin_endpoint_policy(Client, ChannelGroupName, ChannelName, OriginEndpointName, Input, []).
delete_origin_endpoint_policy(Client, ChannelGroupName, ChannelName, OriginEndpointName, Input0, Options0) ->
    Method = delete,
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel/", aws_util:encode_uri(ChannelName), "/originEndpoint/", aws_util:encode_uri(OriginEndpointName), "/policy"],
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

%% @doc Retrieves the specified channel that's configured in AWS
%% Elemental MediaPackage, including the origin endpoints that are associated
%% with it.
get_channel(Client, ChannelGroupName, ChannelName)
  when is_map(Client) ->
    get_channel(Client, ChannelGroupName, ChannelName, #{}, #{}).

get_channel(Client, ChannelGroupName, ChannelName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_channel(Client, ChannelGroupName, ChannelName, QueryMap, HeadersMap, []).

get_channel(Client, ChannelGroupName, ChannelName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel/", aws_util:encode_uri(ChannelName), "/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the specified channel group that's configured in AWS
%% Elemental MediaPackage, including the channels and origin endpoints that
%% are associated with it.
get_channel_group(Client, ChannelGroupName)
  when is_map(Client) ->
    get_channel_group(Client, ChannelGroupName, #{}, #{}).

get_channel_group(Client, ChannelGroupName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_channel_group(Client, ChannelGroupName, QueryMap, HeadersMap, []).

get_channel_group(Client, ChannelGroupName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the specified channel policy that's configured in AWS
%% Elemental MediaPackage.
%%
%% With policies, you can specify who has access to AWS resources and what
%% actions they can perform on those resources.
get_channel_policy(Client, ChannelGroupName, ChannelName)
  when is_map(Client) ->
    get_channel_policy(Client, ChannelGroupName, ChannelName, #{}, #{}).

get_channel_policy(Client, ChannelGroupName, ChannelName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_channel_policy(Client, ChannelGroupName, ChannelName, QueryMap, HeadersMap, []).

get_channel_policy(Client, ChannelGroupName, ChannelName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel/", aws_util:encode_uri(ChannelName), "/policy"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the specified origin endpoint that's configured in AWS
%% Elemental MediaPackage to obtain its playback URL and to view the
%% packaging settings that it's currently using.
get_origin_endpoint(Client, ChannelGroupName, ChannelName, OriginEndpointName)
  when is_map(Client) ->
    get_origin_endpoint(Client, ChannelGroupName, ChannelName, OriginEndpointName, #{}, #{}).

get_origin_endpoint(Client, ChannelGroupName, ChannelName, OriginEndpointName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_origin_endpoint(Client, ChannelGroupName, ChannelName, OriginEndpointName, QueryMap, HeadersMap, []).

get_origin_endpoint(Client, ChannelGroupName, ChannelName, OriginEndpointName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel/", aws_util:encode_uri(ChannelName), "/originEndpoint/", aws_util:encode_uri(OriginEndpointName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the specified origin endpoint policy that's configured
%% in AWS Elemental MediaPackage.
get_origin_endpoint_policy(Client, ChannelGroupName, ChannelName, OriginEndpointName)
  when is_map(Client) ->
    get_origin_endpoint_policy(Client, ChannelGroupName, ChannelName, OriginEndpointName, #{}, #{}).

get_origin_endpoint_policy(Client, ChannelGroupName, ChannelName, OriginEndpointName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_origin_endpoint_policy(Client, ChannelGroupName, ChannelName, OriginEndpointName, QueryMap, HeadersMap, []).

get_origin_endpoint_policy(Client, ChannelGroupName, ChannelName, OriginEndpointName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel/", aws_util:encode_uri(ChannelName), "/originEndpoint/", aws_util:encode_uri(OriginEndpointName), "/policy"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves all channel groups that are configured in AWS Elemental
%% MediaPackage, including the channels and origin endpoints that are
%% associated with it.
list_channel_groups(Client)
  when is_map(Client) ->
    list_channel_groups(Client, #{}, #{}).

list_channel_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channel_groups(Client, QueryMap, HeadersMap, []).

list_channel_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channelGroup"],
    SuccessStatusCode = 200,
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

%% @doc Retrieves all channels in a specific channel group that are
%% configured in AWS Elemental MediaPackage, including the origin endpoints
%% that are associated with it.
list_channels(Client, ChannelGroupName)
  when is_map(Client) ->
    list_channels(Client, ChannelGroupName, #{}, #{}).

list_channels(Client, ChannelGroupName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channels(Client, ChannelGroupName, QueryMap, HeadersMap, []).

list_channels(Client, ChannelGroupName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel"],
    SuccessStatusCode = 200,
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

%% @doc Retrieves all origin endpoints in a specific channel that are
%% configured in AWS Elemental MediaPackage.
list_origin_endpoints(Client, ChannelGroupName, ChannelName)
  when is_map(Client) ->
    list_origin_endpoints(Client, ChannelGroupName, ChannelName, #{}, #{}).

list_origin_endpoints(Client, ChannelGroupName, ChannelName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_origin_endpoints(Client, ChannelGroupName, ChannelName, QueryMap, HeadersMap, []).

list_origin_endpoints(Client, ChannelGroupName, ChannelName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel/", aws_util:encode_uri(ChannelName), "/originEndpoint"],
    SuccessStatusCode = 200,
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

%% @doc Lists the tags assigned to a resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Attaches an IAM policy to the specified channel.
%%
%% With policies, you can specify who has access to AWS resources and what
%% actions they can perform on those resources. You can attach only one
%% policy with each request.
put_channel_policy(Client, ChannelGroupName, ChannelName, Input) ->
    put_channel_policy(Client, ChannelGroupName, ChannelName, Input, []).
put_channel_policy(Client, ChannelGroupName, ChannelName, Input0, Options0) ->
    Method = put,
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel/", aws_util:encode_uri(ChannelName), "/policy"],
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

%% @doc Attaches an IAM policy to the specified origin endpoint.
%%
%% You can attach only one policy with each request.
put_origin_endpoint_policy(Client, ChannelGroupName, ChannelName, OriginEndpointName, Input) ->
    put_origin_endpoint_policy(Client, ChannelGroupName, ChannelName, OriginEndpointName, Input, []).
put_origin_endpoint_policy(Client, ChannelGroupName, ChannelName, OriginEndpointName, Input0, Options0) ->
    Method = post,
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel/", aws_util:encode_uri(ChannelName), "/originEndpoint/", aws_util:encode_uri(OriginEndpointName), "/policy"],
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

%% @doc Assigns one of more tags (key-value pairs) to the specified
%% MediaPackage resource.
%%
%% Tags can help you organize and categorize your resources. You can also use
%% them to scope user permissions, by granting a user permission to access or
%% change only resources with certain tag values. You can use the TagResource
%% operation with a resource that already has tags. If you specify a new tag
%% key for the resource, this tag is appended to the list of tags associated
%% with the resource. If you specify a tag key that is already associated
%% with the resource, the new tag value that you specify replaces the
%% previous value for that tag.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes one or more tags from the specified resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update the specified channel.
%%
%% You can edit if MediaPackage sends ingest or egress access logs to the
%% CloudWatch log group, if content will be encrypted, the description on a
%% channel, and your channel's policy settings. You can't edit the
%% name of the channel or CloudFront distribution details.
%%
%% Any edits you make that impact the video output may not be reflected for a
%% few minutes.
update_channel(Client, ChannelGroupName, ChannelName, Input) ->
    update_channel(Client, ChannelGroupName, ChannelName, Input, []).
update_channel(Client, ChannelGroupName, ChannelName, Input0, Options0) ->
    Method = put,
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel/", aws_util:encode_uri(ChannelName), "/"],
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

%% @doc Update the specified channel group.
%%
%% You can edit the description on a channel group for easier identification
%% later from the AWS Elemental MediaPackage console. You can't edit the
%% name of the channel group.
%%
%% Any edits you make that impact the video output may not be reflected for a
%% few minutes.
update_channel_group(Client, ChannelGroupName, Input) ->
    update_channel_group(Client, ChannelGroupName, Input, []).
update_channel_group(Client, ChannelGroupName, Input0, Options0) ->
    Method = put,
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), ""],
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

%% @doc Update the specified origin endpoint.
%%
%% Edit the packaging preferences on an endpoint to optimize the viewing
%% experience. You can't edit the name of the endpoint.
%%
%% Any edits you make that impact the video output may not be reflected for a
%% few minutes.
update_origin_endpoint(Client, ChannelGroupName, ChannelName, OriginEndpointName, Input) ->
    update_origin_endpoint(Client, ChannelGroupName, ChannelName, OriginEndpointName, Input, []).
update_origin_endpoint(Client, ChannelGroupName, ChannelName, OriginEndpointName, Input0, Options0) ->
    Method = put,
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel/", aws_util:encode_uri(ChannelName), "/originEndpoint/", aws_util:encode_uri(OriginEndpointName), ""],
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
    Client1 = Client#{service => <<"mediapackagev2">>},
    Host = build_host(<<"mediapackagev2">>, Client1),
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
