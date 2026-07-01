%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Support Authorization
%%
%% AWS SupportAuthZ enables you to control and authorize the actions that AWS
%% support operators can perform on your resources.
%%
%% You create cryptographically signed support permits specifying which
%% actions operators can perform, on which resources, and under what
%% time-window conditions. Permits are signed using a customer-managed AWS
%% KMS key (ECC_NIST_P384, SIGN_VERIFY) to ensure non-repudiation.
-module(aws_supportauthz).

-export([create_support_permit/2,
         create_support_permit/3,
         delete_support_permit/3,
         delete_support_permit/4,
         get_action/2,
         get_action/4,
         get_action/5,
         get_support_permit/2,
         get_support_permit/4,
         get_support_permit/5,
         list_actions/2,
         list_actions/4,
         list_actions/5,
         list_support_permit_requests/1,
         list_support_permit_requests/3,
         list_support_permit_requests/4,
         list_support_permits/1,
         list_support_permits/3,
         list_support_permits/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         reject_support_permit_request/3,
         reject_support_permit_request/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% action_summary() :: #{
%%   <<"action">> => string(),
%%   <<"description">> => string(),
%%   <<"service">> => string()
%% }
-type action_summary() :: #{binary() => any()}.


%% Example:
%% delete_support_permit_output() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"permit">> => permit(),
%%   <<"signingKeyInfo">> => list(),
%%   <<"status">> => list(any()),
%%   <<"supportCaseDisplayId">> => string()
%% }
-type delete_support_permit_output() :: #{binary() => any()}.


%% Example:
%% create_support_permit_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"permit">> := permit(),
%%   <<"signingKeyInfo">> := list(),
%%   <<"supportCaseDisplayId">> => string(),
%%   <<"tags">> => map()
%% }
-type create_support_permit_input() :: #{binary() => any()}.


%% Example:
%% list_actions_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"service">> := string()
%% }
-type list_actions_input() :: #{binary() => any()}.


%% Example:
%% create_support_permit_output() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"permit">> => permit(),
%%   <<"signingKeyInfo">> => list(),
%%   <<"status">> => list(any()),
%%   <<"supportCaseDisplayId">> => string(),
%%   <<"tags">> => map()
%% }
-type create_support_permit_output() :: #{binary() => any()}.


%% Example:
%% get_action_output() :: #{
%%   <<"action">> => string(),
%%   <<"description">> => string(),
%%   <<"service">> => string()
%% }
-type get_action_output() :: #{binary() => any()}.


%% Example:
%% get_support_permit_output() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"permit">> => permit(),
%%   <<"signingKeyInfo">> => list(),
%%   <<"status">> => list(any()),
%%   <<"supportCaseDisplayId">> => string(),
%%   <<"tags">> => map()
%% }
-type get_support_permit_output() :: #{binary() => any()}.


%% Example:
%% reject_support_permit_request_output() :: #{
%%   <<"requestArn">> => string()
%% }
-type reject_support_permit_request_output() :: #{binary() => any()}.


%% Example:
%% list_support_permit_requests_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"supportCaseDisplayId">> => string()
%% }
-type list_support_permit_requests_input() :: #{binary() => any()}.


%% Example:
%% list_support_permits_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"supportPermits">> => list(support_permit_summary())
%% }
-type list_support_permits_output() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.


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
%% reject_support_permit_request_input() :: #{}
-type reject_support_permit_request_input() :: #{}.


%% Example:
%% permit() :: #{
%%   <<"actions">> => list(),
%%   <<"conditions">> => list(list()),
%%   <<"resources">> => list()
%% }
-type permit() :: #{binary() => any()}.


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
%% list_support_permit_requests_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"supportPermitRequests">> => list(support_permit_request())
%% }
-type list_support_permit_requests_output() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"path">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% support_permit_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"permit">> => permit(),
%%   <<"signingKeyInfo">> => list(),
%%   <<"status">> => list(any()),
%%   <<"supportCaseDisplayId">> => string()
%% }
-type support_permit_summary() :: #{binary() => any()}.


%% Example:
%% tag_resource_input() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_input() :: #{binary() => any()}.


