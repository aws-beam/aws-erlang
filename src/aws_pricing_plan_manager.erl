%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Manages flat-rate pricing subscriptions for supported services.
%%
%% Use this API to create, approve, update, and cancel subscriptions;
%% associate and disassociate resources; and retrieve subscription details.
%% With a flat-rate pricing subscription, you pay a fixed recurring fee for
%% eligible resources instead of usage-based pricing.
-module(aws_pricing_plan_manager).

-export([approve_paid_subscription/2,
         approve_paid_subscription/3,
         associate_resources_to_subscription/2,
         associate_resources_to_subscription/3,
         cancel_subscription/2,
         cancel_subscription/3,
         cancel_subscription_change/2,
         cancel_subscription_change/3,
         create_subscription/2,
         create_subscription/3,
         disassociate_resources_from_subscription/2,
         disassociate_resources_from_subscription/3,
         get_subscription/2,
         get_subscription/3,
         list_subscriptions/2,
         list_subscriptions/3,
         update_subscription/2,
         update_subscription/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% approve_paid_subscription_input() :: #{
%%   <<"arn">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"ifMatch">> := [string()]
%% }
-type approve_paid_subscription_input() :: #{binary() => any()}.


%% Example:
%% approve_paid_subscription_output() :: #{
%%   <<"eTag">> => [string()],
%%   <<"subscription">> => subscription()
%% }
-type approve_paid_subscription_output() :: #{binary() => any()}.


%% Example:
%% associate_resources_to_subscription_input() :: #{
%%   <<"arn">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"ifMatch">> := [string()],
%%   <<"resourceArns">> := list([string()]())
%% }
-type associate_resources_to_subscription_input() :: #{binary() => any()}.


%% Example:
%% associate_resources_to_subscription_output() :: #{
%%   <<"eTag">> => [string()],
%%   <<"subscription">> => subscription()
%% }
-type associate_resources_to_subscription_output() :: #{binary() => any()}.


%% Example:
%% cancel_subscription_change_input() :: #{
%%   <<"arn">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"ifMatch">> := [string()]
%% }
-type cancel_subscription_change_input() :: #{binary() => any()}.


%% Example:
%% cancel_subscription_change_output() :: #{
%%   <<"eTag">> => [string()],
%%   <<"subscription">> => subscription()
%% }
-type cancel_subscription_change_output() :: #{binary() => any()}.


%% Example:
%% cancel_subscription_input() :: #{
%%   <<"arn">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"ifMatch">> := [string()]
%% }
-type cancel_subscription_input() :: #{binary() => any()}.


%% Example:
%% cancel_subscription_output() :: #{
%%   <<"eTag">> => [string()],
%%   <<"subscription">> => subscription()
%% }
-type cancel_subscription_output() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% create_subscription_input() :: #{
%%   <<"approvalMode">> => list(any()),
%%   <<"clientToken">> => string(),
%%   <<"planFamily">> := [string()],
%%   <<"planTier">> := [string()],
%%   <<"resourceArns">> := list([string()]()),
%%   <<"usageLevel">> => [string()]
%% }
-type create_subscription_input() :: #{binary() => any()}.


%% Example:
%% create_subscription_output() :: #{
%%   <<"eTag">> => [string()],
%%   <<"subscription">> => subscription()
%% }
-type create_subscription_output() :: #{binary() => any()}.


%% Example:
%% disassociate_resources_from_subscription_input() :: #{
%%   <<"arn">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"ifMatch">> := [string()],
%%   <<"resourceArns">> := list([string()]())
%% }
-type disassociate_resources_from_subscription_input() :: #{binary() => any()}.


%% Example:
%% disassociate_resources_from_subscription_output() :: #{
%%   <<"eTag">> => [string()],
%%   <<"subscription">> => subscription()
%% }
-type disassociate_resources_from_subscription_output() :: #{binary() => any()}.


%% Example:
%% get_subscription_input() :: #{
%%   <<"arn">> := string()
%% }
-type get_subscription_input() :: #{binary() => any()}.


%% Example:
%% get_subscription_output() :: #{
%%   <<"eTag">> => [string()],
%%   <<"subscription">> => subscription()
%% }
-type get_subscription_output() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_subscriptions_input() :: #{
%%   <<"nextToken">> => [string()]
%% }
-type list_subscriptions_input() :: #{binary() => any()}.


%% Example:
%% list_subscriptions_output() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"subscriptionSummaries">> => list(subscription_summary())
%% }
-type list_subscriptions_output() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% scheduled_change() :: #{
%%   <<"changeType">> => list(any()),
%%   <<"effectiveDate">> => [non_neg_integer()],
%%   <<"planTier">> => [string()],
%%   <<"usageLevel">> => [string()]
%% }
-type scheduled_change() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% subscription() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"planFamily">> => [string()],
%%   <<"planTier">> => [string()],
%%   <<"resourceArns">> => list([string()]()),
%%   <<"scheduledChange">> => scheduled_change(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"usageLevel">> => [string()]
%% }
-type subscription() :: #{binary() => any()}.


