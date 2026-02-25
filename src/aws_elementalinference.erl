%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is the AWS Elemental Inference REST API Reference.
%%
%% It provides information on the URL, request contents, and response
%% contents of each AWS Elemental Inference REST operation.
%%
%% We assume that you have the IAM permissions that you need to use AWS
%% Elemental Inference via the REST API. We also assume that you are familiar
%% with the features and operations of AWS Elemental Inference as described
%% in AWS Elemental Inference User Guide.
-module(aws_elementalinference).

-export([associate_feed/3,
         associate_feed/4,
         create_feed/2,
         create_feed/3,
         delete_feed/3,
         delete_feed/4,
         disassociate_feed/3,
         disassociate_feed/4,
         get_feed/2,
         get_feed/4,
         get_feed/5,
         list_feeds/1,
         list_feeds/3,
         list_feeds/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_feed/3,
         update_feed/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% associate_feed_request() :: #{
%%   <<"associatedResourceName">> := string(),
%%   <<"dryRun">> => [boolean()],
%%   <<"outputs">> := list(create_output())
%% }
-type associate_feed_request() :: #{binary() => any()}.


%% Example:
%% associate_feed_response() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string()
%% }
-type associate_feed_response() :: #{binary() => any()}.


%% Example:
%% clipping_config() :: #{
%%   <<"callbackMetadata">> => string()
%% }
-type clipping_config() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% create_feed_request() :: #{
%%   <<"name">> := string(),
%%   <<"outputs">> := list(create_output()),
%%   <<"tags">> => map()
%% }
-type create_feed_request() :: #{binary() => any()}.


%% Example:
%% create_feed_response() :: #{
%%   <<"arn">> => string(),
%%   <<"association">> => feed_association(),
%%   <<"dataEndpoints">> => list([string()]()),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"outputs">> => list(get_output()),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map()
%% }
-type create_feed_response() :: #{binary() => any()}.


%% Example:
%% create_output() :: #{
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"outputConfig">> => list(),
%%   <<"status">> => list(any())
%% }
-type create_output() :: #{binary() => any()}.

%% Example:
%% cropping_config() :: #{}
-type cropping_config() :: #{}.

%% Example:
%% delete_feed_request() :: #{}
-type delete_feed_request() :: #{}.


%% Example:
%% delete_feed_response() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"status">> => list(any())
%% }
-type delete_feed_response() :: #{binary() => any()}.


%% Example:
%% disassociate_feed_request() :: #{
%%   <<"associatedResourceName">> := string(),
%%   <<"dryRun">> => [boolean()]
%% }
-type disassociate_feed_request() :: #{binary() => any()}.


%% Example:
%% disassociate_feed_response() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string()
%% }
-type disassociate_feed_response() :: #{binary() => any()}.


%% Example:
%% feed_association() :: #{
%%   <<"associatedResourceName">> => string()
%% }
-type feed_association() :: #{binary() => any()}.


%% Example:
%% feed_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"association">> => feed_association(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type feed_summary() :: #{binary() => any()}.

%% Example:
%% get_feed_request() :: #{}
-type get_feed_request() :: #{}.


%% Example:
%% get_feed_response() :: #{
%%   <<"arn">> => string(),
%%   <<"association">> => feed_association(),
%%   <<"dataEndpoints">> => list([string()]()),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"outputs">> => list(get_output()),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map()
%% }
-type get_feed_response() :: #{binary() => any()}.


%% Example:
%% get_output() :: #{
%%   <<"description">> => string(),
%%   <<"fromAssociation">> => [boolean()],
%%   <<"name">> => string(),
%%   <<"outputConfig">> => list(),
%%   <<"status">> => list(any())
%% }
-type get_output() :: #{binary() => any()}.


%% Example:
%% internal_server_error_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_error_exception() :: #{binary() => any()}.


%% Example:
%% list_feeds_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_feeds_request() :: #{binary() => any()}.