%% Example:
%% list_actions_output() :: #{
%%   <<"actionSummaries">> => list(action_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_actions_output() :: #{binary() => any()}.

%% Example:
%% tag_resource_output() :: #{}
-type tag_resource_output() :: #{}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% delete_support_permit_input() :: #{}
-type delete_support_permit_input() :: #{}.


%% Example:
%% support_permit_request() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"permit">> => permit(),
%%   <<"requestArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"supportCaseDisplayId">> => string(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type support_permit_request() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% untag_resource_input() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_input() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{}
-type list_tags_for_resource_input() :: #{}.

%% Example:
%% untag_resource_output() :: #{}
-type untag_resource_output() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% list_support_permits_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"supportPermitStatuses">> => list(list(any())())
%% }
-type list_support_permits_input() :: #{binary() => any()}.

%% Example:
%% get_support_permit_input() :: #{}
-type get_support_permit_input() :: #{}.

%% Example:
%% get_action_input() :: #{}
-type get_action_input() :: #{}.

-type create_support_permit_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_support_permit_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_action_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_support_permit_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_actions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_support_permit_requests_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_support_permits_errors() ::
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

-type reject_support_permit_request_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

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

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a support permit that authorizes an AWS support operator to
%% perform specified actions on specified resources.
%%
%% The permit is cryptographically signed using a customer-managed AWS KMS
%% key (ECC_NIST_P384, SIGN_VERIFY) to ensure non-repudiation.
-spec create_support_permit(aws_client:aws_client(), create_support_permit_input()) ->
    {ok, create_support_permit_output(), tuple()} |
    {error, any()} |
    {error, create_support_permit_errors(), tuple()}.
create_support_permit(Client, Input) ->
    create_support_permit(Client, Input, []).

-spec create_support_permit(aws_client:aws_client(), create_support_permit_input(), proplists:proplist()) ->
    {ok, create_support_permit_output(), tuple()} |
    {error, any()} |
    {error, create_support_permit_errors(), tuple()}.
create_support_permit(Client, Input0, Options0) ->
    Method = post,
    Path = ["/support-permits"],
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

%% @doc Deletes a support permit, revoking the authorization previously
%% granted to the AWS support operator.
-spec delete_support_permit(aws_client:aws_client(), binary() | list(), delete_support_permit_input()) ->
    {ok, delete_support_permit_output(), tuple()} |
    {error, any()} |
    {error, delete_support_permit_errors(), tuple()}.
delete_support_permit(Client, SupportPermitIdentifier, Input) ->
    delete_support_permit(Client, SupportPermitIdentifier, Input, []).

-spec delete_support_permit(aws_client:aws_client(), binary() | list(), delete_support_permit_input(), proplists:proplist()) ->
    {ok, delete_support_permit_output(), tuple()} |
    {error, any()} |
    {error, delete_support_permit_errors(), tuple()}.