%% Example:
%% subscription_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"eTag">> => [string()],
%%   <<"planFamily">> => [string()],
%%   <<"planTier">> => [string()],
%%   <<"resourceArns">> => list([string()]()),
%%   <<"scheduledChange">> => scheduled_change(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"usageLevel">> => [string()]
%% }
-type subscription_summary() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% update_subscription_input() :: #{
%%   <<"arn">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"ifMatch">> := [string()],
%%   <<"planTier">> := [string()],
%%   <<"usageLevel">> => [string()]
%% }
-type update_subscription_input() :: #{binary() => any()}.


%% Example:
%% update_subscription_output() :: #{
%%   <<"eTag">> => [string()],
%%   <<"subscription">> => subscription()
%% }
-type update_subscription_output() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

-type approve_paid_subscription_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type associate_resources_to_subscription_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type cancel_subscription_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type cancel_subscription_change_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_subscription_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type disassociate_resources_from_subscription_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type get_subscription_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_subscriptions_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type update_subscription_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Approves a subscription that is in `PENDING_APPROVAL' status,
%% activating it and starting billing.
%%
%% This operation requires the current `ETag' value for concurrency
%% control. Retrieve it from a previous `GetSubscription' or
%% `ListSubscriptions' response.
-spec approve_paid_subscription(aws_client:aws_client(), approve_paid_subscription_input()) ->
    {ok, approve_paid_subscription_output(), tuple()} |
    {error, any()} |
    {error, approve_paid_subscription_errors(), tuple()}.
approve_paid_subscription(Client, Input) ->
    approve_paid_subscription(Client, Input, []).

-spec approve_paid_subscription(aws_client:aws_client(), approve_paid_subscription_input(), proplists:proplist()) ->
    {ok, approve_paid_subscription_output(), tuple()} |
    {error, any()} |
    {error, approve_paid_subscription_errors(), tuple()}.