%% Example:
%% list_feeds_response() :: #{
%%   <<"feeds">> => list(feed_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_feeds_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% too_many_request_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type too_many_request_exception() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% update_feed_request() :: #{
%%   <<"name">> := string(),
%%   <<"outputs">> := list(update_output())
%% }
-type update_feed_request() :: #{binary() => any()}.


%% Example:
%% update_feed_response() :: #{
%%   <<"arn">> => string(),
%%   <<"association">> => feed_association(),
%%   <<"dataEndpoints">> => list([string()]()),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"outputs">> => list(get_output()),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map()
%% }
-type update_feed_response() :: #{binary() => any()}.


%% Example:
%% update_output() :: #{
%%   <<"description">> => string(),
%%   <<"fromAssociation">> => [boolean()],
%%   <<"name">> => string(),
%%   <<"outputConfig">> => list(),
%%   <<"status">> => list(any())
%% }
-type update_output() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

-type associate_feed_errors() ::
    validation_exception() | 
    too_many_request_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_error_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_feed_errors() ::
    validation_exception() | 
    too_many_request_exception() | 
    service_quota_exceeded_exception() | 
    internal_server_error_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_feed_errors() ::
    validation_exception() | 
    too_many_request_exception() | 
    resource_not_found_exception() | 
    internal_server_error_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type disassociate_feed_errors() ::
    validation_exception() | 
    too_many_request_exception() | 
    resource_not_found_exception() | 
    internal_server_error_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type get_feed_errors() ::
    too_many_request_exception() | 
    resource_not_found_exception() | 
    internal_server_error_exception() | 
    access_denied_exception().

-type list_feeds_errors() ::
    validation_exception() | 
    too_many_request_exception() | 
    resource_not_found_exception() | 
    internal_server_error_exception() | 
    access_denied_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    too_many_request_exception() | 
    resource_not_found_exception() | 
    internal_server_error_exception() | 
    access_denied_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    too_many_request_exception() | 
    resource_not_found_exception() | 
    internal_server_error_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    too_many_request_exception() | 
    resource_not_found_exception() | 
    internal_server_error_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_feed_errors() ::
    validation_exception() | 
    too_many_request_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_error_exception() | 
    conflict_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a resource with the feed.
%%
%% The resource provides the input that Elemental Inference needs needs in
%% order to perform an Elemental Inference feature, such as cropping video.
%% You always provide the resource by associating it with a feed. You can
%% associate only one resource with each feed.
-spec associate_feed(aws_client:aws_client(), binary() | list(), associate_feed_request()) ->
    {ok, associate_feed_response(), tuple()} |
    {error, any()} |
    {error, associate_feed_errors(), tuple()}.
associate_feed(Client, Id, Input) ->
    associate_feed(Client, Id, Input, []).

-spec associate_feed(aws_client:aws_client(), binary() | list(), associate_feed_request(), proplists:proplist()) ->
    {ok, associate_feed_response(), tuple()} |
    {error, any()} |
    {error, associate_feed_errors(), tuple()}.