delete_support_permit(Client, SupportPermitIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/support-permits/", aws_util:encode_uri(SupportPermitIdentifier), ""],
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

%% @doc Retrieves the description of a specific support action.
-spec get_action(aws_client:aws_client(), binary() | list()) ->
    {ok, get_action_output(), tuple()} |
    {error, any()} |
    {error, get_action_errors(), tuple()}.
get_action(Client, Action)
  when is_map(Client) ->
    get_action(Client, Action, #{}, #{}).

-spec get_action(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_action_output(), tuple()} |
    {error, any()} |
    {error, get_action_errors(), tuple()}.
get_action(Client, Action, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_action(Client, Action, QueryMap, HeadersMap, []).

-spec get_action(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_action_output(), tuple()} |
    {error, any()} |
    {error, get_action_errors(), tuple()}.
get_action(Client, Action, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/actions/", aws_util:encode_uri(Action), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the details of a support permit by its ARN or name.
-spec get_support_permit(aws_client:aws_client(), binary() | list()) ->
    {ok, get_support_permit_output(), tuple()} |
    {error, any()} |
    {error, get_support_permit_errors(), tuple()}.
get_support_permit(Client, SupportPermitIdentifier)
  when is_map(Client) ->
    get_support_permit(Client, SupportPermitIdentifier, #{}, #{}).

-spec get_support_permit(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_support_permit_output(), tuple()} |
    {error, any()} |
    {error, get_support_permit_errors(), tuple()}.
get_support_permit(Client, SupportPermitIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_support_permit(Client, SupportPermitIdentifier, QueryMap, HeadersMap, []).

-spec get_support_permit(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_support_permit_output(), tuple()} |
    {error, any()} |
    {error, get_support_permit_errors(), tuple()}.
get_support_permit(Client, SupportPermitIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/support-permits/", aws_util:encode_uri(SupportPermitIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists available support actions for a specified AWS service.
%%
%% Use pagination to ensure that the operation returns quickly and
%% successfully.
-spec list_actions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_actions_output(), tuple()} |
    {error, any()} |
    {error, list_actions_errors(), tuple()}.
list_actions(Client, Service)
  when is_map(Client) ->
    list_actions(Client, Service, #{}, #{}).

-spec list_actions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_actions_output(), tuple()} |
    {error, any()} |
    {error, list_actions_errors(), tuple()}.
list_actions(Client, Service, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_actions(Client, Service, QueryMap, HeadersMap, []).

-spec list_actions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_actions_output(), tuple()} |
    {error, any()} |
    {error, list_actions_errors(), tuple()}.
list_actions(Client, Service, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/actions"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"service">>, Service}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists permit requests from AWS support operators.
%%
%% Use pagination to ensure that the operation returns quickly and
%% successfully.
-spec list_support_permit_requests(aws_client:aws_client()) ->
    {ok, list_support_permit_requests_output(), tuple()} |
    {error, any()} |
    {error, list_support_permit_requests_errors(), tuple()}.
list_support_permit_requests(Client)
  when is_map(Client) ->
    list_support_permit_requests(Client, #{}, #{}).

-spec list_support_permit_requests(aws_client:aws_client(), map(), map()) ->
    {ok, list_support_permit_requests_output(), tuple()} |
    {error, any()} |
    {error, list_support_permit_requests_errors(), tuple()}.
list_support_permit_requests(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_support_permit_requests(Client, QueryMap, HeadersMap, []).

-spec list_support_permit_requests(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_support_permit_requests_output(), tuple()} |
    {error, any()} |
    {error, list_support_permit_requests_errors(), tuple()}.
list_support_permit_requests(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/support-permit-requests"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"supportCaseDisplayId">>, maps:get(<<"supportCaseDisplayId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all support permits in the caller's account.
%%
%% Use pagination to ensure that the operation returns quickly and
%% successfully.
-spec list_support_permits(aws_client:aws_client()) ->
    {ok, list_support_permits_output(), tuple()} |
    {error, any()} |
    {error, list_support_permits_errors(), tuple()}.
list_support_permits(Client)
  when is_map(Client) ->
    list_support_permits(Client, #{}, #{}).

-spec list_support_permits(aws_client:aws_client(), map(), map()) ->
    {ok, list_support_permits_output(), tuple()} |
    {error, any()} |
    {error, list_support_permits_errors(), tuple()}.
list_support_permits(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_support_permits(Client, QueryMap, HeadersMap, []).

-spec list_support_permits(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_support_permits_output(), tuple()} |
    {error, any()} |
    {error, list_support_permits_errors(), tuple()}.
list_support_permits(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/support-permits"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"supportPermitStatuses">>, maps:get(<<"supportPermitStatuses">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags associated with a support permit resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
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

%% @doc Rejects a permit request from an AWS support operator.
%%
%% The operator cannot proceed with the requested action.
-spec reject_support_permit_request(aws_client:aws_client(), binary() | list(), reject_support_permit_request_input()) ->
    {ok, reject_support_permit_request_output(), tuple()} |
    {error, any()} |
    {error, reject_support_permit_request_errors(), tuple()}.
reject_support_permit_request(Client, RequestArn, Input) ->
    reject_support_permit_request(Client, RequestArn, Input, []).

-spec reject_support_permit_request(aws_client:aws_client(), binary() | list(), reject_support_permit_request_input(), proplists:proplist()) ->
    {ok, reject_support_permit_request_output(), tuple()} |
    {error, any()} |
    {error, reject_support_permit_request_errors(), tuple()}.
reject_support_permit_request(Client, RequestArn, Input0, Options0) ->
    Method = put,
    Path = ["/support-permit-requests/", aws_util:encode_uri(RequestArn), "/reject"],
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

%% @doc Adds or overwrites one or more tags for a support permit resource.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input(), proplists:proplist()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes one or more tags from a support permit resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input(), proplists:proplist()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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
    Client1 = Client#{service => <<"supportauthz">>},
    DefaultHost = build_host(<<"supportauthz">>, Client1),
    URL0 = build_url(DefaultHost, Path, Client1),
    PathBin = erlang:iolist_to_binary(Path),
    {URL1, Host} = aws_util:apply_endpoint_url_override(URL0, DefaultHost, PathBin, <<"AWS_ENDPOINT_URL_SUPPORTAUTHZ">>),
    URL = aws_request:add_query(URL1, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
         true when is_list(Input) ->
           proplists:get_value(<<"Body">>, Input, <<"">>);
         true when Input =:= undefined ->
           <<"">>;
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