approve_paid_subscription(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/ApprovePaidSubscription"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"ifMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"eTag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Adds one or more resources to an existing subscription.
%%
%% The subscription must be in an active state that is not pending other
%% changes.
%%
%% For subscriptions in the CloudFront plan family, the associated resources
%% must include exactly one Amazon CloudFront distribution and one WAF web
%% ACL. You can also include other supported resources, such as Amazon Route
%% 53 hosted zones, and CloudFront KeyValueStores.
-spec associate_resources_to_subscription(aws_client:aws_client(), associate_resources_to_subscription_input()) ->
    {ok, associate_resources_to_subscription_output(), tuple()} |
    {error, any()} |
    {error, associate_resources_to_subscription_errors(), tuple()}.
associate_resources_to_subscription(Client, Input) ->
    associate_resources_to_subscription(Client, Input, []).

-spec associate_resources_to_subscription(aws_client:aws_client(), associate_resources_to_subscription_input(), proplists:proplist()) ->
    {ok, associate_resources_to_subscription_output(), tuple()} |
    {error, any()} |
    {error, associate_resources_to_subscription_errors(), tuple()}.
associate_resources_to_subscription(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/AssociateResourcesToSubscription"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"ifMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"eTag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Cancels a flat-rate pricing subscription.
%%
%% For active subscriptions, the cancellation is scheduled to take effect at
%% the end of the current billing period. The subscription remains active
%% until that date. To revert a pending cancellation, use
%% `CancelSubscriptionChange'.
%%
%% For subscriptions in `PENDING_APPROVAL' status, the subscription is
%% deleted immediately without scheduling.
-spec cancel_subscription(aws_client:aws_client(), cancel_subscription_input()) ->
    {ok, cancel_subscription_output(), tuple()} |
    {error, any()} |
    {error, cancel_subscription_errors(), tuple()}.
cancel_subscription(Client, Input) ->
    cancel_subscription(Client, Input, []).

-spec cancel_subscription(aws_client:aws_client(), cancel_subscription_input(), proplists:proplist()) ->
    {ok, cancel_subscription_output(), tuple()} |
    {error, any()} |
    {error, cancel_subscription_errors(), tuple()}.
cancel_subscription(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/CancelSubscription"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"ifMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"eTag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Cancels a pending scheduled change on a subscription, such as a
%% pending downgrade or cancellation.
%%
%% The subscription returns to its state before the change was scheduled.
%%
%% You cannot cancel a scheduled change close to its effective date. If the
%% change is within the processing window, this operation returns an error.
-spec cancel_subscription_change(aws_client:aws_client(), cancel_subscription_change_input()) ->
    {ok, cancel_subscription_change_output(), tuple()} |
    {error, any()} |
    {error, cancel_subscription_change_errors(), tuple()}.
cancel_subscription_change(Client, Input) ->
    cancel_subscription_change(Client, Input, []).

-spec cancel_subscription_change(aws_client:aws_client(), cancel_subscription_change_input(), proplists:proplist()) ->
    {ok, cancel_subscription_change_output(), tuple()} |
    {error, any()} |
    {error, cancel_subscription_change_errors(), tuple()}.
cancel_subscription_change(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/CancelSubscriptionChange"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"ifMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"eTag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Creates a flat-rate pricing subscription for the specified resources.
%%
%% When `approvalMode' is set to `MANUAL', paid-tier subscriptions
%% are created in `PENDING_APPROVAL' status and require a separate
%% `ApprovePaidSubscription' call before billing starts. Free-tier
%% subscriptions are always activated immediately regardless of approval
%% mode.
%%
%% When `approvalMode' is set to `IMMEDIATE' or is not specified, the
%% subscription is activated immediately.
-spec create_subscription(aws_client:aws_client(), create_subscription_input()) ->
    {ok, create_subscription_output(), tuple()} |
    {error, any()} |
    {error, create_subscription_errors(), tuple()}.
create_subscription(Client, Input) ->
    create_subscription(Client, Input, []).

-spec create_subscription(aws_client:aws_client(), create_subscription_input(), proplists:proplist()) ->
    {ok, create_subscription_output(), tuple()} |
    {error, any()} |
    {error, create_subscription_errors(), tuple()}.
create_subscription(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/CreateSubscription"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"eTag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Removes one or more resources from an existing subscription.
%%
%% For subscriptions in the CloudFront plan family, the associated resources
%% must always include exactly one Amazon CloudFront distribution and exactly
%% one WAF web ACL. You cannot remove these required resources.
-spec disassociate_resources_from_subscription(aws_client:aws_client(), disassociate_resources_from_subscription_input()) ->
    {ok, disassociate_resources_from_subscription_output(), tuple()} |
    {error, any()} |
    {error, disassociate_resources_from_subscription_errors(), tuple()}.
disassociate_resources_from_subscription(Client, Input) ->
    disassociate_resources_from_subscription(Client, Input, []).

-spec disassociate_resources_from_subscription(aws_client:aws_client(), disassociate_resources_from_subscription_input(), proplists:proplist()) ->
    {ok, disassociate_resources_from_subscription_output(), tuple()} |
    {error, any()} |
    {error, disassociate_resources_from_subscription_errors(), tuple()}.
disassociate_resources_from_subscription(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/DisassociateResourcesFromSubscription"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"ifMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"eTag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Returns the details of a flat-rate pricing subscription, including
%% its current status, associated resources, and any pending scheduled
%% changes.
-spec get_subscription(aws_client:aws_client(), get_subscription_input()) ->
    {ok, get_subscription_output(), tuple()} |
    {error, any()} |
    {error, get_subscription_errors(), tuple()}.
get_subscription(Client, Input) ->
    get_subscription(Client, Input, []).

-spec get_subscription(aws_client:aws_client(), get_subscription_input(), proplists:proplist()) ->
    {ok, get_subscription_output(), tuple()} |
    {error, any()} |
    {error, get_subscription_errors(), tuple()}.
get_subscription(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/GetSubscription"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"eTag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Returns a summary of all flat-rate pricing subscriptions in the
%% calling account.
-spec list_subscriptions(aws_client:aws_client(), list_subscriptions_input()) ->
    {ok, list_subscriptions_output(), tuple()} |
    {error, any()} |
    {error, list_subscriptions_errors(), tuple()}.
list_subscriptions(Client, Input) ->
    list_subscriptions(Client, Input, []).

-spec list_subscriptions(aws_client:aws_client(), list_subscriptions_input(), proplists:proplist()) ->
    {ok, list_subscriptions_output(), tuple()} |
    {error, any()} |
    {error, list_subscriptions_errors(), tuple()}.
list_subscriptions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/ListSubscriptions"],
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

%% @doc Changes the plan tier of an existing subscription.
%%
%% Upgrades take effect immediately. Downgrades are scheduled and the current
%% tier remains unchanged until the end of the billing cycle (calendar
%% month). You cannot update a subscription while a scheduled change is
%% pending. To make a new change, first cancel the pending change using
%% `CancelSubscriptionChange'.
%%
%% This operation replaces the plan tier value. If you omit the optional
%% `usageLevel' field, it is reset to the default.
-spec update_subscription(aws_client:aws_client(), update_subscription_input()) ->
    {ok, update_subscription_output(), tuple()} |
    {error, any()} |
    {error, update_subscription_errors(), tuple()}.
update_subscription(Client, Input) ->
    update_subscription(Client, Input, []).

-spec update_subscription(aws_client:aws_client(), update_subscription_input(), proplists:proplist()) ->
    {ok, update_subscription_output(), tuple()} |
    {error, any()} |
    {error, update_subscription_errors(), tuple()}.
update_subscription(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/UpdateSubscription"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"ifMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"eTag">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

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
    Client1 = Client#{service => <<"pricingplanmanager">>},
    DefaultHost = build_host(<<"pricingplanmanager">>, Client1),
    URL0 = build_url(DefaultHost, Path, Client1),
    PathBin = erlang:iolist_to_binary(Path),
    {URL1, Host} = aws_util:apply_endpoint_url_override(URL0, DefaultHost, PathBin, <<"AWS_ENDPOINT_URL_PRICING_PLAN_MANAGER">>),
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