associate_feed(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/v1/feed/", aws_util:encode_uri(Id), "/associate"],
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

%% @doc Creates a feed.
%%
%% The feed is the target for live streams being sent by the calling
%% application. An example of a calling application is AWS Elemental
%% MediaLive. After you create the feed, you can associate a resource with
%% the feed.
-spec create_feed(aws_client:aws_client(), create_feed_request()) ->
    {ok, create_feed_response(), tuple()} |
    {error, any()} |
    {error, create_feed_errors(), tuple()}.
create_feed(Client, Input) ->
    create_feed(Client, Input, []).

-spec create_feed(aws_client:aws_client(), create_feed_request(), proplists:proplist()) ->
    {ok, create_feed_response(), tuple()} |
    {error, any()} |
    {error, create_feed_errors(), tuple()}.
create_feed(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/feed"],
    SuccessStatusCode = 202,
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

%% @doc Deletes the specified feed.
%%
%% The feed can be deleted at any time.
-spec delete_feed(aws_client:aws_client(), binary() | list(), delete_feed_request()) ->
    {ok, delete_feed_response(), tuple()} |
    {error, any()} |
    {error, delete_feed_errors(), tuple()}.
delete_feed(Client, Id, Input) ->
    delete_feed(Client, Id, Input, []).

-spec delete_feed(aws_client:aws_client(), binary() | list(), delete_feed_request(), proplists:proplist()) ->
    {ok, delete_feed_response(), tuple()} |
    {error, any()} |
    {error, delete_feed_errors(), tuple()}.
delete_feed(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/feed/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 202,
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

%% @doc Releases the resource (for example, an MediaLive channel) that is
%% associated with this feed.
%%
%% The outputs in the feed become disabled.
-spec disassociate_feed(aws_client:aws_client(), binary() | list(), disassociate_feed_request()) ->
    {ok, disassociate_feed_response(), tuple()} |
    {error, any()} |
    {error, disassociate_feed_errors(), tuple()}.
disassociate_feed(Client, Id, Input) ->
    disassociate_feed(Client, Id, Input, []).

-spec disassociate_feed(aws_client:aws_client(), binary() | list(), disassociate_feed_request(), proplists:proplist()) ->
    {ok, disassociate_feed_response(), tuple()} |
    {error, any()} |
    {error, disassociate_feed_errors(), tuple()}.
disassociate_feed(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/v1/feed/", aws_util:encode_uri(Id), "/disassociate"],
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

%% @doc Retrieves information about the specified feed.
-spec get_feed(aws_client:aws_client(), binary() | list()) ->
    {ok, get_feed_response(), tuple()} |
    {error, any()} |
    {error, get_feed_errors(), tuple()}.
get_feed(Client, Id)
  when is_map(Client) ->
    get_feed(Client, Id, #{}, #{}).

-spec get_feed(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_feed_response(), tuple()} |
    {error, any()} |
    {error, get_feed_errors(), tuple()}.
get_feed(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_feed(Client, Id, QueryMap, HeadersMap, []).

-spec get_feed(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_feed_response(), tuple()} |
    {error, any()} |
    {error, get_feed_errors(), tuple()}.
get_feed(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/feed/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays a list of feeds that belong to this AWS account.
-spec list_feeds(aws_client:aws_client()) ->
    {ok, list_feeds_response(), tuple()} |
    {error, any()} |
    {error, list_feeds_errors(), tuple()}.
list_feeds(Client)
  when is_map(Client) ->
    list_feeds(Client, #{}, #{}).

-spec list_feeds(aws_client:aws_client(), map(), map()) ->
    {ok, list_feeds_response(), tuple()} |
    {error, any()} |
    {error, list_feeds_errors(), tuple()}.
list_feeds(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_feeds(Client, QueryMap, HeadersMap, []).

-spec list_feeds(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_feeds_response(), tuple()} |
    {error, any()} |
    {error, list_feeds_errors(), tuple()}.
list_feeds(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/feeds"],
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

%% @doc List all tags that are on an Elemental Inference resource in the
%% current region.
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
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Associates the specified tags to the resource identified by the
%% specified resourceArn in the current region.
%%
%% If existing tags on a resource are not specified in the request
%% parameters, they are not changed. When a resource is deleted, the tags
%% associated with that resource are also deleted.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes specified tags from the specified resource in the current
%% region.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
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

%% @doc Updates the name and/or outputs in a feed.
-spec update_feed(aws_client:aws_client(), binary() | list(), update_feed_request()) ->
    {ok, update_feed_response(), tuple()} |
    {error, any()} |
    {error, update_feed_errors(), tuple()}.
update_feed(Client, Id, Input) ->
    update_feed(Client, Id, Input, []).

-spec update_feed(aws_client:aws_client(), binary() | list(), update_feed_request(), proplists:proplist()) ->
    {ok, update_feed_response(), tuple()} |
    {error, any()} |
    {error, update_feed_errors(), tuple()}.
update_feed(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/v1/feed/", aws_util:encode_uri(Id), ""],
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
    Client1 = Client#{service => <<"elemental-inference">>},
    Host = build_host(<<"elemental-inference">>, Client1),
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
