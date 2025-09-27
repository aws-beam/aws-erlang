%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc You can use the Billing API to programatically list the billing views
%% available to you for a given time period.
%%
%% A billing view represents a set of billing data.
%%
%% The Billing API provides the following endpoint:
%%
%% `https://billing.us-east-1.api.aws'
-module(aws_billing).

-export([associate_source_views/2,
         associate_source_views/3,
         create_billing_view/2,
         create_billing_view/3,
         delete_billing_view/2,
         delete_billing_view/3,
         disassociate_source_views/2,
         disassociate_source_views/3,
         get_billing_view/2,
         get_billing_view/3,
         get_resource_policy/2,
         get_resource_policy/3,
         list_billing_views/2,
         list_billing_views/3,
         list_source_views_for_billing_view/2,
         list_source_views_for_billing_view/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_billing_view/2,
         update_billing_view/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"resourceTags">> := list(resource_tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% list_billing_views_request() :: #{
%%   <<"activeTimeRange">> => active_time_range(),
%%   <<"arns">> => list(string()),
%%   <<"billingViewTypes">> => list(list(any())()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"ownerAccountId">> => string(),
%%   <<"sourceAccountId">> => string()
%% }
-type list_billing_views_request() :: #{binary() => any()}.

%% Example:
%% list_source_views_for_billing_view_request() :: #{
%%   <<"arn">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_source_views_for_billing_view_request() :: #{binary() => any()}.

%% Example:
%% update_billing_view_response() :: #{
%%   <<"arn">> => string(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type update_billing_view_response() :: #{binary() => any()}.

%% Example:
%% associate_source_views_response() :: #{
%%   <<"arn">> => string()
%% }
-type associate_source_views_response() :: #{binary() => any()}.

%% Example:
%% list_source_views_for_billing_view_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"sourceViews">> => list(string())
%% }
-type list_source_views_for_billing_view_response() :: #{binary() => any()}.

%% Example:
%% delete_billing_view_response() :: #{
%%   <<"arn">> => string()
%% }
-type delete_billing_view_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% tag_values() :: #{
%%   <<"key">> => string(),
%%   <<"values">> => list(string())
%% }
-type tag_values() :: #{binary() => any()}.

%% Example:
%% get_resource_policy_response() :: #{
%%   <<"policy">> => string(),
%%   <<"resourceArn">> => string()
%% }
-type get_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% get_billing_view_request() :: #{
%%   <<"arn">> := string()
%% }
-type get_billing_view_request() :: #{binary() => any()}.

%% Example:
%% disassociate_source_views_request() :: #{
%%   <<"arn">> := string(),
%%   <<"sourceViews">> := list(string())
%% }
-type disassociate_source_views_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"resourceTagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% create_billing_view_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"dataFilterExpression">> => expression(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"resourceTags">> => list(resource_tag()),
%%   <<"sourceViews">> := list(string())
%% }
-type create_billing_view_request() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% dimension_values() :: #{
%%   <<"key">> => list(any()),
%%   <<"values">> => list(string())
%% }
-type dimension_values() :: #{binary() => any()}.

%% Example:
%% delete_billing_view_request() :: #{
%%   <<"arn">> := string(),
%%   <<"force">> => [boolean()]
%% }
-type delete_billing_view_request() :: #{binary() => any()}.

%% Example:
%% update_billing_view_request() :: #{
%%   <<"arn">> := string(),
%%   <<"dataFilterExpression">> => expression(),
%%   <<"description">> => string(),
%%   <<"name">> => string()
%% }
-type update_billing_view_request() :: #{binary() => any()}.

%% Example:
%% disassociate_source_views_response() :: #{
%%   <<"arn">> => string()
%% }
-type disassociate_source_views_response() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string(),
%%   <<"quotaCode">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string(),
%%   <<"serviceCode">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% billing_view_health_status_exception() :: #{
%%   <<"message">> => string()
%% }
-type billing_view_health_status_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"resourceTags">> => list(resource_tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => string(),
%%   <<"name">> => string()
%% }
-type validation_exception_field() :: #{binary() => any()}.

%% Example:
%% get_resource_policy_request() :: #{
%%   <<"resourceArn">> := string()
%% }
-type get_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% active_time_range() :: #{
%%   <<"activeAfterInclusive">> => [non_neg_integer()],
%%   <<"activeBeforeInclusive">> => [non_neg_integer()]
%% }
-type active_time_range() :: #{binary() => any()}.

%% Example:
%% billing_view_element() :: #{
%%   <<"arn">> => string(),
%%   <<"billingViewType">> => list(any()),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"dataFilterExpression">> => expression(),
%%   <<"derivedViewCount">> => [integer()],
%%   <<"description">> => string(),
%%   <<"healthStatus">> => billing_view_health_status(),
%%   <<"name">> => string(),
%%   <<"ownerAccountId">> => string(),
%%   <<"sourceAccountId">> => string(),
%%   <<"sourceViewCount">> => [integer()],
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"viewDefinitionLastUpdatedAt">> => [non_neg_integer()]
%% }
-type billing_view_element() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% resource_tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type resource_tag() :: #{binary() => any()}.

%% Example:
%% time_range() :: #{
%%   <<"beginDateInclusive">> => [non_neg_integer()],
%%   <<"endDateInclusive">> => [non_neg_integer()]
%% }
-type time_range() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% billing_view_list_element() :: #{
%%   <<"arn">> => string(),
%%   <<"billingViewType">> => list(any()),
%%   <<"description">> => string(),
%%   <<"healthStatus">> => billing_view_health_status(),
%%   <<"name">> => string(),
%%   <<"ownerAccountId">> => string(),
%%   <<"sourceAccountId">> => string()
%% }
-type billing_view_list_element() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => string(),
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% billing_view_health_status() :: #{
%%   <<"statusCode">> => list(any()),
%%   <<"statusReasons">> => list(list(any())())
%% }
-type billing_view_health_status() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% expression() :: #{
%%   <<"dimensions">> => dimension_values(),
%%   <<"tags">> => tag_values(),
%%   <<"timeRange">> => time_range()
%% }
-type expression() :: #{binary() => any()}.

%% Example:
%% get_billing_view_response() :: #{
%%   <<"billingView">> => billing_view_element()
%% }
-type get_billing_view_response() :: #{binary() => any()}.

%% Example:
%% associate_source_views_request() :: #{
%%   <<"arn">> := string(),
%%   <<"sourceViews">> := list(string())
%% }
-type associate_source_views_request() :: #{binary() => any()}.

%% Example:
%% list_billing_views_response() :: #{
%%   <<"billingViews">> => list(billing_view_list_element()),
%%   <<"nextToken">> => string()
%% }
-type list_billing_views_response() :: #{binary() => any()}.

%% Example:
%% create_billing_view_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()]
%% }
-type create_billing_view_response() :: #{binary() => any()}.

-type associate_source_views_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    billing_view_health_status_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_billing_view_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    billing_view_health_status_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_billing_view_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type disassociate_source_views_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    billing_view_health_status_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_billing_view_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_resource_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_billing_views_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_source_views_for_billing_view_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
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

-type update_billing_view_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    billing_view_health_status_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates one or more source billing views with an existing billing
%% view.
%%
%% This allows creating aggregate billing views that combine data from
%% multiple sources.
-spec associate_source_views(aws_client:aws_client(), associate_source_views_request()) ->
    {ok, associate_source_views_response(), tuple()} |
    {error, any()} |
    {error, associate_source_views_errors(), tuple()}.
associate_source_views(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_source_views(Client, Input, []).

-spec associate_source_views(aws_client:aws_client(), associate_source_views_request(), proplists:proplist()) ->
    {ok, associate_source_views_response(), tuple()} |
    {error, any()} |
    {error, associate_source_views_errors(), tuple()}.
associate_source_views(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateSourceViews">>, Input, Options).

%% @doc Creates a billing view with the specified billing view attributes.
-spec create_billing_view(aws_client:aws_client(), create_billing_view_request()) ->
    {ok, create_billing_view_response(), tuple()} |
    {error, any()} |
    {error, create_billing_view_errors(), tuple()}.
create_billing_view(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_billing_view(Client, Input, []).

-spec create_billing_view(aws_client:aws_client(), create_billing_view_request(), proplists:proplist()) ->
    {ok, create_billing_view_response(), tuple()} |
    {error, any()} |
    {error, create_billing_view_errors(), tuple()}.
create_billing_view(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBillingView">>, Input, Options).

%% @doc Deletes the specified billing view.
-spec delete_billing_view(aws_client:aws_client(), delete_billing_view_request()) ->
    {ok, delete_billing_view_response(), tuple()} |
    {error, any()} |
    {error, delete_billing_view_errors(), tuple()}.
delete_billing_view(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_billing_view(Client, Input, []).

-spec delete_billing_view(aws_client:aws_client(), delete_billing_view_request(), proplists:proplist()) ->
    {ok, delete_billing_view_response(), tuple()} |
    {error, any()} |
    {error, delete_billing_view_errors(), tuple()}.
delete_billing_view(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBillingView">>, Input, Options).

%% @doc Removes the association between one or more source billing views and
%% an existing billing view.
%%
%% This allows modifying the composition of aggregate billing views.
-spec disassociate_source_views(aws_client:aws_client(), disassociate_source_views_request()) ->
    {ok, disassociate_source_views_response(), tuple()} |
    {error, any()} |
    {error, disassociate_source_views_errors(), tuple()}.
disassociate_source_views(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_source_views(Client, Input, []).

-spec disassociate_source_views(aws_client:aws_client(), disassociate_source_views_request(), proplists:proplist()) ->
    {ok, disassociate_source_views_response(), tuple()} |
    {error, any()} |
    {error, disassociate_source_views_errors(), tuple()}.
disassociate_source_views(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateSourceViews">>, Input, Options).

%% @doc Returns the metadata associated to the specified billing view ARN.
-spec get_billing_view(aws_client:aws_client(), get_billing_view_request()) ->
    {ok, get_billing_view_response(), tuple()} |
    {error, any()} |
    {error, get_billing_view_errors(), tuple()}.
get_billing_view(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_billing_view(Client, Input, []).

-spec get_billing_view(aws_client:aws_client(), get_billing_view_request(), proplists:proplist()) ->
    {ok, get_billing_view_response(), tuple()} |
    {error, any()} |
    {error, get_billing_view_errors(), tuple()}.
get_billing_view(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBillingView">>, Input, Options).

%% @doc Returns the resource-based policy document attached to the resource
%% in `JSON' format.
-spec get_resource_policy(aws_client:aws_client(), get_resource_policy_request()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_policy(Client, Input, []).

-spec get_resource_policy(aws_client:aws_client(), get_resource_policy_request(), proplists:proplist()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourcePolicy">>, Input, Options).

%% @doc Lists the billing views available for a given time period.
%%
%% Every Amazon Web Services account has a unique `PRIMARY' billing view
%% that represents the billing data available by default. Accounts that use
%% Billing Conductor also have `BILLING_GROUP' billing views representing
%% pro forma costs associated with each created billing group.
-spec list_billing_views(aws_client:aws_client(), list_billing_views_request()) ->
    {ok, list_billing_views_response(), tuple()} |
    {error, any()} |
    {error, list_billing_views_errors(), tuple()}.
list_billing_views(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_billing_views(Client, Input, []).

-spec list_billing_views(aws_client:aws_client(), list_billing_views_request(), proplists:proplist()) ->
    {ok, list_billing_views_response(), tuple()} |
    {error, any()} |
    {error, list_billing_views_errors(), tuple()}.
list_billing_views(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBillingViews">>, Input, Options).

%% @doc Lists the source views (managed Amazon Web Services billing views)
%% associated with the billing view.
-spec list_source_views_for_billing_view(aws_client:aws_client(), list_source_views_for_billing_view_request()) ->
    {ok, list_source_views_for_billing_view_response(), tuple()} |
    {error, any()} |
    {error, list_source_views_for_billing_view_errors(), tuple()}.
list_source_views_for_billing_view(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_source_views_for_billing_view(Client, Input, []).

-spec list_source_views_for_billing_view(aws_client:aws_client(), list_source_views_for_billing_view_request(), proplists:proplist()) ->
    {ok, list_source_views_for_billing_view_response(), tuple()} |
    {error, any()} |
    {error, list_source_views_for_billing_view_errors(), tuple()}.
list_source_views_for_billing_view(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSourceViewsForBillingView">>, Input, Options).

%% @doc Lists tags associated with the billing view resource.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc An API operation for adding one or more tags (key-value pairs) to a
%% resource.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes one or more tags from a resource.
%%
%% Specify only tag keys in your request. Don't specify the value.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc An API to update the attributes of the billing view.
-spec update_billing_view(aws_client:aws_client(), update_billing_view_request()) ->
    {ok, update_billing_view_response(), tuple()} |
    {error, any()} |
    {error, update_billing_view_errors(), tuple()}.
update_billing_view(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_billing_view(Client, Input, []).

-spec update_billing_view(aws_client:aws_client(), update_billing_view_request(), proplists:proplist()) ->
    {ok, update_billing_view_response(), tuple()} |
    {error, any()} |
    {error, update_billing_view_errors(), tuple()}.
update_billing_view(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateBillingView">>, Input, Options).

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
    Client1 = Client#{service => <<"billing">>},
    Host = build_host(<<"billing">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"AWSBilling.", Action/binary>>}
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
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
